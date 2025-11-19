@interface PKPaymentCloudStoreZoneCreationManager
- (PKPaymentCloudStoreZoneCreationManager)initWithWebService:(id)a3;
- (void)triggerCloudStoreZoneCreationIfNeededForEligibilityResponse:(id)a3 completion:(id)a4;
@end

@implementation PKPaymentCloudStoreZoneCreationManager

- (PKPaymentCloudStoreZoneCreationManager)initWithWebService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentCloudStoreZoneCreationManager;
  v6 = [(PKPaymentCloudStoreZoneCreationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webService, a3);
  }

  return v7;
}

- (void)triggerCloudStoreZoneCreationIfNeededForEligibilityResponse:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 supplementaryData];
    v9 = [v8 lightweightAccount];

    if (v9)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__82;
      v27 = __Block_byref_object_dispose__82;
      v28 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v10 = *(*(&buf + 1) + 40);
      v11 = dispatch_time(0, 120000000000);
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      v12 = *(*(&buf + 1) + 40);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __113__PKPaymentCloudStoreZoneCreationManager_triggerCloudStoreZoneCreationIfNeededForEligibilityResponse_completion___block_invoke;
      handler[3] = &unk_1E79DFB70;
      v13 = v9;
      v21 = v13;
      p_buf = &buf;
      v14 = v7;
      v22 = v14;
      dispatch_source_set_event_handler(v12, handler);
      dispatch_resume(*(*(&buf + 1) + 40));
      v15 = [(PKPaymentWebService *)self->_webService targetDevice];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __113__PKPaymentCloudStoreZoneCreationManager_triggerCloudStoreZoneCreationIfNeededForEligibilityResponse_completion___block_invoke_14;
      v17[3] = &unk_1E79E2F60;
      v19 = &buf;
      v18 = v14;
      [v15 triggerCloudStoreZoneCreationForAccount:v13 withCompletion:v17];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v16 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "No account found, skipping cloud store zone creation for eligibility response %@", &buf, 0xCu);
      }

      (*(v7 + 2))(v7, 1);
    }
  }
}

NSObject *__113__PKPaymentCloudStoreZoneCreationManager_triggerCloudStoreZoneCreationIfNeededForEligibilityResponse_completion___block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Timed out waiting for cloud store zone creation for account %@", &v7, 0xCu);
  }

  result = *(*(a1[6] + 8) + 40);
  if (result)
  {
    dispatch_source_cancel(result);
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    return (*(a1[5] + 16))();
  }

  return result;
}

NSObject *__113__PKPaymentCloudStoreZoneCreationManager_triggerCloudStoreZoneCreationIfNeededForEligibilityResponse_completion___block_invoke_14(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Cloud store zone creation triggered with success: %@", &v9, 0xCu);
  }

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    dispatch_source_cancel(result);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    return (*(*(a1 + 32) + 16))();
  }

  return result;
}

@end