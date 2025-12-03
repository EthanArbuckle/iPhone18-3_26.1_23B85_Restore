@interface CBUserDefaultsProvider
- (CBUserDefaultsProvider)initWithDomain:(id)domain;
- (void)dealloc;
@end

@implementation CBUserDefaultsProvider

- (CBUserDefaultsProvider)initWithDomain:(id)domain
{
  selfCopy = self;
  v11 = a2;
  domainCopy = domain;
  context = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:domainCopy];
  v8.receiver = selfCopy;
  v8.super_class = CBUserDefaultsProvider;
  selfCopy = -[CBDictConfigProvider initWithDictionary:](&v8, sel_initWithDictionary_, [v9 dictionaryRepresentation]);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  domainCopy = [v3 initWithFormat:@"CBUserDefaultsProvider(%@)", domainCopy];
  selfCopy->_desc = domainCopy;
  v7 = selfCopy;
  objc_autoreleasePoolPop(context);
  return v7;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_desc).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBUserDefaultsProvider;
  [(CBDictConfigProvider *)&v3 dealloc];
}

@end