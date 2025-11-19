@interface HMIVideoEncoder
- (BOOL)_initSessionWithDimensions:(id)a3 codecType:(unsigned int)a4 useHardwareAcceleration:(BOOL)a5 error:(id *)a6;
- (BOOL)prepare;
- (HMIVideoEncoder)initWithDimensions:(id)a3 codecType:(unsigned int)a4 useHardwareAcceleration:(BOOL)a5 error:(id *)a6;
- (HMIVideoEncoderDataRate)dataRateLimit;
- (HMIVideoEncoderDelegate)delegate;
- (double)expectedDuration;
- (double)quality;
- (int)_getFloat64Property:(__CFString *)a3 propertyValueOut:(double *)a4;
- (int)_getProperty:(__CFString *)a3 propertyValue:(const void *)a4;
- (int)_getSInt32Property:(__CFString *)a3 propertyValueOut:(int *)a4;
- (int)_setFloat64Property:(__CFString *)a3 propertyValue:(double)a4;
- (int)_setProperty:(__CFString *)a3 propertyValue:(void *)a4;
- (int)_setSInt32Property:(__CFString *)a3 propertyValue:(int)a4;
- (int64_t)averageBitRate;
- (int64_t)expectedFrameRate;
- (int64_t)maxFrameDelayCount;
- (int64_t)maxKeyFrameIntervalDuration;
- (void)_invalidate;
- (void)_invalidateWithErr:(int)a3;
- (void)dealloc;
- (void)flush;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)setDataRateLimit:(HMIVideoEncoderDataRate)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setExpectedDuration:(double)a3;
@end

@implementation HMIVideoEncoder

- (HMIVideoEncoder)initWithDimensions:(id)a3 codecType:(unsigned int)a4 useHardwareAcceleration:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = *&a4;
  v17.receiver = self;
  v17.super_class = HMIVideoEncoder;
  v10 = [(HMIVideoEncoder *)&v17 init];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("HMIVideoEncoderWorkQueue", v11);
  workQueue = v10->_workQueue;
  v10->_workQueue = v12;

  v14 = [(HMIVideoEncoder *)v10 _initSessionWithDimensions:a3 codecType:v8 useHardwareAcceleration:v7 error:a6];
  v15 = 0;
  if (v14)
  {
    v10->super.super._status = 2;
LABEL_4:
    v15 = v10;
  }

  return v15;
}

- (BOOL)_initSessionWithDimensions:(id)a3 codecType:(unsigned int)a4 useHardwareAcceleration:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v30[1] = *MEMORY[0x277D85DE8];
  if ([(HMIVideoEncoder *)self session])
  {
    [HMIVideoEncoder _initSessionWithDimensions:codecType:useHardwareAcceleration:error:];
  }

  v25 = a6;
  v11 = *MEMORY[0x277CC4E30];
  v29 = *MEMORY[0x277CC4E30];
  v30[0] = &unk_284075120;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v13 = [v12 mutableCopy];

  if (v7)
  {
    v14 = MEMORY[0x277CBEC38];
  }

  else
  {
    v14 = MEMORY[0x277CBEC28];
  }

  v15 = MEMORY[0x277CE2BB0];
  if (!v7)
  {
    v15 = MEMORY[0x277CE2BA8];
  }

  [v13 setObject:v14 forKey:*v15];
  v27 = v11;
  v28 = &unk_284075120;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  session = 0;
  v17 = VTCompressionSessionCreate(0, a3.var0, a3.var1, a4, v13, v16, 0, 0, 0, &session);
  if (!session || v17)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"VTCompressionSessionCreate failed, err: %d", v17];
    v21 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1023 description:v20];
    v19 = v25;
    if (!v25)
    {
      goto LABEL_14;
    }

