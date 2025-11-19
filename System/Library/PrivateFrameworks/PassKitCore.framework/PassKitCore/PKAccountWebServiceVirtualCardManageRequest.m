@interface PKAccountWebServiceVirtualCardManageRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
- (void)setAction:(int64_t)a3 withQueue:(id)a4 completion:(id)a5;
@end

@implementation PKAccountWebServiceVirtualCardManageRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_baseURL)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138543618;
    v30 = v18;
    v31 = 2082;
    v32 = "_baseURL";
LABEL_28:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_29;
  }

  if (!v4)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    *buf = 138543618;
    v30 = v18;
    v31 = 2082;
    v32 = "appleAccountInformation";
    goto LABEL_28;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v20 = objc_opt_class();
    v18 = NSStringFromClass(v20);
    *buf = 138543618;
    v30 = v18;
    v31 = 2082;
    v32 = "_accountIdentifier";
    goto LABEL_28;
  }

  virtualCardIdentifier = self->_virtualCardIdentifier;
  if (!virtualCardIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v21 = objc_opt_class();
    v18 = NSStringFromClass(v21);
    *buf = 138543618;
    v30 = v18;
    v31 = 2082;
    v32 = "_virtualCardIdentifier";
    goto LABEL_28;
  }

  if (!self->_action)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v18 = NSStringFromClass(v22);
      *buf = 138543618;
      v30 = v18;
      v31 = 2082;
      v32 = "_action";
      goto LABEL_28;
    }

LABEL_29:
    v23 = 0;
    goto LABEL_30;
  }

  v28[0] = @"accounts";
  v28[1] = accountIdentifier;
  v28[2] = @"virtualCards";
  v28[3] = virtualCardIdentifier;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  v9 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v5];
  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = v10;
  action = self->_action;
  v13 = @"fetch";
  if (action > 3)
  {
    v14 = @"enableDynamicSecurityCode";
    v15 = @"disableDynamicSecurityCode";
    if (action != 7)
    {
      v15 = @"fetch";
    }

    if (action != 6)
    {
      v14 = v15;
    }

    if (action == 5)
    {
      v13 = @"disable";
    }

    if (action == 4)
    {
      v13 = @"enable";
    }

    if (action <= 5)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

LABEL_39:
    [v10 setObject:v16 forKey:@"action"];
    goto LABEL_40;
  }

  if (action)
  {
    if (action == 3)
    {
      v13 = @"replace";
    }

    if (action == 2)
    {
      v16 = @"cancel";
    }

    else
    {
      v16 = v13;
    }

    goto LABEL_39;
  }

LABEL_40:
  encryptionFields = self->_encryptionFields;
  if (encryptionFields)
  {
    v26 = [(PKVirtualCardEncryptionFields *)encryptionFields dictionaryRepresentation];
    [v11 setObject:v26 forKey:@"encryptionFields"];
  }

  if (v11)
  {
    v27 = [objc_opt_class() _HTTPBodyWithDictionary:v11];
    [v9 setHTTPBody:v27];
  }

  v23 = [v9 copy];

LABEL_30:

  return v23;
}

- (void)setAction:(int64_t)a3 withQueue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  self->_action = a3;
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    objc_initWeak(&location, self);
    v11 = objc_alloc_init(PKVirtualCardEncryptionFields);
    encryptionFields = self->_encryptionFields;
    self->_encryptionFields = v11;

    v13 = self->_encryptionFields;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__PKAccountWebServiceVirtualCardManageRequest_setAction_withQueue_completion___block_invoke;
    v14[3] = &unk_1E79C9AE0;
    v15 = v10;
    objc_copyWeak(&v16, &location);
    [(PKVirtualCardEncryptionFields *)v13 prepareCertificateWithQueue:v8 completion:v14];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, self);
  }
}

void __78__PKAccountWebServiceVirtualCardManageRequest_setAction_withQueue_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    (*(v1 + 16))(v1, WeakRetained);
  }
}

@end