@interface CPLCloudKitOperationGroupMapper
- (CPLCloudKitOperationGroupMapper)initWithMappingAtURL:(id)a3;
- (CPLCloudKitOperationGroupMapper)initWithMappingInFolderWithURL:(id)a3;
- (NSArray)mappingList;
- (id)groupNameForGroupName:(id)a3;
@end

@implementation CPLCloudKitOperationGroupMapper

- (CPLCloudKitOperationGroupMapper)initWithMappingAtURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPLCloudKitOperationGroupMapper;
  v5 = [(CPLCloudKitOperationGroupMapper *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    mappingURL = v5->_mappingURL;
    v5->_mappingURL = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (CPLCloudKitOperationGroupMapper)initWithMappingInFolderWithURL:(id)a3
{
  v4 = [a3 URLByAppendingPathComponent:@"CKOperationGroupMapping.plist" isDirectory:0];
  v5 = [(CPLCloudKitOperationGroupMapper *)self initWithMappingAtURL:v4];

  return v5;
}

- (id)groupNameForGroupName:(id)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000043D0;
  v19 = sub_1000052CC;
  v20 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_100198F14;
  v11 = &unk_100273EE8;
  v12 = self;
  v14 = &v15;
  v4 = a3;
  v13 = v4;
  v5 = v9;
  os_unfair_lock_lock(&self->_lock);
  v10(v5);
  os_unfair_lock_unlock(&self->_lock);

  v6 = v16[5];
  if (!v6)
  {
    v6 = v4;
  }

  v7 = v6;

  _Block_object_dispose(&v15, 8);

  return v7;
}

- (NSArray)mappingList
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000043D0;
  v16 = sub_1000052CC;
  v17 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v8 = sub_100198F6C;
  v9 = &unk_1002729E8;
  v10 = self;
  v11 = &v12;
  v3 = v7;
  os_unfair_lock_lock(&self->_lock);
  v8(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v13[5];
  if (!v4)
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);

  return v5;
}

@end