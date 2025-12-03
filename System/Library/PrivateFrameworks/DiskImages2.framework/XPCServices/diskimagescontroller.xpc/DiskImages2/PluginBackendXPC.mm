@interface PluginBackendXPC
- (PluginBackendXPC)initWithCoder:(id)coder;
- (PluginBackendXPC)initWithURL:(id)l openMode:(int)mode;
- (const)pluginHeader;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PluginBackendXPC

- (PluginBackendXPC)initWithURL:(id)l openMode:(int)mode
{
  lCopy = l;
  modeCopy = mode;
  v14.receiver = self;
  v14.super_class = PluginBackendXPC;
  if ([(PluginBackendXPC *)&v14 init])
  {
    pluginName = [lCopy pluginName];
    uTF8String = [pluginName UTF8String];

    v13 = uTF8String;
    if (uTF8String)
    {
      pluginParams = [lCopy pluginParams];
      sub_1000DFCE8();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_100233158;
    v11 = std::generic_category();
    exception[1] = 22;
    exception[2] = v11;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Invalid plugin URL, plugin name is missing";
  }

  return 0;
}

- (PluginBackendXPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PluginBackendXPC;
  v5 = [(BackendXPC *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"encodedDict"];

    v17 = *off_10021AD10;
    v18 = j__free_0;
    [(DIURL *)v5->_URL pluginName];
    v15 = 0;
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    v14 = v12;
    sub_1000E0250();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PluginBackendXPC;
  [(BackendXPC *)&v7 encodeWithCoder:coderCopy];
  v5 = [(PluginBackendXPC *)self URL];
  [coderCopy encodeObject:v5 forKey:@"URL"];

  v6 = +[NSMutableDictionary dictionary];
  (*(*[(PluginBackendXPC *)self pluginHeader]+ 64))();
  if ([v6 count])
  {
    [coderCopy encodeObject:v6 forKey:@"encodedDict"];
  }
}

- (const)pluginHeader
{
  [(BackendXPC *)self backend];
  v2 = *(v4 + 24);
  if (v5)
  {
    sub_10000367C(v5);
  }

  return v2;
}

@end