@interface GEOMAResource
+ (BOOL)_fixPermissionsAndRemoveResourceAt:(id)at error:(id *)error;
+ (BOOL)_removeResourceAt:(id)at error:(id *)error;
+ (BOOL)removeResourceAt:(id)at error:(id *)error;
+ (void)onFileAccessQueueAsync:(id)async;
+ (void)onFileAccessQueueSync:(id)sync;
- (BOOL)isEqual:(id)equal;
- (BOOL)remove:(id *)remove;
- (GEOMAResource)initWithMobileAsset:(id)asset info:(id)info;
- (GEOMAResource)initWithResourceFolder:(id)folder info:(id)info;
- (NSString)assetId;
- (NSString)contentVersion;
- (id)_getLocalFileUrl;
- (id)_getPlistURL;
- (id)description;
- (id)getLocalFileUrl;
- (int64_t)compare:(id)compare;
- (int64_t)state;
- (unint64_t)hash;
- (unint64_t)size;
- (void)_relocateOnQueue:(id)queue completion:(id)completion;
- (void)downloadWithOptions:(id)options queue:(id)queue completion:(id)completion;
@end

@implementation GEOMAResource

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  assetId = [(GEOMAResource *)self assetId];
  contentVersion = [(GEOMAResource *)self contentVersion];
  state = [(GEOMAResource *)self state];
  if ((state - 1) > 5)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_100082040[state - 1];
  }

  v9 = [NSString stringWithFormat:@"<%@ %p - id: %@ ver: %@ state: %@>", v4, self, assetId, contentVersion, v8];

  return v9;
}

- (BOOL)remove:(id *)remove
{
  v5 = objc_opt_class();
  getLocalFileUrl = [(GEOMAResource *)self getLocalFileUrl];
  LOBYTE(remove) = [v5 removeResourceAt:getLocalFileUrl error:remove];

  return remove;
}

- (void)_relocateOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100020B64;
  v51[3] = &unk_100082CC8;
  completionCopy = completion;
  v53 = completionCopy;
  v41 = queueCopy;
  v52 = v41;
  v7 = objc_retainBlock(v51);
  getLocalUrl = [(MAAsset *)self->_asset getLocalUrl];
  _getLocalFileUrl = [(GEOMAResource *)self _getLocalFileUrl];
  v10 = +[NSFileManager defaultManager];
  path = [_getLocalFileUrl path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  v13 = [v10 fileExistsAtPath:stringByDeletingLastPathComponent];

  if ((v13 & 1) == 0)
  {
    v56 = NSFilePosixPermissions;
    v57 = &off_100088600;
    v14 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v15 = +[NSFileManager defaultManager];
    uRLByDeletingLastPathComponent = [_getLocalFileUrl URLByDeletingLastPathComponent];
    v50 = 0;
    v17 = [v15 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v14 error:&v50];
    v18 = v50;

    if ((v17 & 1) == 0)
    {
      v39 = sub_100020BFC();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v55 = v18;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Unable to create directory for asset: %@", buf, 0xCu);
      }

      (v7[2])(v7, 7, v18);
      goto LABEL_22;
    }
  }

  v19 = +[NSFileManager defaultManager];
  path2 = [_getLocalFileUrl path];
  v21 = [v19 fileExistsAtPath:path2];

  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = sub_100020BFC();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Found existing copy at destination, will remove it", buf, 2u);
  }

  v49 = 0;
  v23 = [objc_opt_class() _removeResourceAt:_getLocalFileUrl error:&v49];
  v24 = v49;
  v14 = v24;
  if ((v23 & 1) == 0)
  {
    (v7[2])(v7, 7, v24);
LABEL_22:
    v26 = getLocalUrl;
    goto LABEL_31;
  }

