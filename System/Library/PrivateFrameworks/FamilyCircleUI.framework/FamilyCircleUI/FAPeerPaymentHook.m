@interface FAPeerPaymentHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_handlePeerPaymentActionWithAttributes:(id)a3 completion:(id)a4;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation FAPeerPaymentHook

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"family:peerPayment"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"family:peerPayment"];

  return v5;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = [a3 attributes];
  [(FAPeerPaymentHook *)self _handlePeerPaymentActionWithAttributes:v9 completion:v8];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 clientInfo];
  [(FAPeerPaymentHook *)self _handlePeerPaymentActionWithAttributes:v7 completion:v6];
}

- (void)_handlePeerPaymentActionWithAttributes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"handleInHook"];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = [WeakRetained presentationContextForHook:self];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      v12 = [[FAAppleCashPresentationHandler alloc] initWithNavigationController:v11];

      [(FAPeerPaymentHook *)self setAppleCashPresentationHandler:v12];
      v13 = [(FAPeerPaymentHook *)self appleCashPresentationHandler];
      [v13 presentPeerPaymentControllerWithAttributes:v6 completion:&__block_literal_global_0];
    }

    else
    {
      v13 = _FALogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [FAPeerPaymentHook _handlePeerPaymentActionWithAttributes:v10 completion:v13];
      }
    }
  }

  else
  {
    v7[2](v7, 1, 0);
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handlePeerPaymentActionWithAttributes:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 138412290;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "FAPeerPaymentHook - Expected Navigation controller but got %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end