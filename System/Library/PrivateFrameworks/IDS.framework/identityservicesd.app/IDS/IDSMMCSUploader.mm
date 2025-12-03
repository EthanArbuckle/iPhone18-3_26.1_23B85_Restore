@interface IDSMMCSUploader
- (IDSMMCSUploader)initWithEncryptionController:(id)controller transferServicesController:(id)servicesController;
- (id)uploadData:(id)data fromID:(id)d toEndpoint:(id)endpoint onTopic:(id)topic forGUID:(id)iD encryptionType:(unint64_t)type;
@end

@implementation IDSMMCSUploader

- (IDSMMCSUploader)initWithEncryptionController:(id)controller transferServicesController:(id)servicesController
{
  controllerCopy = controller;
  servicesControllerCopy = servicesController;
  v12.receiver = self;
  v12.super_class = IDSMMCSUploader;
  v9 = [(IDSMMCSUploader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_encryptionController, controller);
    objc_storeStrong(&v10->_transferServicesController, servicesController);
  }

  return v10;
}

- (id)uploadData:(id)data fromID:(id)d toEndpoint:(id)endpoint onTopic:(id)topic forGUID:(id)iD encryptionType:(unint64_t)type
{
  dataCopy = data;
  dCopy = d;
  endpointCopy = endpoint;
  topicCopy = topic;
  iDCopy = iD;
  v16 = objc_alloc_init(CUTUnsafePromiseSeal);
  v17 = +[NSFileManager defaultManager];
  v18 = [v17 _randomTemporaryPathWithSuffix:0];

  if (!v18)
  {
    goto LABEL_10;
  }

  data = [dataCopy data];
  v50 = 0;
  v20 = [data writeToFile:v18 options:1 error:&v50];
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
  stringByResolvingAndStandardizingPath = [v18 stringByResolvingAndStandardizingPath];
  v25 = [NSString stringGUIDForObject:v18];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10064CABC;
  v41[3] = &unk_100BE3148;
  v42 = endpointCopy;
  v43 = iDCopy;
  typeCopy = type;
  v44 = dCopy;
  v26 = topicCopy;
  selfCopy = self;
  v28 = dataCopy;
  v29 = topicCopy;
  v30 = endpointCopy;
  v31 = v26;
  v45 = v26;
  v46 = selfCopy;
  v47 = v18;
  v48 = v16;
  v32 = v31;
  endpointCopy = v30;
  topicCopy = v29;
  dataCopy = v28;
  [(IDSTransferServicesController *)transferServicesController sendFilePath:stringByResolvingAndStandardizingPath topic:v32 userInfo:0 transferID:v25 encryptFile:0 progressBlock:&stru_100BE30F8 completionBlock:v41];

  v33 = v42;
LABEL_11:

  promise = [v16 promise];

  return promise;
}

@end