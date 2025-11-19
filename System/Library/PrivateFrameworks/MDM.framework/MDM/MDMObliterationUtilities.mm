@interface MDMObliterationUtilities
@end

@implementation MDMObliterationUtilities

void __201__MDMObliterationUtilities_obliterateDeviceWithPreserveDataPlan_disallowProximitySetup_returnToServiceEnabled_exclusionPaths_revertToSnapshotName_bootstrapToken_preObliterationAction_completionHander___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v1 = *DMCLogObjects();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "ddr_erase_device";
      v8 = 2048;
      v9 = 0x403E000000000000;
      _os_log_impl(&dword_2561F5000, v1, OS_LOG_TYPE_ERROR, "Task %s hasn't finished within %.1f seconds", &v6, 0x16u);
    }

    v2 = [@"ddr_erase_device" stringByAppendingString:@"_stackshot.ips"];
    v3 = MEMORY[0x277D034B8];
    v4 = DMCHangTracerDirectory();
    [v3 dumpStackshotToPath:v4 fileName:v2];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __201__MDMObliterationUtilities_obliterateDeviceWithPreserveDataPlan_disallowProximitySetup_returnToServiceEnabled_exclusionPaths_revertToSnapshotName_bootstrapToken_preObliterationAction_completionHander___block_invoke_13(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __201__MDMObliterationUtilities_obliterateDeviceWithPreserveDataPlan_disallowProximitySetup_returnToServiceEnabled_exclusionPaths_revertToSnapshotName_bootstrapToken_preObliterationAction_completionHander___block_invoke_2;
  block[3] = &unk_27982C0C0;
  block[4] = a1[6];
  dispatch_async(v4, block);
  if (v3)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v3 DMCVerboseDescription];
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "Could not erase device: %{public}@", buf, 0xCu);
    }
  }

  (*(a1[5] + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

@end