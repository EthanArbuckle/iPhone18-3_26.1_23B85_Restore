@interface NSUUID(BMUtilities)
+ (id)bm_bootSessionUUID;
@end

@implementation NSUUID(BMUtilities)

+ (id)bm_bootSessionUUID
{
  if (bm_bootSessionUUID_onceToken != -1)
  {
    +[NSUUID(BMUtilities) bm_bootSessionUUID];
  }

  v1 = bm_bootSessionUUID__bootSessionUUID;

  return v1;
}

@end