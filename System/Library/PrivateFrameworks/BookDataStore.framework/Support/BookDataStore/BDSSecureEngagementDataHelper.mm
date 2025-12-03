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
  v7 = sub_1001C4BA8();
  v9 = v8;

  v10 = sub_1001C4BA8();
  v12 = v11;

  swift_getObjCClassMetadata();
  v13 = static SecureEngagementDataHelper.mergedTimeSliceData(local:remote:)(v7, v9, v10, v12);
  v15 = v14;
  sub_1000887D0(v10, v12);
  sub_1000887D0(v7, v9);
  if (v15 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    isa = sub_1001C4B98().super.isa;
    sub_1000887BC(v13, v15);
    v16 = isa;
  }

  return v16;
}

+ (BOOL)isEngagementTimeSliceDataEmpty:(id)empty
{
  emptyCopy = empty;
  v4 = sub_1001C4BA8();
  v6 = v5;

  LOBYTE(emptyCopy) = _s14bookdatastored26SecureEngagementDataHelperC7isEmpty9timeSliceSb10Foundation0D0V_tFZ_0(v4, v6);
  sub_1000887D0(v4, v6);
  return emptyCopy & 1;
}

- (BDSSecureEngagementDataHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SecureEngagementDataHelper();
  return [(BDSSecureEngagementDataHelper *)&v3 init];
}

@end