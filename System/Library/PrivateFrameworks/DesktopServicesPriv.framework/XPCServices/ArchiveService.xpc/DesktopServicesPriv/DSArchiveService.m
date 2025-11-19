@interface DSArchiveService
- (DSArchiveServiceUnarchivingDelegate)unarchivingDelegate;
- (id)archiveItemsAtURLs:(id)a3 toURL:(id)a4 options:(unint64_t)a5 compressionFormat:(unint64_t)a6 passphrase:(id)a7 completionHandler:(id)a8;
- (id)archiveItemsWithURLs:(id)a3 compressionFormat:(unint64_t)a4 destinationFolderURL:(id)a5 completionHandler:(id)a6;
- (id)archiveItemsWithURLs:(id)a3 passphrase:(id)a4 addToKeychain:(BOOL)a5 compressionFormat:(unint64_t)a6 destinationFolderURL:(id)a7 completionHandler:(id)a8;
- (id)unarchiveItemAtURL:(id)a3 passphrase:(id)a4 destinationFolderURL:(id)a5 completionHandler:(id)a6;
- (id)unarchiveItemAtURL:(id)a3 passphrases:(id)a4 destinationFolderURL:(id)a5 acceptedFormats:(unint64_t)a6 completionHandler:(id)a7;
- (id)unarchiveItemAtURL:(id)a3 passphrases:(id)a4 destinationFolderURL:(id)a5 completionHandler:(id)a6;
- (id)unarchiveItemAtURL:(id)a3 toURL:(id)a4 options:(unint64_t)a5 acceptedFormats:(unint64_t)a6 passphrases:(id)a7 completionHandler:(id)a8;
- (void)itemDescriptorsForItemAtURL:(id)a3 passphrase:(id)a4 completionHandler:(id)a5;
- (void)itemDescriptorsForItemAtURL:(id)a3 passphrases:(id)a4 completionHandler:(id)a5;
- (void)receiveArchivedItemsDescriptors:(id)a3 placeholderName:(id)a4 placeholderTypeIdentifier:(id)a5;
@end

@implementation DSArchiveService

- (void)itemDescriptorsForItemAtURL:(id)a3 passphrase:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v12 = v9;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    v11 = 0;
  }

  [(DSArchiveService *)self itemDescriptorsForItemAtURL:v8 passphrases:v11 completionHandler:v10];
  if (v9)
  {
  }
}

- (void)itemDescriptorsForItemAtURL:(id)a3 passphrases:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_100001800(0);
  [v10 resume];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000018E4;
  v19[3] = &unk_10002CD10;
  v11 = v9;
  v21 = v11;
  v12 = v10;
  v20 = v12;
  v13 = [v12 remoteObjectProxyWithErrorHandler:v19];
  if (v7)
  {
    v14 = [[NSSecurityScopedURLWrapper alloc] initWithURL:v7 readonly:1];
    if (v14)
    {
      [v13 itemDescriptorsForItemWithURLWrapper:v14 passphrases:v8 completionHandler:v11];
    }

    else
    {
      v22 = NSURLErrorKey;
      v23 = v7;
      v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v17 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:v16];

      (*(v11 + 2))(v11, 0, v17);
      [v12 invalidate];
    }
  }

  else
  {
    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v15 = LogObj(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "itemDescriptorsForItemAtURL: url is nil", v18, 2u);
    }

    (*(v11 + 2))(v11, 0, v14);
    [v12 invalidate];
  }
}

