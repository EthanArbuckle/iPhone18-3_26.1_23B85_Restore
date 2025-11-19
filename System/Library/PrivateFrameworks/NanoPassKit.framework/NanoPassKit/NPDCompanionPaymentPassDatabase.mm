@interface NPDCompanionPaymentPassDatabase
- (NPDCompanionPaymentPassDatabase)initWithDevice:(id)a3 outstandingDeletionStore:(id)a4;
- (NSSet)uniqueIDs;
- (PKCatalog)catalog;
- (id)_paymentPassFromURL:(id)a3;
- (id)_paymentPassWithUniqueID:(id)a3;
- (id)paymentPassWithUniqueID:(id)a3;
- (void)_postPaymentPassDatabaseChanged;
- (void)_savePaymentLockedPassAtURL:(id)a3 withUniqueID:(id)a4 completion:(id)a5;
- (void)removePaymentPassWithUniqueID:(id)a3 completion:(id)a4;
- (void)savePaymentPass:(id)a3 requireExisting:(BOOL)a4 requireNewer:(BOOL)a5 completion:(id)a6;
- (void)setCatalog:(id)a3 fromWatch:(BOOL)a4;
@end

@implementation NPDCompanionPaymentPassDatabase

- (NPDCompanionPaymentPassDatabase)initWithDevice:(id)a3 outstandingDeletionStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion payment pass database initializing with device: %@", buf, 0xCu);
    }
  }

  v20.receiver = self;
  v20.super_class = NPDCompanionPaymentPassDatabase;
  v11 = [(NPDCompanionPaymentPassDatabase *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_outstandingDeletionStore, a4);
    v13 = NPKPaymentPassDirectoryPathForDevice();
    paymentPassDirectoryPath = v12->_paymentPassDirectoryPath;
    v12->_paymentPassDirectoryPath = v13;

    v15 = NPKCatalogPathForDevice();
    catalogPath = v12->_catalogPath;
    v12->_catalogPath = v15;

    v17 = +[NSFileManager defaultManager];
    [v17 createDirectoryAtPath:v12->_paymentPassDirectoryPath withIntermediateDirectories:1 attributes:0 error:0];

    v18 = dispatch_queue_create("com.apple.NPDCompanionPaymentPassDatabase", 0);
    [(NPDCompanionPaymentPassDatabase *)v12 setQueue:v18];
  }

  return v12;
}

- (void)savePaymentPass:(id)a3 requireExisting:(BOOL)a4 requireNewer:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Companion payment pass database saving payment pass: %@", buf, 0xCu);
    }
  }

  v15 = [(NPDCompanionPaymentPassDatabase *)self queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100003C78;
  v18[3] = &unk_100070E58;
  v18[4] = self;
  v19 = v10;
  v21 = a4;
  v20 = v11;
  v22 = a5;
  v16 = v11;
  v17 = v10;
  dispatch_async(v15, v18);
}

- (void)removePaymentPassWithUniqueID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPDCompanionPaymentPassDatabase *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004410;
  block[3] = &unk_100070EE0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (NSSet)uniqueIDs
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100004AFC;
  v14 = sub_100004B0C;
  v15 = 0;
  v3 = [(NPDCompanionPaymentPassDatabase *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004B14;
  v9[3] = &unk_100070F08;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v3, v9);

  v4 = pk_Payment_log();
  LODWORD(v3) = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v11[5];
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Payment pass unique IDs: %@", buf, 0xCu);
    }
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)paymentPassWithUniqueID:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100004AFC;
  v19 = sub_100004B0C;
  v20 = 0;
  v5 = [(NPDCompanionPaymentPassDatabase *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004F70;
  block[3] = &unk_100070F30;
  v14 = &v15;
  block[4] = self;
  v6 = v4;
  v13 = v6;
  dispatch_sync(v5, block);

  v7 = pk_Payment_log();
  LODWORD(v5) = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v16[5];
      *buf = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Payment pass with uniqueID %@: %@", buf, 0x16u);
    }
  }

  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)setCatalog:(id)a3 fromWatch:(BOOL)a4
{
  v6 = a3;
  v7 = NPKSecureArchiveObject();
  catalogPath = self->_catalogPath;
  v16 = 0;
  [v7 writeToFile:catalogPath options:1 error:&v16];
  v9 = v16;
  if (v9)
  {
    v10 = pk_Sync_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_Sync_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error: Payment pass database: unable to write catalog to disk\n\tError: %@", buf, 0xCu);
      }
    }
  }

  if (v6)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100005154;
    v13[3] = &unk_100070F70;
    v13[4] = self;
    v14 = v6;
    v15 = a4;
    dispatch_async(&_dispatch_main_q, v13);
  }
}

- (PKCatalog)catalog
{
  catalogPath = self->_catalogPath;
  v10 = 0;
  v3 = [NSData dataWithContentsOfFile:catalogPath options:0 error:&v10];
  v4 = v10;
  if (v4)
  {
    v5 = pk_Sync_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Sync_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Payment pass database: Unable to read catalog.\n\tError: %@", buf, 0xCu);
      }
    }

    v8 = 0;
  }

  else
  {
    objc_opt_class();
    v8 = NPKSecureUnarchiveObject();
  }

  return v8;
}

- (id)_paymentPassWithUniqueID:(id)a3
{
  v4 = NPKStorePathForPaymentPassWithUniqueID();
  v5 = [NSURL fileURLWithPath:v4];
  v6 = [(NPDCompanionPaymentPassDatabase *)self _paymentPassFromURL:v5];

  return v6;
}

