@interface HMDAppleMediaAccessoryModelDataSource
- (id)modelforAccessory:(id)a3 changeType:(unint64_t)a4 uuid:(id)a5 parentUUID:(id)a6;
@end

@implementation HMDAppleMediaAccessoryModelDataSource

- (id)modelforAccessory:(id)a3 changeType:(unint64_t)a4 uuid:(id)a5 parentUUID:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v9 && (isKindOfClass & 1) != 0)
  {
    v13 = HMDAppleHomePodAccessoryModel;
LABEL_7:
    v16 = [(__objc2_class *)v13 homePodAccessoryModelWithChangeType:a4 uuid:v10 parentUUID:v11];
LABEL_8:
    v17 = v16;
    goto LABEL_9;
  }

  v14 = v9;
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v9 && (v15 & 1) != 0)
  {
    v13 = HMDAppleHomePod_6_1_AccessoryModel;
    goto LABEL_7;
  }

  v19 = v14;
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  v17 = 0;
  if (v9 && (v20 & 1) != 0)
  {
    v16 = [HMDAppleMediaAccessoryModel appleMediaAccessoryModelWithChangeType:a4 uuid:v10 parentUUID:v11];
    goto LABEL_8;
  }

LABEL_9:

  return v17;
}

@end