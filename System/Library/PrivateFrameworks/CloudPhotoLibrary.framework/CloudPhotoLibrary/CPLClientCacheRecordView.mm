@interface CPLClientCacheRecordView
- (CPLClientCacheRecordView)initWithLocalScopedIdentifier:(id)a3 cloudRecord:(id)a4 idMapping:(id)a5;
- (CPLScopedIdentifier)localScopedIdentifier;
- (Class)recordClass;
- (id)description;
- (id)redactedDescription;
- (id)relatedScopedIdentifier;
- (id)relation;
- (id)secondaryScopedIdentifier;
- (id)synthesizedRecord;
@end

@implementation CPLClientCacheRecordView

- (id)relation
{
  v3 = [(CPLClientCacheRecordView *)self cloudRecord];
  v4 = [v3 containerScopedIdentifier];
  if (v4)
  {
    v11 = 0;
    v5 = [(CPLClientCacheRecordView *)self idMapping];
    v6 = [v5 localScopedIdentifierForCloudScopedIdentifier:v4 isFinal:&v11];

    v7 = [v3 relation];
    v8 = [v7 copy];

    v9 = [v6 identifier];
    [v8 setContainerIdentifier:v9];
  }

  else
  {
    v8 = [v3 relation];
  }

  return v8;
}

- (Class)recordClass
{
  v2 = [(CPLClientCacheRecordView *)self cloudRecord];
  v3 = objc_opt_class();

  return v3;
}

- (id)secondaryScopedIdentifier
{
  v3 = [(CPLClientCacheRecordView *)self cloudRecord];
  v4 = [v3 secondaryScopedIdentifier];

  if (v4)
  {
    v8 = 0;
    v5 = [(CPLClientCacheRecordView *)self idMapping];
    v6 = [v5 localScopedIdentifierForCloudScopedIdentifier:v4 isFinal:&v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)relatedScopedIdentifier
{
  v3 = [(CPLClientCacheRecordView *)self cloudRecord];
  v4 = [v3 relatedScopedIdentifier];

  if (v4)
  {
    v8 = 0;
    v5 = [(CPLClientCacheRecordView *)self idMapping];
    v6 = [v5 localScopedIdentifierForCloudScopedIdentifier:v4 isFinal:&v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(CPLRecordChange *)self->_cloudRecord redactedDescription];
  v5 = [v3 initWithFormat:@"%@+idMapping", v4];

  return v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@+idMapping", self->_cloudRecord];

  return v2;
}

- (id)synthesizedRecord
{
  v16 = *MEMORY[0x1E69E9840];
  cloudRecord = self->_cloudRecord;
  idMapping = self->_idMapping;
  v13 = 0;
  v6 = [(CPLRecordChange *)cloudRecord translateToClientChangeUsingIDMapping:idMapping error:&v13];
  v7 = v13;
  if (!v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v7;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Failed to remap cloud record to local record: %@", buf, 0xCu);
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorageViews.m"];
    [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:242 description:{@"Failed to remap cloud record to local record: %@", v7}];

    abort();
  }

  [v6 setRecordChangeData:0];
  [v6 setSharingRecordChangeData:0];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (CPLScopedIdentifier)localScopedIdentifier
{
  localScopedIdentifier = self->_localScopedIdentifier;
  if (!localScopedIdentifier)
  {
    v11 = 0;
    idMapping = self->_idMapping;
    v5 = [(CPLRecordChange *)self->_cloudRecord scopedIdentifier];
    v6 = [(CPLEngineIDMapping *)idMapping localScopedIdentifierForCloudScopedIdentifier:v5 isFinal:&v11];
    v7 = self->_localScopedIdentifier;
    self->_localScopedIdentifier = v6;

    localScopedIdentifier = self->_localScopedIdentifier;
    if (!localScopedIdentifier)
    {
      v8 = [(CPLRecordChange *)self->_cloudRecord proposedLocalScopedIdentifier];
      v9 = self->_localScopedIdentifier;
      self->_localScopedIdentifier = v8;

      localScopedIdentifier = self->_localScopedIdentifier;
    }
  }

  return localScopedIdentifier;
}

- (CPLClientCacheRecordView)initWithLocalScopedIdentifier:(id)a3 cloudRecord:(id)a4 idMapping:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CPLClientCacheRecordView;
  v12 = [(CPLClientCacheRecordView *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localScopedIdentifier, a3);
    objc_storeStrong(&v13->_cloudRecord, a4);
    objc_storeStrong(&v13->_idMapping, a5);
  }

  return v13;
}

@end