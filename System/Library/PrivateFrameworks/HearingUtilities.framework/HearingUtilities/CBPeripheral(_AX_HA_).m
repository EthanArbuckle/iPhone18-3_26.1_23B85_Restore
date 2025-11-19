@interface CBPeripheral(_AX_HA_)
- (void)axTag:()_AX_HA_;
- (void)axUntag:()_AX_HA_;
@end

@implementation CBPeripheral(_AX_HA_)

- (void)axTag:()_AX_HA_
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 hasTag:v4])
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = a1;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Skipping tag %@ - %@", &v7, 0x16u);
    }
  }

  else
  {
    [a1 tag:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)axUntag:()_AX_HA_
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 hasTag:v4])
  {
    [a1 untag:v4];
  }

  else
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = a1;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Skipping untag %@ - %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end