- (id)archiveItemsAtURLs:(id)a3 toURL:(id)a4 options:(unint64_t)a5 compressionFormat:(unint64_t)a6 passphrase:(id)a7 completionHandler:(id)a8
{
  v11 = a3;
  v12 = a4;
  v50 = a7;
  v13 = a8;
  v51 = v11;
  v14 = [v11 count];
  if (v12 && v14)
  {
    v64 = 0;
    v15 = +[NSFileManager defaultManager];
    v16 = [v12 path];
    v17 = [v15 fileExistsAtPath:v16 isDirectory:&v64];
    v18 = v64;

    if (v17 & v18)
    {
      v19 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v51 count]);
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v20 = v51;
      v21 = [v20 countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v21)
      {
        v22 = *v61;
        while (2)
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v61 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v60 + 1) + 8 * i);
            v25 = off_1000314B8();
            v59 = 0;
            v26 = [(objc_class *)v25 wrapperWithURL:v24 readonly:1 error:&v59];
            v27 = v59;
            if (!v26)
            {
              v41 = LogObj(0);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v70 = v27;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: Couldn't get url wrapper: %@", buf, 0xCu);
              }

              v13[2](v13, 0, v27);
              goto LABEL_29;
            }

            [v19 addObject:v26];
          }

          v21 = [v20 countByEnumeratingWithState:&v60 objects:v68 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v20 = [[NSSecurityScopedURLWrapper alloc] initWithURL:v12 readonly:0];
      if (v20)
      {
        v45 = sub_100001800(0);
        [v45 resume];
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_100002228;
        v56[3] = &unk_10002CD10;
        v28 = v13;
        v58 = v28;
        v29 = v45;
        v57 = v29;
        v47 = [v29 remoteObjectProxyWithErrorHandler:v56];
        v46 = [RBSDomainAttribute attributeWithDomain:@"com.apple.ArchiveService" name:@"BackgroundArchive"];
        v30 = [RBSAssertion alloc];
        v31 = +[RBSTarget currentProcess];
        v65 = v46;
        v32 = [NSArray arrayWithObjects:&v65 count:1];
        v33 = [v30 initWithExplanation:@"ArchiveServices archive operation" target:v31 attributes:v32];

        [v33 acquireWithInvalidationHandler:&stru_10002CD50];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100002368;
        v52[3] = &unk_10002CD78;
        v55 = v28;
        v34 = v33;
        v53 = v34;
        v27 = v29;
        v54 = v27;
        v35 = [v47 archiveItemsWithURLWrappers:v19 toURLWrapper:v20 options:a5 compressionFormat:a6 passphrase:v50 completionHandler:v52];
      }

      else
      {
        v66 = NSURLErrorKey;
        v67 = v12;
        v43 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v27 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:v43];

        v44 = LogObj(0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v70 = v27;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "archiveItemsAtURLs: Couldn't get url wrapper for destination: %@", buf, 0xCu);
        }

        v13[2](v13, 0, v27);
LABEL_29:
        v35 = 0;
      }
    }

    else
    {
      v71 = NSURLErrorKey;
      v72 = v12;
      v39 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v19 = [NSError errorWithDomain:NSCocoaErrorDomain code:4 userInfo:v39];

      v40 = LogObj(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v70 = v19;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "archiveItemsAtURLs: destination doesn't exist or isn't a directory: %@", buf, 0xCu);
      }

      v35 = 0;
      v13[2](v13, 0, v19);
    }
  }

  else
  {
    v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    if (![v11 count])
    {
      v37 = LogObj(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: no urls", buf, 2u);
      }
    }

    if (!v12)
    {
      v38 = LogObj(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: destination is nil", buf, 2u);
      }
    }

    v13[2](v13, 0, v36);

    v35 = 0;
  }

  return v35;
}

