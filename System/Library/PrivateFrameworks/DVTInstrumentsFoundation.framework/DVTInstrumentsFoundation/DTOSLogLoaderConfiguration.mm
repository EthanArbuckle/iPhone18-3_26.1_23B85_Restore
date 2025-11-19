@interface DTOSLogLoaderConfiguration
- (DTOSLogLoaderConfiguration)initWithFilterPredicate:(id)a3 signpostConfig:(unint64_t)a4 loaderExclusions:(unint64_t)a5 columnInclusions:(unint64_t)a6 mode:(unint64_t)a7 enableBacktraceReplacement:(BOOL)a8 machTimebase:(mach_timebase_info)a9 machContinuousStart:(unint64_t)a10 importedFileURL:(id)a11 importForcedStartDate:(id)a12 importForcedEndDate:(id)a13 trackPidToExecNameMapping:(BOOL)a14 dynamicTracingEnabledSubsystems:(id)a15 logSubsystemCategoryPairsToEnable:(id)a16 signpostSubsystemCategoryPairsToEnable:(id)a17;
@end

@implementation DTOSLogLoaderConfiguration

- (DTOSLogLoaderConfiguration)initWithFilterPredicate:(id)a3 signpostConfig:(unint64_t)a4 loaderExclusions:(unint64_t)a5 columnInclusions:(unint64_t)a6 mode:(unint64_t)a7 enableBacktraceReplacement:(BOOL)a8 machTimebase:(mach_timebase_info)a9 machContinuousStart:(unint64_t)a10 importedFileURL:(id)a11 importForcedStartDate:(id)a12 importForcedEndDate:(id)a13 trackPidToExecNameMapping:(BOOL)a14 dynamicTracingEnabledSubsystems:(id)a15 logSubsystemCategoryPairsToEnable:(id)a16 signpostSubsystemCategoryPairsToEnable:(id)a17
{
  v19 = a3;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a15;
  v33 = a16;
  v32 = a17;
  v34.receiver = self;
  v34.super_class = DTOSLogLoaderConfiguration;
  v24 = [(DTOSLogLoaderConfiguration *)&v34 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_filterPredicate, a3);
    v25->_signpostConfig = a4;
    v25->_loaderExclusions = a5;
    v25->_columnInclusions = a6;
    v25->_mode = a7;
    v25->_enableBacktraceReplacement = a8;
    v25->_machTimebase = a9;
    v25->_machContinuousStart = a10;
    objc_storeStrong(&v25->_importedFileURL, a11);
    objc_storeStrong(&v25->_importForcedStartDate, a12);
    objc_storeStrong(&v25->_importForcedEndDate, a13);
    v25->_trackPidToExecNameMapping = a14;
    objc_storeStrong(&v25->_dynamicTracingEnabledSubsystems, a15);
    objc_storeStrong(&v25->_logSubsystemCategoryPairsToEnable, a16);
    objc_storeStrong(&v25->_signpostSubsystemCategoryPairsToEnable, a17);
  }

  return v25;
}

@end