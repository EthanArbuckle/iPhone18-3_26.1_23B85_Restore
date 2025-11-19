@interface DeviceTree
@end

@implementation DeviceTree

void __DeviceTree_SupportsEnhancedApfs_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      DeviceTree_SupportsEnhancedApfs_supported = 1;
    }

    IOObjectRelease(v1);
  }

  v3 = secLogObjForScope("eapfs");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = DeviceTree_SupportsEnhancedApfs_supported;
    _os_log_impl(&dword_22EB09000, v3, OS_LOG_TYPE_DEFAULT, "eapfs IODT set to %{BOOL}d", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end