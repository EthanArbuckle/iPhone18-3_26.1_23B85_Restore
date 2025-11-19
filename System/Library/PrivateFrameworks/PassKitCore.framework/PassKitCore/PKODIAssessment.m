@interface PKODIAssessment
- (BOOL)currentAssessmentDidTimeout;
- (BOOL)isAssessing;
- (PKODIAssessment)init;
- (id)currentAssessment;
- (void)_callAssessmentComputedBlocksAndDidTimeout:(BOOL)a3;
- (void)computeAssessment;
- (void)getAssessmentWithCompletion:(id)a3;
- (void)provideSessionFeedback:(unint64_t)a3;
- (void)startAssessment;
- (void)startAssessmentWithHostBundleIdentifier:(id)a3;
- (void)updateAssessment:(id)a3;
- (void)updateAssessmentWithHostBundleIdentifier:(id)a3;
- (void)updateAssessmentWithModel:(id)a3;
- (void)waitForAssessmentWithTimeout:(unint64_t)a3 startTimeoutFromAssessmentStart:(BOOL)a4 continueBlock:(id)a5;
@end

@implementation PKODIAssessment

- (PKODIAssessment)init
{
  v11.receiver = self;
  v11.super_class = PKODIAssessment;
  v2 = [(PKODIAssessment *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_create("com.apple.passkitcore.PKODIAssessment.work", 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v4;

    v6 = dispatch_queue_create("com.apple.passkitcore.PKODIAssessment.reply", 0);
    replyQueue = v3->_replyQueue;
    v3->_replyQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    assessmentComputedBlocks = v3->_assessmentComputedBlocks;
    v3->_assessmentComputedBlocks = v8;
  }

  return v3;
}

- (void)startAssessment
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PKODIAssessment_startAssessment__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __34__PKODIAssessment_startAssessment__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 20));
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "CoreODI session already in progress, discarding", &v6, 2u);
    }

    v2 = *(a1 + 32);
  }

  *(v2 + 33) = 1;
  [*(a1 + 32) createODISession];
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(a1 + 32) + 80) description];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Created ODISession: %@", &v6, 0xCu);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 20));
}

- (void)startAssessmentWithHostBundleIdentifier:(id)a3
{
  v4 = a3;
  [(PKODIAssessment *)self startAssessment];
  [(PKODIAssessment *)self updateAssessmentWithHostBundleIdentifier:v4];
}

- (void)updateAssessment:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__PKODIAssessment_updateAssessment___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __36__PKODIAssessment_updateAssessment___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isAssessing];
  v3 = PKLogFacilityTypeGetObject(7uLL);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(*(a1 + 32) + 80) description];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Updating CoreODI assessment on session: %@", &v6, 0xCu);
    }

    [*(*(a1 + 32) + 80) updateWithAdditionalAttributes:*(a1 + 40)];
  }

  else
  {
    if (v4)
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Assessment not underway, ignoring update", &v6, 2u);
    }
  }
}

- (BOOL)isAssessing
{
  os_unfair_lock_lock(&self->_lock);
  isAssessing = self->_isAssessing;
  os_unfair_lock_unlock(&self->_lock);
  return isAssessing;
}

- (void)updateAssessmentWithHostBundleIdentifier:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PKODIAssessment_updateAssessmentWithHostBundleIdentifier___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __60__PKODIAssessment_updateAssessmentWithHostBundleIdentifier___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isAssessing])
  {
    if (!*(a1 + 40))
    {
      return;
    }

    v2 = objc_alloc_init(MEMORY[0x1E69983B0]);
    v3 = *(a1 + 40);
    v6 = @"callerClientBundle";
    v7[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [v2 setAttributes:v4];

    [*(a1 + 32) updateAssessment:v2];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Assessment not underway, ignoring update", v5, 2u);
    }
  }
}

