@interface ULScanningServiceAnalyticsStore
+ (unsigned)maxEntriesInTable;
- (BOOL)insertDataObjects:(const void *)objects;
- (id)insertDataObjects:;
- (uint64_t)insertDataObjects:;
- (vector<ULScanningServiceAnalyticsDO,)fetchScanningServiceEventsForType:(ULScanningServiceAnalyticsStore *)self triggerType:(SEL)type displayState:(optional<ULScanningEventDO:(optional<ULTriggerType>)state :(optional<ULScanningServiceAnalyticsDO:(optional<ULScanningEventDO:(id)o :(id)a9 ScanResultCode>)a7 :DisplayState>)a6 ScanType>)a4 scanResult:startDate:endDate:;
@end

@implementation ULScanningServiceAnalyticsStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticEventsTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71B68 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects
{
  v7[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7[0] = &unk_286A56C18;
  v7[1] = &selfCopy;
  v7[3] = v7;
  inserted = ULDBUtils::insertDataObjects<ULScanningServiceAnalyticsDO,ULScanningServiceAnalyticsMO>(self, objects, v7);
  std::__function::__value_func<ULScanningServiceAnalyticsMO * ()(ULScanningServiceAnalyticsDO const&)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (vector<ULScanningServiceAnalyticsDO,)fetchScanningServiceEventsForType:(ULScanningServiceAnalyticsStore *)self triggerType:(SEL)type displayState:(optional<ULScanningEventDO:(optional<ULTriggerType>)state :(optional<ULScanningServiceAnalyticsDO:(optional<ULScanningEventDO:(id)o :(id)a9 ScanResultCode>)a7 :DisplayState>)a6 ScanType>)a4 scanResult:startDate:endDate:
{
  v41 = retstr;
  selfCopy = self;
  v43[1] = *MEMORY[0x277D85DE8];
  oCopy = o;
  v15 = a9;
  array = [MEMORY[0x277CBEB18] array];
  if ((*&a4 & 0x10000) != 0)
  {
    v17 = MEMORY[0x277CCAC30];
    v18 = [MEMORY[0x277CCABB0] numberWithShort:a4.var0.var1];
    selfCopy = [v17 predicateWithFormat:@"%K = %@", @"scanType", v18, v41, selfCopy];
    [array addObject:selfCopy];
  }

  if ((*&state & 0x10000) != 0)
  {
    v20 = MEMORY[0x277CCAC30];
    v21 = [MEMORY[0x277CCABB0] numberWithShort:state.var0.var1];
    v22 = [v20 predicateWithFormat:@"%K = %@", @"triggerType", v21];
    [array addObject:v22];
  }

  if ((*&a6 & 0x10000) != 0)
  {
    v23 = MEMORY[0x277CCAC30];
    v24 = [MEMORY[0x277CCABB0] numberWithShort:a6.var0.var1];
    v25 = [v23 predicateWithFormat:@"%K = %@", @"displayState", v24];
    [array addObject:v25];
  }

  if ((*&a7 & 0x10000) != 0)
  {
    v26 = MEMORY[0x277CCAC30];
    v27 = [MEMORY[0x277CCABB0] numberWithShort:a7.var0.var1];
    v28 = [v26 predicateWithFormat:@"%K = %@", @"scanResult", v27];
    [array addObject:v28];
  }

  if (oCopy)
  {
    v29 = MEMORY[0x277CCAC30];
    v30 = MEMORY[0x277CCABB0];
    [oCopy timeIntervalSinceReferenceDate];
    v31 = [v30 numberWithDouble:?];
    v32 = [v29 predicateWithFormat:@"%K >= %@", @"scanningEventTimestamp", v31];
    [array addObject:v32];
  }

  if (v15)
  {
    v33 = MEMORY[0x277CCAC30];
    v34 = MEMORY[0x277CCABB0];
    [v15 timeIntervalSinceReferenceDate];
    v35 = [v34 numberWithDouble:?];
    v36 = [v33 predicateWithFormat:@"%K <= %@", @"scanningEventTimestamp", v35];
    [array addObject:v36];
  }

  v37 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanningEventTimestamp" ascending:0];
  v43[0] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  ULDBUtils::fetchDataObjects<ULScanningServiceAnalyticsDO,ULScanningServiceAnalyticsMO>(selfCopy, array, v38, +[ULScanningServiceAnalyticsStore maxEntriesInTable], v41);

  v40 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)insertDataObjects:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (id)insertDataObjects:
{
  managedObjectContext = [**(self + 8) managedObjectContext];
  v4 = [ULScanningServiceAnalyticsMO createFromDO:a2 inManagedObjectContext:managedObjectContext];

  return v4;
}

@end