@interface GSClient
- (BOOL)_validateToken:(id)token error:(id *)error;
- (GSClient)initWithConnection:(id)connection;
- (id)_getCachedVolPath:(unint64_t)path error:(id *)error;
- (id)_volPathFromPath:(id)path error:(id *)error;
- (int)importCookieFileDescriptorForVolumeURL:(id)l forWriting:(BOOL)writing error:(id *)error;
- (void)_removeAdditionsInVolPath:(id)path removalSpec:(id)spec completionHandler:(id)handler;
- (void)_stagingPrefixCleanup:(id)cleanup;
- (void)checkItemAtURLValidInsidePermanentStorage:(id)storage reply:(id)reply;
- (void)createAdditionInStorage:(int64_t)storage stagedFileDescriptor:(id)descriptor creationInfo:(id)info completionHandler:(id)handler;
- (void)dealloc;
- (void)deleteImportCookieDataForVolumeAtURL:(id)l reply:(id)reply;
- (void)getAdditionInStorage:(int64_t)storage andNameSpace:(id)space named:(id)named completionHandler:(id)handler;
- (void)getAdditionsInStorage:(int64_t)storage andNameSpace:(id)space named:(id)named completionHandler:(id)handler;
- (void)hintDocIDCreationForFileHandle:(id)handle;
- (void)invalidate;
- (void)isPermanentStorageSupportedForHandle:(id)handle reply:(id)reply;
- (void)listAdditionsOfStorage:(int64_t)storage nameSpace:(id)space withOptions:(unint64_t)options withoutOptions:(unint64_t)withoutOptions andEnumerationState:(id)state completionHandler:(id)handler;
- (void)listAdditionsUnderPath:(id)path withNameSpace:(id)space withOptions:(unint64_t)options withoutOptions:(unint64_t)withoutOptions andEnumerationState:(id)state completionHandler:(id)handler;
- (void)mergeAdditionInfoValueInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(id)value reply:(id)reply;
- (void)permanentStorageClose:(unint64_t)close;
- (void)permanentStorageIDForHandle:(id)handle reply:(id)reply;
- (void)permanentStorageOpenForHandle:(id)handle withRemoteID:(unint64_t)d andDocumentID:(id)iD reply:(id)reply;
- (void)permanentStoragePrefixForHandle:(id)handle reply:(id)reply;
- (void)readImportCookieDataForVolumeAtURL:(id)l reply:(id)reply;
- (void)removeAdditionsInStorage:(int64_t)storage removalSpec:(id)spec completionHandler:(id)handler;
- (void)removeAdditionsUnderPath:(id)path additionsList:(id)list completionHandler:(id)handler;
- (void)requestFreeSpace:(unint64_t)space forVolume:(id)volume reply:(id)reply;
- (void)setAdditionConflictResolvedInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(BOOL)value reply:(id)reply;
- (void)setAdditionDisplayNameInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(id)value reply:(id)reply;
- (void)setAdditionNameSpaceInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(id)value completionHandler:(id)handler;
- (void)setAdditionOptionsInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(unint64_t)value reply:(id)reply;
- (void)stagingPrefixRelinquish:(id)relinquish;
- (void)storeImportCookieData:(id)data forVolumeURL:(id)l reply:(id)reply;
@end

@implementation GSClient

- (GSClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = GSClient;
  v5 = [(GSClient *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = objc_alloc_init(NSMutableSet);
    v9 = *(v5 + 2);
    *(v5 + 2) = v8;

    *v12 = [connectionCopy processIdentifier];
    *&v12[4] = [connectionCopy effectiveUserIdentifier];
    *&v12[8] = [connectionCopy effectiveGroupIdentifier];
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(&v12[12], 0, 32);
    }

    *(v5 + 24) = *v12;
    *(v5 + 40) = *&v12[16];
    *(v5 + 52) = *&v12[28];
    v10 = [connectionCopy valueForEntitlement:@"com.apple.fileprovider.import-cookie"];
    v5[80] = [v10 BOOLValue];
  }

  return v5;
}

- (void)invalidate
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_stagingPrefixes;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = sub_100003164();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] invalidating %@", buf, 0xCu);
        }

        [(GSClient *)self _stagingPrefixCleanup:v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_stagingPrefixes removeAllObjects];
  if ([(NSMutableDictionary *)self->_storageVolPaths count])
  {
    [(NSMutableDictionary *)self->_storageVolPaths removeAllObjects];
    openHandleTx = self->_openHandleTx;
    self->_openHandleTx = 0;
  }
}

- (void)dealloc
{
  [(GSClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = GSClient;
  [(GSClient *)&v3 dealloc];
}

- (id)_getCachedVolPath:(unint64_t)path error:(id *)error
{
  storageVolPaths = self->_storageVolPaths;
  v8 = [NSNumber numberWithUnsignedLongLong:?];
  v9 = [(NSMutableDictionary *)storageVolPaths objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [NSString stringWithFormat:@"Instance id %llu does not exist for %@\n", path, self];
    v12 = sub_100003164();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100027C60();
    }

    if (error)
    {
      *error = sub_10000F0F8(101, v11, 0);
    }
  }

  return v9;
}

- (void)requestFreeSpace:(unint64_t)space forVolume:(id)volume reply:(id)reply
{
  volumeCopy = volume;
  replyCopy = reply;
  memset(&v25, 0, sizeof(v25));
  v10 = sub_100003164();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100027CD4();
  }

  if (![volumeCopy isFileURL] || lstat(objc_msgSend(volumeCopy, "fileSystemRepresentation"), &v25) < 0)
  {
    volumeCopy = [NSString stringWithFormat:@"invalid path [%@]", volumeCopy];
    v15 = sub_100003164();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100027DCC();
    }

    v13 = sub_10000F0F8(104, volumeCopy, 0);

    v16 = sub_100003164();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100027D50();
    }

    replyCopy[2](replyCopy, 0, v13);
  }

  else
  {
    v11 = [GSStorageManager existingLibraryForDevice:v25.st_dev];
    v12 = v11;
    if (v11)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000132AC;
      v22[3] = &unk_100041270;
      v23 = v11;
      spaceCopy = space;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000133A0;
      v20[3] = &unk_100041298;
      v21 = replyCopy;
      [v23 purgeWithCredential:&self->_creds whilePredicateIsTrue:v22 done:v20];

      v13 = 0;
    }

    else
    {
      v17 = [NSString stringWithFormat:@"no library on this volume"];
      v18 = sub_100003164();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1000256F4();
      }

      v13 = sub_10000F0F8(102, v17, 0);

      v19 = sub_100003164();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100027D50();
      }

      replyCopy[2](replyCopy, 0, v13);
    }
  }
}

