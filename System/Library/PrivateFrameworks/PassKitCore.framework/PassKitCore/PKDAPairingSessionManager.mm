@interface PKDAPairingSessionManager
- (PKDAPairingSessionManager)initWithQueue:(id)a3 sessionCreationBlock:(id)a4;
- (void)appletSubcredentialPairingSession:(id)a3 didEndPairingWithError:(id)a4;
- (void)appletSubcredentialPairingSession:(id)a3 didEndPairingWithSubcredential:(id)a4 registrationData:(id)a5;
- (void)appletSubcredentialPairingSession:(id)a3 didFinishPreWarmWithResult:(id)a4;
- (void)appletSubcredentialPairingSession:(id)a3 didFinishProbingTerminalWithError:(id)a4 brandCode:(unint64_t)a5;
- (void)appletSubcredentialPairingSessionDidBeginPairing:(id)a3;
- (void)appletSubcredentialPairingSessionDidFirstTransaction:(id)a3 withError:(id)a4;
@end

@implementation PKDAPairingSessionManager

- (PKDAPairingSessionManager)initWithQueue:(id)a3 sessionCreationBlock:(id)a4
{
  v8.receiver = self;
  v8.super_class = PKDAPairingSessionManager;
  v4 = [(PKDASessionManager *)&v8 initWithQueue:a3 sessionCreationBlock:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    probingCompletionBlocks = v4->_probingCompletionBlocks;
    v4->_probingCompletionBlocks = v5;
  }

  return v4;
}

- (void)appletSubcredentialPairingSessionDidBeginPairing:(id)a3
{
  v3 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Pairing session API called on unspported object", v4, 2u);
  }
}

- (void)appletSubcredentialPairingSession:(id)a3 didEndPairingWithSubcredential:(id)a4 registrationData:(id)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Pairing session API called on unsupported object: %@", &v8, 0xCu);
  }
}

- (void)appletSubcredentialPairingSession:(id)a3 didEndPairingWithError:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Pairing session API called on unsupported object: %@", &v7, 0xCu);
  }
}

- (void)appletSubcredentialPairingSessionDidFirstTransaction:(id)a3 withError:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Pairing session API called on unsupported object: %@", &v7, 0xCu);
  }
}

- (void)appletSubcredentialPairingSession:(id)a3 didFinishPreWarmWithResult:(id)a4
{
  v5 = a4;
  v6 = [(PKDASessionManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__PKDAPairingSessionManager_appletSubcredentialPairingSession_didFinishPreWarmWithResult___block_invoke;
  v8[3] = &unk_1E79C4DD8;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __90__PKDAPairingSessionManager_appletSubcredentialPairingSession_didFinishPreWarmWithResult___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Finished prewarming with result: %@", &v7, 0xCu);
  }

  v4 = *(*(a1 + 40) + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 32));
    v5 = *(a1 + 40);
    v6 = *(v5 + 64);
    *(v5 + 64) = 0;
  }
}

- (void)appletSubcredentialPairingSession:(id)a3 didFinishProbingTerminalWithError:(id)a4 brandCode:(unint64_t)a5
{
  v7 = a4;
  v8 = [(PKDASessionManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__PKDAPairingSessionManager_appletSubcredentialPairingSession_didFinishProbingTerminalWithError_brandCode___block_invoke;
  block[3] = &unk_1E79CBF50;
  v11 = v7;
  v12 = self;
  v13 = a5;
  v9 = v7;
  dispatch_async(v8, block);
}

void __107__PKDAPairingSessionManager_appletSubcredentialPairingSession_didFinishProbingTerminalWithError_brandCode___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v2 == 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Finished probing terminal, pairing mode: %ld", buf, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 56) copy];
  [*(*(a1 + 40) + 56) removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  *(*(a1 + 40) + 48) = 0;
}

@end