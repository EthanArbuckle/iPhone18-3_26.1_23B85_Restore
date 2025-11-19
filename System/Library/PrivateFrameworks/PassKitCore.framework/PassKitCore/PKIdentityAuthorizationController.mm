@interface PKIdentityAuthorizationController
- (PKIdentityAuthorizationController)init;
- (void)cancelRequest;
- (void)checkCanRequestDocument:(id)descriptor completion:(void *)completion;
- (void)requestDocument:(PKIdentityRequest *)request completion:(void *)completion;
@end

@implementation PKIdentityAuthorizationController

- (PKIdentityAuthorizationController)init
{
  v8.receiver = self;
  v8.super_class = PKIdentityAuthorizationController;
  v2 = [(PKIdentityAuthorizationController *)&v8 init];
  v3 = PKLogFacilityTypeGetObject(0x1FuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKIdentityAuthorizationController init", v7, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x1E6997DA8]);
  wrapped = v2->_wrapped;
  v2->_wrapped = v4;

  return v2;
}

- (void)checkCanRequestDocument:(id)descriptor completion:(void *)completion
{
  v6 = descriptor;
  v7 = completion;
  v8 = PKLogFacilityTypeGetObject(0x1FuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKIdentityAuthorizationController checkCanRequestDocument", buf, 2u);
  }

  v9 = DIIdentityDocumentDescriptorFromPKIdentityDocumentDescriptor(v6);
  if (v9)
  {
    wrapped = self->_wrapped;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PKIdentityAuthorizationController_checkCanRequestDocument_completion___block_invoke;
    v11[3] = &unk_1E79C4888;
    v11[4] = self;
    v12 = v7;
    [(DIIdentityAuthorizationController *)wrapped checkCanRequestDocument:v9 completion:v11];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKIdentityAuthorizationController checkCanRequestDocument cannot convert descriptor to underlying representation", buf, 2u);
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)requestDocument:(PKIdentityRequest *)request completion:(void *)completion
{
  v6 = request;
  v7 = completion;
  v8 = PKLogFacilityTypeGetObject(0x1FuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKIdentityAuthorizationController requestDocumemnt", buf, 2u);
  }

  v9 = [(PKIdentityRequest *)v6 asDIIdentityRequest];
  wrapped = self->_wrapped;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKIdentityAuthorizationController_requestDocument_completion___block_invoke;
  v12[3] = &unk_1E79D9E08;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [(DIIdentityAuthorizationController *)wrapped requestDocument:v9 completion:v12];
}

void __64__PKIdentityAuthorizationController_requestDocument_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = PKIdentityErrorFromDIIdentityError(v6);
    v9 = PKLogFacilityTypeGetObject(0x1FuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKIdentityAuthorizationController requestDocument returning error %@", &v13, 0xCu);
    }

LABEL_8:

    v10 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  if (v5)
  {
    v8 = [[PKIdentityDocument alloc] initWithDIIdentityDocument:v5];
    v9 = PKLogFacilityTypeGetObject(0x1FuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKIdentityAuthorizationController requestDocument returning successfully", &v13, 2u);
    }

    goto LABEL_8;
  }

  v11 = PKLogFacilityTypeGetObject(0x1FuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKIdentityAuthorizationController requestDocument returned document is nil", &v13, 2u);
  }

  v12 = *(a1 + 40);
  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKIdentityErrorDomain" code:0 userInfo:0];
  v10 = *(v12 + 16);
LABEL_9:
  v10();
}

- (void)cancelRequest
{
  v3 = PKLogFacilityTypeGetObject(0x1FuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKIdentityAuthorizationController cancelRequest", v4, 2u);
  }

  [(DIIdentityAuthorizationController *)self->_wrapped cancelRequest];
}

@end