- (void)hintDocIDCreationForFileHandle:(id)handle
{
  handleCopy = handle;
  v11 = 0;
  v4 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [handleCopy fileDescriptor], &v11);
  v5 = v11;
  v6 = sub_100003164();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100028108();
  }

  v10 = v5;
  v7 = [v4 isValidForCreds:0 documentIdentifier:0 error:&v10];
  v8 = v10;

  if (v7)
  {
    [v4 performOnResolvedPath:&stru_1000412D8];
  }

  else
  {
    v9 = sub_100003164();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100028184();
    }
  }
}

- (void)isPermanentStorageSupportedForHandle:(id)handle reply:(id)reply
{
  handleCopy = handle;
  replyCopy = reply;
  v7 = sub_100003164();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000281C0();
  }

  v17 = 0;
  v8 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [handleCopy fileDescriptor], &v17);
  v9 = v17;
  if (v8)
  {
    if ([v8 isInIgnoredLocation])
    {
      path = [v8 path];
      v11 = [NSString stringWithFormat:@"%@ is in an ignored location", path];

      v12 = sub_100003164();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100027DCC();
      }

      v13 = sub_10000F0F8(104, v11, 0);

      v14 = sub_100003164();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1000282C8();
      }

      replyCopy[2](replyCopy, 0, v13);
      v9 = v13;
    }

    else
    {
      v16 = sub_100003164();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_10002823C();
      }

      replyCopy[2](replyCopy, 1, 0);
    }
  }

  else
  {
    v15 = sub_100003164();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1000282C8();
    }

    replyCopy[2](replyCopy, 0, v9);
  }
}

- (void)_stagingPrefixCleanup:(id)cleanup
{
  cleanupCopy = cleanup;
  v4 = open([cleanupCopy fileSystemRepresentation], 260);
  if ((v4 & 0x80000000) != 0)
  {
    v7 = sub_100003164();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v9 = 138412290;
    v10 = cleanupCopy;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't resolve staging path %@, volume is probably gone", &v9, 0xCu);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [GSVolPath volPathOnVolume:0 withFD:v4 error:0];
  if (!v6)
  {
    v7 = sub_100003164();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v9 = 138412290;
    v10 = cleanupCopy;
    goto LABEL_8;
  }

  v7 = v6;
  close(v5);
  v8 = +[NSFileManager defaultManager];
  [v8 removeItemAtPath:cleanupCopy error:0];

LABEL_9:
}

- (void)stagingPrefixRelinquish:(id)relinquish
{
  relinquishCopy = relinquish;
  v5 = sub_100003164();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100028568();
  }

  if ([(NSMutableSet *)self->_stagingPrefixes containsObject:relinquishCopy])
  {
    [(NSMutableSet *)self->_stagingPrefixes removeObject:relinquishCopy];
    [(GSClient *)self _stagingPrefixCleanup:relinquishCopy];
  }
}

- (void)permanentStoragePrefixForHandle:(id)handle reply:(id)reply
{
  handleCopy = handle;
  replyCopy = reply;
  v8 = sub_100003164();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000285E4();
  }

  v19 = 0;
  v9 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [handleCopy fileDescriptor], &v19);
  v10 = v19;
  v18 = v10;
  v11 = [v9 isValidForCreds:0 documentIdentifier:0 error:&v18];
  v12 = v18;

  if (v11)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100014184;
    v14[3] = &unk_100041300;
    v15 = v9;
    selfCopy = self;
    v17 = replyCopy;
    [v15 performOnResolvedPath:v14];
  }

  else
  {
    v13 = sub_100003164();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100028660();
    }

    (*(replyCopy + 2))(replyCopy, 0, v12);
  }
}

- (void)permanentStorageIDForHandle:(id)handle reply:(id)reply
{
  handleCopy = handle;
  replyCopy = reply;
  v7 = sub_100003164();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100028760();
  }

  v16 = 0;
  v8 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [handleCopy fileDescriptor], &v16);
  v9 = v16;
  v15 = v9;
  v10 = [v8 isValidForCreds:0 documentIdentifier:0 error:&v15];
  v11 = v15;

  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100014450;
    v13[3] = &unk_100041328;
    v14 = replyCopy;
    [v8 performOnResolvedPath:v13];
  }

  else
  {
    v12 = sub_100003164();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000287DC();
    }

    (*(replyCopy + 2))(replyCopy, 0, v11);
  }
}

- (void)permanentStorageOpenForHandle:(id)handle withRemoteID:(unint64_t)d andDocumentID:(id)iD reply:(id)reply
{
  handleCopy = handle;
  iDCopy = iD;
  replyCopy = reply;
  v13 = sub_100003164();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v33 = "[GSClient permanentStorageOpenForHandle:withRemoteID:andDocumentID:reply:]";
    v34 = 2112;
    v35 = handleCopy;
    v36 = 2048;
    dCopy = d;
    v38 = 2112;
    v39 = iDCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%@, %lld, %@)", buf, 0x2Au);
  }

  storageVolPaths = self->_storageVolPaths;
  v15 = [NSNumber numberWithUnsignedLongLong:d];
  v16 = [(NSMutableDictionary *)storageVolPaths objectForKeyedSubscript:v15];

  if (v16)
  {
    v17 = [NSString stringWithFormat:@"Instance %lld already exists", d];
    v18 = sub_100003164();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000288E4();
    }

    v19 = sub_10000F0F8(101, v17, 0);

    v20 = sub_100003164();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_100028954();
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v19);
    v21 = 0;
  }

  else
  {
    v31 = 0;
    v21 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [handleCopy fileDescriptor], &v31);
    v22 = v31;
    v30 = v22;
    v23 = [v21 isValidForCreds:0 documentIdentifier:iDCopy error:&v30];
    v19 = v30;

    if (v23)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100014820;
      v25[3] = &unk_100041350;
      v21 = v21;
      v26 = v21;
      selfCopy = self;
      v28 = replyCopy;
      dCopy2 = d;
      [v21 performOnResolvedPath:v25];
    }

    else
    {
      v24 = sub_100003164();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100028954();
      }

      (*(replyCopy + 2))(replyCopy, 0, 0, 0, v19);
    }
  }
}

- (void)permanentStorageClose:(unint64_t)close
{
  v5 = sub_100003164();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000289D4();
  }

  if ([(NSMutableDictionary *)self->_storageVolPaths count])
  {
    storageVolPaths = self->_storageVolPaths;
    v7 = [NSNumber numberWithUnsignedLongLong:close];
    [(NSMutableDictionary *)storageVolPaths removeObjectForKey:v7];

    if (![(NSMutableDictionary *)self->_storageVolPaths count])
    {
      openHandleTx = self->_openHandleTx;
      self->_openHandleTx = 0;
    }
  }
}

