@interface CPLClientCacheRecordView
- (CPLClientCacheRecordView)initWithLocalScopedIdentifier:(id)identifier cloudRecord:(id)record idMapping:(id)mapping;
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
  cloudRecord = [(CPLClientCacheRecordView *)self cloudRecord];
  containerScopedIdentifier = [cloudRecord containerScopedIdentifier];
  if (containerScopedIdentifier)
  {
    v11 = 0;
    idMapping = [(CPLClientCacheRecordView *)self idMapping];
    v6 = [idMapping localScopedIdentifierForCloudScopedIdentifier:containerScopedIdentifier isFinal:&v11];

    relation = [cloudRecord relation];
    relation2 = [relation copy];

    identifier = [v6 identifier];
    [relation2 setContainerIdentifier:identifier];
  }

  else
  {
    relation2 = [cloudRecord relation];
  }

  return relation2;
}

- (Class)recordClass
{
  cloudRecord = [(CPLClientCacheRecordView *)self cloudRecord];
  v3 = objc_opt_class();

  return v3;
}

- (id)secondaryScopedIdentifier
{
  cloudRecord = [(CPLClientCacheRecordView *)self cloudRecord];
  secondaryScopedIdentifier = [cloudRecord secondaryScopedIdentifier];

  if (secondaryScopedIdentifier)
  {
    v8 = 0;
    idMapping = [(CPLClientCacheRecordView *)self idMapping];
    v6 = [idMapping localScopedIdentifierForCloudScopedIdentifier:secondaryScopedIdentifier isFinal:&v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)relatedScopedIdentifier
{
  cloudRecord = [(CPLClientCacheRecordView *)self cloudRecord];
  relatedScopedIdentifier = [cloudRecord relatedScopedIdentifier];

  if (relatedScopedIdentifier)
  {
    v8 = 0;
    idMapping = [(CPLClientCacheRecordView *)self idMapping];
    v6 = [idMapping localScopedIdentifierForCloudScopedIdentifier:relatedScopedIdentifier isFinal:&v8];
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
  redactedDescription = [(CPLRecordChange *)self->_cloudRecord redactedDescription];
  v5 = [v3 initWithFormat:@"%@+idMapping", redactedDescription];

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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorageViews.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v12 lineNumber:242 description:{@"Failed to remap cloud record to local record: %@", v7}];

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
    scopedIdentifier = [(CPLRecordChange *)self->_cloudRecord scopedIdentifier];
    v6 = [(CPLEngineIDMapping *)idMapping localScopedIdentifierForCloudScopedIdentifier:scopedIdentifier isFinal:&v11];
    v7 = self->_localScopedIdentifier;
    self->_localScopedIdentifier = v6;

    localScopedIdentifier = self->_localScopedIdentifier;
    if (!localScopedIdentifier)
    {
      proposedLocalScopedIdentifier = [(CPLRecordChange *)self->_cloudRecord proposedLocalScopedIdentifier];
      v9 = self->_localScopedIdentifier;
      self->_localScopedIdentifier = proposedLocalScopedIdentifier;

      localScopedIdentifier = self->_localScopedIdentifier;
    }
  }

  return localScopedIdentifier;
}

- (CPLClientCacheRecordView)initWithLocalScopedIdentifier:(id)identifier cloudRecord:(id)record idMapping:(id)mapping
{
  identifierCopy = identifier;
  recordCopy = record;
  mappingCopy = mapping;
  v15.receiver = self;
  v15.super_class = CPLClientCacheRecordView;
  v12 = [(CPLClientCacheRecordView *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localScopedIdentifier, identifier);
    objc_storeStrong(&v13->_cloudRecord, record);
    objc_storeStrong(&v13->_idMapping, mapping);
  }

  return v13;
}

@end