@interface PKDAPairingSessionManager
- (PKDAPairingSessionManager)initWithQueue:(id)queue sessionCreationBlock:(id)block;
- (void)appletSubcredentialPairingSession:(id)session didEndPairingWithError:(id)error;
- (void)appletSubcredentialPairingSession:(id)session didEndPairingWithSubcredential:(id)subcredential registrationData:(id)data;
- (void)appletSubcredentialPairingSession:(id)session didFinishPreWarmWithResult:(id)result;
- (void)appletSubcredentialPairingSession:(id)session didFinishProbingTerminalWithError:(id)error brandCode:(unint64_t)code;
- (void)appletSubcredentialPairingSessionDidBeginPairing:(id)pairing;
- (void)appletSubcredentialPairingSessionDidFirstTransaction:(id)transaction withError:(id)error;
@end

@implementation PKDAPairingSessionManager

- (PKDAPairingSessionManager)initWithQueue:(id)queue sessionCreationBlock:(id)block
{
  v8.receiver = self;
  v8.super_class = PKDAPairingSessionManager;
  v4 = [(PKDASessionManager *)&v8 initWithQueue:queue sessionCreationBlock:block];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    probingCompletionBlocks = v4->_probingCompletionBlocks;
    v4->_probingCompletionBlocks = v5;
  }

  return v4;
}

- (void)appletSubcredentialPairingSessionDidBeginPairing:(id)pairing
{
  v3 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Pairing session API called on unspported object", v4, 2u);
  }
}

- (void)appletSubcredentialPairingSession:(id)session didEndPairingWithSubcredential:(id)subcredential registrationData:(id)data
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

- (void)appletSubcredentialPairingSession:(id)session didEndPairingWithError:(id)error
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

- (void)appletSubcredentialPairingSessionDidFirstTransaction:(id)transaction withError:(id)error
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

- (void)appletSubcredentialPairingSession:(id)session didFinishPreWarmWithResult:(id)result
{
  resultCopy = result;
  queue = [(PKDASessionManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__PKDAPairingSessionManager_appletSubcredentialPairingSession_didFinishPreWarmWithResult___block_invoke;
  v8[3] = &unk_1E79C4DD8;
  v9 = resultCopy;
  selfCopy = self;
  v7 = resultCopy;
  dispatch_async(queue, v8);
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

- (void)appletSubcredentialPairingSession:(id)session didFinishProbingTerminalWithError:(id)error brandCode:(unint64_t)code
{
  errorCopy = error;
  queue = [(PKDASessionManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__PKDAPairingSessionManager_appletSubcredentialPairingSession_didFinishProbingTerminalWithError_brandCode___block_invoke;
  block[3] = &unk_1E79CBF50;
  v11 = errorCopy;
  selfCopy = self;
  codeCopy = code;
  v9 = errorCopy;
  dispatch_async(queue, block);
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