- (void)getAdditionInStorage:(int64_t)storage andNameSpace:(id)space named:(id)named completionHandler:(id)handler
{
  spaceCopy = space;
  namedCopy = named;
  handlerCopy = handler;
  v13 = sub_100003164();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v30 = "[GSClient getAdditionInStorage:andNameSpace:named:completionHandler:]";
    v31 = 2048;
    storageCopy = storage;
    v33 = 2112;
    v34 = spaceCopy;
    v35 = 2112;
    v36 = namedCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@)", buf, 0x2Au);
  }

  v28 = 0;
  v14 = [(GSClient *)self _getCachedVolPath:storage error:&v28];
  v15 = v28;
  if (!v14)
  {
    v18 = sub_100003164();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100028ACC();
    }

    goto LABEL_12;
  }

  v27 = 0;
  v16 = [namedCopy validateGSName:&v27];
  v17 = v27;

  if ((v16 & 1) == 0)
  {
    v19 = [NSString stringWithFormat:@"Invalid namespace"];
    v20 = sub_100003164();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_100028A54();
    }

    v15 = sub_10000F0F8(3, v19, 0);

    v18 = sub_100003164();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100028ACC();
    }

LABEL_12:

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v15);
    goto LABEL_13;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100014E64;
  v21[3] = &unk_100041378;
  v22 = v14;
  v23 = spaceCopy;
  v24 = namedCopy;
  selfCopy = self;
  v26 = handlerCopy;
  [v22 performOnResolvedPath:v21];

  v15 = v17;
LABEL_13:
}

- (void)getAdditionsInStorage:(int64_t)storage andNameSpace:(id)space named:(id)named completionHandler:(id)handler
{
  spaceCopy = space;
  namedCopy = named;
  handlerCopy = handler;
  v13 = sub_100003164();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v29 = "[GSClient getAdditionsInStorage:andNameSpace:named:completionHandler:]";
    v30 = 2048;
    storageCopy = storage;
    v32 = 2112;
    v33 = spaceCopy;
    v34 = 2112;
    v35 = namedCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@)", buf, 0x2Au);
  }

  v27 = 0;
  v14 = [(GSClient *)self _getCachedVolPath:storage error:&v27];
  v15 = v27;
  if (v14)
  {
    if (sub_10001532C(namedCopy))
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100015464;
      v21[3] = &unk_100041378;
      v22 = namedCopy;
      v23 = v14;
      v24 = spaceCopy;
      selfCopy = self;
      v26 = handlerCopy;
      [v23 performOnResolvedPath:v21];
    }

    else
    {
      v17 = [NSString stringWithFormat:@"Invalid removal spec"];
      v18 = sub_100003164();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100028B4C();
      }

      v19 = sub_10000F0F8(105, v17, 0);

      v20 = sub_100003164();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_100028BC4();
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v19);
      v15 = v19;
    }
  }

  else
  {
    v16 = sub_100003164();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100028BC4();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v15);
  }
}

- (BOOL)_validateToken:(id)token error:(id *)error
{
  tokenCopy = token;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [tokenCopy count];
    if (!error || v6 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!error)
  {
    goto LABEL_9;
  }

  v7 = [NSString stringWithFormat:@"invalid enumeration state"];
  v8 = sub_100003164();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000288E4();
  }

  v9 = sub_10000F0F8(101, v7, 0);

  v10 = v9;
  *error = v9;
LABEL_9:
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [tokenCopy copy];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v18 = [NSString stringWithFormat:@"invalid enumeration state", v23];
            v19 = sub_100003164();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              sub_1000288E4();
            }

            v20 = sub_10000F0F8(101, v18, 0);

            v21 = v20;
            v17 = 0;
            *error = v20;
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_23;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_23:

  return v17;
}

- (void)listAdditionsOfStorage:(int64_t)storage nameSpace:(id)space withOptions:(unint64_t)options withoutOptions:(unint64_t)withoutOptions andEnumerationState:(id)state completionHandler:(id)handler
{
  spaceCopy = space;
  stateCopy = state;
  handlerCopy = handler;
  v17 = sub_100003164();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v41 = "[GSClient listAdditionsOfStorage:nameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:]";
    v42 = 2048;
    storageCopy = storage;
    v44 = 2112;
    v45 = spaceCopy;
    v46 = 2048;
    optionsCopy = options;
    v48 = 2048;
    withoutOptionsCopy = withoutOptions;
    v50 = 2112;
    v51 = stateCopy;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %llx, %llx, %@)", buf, 0x3Eu);
  }

  if (stateCopy)
  {
    v39 = 0;
    v18 = [(GSClient *)self _validateToken:stateCopy error:&v39];
    v19 = v39;
    if ((v18 & 1) == 0)
    {
      v25 = sub_100003164();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_100028C44();
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v19);
      goto LABEL_16;
    }

    v20 = [stateCopy mutableCopy];
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = v19;
  v38 = 0;
  v22 = [(GSClient *)self _getCachedVolPath:storage error:&v38];
  v19 = v38;

  if (!v22)
  {
    v26 = sub_100003164();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_100028C44();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v19);
LABEL_16:
    v22 = 0;
    goto LABEL_20;
  }

  v37 = 0;
  v23 = [spaceCopy validateGSName:&v37];
  v28 = v37;

  if (v23)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100015CD4;
    v29[3] = &unk_1000413A0;
    v30 = v20;
    v22 = v22;
    v31 = v22;
    optionsCopy2 = options;
    withoutOptionsCopy2 = withoutOptions;
    v32 = spaceCopy;
    selfCopy = self;
    v34 = handlerCopy;
    v24 = v20;
    [v22 performOnResolvedPath:v29];

    v19 = v28;
  }

  else
  {
    v27 = sub_100003164();
    v19 = v28;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_100028C44();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v28);
  }

LABEL_20:
}

- (void)checkItemAtURLValidInsidePermanentStorage:(id)storage reply:(id)reply
{
  replyCopy = reply;
  isFileURL = [storage isFileURL];
  v7 = sub_100003164();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (isFileURL)
  {
    if (v8)
    {
      sub_100028D70();
    }

    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    if (v8)
    {
      sub_100028CC4(NSURLErrorDomain);
    }

    v9 = [NSError errorWithDomain:NSURLErrorDomain code:-1002 userInfo:0];
    replyCopy[2](replyCopy, 0, v9);

    replyCopy = v9;
  }
}

