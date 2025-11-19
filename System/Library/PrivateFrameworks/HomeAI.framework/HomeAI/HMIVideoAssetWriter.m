@interface HMIVideoAssetWriter
- (HMIVideoAssetWriter)initWithVideoFormat:(opaqueCMFormatDescription *)a3 audioFormat:(opaqueCMFormatDescription *)a4;
- (HMIVideoAssetWriter)initWithVideoFormat:(opaqueCMFormatDescription *)a3 audioFormat:(opaqueCMFormatDescription *)a4 initialFragmentSequenceNumber:(unint64_t)a5 preferredOutputSegmentInterval:(id *)a6;
- (HMIVideoAssetWriterDelegate)delegate;
- (void)_appendSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_ensureFirstAudioSampleBufferHasSufficientPrimingTrim:(opaqueCMSampleBuffer *)a3;
- (void)_failWithDescription:(id)a3;
- (void)_flushAutomatically:(opaqueCMSampleBuffer *)a3;
- (void)_removeTrimDurationAttachmentsFromAudioSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_startWritingAtStartTime:(id *)a3;
- (void)assetWriter:(id)a3 didOutputSegmentData:(id)a4 segmentType:(int64_t)a5 segmentReport:(id)a6;
- (void)dealloc;
- (void)flush;
- (void)flushWithCompletionHandler:(id)a3;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3;
@end

@implementation HMIVideoAssetWriter

- (HMIVideoAssetWriter)initWithVideoFormat:(opaqueCMFormatDescription *)a3 audioFormat:(opaqueCMFormatDescription *)a4
{
  v5 = *MEMORY[0x277CC0888];
  v6 = *(MEMORY[0x277CC0888] + 16);
  return [(HMIVideoAssetWriter *)self initWithVideoFormat:a3 audioFormat:a4 initialFragmentSequenceNumber:1 preferredOutputSegmentInterval:&v5];
}

- (HMIVideoAssetWriter)initWithVideoFormat:(opaqueCMFormatDescription *)a3 audioFormat:(opaqueCMFormatDescription *)a4 initialFragmentSequenceNumber:(unint64_t)a5 preferredOutputSegmentInterval:(id *)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = HMIVideoAssetWriter;
  v10 = [(HMIVideoAssetWriter *)&v41 init];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("HMIVideoAssetWriter", v11);
  v13 = *(v10 + 7);
  *(v10 + 7) = v12;

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("HMIVideoAssetWriterOutput", v14);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  *(v10 + 9) = CFRetain(a3);
  if (a4)
  {
    v17 = CFRetain(a4);
  }

  else
  {
    v17 = 0;
  }

  *(v10 + 10) = v17;
  v10[26] = 1;
  *(v10 + 12) = 1;
  *(v10 + 1) = 0;
  var3 = a6->var3;
  *(v10 + 7) = *&a6->var0;
  *(v10 + 16) = var3;
  v19 = MEMORY[0x277CC0898];
  v20 = *MEMORY[0x277CC0898];
  *(v10 + 136) = *MEMORY[0x277CC0898];
  v21 = *(v19 + 16);
  *(v10 + 19) = v21;
  *(v10 + 10) = v20;
  *(v10 + 22) = v21;
  *(v10 + 184) = v20;
  *(v10 + 25) = v21;
  if (!objc_opt_class())
  {
    v40 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"UTType class is not available." userInfo:0];
    objc_exception_throw(v40);
  }

  v22 = objc_alloc(MEMORY[0x277CE6460]);
  v23 = [MEMORY[0x277CE1CB0] typeWithIdentifier:*MEMORY[0x277CE5D98]];
  v24 = [v22 initWithContentType:v23];

  [v24 setDelegate:v10];
  [v24 setOutputFileTypeProfile:*MEMORY[0x277CE5DA0]];
  *buf = *MEMORY[0x277CC0888];
  v43 = *(MEMORY[0x277CC0888] + 16);
  [v24 setPreferredOutputSegmentInterval:buf];
  [v24 setInitialMovieFragmentSequenceNumber:a5];
  [v24 setProducesCombinableFragments:1];
  v25 = objc_alloc(MEMORY[0x277CE6468]);
  v26 = [v25 initWithMediaType:*MEMORY[0x277CE5EA8] outputSettings:0 sourceFormatHint:a3];
  [v26 setExpectsMediaDataInRealTime:1];
  [v26 setMediaTimeScale:1000];
  if (![v24 canAddInput:v26])
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v10;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_impl(&dword_22D12F000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot add video input.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
    goto LABEL_18;
  }

  [v24 addInput:v26];
  objc_storeStrong(v10 + 12, v26);
  if (a4)
  {
    v27 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5E48] outputSettings:0 sourceFormatHint:a4];
    [v27 setExpectsMediaDataInRealTime:1];
    if ([v24 canAddInput:v27])
    {
      [v24 addInput:v27];
      v28 = *(v10 + 13);
      *(v10 + 13) = v27;

      goto LABEL_10;
    }

    v35 = objc_autoreleasePoolPush();
    v36 = v10;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v38;
      _os_log_impl(&dword_22D12F000, v37, OS_LOG_TYPE_ERROR, "%{public}@Cannot add audio input.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
LABEL_18:

    v30 = 0;
    goto LABEL_19;
  }