- (void)updateAssessmentWithModel:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PKODIAssessment_updateAssessmentWithModel___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __45__PKODIAssessment_updateAssessmentWithModel___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isAssessing])
  {
    v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2 = [*(a1 + 40) currencyCode];
    [v50 safelySetObject:v2 forKey:*MEMORY[0x1E6998420]];

    v3 = [*(a1 + 40) transactionAmount];
    [v50 safelySetObject:v3 forKey:*MEMORY[0x1E69984C0]];

    v4 = [*(a1 + 40) merchantName];
    [v50 safelySetObject:v4 forKey:*MEMORY[0x1E6998440]];

    v5 = [*(a1 + 40) pass];
    v6 = [v5 primaryAccountIdentifier];
    [v50 safelySetObject:v6 forKey:*MEMORY[0x1E6998428]];

    v7 = [*(a1 + 40) shippingEmail];
    v8 = [v7 emailAddresses];
    v9 = [v8 firstObject];
    v10 = [v9 value];

    v11 = [*(a1 + 40) shippingPhone];
    v12 = [v11 phoneNumbers];
    v13 = [v12 firstObject];
    v14 = [v13 value];
    v15 = [v14 stringValue];

    v16 = [*(a1 + 40) shippingAddress];
    v17 = [v16 postalAddresses];
    v18 = [v17 firstObject];
    v19 = [v18 value];

    v20 = [*(a1 + 40) billingAddress];
    v21 = [v20 postalAddresses];
    v22 = [v21 firstObject];
    v23 = [v22 value];

    [v50 safelySetObject:v10 forKey:*MEMORY[0x1E69984A0]];
    [v50 safelySetObject:v15 forKey:*MEMORY[0x1E69984B8]];
    v24 = [*(a1 + 40) billingAddress];
    v25 = [v24 givenName];
    [v50 safelySetObject:v25 forKey:*MEMORY[0x1E6998408]];

    v26 = [*(a1 + 40) billingAddress];
    v27 = [v26 familyName];
    [v50 safelySetObject:v27 forKey:*MEMORY[0x1E6998410]];

    v28 = [*(a1 + 40) shippingAddress];
    v29 = [v28 givenName];
    [v50 safelySetObject:v29 forKey:*MEMORY[0x1E69984A8]];

    v30 = [*(a1 + 40) shippingAddress];
    v31 = [v30 familyName];
    [v50 safelySetObject:v31 forKey:*MEMORY[0x1E69984B0]];

    if (v19)
    {
      v32 = [v19 street];
      [v50 safelySetObject:v32 forKey:*MEMORY[0x1E6998490]];

      v33 = [v19 subLocality];
      [v50 safelySetObject:v33 forKey:*MEMORY[0x1E6998498]];

      v34 = [v19 state];
      [v50 safelySetObject:v34 forKey:*MEMORY[0x1E6998488]];

      v35 = [v19 city];
      [v50 safelySetObject:v35 forKey:*MEMORY[0x1E6998468]];

      v36 = [v19 country];
      [v50 safelySetObject:v36 forKey:*MEMORY[0x1E6998470]];

      v37 = [v19 ISOCountryCode];
      [v50 safelySetObject:v37 forKey:*MEMORY[0x1E6998478]];

      v38 = [v19 postalCode];
      [v50 safelySetObject:v38 forKey:*MEMORY[0x1E6998480]];
    }

    if (v23)
    {
      v39 = [v23 street];
      [v50 safelySetObject:v39 forKey:*MEMORY[0x1E69983F8]];

      v40 = [v23 subLocality];
      [v50 safelySetObject:v40 forKey:*MEMORY[0x1E6998400]];

      v41 = [v23 state];
      [v50 safelySetObject:v41 forKey:*MEMORY[0x1E69983F0]];

      v42 = [v23 city];
      [v50 safelySetObject:v42 forKey:*MEMORY[0x1E69983D0]];

      v43 = [v23 country];
      [v50 safelySetObject:v43 forKey:*MEMORY[0x1E69983D8]];

      v44 = [v23 ISOCountryCode];
      [v50 safelySetObject:v44 forKey:*MEMORY[0x1E69983E0]];

      v45 = [v23 postalCode];
      [v50 safelySetObject:v45 forKey:*MEMORY[0x1E69983E8]];
    }

    v46 = [*(a1 + 40) pass];
    v47 = [v46 issuerCountryCode];
    [v50 safelySetObject:v47 forKey:@"issuerCountryCode"];

    v48 = objc_alloc_init(MEMORY[0x1E69983B0]);
    [v48 setAttributes:v50];
    [*(a1 + 32) updateAssessment:v48];
  }

  else
  {
    v49 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v49, OS_LOG_TYPE_DEFAULT, "Assessment not underway, ignoring update", buf, 2u);
    }
  }
}

