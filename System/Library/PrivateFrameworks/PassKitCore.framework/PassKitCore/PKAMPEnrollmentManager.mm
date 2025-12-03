@interface PKAMPEnrollmentManager
+ (id)sharedManager;
- (BOOL)shouldOfferAMPEnrollmentForPaymentPass:(id)pass;
- (PKAMPEnrollmentManager)init;
- (id)performCanEnrollPaymentPass:(id)pass;
- (id)performEnrollPaymentPass:(id)pass isDefault:(BOOL)default;
- (void)_accessObserversWithHandler:(id)handler;
- (void)canEnrollPaymentPass:(id)pass completion:(id)completion;
- (void)enrollPaymentPass:(id)pass isDefault:(BOOL)default completion:(id)completion;
- (void)enrollmentStatusForPaymentPass:(id)pass completion:(id)completion progress:(id)progress;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation PKAMPEnrollmentManager

+ (id)sharedManager
{
  if (_MergedGlobals_220 != -1)
  {
    dispatch_once(&_MergedGlobals_220, &__block_literal_global_94);
  }

  v3 = qword_1ED6D1A68;

  return v3;
}

void __39__PKAMPEnrollmentManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(PKAMPEnrollmentManager);
  v1 = qword_1ED6D1A68;
  qword_1ED6D1A68 = v0;
}

- (PKAMPEnrollmentManager)init
{
  v14.receiver = self;
  v14.super_class = PKAMPEnrollmentManager;
  v2 = [(PKAMPEnrollmentManager *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(PKInAppPaymentService);
    service = v2->_service;
    v2->_service = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    promiseMap = v2->_promiseMap;
    v2->_promiseMap = v5;

    v7 = dispatch_queue_create("com.apple.PassKit.PKAMPEnrollmentManager.internal", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v7;

    v9 = dispatch_queue_create("com.apple.PassKit.PKAMPEnrollmentManager.callback", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v9;

    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v2->_observers;
    v2->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    v2->_lockObservers._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)enrollmentStatusForPaymentPass:(id)pass completion:(id)completion progress:(id)progress
{
  passCopy = pass;
  completionCopy = completion;
  progressCopy = progress;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__PKAMPEnrollmentManager_enrollmentStatusForPaymentPass_completion_progress___block_invoke;
  v15[3] = &unk_1E79D2668;
  v15[4] = self;
  v16 = passCopy;
  v17 = completionCopy;
  v18 = progressCopy;
  v12 = progressCopy;
  v13 = completionCopy;
  v14 = passCopy;
  dispatch_async(internalQueue, v15);
}

void __77__PKAMPEnrollmentManager_enrollmentStatusForPaymentPass_completion_progress___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) uniqueID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__PKAMPEnrollmentManager_enrollmentStatusForPaymentPass_completion_progress___block_invoke_4;
    v11[3] = &unk_1E79C4E50;
    v7 = &v12;
    v12 = *(a1 + 48);
    [v9 canEnrollPaymentPass:v10 completion:v11];
    goto LABEL_5;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PKAMPEnrollmentManager_enrollmentStatusForPaymentPass_completion_progress___block_invoke_2;
    block[3] = &unk_1E79C4428;
    v7 = &v16;
    v16 = v5;
    dispatch_async(v6, block);
    v8 = *(*(a1 + 32) + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__PKAMPEnrollmentManager_enrollmentStatusForPaymentPass_completion_progress___block_invoke_3;
    v13[3] = &unk_1E79C7B80;
    v14 = *(a1 + 56);
    [v4 pk_addQueue:v8 finishBlock:v13];

LABEL_5:
  }
}

void __77__PKAMPEnrollmentManager_enrollmentStatusForPaymentPass_completion_progress___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v9 BOOLValue];
    if (v5)
    {
      v8 = _EnrollmentErrorWithUnderlyingError(v5);
      (*(v6 + 16))(v6, v7, v8);
    }

    else
    {
      (*(v6 + 16))(v6, v7, 0);
    }
  }
}