LABEL_10:
  v29 = *(v10 + 6);
  *(v10 + 6) = v24;

LABEL_11:
  v30 = v10;
LABEL_19:

  return v30;
}

- (void)dealloc
{
  CFRelease(self->_videoFormat);
  audioFormat = self->_audioFormat;
  if (audioFormat)
  {
    CFRelease(audioFormat);
  }

  v4.receiver = self;
  v4.super_class = HMIVideoAssetWriter;
  [(HMIVideoAssetWriter *)&v4 dealloc];
}

- (void)_startWritingAtStartTime:(id *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  buf = *a3;
  [(HMIVideoAssetWriter *)self setLastFlushedFramePresentationTimeStamp:&buf];
  v19 = *a3;
  v5 = [(HMIVideoAssetWriter *)self assetWriter];
  buf = v19;
  [v5 setInitialSegmentStartTime:&buf];

  v6 = [(HMIVideoAssetWriter *)self assetWriter];
  v7 = [v6 startWriting];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      buf = *a3;
      v13 = HMICMTimeDescription(&buf);
      LODWORD(buf.var0) = 138543618;
      *(&buf.var0 + 4) = v12;
      LOWORD(buf.var2) = 2112;
      *(&buf.var2 + 2) = v13;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Started writing at %@", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v9->super.super._status = 2;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMIVideoAssetWriter *)v9 assetWriter];
      v16 = [v15 status];
      v17 = [(HMIVideoAssetWriter *)v9 assetWriter];
      v18 = [v17 error];
      LODWORD(buf.var0) = 138543874;
      *(&buf.var0 + 4) = v14;
      LOWORD(buf.var2) = 2048;
      *(&buf.var2 + 2) = v16;
      HIWORD(buf.var3) = 2112;
      v21 = v18;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to start writing, assetWriter.status: %ld, assetWriter:.error: %@", &buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)assetWriter:(id)a3 didOutputSegmentData:(id)a4 segmentType:(int64_t)a5 segmentReport:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v17;
    v28 = 2048;
    v29 = a5;
    _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_DEBUG, "%{public}@didOutputSegmentData segmentType: %ld", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  if (a5 == 2)
  {
    v20 = [(HMIVideoAssetWriter *)v15 delegateQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __82__HMIVideoAssetWriter_assetWriter_didOutputSegmentData_segmentType_segmentReport___block_invoke_2;
    v21[3] = &unk_278755A48;
    v21[4] = v15;
    v19 = &v22;
    v22 = v11;
    v23 = v12;
    dispatch_async(v20, v21);

    v18 = v23;
    goto LABEL_7;
  }

  if (a5 == 1)
  {
    v18 = [(HMIVideoAssetWriter *)v15 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMIVideoAssetWriter_assetWriter_didOutputSegmentData_segmentType_segmentReport___block_invoke;
    block[3] = &unk_278752818;
    block[4] = v15;
    v19 = &v25;
    v25 = v11;
    dispatch_async(v18, block);
LABEL_7:
  }

  objc_autoreleasePoolPop(v13);
}

void __82__HMIVideoAssetWriter_assetWriter_didOutputSegmentData_segmentType_segmentReport___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [v4 assetWriter:v2 didOutputInitializationSegment:v3];
}

void __82__HMIVideoAssetWriter_assetWriter_didOutputSegmentData_segmentType_segmentReport___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) copy];
  [v2 assetWriter:v3 didOutputSeparableSegment:v4 segmentReport:*(a1 + 48)];

  v5 = [*(a1 + 32) assetWriterDidOutputSeparableSegment];

  if (v5)
  {
    v6 = [*(a1 + 32) assetWriterDidOutputSeparableSegment];
    v6[2]();
  }
}

