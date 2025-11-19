@interface FMDExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
@end

@implementation FMDExtensionContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  v2 = LogCategory_Extensions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DF650000, v2, OS_LOG_TYPE_DEFAULT, "#ext - extensionAuxVendorProto called", v5, 2u);
  }

  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[FMDExtensionContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface;

  return v3;
}

void __56__FMDExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AA7960];
  v1 = _extensionAuxiliaryVendorProtocol___interface;
  _extensionAuxiliaryVendorProtocol___interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v2 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  [_extensionAuxiliaryVendorProtocol___interface setClasses:v8 forSelector:sel_fetchAllAccessoriesInfoWithInfo_withCompletion_ argumentIndex:0 ofReply:1];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  v2 = LogCategory_Extensions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DF650000, v2, OS_LOG_TYPE_DEFAULT, "#ext - extensionAuxHostProto called", v5, 2u);
  }

  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[FMDExtensionContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface;

  return v3;
}

uint64_t __54__FMDExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AA9548];

  return MEMORY[0x1EEE66BB8]();
}

@end