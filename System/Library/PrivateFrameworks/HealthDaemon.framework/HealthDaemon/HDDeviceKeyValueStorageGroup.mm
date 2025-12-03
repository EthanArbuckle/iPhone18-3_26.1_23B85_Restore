@interface HDDeviceKeyValueStorageGroup
- (HDDeviceKeyValueStorageGroup)initWithDeviceContext:(id)context storageEntries:(id)entries;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HDDeviceKeyValueStorageGroup

- (HDDeviceKeyValueStorageGroup)initWithDeviceContext:(id)context storageEntries:(id)entries
{
  contextCopy = context;
  entriesCopy = entries;
  v14.receiver = self;
  v14.super_class = HDDeviceKeyValueStorageGroup;
  v9 = [(HDDeviceKeyValueStorageGroup *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceContext, context);
    v11 = [entriesCopy copy];
    storageEntries = v10->_storageEntries;
    v10->_storageEntries = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HDDeviceKeyValueStorageGroup allocWithZone:zone];
  deviceContext = self->_deviceContext;
  storageEntries = self->_storageEntries;

  return [(HDDeviceKeyValueStorageGroup *)v4 initWithDeviceContext:deviceContext storageEntries:storageEntries];
}

@end