LABEL_9:
  v25 = +[NSFileManager defaultManager];
  v48 = 0;
  v26 = getLocalUrl;
  v27 = [v25 copyItemAtURL:getLocalUrl toURL:_getLocalFileUrl error:&v48];
  v14 = v48;

  if (v27)
  {
    attributes = [(GEOMAResource *)self attributes];
    v47 = 0;
    v29 = [NSPropertyListSerialization dataWithPropertyList:attributes format:200 options:0 error:&v47];
    v30 = v47;

    if (v29)
    {
      _getPlistURL = [(GEOMAResource *)self _getPlistURL];
      v46 = v30;
      v32 = [v29 writeToURL:_getPlistURL options:0x10000000 error:&v46];
      v33 = v46;

      v34 = sub_100020BFC();
      v35 = v34;
      if (v32)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Asseet relocation successful", buf, 2u);
        }

        objc_storeStrong(&self->_cacheURL, _getLocalFileUrl);
        asset = self->_asset;
        self->_asset = 0;
        v37 = asset;

        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_100020C50;
        v43[3] = &unk_100081FD8;
        v44 = v7;
        v45 = 0;
        [(MAAsset *)v37 purgeWithError:v43];
      }

      else
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v55 = v33;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unable write info plist: %@", buf, 0xCu);
        }

        [objc_opt_class() _removeResourceAt:_getLocalFileUrl error:0];
        (v7[2])(v7, 7, v33);
      }

      v30 = v33;
    }

    else
    {
      v40 = sub_100020BFC();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v55 = v30;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Unable create info plist: %@", buf, 0xCu);
      }

      [objc_opt_class() _removeResourceAt:_getLocalFileUrl error:0];
      (v7[2])(v7, 7, v30);
    }
  }

  else
  {
    v38 = sub_100020BFC();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v55 = v14;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Unable to copy resource into place: %@", buf, 0xCu);
    }

    [objc_opt_class() _removeResourceAt:_getLocalFileUrl error:0];
    (v7[2])(v7, 7, v14);
  }

LABEL_31:
}

- (void)downloadWithOptions:(id)options queue:(id)queue completion:(id)completion
{
  optionsCopy = options;
  global_queue = queue;
  completionCopy = completion;
  if (!global_queue)
  {
    qos_class_self();
    global_queue = geo_get_global_queue();
  }

  asset = self->_asset;
  if (asset)
  {
    state = [(MAAsset *)asset state];
    if (state > 6)
    {
      goto LABEL_13;
    }

    if (((1 << state) & 0x6C) != 0)
    {
      v13 = sub_100020BFC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Found installed copy, relocating it", buf, 2u);
      }

      v14 = sub_100020FD8();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002102C;
      block[3] = &unk_100083738;
      block[4] = self;
      v24 = global_queue;
      v25 = completionCopy;
      dispatch_async(v14, block);

      v15 = v24;
      goto LABEL_20;
    }

    if (state != 4 || completionCopy)
    {
LABEL_13:
      v16 = sub_100020BFC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Requesting download of asset", buf, 2u);
      }

      v17 = self->_asset;
      downloadOptions = optionsCopy;
      if (!optionsCopy)
      {
        downloadOptions = [(GEOMAResourceInfo *)self->_info downloadOptions];
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10002103C;
      v20[3] = &unk_100081F88;
      v20[4] = self;
      v21 = global_queue;
      v22 = completionCopy;
      [(MAAsset *)v17 startDownload:downloadOptions completionWithError:v20];
      if (!optionsCopy)
      {
      }

      v15 = v21;
      goto LABEL_20;
    }

    v19 = sub_100020BFC();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "MA is already downloading this for us", buf, 2u);
    }
  }

  else if (completionCopy)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100020FC0;
    v27[3] = &unk_1000833E0;
    v28 = completionCopy;
    dispatch_async(global_queue, v27);
    v15 = v28;
LABEL_20:
  }
}

