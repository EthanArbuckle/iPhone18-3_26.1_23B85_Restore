@interface HMDCameraRecordingMetricUUIDUtilities
+ (id)UUIDRotationSalt;
+ (id)currentEphemeralUUIDWithUUID:(id)d rotationScheduleDays:(unint64_t)days;
+ (id)ephemeralUUIDWithUUID:(id)d forTimestamp:(unint64_t)timestamp rotationSchedule:(unint64_t)schedule;
@end

@implementation HMDCameraRecordingMetricUUIDUtilities

+ (id)currentEphemeralUUIDWithUUID:(id)d rotationScheduleDays:(unint64_t)days
{
  v6 = MEMORY[0x277CBEAA8];
  dCopy = d;
  date = [v6 date];
  [date timeIntervalSince1970];
  v10 = [self ephemeralUUIDWithUUID:dCopy forTimestamp:(v9 * 1000.0) rotationScheduleDays:days];

  return v10;
}

+ (id)ephemeralUUIDWithUUID:(id)d forTimestamp:(unint64_t)timestamp rotationSchedule:(unint64_t)schedule
{
  v14 = timestamp / schedule;
  v5 = MEMORY[0x277CBEB28];
  dCopy = d;
  v7 = [v5 dataWithBytes:&v14 length:8];
  uUIDRotationSalt = [objc_opt_class() UUIDRotationSalt];
  [v7 appendData:uUIDRotationSalt];

  hm_convertToData = [dCopy hm_convertToData];

  [v7 appendData:hm_convertToData];
  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  hm_generateSHA1 = [v7 hm_generateSHA1];
  v12 = [v10 initWithUUIDBytes:{objc_msgSend(hm_generateSHA1, "bytes")}];

  return v12;
}

+ (id)UUIDRotationSalt
{
  if (UUIDRotationSalt_onceToken != -1)
  {
    dispatch_once(&UUIDRotationSalt_onceToken, &__block_literal_global_128915);
  }

  v3 = UUIDRotationSalt__UUIDRotationSalt;

  return v3;
}

void __57__HMDCameraRecordingMetricUUIDUtilities_UUIDRotationSalt__block_invoke()
{
  v0 = MEMORY[0x277CBEA90];
  v4 = [@"4CB147FB-C2E8-40AA-913F-119C13110BD0" dataUsingEncoding:4];
  v1 = v4;
  v2 = [v0 dataWithBytes:objc_msgSend(v4 length:{"bytes"), objc_msgSend(@"4CB147FB-C2E8-40AA-913F-119C13110BD0", "length")}];
  v3 = UUIDRotationSalt__UUIDRotationSalt;
  UUIDRotationSalt__UUIDRotationSalt = v2;
}

@end