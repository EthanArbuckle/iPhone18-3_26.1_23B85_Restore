@interface PKFieldDetector
- (PKFieldDetector)initWithDelegate:(id)delegate;
- (PKFieldDetectorDelegate)delegate;
- (PKFieldProperties)fieldProperties;
- (void)_endLookup;
- (void)_evaulatePersistentFieldDetectionEnablementReasons;
- (void)_invalidateFieldDetectSession;
- (void)_notify;
- (void)_restartFieldDetectSession;
- (void)_setPersistentFieldDetectionEnabled:(BOOL)enabled;
- (void)_startFieldDetectSession;
- (void)dealloc;
- (void)fieldDetectSession:(id)session didEnterFieldWithNotification:(id)notification;
- (void)fieldDetectSessionDidEndUnexpectedly:(id)unexpectedly;
- (void)fieldDetectSessionDidExitField:(id)field;
- (void)registerObserver:(id)observer;
- (void)requestPersistentFieldDetectionEnabled:(BOOL)enabled withReason:(unint64_t)reason;
- (void)setDelegate:(id)delegate;
- (void)setPersistentFieldDetectionEnabled:(BOOL)enabled;
- (void)unregisterObserver:(id)observer;
- (void)updateRadioState;
@end

@implementation PKFieldDetector

- (PKFieldDetector)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (PKNearFieldRadioIsAvailable() && !+[PKSecureElement isInFailForward])
  {
    v21.receiver = self;
    v21.super_class = PKFieldDetector;
    v6 = [(PKFieldDetector *)&v21 init];
    v7 = v6;
    if (v6)
    {
      v6->_lock._os_unfair_lock_opaque = 0;
      v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(v8, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

      v10 = dispatch_queue_create("com.apple.passkit.fielddetector", v9);
      fieldDetectorSerialQueue = v7->_fieldDetectorSerialQueue;
      v7->_fieldDetectorSerialQueue = v10;

      v12 = dispatch_queue_create("com.apple.passkit.fielddetector.reply", v9);
      replyQueue = v7->_replyQueue;
      v7->_replyQueue = v12;

      pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
      observers = v7->_observers;
      v7->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

      v7->_nfcRadioEnabled = PKNearFieldRadioIsEnabled();
      v16 = v7->_fieldDetectorSerialQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__PKFieldDetector_initWithDelegate___block_invoke;
      block[3] = &unk_1E79C4E28;
      v17 = v7;
      v20 = v17;
      dispatch_async(v16, block);
      objc_storeWeak(v17 + 10, delegateCopy);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(PKFieldPropertiesProbe *)self->_fieldPropertiesProbe invalidate];
  [(NFFieldDetectSession *)self->_fieldDetectSession setDelegate:0];
  [(NFFieldDetectSession *)self->_fieldDetectSession endSession];
  v3.receiver = self;
  v3.super_class = PKFieldDetector;
  [(PKFieldDetector *)&v3 dealloc];
}

- (void)fieldDetectSession:(id)session didEnterFieldWithNotification:(id)notification
{
  notificationCopy = notification;
  kdebug_trace();
  fieldDetectorSerialQueue = self->_fieldDetectorSerialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PKFieldDetector_fieldDetectSession_didEnterFieldWithNotification___block_invoke;
  v8[3] = &unk_1E79C4DD8;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(fieldDetectorSerialQueue, v8);
}

void __68__PKFieldDetector_fieldDetectSession_didEnterFieldWithNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 28));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  os_unfair_lock_unlock((*(a1 + 32) + 28));
  if (WeakRetained && ([WeakRetained fieldDetectorShouldProcessFieldEvents:*(a1 + 32)] & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Field Detector Ignoring Field Entrance", buf, 2u);
    }
  }

  else
  {
    [*(a1 + 32) _endLookup];
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Field Detector Did Enter Field: %@.", buf, 0xCu);
    }

    v5 = [PKFieldProperties fieldPropertiesForFieldNotification:*(a1 + 40)];
    if ([v5 terminalType]== 5)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Field Detector Ignoring Connection Handover Entrance", buf, 2u);
      }
    }

    else
    {
      [PKAnalyticsReporter beginSubjectReporting:@"fieldDetect"];
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v6 setObject:@"fieldEntered" forKeyedSubscript:@"eventType"];
      v3 = v6;
      v7 = v5;
      v8 = [v7 terminalType];
      if (v8 <= 5)
      {
        if (((1 << v8) & 0x2D) == 0)
        {
          if (v8 != 1)
          {
            [v3 setObject:@"identity" forKeyedSubscript:@"readerType"];
          }

          [v3 setObject:@"payment" forKeyedSubscript:@"readerType"];
        }

        [v3 setObject:@"other" forKeyedSubscript:@"readerType"];
      }

      [PKAnalyticsReporter subject:@"fieldDetect" sendEvent:v3];
      if (PKFieldPropertiesCanLookupSecondaryProperties(v7))
      {
        [v7 setSecondaryPropertiesRequired:1];
        v9 = [PKFieldPropertiesProbe createProbeForProperties:v7 queue:*(*(a1 + 32) + 64)];
        v10 = *(a1 + 32);
        v11 = *(v10 + 56);
        *(v10 + 56) = v9;

        v12 = *(a1 + 32);
        v13 = *(v12 + 56);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __68__PKFieldDetector_fieldDetectSession_didEnterFieldWithNotification___block_invoke_41;
        v14[3] = &unk_1E79DE1B0;
        v14[4] = v12;
        [v13 beginWithCompletion:v14];
      }

      else
      {
        objc_storeStrong((*(a1 + 32) + 48), v5);
        [*(a1 + 32) _notify];
      }
    }
  }
}

