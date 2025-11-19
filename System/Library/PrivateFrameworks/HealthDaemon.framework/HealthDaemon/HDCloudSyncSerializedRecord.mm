@interface HDCloudSyncSerializedRecord
- (HDCloudSyncSerializedRecord)initWithEncodedSystemData:(id)a3 unprotectedDBData:(id)a4 protectedDBData:(id)a5;
@end

@implementation HDCloudSyncSerializedRecord

- (HDCloudSyncSerializedRecord)initWithEncodedSystemData:(id)a3 unprotectedDBData:(id)a4 protectedDBData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HDCloudSyncSerializedRecord;
  v12 = [(HDCloudSyncSerializedRecord *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_systemData, a3);
    objc_storeStrong(&v13->_unprotectedDBData, a4);
    objc_storeStrong(&v13->_protectedDBData, a5);
  }

  return v13;
}

@end