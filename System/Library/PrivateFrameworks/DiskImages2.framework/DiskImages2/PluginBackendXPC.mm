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
      std::allocate_shared[abi:ne200100]<plugin_header,std::allocator<plugin_header>,char const*&,__CFDictionary const*,int &,0>();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
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
  v20.receiver = self;
  v20.super_class = PluginBackendXPC;
  v5 = [(BackendXPC *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"encodedDict"];

    v18 = xmmword_285BD6990;
    v19 = off_285BD69A0;
    [(DIURL *)v5->_URL pluginName];
    v16 = 0;
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    v15 = v13;
    std::allocate_shared[abi:ne200100]<plugin_header,std::allocator<plugin_header>,char const*,decltype(nullptr),std::nullopt_t const&,diskimage_decode_fn_t &,void *,0>();
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

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  (*(*[(PluginBackendXPC *)self pluginHeader]+ 64))();
  if ([dictionary count])
  {
    [coderCopy encodeObject:dictionary forKey:@"encodedDict"];
  }
}

- (const)pluginHeader
{
  [(BackendXPC *)self backend];
  v2 = *(v4 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

@end