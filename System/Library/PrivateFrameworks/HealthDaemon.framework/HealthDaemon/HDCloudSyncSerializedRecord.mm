@interface HDCloudSyncSerializedRecord
- (HDCloudSyncSerializedRecord)initWithEncodedSystemData:(id)data unprotectedDBData:(id)bData protectedDBData:(id)dBData;
@end

@implementation HDCloudSyncSerializedRecord

- (HDCloudSyncSerializedRecord)initWithEncodedSystemData:(id)data unprotectedDBData:(id)bData protectedDBData:(id)dBData
{
  dataCopy = data;
  bDataCopy = bData;
  dBDataCopy = dBData;
  v15.receiver = self;
  v15.super_class = HDCloudSyncSerializedRecord;
  v12 = [(HDCloudSyncSerializedRecord *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_systemData, data);
    objc_storeStrong(&v13->_unprotectedDBData, bData);
    objc_storeStrong(&v13->_protectedDBData, dBData);
  }

  return v13;
}

@end