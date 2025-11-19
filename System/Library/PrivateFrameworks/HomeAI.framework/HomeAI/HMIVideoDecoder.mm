@interface HMIVideoDecoder
- (BOOL)_createSessionWithFormatDescription:(opaqueCMFormatDescription *)a3;
- (BOOL)handleSampleBuffer:(opaqueCMSampleBuffer *)a3 outputFrame:(BOOL)a4;
- (HMIVideoDecoder)initWithFrameReordering:(BOOL)a3;
- (HMIVideoDecoderDelegate)delegate;
- (void)_didDecodeSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_evictSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_failWithDescription:(id)a3;
- (void)dealloc;
- (void)flush;
@end

@implementation HMIVideoDecoder

- (HMIVideoDecoder)initWithFrameReordering:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = HMIVideoDecoder;
  v4 = [(HMIVideoDecoder *)&v16 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 6) = 0;
    *(v4 + 7) = 0;
    v6 = MEMORY[0x277CC0898];
    v7 = *MEMORY[0x277CC0898];
    *(v4 + 5) = *MEMORY[0x277CC0898];
    v8 = *(v6 + 16);
    *(v4 + 12) = v8;
    *(v4 + 104) = v7;
    *(v4 + 15) = v8;
    v9 = 3;
    if (!v3)
    {
      v9 = 0;
    }

    *(v4 + 5) = v9;
    *(v4 + 1) = 2;
    v10 = [objc_alloc(MEMORY[0x277D0F948]) initWithWeakObject:v4];
    weakDecoder = v5->_weakDecoder;
    v5->_weakDecoder = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("HMIVideoDecoderWorkQueue", v12);
    workQueue = v5->_workQueue;
    v5->_workQueue = v13;
  }

  return v5;
}

- (BOOL)handleSampleBuffer:(opaqueCMSampleBuffer *)a3 outputFrame:(BOOL)a4
{
  v4 = a4;
  v42 = *MEMORY[0x277D85DE8];
  if ([(HMIVideoNode *)self status]!= 2)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = HMICMSampleBufferFormattedDescription(a3, 1000);
      LODWORD(time2.value) = 138543618;
      *(&time2.value + 4) = v22;
      LOWORD(time2.flags) = 2112;
      *(&time2.flags + 2) = v23;
      _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_ERROR, "%{public}@Video decoder is not running, ignoring %@", &time2, 0x16u);
    }

    v24 = v19;
    goto LABEL_29;
  }

  if (!CMSampleBufferGetNumSamples(a3))
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      LODWORD(time2.value) = 138543362;
      *(&time2.value + 4) = v28;
      _os_log_impl(&dword_22D12F000, v27, OS_LOG_TYPE_ERROR, "%{public}@Sample buffer has no samples, skipping.", &time2, 0xCu);
LABEL_27:
    }

LABEL_28:

    v24 = v25;
LABEL_29:
    objc_autoreleasePoolPop(v24);
    return 0;
  }

  memset(&v39, 0, sizeof(v39));
  CMSampleBufferGetDecodeTimeStamp(&v39, a3);
  [(HMIVideoDecoder *)self lastSampleBufferDTS];
  if (v38)
  {
    [(HMIVideoDecoder *)self lastSampleBufferDTS];
    time1 = v39;
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        [(HMIVideoDecoder *)v26 lastSampleBufferDTS];
        v30 = HMICMTimeDescription(&time2);
        time2 = v39;
        v31 = HMICMTimeDescription(&time2);
        LODWORD(time2.value) = 138543874;
        *(&time2.value + 4) = v28;
        LOWORD(time2.flags) = 2112;
        *(&time2.flags + 2) = v30;
        HIWORD(time2.epoch) = 2112;
        v41 = v31;
        _os_log_impl(&dword_22D12F000, v27, OS_LOG_TYPE_ERROR, "%{public}@Invalid DTS, expected > %@, got %@, skipping.", &time2, 0x20u);

        goto LABEL_27;
      }

      goto LABEL_28;
    }
  }

  time2 = v39;
  [(HMIVideoDecoder *)self setLastSampleBufferDTS:&time2];
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  if (!FormatDescription)
  {
    v29 = @"Format description is missing.";
LABEL_24:
    [(HMIVideoDecoder *)self _failWithDescription:v29];
    return 0;
  }

  v8 = FormatDescription;
  if (![(HMIVideoDecoder *)self session]|| VTDecompressionSessionCanAcceptFormatDescription([(HMIVideoDecoder *)self session], v8))
  {
    goto LABEL_12;
  }

  v9 = +[HMIPreference sharedInstance];
  v10 = [v9 BOOLPreferenceForKey:@"restartDecoderIfFormatChanges" defaultValue:0];

  if (!v10)
  {
    v29 = @"Cannot accept format description.";
    goto LABEL_24;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    LODWORD(time2.value) = 138543362;
    *(&time2.value + 4) = v14;
    _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Restarting decoder because format description changed.", &time2, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  [(HMIVideoDecoder *)v12 flush];
  VTDecompressionSessionInvalidate([(HMIVideoDecoder *)v12 session]);
  CFRelease([(HMIVideoDecoder *)v12 session]);
  [(HMIVideoDecoder *)v12 _createSessionWithFormatDescription:v8];
LABEL_12:
  if (![(HMIVideoDecoder *)self session])
  {
    reorderBufferSize = self->_reorderBufferSize;
    CallbacksForSampleBuffersSortedByOutputPTS = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
    v35 = CMBufferQueueCreate(0, reorderBufferSize, CallbacksForSampleBuffersSortedByOutputPTS, &self->_buffer);
    if (v35)
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create reorder buffer, err: %d.", v35];
      [(HMIVideoDecoder *)self _failWithDescription:v36];

      return 0;
    }

    if ([(HMIVideoDecoder *)self _createSessionWithFormatDescription:v8])
    {
      goto LABEL_13;
    }

    v29 = @"Cannot create decoder.";
    goto LABEL_24;
  }

