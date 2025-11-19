@interface ULMapItemGenerator
+ (void)_generateParkingMapItemsWithBiomeEventStreamCarPlayConnected:(id)a3 biomeEventStreamLocationSemantic:(id)a4 dbStore:(ULDatabaseStoreInterface *)a5 task:(id)a6 startDate:(id)a7;
+ (void)generateMapItemsWithEnvironment:(id)a3 dbStore:(ULDatabaseStoreInterface *)a4 task:(id)a5;
@end

@implementation ULMapItemGenerator

+ (void)generateMapItemsWithEnvironment:(id)a3 dbStore:(ULDatabaseStoreInterface *)a4 task:(id)a5
{
  v25 = a3;
  v8 = a5;
  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULGenerateParkingMapItemsEnabled"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v14 = v13;

  if (v14)
  {
    v15 = [MEMORY[0x277CBEAA8] date];
    v16 = +[ULDefaultsSingleton shared];
    v17 = [v16 defaultsDictionary];

    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULGenerateParkingMapItemsInterval"];
    v19 = [v17 objectForKey:v18];
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v20 = [v19 intValue];
    }

    else
    {
      v20 = [&unk_286A72AC8 intValue];
    }

    v21 = v20;

    v22 = [v25 biomeEventStreamCarPlayConnected];
    v23 = [v25 biomeEventStreamLocationSemantic];
    v24 = [v15 dateByAddingTimeInterval:-v21];
    [a1 _generateParkingMapItemsWithBiomeEventStreamCarPlayConnected:v22 biomeEventStreamLocationSemantic:v23 dbStore:a4 task:v8 startDate:v24];
  }
}

+ (void)_generateParkingMapItemsWithBiomeEventStreamCarPlayConnected:(id)a3 biomeEventStreamLocationSemantic:(id)a4 dbStore:(ULDatabaseStoreInterface *)a5 task:(id)a6 startDate:(id)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v33 = a4;
  v35 = a6;
  v30 = v10;
  v31 = a7;
  v11 = [v10 streamEventsWithStartDate:? endDate:? maxEvents:? lastN:? reversed:?];
  v12 = [v11 ul_allWhere:&__block_literal_global_164];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v13)
  {
    v14 = *v37;
    v15 = &unk_281455000;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v37 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v36 + 1) + 8 * v16);
      if ([v35 shouldCancel])
      {
        break;
      }

      if (v15[141] != -1)
      {
        +[ULMapItemGenerator _generateParkingMapItemsWithBiomeEventStreamCarPlayConnected:biomeEventStreamLocationSemantic:dbStore:task:startDate:];
      }

      v18 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v17 timestamp];
        v20 = v15;
        v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "starting")}];
        v22 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v17, "reason")}];
        *buf = 138412802;
        v44 = v19;
        v45 = 2112;
        v46 = v21;
        v47 = 2112;
        v48 = v22;
        _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEFAULT, "[ULMapItemGenerator]: Trying to generate Parking MapItem CarPlayConnectedEvent: timestamp: %@, starting: %@, reason: %@", buf, 0x20u);

        v15 = v20;
      }

      if ([v17 starting])
      {
        v23 = [v17 timestamp];
        v24 = [v33 streamEventsWithStartDate:0 endDate:v23 maxEvents:0 lastN:1 reversed:0];
        v25 = [v24 ul_firstWhere:&__block_literal_global_6];

        if (v25)
        {
          v26 = [v25 loiIdentifier];
          CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v26, buf);

          if (BYTE2(v46))
          {
            v27 = (*(a5->var0 + 8))(a5);
            v28 = v27;
            if ((BYTE2(v46) & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            if (v27)
            {
              [v27 getLoiGroupIdForLoi:buf];
            }

            else
            {
              v40 = 0;
              v41 = 0;
              v42 = 0;
            }
          }
        }
      }

      if (v13 == ++v16)
      {
        v13 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

BOOL __139__ULMapItemGenerator__generateParkingMapItemsWithBiomeEventStreamCarPlayConnected_biomeEventStreamLocationSemantic_dbStore_task_startDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 reason] == 1 || objc_msgSend(v2, "reason") == 2;

  return v3;
}

BOOL __139__ULMapItemGenerator__generateParkingMapItemsWithBiomeEventStreamCarPlayConnected_biomeEventStreamLocationSemantic_dbStore_task_startDate___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 starting])
  {
    v3 = [v2 locationType] == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end