- (void)_flushAutomatically:(opaqueCMSampleBuffer *)a3
{
  if (HMICMSampleBufferIsVideo(a3))
  {
    [(HMIVideoAssetWriter *)self lastFlushedFramePresentationTimeStamp];
    if (v13)
    {
      [(HMIVideoAssetWriter *)self preferredOutputSegmentInterval];
      if ((v12 & 1) == 0 || ([(HMIVideoAssetWriter *)self preferredOutputSegmentInterval], (v11 & 0x10) == 0))
      {
        if (HMICMSampleBufferIsSync(a3))
        {
          memset(&v10, 0, sizeof(v10));
          CMSampleBufferGetPresentationTimeStamp(&v10, a3);
          memset(&v9, 0, sizeof(v9));
          [(HMIVideoAssetWriter *)self lastFlushedFramePresentationTimeStamp];
          lhs = v10;
          CMTimeSubtract(&v9, &lhs, &rhs);
          memset(&rhs, 0, sizeof(rhs));
          [(HMIVideoAssetWriter *)self preferredOutputSegmentInterval];
          CMTimeMultiplyByRatio(&rhs, &lhs, 1, 10);
          memset(&lhs, 0, sizeof(lhs));
          [(HMIVideoAssetWriter *)self preferredOutputSegmentInterval];
          v5 = rhs;
          CMTimeSubtract(&lhs, &time1, &v5);
          time1 = v9;
          v5 = lhs;
          if ((CMTimeCompare(&time1, &v5) & 0x80000000) == 0)
          {
            [(HMIVideoAssetWriter *)self flushWithCompletionHandler:&__block_literal_global_38];
            time1 = v10;
            [(HMIVideoAssetWriter *)self setLastFlushedFramePresentationTimeStamp:&time1];
          }
        }
      }
    }
  }
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  [(HMIVideoAssetWriter *)self _flushAutomatically:?];
  CFRetain(a3);
  v5 = [(HMIVideoAssetWriter *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HMIVideoAssetWriter_handleSampleBuffer___block_invoke;
  v6[3] = &unk_278754838;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __42__HMIVideoAssetWriter_handleSampleBuffer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _appendSampleBuffer:*(a1 + 40)];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

- (void)_removeTrimDurationAttachmentsFromAudioSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  if (HMICMSampleBufferIsAudio(a3))
  {
    CMRemoveAttachment(a3, *MEMORY[0x277CC0760]);
    v4 = *MEMORY[0x277CC0758];

    CMRemoveAttachment(a3, v4);
  }

  else
  {
    v5 = [HMIVideoAssetWriter _removeTrimDurationAttachmentsFromAudioSampleBuffer:];
    [(HMIVideoAssetWriter *)v5 _ensureFirstAudioSampleBufferHasSufficientPrimingTrim:v6, v7];
  }
}

- (void)_ensureFirstAudioSampleBufferHasSufficientPrimingTrim:(opaqueCMSampleBuffer *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if (!HMICMSampleBufferIsAudio(a3))
  {
    [HMIVideoAssetWriter _removeTrimDurationAttachmentsFromAudioSampleBuffer:];
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription([(HMIVideoAssetWriter *)self audioFormat]);
  if (StreamBasicDescription)
  {
    v6 = StreamBasicDescription;
    v21 = **&MEMORY[0x277CC08F0];
    attachmentModeOut = 0;
    v7 = *MEMORY[0x277CC0760];
    v8 = CMGetAttachment(a3, *MEMORY[0x277CC0760], &attachmentModeOut);
    if (v8)
    {
      CMTimeMakeFromDictionary(&v21, v8);
    }

    mSampleRate = v6->mSampleRate;
    time = v21;
    CMTimeConvertScale(&v19, &time, mSampleRate, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v10 = v6->mFramesPerPacket >> (v6->mFormatID == 1633772389);
    if (v19.value < v10)
    {
      memset(&v18, 0, sizeof(v18));
      CMTimeMake(&v18, v10, v6->mSampleRate);
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        time = v21;
        v15 = HMICMTimeDescription(&time);
        time = v18;
        v16 = HMICMTimeDescription(&time);
        LODWORD(time.value) = 138543874;
        *(&time.value + 4) = v14;
        LOWORD(time.flags) = 2112;
        *(&time.flags + 2) = v15;
        HIWORD(time.epoch) = 2112;
        v23 = v16;
        _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Trying to recover by adjusting trim duration from %@ to the minimum trim duration: %@", &time, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      time = v18;
      v17 = CMTimeCopyAsDictionary(&time, 0);
      CMSetAttachment(a3, v7, v17, 1u);
      CFRelease(v17);
    }
  }
}

- (void)_appendSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = [(HMIVideoAssetWriter *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (self->super.super._status == 4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMICMSampleBufferFormattedDescription(a3, 0);
      LODWORD(buf.value) = 138543618;
      *(&buf.value + 4) = v9;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = v10;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Asset writer has failed fatally, ignoring %@", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    return;
  }

  memset(&v55, 0, sizeof(v55));
  CMSampleBufferGetPresentationTimeStamp(&v55, a3);
  v11 = [(HMIVideoAssetWriter *)self assetWriter];
  v12 = [v11 status] == 0;

  if (v12)
  {
    buf = v55;
    [(HMIVideoAssetWriter *)self _startWritingAtStartTime:&buf];
    self->_dropSamplesUntilSync = 1;
    self->_dropTrimDurationAttachments = 0;
    v21 = [(HMIVideoAssetWriter *)self assetWriter];
    buf = **&MEMORY[0x277CC08F0];
    [v21 startSessionAtSourceTime:&buf];

LABEL_11:
    if (HMICMSampleBufferIsVideo(a3))
    {
      v22 = [(HMIVideoAssetWriter *)self videoInput];
    }

    else
    {
      if (!HMICMSampleBufferIsAudio(a3))
      {
        goto LABEL_20;
      }

      v22 = [(HMIVideoAssetWriter *)self audioInput];
    }

    v23 = v22;
    if (v22)
    {
      if ([v22 isReadyForMoreMediaData])
      {
        v24 = [v23 mediaType];
        v25 = [v24 isEqualToString:*MEMORY[0x277CE5EA8]];

        if (!v25)
        {
LABEL_30:
          if (HMICMSampleBufferIsAudio(a3))
          {
            if (self->_dropTrimDurationAttachments)
            {
              [(HMIVideoAssetWriter *)self _removeTrimDurationAttachmentsFromAudioSampleBuffer:a3];
            }

            else
            {
              self->_dropTrimDurationAttachments = 1;
              if ([(HMIVideoAssetWriter *)self allowRecoveryFromInsufficientAudioTrim])
              {
                [(HMIVideoAssetWriter *)self _ensureFirstAudioSampleBufferHasSufficientPrimingTrim:a3];
              }
            }
          }

          if ([v23 appendSampleBuffer:a3])
          {
            if (HMICMSampleBufferIsVideo(a3))
            {
              CMSampleBufferGetPresentationTimeStamp(&v54, a3);
              buf = v54;
              [(HMIVideoAssetWriter *)self setLastVideoPresentationTimeStamp:&buf];
            }

            else if (HMICMSampleBufferIsAudio(a3))
            {
              CMSampleBufferGetPresentationTimeStamp(&v53, a3);
              buf = v53;
              [(HMIVideoAssetWriter *)self setLastAudioPresentationTimeStamp:&buf];
            }

            [(HMIVideoAssetWriter *)self lastVideoPresentationTimeStamp];
            if (v52)
            {
              [(HMIVideoAssetWriter *)self lastAudioPresentationTimeStamp];
              if (v51)
              {
                memset(&buf, 0, sizeof(buf));
                [(HMIVideoAssetWriter *)self lastVideoPresentationTimeStamp];
                [(HMIVideoAssetWriter *)self lastAudioPresentationTimeStamp];
                CMTimeSubtract(&buf, &lhs, &rhs);
                lhs = buf;
                if (fabs(CMTimeGetSeconds(&lhs)) > 1.0)
                {
                  v45 = objc_autoreleasePoolPush();
                  v46 = self;
                  v47 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                  {
                    v48 = HMFGetLogIdentifier();
                    lhs = buf;
                    Seconds = CMTimeGetSeconds(&lhs);
                    LODWORD(rhs.value) = 138543618;
                    *(&rhs.value + 4) = v48;
                    LOWORD(rhs.flags) = 2048;
                    *(&rhs.flags + 2) = Seconds;
                    _os_log_impl(&dword_22D12F000, v47, OS_LOG_TYPE_DEBUG, "%{public}@Video / Audio Drift (video is ahead by) %+4.3f", &rhs, 0x16u);
                  }

                  objc_autoreleasePoolPop(v45);
                }
              }
            }
          }

          else
          {
            v38 = objc_autoreleasePoolPush();
            v39 = self;
            v40 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = HMFGetLogIdentifier();
              v42 = HMICMSampleBufferFormattedDescription(a3, 0);
              v43 = [(HMIVideoAssetWriter *)v39 assetWriter];
              v44 = [v43 error];
              LODWORD(buf.value) = 138543874;
              *(&buf.value + 4) = v41;
              LOWORD(buf.flags) = 2112;
              *(&buf.flags + 2) = v42;
              HIWORD(buf.epoch) = 2112;
              v58 = v44;
              _os_log_impl(&dword_22D12F000, v40, OS_LOG_TYPE_ERROR, "%{public}@Dropped    %@ because of input error %@", &buf, 0x20u);
            }

            objc_autoreleasePoolPop(v38);
          }

          goto LABEL_49;
        }

        if (HMICMSampleBufferIsSync(a3))
        {
          self->_dropSamplesUntilSync = 0;
          goto LABEL_30;
        }

        if (!self->_dropSamplesUntilSync)
        {
          goto LABEL_30;
        }

        v31 = objc_autoreleasePoolPush();
        v32 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v36 = HMFGetLogIdentifier();
          v37 = HMICMSampleBufferFormattedDescription(a3, 0);
          LODWORD(buf.value) = 138543618;
          *(&buf.value + 4) = v36;
          LOWORD(buf.flags) = 2112;
          *(&buf.flags + 2) = v37;
          _os_log_impl(&dword_22D12F000, v33, OS_LOG_TYPE_DEBUG, "%{public}@Dropped    %@ because asset writer is waiting for a sync sample.", &buf, 0x16u);
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          v35 = HMICMSampleBufferFormattedDescription(a3, 0);
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v34;
          LOWORD(buf.flags) = 2112;
          *(&buf.flags + 2) = v35;
          HIWORD(buf.epoch) = 2112;
          v58 = v23;
          _os_log_impl(&dword_22D12F000, v33, OS_LOG_TYPE_ERROR, "%{public}@Dropped    %@ because an input %@ is not ready for more media data.", &buf, 0x20u);
        }
      }

      objc_autoreleasePoolPop(v31);
LABEL_49:

      return;
    }

LABEL_20:
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = HMICMSampleBufferFormattedDescription(a3, 0);
      LODWORD(buf.value) = 138543618;
      *(&buf.value + 4) = v29;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = v30;
      _os_log_impl(&dword_22D12F000, v28, OS_LOG_TYPE_ERROR, "%{public}@Dropped   %@ because an input for the media type was not found.", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v23 = 0;
    goto LABEL_49;
  }

  v13 = [(HMIVideoAssetWriter *)self assetWriter];
  v14 = [v13 status] == 3;

  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [(HMIVideoAssetWriter *)v16 assetWriter];
    v20 = [v19 error];
    LODWORD(buf.value) = 138543618;
    *(&buf.value + 4) = v18;
    LOWORD(buf.flags) = 2112;
    *(&buf.flags + 2) = v20;
    _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to write to asset writer, error %@", &buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  [(HMIVideoAssetWriter *)v16 _failWithDescription:@"Underlying asset writer has failed."];
}

- (void)flushWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMIVideoAssetWriter *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMIVideoAssetWriter_flushWithCompletionHandler___block_invoke;
  v7[3] = &unk_278752DF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__HMIVideoAssetWriter_flushWithCompletionHandler___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) status] == 4)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v5;
      v6 = "%{public}@Asset writer has failed fatally, ignoring flush.";
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&dword_22D12F000, v7, v8, v6, buf, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([*(a1 + 32) dropSamplesUntilSync])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v5;
      v6 = "%{public}@We don't have anything to flush, ignoring flush.";
      v7 = v4;
      v8 = OS_LOG_TYPE_DEBUG;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v2);
    (*(*(a1 + 40) + 16))();
    return;
  }

  v9 = dispatch_semaphore_create(0);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __50__HMIVideoAssetWriter_flushWithCompletionHandler___block_invoke_20;
  v27 = &unk_278755A70;
  v29 = *(a1 + 40);
  v10 = v9;
  v28 = v10;
  [*(a1 + 32) setAssetWriterDidOutputSeparableSegment:&v24];
  v11 = [*(a1 + 32) assetWriter];
  [v11 flushSegment];

  v12 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v10, v12);
  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [*(a1 + 32) assetWriter];
    v18 = [v17 status];
    v19 = [*(a1 + 32) assetWriter];
    v20 = [v19 error];
    *buf = 138543874;
    v31 = v16;
    v32 = 2048;
    v33 = v18;
    v34 = 2112;
    v35 = v20;
    _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Finished waiting for flushSegment, assetWriter.status: %ld, assetWriter.error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v21 = [*(a1 + 32) assetWriter];
  v22 = [v21 status];

  v23 = *(a1 + 32);
  if (v22 == 3)
  {
    [v23 _failWithDescription:@"Failed to flush segment."];
  }

  else
  {
    [v23 setDropSamplesUntilSync:1];
  }

  [*(a1 + 32) setAssetWriterDidOutputSeparableSegment:0];
}

intptr_t __50__HMIVideoAssetWriter_flushWithCompletionHandler___block_invoke_20(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)flush
{
  v3 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__HMIVideoAssetWriter_flush__block_invoke;
  v6[3] = &unk_2787529D0;
  v7 = v3;
  v4 = v3;
  [(HMIVideoAssetWriter *)self flushWithCompletionHandler:v6];
  v5 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v4, v5);
}

- (void)_failWithDescription:(id)a3
{
  self->super.super._status = 4;
  v5 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:-1 description:a3];
  HMIErrorLog(self, v5);
  v4 = [(HMIVideoAssetWriter *)self delegate];
  [v4 assetWriter:self didFailWithError:v5];
}

- (HMIVideoAssetWriterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end