- (void)_savePaymentLockedPassAtURL:(id)a3 withUniqueID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NPDCompanionPaymentPassDatabase *)self paymentPassDirectoryPath];
  v34 = v9;
  v12 = [v9 stringByAppendingPathExtension:PKRawPassExtension];
  v13 = [v11 stringByAppendingPathComponent:v12];
  v14 = [NSURL fileURLWithPath:v13];

  v15 = +[NSFileManager defaultManager];
  v16 = [(NPDCompanionPaymentPassDatabase *)self paymentPassDirectoryPath];
  [v15 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:0];

  v17 = PKTemporaryItemURLWithExtension();
  v18 = [v15 moveItemAtURL:v14 toURL:v17 error:0];
  [v15 removeItemAtURL:v14 error:0];
  v42 = 0;
  v19 = [v15 copyItemAtURL:v8 toURL:v14 error:&v42];
  v33 = v42;
  if (v19)
  {
    NPKFlushCFBundleCacheAtURL();
    v20 = pk_Payment_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = pk_Payment_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v44 = v8;
        v45 = 2112;
        v46 = v14;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Notice: Successfully copied payment pass from %@ to %@", buf, 0x16u);
      }
    }

    v23 = @"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassAdded";
    if (v18)
    {
      v23 = @"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassUpdated";
    }

    v24 = v23;
    v25 = [(NPDCompanionPaymentPassDatabase *)self _paymentPassFromURL:v8];
    if (v25)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000058CC;
      block[3] = &unk_100070FA8;
      v39 = v24;
      v40 = self;
      v41 = v25;
      dispatch_async(&_dispatch_main_q, block);
    }

    [(NPDCompanionPaymentPassDatabase *)self _postPaymentPassDatabaseChanged];

LABEL_11:
    goto LABEL_22;
  }

  v26 = pk_Payment_log();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

  if (v27)
  {
    v28 = pk_Payment_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v44 = v34;
      v45 = 2112;
      v46 = v8;
      v47 = 2112;
      v48 = v14;
      v49 = 2112;
      v50 = v33;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Error: Failed to write pass with unique ID %@ from %@ to %@ (%@)", buf, 0x2Au);
    }
  }

  v29 = v18 ^ 1;
  if (!v17)
  {
    v29 = 1;
  }

  if ((v29 & 1) == 0)
  {
    v30 = [v15 moveItemAtURL:v17 toURL:v14 error:0];
    v31 = pk_Payment_log();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

    if (v32)
    {
      v24 = pk_Payment_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v44 = v34;
        v45 = 2112;
        v46 = v14;
        v47 = 1024;
        LODWORD(v48) = v30;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Notice: Restored previous version of pass with unique ID %@ to %@ success %d", buf, 0x1Cu);
      }

      goto LABEL_11;
    }
  }

LABEL_22:
  if (v10)
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10000598C;
    v35[3] = &unk_100070FD0;
    v36 = v10;
    v37 = v19;
    dispatch_async(&_dispatch_main_q, v35);
  }
}

- (id)_paymentPassFromURL:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v32 = 0;
    v7 = [[PKFileDataAccessor alloc] initWithFileURL:v3 error:&v32];
    v8 = v32;
    v9 = v8;
    if (!v7 || v8)
    {
      if (!v8)
      {
        goto LABEL_26;
      }

      v19 = pk_Sync_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (!v20)
      {
        goto LABEL_26;
      }

      v21 = pk_Sync_log();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 138412546;
      v34 = v7;
      v35 = 2112;
      v36 = v9;
      v22 = "Error: Error creating data accessor (%@). Error: %@";
    }

    else
    {
      v31 = 0;
      v10 = [PKPass createWithFileDataAccessor:v7 validationOptions:2 warnings:0 error:&v31];
      v9 = v31;
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = NPKPairedDeviceSecureElementIdentifiers();
          if ([v11 count])
          {
            v12 = [v10 secureElementPass];
            [v12 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v11];

            v13 = pk_General_log();
            v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

            if (v14)
            {
              v15 = pk_General_log();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                v16 = [v10 uniqueID];
                *buf = 138412802;
                v34 = v16;
                v35 = 2112;
                v36 = v3;
                v37 = 2112;
                v38 = v11;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Debug: Read payment pass with unique ID %@ from URL %@ and called updateDevicePaymentApplicationsWithSecureElementIdentifiers with %@", buf, 0x20u);
              }
            }
          }

          NPKGizmoScreenScale();
          [v10 setPreferredImageScale:?];
          [v10 setPreferredImageSuffix:NPKWatchSpecificAssetSuffix];
          [v10 flushLoadedImageSets];

          goto LABEL_35;
        }

        v27 = pk_General_log();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

        if (v28)
        {
          v29 = pk_General_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v3;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Error: Pass at URL %@ was not a payment pass", buf, 0xCu);
          }
        }

        goto LABEL_33;
      }

      v23 = pk_Sync_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
LABEL_26:
        v25 = pk_General_log();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

        if (!v26)
        {
LABEL_34:
          v10 = 0;
          goto LABEL_35;
        }

        v10 = pk_General_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v34 = v3;
          v35 = 2112;
          v36 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error: Could not initialize pass at URL %@ error %@", buf, 0x16u);
        }

LABEL_33:

        goto LABEL_34;
      }

      v21 = pk_Sync_log();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_25:

        goto LABEL_26;
      }

      *buf = 138412546;
      v34 = v3;
      v35 = 2112;
      v36 = v9;
      v22 = "Error: Unable to create a pass from this pass URL! %@. Error: %@";
    }

    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x16u);
    goto LABEL_25;
  }

  v17 = pk_General_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (!v18)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_36;
  }

  v7 = pk_General_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: No payment pass at URL %@", buf, 0xCu);
  }

  v10 = 0;
  v9 = 0;
LABEL_35:

LABEL_36:

  return v10;
}

- (void)_postPaymentPassDatabaseChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005EC4;
  block[3] = &unk_100071000;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end