LABEL_13:
    v22 = v21;
    *v19 = v21;
    goto LABEL_14;
  }

  v18 = VTCompressionSessionPrepareToEncodeFrames(session);
  v19 = v25;
  if (!v18)
  {
    [(HMIVideoEncoder *)self setSession:session];
    [(HMIVideoEncoder *)self _setProperty:*MEMORY[0x277CE2528] propertyValue:*MEMORY[0x277CC4C20]];
    [(HMIVideoEncoder *)self _setProperty:*MEMORY[0x277CE2600] propertyValue:*MEMORY[0x277CC4CD8]];
    [(HMIVideoEncoder *)self _setProperty:*MEMORY[0x277CE2610] propertyValue:*MEMORY[0x277CC4D28]];
    v23 = 1;
    [(HMIVideoEncoder *)self setForceKeyFrameOnNextEncodedFrame:1];
    goto LABEL_15;
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"VTCompressionSessionPrepareToEncodeFrames failed, err: %d", v18];
  v21 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1023 description:v20];
  if (v25)
  {
    goto LABEL_13;
  }

LABEL_14:
  HMIErrorLog(self, v21);

  v23 = 0;
LABEL_15:

  return v23;
}

- (void)dealloc
{
  if ([(HMIVideoEncoder *)self session])
  {
    v3 = [(HMIVideoEncoder *)self session];
    v4 = [(HMIVideoEncoder *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__HMIVideoEncoder_dealloc__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v3;
    dispatch_async(v4, block);

    [(HMIVideoEncoder *)self setSession:0];
  }

  v5.receiver = self;
  v5.super_class = HMIVideoEncoder;
  [(HMIVideoEncoder *)&v5 dealloc];
}

void __26__HMIVideoEncoder_dealloc__block_invoke(uint64_t a1)
{
  VTCompressionSessionInvalidate(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  objc_storeWeak(&self->_delegate, a3);
  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = v6;
}

- (void)_invalidate
{
  v3 = [(HMIVideoEncoder *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMIVideoEncoder *)self session])
  {
    VTCompressionSessionInvalidate([(HMIVideoEncoder *)self session]);
    CFRelease([(HMIVideoEncoder *)self session]);

    [(HMIVideoEncoder *)self setSession:0];
  }
}

- (void)_invalidateWithErr:(int)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(HMIVideoEncoder *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMIVideoNode *)self status]!= 4)
  {
    self->super.super._status = 4;
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v9;
      v16 = 1024;
      v17 = a3;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Invalidated with err: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMIVideoEncoder *)v7 delegateQueue];

    if (v10)
    {
      v11 = [(HMIVideoEncoder *)v7 delegateQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __38__HMIVideoEncoder__invalidateWithErr___block_invoke;
      v12[3] = &unk_278754810;
      v13 = a3;
      v12[4] = v7;
      dispatch_async(v11, v12);
    }

    [(HMIVideoEncoder *)v7 _invalidate];
  }
}

void __38__HMIVideoEncoder__invalidateWithErr___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Video encoding failed, err: %d", *(a1 + 40)];
  v2 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1023 description:v4];
  v3 = [*(a1 + 32) delegate];
  [v3 encoder:*(a1 + 32) didFailWithError:v2];
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(HMIVideoNode *)self status]== 2)
  {
    if (![(HMIVideoEncoder *)self session])
    {
      [HMIVideoEncoder handleSampleBuffer:];
    }

    HMICMSampleBufferGetMediaType(a3);
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    memset(&v15, 0, sizeof(v15));
    CMSampleBufferGetPresentationTimeStamp(&v15, a3);
    memset(&v14, 0, sizeof(v14));
    CMSampleBufferGetDuration(&v14, a3);
    CFRetain(a3);
    v6 = [(HMIVideoEncoder *)self workQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__HMIVideoEncoder_handleSampleBuffer___block_invoke;
    v11[3] = &unk_278754888;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = ImageBuffer;
    v12 = v15;
    v13 = v14;
    dispatch_sync(v6, v11);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      LODWORD(v15.value) = 138543362;
      *(&v15.value + 4) = v10;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Encoder is in a failed state, ignoring sample.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __38__HMIVideoEncoder_handleSampleBuffer___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) session])
  {
    if ([*(a1 + 32) forceKeyFrameOnNextEncodedFrame])
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CE27C0], *MEMORY[0x277CBED28]);
      [*(a1 + 32) setForceKeyFrameOnNextEncodedFrame:0];
    }

    else
    {
      Mutable = 0;
    }

    objc_initWeak(&location, *(a1 + 32));
    v4 = [*(a1 + 32) session];
    v5 = *(a1 + 48);
    outputHandler[0] = MEMORY[0x277D85DD0];
    outputHandler[1] = 3221225472;
    outputHandler[2] = __38__HMIVideoEncoder_handleSampleBuffer___block_invoke_2;
    outputHandler[3] = &unk_278754860;
    objc_copyWeak(&v13, &location);
    presentationTimeStamp = *(a1 + 56);
    v11 = *(a1 + 80);
    v6 = VTCompressionSessionEncodeFrameWithOutputHandler(v4, v5, &presentationTimeStamp, &v11, Mutable, 0, outputHandler);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    CFRelease(*(a1 + 40));
    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        LODWORD(presentationTimeStamp.value) = 138543618;
        *(&presentationTimeStamp.value + 4) = v10;
        LOWORD(presentationTimeStamp.flags) = 1024;
        *(&presentationTimeStamp.flags + 2) = v6;
        _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@VTCompressionSessionEncodeFrameWithOutputHandler failed: %d", &presentationTimeStamp, 0x12u);
      }

      objc_autoreleasePoolPop(v7);
      [*(a1 + 32) _invalidateWithErr:v6];
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v3 = *(a1 + 40);

    CFRelease(v3);
  }
}

