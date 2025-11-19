@interface DPToolCommand
@end

@implementation DPToolCommand

void __35___DPToolCommand_supportedCommands__block_invoke()
{
  v3[11] = *MEMORY[0x277D85DE8];
  v3[0] = @"recordnumbers";
  v3[1] = @"recordnumbersvectors";
  v3[2] = @"recordbitvalues";
  v3[3] = @"recordbitvectors";
  v3[4] = @"recordfloatvectors";
  v3[5] = @"recordstrings";
  v3[6] = @"recordwords";
  v3[7] = @"query";
  v3[8] = @"submitrecords";
  v3[9] = @"listreports";
  v3[10] = @"listkeys";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:11];
  v1 = _DPToolSupportedCommands;
  _DPToolSupportedCommands = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __39___DPToolCommand_supportedMetadataKeys__block_invoke()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"CountryCode";
  v3[1] = @"State";
  v3[2] = @"VersionHash";
  v3[3] = @"AlgorithmParameters";
  v3[4] = @"DediscoTaskConfig";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  v1 = _DPToolSupportedMetadataKeys;
  _DPToolSupportedMetadataKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __30___DPToolCommand_queryForKey___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v10 = +[_DPLog tool];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __30___DPToolCommand_queryForKey___block_invoke_cold_1(a1, v9, v10);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __30___DPToolCommand_queryForKey___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(*(a1 + 48));
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_22622D000, a3, OS_LOG_TYPE_ERROR, "%@: record fetch failed with %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end