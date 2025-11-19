@interface GSClient
- (BOOL)_validateToken:(id)a3 error:(id *)a4;
- (GSClient)initWithConnection:(id)a3;
- (id)_getCachedVolPath:(unint64_t)a3 error:(id *)a4;
- (id)_volPathFromPath:(id)a3 error:(id *)a4;
- (int)importCookieFileDescriptorForVolumeURL:(id)a3 forWriting:(BOOL)a4 error:(id *)a5;
- (void)_removeAdditionsInVolPath:(id)a3 removalSpec:(id)a4 completionHandler:(id)a5;
- (void)_stagingPrefixCleanup:(id)a3;
- (void)checkItemAtURLValidInsidePermanentStorage:(id)a3 reply:(id)a4;
- (void)createAdditionInStorage:(int64_t)a3 stagedFileDescriptor:(id)a4 creationInfo:(id)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)deleteImportCookieDataForVolumeAtURL:(id)a3 reply:(id)a4;
- (void)getAdditionInStorage:(int64_t)a3 andNameSpace:(id)a4 named:(id)a5 completionHandler:(id)a6;
- (void)getAdditionsInStorage:(int64_t)a3 andNameSpace:(id)a4 named:(id)a5 completionHandler:(id)a6;
- (void)hintDocIDCreationForFileHandle:(id)a3;
- (void)invalidate;
- (void)isPermanentStorageSupportedForHandle:(id)a3 reply:(id)a4;
- (void)listAdditionsOfStorage:(int64_t)a3 nameSpace:(id)a4 withOptions:(unint64_t)a5 withoutOptions:(unint64_t)a6 andEnumerationState:(id)a7 completionHandler:(id)a8;
- (void)listAdditionsUnderPath:(id)a3 withNameSpace:(id)a4 withOptions:(unint64_t)a5 withoutOptions:(unint64_t)a6 andEnumerationState:(id)a7 completionHandler:(id)a8;
- (void)mergeAdditionInfoValueInStorage:(int64_t)a3 nameSpace:(id)a4 additionName:(id)a5 value:(id)a6 reply:(id)a7;
- (void)permanentStorageClose:(unint64_t)a3;
- (void)permanentStorageIDForHandle:(id)a3 reply:(id)a4;
- (void)permanentStorageOpenForHandle:(id)a3 withRemoteID:(unint64_t)a4 andDocumentID:(id)a5 reply:(id)a6;
- (void)permanentStoragePrefixForHandle:(id)a3 reply:(id)a4;
- (void)readImportCookieDataForVolumeAtURL:(id)a3 reply:(id)a4;
- (void)removeAdditionsInStorage:(int64_t)a3 removalSpec:(id)a4 completionHandler:(id)a5;
- (void)removeAdditionsUnderPath:(id)a3 additionsList:(id)a4 completionHandler:(id)a5;
- (void)requestFreeSpace:(unint64_t)a3 forVolume:(id)a4 reply:(id)a5;
- (void)setAdditionConflictResolvedInStorage:(int64_t)a3 nameSpace:(id)a4 additionName:(id)a5 value:(BOOL)a6 reply:(id)a7;
- (void)setAdditionDisplayNameInStorage:(int64_t)a3 nameSpace:(id)a4 additionName:(id)a5 value:(id)a6 reply:(id)a7;
- (void)setAdditionNameSpaceInStorage:(int64_t)a3 nameSpace:(id)a4 additionName:(id)a5 value:(id)a6 completionHandler:(id)a7;
- (void)setAdditionOptionsInStorage:(int64_t)a3 nameSpace:(id)a4 additionName:(id)a5 value:(unint64_t)a6 reply:(id)a7;
- (void)stagingPrefixRelinquish:(id)a3;
- (void)storeImportCookieData:(id)a3 forVolumeURL:(id)a4 reply:(id)a5;
@end

@implementation GSClient

