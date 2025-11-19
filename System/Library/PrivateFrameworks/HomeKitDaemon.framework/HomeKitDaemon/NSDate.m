@interface NSDate
@end

@implementation NSDate

uint64_t __63__NSDate_HMDCameraUtilities__hmd_snapshotFileNameDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = hmd_snapshotFileNameDateFormatter_dateFormatter;
  hmd_snapshotFileNameDateFormatter_dateFormatter = v0;

  v2 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [hmd_snapshotFileNameDateFormatter_dateFormatter setLocale:v2];

  v3 = hmd_snapshotFileNameDateFormatter_dateFormatter;

  return [v3 setDateFormat:@"yyyy_MM_dd_HH_mm_ss_SSS_ZZZ"];
}

@end