void __77__PKAMPEnrollmentManager_enrollmentStatusForPaymentPass_completion_progress___block_invoke_4(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v8 = v5;
    if (v5)
    {
      v7 = _EnrollmentErrorWithUnderlyingError(v5);
      (*(v6 + 16))(v6, a2, v7);
    }

    else
    {
      (*(v6 + 16))(v6, a2, 0);
    }

    v5 = v8;
  }
}

- (void)canEnrollPaymentPass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  v7 = [(PKAMPEnrollmentManager *)self performCanEnrollPaymentPass:pass];
  if (v7)
  {
    callbackQueue = self->_callbackQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PKAMPEnrollmentManager_canEnrollPaymentPass_completion___block_invoke;
    v13[3] = &unk_1E79C7B80;
    v9 = &v14;
    v14 = completionCopy;
    [v7 pk_addQueue:callbackQueue finishBlock:v13];
LABEL_5:

    goto LABEL_6;
  }

  if (completionCopy)
  {
    v10 = self->_callbackQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PKAMPEnrollmentManager_canEnrollPaymentPass_completion___block_invoke_2;
    v11[3] = &unk_1E79C4428;
    v9 = &v12;
    v12 = completionCopy;
    dispatch_async(v10, v11);
    goto LABEL_5;
  }

LABEL_6:
}

void __58__PKAMPEnrollmentManager_canEnrollPaymentPass_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v9 BOOLValue];
    if (v5)
    {
      v8 = _EnrollmentErrorWithUnderlyingError(v5);
      (*(v6 + 16))(v6, v7, v8);
    }

    else
    {
      (*(v6 + 16))(v6, v7, 0);
    }
  }
}

void __58__PKAMPEnrollmentManager_canEnrollPaymentPass_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)performCanEnrollPaymentPass:(id)pass
{
  v4 = MEMORY[0x1E698C838];
  passCopy = pass;
  v6 = [v4 alloc];
  _bag = [(PKAMPEnrollmentManager *)self _bag];
  issuerCountryCode = [passCopy issuerCountryCode];
  v9 = [v6 initWithBag:_bag countryCode:issuerCountryCode];

  passTypeIdentifier = [passCopy passTypeIdentifier];
  serialNumber = [passCopy serialNumber];

  v12 = [v9 performCanWriteBillingInfoQueryWithPassTypeIdentifier:passTypeIdentifier serialNumber:serialNumber];

  if (v12)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__PKAMPEnrollmentManager_performCanEnrollPaymentPass___block_invoke;
    v14[3] = &unk_1E79D2690;
    v15 = v9;
    [v12 addFinishBlock:v14];
  }

  return v12;
}

- (void)enrollPaymentPass:(id)pass isDefault:(BOOL)default completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKAMPEnrollmentManager_enrollPaymentPass_isDefault_completion___block_invoke;
  v13[3] = &unk_1E79C4F18;
  v13[4] = self;
  v14 = passCopy;
  defaultCopy = default;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = passCopy;
  dispatch_async(internalQueue, v13);
}

void __65__PKAMPEnrollmentManager_enrollPaymentPass_isDefault_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) performEnrollPaymentPass:*(a1 + 40) isDefault:*(a1 + 56)];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__PKAMPEnrollmentManager_enrollPaymentPass_isDefault_completion___block_invoke_2;
    v15[3] = &unk_1E79D26E0;
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v17 = v4;
    v15[4] = v5;
    v16 = v6;
    [v2 pk_addQueue:v3 finishBlock:v15];

    v7 = v17;
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(*(a1 + 32) + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__PKAMPEnrollmentManager_enrollPaymentPass_isDefault_completion___block_invoke_4;
      block[3] = &unk_1E79C4428;
      v14 = v8;
      dispatch_async(v9, block);
    }

    v10 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__PKAMPEnrollmentManager_enrollPaymentPass_isDefault_completion___block_invoke_5;
    v11[3] = &unk_1E79D2708;
    v11[4] = v10;
    v12 = *(a1 + 40);
    [v10 _accessObserversWithHandler:v11];
    v7 = v12;
  }
}