- (GSClient)initWithConnection:(id)a3
{
  v4 = a3;
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

    *v12 = [v4 processIdentifier];
    *&v12[4] = [v4 effectiveUserIdentifier];
    *&v12[8] = [v4 effectiveGroupIdentifier];
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(&v12[12], 0, 32);
    }

    *(v5 + 24) = *v12;
    *(v5 + 40) = *&v12[16];
    *(v5 + 52) = *&v12[28];
    v10 = [v4 valueForEntitlement:@"com.apple.fileprovider.import-cookie"];
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

- (id)_getCachedVolPath:(unint64_t)a3 error:(id *)a4
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
    v11 = [NSString stringWithFormat:@"Instance id %llu does not exist for %@\n", a3, self];
    v12 = sub_100003164();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100027C60();
    }

    if (a4)
    {
      *a4 = sub_10000F0F8(101, v11, 0);
    }
  }

  return v9;
}

- (void)requestFreeSpace:(unint64_t)a3 forVolume:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  memset(&v25, 0, sizeof(v25));
  v10 = sub_100003164();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100027CD4();
  }

  if (![v8 isFileURL] || lstat(objc_msgSend(v8, "fileSystemRepresentation"), &v25) < 0)
  {
    v14 = [NSString stringWithFormat:@"invalid path [%@]", v8];
    v15 = sub_100003164();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100027DCC();
    }

    v13 = sub_10000F0F8(104, v14, 0);

    v16 = sub_100003164();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100027D50();
    }

    v9[2](v9, 0, v13);
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
      v24 = a3;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000133A0;
      v20[3] = &unk_100041298;
      v21 = v9;
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

      v9[2](v9, 0, v13);
    }
  }
}

- (void)hintDocIDCreationForFileHandle:(id)a3
{
  v3 = a3;
  v11 = 0;
  v4 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [v3 fileDescriptor], &v11);
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

- (void)isPermanentStorageSupportedForHandle:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003164();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000281C0();
  }

  v17 = 0;
  v8 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [v5 fileDescriptor], &v17);
  v9 = v17;
  if (v8)
  {
    if ([v8 isInIgnoredLocation])
    {
      v10 = [v8 path];
      v11 = [NSString stringWithFormat:@"%@ is in an ignored location", v10];

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

      v6[2](v6, 0, v13);
      v9 = v13;
    }

    else
    {
      v16 = sub_100003164();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_10002823C();
      }

      v6[2](v6, 1, 0);
    }
  }

  else
  {
    v15 = sub_100003164();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1000282C8();
    }

    v6[2](v6, 0, v9);
  }
}

- (void)_stagingPrefixCleanup:(id)a3
{
  v3 = a3;
  v4 = open([v3 fileSystemRepresentation], 260);
  if ((v4 & 0x80000000) != 0)
  {
    v7 = sub_100003164();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v9 = 138412290;
    v10 = v3;
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
    v10 = v3;
    goto LABEL_8;
  }

  v7 = v6;
  close(v5);
  v8 = +[NSFileManager defaultManager];
  [v8 removeItemAtPath:v3 error:0];

LABEL_9:
}

- (void)stagingPrefixRelinquish:(id)a3
{
  v4 = a3;
  v5 = sub_100003164();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100028568();
  }

  if ([(NSMutableSet *)self->_stagingPrefixes containsObject:v4])
  {
    [(NSMutableSet *)self->_stagingPrefixes removeObject:v4];
    [(GSClient *)self _stagingPrefixCleanup:v4];
  }
}

- (void)permanentStoragePrefixForHandle:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003164();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000285E4();
  }

  v19 = 0;
  v9 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [v6 fileDescriptor], &v19);
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
    v16 = self;
    v17 = v7;
    [v15 performOnResolvedPath:v14];
  }

  else
  {
    v13 = sub_100003164();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100028660();
    }

    (*(v7 + 2))(v7, 0, v12);
  }
}

- (void)permanentStorageIDForHandle:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003164();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100028760();
  }

  v16 = 0;
  v8 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [v5 fileDescriptor], &v16);
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
    v14 = v6;
    [v8 performOnResolvedPath:v13];
  }

  else
  {
    v12 = sub_100003164();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000287DC();
    }

    (*(v6 + 2))(v6, 0, v11);
  }
}

