@interface HULinkedApplicationItem
+ (id)na_identity;
- (BOOL)isEqual:(id)a3;
- (HULinkedApplicationItem)init;
- (NSString)bundleIdentifier;
- (id)_failedUpdateOutcome;
- (id)_subclass_updateWithOptions:(id)a3;
- (int)_iconVariantForScale:(double)a3;
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HULinkedApplicationItem.m" lineNumber:58 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HULinkedApplicationItem bundleIdentifier]", objc_opt_class()}];

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
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (int)_iconVariantForScale:(double)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (a3 >= 2.0)
  {
    v6 = 15;
  }

  else
  {
    v6 = 0;
  }

  if (a3 < 3.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 32;
  }

  if (a3 < 2.0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 24;
  }

  if (v5 == 1)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D14780]);
  v11[0] = @"HFResultApplicationBundleIdentifier";
  v5 = [(HULinkedApplicationItem *)self bundleIdentifier];
  v11[1] = @"HFResultApplicationAssociatedAccessories";
  v12[0] = v5;
  v6 = [(HULinkedApplicationItem *)self associatedAccessories];
  v12[1] = v6;
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