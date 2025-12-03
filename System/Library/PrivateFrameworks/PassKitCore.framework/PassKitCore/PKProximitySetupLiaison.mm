@interface PKProximitySetupLiaison
- (PKProximitySetupLiaison)initWithStartTransferAuthorization:(id)authorization endTransferAuthorization:(id)transferAuthorization fetchMessageSession:(id)session;
- (void)endTransferAuthorization;
- (void)fetchMessageSessionWithCompletion:(id)completion;
- (void)startTransferAuthorization;
@end

@implementation PKProximitySetupLiaison

void __87__PKProximitySetupLiaison_initWithStartTransferAuthorization_endTransferAuthorization___block_invoke(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = a2;
  v5 = [v3 errorWithDomain:@"PKPassKitErrorDomain" code:0 userInfo:0];
  (a2)[2](v4, 0, v5);
}

- (PKProximitySetupLiaison)initWithStartTransferAuthorization:(id)authorization endTransferAuthorization:(id)transferAuthorization fetchMessageSession:(id)session
{
  authorizationCopy = authorization;
  transferAuthorizationCopy = transferAuthorization;
  sessionCopy = session;
  v19.receiver = self;
  v19.super_class = PKProximitySetupLiaison;
  v11 = [(PKProximitySetupLiaison *)&v19 init];
  if (v11)
  {
    v12 = _Block_copy(authorizationCopy);
    startTransferAuthorization = v11->_startTransferAuthorization;
    v11->_startTransferAuthorization = v12;

    v14 = _Block_copy(transferAuthorizationCopy);
    endTransferAuthorization = v11->_endTransferAuthorization;
    v11->_endTransferAuthorization = v14;

    v16 = _Block_copy(sessionCopy);
    fetchMessageSession = v11->_fetchMessageSession;
    v11->_fetchMessageSession = v16;
  }

  return v11;
}

- (void)startTransferAuthorization
{
  v3 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKProximitySetupLiaison: startTransferAuthorization", v4, 2u);
  }

  (*(self->_startTransferAuthorization + 2))();
}

- (void)endTransferAuthorization
{
  v3 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKProximitySetupLiaison: endTransferAuthorization", v4, 2u);
  }

  (*(self->_endTransferAuthorization + 2))();
}

- (void)fetchMessageSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKProximitySetupLiaison: fetchMessageSession", buf, 2u);
    }

    objc_initWeak(buf, self);
    fetchMessageSession = self->_fetchMessageSession;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PKProximitySetupLiaison_fetchMessageSessionWithCompletion___block_invoke;
    v7[3] = &unk_1E79DA668;
    objc_copyWeak(&v9, buf);
    v8 = completionCopy;
    fetchMessageSession[2](fetchMessageSession, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

void __61__PKProximitySetupLiaison_fetchMessageSessionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = v5 == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    WeakRetained[32] = v9;
  }

  v10 = WeakRetained;
  (*(*(a1 + 32) + 16))();
}

@end