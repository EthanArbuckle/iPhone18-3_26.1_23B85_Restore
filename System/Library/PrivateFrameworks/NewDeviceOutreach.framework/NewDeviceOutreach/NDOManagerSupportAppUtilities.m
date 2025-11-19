@interface NDOManagerSupportAppUtilities
+ (id)ndoDeviceInfoFromCoverageInfoData:(id)a3 withSerialNumber:(id)a4;
- (NDOManagerSupportAppUtilities)init;
@end

@implementation NDOManagerSupportAppUtilities

+ (id)ndoDeviceInfoFromCoverageInfoData:(id)a3 withSerialNumber:(id)a4
{
  v5 = a3;
  if (a3)
  {
    v6 = a4;
    v7 = v5;
    v5 = sub_25BD796A8();
    v9 = v8;
  }

  else
  {
    v10 = a4;
    v9 = 0xF000000000000000;
  }

  v11 = sub_25BD797B8();
  v13 = v12;

  v14 = sub_25BD74DB0(v5, v9, v11, v13);

  sub_25BD54D60(v5, v9);

  return v14;
}

- (NDOManagerSupportAppUtilities)init
{
  v3.receiver = self;
  v3.super_class = NDOManagerSupportAppUtilities;
  return [(NDOManagerSupportAppUtilities *)&v3 init];
}

@end