- (void)permanentStorageOpenForHandle:(id)a3 withRemoteID:(unint64_t)a4 andDocumentID:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = sub_100003164();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v33 = "[GSClient permanentStorageOpenForHandle:withRemoteID:andDocumentID:reply:]";
    v34 = 2112;
    v35 = v10;
    v36 = 2048;
    v37 = a4;
    v38 = 2112;
    v39 = v11;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%@, %lld, %@)", buf, 0x2Au);
  }

  storageVolPaths = self->_storageVolPaths;
  v15 = [NSNumber numberWithUnsignedLongLong:a4];
  v16 = [(NSMutableDictionary *)storageVolPaths objectForKeyedSubscript:v15];

  if (v16)
  {
    v17 = [NSString stringWithFormat:@"Instance %lld already exists", a4];
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

    (*(v12 + 2))(v12, 0, 0, 0, v19);
    v21 = 0;
  }

  else
  {
    v31 = 0;
    v21 = +[GSVolPath volPathOnVolume:withFD:error:](GSVolPath, "volPathOnVolume:withFD:error:", 0, [v10 fileDescriptor], &v31);
    v22 = v31;
    v30 = v22;
    v23 = [v21 isValidForCreds:0 documentIdentifier:v11 error:&v30];
    v19 = v30;

    if (v23)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100014820;
      v25[3] = &unk_100041350;
      v21 = v21;
      v26 = v21;
      v27 = self;
      v28 = v12;
      v29 = a4;
      [v21 performOnResolvedPath:v25];
    }

    else
    {
      v24 = sub_100003164();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100028954();
      }

      (*(v12 + 2))(v12, 0, 0, 0, v19);
    }
  }
}

- (void)permanentStorageClose:(unint64_t)a3
{
  v5 = sub_100003164();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000289D4();
  }

  if ([(NSMutableDictionary *)self->_storageVolPaths count])
  {
    storageVolPaths = self->_storageVolPaths;
    v7 = [NSNumber numberWithUnsignedLongLong:a3];
    [(NSMutableDictionary *)storageVolPaths removeObjectForKey:v7];

    if (![(NSMutableDictionary *)self->_storageVolPaths count])
    {
      openHandleTx = self->_openHandleTx;
      self->_openHandleTx = 0;
    }
  }
}

- (void)getAdditionInStorage:(int64_t)a3 andNameSpace:(id)a4 named:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_100003164();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v30 = "[GSClient getAdditionInStorage:andNameSpace:named:completionHandler:]";
    v31 = 2048;
    v32 = a3;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@)", buf, 0x2Au);
  }

  v28 = 0;
  v14 = [(GSClient *)self _getCachedVolPath:a3 error:&v28];
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
  v16 = [v11 validateGSName:&v27];
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

    (*(v12 + 2))(v12, 0, 0, 0, v15);
    goto LABEL_13;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100014E64;
  v21[3] = &unk_100041378;
  v22 = v14;
  v23 = v10;
  v24 = v11;
  v25 = self;
  v26 = v12;
  [v22 performOnResolvedPath:v21];

  v15 = v17;
LABEL_13:
}

- (void)getAdditionsInStorage:(int64_t)a3 andNameSpace:(id)a4 named:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_100003164();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v29 = "[GSClient getAdditionsInStorage:andNameSpace:named:completionHandler:]";
    v30 = 2048;
    v31 = a3;
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@)", buf, 0x2Au);
  }

  v27 = 0;
  v14 = [(GSClient *)self _getCachedVolPath:a3 error:&v27];
  v15 = v27;
  if (v14)
  {
    if (sub_10001532C(v11))
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100015464;
      v21[3] = &unk_100041378;
      v22 = v11;
      v23 = v14;
      v24 = v10;
      v25 = self;
      v26 = v12;
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

      (*(v12 + 2))(v12, 0, 0, 0, v19);
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

    (*(v12 + 2))(v12, 0, 0, 0, v15);
  }
}

- (BOOL)_validateToken:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 count];
    if (!a4 || v6 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a4)
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
  *a4 = v9;
LABEL_9:
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [v5 copy];
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
          if (a4)
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
            *a4 = v20;
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