- (void)setAdditionOptionsInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(unint64_t)value reply:(id)reply
{
  spaceCopy = space;
  nameCopy = name;
  replyCopy = reply;
  v15 = sub_100003164();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v40 = "[GSClient setAdditionOptionsInStorage:nameSpace:additionName:value:reply:]";
    v41 = 2048;
    storageCopy = storage;
    v43 = 2112;
    v44 = spaceCopy;
    v45 = 2112;
    v46 = nameCopy;
    v47 = 2048;
    valueCopy = value;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %llx)", buf, 0x34u);
  }

  if ((value & 0xFFFFFFFFFFFFFFE1) != 1)
  {
    v27 = [NSString stringWithFormat:@"invalid options"];
    v28 = sub_100003164();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_100028DFC();
    }

    v17 = sub_10000F0F8(110, v27, 0);

    v29 = sub_100003164();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100028E74();
    }

    goto LABEL_20;
  }

  v38 = 0;
  v16 = [nameCopy validateGSName:&v38];
  v17 = v38;
  if (!v16)
  {
    goto LABEL_18;
  }

  v37 = 0;
  v18 = [spaceCopy validateGSName:&v37];
  v19 = v37;

  if ((v18 & 1) == 0)
  {
    v17 = v19;
LABEL_18:
    v29 = sub_100003164();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100028E74();
    }

    goto LABEL_20;
  }

  v36 = 0;
  v20 = [(GSClient *)self _getCachedVolPath:storage error:&v36];
  v17 = v36;

  if (!v20)
  {
    v29 = sub_100003164();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100028E74();
    }

LABEL_20:

    replyCopy[2](replyCopy, 0, v17);
    goto LABEL_21;
  }

  library = [v20 library];
  isReadOnly = [library isReadOnly];

  if (isReadOnly)
  {
    v23 = [NSString stringWithFormat:@"storage is read-only"];
    v24 = sub_100003164();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_1000284F8();
    }

    v25 = sub_10000F0F8(111, v23, 0);

    v26 = sub_100003164();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_100028E74();
    }

    replyCopy[2](replyCopy, 0, v25);
    v17 = v25;
  }

  else
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100016404;
    v30[3] = &unk_1000413C8;
    v31 = nameCopy;
    v32 = spaceCopy;
    selfCopy = self;
    v35 = value & 0xFFFFFFFFFFFFFFEDLL;
    v34 = replyCopy;
    [v20 performOnResolvedPath:v30];
  }

LABEL_21:
}

- (void)mergeAdditionInfoValueInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(id)value reply:(id)reply
{
  spaceCopy = space;
  nameCopy = name;
  valueCopy = value;
  replyCopy = reply;
  v16 = sub_100003164();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v46 = "[GSClient mergeAdditionInfoValueInStorage:nameSpace:additionName:value:reply:]";
    v47 = 2048;
    storageCopy = storage;
    v49 = 2112;
    v50 = spaceCopy;
    v51 = 2112;
    v52 = nameCopy;
    v53 = 2112;
    v54 = valueCopy;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %@)", buf, 0x34u);
  }

  v44 = 0;
  v17 = [nameCopy validateGSName:&v44];
  v18 = v44;
  if (!v17)
  {
    goto LABEL_13;
  }

  v43 = 0;
  v19 = [spaceCopy validateGSName:&v43];
  v20 = v43;

  if ((v19 & 1) == 0)
  {
    v18 = v20;
LABEL_13:
    v29 = sub_100003164();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100028F78();
    }

    goto LABEL_15;
  }

  v42 = 0;
  v21 = [(GSClient *)self _getCachedVolPath:storage error:&v42];
  v18 = v42;

  if (!v21)
  {
    v29 = sub_100003164();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100028F78();
    }

LABEL_15:

    replyCopy[2](replyCopy, 0, v18);
    v28 = 0;
    v21 = 0;
    goto LABEL_16;
  }

  library = [v21 library];
  isReadOnly = [library isReadOnly];

  if (isReadOnly)
  {
    v24 = [NSString stringWithFormat:@"storage is read-only"];
    v25 = sub_100003164();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1000284F8();
    }

    v26 = sub_10000F0F8(111, v24, 0);

    v27 = sub_100003164();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_100028F78();
    }

    replyCopy[2](replyCopy, 0, v26);
    v28 = 0;
    v18 = v26;
  }

  else
  {
    v41 = 0;
    v28 = [NSPropertyListSerialization propertyListWithData:valueCopy options:0 format:0 error:&v41];
    v30 = v41;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100016A1C;
      v34[3] = &unk_1000413F0;
      v35 = nameCopy;
      v36 = spaceCopy;
      selfCopy = self;
      v21 = v21;
      v38 = v21;
      v28 = v28;
      v39 = v28;
      v40 = replyCopy;
      [v21 performOnResolvedPath:v34];

      v18 = v30;
    }

    else
    {
      v31 = [NSString stringWithFormat:@"Invalid plist value received"];
      v32 = sub_100003164();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        sub_1000288E4();
      }

      v18 = sub_10000F0F8(101, v31, v30);

      v33 = sub_100003164();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        sub_100028F78();
      }

      replyCopy[2](replyCopy, 0, v18);
    }
  }

LABEL_16:
}

- (void)setAdditionDisplayNameInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(id)value reply:(id)reply
{
  spaceCopy = space;
  nameCopy = name;
  valueCopy = value;
  replyCopy = reply;
  v16 = sub_100003164();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v43 = "[GSClient setAdditionDisplayNameInStorage:nameSpace:additionName:value:reply:]";
    v44 = 2048;
    storageCopy = storage;
    v46 = 2112;
    v47 = spaceCopy;
    v48 = 2112;
    v49 = nameCopy;
    v50 = 2112;
    v51 = valueCopy;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %@)", buf, 0x34u);
  }

  v41 = 0;
  v17 = [nameCopy validateGSName:&v41];
  v18 = v41;
  if (!v17)
  {
    goto LABEL_15;
  }

  v40 = 0;
  v19 = [valueCopy validateGSName:&v40];
  v20 = v40;

  if (!v19)
  {
    v18 = v20;
    goto LABEL_15;
  }

  v39 = 0;
  v21 = [spaceCopy validateGSName:&v39];
  v22 = v39;

  if ((v21 & 1) == 0)
  {
    v18 = v22;
LABEL_15:
    v30 = sub_100003164();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_10002907C();
    }

    goto LABEL_17;
  }

  v38 = 0;
  v23 = [(GSClient *)self _getCachedVolPath:storage error:&v38];
  v18 = v38;

  if (!v23)
  {
    v30 = sub_100003164();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_10002907C();
    }

LABEL_17:

    replyCopy[2](replyCopy, 0, v18);
    v23 = 0;
    goto LABEL_18;
  }

  library = [v23 library];
  isReadOnly = [library isReadOnly];

  if (isReadOnly)
  {
    v26 = [NSString stringWithFormat:@"storage is read-only"];
    v27 = sub_100003164();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_1000284F8();
    }

    v28 = sub_10000F0F8(111, v26, 0);

    v29 = sub_100003164();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_10002907C();
    }

    replyCopy[2](replyCopy, 0, v28);
    v18 = v28;
  }

  else
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100016F70;
    v31[3] = &unk_1000413F0;
    v32 = nameCopy;
    v33 = spaceCopy;
    selfCopy = self;
    v23 = v23;
    v35 = v23;
    v36 = valueCopy;
    v37 = replyCopy;
    [v23 performOnResolvedPath:v31];
  }