void __65__PKAMPEnrollmentManager_enrollPaymentPass_isDefault_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 BOOLValue];
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = [v5 BOOLValue];
    if (v6)
    {
      v10 = _EnrollmentErrorWithUnderlyingError(v6);
      (*(v8 + 16))(v8, v9, v10);
    }

    else
    {
      (*(v8 + 16))(v8, v9, 0);
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PKAMPEnrollmentManager_enrollPaymentPass_isDefault_completion___block_invoke_3;
  v12[3] = &unk_1E79D26B8;
  v12[4] = v11;
  v13 = *(a1 + 40);
  v14 = v7;
  [v11 _accessObserversWithHandler:v12];
}

void __65__PKAMPEnrollmentManager_enrollPaymentPass_isDefault_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 ampEnrollmentManager:*(a1 + 32) didEnrollPaymentPass:*(a1 + 40) success:*(a1 + 48)];
  }
}

void __65__PKAMPEnrollmentManager_enrollPaymentPass_isDefault_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __65__PKAMPEnrollmentManager_enrollPaymentPass_isDefault_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 ampEnrollmentManager:*(a1 + 32) didEnrollPaymentPass:*(a1 + 40) success:0];
  }
}

- (BOOL)shouldOfferAMPEnrollmentForPaymentPass:(id)pass
{
  v19 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  if (([passCopy cardType] - 2) > 2)
  {
    devicePrimaryInAppPaymentApplication = [passCopy devicePrimaryInAppPaymentApplication];
    paymentNetworkIdentifier = [devicePrimaryInAppPaymentApplication paymentNetworkIdentifier];

    if (paymentNetworkIdentifier - 103 <= 0x25 && ((1 << (paymentNetworkIdentifier - 103)) & 0x3F5F087CF1) != 0 || paymentNetworkIdentifier <= 0x1E && ((1 << paymentNetworkIdentifier) & 0x77400000) != 0 || paymentNetworkIdentifier == 301)
    {
      v5 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        serialNumber = [passCopy serialNumber];
        v15 = 138412290;
        v16 = serialNumber;
        v7 = "Not presenting AMP offer for pass: %@ as it is not a supported credential type";
        goto LABEL_10;
      }
    }

    else
    {
      effectiveContactlessPaymentApplicationState = [passCopy effectiveContactlessPaymentApplicationState];
      if (effectiveContactlessPaymentApplicationState > 0xF)
      {
        goto LABEL_13;
      }

      v12 = effectiveContactlessPaymentApplicationState;
      if (((1 << effectiveContactlessPaymentApplicationState) & 0x7F9) == 0)
      {
        if (((1 << effectiveContactlessPaymentApplicationState) & 0x8006) == 0)
        {
          goto LABEL_13;
        }

        v5 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          serialNumber2 = [passCopy serialNumber];
          v15 = 138412546;
          v16 = serialNumber2;
          v17 = 2048;
          v18 = v12;
          _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Presenting AMP offer for pass: %@ state is %lu and has been Personalized or Personalizing", &v15, 0x16u);
        }

        v3 = 1;
        goto LABEL_12;
      }

      v5 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        serialNumber3 = [passCopy serialNumber];
        v15 = 138412546;
        v16 = serialNumber3;
        v17 = 2048;
        v18 = v12;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Not presenting AMP offer for pass: %@ state is %lu and needs to be Personalized or Personalizing", &v15, 0x16u);
      }
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      serialNumber = [passCopy serialNumber];
      v15 = 138412290;
      v16 = serialNumber;
      v7 = "Not presenting AMP offer for pass: %@ as it is not a valid card type";
LABEL_10:
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, v7, &v15, 0xCu);
    }
  }

  v3 = 0;
