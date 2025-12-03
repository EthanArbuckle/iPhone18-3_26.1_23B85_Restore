@interface HULinkedApplicationItem
+ (id)na_identity;
- (BOOL)isEqual:(id)equal;
- (HULinkedApplicationItem)init;
- (NSString)bundleIdentifier;
- (id)_failedUpdateOutcome;
- (id)_subclass_updateWithOptions:(id)options;
- (int)_iconVariantForScale:(double)scale;
- (unint64_t)hash;
@end

@implementation HULinkedApplicationItem

- (HULinkedApplicationItem)init
{
  v6.receiver = self;
  v6.super_class = HULinkedApplicationItem;
  v2 = [(HULinkedApplicationItem *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] set];
    associatedAccessories = v2->_associatedAccessories;
    v2->_associatedAccessories = v3;
  }

  return v2;
}

- (NSString)bundleIdentifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULinkedApplicationItem.m" lineNumber:58 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HULinkedApplicationItem bundleIdentifier]", objc_opt_class()}];

  return 0;
}

+ (id)na_identity
{
  if (_MergedGlobals_629 != -1)
  {
    dispatch_once(&_MergedGlobals_629, &__block_literal_global_32);
  }

  v3 = qword_281121FC0;

  return v3;
}

void __38__HULinkedApplicationItem_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_39_1];
  v2 = [v0 appendCharacteristic:&__block_literal_global_42_1];
  v3 = [v0 build];

  v4 = qword_281121FC0;
  qword_281121FC0 = v3;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (int)_iconVariantForScale:(double)scale
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (scale >= 2.0)
  {
    v6 = 15;
  }

  else
  {
    v6 = 0;
  }

  if (scale < 3.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 32;
  }

  if (scale < 2.0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 24;
  }

  if (userInterfaceIdiom == 1)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

- (id)_subclass_updateWithOptions:(id)options
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D14780]);
  v11[0] = @"HFResultApplicationBundleIdentifier";
  bundleIdentifier = [(HULinkedApplicationItem *)self bundleIdentifier];
  v11[1] = @"HFResultApplicationAssociatedAccessories";
  v12[0] = bundleIdentifier;
  associatedAccessories = [(HULinkedApplicationItem *)self associatedAccessories];
  v12[1] = associatedAccessories;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v4 initWithResults:v7];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v8];

  return v9;
}

- (id)_failedUpdateOutcome
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D14780]);
  v7 = *MEMORY[0x277D13FB8];
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 initWithResults:v3];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

@end