LABEL_18:
}

- (void)setAdditionNameSpaceInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(id)value completionHandler:(id)handler
{
  spaceCopy = space;
  nameCopy = name;
  valueCopy = value;
  handlerCopy = handler;
  v16 = sub_100003164();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v43 = "[GSClient setAdditionNameSpaceInStorage:nameSpace:additionName:value:completionHandler:]";
    v44 = 2048;
    storageCopy = storage;
    v46 = 2112;
    v47 = spaceCopy;
    v48 = 2112;
    v49 = nameCopy;
    v50 = 2112;
    v51 = valueCopy;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %@)", buf, 0x34u);
  }

  v41 = 0;
  v17 = [nameCopy validateGSName:&v41];
  v18 = v41;
  if (!v17)
  {
    goto LABEL_15;
  }

  v40 = 0;
  v19 = [spaceCopy validateGSName:&v40];
  v20 = v40;

  if (!v19)
  {
    v18 = v20;
    goto LABEL_15;
  }

  v39 = 0;
  v21 = [valueCopy validateGSName:&v39];
  v22 = v39;

  if ((v21 & 1) == 0)
  {
    v18 = v22;
LABEL_15:
    v30 = sub_100003164();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_100029180();
    }

    goto LABEL_17;
  }

  v38 = 0;
  v23 = [(GSClient *)self _getCachedVolPath:storage error:&v38];
  v18 = v38;

  if (!v23)
  {
    v30 = sub_100003164();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_100029180();
    }

LABEL_17:

    handlerCopy[2](handlerCopy, 0, v18);
    v23 = 0;
    goto LABEL_18;
  }

  library = [v23 library];
  isReadOnly = [library isReadOnly];

  if (isReadOnly)
  {
    v26 = [NSString stringWithFormat:@"storage is read-only"];
    v27 = sub_100003164();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_1000284F8();
    }

    v28 = sub_10000F0F8(111, v26, 0);

    v29 = sub_100003164();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100029180();
    }

    handlerCopy[2](handlerCopy, 0, v28);
    v18 = v28;
  }

  else
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000174C4;
    v31[3] = &unk_1000413F0;
    v23 = v23;
    v32 = v23;
    v33 = spaceCopy;
    v34 = nameCopy;
    v35 = valueCopy;
    selfCopy = self;
    v37 = handlerCopy;
    [v23 performOnResolvedPath:v31];
  }

LABEL_18:
}

- (id)_volPathFromPath:(id)path error:(id *)error
{
  pathCopy = path;
  memset(&v21, 0, sizeof(v21));
  if (lstat([pathCopy fileSystemRepresentation], &v21))
  {
    if (error)
    {
      v6 = *__error();
      v7 = __error();
      v8 = [NSString stringWithFormat:@"lstat(%@) failed error %d (%s)\n", pathCopy, v6, strerror(*v7)];;
      v9 = sub_100003164();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000288E4();
      }

      v10 = sub_10000F0F8(101, v8, 0);

      v11 = v10;
      v12 = 0;
      *error = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = [GSStorageManager existingLibraryForDevice:v21.st_dev];
    if (v13)
    {
      v20 = 0;
      v12 = [GSVolPath volPathOnVolume:v13 withPath:pathCopy error:&v20];
      v14 = v20;
      if (error && !v12)
      {
        v14 = v14;
        *error = v14;
      }
    }

    else if (error)
    {
      v15 = [NSString stringWithFormat:@"Unable to open library"];
      v16 = sub_100003164();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_1000256F4();
      }

      v17 = sub_10000F0F8(102, v15, 0);

      v18 = v17;
      v12 = 0;
      *error = v17;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)listAdditionsUnderPath:(id)path withNameSpace:(id)space withOptions:(unint64_t)options withoutOptions:(unint64_t)withoutOptions andEnumerationState:(id)state completionHandler:(id)handler
{
  pathCopy = path;
  spaceCopy = space;
  stateCopy = state;
  handlerCopy = handler;
  v18 = sub_100003164();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v39 = "[GSClient listAdditionsUnderPath:withNameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:]";
    v40 = 2112;
    v41 = pathCopy;
    v42 = 2112;
    v43 = spaceCopy;
    v44 = 2048;
    optionsCopy = options;
    v46 = 2048;
    withoutOptionsCopy = withoutOptions;
    v48 = 2112;
    v49 = stateCopy;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%@, %@, %llx, %llx, %@)", buf, 0x3Eu);
  }

  if (!stateCopy)
  {
    v21 = 0;
    v20 = 0;
    goto LABEL_7;
  }

  v37 = 0;
  v19 = [(GSClient *)self _validateToken:stateCopy error:&v37];
  v20 = v37;
  if (v19)
  {
    v21 = [stateCopy mutableCopy];
LABEL_7:
    v22 = v20;
    v36 = v20;
    pathCopy = [(GSClient *)self _volPathFromPath:pathCopy error:&v36, pathCopy];
    v20 = v36;

    if (pathCopy)
    {
      library = [pathCopy library];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100017AD8;
      v28[3] = &unk_100041418;
      v29 = v21;
      v30 = pathCopy;
      optionsCopy2 = options;
      withoutOptionsCopy2 = withoutOptions;
      v31 = spaceCopy;
      selfCopy = self;
      v33 = handlerCopy;
      [library dispatchSync:v28];
    }

    else
    {
      v26 = sub_100003164();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_100029280();
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v20);
    }

    pathCopy = v27;
    goto LABEL_16;
  }

  v25 = sub_100003164();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    sub_100029280();
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v20);
LABEL_16:
}

- (void)createAdditionInStorage:(int64_t)storage stagedFileDescriptor:(id)descriptor creationInfo:(id)info completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  infoCopy = info;
  handlerCopy = handler;
  v13 = sub_100003164();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v44 = "[GSClient createAdditionInStorage:stagedFileDescriptor:creationInfo:completionHandler:]";
    v45 = 2048;
    storageCopy = storage;
    v47 = 2112;
    v48 = descriptorCopy;
    v49 = 2112;
    v50 = infoCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@)", buf, 0x2Au);
  }

  if (fcntl([descriptorCopy fileDescriptor], 50, buf) < 0)
  {
    v23 = [NSString stringWithFormat:@"Unable to get path for file descriptor"];
    v24 = *__error();
    v25 = sub_100003164();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_100029408(v23, v24);
    }

    v16 = sub_10000F37C(v24, v23);

    v26 = sub_100003164();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_100029388();
    }

    goto LABEL_21;
  }

  memset(&v42, 0, sizeof(v42));
  if (fstat([descriptorCopy fileDescriptor], &v42) < 0)
  {
    v27 = [NSString stringWithFormat:@"Unable to stat file descriptor"];
    v28 = *__error();
    v29 = sub_100003164();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100029408(v27, v28);
    }

    v16 = sub_10000F37C(v28, v27);

    v26 = sub_100003164();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_100029388();
    }

