@interface IDSIMLEncryptionComponent
- (IDSIMLEncryptionComponent)initWithEncryptionController:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IDSIMLEncryptionComponent

- (IDSIMLEncryptionComponent)initWithEncryptionController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSIMLEncryptionComponent;
  v6 = [(IDSIMLEncryptionComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_encryptionController, a3);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v3 = a3;
  v4 = [v3 dataToEncrypt];
  v5 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 guid];
    v7 = v6;
    v8 = @"YES";
    if (!v4)
    {
      v8 = @"NO";
    }

    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GUID %@ finished encryption with success: %@", &v11, 0x16u);
  }

  [v3 setEncryptedTopLevelPayload:v4];
  v9 = [CUTUnsafePromise fulfilledPromiseWithValue:v3];

  return v9;
}

@end