- (void)computeAssessment
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PKODIAssessment_computeAssessment__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __36__PKODIAssessment_computeAssessment__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = PKLogFacilityTypeGetObject(7uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = [*(v2 + 80) description];
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Already computing CoreODI assessment on session: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = [*(v2 + 80) description];
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Computing CoreODI assessment on session: %@", buf, 0xCu);
    }

    *(*(a1 + 32) + 32) = 1;
    *(*(a1 + 32) + 40) = CFAbsoluteTimeGetCurrent();
    os_unfair_lock_lock((*(a1 + 32) + 20));
    *(*(a1 + 32) + 16) = 0;
    os_unfair_lock_unlock((*(a1 + 32) + 20));
    PKTimeProfileBegin(0, @"get_odi_assessment");
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__PKODIAssessment_computeAssessment__block_invoke_28;
    v9[3] = &unk_1E79CFFD8;
    v9[4] = v8;
    [v8 getAssessmentWithCompletion:v9];
  }
}

void __36__PKODIAssessment_computeAssessment__block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PKODIAssessment_computeAssessment__block_invoke_2;
  block[3] = &unk_1E79C4E00;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __36__PKODIAssessment_computeAssessment__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  v3 = PKTimeProfileEnd(v2, @"get_odi_assessment", @"PKODIAssessment: ODISession: getAssessment");

  v4 = *(a1 + 32);
  v5 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error computing CoreODI assessment: %@", &v8, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Received CoreODI assessment: %@", &v8, 0xCu);
    }

    os_unfair_lock_lock((*(a1 + 48) + 20));
    objc_storeStrong((*(a1 + 48) + 8), *(a1 + 40));
    *(*(a1 + 48) + 33) = 0;
    os_unfair_lock_unlock((*(a1 + 48) + 20));
  }

  *(*(a1 + 48) + 32) = 0;
  v7 = *(*(a1 + 48) + 48);
  if (v7)
  {
    dispatch_source_cancel(v7);
  }
}

- (id)currentAssessment
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSString *)self->_assessment copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)currentAssessmentDidTimeout
{
  os_unfair_lock_lock(&self->_lock);
  currentAssessmentDidTimeout = self->_currentAssessmentDidTimeout;
  os_unfair_lock_unlock(&self->_lock);
  return currentAssessmentDidTimeout;
}

- (void)waitForAssessmentWithTimeout:(unint64_t)a3 startTimeoutFromAssessmentStart:(BOOL)a4 continueBlock:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    workQueue = self->_workQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __94__PKODIAssessment_waitForAssessmentWithTimeout_startTimeoutFromAssessmentStart_continueBlock___block_invoke;
    v11[3] = &unk_1E79D0000;
    v11[4] = self;
    v12 = v8;
    v13 = a3;
    v14 = a4;
    dispatch_async(workQueue, v11);
  }
}