LABEL_13:
  if (v4)
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  LODWORD(time2.value) = 0;
  v16 = VTDecompressionSessionDecodeFrame([(HMIVideoDecoder *)self session], a3, v15, 0, &time2);
  v17 = v16 == 0;
  if (v16)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot decode frame, err: %d.", v16];
    [(HMIVideoDecoder *)self _failWithDescription:v18];
  }

  return v17;
}

- (void)flush
{
  if ([(HMIVideoDecoder *)self session])
  {
    VTDecompressionSessionWaitForAsynchronousFrames([(HMIVideoDecoder *)self session]);
    while (!CMBufferQueueIsEmpty([(HMIVideoDecoder *)self buffer]))
    {
      v3 = CMBufferQueueDequeueAndRetain([(HMIVideoDecoder *)self buffer]);
      [(HMIVideoDecoder *)self _evictSampleBuffer:v3];
      CFRelease(v3);
    }
  }
}

- (void)dealloc
{
  if ([(HMIVideoDecoder *)self buffer])
  {
    CFRelease(self->_buffer);
    [(HMIVideoDecoder *)self setBuffer:0];
  }

  if ([(HMIVideoDecoder *)self session])
  {
    v3 = [(HMIVideoDecoder *)self session];
    v4 = [(HMIVideoDecoder *)self weakDecoder];
    v5 = [(HMIVideoDecoder *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__HMIVideoDecoder_dealloc__block_invoke;
    block[3] = &unk_278754838;
    v9 = v4;
    v10 = v3;
    v6 = v4;
    dispatch_async(v5, block);

    [(HMIVideoDecoder *)self setSession:0];
  }

  v7.receiver = self;
  v7.super_class = HMIVideoDecoder;
  [(HMIVideoDecoder *)&v7 dealloc];
}

void __26__HMIVideoDecoder_dealloc__block_invoke(uint64_t a1)
{
  VTDecompressionSessionWaitForAsynchronousFrames(*(a1 + 40));
  VTDecompressionSessionInvalidate(*(a1 + 40));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

- (BOOL)_createSessionWithFormatDescription:(opaqueCMFormatDescription *)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  [(HMIVideoDecoder *)self weakDecoder];

  v18 = *MEMORY[0x277CE2778];
  v19[0] = @"HomeAI";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v16 = *MEMORY[0x277CC4DE0];
  v17 = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v6 = VTDecompressionSessionCreateWithOptions();
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v10;
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create decompression session: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v6 == 0;
}

- (void)_evictSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  memset(&v14, 0, sizeof(v14));
  CMSampleBufferGetPresentationTimeStamp(&v14, a3);
  [(HMIVideoDecoder *)self lastSampleBufferPTS];
  if (v13)
  {
    [(HMIVideoDecoder *)self lastSampleBufferPTS];
    v12 = v14;
    if ((CMTimeCompare(&time1, &v12) & 0x80000000) == 0)
    {
      [(HMIVideoDecoder *)self _failWithDescription:@"Cannot reorder frames."];
      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        LODWORD(time1.value) = 138543618;
        *(&time1.value + 4) = v8;
        LOWORD(time1.flags) = 2112;
        *(&time1.flags + 2) = a3;
        v9 = "%{public}@Decoded sample is out of PTS order, sample: %@";
LABEL_8:
        _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, v9, &time1, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  if ((v14.flags & 1) == 0)
  {
    [(HMIVideoDecoder *)self _failWithDescription:@"Decoded sample has an invalid PTS."];
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      LODWORD(time1.value) = 138543618;
      *(&time1.value + 4) = v8;
      LOWORD(time1.flags) = 2112;
      *(&time1.flags + 2) = a3;
      v9 = "%{public}@Decoded sample has an invalid PTS, sample: %@";
      goto LABEL_8;
    }

LABEL_9:

    objc_autoreleasePoolPop(v5);
    return;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = [(HMIVideoDecoder *)self delegate];
  [v11 decoder:self didDecodeSampleBuffer:a3];

  objc_autoreleasePoolPop(v10);
  time1 = v14;
  [(HMIVideoDecoder *)self setLastSampleBufferPTS:&time1];
}

- (void)_didDecodeSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  if ([(HMIVideoDecoder *)self reorderBufferSize])
  {
    BufferCount = CMBufferQueueGetBufferCount(self->_buffer);
    if (BufferCount == [(HMIVideoDecoder *)self reorderBufferSize])
    {
      v6 = CMBufferQueueDequeueAndRetain(self->_buffer);
      [(HMIVideoDecoder *)self _evictSampleBuffer:v6];
      CFRelease(v6);
    }

    buffer = self->_buffer;

    CMBufferQueueEnqueue(buffer, a3);
  }

  else
  {

    [(HMIVideoDecoder *)self _evictSampleBuffer:a3];
  }
}

- (void)_failWithDescription:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->super.super._status == 4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Decoder is already in a failed state.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    self->super.super._status = 4;
    v9 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:-1 description:v4];
    HMIErrorLog(self, v9);
    v10 = [(HMIVideoDecoder *)self delegate];
    [v10 decoder:self didFailWithError:v9];
  }
}

- (HMIVideoDecoderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end