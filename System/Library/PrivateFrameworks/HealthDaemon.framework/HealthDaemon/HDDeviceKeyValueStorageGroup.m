@interface HDDeviceKeyValueStorageGroup
- (HDDeviceKeyValueStorageGroup)initWithDeviceContext:(id)a3 storageEntries:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HDDeviceKeyValueStorageGroup

- (HDDeviceKeyValueStorageGroup)initWithDeviceContext:(id)a3 storageEntries:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HDDeviceKeyValueStorageGroup;
  v9 = [(HDDeviceKeyValueStorageGroup *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceContext, a3);
    v11 = [v8 copy];
    storageEntries = v10->_storageEntries;
    v10->_storageEntries = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HDDeviceKeyValueStorageGroup allocWithZone:a3];
  deviceContext = self->_deviceContext;
  storageEntries = self->_storageEntries;

  return [(HDDeviceKeyValueStorageGroup *)v4 initWithDeviceContext:deviceContext storageEntries:storageEntries];
}

@end