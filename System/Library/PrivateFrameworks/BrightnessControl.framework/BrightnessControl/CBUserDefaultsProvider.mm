@interface CBUserDefaultsProvider
+ (id)providerWithDomain:(id)domain;
- (CBUserDefaultsProvider)initWithDomain:(id)domain;
- (void)dealloc;
@end

@implementation CBUserDefaultsProvider

+ (id)providerWithDomain:(id)domain
{
  v3 = [[CBUserDefaultsProvider alloc] initWithDomain:domain];

  return v3;
}

- (CBUserDefaultsProvider)initWithDomain:(id)domain
{
  v5 = objc_autoreleasePoolPush();
  v8.receiver = self;
  v8.super_class = CBUserDefaultsProvider;
  v6 = -[CBDictConfigProvider initWithDictionary:](&v8, sel_initWithDictionary_, [objc_msgSend(objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:{domain), "dictionaryRepresentation"}]);
  v6->_desc = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CBUserDefaultsProvider(%@)", domain];
  objc_autoreleasePoolPop(v5);
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CBUserDefaultsProvider;
  [(CBDictConfigProvider *)&v3 dealloc];
}

@end