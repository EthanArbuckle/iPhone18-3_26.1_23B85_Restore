@interface DTOSLogLoaderConfiguration
- (DTOSLogLoaderConfiguration)initWithFilterPredicate:(id)predicate signpostConfig:(unint64_t)config loaderExclusions:(unint64_t)exclusions columnInclusions:(unint64_t)inclusions mode:(unint64_t)mode enableBacktraceReplacement:(BOOL)replacement machTimebase:(mach_timebase_info)timebase machContinuousStart:(unint64_t)self0 importedFileURL:(id)self1 importForcedStartDate:(id)self2 importForcedEndDate:(id)self3 trackPidToExecNameMapping:(BOOL)self4 dynamicTracingEnabledSubsystems:(id)self5 logSubsystemCategoryPairsToEnable:(id)self6 signpostSubsystemCategoryPairsToEnable:(id)self7;
@end

@implementation DTOSLogLoaderConfiguration

- (DTOSLogLoaderConfiguration)initWithFilterPredicate:(id)predicate signpostConfig:(unint64_t)config loaderExclusions:(unint64_t)exclusions columnInclusions:(unint64_t)inclusions mode:(unint64_t)mode enableBacktraceReplacement:(BOOL)replacement machTimebase:(mach_timebase_info)timebase machContinuousStart:(unint64_t)self0 importedFileURL:(id)self1 importForcedStartDate:(id)self2 importForcedEndDate:(id)self3 trackPidToExecNameMapping:(BOOL)self4 dynamicTracingEnabledSubsystems:(id)self5 logSubsystemCategoryPairsToEnable:(id)self6 signpostSubsystemCategoryPairsToEnable:(id)self7
{
  predicateCopy = predicate;
  lCopy = l;
  dateCopy = date;
  endDateCopy = endDate;
  subsystemsCopy = subsystems;
  enableCopy = enable;
  toEnableCopy = toEnable;
  v34.receiver = self;
  v34.super_class = DTOSLogLoaderConfiguration;
  v24 = [(DTOSLogLoaderConfiguration *)&v34 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_filterPredicate, predicate);
    v25->_signpostConfig = config;
    v25->_loaderExclusions = exclusions;
    v25->_columnInclusions = inclusions;
    v25->_mode = mode;
    v25->_enableBacktraceReplacement = replacement;
    v25->_machTimebase = timebase;
    v25->_machContinuousStart = start;
    objc_storeStrong(&v25->_importedFileURL, l);
    objc_storeStrong(&v25->_importForcedStartDate, date);
    objc_storeStrong(&v25->_importForcedEndDate, endDate);
    v25->_trackPidToExecNameMapping = mapping;
    objc_storeStrong(&v25->_dynamicTracingEnabledSubsystems, subsystems);
    objc_storeStrong(&v25->_logSubsystemCategoryPairsToEnable, enable);
    objc_storeStrong(&v25->_signpostSubsystemCategoryPairsToEnable, toEnable);
  }

  return v25;
}

@end