LABEL_21:

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);
    v14 = 0;
    v17 = 0;
    goto LABEL_31;
  }

  v14 = [NSString gs_stringWithFileSystemRepresentation:buf];
  v41 = 0;
  v15 = sub_1000119BC(v14, infoCopy, &v41);
  v16 = v41;

  if (v15)
  {
    v40 = 0;
    v17 = [(GSClient *)self _getCachedVolPath:storage error:&v40];
    v18 = v40;

    if (v17)
    {
      library = [v17 library];
      if ([library isReadOnly])
      {
        v20 = [NSString stringWithFormat:@"storage is read-only"];
        v21 = sub_100003164();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_1000284F8();
        }

        v16 = sub_10000F0F8(111, v20, 0);

        v22 = sub_100003164();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_100029388();
        }

        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);
      }

      else
      {
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100018168;
        v32[3] = &unk_100041440;
        v33 = library;
        v34 = v15;
        v39 = v42;
        v35 = v14;
        selfCopy = self;
        v37 = v17;
        v38 = handlerCopy;
        [v37 performOnResolvedPath:v32];

        v16 = v18;
      }
    }

    else
    {
      v31 = sub_100003164();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_100029388();
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v18);
      v17 = 0;
      v16 = v18;
    }

    infoCopy = v15;
  }

  else
  {
    v30 = sub_100003164();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_100029388();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);
    v17 = 0;
    infoCopy = 0;
  }

LABEL_31:
}

- (void)_removeAdditionsInVolPath:(id)path removalSpec:(id)spec completionHandler:(id)handler
{
  pathCopy = path;
  specCopy = spec;
  handlerCopy = handler;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = specCopy;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    selfCopy = self;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v34 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v33 + 1) + 8 * v15);
      v17 = [v11 objectForKeyedSubscript:v16];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (![v16 validateGSName:0])
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v18 = sub_10001532C(v17);

      if (!v18)
      {
        goto LABEL_18;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
        self = selfCopy;
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

LABEL_18:
    v25 = [NSString stringWithFormat:@"Invalid removal spec"];
    v26 = sub_100003164();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_100028B4C();
    }

    v23 = sub_10000F0F8(105, v25, 0);

    v24 = sub_100003164();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

LABEL_21:
    sub_10002949C();
    goto LABEL_22;
  }

LABEL_12:

  library = [pathCopy library];
  isReadOnly = [library isReadOnly];

  if (!isReadOnly)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000186B4;
    v28[3] = &unk_100041490;
    v32 = handlerCopy;
    v29 = v11;
    v30 = pathCopy;
    selfCopy2 = self;
    [v30 performOnResolvedPath:v28];

    v23 = v32;
    goto LABEL_23;
  }

  v21 = [NSString stringWithFormat:@"storage is read-only"];
  v22 = sub_100003164();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_1000284F8();
  }

  v23 = sub_10000F0F8(111, v21, 0);

  v24 = sub_100003164();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_21;
  }

LABEL_22:

  (*(handlerCopy + 2))(handlerCopy, 0, v23);
LABEL_23:
}

- (void)removeAdditionsInStorage:(int64_t)storage removalSpec:(id)spec completionHandler:(id)handler
{
  specCopy = spec;
  handlerCopy = handler;
  v10 = sub_100003164();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000296A8();
  }

  v14 = 0;
  v11 = [(GSClient *)self _getCachedVolPath:storage error:&v14];
  v12 = v14;
  if (v11)
  {
    [(GSClient *)self _removeAdditionsInVolPath:v11 removalSpec:specCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = sub_100003164();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100029724();
    }

    handlerCopy[2](handlerCopy, 0, v12);
  }
}

- (void)removeAdditionsUnderPath:(id)path additionsList:(id)list completionHandler:(id)handler
{
  pathCopy = path;
  listCopy = list;
  handlerCopy = handler;
  v11 = sub_100003164();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000297A4();
  }

  v12 = [GSRemoveAdditionSpec calculateSpecForAdditionRemovalUnderPath:listCopy];
  if (v12)
  {
    v31 = 0;
    v13 = [(GSClient *)self _volPathFromPath:pathCopy error:&v31];
    v14 = v31;
    if (v13)
    {
      library = [v13 library];
      isReadOnly = [library isReadOnly];

      if (isReadOnly)
      {
        v17 = [NSString stringWithFormat:@"storage is read-only"];
        v18 = sub_100003164();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_1000284F8();
        }

        v19 = sub_10000F0F8(111, v17, 0);

        v20 = sub_100003164();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_100029824();
        }

        handlerCopy[2](handlerCopy, 0, v19);
        v14 = v19;
      }

      else
      {
        library2 = [v13 library];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10001902C;
        v26[3] = &unk_1000414B8;
        v27 = v12;
        v28 = v13;
        selfCopy = self;
        v30 = handlerCopy;
        [library2 dispatchSync:v26];
      }
    }

    else
    {
      v24 = sub_100003164();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100029824();
      }

      handlerCopy[2](handlerCopy, 0, v14);
    }
  }

  else
  {
    v21 = [NSString stringWithFormat:@"Invalid removal spec"];
    v22 = sub_100003164();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100028B4C();
    }

    v14 = sub_10000F0F8(105, v21, 0);

    v23 = sub_100003164();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100029824();
    }

    handlerCopy[2](handlerCopy, 0, v14);
  }
}