- (void)listAdditionsOfStorage:(int64_t)a3 nameSpace:(id)a4 withOptions:(unint64_t)a5 withoutOptions:(unint64_t)a6 andEnumerationState:(id)a7 completionHandler:(id)a8
{
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = sub_100003164();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v41 = "[GSClient listAdditionsOfStorage:nameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:]";
    v42 = 2048;
    v43 = a3;
    v44 = 2112;
    v45 = v14;
    v46 = 2048;
    v47 = a5;
    v48 = 2048;
    v49 = a6;
    v50 = 2112;
    v51 = v15;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %llx, %llx, %@)", buf, 0x3Eu);
  }

  if (v15)
  {
    v39 = 0;
    v18 = [(GSClient *)self _validateToken:v15 error:&v39];
    v19 = v39;
    if ((v18 & 1) == 0)
    {
      v25 = sub_100003164();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_100028C44();
      }

      (*(v16 + 2))(v16, 0, 0, 0, 0, v19);
      goto LABEL_16;
    }

    v20 = [v15 mutableCopy];
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = v19;
  v38 = 0;
  v22 = [(GSClient *)self _getCachedVolPath:a3 error:&v38];
  v19 = v38;

  if (!v22)
  {
    v26 = sub_100003164();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_100028C44();
    }

    (*(v16 + 2))(v16, 0, 0, 0, 0, v19);
LABEL_16:
    v22 = 0;
    goto LABEL_20;
  }

  v37 = 0;
  v23 = [v14 validateGSName:&v37];
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
    v35 = a5;
    v36 = a6;
    v32 = v14;
    v33 = self;
    v34 = v16;
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

    (*(v16 + 2))(v16, 0, 0, 0, 0, v28);
  }

LABEL_20:
}

- (void)checkItemAtURLValidInsidePermanentStorage:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [a3 isFileURL];
  v7 = sub_100003164();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      sub_100028D70();
    }

    v5[2](v5, 1, 0);
  }

  else
  {
    if (v8)
    {
      sub_100028CC4(NSURLErrorDomain);
    }

    v9 = [NSError errorWithDomain:NSURLErrorDomain code:-1002 userInfo:0];
    v5[2](v5, 0, v9);

    v5 = v9;
  }
}

- (void)setAdditionOptionsInStorage:(int64_t)a3 nameSpace:(id)a4 additionName:(id)a5 value:(unint64_t)a6 reply:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = sub_100003164();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v40 = "[GSClient setAdditionOptionsInStorage:nameSpace:additionName:value:reply:]";
    v41 = 2048;
    v42 = a3;
    v43 = 2112;
    v44 = v12;
    v45 = 2112;
    v46 = v13;
    v47 = 2048;
    v48 = a6;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %llx)", buf, 0x34u);
  }

  if ((a6 & 0xFFFFFFFFFFFFFFE1) != 1)
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
  v16 = [v13 validateGSName:&v38];
  v17 = v38;
  if (!v16)
  {
    goto LABEL_18;
  }

  v37 = 0;
  v18 = [v12 validateGSName:&v37];
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
  v20 = [(GSClient *)self _getCachedVolPath:a3 error:&v36];
  v17 = v36;

  if (!v20)
  {
    v29 = sub_100003164();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100028E74();
    }

LABEL_20:

    v14[2](v14, 0, v17);
    goto LABEL_21;
  }

  v21 = [v20 library];
  v22 = [v21 isReadOnly];

  if (v22)
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

    v14[2](v14, 0, v25);
    v17 = v25;
  }

  else
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100016404;
    v30[3] = &unk_1000413C8;
    v31 = v13;
    v32 = v12;
    v33 = self;
    v35 = a6 & 0xFFFFFFFFFFFFFFEDLL;
    v34 = v14;
    [v20 performOnResolvedPath:v30];
  }

LABEL_21:
}

