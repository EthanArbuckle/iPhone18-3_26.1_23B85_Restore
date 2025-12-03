@interface NSDate(HMDCameraUtilities)
+ (id)hmd_dateFromSnapshotFileName:()HMDCameraUtilities;
+ (id)hmd_snapshotFileNameDateFormatter;
- (id)hmd_snapshotFileName;
@end

@implementation NSDate(HMDCameraUtilities)

- (id)hmd_snapshotFileName
{
  hmd_snapshotFileNameDateFormatter = [objc_opt_class() hmd_snapshotFileNameDateFormatter];
  v3 = [hmd_snapshotFileNameDateFormatter stringFromDate:self];

  return v3;
}

+ (id)hmd_dateFromSnapshotFileName:()HMDCameraUtilities
{
  v4 = a3;
  hmd_snapshotFileNameDateFormatter = [self hmd_snapshotFileNameDateFormatter];
  v6 = [hmd_snapshotFileNameDateFormatter dateFromString:v4];

  return v6;
}

+ (id)hmd_snapshotFileNameDateFormatter
{
  if (hmd_snapshotFileNameDateFormatter_onceToken != -1)
  {
    dispatch_once(&hmd_snapshotFileNameDateFormatter_onceToken, &__block_literal_global_48886);
  }

  v1 = hmd_snapshotFileNameDateFormatter_dateFormatter;

  return v1;
}

@end