- (id)unarchiveItemAtURL:(id)a3 toURL:(id)a4 options:(unint64_t)a5 acceptedFormats:(unint64_t)a6 passphrases:(id)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v53 = a7;
  v15 = a8;
  v16 = [(DSArchiveService *)self unarchivingDelegate];

  if (v16)
  {
    v17 = a5 | 0x100000;
  }

  else
  {
    v17 = a5;
  }

  if (v13 && v14)
  {
    v64 = 0;
    v18 = +[NSFileManager defaultManager];
    v19 = [v14 path];
    v20 = [v18 fileExistsAtPath:v19 isDirectory:&v64];
    v21 = v64;

    if (v20 & v21)
    {
      v63 = 0;
      v22 = [(objc_class *)off_1000314B8() wrapperWithURL:v13 readonly:0 error:&v63];
      v23 = v63;
      v24 = v23;
      v51 = v22;
      if (v22)
      {
        v49 = v23;
LABEL_23:
        v50 = [[NSSecurityScopedURLWrapper alloc] initWithURL:v14 readonly:0];
        if (v50)
        {
          if (v16)
          {
            v33 = self;
          }

          else
          {
            v33 = 0;
          }

          v34 = sub_100001800(v33);
          [v34 resume];
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_100002C94;
          v59[3] = &unk_10002CD10;
          v35 = v15;
          v61 = v35;
          v36 = v34;
          v60 = v36;
          v47 = [v36 remoteObjectProxyWithErrorHandler:v59];
          v48 = [RBSDomainAttribute attributeWithDomain:@"com.apple.ArchiveService" name:@"BackgroundArchive"];
          v37 = [RBSAssertion alloc];
          v38 = +[RBSTarget currentProcess];
          v65 = v48;
          v39 = [NSArray arrayWithObjects:&v65 count:1];
          v40 = [v37 initWithExplanation:@"ArchiveServices unarchive operation" target:v38 attributes:v39];

          [v40 acquireWithInvalidationHandler:&stru_10002CD98];
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_100002DD4;
          v54[3] = &unk_10002CDC0;
          v55 = v13;
          v58 = v35;
          v41 = v40;
          v56 = v41;
          v42 = v36;
          v57 = v42;
          v28 = [v47 unarchiveItemWithURLWrapper:v51 toURLWrapper:v50 options:v17 passphrases:v53 acceptedFormats:a6 completionHandler:v54];
        }

        else
        {
          v66 = NSURLErrorKey;
          v67 = v14;
          v43 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v42 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:v43];

          v44 = LogObj(0);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v69 = v42;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: Couldn't get url wrapper for destination: %@", buf, 0xCu);
          }

          v28 = 0;
          (*(v15 + 2))(v15, 0, v42);
        }

        v32 = v49;
        goto LABEL_32;
      }

      v62 = v23;
      v51 = [(objc_class *)off_1000314B8() wrapperWithURL:v13 readonly:1 error:&v62];
      v49 = v62;

      if (v51)
      {
        goto LABEL_23;
      }

      v46 = LogObj(0);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v69 = v49;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: Couldn't get url wrapper for item: %@", buf, 0xCu);
      }

      v32 = v49;
      (*(v15 + 2))(v15, 0, v49);
    }

    else
    {
      v70 = NSURLErrorKey;
      v71 = v14;
      v29 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v30 = [NSError errorWithDomain:NSCocoaErrorDomain code:4 userInfo:v29];

      v31 = LogObj(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v69 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: destination doesn't exist or isn't a directory: %@", buf, 0xCu);
      }

      v32 = v30;
      (*(v15 + 2))(v15, 0, v30);
    }

    v28 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  if (!v13)
  {
    v26 = LogObj(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: url is nil", buf, 2u);
    }
  }

  if (!v14)
  {
    v27 = LogObj(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: destination is nil", buf, 2u);
    }
  }

  (*(v15 + 2))(v15, 0, v25);

  v28 = 0;
LABEL_33:

  return v28;
}

- (id)archiveItemsWithURLs:(id)a3 compressionFormat:(unint64_t)a4 destinationFolderURL:(id)a5 completionHandler:(id)a6
{
  v6 = [(DSArchiveService *)self archiveItemsWithURLs:a3 passphrase:0 addToKeychain:0 compressionFormat:a4 destinationFolderURL:a5 completionHandler:a6];

  return v6;
}

