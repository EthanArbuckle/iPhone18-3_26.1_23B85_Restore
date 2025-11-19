@interface PKProximitySetupSourceClient
- (BOOL)startWithSession:(id)a3;
- (PKProximitySetupSourceClient)init;
- (void)invalidate;
@end

@implementation PKProximitySetupSourceClient

- (PKProximitySetupSourceClient)init
{
  v3.receiver = self;
  v3.super_class = PKProximitySetupSourceClient;
  result = [(PKProximitySetupSourceClient *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_isValid = 1;
  }

  return result;
}

- (BOOL)startWithSession:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  isValid = self->_isValid;
  os_unfair_lock_unlock(&self->_lock);
  v6 = PKLogFacilityTypeGetObject(0x23uLL);
  v7 = v6;
  if (!isValid)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKProximitySetupSourceClient: start called while already invalid", buf, 2u);
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKProximitySetupSourceClient: starting with template session", buf, 2u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PKProximitySetupSourceClient_startWithSession___block_invoke;
  v9[3] = &unk_1E79C9640;
  v9[4] = self;
  [PKSharingChannelHandle bootstrapSetupAssistantProximityChannelWithTemplateSession:v4 completion:v9];

  return 1;
}

void __49__PKProximitySetupSourceClient_startWithSession___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a2)
  {
    v8 = PKLogFacilityTypeGetObject(0x23uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      v10 = "PKProximitySetupSourceClient: Failed to bootstrapped proximity channel with error: %@";
      v11 = v8;
      v12 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 13) = *(*(a1 + 32) + 12);
  v6 = *(a1 + 32);
  v7 = *(v6 + 12);
  os_unfair_lock_unlock((v6 + 8));
  v8 = PKLogFacilityTypeGetObject(0x23uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      LOWORD(v13) = 0;
      v10 = "PKProximitySetupSourceClient: successfully bootstrapped proximity channel";
      v11 = v8;
      v12 = 2;
LABEL_7:
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v10, &v13, v12);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKProximitySetupSourceClient: successfully bootstrapped proximity channel, but client invalidated", &v13, 2u);
  }

  +[PKSharingChannelHandle terminateSetupAssistantProximityChannel];
LABEL_12:
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  isValid = self->_isValid;
  bootstrapped = self->_bootstrapped;
  *&self->_isValid = 0;
  os_unfair_lock_unlock(&self->_lock);
  if (isValid)
  {
    v5 = PKLogFacilityTypeGetObject(0x23uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKProximitySetupSourceClient: invalidating", v6, 2u);
    }

    if (bootstrapped)
    {
      +[PKSharingChannelHandle terminateSetupAssistantProximityChannel];
    }
  }
}

@end