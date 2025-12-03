@interface CRAuthRepairInspector
+ (BOOL)wasRepaired:(BOOL *)repaired;
+ (unint64_t)_getStatus;
+ (unint64_t)getStatus;
@end

@implementation CRAuthRepairInspector

+ (unint64_t)getStatus
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = handleForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_247864000, v2, OS_LOG_TYPE_DEFAULT, "Validating repair status", &v7, 2u);
  }

  v3 = +[CRAuthRepairInspector _getStatus];
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_247864000, v4, OS_LOG_TYPE_DEFAULT, "Repair status: %llu", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (unint64_t)_getStatus
{
  v7 = 0;
  v2 = [CRFDRUtils findUnsealedDataWithError:0];
  if ([v2 count])
  {
    v3 = 3;
  }

  else
  {
    v4 = [CRAuthRepairInspector wasRepaired:&v7];
    v5 = 1;
    if (v4)
    {
      v5 = 2;
    }

    if (v7)
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (BOOL)wasRepaired:(BOOL *)repaired
{
  v5 = 0;
  result = [CRFDRUtils isDcSignedSealingManifest:&v5];
  if (repaired)
  {
    *repaired = v5 == 0;
  }

  return result;
}

@end