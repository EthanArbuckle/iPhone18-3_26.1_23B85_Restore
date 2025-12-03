@interface HMDAppleMediaAccessoryModelDataSource
- (id)modelforAccessory:(id)accessory changeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d;
@end

@implementation HMDAppleMediaAccessoryModelDataSource

- (id)modelforAccessory:(id)accessory changeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d
{
  accessoryCopy = accessory;
  uuidCopy = uuid;
  dCopy = d;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (accessoryCopy && (isKindOfClass & 1) != 0)
  {
    v13 = HMDAppleHomePodAccessoryModel;
LABEL_7:
    v16 = [(__objc2_class *)v13 homePodAccessoryModelWithChangeType:type uuid:uuidCopy parentUUID:dCopy];
LABEL_8:
    v17 = v16;
    goto LABEL_9;
  }

  v14 = accessoryCopy;
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (accessoryCopy && (v15 & 1) != 0)
  {
    v13 = HMDAppleHomePod_6_1_AccessoryModel;
    goto LABEL_7;
  }

  v19 = v14;
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  v17 = 0;
  if (accessoryCopy && (v20 & 1) != 0)
  {
    v16 = [HMDAppleMediaAccessoryModel appleMediaAccessoryModelWithChangeType:type uuid:uuidCopy parentUUID:dCopy];
    goto LABEL_8;
  }

LABEL_9:

  return v17;
}

@end