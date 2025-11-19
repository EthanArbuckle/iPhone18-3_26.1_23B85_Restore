@interface CBUserDefaultsProvider
- (CBUserDefaultsProvider)initWithDomain:(id)a3;
- (void)dealloc;
@end

@implementation CBUserDefaultsProvider

- (CBUserDefaultsProvider)initWithDomain:(id)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  context = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v10];
  v8.receiver = v12;
  v8.super_class = CBUserDefaultsProvider;
  v12 = -[CBDictConfigProvider initWithDictionary:](&v8, sel_initWithDictionary_, [v9 dictionaryRepresentation]);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [v3 initWithFormat:@"CBUserDefaultsProvider(%@)", v10];
  v12->_desc = v4;
  v7 = v12;
  objc_autoreleasePoolPop(context);
  return v7;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_desc).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBUserDefaultsProvider;
  [(CBDictConfigProvider *)&v3 dealloc];
}

@end