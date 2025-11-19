@interface CBUserDefaultsProvider
+ (id)providerWithDomain:(id)a3;
- (CBUserDefaultsProvider)initWithDomain:(id)a3;
- (void)dealloc;
@end

@implementation CBUserDefaultsProvider

+ (id)providerWithDomain:(id)a3
{
  v3 = [[CBUserDefaultsProvider alloc] initWithDomain:a3];

  return v3;
}

- (CBUserDefaultsProvider)initWithDomain:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v8.receiver = self;
  v8.super_class = CBUserDefaultsProvider;
  v6 = -[CBDictConfigProvider initWithDictionary:](&v8, sel_initWithDictionary_, [objc_msgSend(objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:{a3), "dictionaryRepresentation"}]);
  v6->_desc = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CBUserDefaultsProvider(%@)", a3];
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