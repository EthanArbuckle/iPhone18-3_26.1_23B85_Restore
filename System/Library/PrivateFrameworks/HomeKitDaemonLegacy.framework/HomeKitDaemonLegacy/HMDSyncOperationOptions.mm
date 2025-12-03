@interface HMDSyncOperationOptions
- (HMDSyncOperationOptions)initWithOperationType:(unint64_t)type zoneName:(id)name cloudConflict:(BOOL)conflict delayRespected:(BOOL)respected;
- (id)description;
@end

@implementation HMDSyncOperationOptions

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  operationType = [(HMDSyncOperationOptions *)self operationType];
  if (operationType - 1 > 8)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_27972A560[operationType - 1];
  }

  v6 = v5;
  zoneName = [(HMDSyncOperationOptions *)self zoneName];
  if ([zoneName isEqualToString:@"1411CE6C-B4DE-4622-A49D-F66FE296D6B5"])
  {
    v8 = @"HomeManagerZone: ";
    v9 = @"1411CE6C-B4DE-4622-A49D-F66FE296D6B5";
LABEL_8:
    v10 = [(__CFString *)v8 stringByAppendingString:v9];
    goto LABEL_10;
  }

  if ([zoneName isEqualToString:@"CCF7D3D1-0C20-4207-97D0-9E565EB5E323"])
  {
    v8 = @"MetadataZone: ";
    v9 = @"CCF7D3D1-0C20-4207-97D0-9E565EB5E323";
    goto LABEL_8;
  }

  v10 = zoneName;
LABEL_10:
  v11 = v10;

  [(HMDSyncOperationOptions *)self isCloudConflict];
  v12 = HMFBooleanToString();
  [(HMDSyncOperationOptions *)self isDelayRespected];
  v13 = HMFBooleanToString();
  v14 = [v3 stringWithFormat:@"Operation Type = %@, <options: zone=%@/cloudConflict=%@/delayRespected=%@>", v6, v11, v12, v13];

  return v14;
}

- (HMDSyncOperationOptions)initWithOperationType:(unint64_t)type zoneName:(id)name cloudConflict:(BOOL)conflict delayRespected:(BOOL)respected
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = HMDSyncOperationOptions;
  v12 = [(HMDSyncOperationOptions *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_operationType = type;
    objc_storeStrong(&v12->_zoneName, name);
    v13->_cloudConflict = conflict;
    v13->_delayRespected = respected;
    v14 = v13;
  }

  return v13;
}

@end