- (void)mergeAdditionInfoValueInStorage:(int64_t)a3 nameSpace:(id)a4 additionName:(id)a5 value:(id)a6 reply:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = sub_100003164();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v46 = "[GSClient mergeAdditionInfoValueInStorage:nameSpace:additionName:value:reply:]";
    v47 = 2048;
    v48 = a3;
    v49 = 2112;
    v50 = v12;
    v51 = 2112;
    v52 = v13;
    v53 = 2112;
    v54 = v14;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %@)", buf, 0x34u);
  }

  v44 = 0;
  v17 = [v13 validateGSName:&v44];
  v18 = v44;
  if (!v17)
  {
    goto LABEL_13;
  }

  v43 = 0;
  v19 = [v12 validateGSName:&v43];
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
  v21 = [(GSClient *)self _getCachedVolPath:a3 error:&v42];
  v18 = v42;

  if (!v21)
  {
    v29 = sub_100003164();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100028F78();
    }

LABEL_15:

    v15[2](v15, 0, v18);
    v28 = 0;
    v21 = 0;
    goto LABEL_16;
  }

  v22 = [v21 library];
  v23 = [v22 isReadOnly];

  if (v23)
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

    v15[2](v15, 0, v26);
    v28 = 0;
    v18 = v26;
  }

  else
  {
    v41 = 0;
    v28 = [NSPropertyListSerialization propertyListWithData:v14 options:0 format:0 error:&v41];
    v30 = v41;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100016A1C;
      v34[3] = &unk_1000413F0;
      v35 = v13;
      v36 = v12;
      v37 = self;
      v21 = v21;
      v38 = v21;
      v28 = v28;
      v39 = v28;
      v40 = v15;
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

      v15[2](v15, 0, v18);
    }
  }

LABEL_16:
}

- (void)setAdditionDisplayNameInStorage:(int64_t)a3 nameSpace:(id)a4 additionName:(id)a5 value:(id)a6 reply:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = sub_100003164();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v43 = "[GSClient setAdditionDisplayNameInStorage:nameSpace:additionName:value:reply:]";
    v44 = 2048;
    v45 = a3;
    v46 = 2112;
    v47 = v12;
    v48 = 2112;
    v49 = v13;
    v50 = 2112;
    v51 = v14;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %@)", buf, 0x34u);
  }

  v41 = 0;
  v17 = [v13 validateGSName:&v41];
  v18 = v41;
  if (!v17)
  {
    goto LABEL_15;
  }

  v40 = 0;
  v19 = [v14 validateGSName:&v40];
  v20 = v40;

  if (!v19)
  {
    v18 = v20;
    goto LABEL_15;
  }

  v39 = 0;
  v21 = [v12 validateGSName:&v39];
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
  v23 = [(GSClient *)self _getCachedVolPath:a3 error:&v38];
  v18 = v38;

  if (!v23)
  {
    v30 = sub_100003164();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_10002907C();
    }

LABEL_17:

    v15[2](v15, 0, v18);
    v23 = 0;
    goto LABEL_18;
  }

  v24 = [v23 library];
  v25 = [v24 isReadOnly];

  if (v25)
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

    v15[2](v15, 0, v28);
    v18 = v28;
  }

  else
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100016F70;
    v31[3] = &unk_1000413F0;
    v32 = v13;
    v33 = v12;
    v34 = self;
    v23 = v23;
    v35 = v23;
    v36 = v14;
    v37 = v15;
    [v23 performOnResolvedPath:v31];
  }

LABEL_18:
}

- (void)setAdditionNameSpaceInStorage:(int64_t)a3 nameSpace:(id)a4 additionName:(id)a5 value:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = sub_100003164();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v43 = "[GSClient setAdditionNameSpaceInStorage:nameSpace:additionName:value:completionHandler:]";
    v44 = 2048;
    v45 = a3;
    v46 = 2112;
    v47 = v12;
    v48 = 2112;
    v49 = v13;
    v50 = 2112;
    v51 = v14;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %@)", buf, 0x34u);
  }

  v41 = 0;
  v17 = [v13 validateGSName:&v41];
  v18 = v41;
  if (!v17)
  {
    goto LABEL_15;
  }

  v40 = 0;
  v19 = [v12 validateGSName:&v40];
  v20 = v40;

  if (!v19)
  {
    v18 = v20;
    goto LABEL_15;
  }

  v39 = 0;
  v21 = [v14 validateGSName:&v39];
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
  v23 = [(GSClient *)self _getCachedVolPath:a3 error:&v38];
  v18 = v38;

  if (!v23)
  {
    v30 = sub_100003164();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_100029180();
    }