void __38__HMIVideoEncoder_handleSampleBuffer___block_invoke_2(uint64_t a1, int a2, char a3, const void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v12;
        v25 = 1024;
        v26 = a2;
        _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@VTCompressionSessionEncodeFrameWithOutputHandler (Handler) failed, err: %d", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [v10 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__HMIVideoEncoder_handleSampleBuffer___block_invoke_170;
      block[3] = &unk_278754810;
      block[4] = v10;
      v22 = a2;
      dispatch_async(v13, block);
    }

    else if ((a3 & 2) != 0)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v8;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v19;
        _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_ERROR, "%{public}@VTCompressionSessionEncodeFrameWithOutputHandler, frame dropped.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      ++v17[5];
    }

    else
    {
      v14 = [WeakRetained delegateQueue];

      if (v14)
      {
        CFRetain(a4);
        v15 = [v8 delegateQueue];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __38__HMIVideoEncoder_handleSampleBuffer___block_invoke_171;
        v20[3] = &unk_278754838;
        v20[4] = v8;
        v20[5] = a4;
        dispatch_async(v15, v20);
      }
    }
  }
}

void __38__HMIVideoEncoder_handleSampleBuffer___block_invoke_171(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 encoder:*(a1 + 32) didEncodeSampleBuffer:*(a1 + 40)];

  v3 = *(a1 + 40);

  CFRelease(v3);
}

- (void)flush
{
  v3 = [(HMIVideoEncoder *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__HMIVideoEncoder_flush__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __24__HMIVideoEncoder_flush__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) session];
  if (result)
  {
    v3 = [*(a1 + 32) session];
    v12 = **&MEMORY[0x277CC0898];
    v4 = VTCompressionSessionCompleteFrames(v3, &v12);
    if (v4)
    {
      v5 = v4;
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        LODWORD(v12.value) = 138543618;
        *(&v12.value + 4) = v9;
        LOWORD(v12.flags) = 1024;
        *(&v12.flags + 2) = v5;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@VTCompressionSessionCompleteFrames failed, err: %d", &v12, 0x12u);
      }

      objc_autoreleasePoolPop(v6);
      [*(a1 + 32) _invalidateWithErr:v5];
    }

    else
    {
      v10 = [*(a1 + 32) delegateQueue];

      if (v10)
      {
        v11 = [*(a1 + 32) delegateQueue];
        dispatch_sync(v11, HMISyncBlock);
      }
    }

    return [*(a1 + 32) setForceKeyFrameOnNextEncodedFrame:1];
  }

  return result;
}

