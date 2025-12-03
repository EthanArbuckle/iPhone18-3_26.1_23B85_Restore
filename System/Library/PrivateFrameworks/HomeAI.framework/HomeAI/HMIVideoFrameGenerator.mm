@interface HMIVideoFrameGenerator
- (HMIVideoFrameGenerator)initWithVideoFragment:(id)fragment;
- (void)generateVideoFramesForTimes:(id)times completionHandler:(id)handler;
@end

@implementation HMIVideoFrameGenerator

- (HMIVideoFrameGenerator)initWithVideoFragment:(id)fragment
{
  fragmentCopy = fragment;
  v12.receiver = self;
  v12.super_class = HMIVideoFrameGenerator;
  v5 = [(HMIVideoFrameGenerator *)&v12 init];
  if (v5)
  {
    v6 = [HMIMemoryAVAsset alloc];
    data = [fragmentCopy data];
    v8 = [(HMIMemoryAVAsset *)v6 initWithData:data];

    v9 = [[HMIVideoAssetReader alloc] initWithAsset:v8];
    reader = v5->_reader;
    v5->_reader = v9;
  }

  return v5;
}

- (void)generateVideoFramesForTimes:(id)times completionHandler:(id)handler
{
  timesCopy = times;
  handlerCopy = handler;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [v8 setDelegate:v9];
  array = [MEMORY[0x277CBEB18] array];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __72__HMIVideoFrameGenerator_generateVideoFramesForTimes_completionHandler___block_invoke;
  v19 = &unk_2787542D8;
  v11 = timesCopy;
  v20 = v11;
  v12 = array;
  v21 = v12;
  [v9 setDecoderDidDecodeSampleBuffer:&v16];
  while (1)
  {
    v13 = [(HMIVideoFrameGenerator *)self reader:v16];
    copyNextSampleBuffer = [v13 copyNextSampleBuffer];

    if (!copyNextSampleBuffer)
    {
      break;
    }

    if (HMICMSampleBufferIsVideo(copyNextSampleBuffer))
    {
      CopyWithoutEdits = HMICMSampleBufferCreateCopyWithoutEdits(copyNextSampleBuffer);
      [v8 handleSampleBuffer:CopyWithoutEdits outputFrame:1];
      CFRelease(CopyWithoutEdits);
    }

    CFRelease(copyNextSampleBuffer);
  }

  [v8 flush];
  handlerCopy[2](handlerCopy, v12);
}

void __72__HMIVideoFrameGenerator_generateVideoFramesForTimes_completionHandler___block_invoke(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  memset(&v10, 0, sizeof(v10));
  HMICMSampleBufferGetPresentationTimeRange(a3, &v10);
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HMIVideoFrameGenerator_generateVideoFramesForTimes_completionHandler___block_invoke_2;
  v8[3] = &__block_descriptor_80_e17_B16__0__NSValue_8l;
  v9 = v10;
  if ([v5 na_any:v8])
  {
    v6 = *(a1 + 40);
    v7 = [[HMIVideoFrame alloc] initWithSampleBuffer:a3];
    [v6 addObject:v7];
  }
}

BOOL __72__HMIVideoFrameGenerator_generateVideoFramesForTimes_completionHandler___block_invoke_2(_OWORD *a1, void *a2)
{
  if (a2)
  {
    [a2 CMTimeValue];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v3 = a1[3];
  *&v5.start.value = a1[2];
  *&v5.start.epoch = v3;
  *&v5.duration.timescale = a1[4];
  return CMTimeRangeContainsTime(&v5, &time) != 0;
}

@end