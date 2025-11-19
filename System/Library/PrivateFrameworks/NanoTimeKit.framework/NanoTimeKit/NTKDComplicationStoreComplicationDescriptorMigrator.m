@interface NTKDComplicationStoreComplicationDescriptorMigrator
- (NTKDComplicationStoreComplicationDescriptorMigrator)initWithCollectionIdentifier:(id)a3 deviceUUID:(id)a4;
- (void)run;
@end

@implementation NTKDComplicationStoreComplicationDescriptorMigrator

- (NTKDComplicationStoreComplicationDescriptorMigrator)initWithCollectionIdentifier:(id)a3 deviceUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NTKDComplicationStoreComplicationDescriptorMigrator;
  v8 = [(NTKDComplicationStoreComplicationDescriptorMigrator *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    collectionIdentifier = v8->_collectionIdentifier;
    v8->_collectionIdentifier = v9;

    objc_storeStrong(&v8->_deviceUUID, a4);
  }

  return v8;
}

- (void)run
{
  deviceUUID = self->_deviceUUID;
  if (deviceUUID)
  {
    sub_100023D08(deviceUUID);
  }

  else
  {
    sub_10002A4E8();
  }
  v7 = ;
  v3 = [v7 stringByAppendingString:@"RemoteComplications"];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    [v6 removeItemAtPath:v3 error:0];
  }
}

@end