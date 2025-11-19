@interface DASExtensionRemoteContext
@end

@implementation DASExtensionRemoteContext

uint64_t __61___DASExtensionRemoteContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EE12B0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __63___DASExtensionRemoteContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol___interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EDDCA8];

  return MEMORY[0x1EEE66BB8]();
}

void __51___DASExtensionRemoteContext_hostContextWithError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = [*(a1 + 32) log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __51___DASExtensionRemoteContext_hostContextWithError___block_invoke_cold_1(v4, v5);
  }
}

uint64_t __39___DASExtensionRemoteContext_extension__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  v3 = extension_extension;
  extension_extension = v2;

  result = [extension_extension isMemberOfClass:objc_opt_class()];
  if ((result & 1) == 0)
  {
    v5 = [*(a1 + 32) log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __39___DASExtensionRemoteContext_extension__block_invoke_cold_1(v5);
    }

    exit(0);
  }

  return result;
}

void __46___DASExtensionRemoteContext_performActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) extension];
  [v2 runner:*(a1 + 40) performActivity:*(a1 + 48)];
}

void __51___DASExtensionRemoteContext_hostContextWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6E2F000, a2, OS_LOG_TYPE_ERROR, "Error getting host context %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __39___DASExtensionRemoteContext_extension__block_invoke_cold_1(NSObject *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = objc_opt_class();
  v5 = 2112;
  v6 = extension_extension;
  _os_log_fault_impl(&dword_1B6E2F000, a1, OS_LOG_TYPE_FAULT, "Found unexpected principalObject of class %@: %@.", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end