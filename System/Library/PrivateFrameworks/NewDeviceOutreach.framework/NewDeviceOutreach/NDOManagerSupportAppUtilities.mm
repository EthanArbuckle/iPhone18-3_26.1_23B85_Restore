@interface NDOManagerSupportAppUtilities
+ (id)ndoDeviceInfoFromCoverageInfoData:(id)data withSerialNumber:(id)number;
- (NDOManagerSupportAppUtilities)init;
@end

@implementation NDOManagerSupportAppUtilities

+ (id)ndoDeviceInfoFromCoverageInfoData:(id)data withSerialNumber:(id)number
{
  dataCopy = data;
  if (data)
  {
    numberCopy = number;
    v7 = dataCopy;
    dataCopy = sub_25BD796A8();
    v9 = v8;
  }

  else
  {
    numberCopy2 = number;
    v9 = 0xF000000000000000;
  }

  v11 = sub_25BD797B8();
  v13 = v12;

  v14 = sub_25BD74DB0(dataCopy, v9, v11, v13);

  sub_25BD54D60(dataCopy, v9);

  return v14;
}

- (NDOManagerSupportAppUtilities)init
{
  v3.receiver = self;
  v3.super_class = NDOManagerSupportAppUtilities;
  return [(NDOManagerSupportAppUtilities *)&v3 init];
}

@end