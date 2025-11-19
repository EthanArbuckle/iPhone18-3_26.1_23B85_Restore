@interface PKIDSBatchIDQueryControllerWrapper
- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6;
- (void)reachableDestinationsForDestination:(id)a3 service:(id)a4 queue:(id)a5 completion:(id)a6;
@end

@implementation PKIDSBatchIDQueryControllerWrapper

- (void)reachableDestinationsForDestination:(id)a3 service:(id)a4 queue:(id)a5 completion:(id)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (!self->_hasRunQuery)
  {
    self->_hasRunQuery = 1;
    v10 = MEMORY[0x1E69A4840];
    v11 = a6;
    v12 = a5;
    v13 = a4;
    v14 = a3;
    v15 = [[v10 alloc] initWithService:v13 delegate:self queue:v12];

    batchIDQueryController = self->_batchIDQueryController;
    self->_batchIDQueryController = v15;

    v17 = PKIDSNormalizedAddress(v14);

    v18 = self->_batchIDQueryController;
    v26[0] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [(IDSBatchIDQueryController *)v18 setDestinations:v19];

    v20 = _Block_copy(v11);
    completion = self->_completion;
    self->_completion = v20;

    objc_initWeak(&location, self);
    v22 = dispatch_time(0, 20000000000);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __99__PKIDSBatchIDQueryControllerWrapper_reachableDestinationsForDestination_service_queue_completion___block_invoke;
    v23[3] = &unk_1E79C9D80;
    objc_copyWeak(&v24, &location);
    dispatch_after(v22, MEMORY[0x1E69E96A0], v23);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __99__PKIDSBatchIDQueryControllerWrapper_reachableDestinationsForDestination_service_queue_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[1])
  {
    v3 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKIDSBatchIDQueryControllerWrapper: ERROR timed out waiting for IDS batch query callback", v4, 2u);
    }

    (*(v2[1] + 16))();
  }
}

- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6
{
  if (self->_completion)
  {
    v8 = a6;
    v9 = [a4 keysOfEntriesPassingTest:&__block_literal_global_112];
    v12 = [v9 allObjects];

    v10 = v12;
    if (v8)
    {
      v10 = 0;
    }

    (*(self->_completion + 2))(self->_completion, v10, v8);

    completion = self->_completion;
    self->_completion = 0;
  }
}

@end