@interface IDSIMLEncryptionComponent
- (IDSIMLEncryptionComponent)initWithEncryptionController:(id)controller;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IDSIMLEncryptionComponent

- (IDSIMLEncryptionComponent)initWithEncryptionController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = IDSIMLEncryptionComponent;
  v6 = [(IDSIMLEncryptionComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_encryptionController, controller);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
  dataToEncrypt = [inputCopy dataToEncrypt];
  v5 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    guid = [inputCopy guid];
    v7 = guid;
    v8 = @"YES";
    if (!dataToEncrypt)
    {
      v8 = @"NO";
    }

    v11 = 138412546;
    v12 = guid;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GUID %@ finished encryption with success: %@", &v11, 0x16u);
  }

  [inputCopy setEncryptedTopLevelPayload:dataToEncrypt];
  v9 = [CUTUnsafePromise fulfilledPromiseWithValue:inputCopy];

  return v9;
}

@end