- (BOOL)prepare
{
  if (![(HMIVideoEncoder *)self session])
  {
    v6 = [HMIVideoEncoder handleSampleBuffer:];
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(HMIVideoEncoder *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__HMIVideoEncoder_prepare__block_invoke;
  v7[3] = &unk_2787548B0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v3, v7);

  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __26__HMIVideoEncoder_prepare__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = VTCompressionSessionPrepareToEncodeFrames([*(a1 + 32) session]);
  if (v2)
  {
    v3 = v2;
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_ERROR, "%{public}@VTCompressionSessionPrepareToEncodeFrames failed, err: %d", &v8, 0x12u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (int)_setProperty:(__CFString *)a3 propertyValue:(void *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (![(HMIVideoEncoder *)self session])
  {
    [HMIVideoEncoder handleSampleBuffer:];
  }

  v7 = VTSessionSetProperty([(HMIVideoEncoder *)self session], a3, a4);
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = a3;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot set property: %@, error: %d", &v13, 0x1Cu);
    }

    objc_autoreleasePoolPop(v8);
  }

  return v7;
}

- (int)_getProperty:(__CFString *)a3 propertyValue:(const void *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (![(HMIVideoEncoder *)self session])
  {
    [HMIVideoEncoder handleSampleBuffer:];
  }

  v7 = [(HMIVideoEncoder *)self session];
  v8 = VTSessionCopyProperty(v7, a3, *MEMORY[0x277CBECE8], a4);
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = a3;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot copy property: %@, error: %d", &v14, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }

  return v8;
}

- (int)_setSInt32Property:(__CFString *)a3 propertyValue:(int)a4
{
  SInt32 = FigCFNumberCreateSInt32();
  LODWORD(a3) = [(HMIVideoEncoder *)self _setProperty:a3 propertyValue:SInt32];
  CFRelease(SInt32);
  return a3;
}

- (int)_getSInt32Property:(__CFString *)a3 propertyValueOut:(int *)a4
{
  number = 0;
  v5 = [(HMIVideoEncoder *)self _getProperty:a3 propertyValue:&number];
  v6 = v5;
  if (a4 && !v5)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, a4);
  }

  CFRelease(number);
  return v6;
}

- (int)_setFloat64Property:(__CFString *)a3 propertyValue:(double)a4
{
  Float64 = FigCFNumberCreateFloat64();
  LODWORD(a3) = [(HMIVideoEncoder *)self _setProperty:a3 propertyValue:Float64];
  CFRelease(Float64);
  return a3;
}

- (int)_getFloat64Property:(__CFString *)a3 propertyValueOut:(double *)a4
{
  number = 0;
  v5 = [(HMIVideoEncoder *)self _getProperty:a3 propertyValue:&number];
  v6 = v5;
  if (a4 && !v5)
  {
    CFNumberGetValue(number, kCFNumberFloatType, a4);
  }

  CFRelease(number);
  return v6;
}

- (int64_t)maxFrameDelayCount
{
  v3 = 0;
  [(HMIVideoEncoder *)self _getSInt32Property:*MEMORY[0x277CE2598] propertyValueOut:&v3];
  return v3;
}

- (int64_t)averageBitRate
{
  v3 = 0;
  [(HMIVideoEncoder *)self _getSInt32Property:*MEMORY[0x277CE2518] propertyValueOut:&v3];
  return v3;
}

- (double)quality
{
  v3 = 0.0;
  [(HMIVideoEncoder *)self _getFloat64Property:*MEMORY[0x277CE25E0] propertyValueOut:&v3];
  return v3;
}

- (int64_t)maxKeyFrameIntervalDuration
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (int64_t)expectedFrameRate
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setExpectedDuration:(double)a3
{
  v4 = *MEMORY[0x277CE2540];
  if (a3 == 0.0)
  {
    v5 = *MEMORY[0x277CBEEE8];
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  [(HMIVideoEncoder *)self _setProperty:v4 propertyValue:v5];
}

- (double)expectedDuration
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setDataRateLimit:(HMIVideoEncoderDataRate)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CE2538];
  if (a3.var0 && (var1 = a3.var1) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v10[0] = v6;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:var1];
    v10[1] = v7;
    -[HMIVideoEncoder _setProperty:propertyValue:](self, "_setProperty:propertyValue:", v4, [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2]);
  }

  else
  {
    v8 = *MEMORY[0x277CBEEE8];
    v9 = *MEMORY[0x277CE2538];

    [(HMIVideoEncoder *)self _setProperty:v9 propertyValue:v8];
  }
}

- (HMIVideoEncoderDataRate)dataRateLimit
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMIVideoEncoderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end