void __68__PKFieldDetector_fieldDetectSession_didEnterFieldWithNotification___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = *(*(a1 + 32) + 56);
  if (v7 == a2)
  {
    v11 = v6;
    v8 = v7;
    [v8 invalidate];
    v9 = *(a1 + 32);
    v10 = *(v9 + 56);
    *(v9 + 56) = 0;

    objc_storeStrong((*(a1 + 32) + 48), a3);
    [*(a1 + 32) _notify];

    v6 = v11;
  }
}

- (void)fieldDetectSessionDidExitField:(id)field
{
  kdebug_trace();
  fieldDetectorSerialQueue = self->_fieldDetectorSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PKFieldDetector_fieldDetectSessionDidExitField___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(fieldDetectorSerialQueue, block);
}

void __50__PKFieldDetector_fieldDetectSessionDidExitField___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"eventType";
  v14[0] = @"fieldExited";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [PKAnalyticsReporter subject:@"fieldDetect" sendEvent:v2];

  [PKAnalyticsReporter endSubjectReporting:@"fieldDetect"];
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Field Detector Did Exit Field", buf, 2u);
  }

  [*(a1 + 32) _endLookup];
  os_unfair_lock_lock((*(a1 + 32) + 28));
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  if (v5)
  {
    *(v4 + 48) = 0;

    v6 = [*(*(a1 + 32) + 32) allObjects];
    os_unfair_lock_unlock((*(a1 + 32) + 28));
    if (v6)
    {
      v7 = *(*(a1 + 32) + 72);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__PKFieldDetector_fieldDetectSessionDidExitField___block_invoke_44;
      v9[3] = &unk_1E79C4DD8;
      v6 = v6;
      v8 = *(a1 + 32);
      v10 = v6;
      v11 = v8;
      dispatch_async(v7, v9);
    }
  }

  else
  {
    os_unfair_lock_unlock((v4 + 28));
    v6 = 0;
  }
}

void __50__PKFieldDetector_fieldDetectSessionDidExitField___block_invoke_44(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 fieldDetectorDidExitField:{*(a1 + 40), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)fieldDetectSessionDidEndUnexpectedly:(id)unexpectedly
{
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Field Detection Session Ended Unexpectedly", buf, 2u);
  }

  fieldDetectorSerialQueue = self->_fieldDetectorSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKFieldDetector_fieldDetectSessionDidEndUnexpectedly___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(fieldDetectorSerialQueue, block);
}

uint64_t __56__PKFieldDetector_fieldDetectSessionDidEndUnexpectedly___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"eventType";
  v5[0] = @"fieldDetectSessionEndedUnexpectedly";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [PKAnalyticsReporter subject:@"fieldDetect" sendEvent:v2];

  [PKAnalyticsReporter endSubjectReporting:@"fieldDetect"];
  [*(a1 + 32) _invalidateFieldDetectSession];
  return [*(a1 + 32) _restartFieldDetectSession];
}

- (void)updateRadioState
{
  fieldDetectorSerialQueue = self->_fieldDetectorSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PKFieldDetector_updateRadioState__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(fieldDetectorSerialQueue, block);
}