LABEL_17:

    v15[2](v15, 0, v18);
    v23 = 0;
    goto LABEL_18;
  }

  v24 = [v23 library];
  v25 = [v24 isReadOnly];

  if (v25)
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

    v15[2](v15, 0, v28);
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
    v33 = v12;
    v34 = v13;
    v35 = v14;
    v36 = self;
    v37 = v15;
    [v23 performOnResolvedPath:v31];
  }

LABEL_18:
}

- (id)_volPathFromPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  memset(&v21, 0, sizeof(v21));
  if (lstat([v5 fileSystemRepresentation], &v21))
  {
    if (a4)
    {
      v6 = *__error();
      v7 = __error();
      v8 = [NSString stringWithFormat:@"lstat(%@) failed error %d (%s)\n", v5, v6, strerror(*v7)];;
      v9 = sub_100003164();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000288E4();
      }

      v10 = sub_10000F0F8(101, v8, 0);

      v11 = v10;
      v12 = 0;
      *a4 = v10;
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
      v12 = [GSVolPath volPathOnVolume:v13 withPath:v5 error:&v20];
      v14 = v20;
      if (a4 && !v12)
      {
        v14 = v14;
        *a4 = v14;
      }
    }

    else if (a4)
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
      *a4 = v17;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)listAdditionsUnderPath:(id)a3 withNameSpace:(id)a4 withOptions:(unint64_t)a5 withoutOptions:(unint64_t)a6 andEnumerationState:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = sub_100003164();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v39 = "[GSClient listAdditionsUnderPath:withNameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:]";
    v40 = 2112;
    v41 = v14;
    v42 = 2112;
    v43 = v15;
    v44 = 2048;
    v45 = a5;
    v46 = 2048;
    v47 = a6;
    v48 = 2112;
    v49 = v16;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%@, %@, %llx, %llx, %@)", buf, 0x3Eu);
  }

  if (!v16)
  {
    v21 = 0;
    v20 = 0;
    goto LABEL_7;
  }

  v37 = 0;
  v19 = [(GSClient *)self _validateToken:v16 error:&v37];
  v20 = v37;
  if (v19)
  {
    v21 = [v16 mutableCopy];
LABEL_7:
    v22 = v20;
    v36 = v20;
    v23 = [(GSClient *)self _volPathFromPath:v14 error:&v36, v14];
    v20 = v36;

    if (v23)
    {
      v24 = [v23 library];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100017AD8;
      v28[3] = &unk_100041418;
      v29 = v21;
      v30 = v23;
      v34 = a5;
      v35 = a6;
      v31 = v15;
      v32 = self;
      v33 = v17;
      [v24 dispatchSync:v28];
    }

    else
    {
      v26 = sub_100003164();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_100029280();
      }

      (*(v17 + 2))(v17, 0, 0, v20);
    }

    v14 = v27;
    goto LABEL_16;
  }

  v25 = sub_100003164();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    sub_100029280();
  }

  (*(v17 + 2))(v17, 0, 0, v20);
LABEL_16:
}

