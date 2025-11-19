@interface IDSMMCSUploader
- (IDSMMCSUploader)initWithEncryptionController:(id)a3 transferServicesController:(id)a4;
- (id)uploadData:(id)a3 fromID:(id)a4 toEndpoint:(id)a5 onTopic:(id)a6 forGUID:(id)a7 encryptionType:(unint64_t)a8;
@end

@implementation IDSMMCSUploader

- (IDSMMCSUploader)initWithEncryptionController:(id)a3 transferServicesController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSMMCSUploader;
  v9 = [(IDSMMCSUploader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_encryptionController, a3);
    objc_storeStrong(&v10->_transferServicesController, a4);
  }

  return v10;
}

- (id)uploadData:(id)a3 fromID:(id)a4 toEndpoint:(id)a5 onTopic:(id)a6 forGUID:(id)a7 encryptionType:(unint64_t)a8
{
  v13 = a3;
  v39 = a4;
  v14 = a5;
  v15 = a6;
  v40 = a7;
  v16 = objc_alloc_init(CUTUnsafePromiseSeal);
  v17 = +[NSFileManager defaultManager];
  v18 = [v17 _randomTemporaryPathWithSuffix:0];

  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = [v13 data];
  v50 = 0;
  v20 = [v19 writeToFile:v18 options:1 error:&v50];
  v21 = v50;

  if (!v20)
  {

LABEL_10:
    v33 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"Failed uploading attachment file transfer (could not generate file)", NSLocalizedDescriptionKey, 0}];
    v34 = [NSError alloc];
    v35 = [v34 initWithDomain:IDSSendErrorDomain code:4 userInfo:v33];
    [v16 failWithError:v35];

    goto LABEL_11;
  }

  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = @"YES";
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "    Wrote data to path: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  transferServicesController = self->_transferServicesController;
  v24 = [v18 stringByResolvingAndStandardizingPath];
  v25 = [NSString stringGUIDForObject:v18];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10064CABC;
  v41[3] = &unk_100BE3148;
  v42 = v14;
  v43 = v40;
  v49 = a8;
  v44 = v39;
  v26 = v15;
  v27 = self;
  v28 = v13;
  v29 = v15;
  v30 = v14;
  v31 = v26;
  v45 = v26;
  v46 = v27;
  v47 = v18;
  v48 = v16;
  v32 = v31;
  v14 = v30;
  v15 = v29;
  v13 = v28;
  [(IDSTransferServicesController *)transferServicesController sendFilePath:v24 topic:v32 userInfo:0 transferID:v25 encryptFile:0 progressBlock:&stru_100BE30F8 completionBlock:v41];

  v33 = v42;
LABEL_11:

  v36 = [v16 promise];

  return v36;
}

@end