LABEL_12:

LABEL_13:
  return v3 & 1;
}

- (id)performEnrollPaymentPass:(id)pass isDefault:(BOOL)default
{
  passCopy = pass;
  promiseMap = self->_promiseMap;
  uniqueID = [passCopy uniqueID];
  v9 = [(NSMutableDictionary *)promiseMap objectForKeyedSubscript:uniqueID];

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __61__PKAMPEnrollmentManager_performEnrollPaymentPass_isDefault___block_invoke;
    v24[3] = &unk_1E79D2730;
    v24[4] = self;
    v11 = passCopy;
    v25 = v11;
    [v10 addFinishBlock:v24];
    v12 = self->_promiseMap;
    uniqueID2 = [v11 uniqueID];
    [(NSMutableDictionary *)v12 setObject:v10 forKeyedSubscript:uniqueID2];

    _bag = [(PKAMPEnrollmentManager *)self _bag];
    v15 = MEMORY[0x1E698C840];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__PKAMPEnrollmentManager_performEnrollPaymentPass_isDefault___block_invoke_3;
    v18[3] = &unk_1E79D2780;
    v9 = v10;
    v19 = v9;
    selfCopy = self;
    defaultCopy = default;
    v21 = v11;
    v22 = _bag;
    v16 = _bag;
    [v15 paymentSessionWithBag:v16 completion:v18];
  }

  return v9;
}

void __61__PKAMPEnrollmentManager_performEnrollPaymentPass_isDefault___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__PKAMPEnrollmentManager_performEnrollPaymentPass_isDefault___block_invoke_2;
  v4[3] = &unk_1E79C4DD8;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __61__PKAMPEnrollmentManager_performEnrollPaymentPass_isDefault___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [*(a1 + 40) uniqueID];
  [v1 setObject:0 forKeyedSubscript:v2];
}

void __61__PKAMPEnrollmentManager_performEnrollPaymentPass_isDefault___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) completionHandlerAdapter];
  if (v6)
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Failed to obtain merchant session: %@", buf, 0xCu);
    }

    (v7)[2](v7, 0, v6);
  }

  else
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = [*(a1 + 48) uniqueID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__PKAMPEnrollmentManager_performEnrollPaymentPass_isDefault___block_invoke_36;
    v11[3] = &unk_1E79D2758;
    v13 = v7;
    v14 = *(a1 + 64);
    v12 = *(a1 + 56);
    [v9 enrollPaymentPassWithUniqueIdentifier:v10 merchantSession:v5 completion:v11];
  }
}

void __61__PKAMPEnrollmentManager_performEnrollPaymentPass_isDefault___block_invoke_36(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v4 = MEMORY[0x1E698C848];
    v5 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__PKAMPEnrollmentManager_performEnrollPaymentPass_isDefault___block_invoke_2_38;
    v9[3] = &unk_1E79C4E50;
    v6 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v4 verifyPayment:a3 isDefault:v5 bag:v6 completion:v9];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }
}

void __61__PKAMPEnrollmentManager_performEnrollPaymentPass_isDefault___block_invoke_2_38(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = a3;
    v7 = [v4 numberWithBool:1];
    (*(v3 + 16))(v3);
  }

  else
  {
    v6 = *(v3 + 16);
    v7 = a3;
    v6(v3, 0);
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers addObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    observerCopy = v5;
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    observerCopy = v5;
  }
}

- (void)_accessObserversWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    os_unfair_lock_lock(&self->_lockObservers);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_lockObservers);
    callbackQueue = self->_callbackQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__PKAMPEnrollmentManager__accessObserversWithHandler___block_invoke;
    v8[3] = &unk_1E79C4A40;
    v9 = allObjects;
    v10 = handlerCopy;
    v7 = allObjects;
    dispatch_async(callbackQueue, v8);
  }
}

void __54__PKAMPEnrollmentManager__accessObserversWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end