uint64_t __35__PKFieldDetector_updateRadioState__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 25) = PKNearFieldRadioIsEnabled();
  result = *(a1 + 32);
  if (*(result + 25) == 1)
  {
    if (*(result + 24) == 1 && !*(result + 8))
    {

      return [result _startFieldDetectSession];
    }
  }

  else
  {

    return [result _invalidateFieldDetectSession];
  }

  return result;
}

- (void)requestPersistentFieldDetectionEnabled:(BOOL)enabled withReason:(unint64_t)reason
{
  if (reason)
  {
    fieldDetectorSerialQueue = self->_fieldDetectorSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__PKFieldDetector_requestPersistentFieldDetectionEnabled_withReason___block_invoke;
    block[3] = &unk_1E79DE1D8;
    enabledCopy = enabled;
    block[4] = self;
    block[5] = reason;
    dispatch_async(fieldDetectorSerialQueue, block);
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Field Detector: Missing reason when enabling field detect", buf, 2u);
    }
  }
}

void __69__PKFieldDetector_requestPersistentFieldDetectionEnabled_withReason___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = PKFieldDetectorPersistentFieldDetectionReasonToString(*(a1 + 40));
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "disable";
    if (*(a1 + 48))
    {
      v4 = "enable";
    }

    v11 = 136446466;
    v12 = v4;
    v13 = 2112;
    v14 = v2;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Field Detector: Requesting to %{public}s field detect for reason: %@", &v11, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v5 + 40);
  v8 = v7 & ~v6;
  v9 = v6 | v7;
  if (!*(a1 + 48))
  {
    v9 = v8;
  }

  *(v5 + 40) = v9;
  v10 = *(a1 + 32);
  if (v7 != v10[5])
  {
    [v10 _evaulatePersistentFieldDetectionEnablementReasons];
  }
}

- (void)setPersistentFieldDetectionEnabled:(BOOL)enabled
{
  fieldDetectorSerialQueue = self->_fieldDetectorSerialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PKFieldDetector_setPersistentFieldDetectionEnabled___block_invoke;
  v4[3] = &unk_1E79C4EC8;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(fieldDetectorSerialQueue, v4);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_fieldProperties;
    if ([(NSHashTable *)self->_observers containsObject:observerCopy])
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(NSHashTable *)self->_observers addObject:observerCopy];
      os_unfair_lock_unlock(&self->_lock);
      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        replyQueue = self->_replyQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __36__PKFieldDetector_registerObserver___block_invoke;
        block[3] = &unk_1E79C4E00;
        v8 = observerCopy;
        selfCopy = self;
        v10 = v5;
        dispatch_async(replyQueue, block);
      }
    }
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    observerCopy = v5;
  }
}

- (PKFieldProperties)fieldProperties
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_fieldProperties;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (PKFieldDetectorDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_evaulatePersistentFieldDetectionEnablementReasons
{
  v11 = *MEMORY[0x1E69E9840];
  enablePersistentFieldDetectionReasons = self->_enablePersistentFieldDetectionReasons;
  v4 = PKFieldDetectorPersistentFieldDetectionReasonToString(enablePersistentFieldDetectionReasons);
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "disable";
    if (enablePersistentFieldDetectionReasons)
    {
      v6 = "enable";
    }

    v7 = 136446466;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Field Detector: Requesting to %{public}s field detect with reasons: %@", &v7, 0x16u);
  }

  [(PKFieldDetector *)self _setPersistentFieldDetectionEnabled:enablePersistentFieldDetectionReasons != 0];
}

- (void)_setPersistentFieldDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x1E69E9840];
  if (!PKNearFieldRadioIsAvailable())
  {
    return;
  }

  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Disabling";
    if (enabledCopy)
    {
      v6 = @"Enabling";
    }

    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Field Detector: %{public}@ field detection...", &v14, 0xCu);
  }

  pKGetClassNFHardwareManager() = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  v8 = [pKGetClassNFHardwareManager() setFieldDetectEnabled:enabledCopy];
  v9 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v9)
    {
      v10 = @"Disabled";
      if (enabledCopy)
      {
        v10 = @"Enabled";
      }

      v14 = 138543362;
      v15 = v10;
      v11 = "Field Detector: %{public}@ field detection.";
      v12 = v5;
      v13 = 12;
      goto LABEL_13;
    }
  }

  else if (v9)
  {
    LOWORD(v14) = 0;
    v11 = "Field Detector: failed to mutate field detection state.";
    v12 = v5;
    v13 = 2;
LABEL_13:
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);
  }

  if (enabledCopy && !self->_fieldDetectSessionRequested)
  {
    [(PKFieldDetector *)self _startFieldDetectSession];
  }
}