- (int)importCookieFileDescriptorForVolumeURL:(id)l forWriting:(BOOL)writing error:(id *)error
{
  writingCopy = writing;
  lCopy = l;
  if (realpath_DARWIN_EXTSN([l fileSystemRepresentation], v60))
  {
    v10 = [NSString stringWithUTF8String:v60];
    v11 = [NSURL fileURLWithPath:v10 isDirectory:1];

    if (writingCopy)
    {
      v12 = 536871430;
    }

    else
    {
      v12 = 536870916;
    }

    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100019CD0;
    v57[3] = &unk_1000414E0;
    if (writingCopy)
    {
      v13 = "file-write-data";
    }

    else
    {
      v13 = "file-read-data";
    }

    v57[4] = self;
    v57[5] = v13;
    v14 = objc_retainBlock(v57);
    memset(&v59, 0, 512);
    if (!statfs(v60, &v59) && (v59.f_flags & 0x40000000) != 0)
    {
      v35 = [v11 URLByAppendingPathComponent:@".DocumentRevisions-V100" isDirectory:1];
      v21 = [v35 URLByAppendingPathComponent:@"fpfs_import_cookie" isDirectory:0];

      if ((v14[2])(v14, v21))
      {
        v22 = open([v21 fileSystemRepresentation], v12, 384);
        if (v22 < 0)
        {
          v36 = sub_100003164();
          if (os_log_type_enabled(v36, 0x90u))
          {
            sub_100029928();
          }

          if (error)
          {
            v37 = [NSString stringWithFormat:@"Invalid volume URL"];
            v38 = sub_100003164();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              sub_100027DCC();
            }

            v39 = sub_10000F0F8(104, v37, 0);

            v40 = v39;
            *error = v39;
          }
        }

        goto LABEL_88;
      }

      if (error)
      {
        *error = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:0];
      }
    }

    else
    {
      memset(&v56, 0, sizeof(v56));
      if ((lstat(v60, &v56) & 0x80000000) == 0)
      {
        v15 = [GSStorageManager existingLibraryForDevice:v56.st_dev];
        if (!v15 && writingCopy)
        {
          v16 = sub_100003164();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            sub_1000299B0(&v56);
          }

          v55 = 0;
          v15 = [GSStorageManager createLibraryForDevice:v56.st_dev error:&v55];
          v17 = v55;
          if (v17)
          {
            v18 = sub_100003164();
            if (os_log_type_enabled(v18, 0x90u))
            {
              sub_100029A24();
            }
          }
        }

        if (v15)
        {
          libraryRoot = [v15 libraryRoot];
          v20 = [NSURL fileURLWithPath:libraryRoot isDirectory:1];

          v21 = [v20 URLByAppendingPathComponent:@"fpfs_import_cookie" isDirectory:0];
          if (v21)
          {
            if ((v14[2])(v14, v21))
            {
              v22 = open([v21 fileSystemRepresentation], v12, 384);
              if ((v22 & 0x80000000) == 0)
              {
                goto LABEL_79;
              }

              v23 = sub_100003164();
              if (os_log_type_enabled(v23, 0x90u))
              {
                sub_100029A94();
              }

              if (!error)
              {
                goto LABEL_79;
              }

              v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
              goto LABEL_64;
            }

            if (error)
            {
              v24 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:0];
LABEL_63:
              v22 = -1;
LABEL_64:
              v44 = v24;
              *error = v24;
LABEL_79:

LABEL_87:
              goto LABEL_88;
            }
          }

          else
          {
            v41 = sub_100003164();
            if (os_log_type_enabled(v41, 0x90u))
            {
              sub_100029B28();
            }

            if (error)
            {
              v42 = [NSString stringWithFormat:@"Can't create cookie URL"];
              v43 = sub_100003164();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                sub_100027C60();
              }

              v24 = sub_10000F0F8(101, v42, 0);

              goto LABEL_63;
            }
          }

          v22 = -1;
          goto LABEL_79;
        }

        v30 = sub_100003164();
        if (os_log_type_enabled(v30, 0x90u))
        {
          sub_100029B64(&v56);
        }

        if (writingCopy)
        {
          if (error)
          {
            v31 = [NSString stringWithFormat:@"No storage in volume"];
            v32 = sub_100003164();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              sub_1000256F4();
            }

            v33 = sub_10000F0F8(102, v31, 0);

            v34 = v33;
            v21 = 0;
            *error = v33;
          }

          else
          {
            v21 = 0;
          }

          v22 = -1;
          goto LABEL_87;
        }

        v58 = NSURLVolumeURLKey;
        v45 = [NSArray arrayWithObjects:&v58 count:1];
        v54 = 0;
        v46 = [v11 resourceValuesForKeys:v45 error:&v54];
        v47 = v54;

        if (v47)
        {
          v48 = sub_100003164();
          if (os_log_type_enabled(v48, 0x90u))
          {
            sub_100029BD0();
          }
        }

        v49 = [v46 objectForKeyedSubscript:NSURLVolumeURLKey];
        v50 = [v49 URLByAppendingPathComponent:@".DocumentRevisions-V100" isDirectory:1];
        v21 = [v50 URLByAppendingPathComponent:@"fpfs_import_cookie" isDirectory:0];

        if ((v14[2])(v14, v21))
        {
          v22 = open([v21 fileSystemRepresentation], 536870916, 384);
          if ((v22 & 0x80000000) == 0)
          {
            goto LABEL_86;
          }

          v51 = sub_100003164();
          if (os_log_type_enabled(v51, 0x90u))
          {
            sub_100029C40();
          }

          if (!error)
          {
            goto LABEL_86;
          }

          v52 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
        }

        else
        {
          if (!error)
          {
            v22 = -1;
            goto LABEL_86;
          }

          v52 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:0];
          v22 = -1;
        }

        *error = v52;
LABEL_86:

        goto LABEL_87;
      }

      v25 = sub_100003164();
      if (os_log_type_enabled(v25, 0x90u))
      {
        sub_100029CC8();
      }

      if (error)
      {
        v26 = [NSString stringWithFormat:@"Invalid volume"];
        v27 = sub_100003164();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          sub_100027DCC();
        }

        v28 = sub_10000F0F8(104, v26, 0);

        v29 = v28;
        v21 = 0;
        *error = v28;
      }

      else
      {
        v21 = 0;
      }
    }

    v22 = -1;
LABEL_88:

    goto LABEL_89;
  }

  if (error)
  {
    *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
  }

  v11 = sub_100003164();
  if (os_log_type_enabled(v11, 0x90u))
  {
    sub_100029D5C();
  }

  v22 = -1;
LABEL_89:

  return v22;
}

