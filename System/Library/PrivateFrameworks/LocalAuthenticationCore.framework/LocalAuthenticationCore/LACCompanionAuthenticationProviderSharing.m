@interface LACCompanionAuthenticationProviderSharing
- (LACCompanionAuthenticationProviderDelegate)delegate;
- (id)_domainStateDictionaryForJoinedIDs:(id)a3;
- (id)authenticateWithRequest:(id)a3;
- (id)initForCompanion:(int64_t)a3 replyQueue:(id)a4;
- (void)domainStateForRequest:(id)a3 completion:(id)a4;
- (void)manager:(id)a3 didCompleteSessionWithID:(id)a4;
- (void)manager:(id)a3 didFailSessionWithID:(id)a4 error:(id)a5;
- (void)manager:(id)a3 didStartSessionWithID:(id)a4;
@end

@implementation LACCompanionAuthenticationProviderSharing

- (id)initForCompanion:(int64_t)a3 replyQueue:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = LACCompanionAuthenticationProviderSharing;
  v7 = [(LACCompanionAuthenticationProviderSharing *)&v12 init];
  p_isa = &v7->super.isa;
  if (v7)
  {
    v7->_companion = a3;
    v9 = [[LACSharingManager alloc] initWithReplyQueue:v6];
    v10 = p_isa[2];
    p_isa[2] = v9;

    [p_isa[2] setDelegate:p_isa];
  }

  return p_isa;
}

- (id)authenticateWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[LACCompanionAuthenticationSignpostEvent authenticationRequestWillStart];
  [v5 send];

  v6 = [(LACSharingManaging *)self->_sharingManager authenticateWithRequest:v4];

  v7 = +[LACCompanionAuthenticationSignpostEvent authenticationRequestDidFinish];
  [v7 send];

  return v6;
}

- (void)domainStateForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[LACCompanionAuthenticationSignpostEvent eligibleDevicesRequestWillStart];
  [v8 send];

  objc_initWeak(&location, self);
  p_companion = &self->_companion;
  companion = self->_companion;
  v10 = p_companion[1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__LACCompanionAuthenticationProviderSharing_domainStateForRequest_completion___block_invoke;
  v13[3] = &unk_1E7A95C40;
  objc_copyWeak(&v15, &location);
  v12 = v7;
  v14 = v12;
  [v10 pairedDevicesForCompanion:companion completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __78__LACCompanionAuthenticationProviderSharing_domainStateForRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = +[LACCompanionAuthenticationSignpostEvent eligibleDevicesRequestDidFinish];
  [v6 send];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([v11 count])
    {
      v8 = [v11 sortedArrayUsingSelector:sel_compare_];
      v9 = [v8 componentsJoinedByString:{@", "}];

      v10 = [WeakRetained _domainStateDictionaryForJoinedIDs:v9];
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)manager:(id)a3 didStartSessionWithID:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  [WeakRetained authenticationProvider:self didStartAuthenticationWithID:v5];
}

- (void)manager:(id)a3 didCompleteSessionWithID:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  [WeakRetained authenticationProvider:self didCompleteAuthenticationWithID:v5];
}

- (void)manager:(id)a3 didFailSessionWithID:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  [WeakRetained authenticationProvider:self didFailAuthenticationWithID:v8 error:v7];
}

- (id)_domainStateDictionaryForJoinedIDs:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 dataUsingEncoding:4];
  v5 = [LACDomainStateDecorator createHashForDomainState:v4];
  v18 = @"kLACDomainStateResultKeyAvailableCompanionTypes";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_companion];
  v16 = v6;
  v17 = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v9 = [v8 mutableCopy];

  if (v5)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_companion];
    v14 = v10;
    v15 = v5;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v9 setObject:v11 forKeyedSubscript:@"kLACDomainStateResultKeyCompanionStateHashes"];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (LACCompanionAuthenticationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end