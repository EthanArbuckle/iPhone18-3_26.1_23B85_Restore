@interface BDSSecureEngagementDataHelper
+ (BOOL)isEngagementTimeSliceDataEmpty:(id)empty;
+ (id)mergedTimeSliceDataLocal:(id)local remote:(id)remote;
- (BDSSecureEngagementDataHelper)init;
@end

@implementation BDSSecureEngagementDataHelper

+ (id)mergedTimeSliceDataLocal:(id)local remote:(id)remote
{
  localCopy = local;
  remoteCopy = remote;
  v7 = sub_1E4709BDC();
  v9 = v8;

  v10 = sub_1E4709BDC();
  v12 = v11;

  swift_getObjCClassMetadata();
  v13 = static SecureEngagementDataHelper.mergedTimeSliceData(local:remote:)(v7, v9, v10, v12);
  v15 = v14;
  sub_1E465746C(v10, v12);
  sub_1E465746C(v7, v9);
  if (v15 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v17 = sub_1E4709BCC();
    sub_1E465DDA0(v13, v15);
    v16 = v17;
  }

  return v16;
}

+ (BOOL)isEngagementTimeSliceDataEmpty:(id)empty
{
  emptyCopy = empty;
  v4 = sub_1E4709BDC();
  v6 = v5;

  LOBYTE(emptyCopy) = _s13BookDataStore016SecureEngagementB6HelperC7isEmpty9timeSliceSb10Foundation0B0V_tFZ_0(v4, v6);
  sub_1E465746C(v4, v6);
  return emptyCopy & 1;
}

- (BDSSecureEngagementDataHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SecureEngagementDataHelper();
  return [(BDSSecureEngagementDataHelper *)&v3 init];
}

@end