- (void)storeImportCookieData:(id)data forVolumeURL:(id)l reply:(id)reply
{
  dataCopy = data;
  lCopy = l;
  replyCopy = reply;
  v11 = sub_100003164();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100029DD4(dataCopy, lCopy);
  }

  if (lCopy)
  {
    v51 = 0;
    v12 = [(GSClient *)self importCookieFileDescriptorForVolumeURL:lCopy forWriting:1 error:&v51];
    v13 = v51;
    if ((v12 & 0x80000000) != 0)
    {
      v21 = sub_100003164();
      if (os_log_type_enabled(v21, 0x90u))
      {
        sub_10002A188();
      }

      if (!v13)
      {
        v22 = [NSString stringWithFormat:@"Unknown error. See logs for more details."];
        v23 = sub_100003164();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_100027C60();
        }

        v13 = sub_10000F0F8(101, v22, 0);
      }

      v24 = sub_100003164();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_10002A1F8();
      }

      replyCopy[2](replyCopy, v13);
    }

    else
    {
      v14 = [[NSFileHandle alloc] initWithFileDescriptor:v12 closeOnDealloc:1];
      if (dataCopy)
      {
        v45 = 0;
        v46 = &v45;
        v47 = 0x3032000000;
        v48 = sub_1000188F8;
        v49 = sub_100018908;
        v50 = 0;
        v41 = 0;
        v42 = &v41;
        v43 = 0x2020000000;
        v44 = 0;
        v15 = sub_10001B000();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001A3B4;
        block[3] = &unk_100041508;
        v39 = &v41;
        v37 = v14;
        v38 = dataCopy;
        v40 = &v45;
        dispatch_sync(v15, block);

        if (v42[3])
        {
          v16 = sub_100003164();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            sub_100029F9C();
          }

          v17 = sub_100003164();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_100029FD8();
          }

          v18 = 0;
        }

        else
        {
          v30 = sub_100003164();
          if (os_log_type_enabled(v30, 0x90u))
          {
            sub_100029EA8(&v46);
          }

          v31 = sub_100003164();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            sub_100029F1C(&v46);
          }

          v18 = v46[5];
        }

        replyCopy[2](replyCopy, v18);

        _Block_object_dispose(&v41, 8);
      }

      else
      {
        v25 = sub_100003164();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_10002A058();
        }

        v45 = 0;
        v46 = &v45;
        v47 = 0x3032000000;
        v48 = sub_1000188F8;
        v49 = sub_100018908;
        v50 = 0;
        v26 = sub_10001B000();
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10001A458;
        v33[3] = &unk_100041530;
        v34 = v14;
        v35 = &v45;
        dispatch_sync(v26, v33);

        if (v46[5])
        {
          v27 = sub_100003164();
          if (os_log_type_enabled(v27, 0x90u))
          {
            sub_10002A094(&v46);
          }

          v28 = sub_100003164();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            sub_100029F1C(&v46);
          }

          v29 = v46[5];
        }

        else
        {
          v32 = sub_100003164();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            sub_10002A108();
          }

          v29 = 0;
        }

        replyCopy[2](replyCopy, v29);
      }

      _Block_object_dispose(&v45, 8);
    }
  }

  else
  {
    v19 = sub_100003164();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A274();
    }

    v20 = sub_100003164();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_100029FD8();
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (void)readImportCookieDataForVolumeAtURL:(id)l reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  v8 = sub_100003164();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A2B0(lCopy);
  }

  if (lCopy)
  {
    v40 = 0;
    v9 = [(GSClient *)self importCookieFileDescriptorForVolumeURL:lCopy forWriting:0 error:&v40];
    v10 = v40;
    v11 = v10;
    if ((v9 & 0x80000000) != 0)
    {
      if ([v10 code] == 2 && (objc_msgSend(v11, "domain"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", NSPOSIXErrorDomain), v20, v21))
      {
        v22 = sub_100003164();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_10002A510();
        }

        (*(replyCopy + 2))(replyCopy, 0, 0, 0);
      }

      else
      {
        v23 = sub_100003164();
        if (os_log_type_enabled(v23, 0x90u))
        {
          sub_10002A188();
        }

        if (!v11)
        {
          v24 = [NSString stringWithFormat:@"Unknown error. See logs for more details."];
          v25 = sub_100003164();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            sub_100027C60();
          }

          v11 = sub_10000F0F8(101, v24, 0);
        }

        v26 = sub_100003164();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          sub_10002A490();
        }

        (*(replyCopy + 2))(replyCopy, 0, 0, v11);
      }
    }

    else
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = sub_1000188F8;
      v38 = sub_100018908;
      v39 = 0;
      v31 = 0;
      v32[0] = &v31;
      v32[1] = 0x3032000000;
      v32[2] = sub_1000188F8;
      v32[3] = sub_100018908;
      v33 = 0;
      v12 = sub_10001B000();
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10001A988;
      v29[3] = &unk_100041558;
      v30 = v9;
      v29[4] = &v34;
      v29[5] = &v31;
      dispatch_sync(v12, v29);

      if (v35[5])
      {
        v13 = sub_100003164();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = v35[5];
          v15 = +[NSDate distantPast];
          sub_10002A344(v14, v15, buf, v13);
        }

        v16 = v35[5];
        v17 = +[NSDate distantPast];
        (*(replyCopy + 2))(replyCopy, v16, v17, 0);
      }

      else
      {
        v27 = sub_100003164();
        if (os_log_type_enabled(v27, 0x90u))
        {
          sub_10002A3C4();
        }

        v28 = sub_100003164();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_10002A400(v32);
        }

        (*(replyCopy + 2))(replyCopy, 0, 0, *(v32[0] + 40));
      }

      _Block_object_dispose(&v31, 8);

      _Block_object_dispose(&v34, 8);
    }
  }

  else
  {
    v18 = sub_100003164();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A274();
    }

    v19 = sub_100003164();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A510();
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, 0);
  }
}

- (void)deleteImportCookieDataForVolumeAtURL:(id)l reply:(id)reply
{
  replyCopy = reply;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 removeItemAtPath:@"/var/mobile/.DocumentRevisions-V100/fpfs_import_cookie" error:0];

  v7 = sub_100003164();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A594();
  }

  replyCopy[2](replyCopy, v6);
}

- (void)setAdditionConflictResolvedInStorage:(int64_t)storage nameSpace:(id)space additionName:(id)name value:(BOOL)value reply:(id)reply
{
  valueCopy = value;
  spaceCopy = space;
  nameCopy = name;
  replyCopy = reply;
  v15 = sub_100003164();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v38 = "[GSClient setAdditionConflictResolvedInStorage:nameSpace:additionName:value:reply:]";
    v39 = 2048;
    storageCopy = storage;
    v41 = 2112;
    v42 = spaceCopy;
    v43 = 2112;
    v44 = nameCopy;
    v45 = 1024;
    v46 = valueCopy;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %hhd)", buf, 0x30u);
  }

  v36 = 0;
  v16 = [nameCopy validateGSName:&v36];
  v17 = v36;
  if (!v16)
  {
    goto LABEL_13;
  }

  v35 = 0;
  v18 = [spaceCopy validateGSName:&v35];
  v19 = v35;

  if ((v18 & 1) == 0)
  {
    v17 = v19;
LABEL_13:
    v27 = sub_100003164();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A618();
    }

    goto LABEL_15;
  }

  v34 = 0;
  v20 = [(GSClient *)self _getCachedVolPath:storage error:&v34];
  v17 = v34;

  if (!v20)
  {
    v27 = sub_100003164();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A618();
    }

LABEL_15:

    replyCopy[2](replyCopy, 0, v17);
    goto LABEL_16;
  }

  library = [v20 library];
  isReadOnly = [library isReadOnly];

  if (isReadOnly)
  {
    v23 = [NSString stringWithFormat:@"storage is read-only"];
    v24 = sub_100003164();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_1000284F8();
    }

    v25 = sub_10000F0F8(111, v23, 0);

    v26 = sub_100003164();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A618();
    }

    replyCopy[2](replyCopy, 0, v25);
    v17 = v25;
  }

  else
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10001AE60;
    v28[3] = &unk_100041580;
    v29 = nameCopy;
    v30 = spaceCopy;
    selfCopy = self;
    v33 = valueCopy;
    v32 = replyCopy;
    [v20 performOnResolvedPath:v28];
  }

LABEL_16:
}

@end