@interface _AssetDecrypter
- (BOOL)decrypt:(id)a3 restorable:(id)a4 metadata:(id)a5 error:(id *)a6;
- (id)_initWithTracker:(id)a3 device:(id)a4;
- (id)_keybag:(id *)a3 metadata:(id)a4;
- (id)_localFileInfo:(id)a3;
@end

@implementation _AssetDecrypter

- (id)_initWithTracker:(id)a3 device:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    __assert_rtn("[_AssetDecrypter _initWithTracker:device:]", "MBAssetDecrypter.m", 42, "tracker");
  }

  v9 = v8;
  if (!v8)
  {
    __assert_rtn("[_AssetDecrypter _initWithTracker:device:]", "MBAssetDecrypter.m", 43, "device");
  }

  v13.receiver = self;
  v13.super_class = _AssetDecrypter;
  v10 = [(_AssetDecrypter *)&v13 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_tracker, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (BOOL)decrypt:(id)a3 restorable:(id)a4 metadata:(id)a5 error:(id *)a6
{
  v10 = a3;
  v38 = a4;
  v11 = a5;
  if (!v10)
  {
    __assert_rtn("[_AssetDecrypter decrypt:restorable:metadata:error:]", "MBAssetDecrypter.m", 56, "encryptedFilePath");
  }

  if (!v38)
  {
    __assert_rtn("[_AssetDecrypter decrypt:restorable:metadata:error:]", "MBAssetDecrypter.m", 57, "restorable");
  }

  v12 = v11;
  if (!v11)
  {
    __assert_rtn("[_AssetDecrypter decrypt:restorable:metadata:error:]", "MBAssetDecrypter.m", 58, "metadata");
  }

  if (!a6)
  {
    __assert_rtn("[_AssetDecrypter decrypt:restorable:metadata:error:]", "MBAssetDecrypter.m", 59, "error");
  }

  v13 = [(_AssetDecrypter *)self _keybag:a6 metadata:v11];
  if (v13)
  {
    v14 = [(MBCKOperationTracker *)self->_tracker account];
    v15 = v14;
    if (!v14)
    {
      __assert_rtn("[_AssetDecrypter decrypt:restorable:metadata:error:]", "MBAssetDecrypter.m", 69, "account");
    }

    v16 = [v14 persona];
    v37 = [v16 accountType];

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v13 keybagUUIDString];
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Decrypting asset in place at %@ with keybag %@", buf, 0x16u);

      v32 = [v13 keybagUUIDString];
      _MBLog();
    }

    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    memset(buf, 0, sizeof(buf));
    [v38 getNode:buf];
    v19 = v15;
    v20 = *(&v65 + 1);
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = sub_100063EFC;
    v50 = sub_100063F0C;
    v51 = 0;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100063F14;
    v39[3] = &unk_1003BC728;
    v43 = &v52;
    v21 = v10;
    v40 = v21;
    v36 = v12;
    v22 = v12;
    v41 = v22;
    v42 = self;
    v44 = &v46;
    v45 = v20;
    v23 = [MBCKKeyBag unlockKeybag:v13 accountType:v37 error:a6 block:v39];
    v24 = *(v53 + 24);
    if ((v24 & 1) == 0)
    {
      if (v23)
      {
        if (!v47[5])
        {
          __assert_rtn("[_AssetDecrypter decrypt:restorable:metadata:error:]", "MBAssetDecrypter.m", 92, "decryptError");
        }

        v25 = [(_AssetDecrypter *)self _localFileInfo:v21];
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = v47[5];
          *v56 = 138413058;
          v57 = v21;
          v58 = 2112;
          v59 = v22;
          v60 = 2112;
          v61 = v25;
          v62 = 2112;
          v63 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to decrypt asset at %@, metadata:%@, on-disk:%@: %@", v56, 0x2Au);
          v35 = v47[5];
          _MBLog();
        }

        *a6 = v47[5];
      }

      else
      {
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v30 = *a6;
          *v56 = 138412546;
          v57 = v21;
          v58 = 2112;
          v59 = v30;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to unlock keybag to decrypt asset at %@: %@", v56, 0x16u);
          v34 = *a6;
          _MBLog();
        }
      }
    }

    v12 = v36;
    _Block_object_dispose(&v46, 8);

    _Block_object_dispose(&v52, 8);
  }

  else
  {
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = *a6;
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to find a keybag to decrypt asset at %@: %@", buf, 0x16u);
      v33 = *a6;
      _MBLog();
    }

    [MBError errorWithCode:205 path:v10 format:@"No keybag found for protected asset"];
    *a6 = v24 = 0;
  }

  return v24;
}

- (id)_keybag:(id *)a3 metadata:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    __assert_rtn("[_AssetDecrypter _keybag:metadata:]", "MBAssetDecrypter.m", 101, "error");
  }

  v7 = v6;
  v8 = [(MBCKDevice *)self->_device keybagManager];
  if (!v8)
  {
    __assert_rtn("[_AssetDecrypter _keybag:metadata:]", "MBAssetDecrypter.m", 104, "keybagManager");
  }

  v9 = v8;
  v10 = [v7 _keybagUUIDData];
  v11 = [v10 base64EncodedStringWithOptions:0];
  if (v11)
  {
    v12 = [v9 keybagWithUUID:v11];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      device = self->_device;
      v16 = [v7 _keybagUUIDData];
      tracker = self->_tracker;
      v31 = 0;
      v14 = [MBCKKeyBag keybagWithDevice:device keybagUUID:v16 operationTracker:tracker error:&v31];
      v18 = v31;

      if (v14)
      {
        [v9 addKeybag:v14];
        v20 = self->_tracker;
        v19 = self->_device;
        v30 = v18;
        v21 = [(MBCKModel *)v19 saveWithOperationTracker:v20 error:&v30];
        v22 = v30;

        if ((v21 & 1) == 0)
        {
          v23 = MBGetDefaultLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = [v14 keybagUUIDString];
            *buf = 138543618;
            v33 = v24;
            v34 = 2112;
            v35 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to save device record with recovered keybag %{public}@: %@", buf, 0x16u);

            v29 = [v14 keybagUUIDString];
            _MBLog();
          }
        }

        v25 = v14;
      }

      else
      {
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v33 = v11;
          v34 = 2112;
          v35 = v18;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "No keybag found for %{public}@: %@", buf, 0x16u);
          _MBLog();
        }

        if (v18)
        {
          v27 = v18;
        }

        else
        {
          v27 = [MBError errorWithCode:205 format:@"No keybag found with UUID %@ for asset %@", v11, v7];
        }

        *a3 = v27;
        v22 = v18;
      }
    }
  }

  else
  {
    [MBError errorWithCode:205 format:@"No keybag for asset %@", v7];
    *a3 = v14 = 0;
  }

  return v14;
}

- (id)_localFileInfo:(id)a3
{
  v3 = a3;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  v4 = MBNodeForPath(v3, v10, &v9);
  v5 = v9;
  if (v4)
  {
    v6 = MBNodeAsString(v10);
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get file info for %@: %@", buf, 0x16u);
      _MBLog();
    }

    v6 = @"Unknown file info";
  }

  return v6;
}

@end