- (void)createAdditionInStorage:(int64_t)a3 stagedFileDescriptor:(id)a4 creationInfo:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_100003164();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v44 = "[GSClient createAdditionInStorage:stagedFileDescriptor:creationInfo:completionHandler:]";
    v45 = 2048;
    v46 = a3;
    v47 = 2112;
    v48 = v10;
    v49 = 2112;
    v50 = v11;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@)", buf, 0x2Au);
  }

  if (fcntl([v10 fileDescriptor], 50, buf) < 0)
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
  if (fstat([v10 fileDescriptor], &v42) < 0)
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

    (*(v12 + 2))(v12, 0, 0, 0, v16);
    v14 = 0;
    v17 = 0;
    goto LABEL_31;
  }

  v14 = [NSString gs_stringWithFileSystemRepresentation:buf];
  v41 = 0;
  v15 = sub_1000119BC(v14, v11, &v41);
  v16 = v41;

  if (v15)
  {
    v40 = 0;
    v17 = [(GSClient *)self _getCachedVolPath:a3 error:&v40];
    v18 = v40;

    if (v17)
    {
      v19 = [v17 library];
      if ([v19 isReadOnly])
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

        (*(v12 + 2))(v12, 0, 0, 0, v16);
      }

      else
      {
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100018168;
        v32[3] = &unk_100041440;
        v33 = v19;
        v34 = v15;
        v39 = v42;
        v35 = v14;
        v36 = self;
        v37 = v17;
        v38 = v12;
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

      (*(v12 + 2))(v12, 0, 0, 0, v18);
      v17 = 0;
      v16 = v18;
    }

    v11 = v15;
  }

  else
  {
    v30 = sub_100003164();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_100029388();
    }

    (*(v12 + 2))(v12, 0, 0, 0, v16);
    v17 = 0;
    v11 = 0;
  }

LABEL_31:
}

- (void)_removeAdditionsInVolPath:(id)a3 removalSpec:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    v27 = self;
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
        self = v27;
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

  v19 = [v8 library];
  v20 = [v19 isReadOnly];

  if (!v20)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000186B4;
    v28[3] = &unk_100041490;
    v32 = v10;
    v29 = v11;
    v30 = v8;
    v31 = self;
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

  (*(v10 + 2))(v10, 0, v23);
LABEL_23:
}

- (void)removeAdditionsInStorage:(int64_t)a3 removalSpec:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100003164();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000296A8();
  }

  v14 = 0;
  v11 = [(GSClient *)self _getCachedVolPath:a3 error:&v14];
  v12 = v14;
  if (v11)
  {
    [(GSClient *)self _removeAdditionsInVolPath:v11 removalSpec:v8 completionHandler:v9];
  }

  else
  {
    v13 = sub_100003164();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100029724();
    }

    v9[2](v9, 0, v12);
  }
}

- (void)removeAdditionsUnderPath:(id)a3 additionsList:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100003164();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000297A4();
  }

  v12 = [GSRemoveAdditionSpec calculateSpecForAdditionRemovalUnderPath:v9];
  if (v12)
  {
    v31 = 0;
    v13 = [(GSClient *)self _volPathFromPath:v8 error:&v31];
    v14 = v31;
    if (v13)
    {
      v15 = [v13 library];
      v16 = [v15 isReadOnly];

      if (v16)
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

        v10[2](v10, 0, v19);
        v14 = v19;
      }

      else
      {
        v25 = [v13 library];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10001902C;
        v26[3] = &unk_1000414B8;
        v27 = v12;
        v28 = v13;
        v29 = self;
        v30 = v10;
        [v25 dispatchSync:v26];
      }
    }

    else
    {
      v24 = sub_100003164();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100029824();
      }

      v10[2](v10, 0, v14);
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

    v10[2](v10, 0, v14);
  }
}

- (int)importCookieFileDescriptorForVolumeURL:(id)a3 forWriting:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v9 = a3;
  if (realpath_DARWIN_EXTSN([a3 fileSystemRepresentation], v60))
  {
    v10 = [NSString stringWithUTF8String:v60];
    v11 = [NSURL fileURLWithPath:v10 isDirectory:1];

    if (v6)
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
    if (v6)
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

          if (a5)
          {
            v37 = [NSString stringWithFormat:@"Invalid volume URL"];
            v38 = sub_100003164();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              sub_100027DCC();
            }

            v39 = sub_10000F0F8(104, v37, 0);

            v40 = v39;
            *a5 = v39;
          }
        }

        goto LABEL_88;
      }

      if (a5)
      {
        *a5 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:0];
      }
    }

    else
    {
      memset(&v56, 0, sizeof(v56));
      if ((lstat(v60, &v56) & 0x80000000) == 0)
      {
        v15 = [GSStorageManager existingLibraryForDevice:v56.st_dev];
        if (!v15 && v6)
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
          v19 = [v15 libraryRoot];
          v20 = [NSURL fileURLWithPath:v19 isDirectory:1];

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

              if (!a5)
              {
                goto LABEL_79;
              }

              v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
              goto LABEL_64;
            }

            if (a5)
            {
              v24 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:0];
LABEL_63:
              v22 = -1;
LABEL_64:
              v44 = v24;
              *a5 = v24;
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

            if (a5)
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

        if (v6)
        {
          if (a5)
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
            *a5 = v33;
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

          if (!a5)
          {
            goto LABEL_86;
          }

          v52 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
        }

        else
        {
          if (!a5)
          {
            v22 = -1;
            goto LABEL_86;
          }

          v52 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:0];
          v22 = -1;
        }

        *a5 = v52;
