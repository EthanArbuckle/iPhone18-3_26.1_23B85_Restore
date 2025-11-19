@interface DPDediscoReporter
@end

@implementation DPDediscoReporter

void __74___DPDediscoReporter_reportToDediscoRecords_forKey_keyProperties_storage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_DPLog daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74___DPDediscoReporter_reportToDediscoRecords_forKey_keyProperties_storage___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 40);
  v6 = [v3 localizedDescription];
  v7 = [*(a1 + 48) count];
  v8 = [*(a1 + 56) telemetryAllowed];
  v9 = 1;
  if ((v8 & 1) == 0)
  {
    v9 = +[_DPDeviceInfo isInternalBuild];
  }

  LOBYTE(v11) = v9;
  LODWORD(v10) = 1;
  HIDWORD(v10) = v7;
  [_DPLHBitacoraLogger donateEventToBitacoraForKey:v5 eventPhase:4 uuid:0 succeeded:0 errorCode:411 errorMessage:v6 aggregateFunction:v10 count:v11 telemetryAllowed:?];
}

void __74___DPDediscoReporter_reportToDediscoRecords_forKey_keyProperties_storage___block_invoke_53(void *a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[_DPLog daemon];
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_22622D000, v7, OS_LOG_TYPE_INFO, "Donation was successfully submitted to Dedisco for key: %@", &v10, 0xCu);
    }

LABEL_9:

    [*(*(a1[6] + 8) + 40) addObject:*(*(a1[7] + 8) + 40)];
    [*(*(a1[8] + 8) + 40) addObject:a1[5]];
    goto LABEL_10;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __74___DPDediscoReporter_reportToDediscoRecords_forKey_keyProperties_storage___block_invoke_53_cold_1(a1);
  }

  if ([v5 code] == 205)
  {
    v7 = +[_DPLog daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __74___DPDediscoReporter_reportToDediscoRecords_forKey_keyProperties_storage___block_invoke_53_cold_2(v7);
    }

    goto LABEL_9;
  }

LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
}

void __59___DPDediscoReporter_scheduleMaintenanceWithName_database___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 32) reportDediscoRecords:*(a1 + 40)];
  objc_autoreleasePoolPop(v4);
}

void __74___DPDediscoReporter_reportToDediscoRecords_forKey_keyProperties_storage___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0(&dword_22622D000, v2, v3, "Could not create connection to %@ : error=%@");
  v4 = *MEMORY[0x277D85DE8];
}

void __74___DPDediscoReporter_reportToDediscoRecords_forKey_keyProperties_storage___block_invoke_53_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0(&dword_22622D000, v2, v3, "Failed to submit donation to Dedisco for key %@ with error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end