@interface _DPLHBitacoraLogger
+ (id)trialIdentifiersForKey:(id)key;
@end

@implementation _DPLHBitacoraLogger

+ (id)trialIdentifiersForKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = [keyCopy componentsSeparatedByString:@":"];
  v5 = [v4 count];
  if (v5 > 4)
  {
    v8 = v5;
    v6 = [v4 objectAtIndexedSubscript:v5 - 3];
    v9 = [v4 objectAtIndexedSubscript:v8 - 2];
    v10 = [v4 objectAtIndexedSubscript:v8 - 1];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@", v6, v9, v10];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v12 = getLBFTrialIdentifiersClass_softClass;
    v19 = getLBFTrialIdentifiersClass_softClass;
    if (!getLBFTrialIdentifiersClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getLBFTrialIdentifiersClass_block_invoke;
      v21 = &unk_27858B458;
      v22 = &v16;
      __getLBFTrialIdentifiersClass_block_invoke(buf);
      v12 = v17[3];
    }

    v13 = v12;
    _Block_object_dispose(&v16, 8);
    v7 = [[v12 alloc] initWithBMLTTaskID:v11 deploymentID:0];
  }

  else
  {
    v6 = +[_DPLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = keyCopy;
      *&buf[12] = 2048;
      *&buf[14] = 5;
      _os_log_impl(&dword_22622D000, v6, OS_LOG_TYPE_INFO, "Skipping donation to Bitacora; malformed collection ID %@. The number of colon separated components is less than %ld", buf, 0x16u);
    }

    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)donateEventToBitacoraForKey:(NSObject *)a3 eventPhase:uuid:succeeded:errorCode:errorMessage:aggregateFunction:count:telemetryAllowed:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_22622D000, a3, OS_LOG_TYPE_ERROR, "Failed to donate to Bitacora for key %@ with error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end