LABEL_86:

        goto LABEL_87;
      }

      v25 = sub_100003164();
      if (os_log_type_enabled(v25, 0x90u))
      {
        sub_100029CC8();
      }

      if (a5)
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
        *a5 = v28;
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

  if (a5)
  {
    *a5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
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

- (void)storeImportCookieData:(id)a3 forVolumeURL:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100003164();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100029DD4(v8, v9);
  }

  if (v9)
  {
    v51 = 0;
    v12 = [(GSClient *)self importCookieFileDescriptorForVolumeURL:v9 forWriting:1 error:&v51];
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

      v10[2](v10, v13);
    }

    else
    {
      v14 = [[NSFileHandle alloc] initWithFileDescriptor:v12 closeOnDealloc:1];
      if (v8)
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
        v38 = v8;
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

        v10[2](v10, v18);

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

        v10[2](v10, v29);
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

    v10[2](v10, 0);
  }
}

- (void)readImportCookieDataForVolumeAtURL:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003164();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A2B0(v6);
  }

  if (v6)
  {
    v40 = 0;
    v9 = [(GSClient *)self importCookieFileDescriptorForVolumeURL:v6 forWriting:0 error:&v40];
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

        (*(v7 + 2))(v7, 0, 0, 0);
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

        (*(v7 + 2))(v7, 0, 0, v11);
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
        (*(v7 + 2))(v7, v16, v17, 0);
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

        (*(v7 + 2))(v7, 0, 0, *(v32[0] + 40));
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

    (*(v7 + 2))(v7, 0, 0, 0);
  }
}

- (void)deleteImportCookieDataForVolumeAtURL:(id)a3 reply:(id)a4
{
  v4 = a4;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 removeItemAtPath:@"/var/mobile/.DocumentRevisions-V100/fpfs_import_cookie" error:0];

  v7 = sub_100003164();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A594();
  }

  v4[2](v4, v6);
}

- (void)setAdditionConflictResolvedInStorage:(int64_t)a3 nameSpace:(id)a4 additionName:(id)a5 value:(BOOL)a6 reply:(id)a7
{
  v8 = a6;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = sub_100003164();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v38 = "[GSClient setAdditionConflictResolvedInStorage:nameSpace:additionName:value:reply:]";
    v39 = 2048;
    v40 = a3;
    v41 = 2112;
    v42 = v12;
    v43 = 2112;
    v44 = v13;
    v45 = 1024;
    v46 = v8;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %s query(%lld, %@, %@, %hhd)", buf, 0x30u);
  }

  v36 = 0;
  v16 = [v13 validateGSName:&v36];
  v17 = v36;
  if (!v16)
  {
    goto LABEL_13;
  }

  v35 = 0;
  v18 = [v12 validateGSName:&v35];
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
  v20 = [(GSClient *)self _getCachedVolPath:a3 error:&v34];
  v17 = v34;

  if (!v20)
  {
    v27 = sub_100003164();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A618();
    }

LABEL_15:

    v14[2](v14, 0, v17);
    goto LABEL_16;
  }

  v21 = [v20 library];
  v22 = [v21 isReadOnly];

  if (v22)
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

    v14[2](v14, 0, v25);
    v17 = v25;
  }

  else
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10001AE60;
    v28[3] = &unk_100041580;
    v29 = v13;
    v30 = v12;
    v31 = self;
    v33 = v8;
    v32 = v14;
    [v20 performOnResolvedPath:v28];
  }

LABEL_16:
}

@end