- (id)archiveItemsWithURLs:(id)a3 passphrase:(id)a4 addToKeychain:(BOOL)a5 compressionFormat:(unint64_t)a6 destinationFolderURL:(id)a7 completionHandler:(id)a8
{
  v11 = a5;
  v37 = a3;
  v34 = a4;
  v36 = a7;
  v33 = a8;
  v32 = sub_100001800(0);
  [v32 resume];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100003570;
  v46[3] = &unk_10002CD10;
  v13 = v33;
  v48 = v13;
  v14 = v32;
  v47 = v14;
  v35 = [v14 remoteObjectProxyWithErrorHandler:v46];
  v15 = [v37 count];
  if (v36 && v15)
  {
    v30 = v11;
    v31 = a6;
    v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v37 count]);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v17 = v37;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v18)
    {
      v19 = *v43;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          v22 = off_1000314B8();
          v41 = 0;
          v23 = [(objc_class *)v22 wrapperWithURL:v21 readonly:1 error:&v41];
          v24 = v41;
          if (!v23)
          {
            v28 = LogObj(0);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v50 = v24;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: Couldn't get url wrapper: %@", buf, 0xCu);
            }

            (*(v13 + 2))(v13, 0, 0, v24);
            [v14 invalidate];
            v25 = 0;
            goto LABEL_24;
          }

          [v16 addObject:v23];
        }

        v18 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v17 = [[NSSecurityScopedURLWrapper alloc] initWithURL:v36 readonly:0];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000035EC;
    v38[3] = &unk_10002CDE8;
    v40 = v13;
    v39 = v14;
    v25 = [v35 archiveItemsWithURLWrappers:v16 passphrase:v34 addToKeychain:v30 compressionFormat:v31 destinationFolderURLWrapper:v17 usePlaceholder:0 completionHandler:v38];

    v24 = v40;
LABEL_24:
  }

  else
  {
    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    if (![v37 count])
    {
      v26 = LogObj(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: no urls", buf, 2u);
      }
    }

    if (!v36)
    {
      v27 = LogObj(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: destination is nil", buf, 2u);
      }
    }

    (*(v13 + 2))(v13, 0, 0, v16);
    [v14 invalidate];
    v25 = 0;
  }

  return v25;
}

- (id)unarchiveItemAtURL:(id)a3 passphrase:(id)a4 destinationFolderURL:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v17 = v11;
    v14 = [NSArray arrayWithObjects:&v17 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(DSArchiveService *)self unarchiveItemAtURL:v10 passphrases:v14 addToKeychain:0 destinationFolderURL:v12 acceptedFormats:1 completionHandler:v13];
  if (v11)
  {
  }

  return v15;
}

- (id)unarchiveItemAtURL:(id)a3 passphrases:(id)a4 destinationFolderURL:(id)a5 completionHandler:(id)a6
{
  v6 = [(DSArchiveService *)self unarchiveItemAtURL:a3 passphrases:a4 addToKeychain:0 destinationFolderURL:a5 acceptedFormats:1 completionHandler:a6];

  return v6;
}

- (id)unarchiveItemAtURL:(id)a3 passphrases:(id)a4 destinationFolderURL:(id)a5 acceptedFormats:(unint64_t)a6 completionHandler:(id)a7
{
  v7 = [(DSArchiveService *)self unarchiveItemAtURL:a3 passphrases:a4 addToKeychain:0 destinationFolderURL:a5 acceptedFormats:a6 completionHandler:a7];

  return v7;
}

- (void)receiveArchivedItemsDescriptors:(id)a3 placeholderName:(id)a4 placeholderTypeIdentifier:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(DSArchiveService *)self unarchivingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 service:self didReceiveArchivedItemsDescriptors:v11 placeholderName:v8 placeholderTypeIdentifier:v9];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v10 service:self didReceiveArchivedItemsDescriptors:v11];
  }
}

- (DSArchiveServiceUnarchivingDelegate)unarchivingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_unarchivingDelegate);

  return WeakRetained;
}

@end