- (void)_invalidateFieldDetectSession
{
  [(NFFieldDetectSession *)self->_fieldDetectSession setDelegate:0];
  [(NFFieldDetectSession *)self->_fieldDetectSession endSession];
  fieldDetectSession = self->_fieldDetectSession;
  self->_fieldDetectSession = 0;

  os_unfair_lock_lock(&self->_lock);
  fieldProperties = self->_fieldProperties;
  self->_fieldProperties = 0;

  os_unfair_lock_unlock(&self->_lock);

  [(PKFieldDetector *)self _endLookup];
}

- (void)_restartFieldDetectSession
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = self->_fieldDetectSessionRetryCount + 1;
  self->_fieldDetectSessionRetryCount = v3;
  v4 = 0.0;
  if (v3 >= 4)
  {
    v4 = fmin((exp2(v3) + -1.0) * 0.5, 600.0);
  }

  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = v4;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to Restart Field Detection Session After Delay (%.2f seconds)...", buf, 0xCu);
  }

  v6 = dispatch_time(0, (v4 * 1000000000.0));
  fieldDetectorSerialQueue = self->_fieldDetectorSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PKFieldDetector__restartFieldDetectSession__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_after(v6, fieldDetectorSerialQueue, block);
}

- (void)_startFieldDetectSession
{
  if (!self->_fieldDetectSessionRequested)
  {
    self->_fieldDetectSessionRequested = 1;
  }

  if (self->_nfcRadioEnabled)
  {
    pKGetClassNFHardwareManager() = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Starting Field Detection Session...", buf, 2u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__PKFieldDetector__startFieldDetectSession__block_invoke;
    v6[3] = &unk_1E79DE200;
    v6[4] = self;
    v5 = [pKGetClassNFHardwareManager() startFieldDetectSession:v6];
  }

  else
  {
    pKGetClassNFHardwareManager() = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(pKGetClassNFHardwareManager(), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, pKGetClassNFHardwareManager(), OS_LOG_TYPE_DEFAULT, "Cannot start field detect session because the NFC radio is disabled", buf, 2u);
    }
  }
}

void __43__PKFieldDetector__startFieldDetectSession__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PKFieldDetector__startFieldDetectSession__block_invoke_2;
  block[3] = &unk_1E79C4E00;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

void __43__PKFieldDetector__startFieldDetectSession__block_invoke_2(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1[4] || a1[5])
  {
    v2 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[5];
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error Starting Field Detection Session: %@", &v10, 0xCu);
    }

    v4 = [a1[5] domain];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"nfcd"];
    if ([v4 isEqualToString:v5])
    {
      v6 = [a1[5] code];

      if (v6 == 14)
      {
        return;
      }
    }

    else
    {
    }

    [a1[6] _restartFieldDetectSession];
    return;
  }

  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Field Detection Session Started", &v10, 2u);
  }

  v8 = a1[6];
  v9 = *(v8 + 1);
  if (v9)
  {
    [v9 setDelegate:0];
    [*(a1[6] + 1) endSession];
    v8 = a1[6];
  }

  objc_storeStrong(v8 + 1, a1[4]);
  [a1[4] setDelegate:a1[6]];
  *(a1[6] + 2) = 0;
}

- (void)_notify
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_fieldProperties;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Field Detector Did Enter Field With Properties: %@", buf, 0xCu);
  }

  replyQueue = self->_replyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__PKFieldDetector__notify__block_invoke;
  block[3] = &unk_1E79C4E00;
  v10 = allObjects;
  selfCopy = self;
  v12 = v3;
  v7 = v3;
  v8 = allObjects;
  dispatch_async(replyQueue, block);
}

void __26__PKFieldDetector__notify__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 fieldDetectorDidEnterField:*(a1 + 40) withProperties:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_endLookup
{
  [(PKFieldPropertiesProbe *)self->_fieldPropertiesProbe invalidate];
  fieldPropertiesProbe = self->_fieldPropertiesProbe;
  self->_fieldPropertiesProbe = 0;
}

@end