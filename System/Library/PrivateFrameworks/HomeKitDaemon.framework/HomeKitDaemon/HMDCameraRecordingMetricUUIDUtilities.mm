@interface HMDCameraRecordingMetricUUIDUtilities
+ (id)UUIDRotationSalt;
+ (id)currentEphemeralUUIDWithUUID:(id)a3 rotationScheduleDays:(unint64_t)a4;
+ (id)ephemeralUUIDWithUUID:(id)a3 forTimestamp:(unint64_t)a4 rotationSchedule:(unint64_t)a5;
@end

@implementation HMDCameraRecordingMetricUUIDUtilities

+ (id)currentEphemeralUUIDWithUUID:(id)a3 rotationScheduleDays:(unint64_t)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 date];
  [v8 timeIntervalSince1970];
  v10 = [a1 ephemeralUUIDWithUUID:v7 forTimestamp:(v9 * 1000.0) rotationScheduleDays:a4];

  return v10;
}

+ (id)ephemeralUUIDWithUUID:(id)a3 forTimestamp:(unint64_t)a4 rotationSchedule:(unint64_t)a5
{
  v14 = a4 / a5;
  v5 = MEMORY[0x277CBEB28];
  v6 = a3;
  v7 = [v5 dataWithBytes:&v14 length:8];
  v8 = [objc_opt_class() UUIDRotationSalt];
  [v7 appendData:v8];

  v9 = [v6 hm_convertToData];

  [v7 appendData:v9];
  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  v11 = [v7 hm_generateSHA1];
  v12 = [v10 initWithUUIDBytes:{objc_msgSend(v11, "bytes")}];

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