void __94__PKODIAssessment_waitForAssessmentWithTimeout_startTimeoutFromAssessmentStart_continueBlock___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v3 = _Block_copy(*(a1 + 40));
  [v2 addObject:v3];

  v4 = [*(a1 + 32) currentAssessment];
  if (v4 && (v5 = *(*(a1 + 32) + 32), v4, (v5 & 1) == 0))
  {
    v16 = *(a1 + 32);

    [v16 _callAssessmentComputedBlocksAndDidTimeout:0];
  }

  else
  {
    v6 = *(a1 + 32);
    if ((*(v6 + 32) & 1) == 0)
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(v6 + 80) description];
        *buf = 138412290;
        v29 = v8;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "CoreODI assessment requested, but computation not started %@", buf, 0xCu);
      }
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = v9;
      if (*(a1 + 56) == 1)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v12 = *(a1 + 32);
        v13 = Current - *(v12 + 40);
        v14 = *(a1 + 48) + -0.25;
        if (v13 < v14)
        {
          v15 = CFAbsoluteTimeGetCurrent();
          v12 = *(a1 + 32);
          v14 = v15 - *(v12 + 40);
        }

        v10 = v10 - v14;
      }

      else
      {
        v12 = *(a1 + 32);
      }

      v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v12 + 56));
      v18 = *(a1 + 32);
      v19 = *(v18 + 48);
      *(v18 + 48) = v17;

      v20 = *(*(a1 + 32) + 48);
      v21 = dispatch_time(0, (v10 * 1000000000.0));
      dispatch_source_set_timer(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      v22 = *(a1 + 32);
      v23 = *(v22 + 48);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __94__PKODIAssessment_waitForAssessmentWithTimeout_startTimeoutFromAssessmentStart_continueBlock___block_invoke_33;
      handler[3] = &unk_1E79C4E28;
      handler[4] = v22;
      dispatch_source_set_event_handler(v23, handler);
      v24 = *(a1 + 32);
      v25 = *(v24 + 48);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __94__PKODIAssessment_waitForAssessmentWithTimeout_startTimeoutFromAssessmentStart_continueBlock___block_invoke_34;
      v26[3] = &unk_1E79C4E28;
      v26[4] = v24;
      dispatch_source_set_cancel_handler(v25, v26);
      dispatch_resume(*(*(a1 + 32) + 48));
    }
  }
}

uint64_t __94__PKODIAssessment_waitForAssessmentWithTimeout_startTimeoutFromAssessmentStart_continueBlock___block_invoke_33(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (*(v1 + 48))
  {
    v2 = result;
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(v1 + 80) description];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "CoreODI assessment timed out %@", &v7, 0xCu);
    }

    v5 = *(v2 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    os_unfair_lock_lock((*(v2 + 32) + 20));
    *(*(v2 + 32) + 16) = 1;
    os_unfair_lock_unlock((*(v2 + 32) + 20));
    return [*(v2 + 32) _callAssessmentComputedBlocksAndDidTimeout:1];
  }

  return result;
}

uint64_t __94__PKODIAssessment_waitForAssessmentWithTimeout_startTimeoutFromAssessmentStart_continueBlock___block_invoke_34(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  os_unfair_lock_lock((*(a1 + 32) + 20));
  *(*(a1 + 32) + 16) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 20));
  v4 = *(a1 + 32);

  return [v4 _callAssessmentComputedBlocksAndDidTimeout:0];
}

- (void)provideSessionFeedback:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PKODIAssessment *)self odiSession];
    v8 = 134218242;
    v9 = a3;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Providing ODISession feedback %ld on session %@", &v8, 0x16u);
  }

  v7 = [(PKODIAssessment *)self odiSession];
  [v7 provideFeedbackOnPayloadOutcome:a3];
}

- (void)getAssessmentWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0, 0);
  }
}

- (void)_callAssessmentComputedBlocksAndDidTimeout:(BOOL)a3
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__PKODIAssessment__callAssessmentComputedBlocksAndDidTimeout___block_invoke;
  v4[3] = &unk_1E79C4EC8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(workQueue, v4);
}

void __62__PKODIAssessment__callAssessmentComputedBlocksAndDidTimeout___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) copy];
  [*(*(a1 + 32) + 24) removeAllObjects];
  v3 = [*(a1 + 32) currentAssessment];
  if (!v3)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 72) == 1)
    {
      v3 = [*(v4 + 80) availablePartialAssessment];
    }

    else
    {
      v3 = 0;
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = *(*(a1 + 32) + 64);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __62__PKODIAssessment__callAssessmentComputedBlocksAndDidTimeout___block_invoke_2;
        block[3] = &unk_1E79C4540;
        v14 = v10;
        v13 = v3;
        v15 = *(a1 + 40);
        dispatch_async(v11, block);
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

@end