@interface FABuyStorageHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_invokeBuyStorageWithServerAttributes:(id)attributes completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation FABuyStorageHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"family:buyStorage"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"family:buyStorage"];

  return v5;
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  [(FABuyStorageHook *)self _invokeBuyStorageWithServerAttributes:clientInfo completion:completionCopy];
}

- (void)_invokeBuyStorageWithServerAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  if (self->_loadingStorage)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Already loading storage. Bailing", buf, 2u);
    }
  }

  else
  {
    self->_loadingStorage = 1;
    v8 = _Block_copy(completion);
    completion = self->_completion;
    self->_completion = v8;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained presentationContextForHook:self];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_alloc_init(MEMORY[0x277D7F4D0]);
      storageOffersManager = self->_storageOffersManager;
      self->_storageOffersManager = v11;

      [(ICQUICloudStorageOffersManager *)self->_storageOffersManager setDelegate:self];
      [(ICQUICloudStorageOffersManager *)self->_storageOffersManager setShouldOfferFamilySharePlansOnly:1];
      v13 = [attributesCopy objectForKeyedSubscript:@"requiredStorageThreshold"];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = [attributesCopy objectForKeyedSubscript:@"requiredStorageThreshold"];
        -[ICQUICloudStorageOffersManager setRequiredStorageThreshold:](self->_storageOffersManager, "setRequiredStorageThreshold:", [v15 longLongValue]);
      }

      [(ICQUICloudStorageOffersManager *)self->_storageOffersManager beginFlowWithNavigationController:v7 modally:1];
    }

    else
    {
      v16 = _FALogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_21BB35000, v16, OS_LOG_TYPE_DEFAULT, "Unable to present buy storage, we need a navigation controller", v20, 2u);
      }

      v17 = self->_completion;
      if (v17)
      {
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D080B8] code:-1000 userInfo:0];
        v17[2](v17, 0, v18);

        v19 = self->_completion;
        self->_completion = 0;
      }
    }
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end