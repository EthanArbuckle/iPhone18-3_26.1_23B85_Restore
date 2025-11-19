@interface ULWiFiMeasurementStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteOrphanRecords;
- (vector<short,)getChannelsUsedByMeasurementsAtLoiGroupID:(ULWiFiMeasurementStore *)self withSourceBSSIDinSet:(SEL)a3 fromScanTime:(const uuid *)a4 toScanTime:(const void *)a5;
@end

@implementation ULWiFiMeasurementStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWiFiMeasurementTableMaxRows"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A71CB8 unsignedIntValue];
  }

  v7 = v6;

  return v7;
}

- (vector<short,)getChannelsUsedByMeasurementsAtLoiGroupID:(ULWiFiMeasurementStore *)self withSourceBSSIDinSet:(SEL)a3 fromScanTime:(const uuid *)a4 toScanTime:(const void *)a5
{
  var1 = a7.var1;
  v8 = a7.var0.var1;
  v9 = a6.var1;
  v10 = a6.var0.var1;
  v74[1] = *MEMORY[0x277D85DE8];
  __src[0] = 0;
  __src[1] = 0;
  v72 = 0;
  v14 = +[ULDefaultsSingleton shared];
  v15 = [v14 defaultsDictionary];

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v61 = self;
  v17 = [v15 objectForKey:v16];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = [v17 unsignedIntValue];
  }

  else
  {
    v18 = [&unk_286A71CD0 unsignedIntValue];
  }

  v60 = v18;

  context = objc_autoreleasePoolPush();
  v65 = [MEMORY[0x277CBEB18] array];
  v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a4];
  v64 = [v19 UUIDString];

  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %d", @"scanningEvent", @"scanResult", 0];
  [v65 addObject:v20];

  v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %d", @"scanningEvent", @"scanType", 0];
  [v65 addObject:v21];

  v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K.%K = %@", @"scanningEvent", @"loi", @"loiGroupId", v64];
  [v65 addObject:v22];

  if (v9)
  {
    v23 = MEMORY[0x277CCAC30];
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    v25 = [v23 predicateWithFormat:@"%K.%K > %@", @"scanningEvent", @"timestamp", v24];
    [v65 addObject:v25];
  }

  if (var1)
  {
    v26 = MEMORY[0x277CCAC30];
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v28 = [v26 predicateWithFormat:@"%K.%K <= %@", @"scanningEvent", @"timestamp", v27];
    [v65 addObject:v28];
  }

  if (*(a5 + 24) != 1)
  {
    goto LABEL_20;
  }

  if (*(a5 + 2))
  {
    v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if ((*(a5 + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v32 = *a5;
    v31 = a5 + 8;
    v30 = v32;
    if (v32 != v31)
    {
      do
      {
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v30 + 4)];
        [v29 addObject:v33];

        v34 = *(v30 + 1);
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = *(v30 + 2);
            v36 = *v35 == v30;
            v30 = v35;
          }

          while (!v36);
        }

        v30 = v35;
      }

      while (v35 != v31);
    }

    v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"sourceBSSID", v29];
    [v65 addObject:v37];

LABEL_20:
    v63 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v74[0] = v63;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
    v41 = [(ULStore *)v61 fetchPropertyForEntityName:v39 propertyToFetch:@"channel" distinctResults:0 byAndPredicates:v65 sortDescriptors:v40 andLimit:v60];

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v42 = v41;
    v43 = [v42 countByEnumeratingWithState:&v66 objects:v73 count:16];
    if (v43)
    {
      v44 = *v67;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v67 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = [*(*(&v66 + 1) + 8 * i) shortValue];
          v47 = __src[1];
          if (__src[1] >= v72)
          {
            v49 = __src[0];
            v50 = __src[1] - __src[0];
            v51 = (__src[1] - __src[0]) >> 1;
            if (v51 <= -2)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            if (v72 - __src[0] <= (v51 + 1))
            {
              v52 = v51 + 1;
            }

            else
            {
              v52 = v72 - __src[0];
            }

            if ((v72 - __src[0]) >= 0x7FFFFFFFFFFFFFFELL)
            {
              v53 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v53 = v52;
            }

            if (v53)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ULHomeSlamAnalyticEventDO::EventTypeEnum>>(__src, v53);
            }

            *(2 * v51) = v46;
            v48 = (2 * v51 + 2);
            memcpy(0, v49, v50);
            v54 = __src[0];
            __src[0] = 0;
            __src[1] = v48;
            v72 = 0;
            if (v54)
            {
              operator delete(v54);
            }
          }

          else
          {
            *__src[1] = v46;
            v48 = v47 + 2;
          }

          __src[1] = v48;
        }

        v43 = [v42 countByEnumeratingWithState:&v66 objects:v73 count:16];
      }

      while (v43);
    }

    v55 = 1;
    goto LABEL_41;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULWiFiMeasurementStore getChannelsUsedByMeasurementsAtLoiGroupID:withSourceBSSIDinSet:fromScanTime:toScanTime:];
  }

  v58 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v58, OS_LOG_TYPE_DEFAULT, "#Warning passed empty sourceBSSIDs set", buf, 2u);
  }

  v55 = 0;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
LABEL_41:

  objc_autoreleasePoolPop(context);
  if (v55)
  {
    *&retstr->var0 = *__src;
    retstr->var2 = v72;
  }

  else
  {
    result = __src[0];
    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }
  }

  v57 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)deleteOrphanRecords
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = NIL", @"scanningEvent"];
  [v3 addObject:v4];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v6 byAndPredicates:v3 sortDescriptors:0 andLimit:0];

  return self;
}

@end