- (unint64_t)hash
{
  assetId = [(GEOMAResource *)self assetId];
  v3 = [assetId hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assetId = [(GEOMAResource *)self assetId];
    assetId2 = [equalCopy assetId];
    v7 = [assetId isEqual:assetId2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  contentVersion = [(GEOMAResource *)self contentVersion];
  contentVersion2 = [compareCopy contentVersion];
  v7 = [contentVersion compare:contentVersion2];

  if (!v7)
  {
    state = [(GEOMAResource *)self state];
    if (state == [compareCopy state])
    {
      v7 = 0;
      goto LABEL_8;
    }

    if ([(GEOMAResource *)self state]== 2)
    {
LABEL_5:
      v7 = 1;
      goto LABEL_8;
    }

    if ([compareCopy state] == 2)
    {
      goto LABEL_7;
    }

    if ([(GEOMAResource *)self state]== 3)
    {
      goto LABEL_5;
    }

    if ([compareCopy state] == 3)
    {
      goto LABEL_7;
    }

    if ([(GEOMAResource *)self state]== 5)
    {
      goto LABEL_5;
    }

    if ([compareCopy state] == 5)
    {
      goto LABEL_7;
    }

    if ([(GEOMAResource *)self state]== 6)
    {
      goto LABEL_5;
    }

    if ([compareCopy state] == 6)
    {
LABEL_7:
      v7 = -1;
      goto LABEL_8;
    }

    if ([(GEOMAResource *)self state]== 4)
    {
      goto LABEL_5;
    }

    if ([compareCopy state] == 4)
    {
      v7 = -1;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_8:

  return v7;
}

- (NSString)contentVersion
{
  attributes = [(GEOMAResource *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"_ContentVersion"];

  return v3;
}

- (unint64_t)size
{
  attributes = [(GEOMAResource *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"_UnarchivedSize"];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (id)getLocalFileUrl
{
  asset = self->_asset;
  if (asset && ([(MAAsset *)asset state]== 2 || [(MAAsset *)self->_asset state]== 3))
  {
    _getLocalFileUrl = [(GEOMAResource *)self _getLocalFileUrl];
  }

  else
  {
    _getLocalFileUrl = self->_cacheURL;
  }

  return _getLocalFileUrl;
}

- (id)_getPlistURL
{
  _getLocalFileUrl = [(GEOMAResource *)self _getLocalFileUrl];
  v3 = [_getLocalFileUrl URLByAppendingPathComponent:@".MAAttributes.plist"];

  return v3;
}

- (id)_getLocalFileUrl
{
  if (self->_asset)
  {
    baseURL = [(GEOMAResourceInfo *)self->_info baseURL];
    assetId = [(MAAsset *)self->_asset assetId];
    v5 = [baseURL URLByAppendingPathComponent:assetId isDirectory:1];
  }

  else
  {
    v5 = self->_cacheURL;
  }

  return v5;
}

- (int64_t)state
{
  if (self->_cacheURL)
  {
    return 2;
  }

  asset = self->_asset;
  if (asset)
  {
    return [(MAAsset *)asset state];
  }

  else
  {
    return 1;
  }
}

- (NSString)assetId
{
  asset = self->_asset;
  if (asset)
  {
    [(MAAsset *)asset assetId];
  }

  else
  {
    [(NSURL *)self->_cacheURL lastPathComponent];
  }
  v4 = ;

  return v4;
}

- (GEOMAResource)initWithResourceFolder:(id)folder info:(id)info
{
  folderCopy = folder;
  infoCopy = info;
  v22.receiver = self;
  v22.super_class = GEOMAResource;
  v9 = [(GEOMAResource *)&v22 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v9->_cacheURL, folder);
  objc_storeStrong(&v10->_info, info);
  _getPlistURL = [(GEOMAResource *)v10 _getPlistURL];
  v21 = 0;
  v12 = [NSData dataWithContentsOfURL:_getPlistURL options:0 error:&v21];
  v13 = v21;
  if (!v12)
  {
    v18 = sub_100020BFC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v24 = _getPlistURL;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unable to read plist at %{private}@: %@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  v20 = 0;
  v14 = [NSPropertyListSerialization propertyListWithData:v12 options:0 format:0 error:&v20];
  v15 = v20;

  attributes = v10->_attributes;
  v10->_attributes = v14;

  if (!v10->_attributes)
  {
    v18 = sub_100020BFC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v24 = _getPlistURL;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unable to decode plist at %{private}@: %@", buf, 0x16u);
    }

    v13 = v15;
LABEL_11:

    v17 = 0;
    goto LABEL_12;
  }

LABEL_5:
  v17 = v10;
LABEL_12:

  return v17;
}

- (GEOMAResource)initWithMobileAsset:(id)asset info:(id)info
{
  assetCopy = asset;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = GEOMAResource;
  v9 = [(GEOMAResource *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    attributes = [(MAAsset *)v10->_asset attributes];
    attributes = v10->_attributes;
    v10->_attributes = attributes;

    cacheURL = v10->_cacheURL;
    v10->_cacheURL = 0;

    objc_storeStrong(&v10->_info, info);
  }

  return v10;
}

+ (void)onFileAccessQueueAsync:(id)async
{
  asyncCopy = async;
  v4 = sub_100020FD8();
  dispatch_async(v4, asyncCopy);
}

+ (void)onFileAccessQueueSync:(id)sync
{
  syncCopy = sync;
  v4 = sub_100020FD8();
  dispatch_sync(v4, syncCopy);
}

+ (BOOL)_fixPermissionsAndRemoveResourceAt:(id)at error:(id *)error
{
  atCopy = at;
  v26 = NSFilePosixPermissions;
  v27 = &off_100088600;
  v7 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v8 = +[NSFileManager defaultManager];
  path = [atCopy path];
  v21 = 0;
  v10 = [v8 setAttributes:v7 ofItemAtPath:path error:&v21];
  v11 = v21;

  if (v10)
  {
    v12 = +[NSFileManager defaultManager];
    v20 = v11;
    v13 = [v12 removeItemAtURL:atCopy error:&v20];
    v14 = v20;

    if (v13)
    {
      v15 = 1;
      v11 = v14;
      if (!error)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v11 = v14;
  }

  else
  {
    v16 = sub_100020BFC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to fix permissions: %@", buf, 0xCu);
    }
  }

  v17 = sub_100020BFC();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy = self;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to delete resource %@: %@", buf, 0x16u);
  }

  v15 = 0;
  if (error)
  {
LABEL_12:
    v18 = v11;
    *error = v11;
  }

LABEL_13:

  return v15;
}

+ (BOOL)_removeResourceAt:(id)at error:(id *)error
{
  atCopy = at;
  v7 = +[NSFileManager defaultManager];
  v15 = 0;
  v8 = [v7 removeItemAtURL:atCopy error:&v15];
  v9 = v15;

  if ((v8 & 1) == 0)
  {
    domain = [v9 domain];
    if ([domain isEqual:NSCocoaErrorDomain])
    {
      code = [v9 code];

      if (code == 513)
      {
        v8 = [self _fixPermissionsAndRemoveResourceAt:atCopy error:error];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v12 = sub_100020BFC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to delete resource %@: %@", buf, 0x16u);
    }
  }

  if (error)
  {
    v13 = v9;
    *error = v9;
  }

LABEL_11:

  return v8;
}

+ (BOOL)removeResourceAt:(id)at error:(id *)error
{
  atCopy = at;
  v7 = sub_100020FD8();
  dispatch_assert_queue_not_V2(v7);

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100021F94;
  v21 = sub_100021FA4;
  v22 = 0;
  v8 = sub_100020FD8();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100021FAC;
  v12[3] = &unk_100082000;
  v14 = &v23;
  selfCopy = self;
  v9 = atCopy;
  v13 = v9;
  v15 = &v17;
  dispatch_sync(v8, v12);

  if (error)
  {
    *error = v18[5];
  }

  v10 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

@end