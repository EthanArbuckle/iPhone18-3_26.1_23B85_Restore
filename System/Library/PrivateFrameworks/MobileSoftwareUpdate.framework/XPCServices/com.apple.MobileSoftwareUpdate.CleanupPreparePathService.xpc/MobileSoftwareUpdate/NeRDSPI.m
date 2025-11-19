@interface NeRDSPI
+ (BOOL)setNVRAMForRebootToNerd;
@end

@implementation NeRDSPI

+ (BOOL)setNVRAMForRebootToNerd
{
  logfunction(", 1, @"Setting nvram auto-boot=true\n"", v2, v3, v4, v5, v6, vars0);
  if (!set_nvram_variable("auto-boot", "true", v7, v8, v9, v10, v11, v12))
  {
    return 0;
  }

  logfunction(", 1, @"Setting nvram boot-command=recover\n"", v13, v14, v15, v16, v17, vars0a);
  if (!set_nvram_variable("boot-command", "recover", v18, v19, v20, v21, v22, v23))
  {
    return 0;
  }

  logfunction(", 1, @"Setting nvram ota-outcome=forced_nerd\n"", v24, v25, v26, v27, v28, vars0b);

  return set_nvram_variable("ota-outcome", "forced_nerd", v29, v30, v31, v32, v33, v34);
}

@end