@interface DIURL
+ (id)newDIURLWithNSURL:(id)a3;
+ (id)newDIURLWithPluginName:(id)a3 params:(id)a4;
- (BOOL)isPlugin;
- (DIURL)initWithCoder:(id)a3;
- (DIURL)initWithPluginName:(id)a3 params:(id)a4;
- (NSString)pluginName;
- (id)description;
- (id)path;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIURL

+ (id)newDIURLWithNSURL:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 copy];
  }

  else
  {
    v5 = [DIURL alloc];
    v6 = [v3 absoluteString];
    v4 = [(DIURL *)v5 initWithString:v6];
  }

  return v4;
}

+ (id)newDIURLWithPluginName:(id)a3 params:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[DIURL alloc] initWithPluginName:v5 params:v6];

  return v7;
}

- (DIURL)initWithPluginName:(id)a3 params:(id)a4
{
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"plugin://%@/", a3];
  v11.receiver = self;
  v11.super_class = DIURL;
  v9 = [(DIURL *)&v11 initWithString:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_pluginParams, a4);
  }

  return v9;
}

- (BOOL)isPlugin
{
  v2 = [(DIURL *)self scheme];
  v3 = [v2 lowercaseString];
  v4 = [v3 isEqualToString:@"plugin"];

  return v4;
}

- (NSString)pluginName
{
  if ([(DIURL *)self isPlugin])
  {
    v3 = [(DIURL *)self host];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)path
{
  if ([(DIURL *)self isPlugin])
  {
    v3 = [(DIURL *)self description];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DIURL;
    v3 = [(DIURL *)&v5 path];
  }

  return v3;
}

- (id)description
{
  v3 = [(DIURL *)self isPlugin];
  if (v3)
  {
    v4 = PluginsManager::get(v3);
    v5 = [(DIURL *)self pluginName];
    v6 = [v5 UTF8String];
    v7 = strlen(v6);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    v22 = v7;
    if (v7)
    {
      memmove(&__dst, v6, v7);
    }

    *(&__dst + v8) = 0;
    v13 = [(DIURL *)self pluginParams];
    v14 = PluginsManager::copy_plugin_description(v4, &__dst, v13);

    if (v22 < 0)
    {
      operator delete(__dst);
    }

    v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
    v16 = [v15 scheme];

    if (!v16)
    {
      v17 = MEMORY[0x277CBEBC0];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"plugin://%@", v14];
      v19 = [v17 URLWithString:v18];

      v15 = v19;
    }

    v12 = [v15 absoluteString];
  }

  else
  {
    v9 = [MEMORY[0x277CCACE0] componentsWithURL:self resolvingAgainstBaseURL:1];
    v10 = [(DIURL *)self password];

    if (v10)
    {
      [v9 setPassword:0];
    }

    v11 = [v9 URL];
    v12 = [v11 absoluteString];
  }

  return v12;
}

- (DIURL)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = DIURL;
  v5 = [(DIURL *)&v20 initWithCoder:v4];
  if (v5)
  {
    v19 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v17 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v19 setWithObjects:{v18, v17, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"pluginParams"];
    pluginParams = v5->_pluginParams;
    v5->_pluginParams = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = DIURL;
  [(DIURL *)&v6 encodeWithCoder:v4];
  v5 = [(DIURL *)self pluginParams];
  [v4 encodeObject:v5 forKey:@"pluginParams"];
}

@end