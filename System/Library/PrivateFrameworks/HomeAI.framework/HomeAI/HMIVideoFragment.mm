@interface HMIVideoFragment
+ (BOOL)canFragmentData:(id)data;
+ (BOOL)isInitializationSegment:(id)segment combinableWithInitializationSegment:(id)initializationSegment;
+ (void)fragmentData:(id)data handler:(id)handler;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)baseDecodeTimeStamp;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- ($C79183323B9A0D5602617FF3BE5395AC)audioTrackTimeRange;
- ($C79183323B9A0D5602617FF3BE5395AC)videoTrackTimeRange;
- (BOOL)isCombinableWithFragment:(id)fragment;
- (HMIVideoFragment)initWithCoder:(id)coder;
- (HMIVideoFragment)initWithData:(id)data;
- (HMIVideoFragment)initWithData:(id)data timeRange:(id *)range;
- (HMIVideoFragment)initWithFragments:(id)fragments;
- (HMIVideoFragment)initWithInitializationSegment:(id)segment separableSegment:(id)separableSegment;
- (HMIVideoFragment)initWithInitializationSegment:(id)segment separableSegment:(id)separableSegment sequenceNumbers:(id)numbers;
- (HMIVideoFragment)initWithInitializationSegment:(id)segment separableSegment:(id)separableSegment timeRange:(id *)range;
- (HMIVideoFragment)initWithInitializationSegment:(id)segment separableSegment:(id)separableSegment timeRange:(id *)range firstVideoSampleByteRange:(_NSRange)byteRange;
- (HMIVideoFragment)initWithInitializationSegment:(id)segment separableSegment:(id)separableSegment timeRange:(id *)range sequenceNumbers:(id)numbers;
- (HMIVideoFragment)initWithInitializationSegment:(id)segment separableSegment:(id)separableSegment timeRange:(id *)range sequenceNumbers:(id)numbers firstVideoSampleByteRange:(_NSRange)byteRange;
- (NSData)data;
- (NSData)sanitizedData;
- (NSData)sanitizedSeperableSegment;
- (_NSRange)firstVideoSampleByteRange;
- (id)attributeDescriptions;
- (id)redactedCopy;
- (id)redactedCopyWithMetadata;
- (unint64_t)sequenceNumber;
- (void)_ensureAttributes;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoFragment

- (HMIVideoFragment)initWithData:(id)data
{
  v3 = *(MEMORY[0x277CC08C8] + 16);
  v5[0] = *MEMORY[0x277CC08C8];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CC08C8] + 32);
  return [(HMIVideoFragment *)self initWithData:data timeRange:v5];
}

- (HMIVideoFragment)initWithData:(id)data timeRange:(id *)range
{
  v6 = MEMORY[0x277CBEA90];
  dataCopy = data;
  data = [v6 data];
  v9 = *&range->var0.var3;
  v12[0] = *&range->var0.var0;
  v12[1] = v9;
  v12[2] = *&range->var1.var1;
  v10 = [(HMIVideoFragment *)self initWithInitializationSegment:data separableSegment:dataCopy timeRange:v12];

  return v10;
}

- (HMIVideoFragment)initWithFragments:(id)fragments
{
  fragmentsCopy = fragments;
  if ([fragmentsCopy count])
  {
    firstObject = [fragmentsCopy firstObject];
    data = [MEMORY[0x277CBEB28] data];
    array = [MEMORY[0x277CBEB18] array];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __38__HMIVideoFragment_initWithFragments___block_invoke;
    v16[3] = &unk_278754308;
    v17 = firstObject;
    v18 = data;
    v19 = array;
    v8 = array;
    v9 = data;
    v10 = firstObject;
    [fragmentsCopy na_each:v16];
    initializationSegment = [v10 initializationSegment];
    v12 = [(HMIVideoFragment *)self initWithInitializationSegment:initializationSegment separableSegment:v9];

    return v12;
  }

  else
  {
    v14 = [HMIVideoFragment initWithFragments:];
    __38__HMIVideoFragment_initWithFragments___block_invoke(v14, v15);
  }

  return result;
}

void __38__HMIVideoFragment_initWithFragments___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) isCombinableWithFragment:?])
  {
    v3 = *(a1 + 40);
    v4 = [v9 separableSegment];
    [v3 appendData:v4];

    v5 = *(a1 + 48);
    v6 = [v9 sequenceNumbers];
    [v5 addObjectsFromArray:v6];
  }

  else
  {
    v7 = __38__HMIVideoFragment_initWithFragments___block_invoke_cold_1();
    [(HMIVideoFragment *)v7 redactedCopy];
  }
}

- (id)redactedCopy
{
  v3 = [HMIVideoFragment alloc];
  data = [MEMORY[0x277CBEA90] data];
  data2 = [MEMORY[0x277CBEA90] data];
  [(HMIVideoFragment *)self timeRange];
  sequenceNumbers = [(HMIVideoFragment *)self sequenceNumbers];
  firstVideoSampleByteRange = [(HMIVideoFragment *)self firstVideoSampleByteRange];
  v9 = [(HMIVideoFragment *)v3 initWithInitializationSegment:data separableSegment:data2 timeRange:&v11 sequenceNumbers:sequenceNumbers firstVideoSampleByteRange:firstVideoSampleByteRange, v8];

  return v9;
}

- (id)redactedCopyWithMetadata
{
  data = [MEMORY[0x277CBEB28] data];
  separableSegment = [(HMIVideoFragment *)self separableSegment];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__HMIVideoFragment_redactedCopyWithMetadata__block_invoke;
  v12[3] = &unk_278754330;
  v13 = data;
  v5 = data;
  HMIMP4Parse(separableSegment, 0, v12);

  v6 = [HMIVideoFragment alloc];
  initializationSegment = [(HMIVideoFragment *)self initializationSegment];
  [(HMIVideoFragment *)self timeRange];
  sequenceNumbers = [(HMIVideoFragment *)self sequenceNumbers];
  v9 = [(HMIVideoFragment *)v6 initWithInitializationSegment:initializationSegment separableSegment:v5 timeRange:v11 sequenceNumbers:sequenceNumbers firstVideoSampleByteRange:0, 0];

  return v9;
}

uint64_t __44__HMIVideoFragment_redactedCopyWithMetadata__block_invoke(uint64_t a1, int a2)
{
  if (a2 != 1835295092)
  {
    [*(a1 + 32) appendData:{v2, v3}];
  }

  return 1;
}

- (HMIVideoFragment)initWithInitializationSegment:(id)segment separableSegment:(id)separableSegment
{
  v4 = *(MEMORY[0x277CC08C8] + 16);
  v6[0] = *MEMORY[0x277CC08C8];
  v6[1] = v4;
  v6[2] = *(MEMORY[0x277CC08C8] + 32);
  return [(HMIVideoFragment *)self initWithInitializationSegment:segment separableSegment:separableSegment timeRange:v6];
}

- (HMIVideoFragment)initWithInitializationSegment:(id)segment separableSegment:(id)separableSegment sequenceNumbers:(id)numbers
{
  v25 = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  separableSegmentCopy = separableSegment;
  numbersCopy = numbers;
  v11 = *(MEMORY[0x277CC08C8] + 16);
  *v23 = *MEMORY[0x277CC08C8];
  *&v23[16] = v11;
  v24 = *(MEMORY[0x277CC08C8] + 32);
  v12 = [(HMIVideoFragment *)self initWithInitializationSegment:segmentCopy separableSegment:separableSegmentCopy timeRange:v23];
  v13 = v12;
  if (v12)
  {
    if ([(NSArray *)v12->_sequenceNumbers count]&& HMFEqualObjects())
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v13;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        sequenceNumbers = v13->_sequenceNumbers;
        *v23 = 138543874;
        *&v23[4] = v17;
        *&v23[12] = 2112;
        *&v23[14] = numbersCopy;
        *&v23[22] = 2112;
        *&v23[24] = sequenceNumbers;
        _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_ERROR, "%{public}@Provided sequenceNumbers: %@, don't match fragment's sequenceNumbers: %@", v23, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v19 = [numbersCopy copy];
    v20 = v13->_sequenceNumbers;
    v13->_sequenceNumbers = v19;

    v13->_videoFormatDescription = 0;
    v13->_audioFormatDescription = 0;
    v13->_attributesLoaded = 0;
    v21 = MEMORY[0x277CC0898];
    *&v13->_baseDecodeTimeStamp.value = *MEMORY[0x277CC0898];
    v13->_baseDecodeTimeStamp.epoch = *(v21 + 16);
    v13->_frameReorderingRequired = 1;
  }

  return v13;
}

- (HMIVideoFragment)initWithInitializationSegment:(id)segment separableSegment:(id)separableSegment timeRange:(id *)range
{
  v5 = *&range->var0.var3;
  v7[0] = *&range->var0.var0;
  v7[1] = v5;
  v7[2] = *&range->var1.var1;
  return [(HMIVideoFragment *)self initWithInitializationSegment:segment separableSegment:separableSegment timeRange:v7 firstVideoSampleByteRange:0, 0];
}

- (HMIVideoFragment)initWithInitializationSegment:(id)segment separableSegment:(id)separableSegment timeRange:(id *)range firstVideoSampleByteRange:(_NSRange)byteRange
{
  length = byteRange.length;
  location = byteRange.location;
  segmentCopy = segment;
  separableSegmentCopy = separableSegment;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  array = [MEMORY[0x277CBEB18] array];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__HMIVideoFragment_initWithInitializationSegment_separableSegment_timeRange_firstVideoSampleByteRange___block_invoke;
  v19[3] = &unk_278754380;
  v21 = v22;
  v14 = array;
  v20 = v14;
  HMIMP4Parse(separableSegmentCopy, 0, v19);
  v15 = *&range->var0.var3;
  v18[0] = *&range->var0.var0;
  v18[1] = v15;
  v18[2] = *&range->var1.var1;
  v16 = [(HMIVideoFragment *)self initWithInitializationSegment:segmentCopy separableSegment:separableSegmentCopy timeRange:v18 sequenceNumbers:v14 firstVideoSampleByteRange:location, length];

  _Block_object_dispose(v22, 8);
  return v16;
}

uint64_t __103__HMIVideoFragment_initWithInitializationSegment_separableSegment_timeRange_firstVideoSampleByteRange___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2 == 1836019558)
  {
    v12 = v4;
    v13 = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __103__HMIVideoFragment_initWithInitializationSegment_separableSegment_timeRange_firstVideoSampleByteRange___block_invoke_2;
    v10[3] = &unk_278754380;
    v9 = *(a1 + 32);
    v7 = v9;
    v11 = v9;
    HMIMP4Parse(a4, 0, v10);
  }

  return 1;
}

uint64_t __103__HMIVideoFragment_initWithInitializationSegment_separableSegment_timeRange_firstVideoSampleByteRange___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__HMIVideoFragment_initWithInitializationSegment_separableSegment_timeRange_firstVideoSampleByteRange___block_invoke_3;
  v7[3] = &unk_278754358;
  v6 = *(a1 + 32);
  v4 = v6;
  v8 = v6;
  HMIMP4ParseMFHD(a3, v7);

  return 0;
}

void __103__HMIVideoFragment_initWithInitializationSegment_separableSegment_timeRange_firstVideoSampleByteRange___block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (HMIVideoFragment)initWithInitializationSegment:(id)segment separableSegment:(id)separableSegment timeRange:(id *)range sequenceNumbers:(id)numbers
{
  v6 = *&range->var0.var3;
  v8[0] = *&range->var0.var0;
  v8[1] = v6;
  v8[2] = *&range->var1.var1;
  return [(HMIVideoFragment *)self initWithInitializationSegment:segment separableSegment:separableSegment timeRange:v8 sequenceNumbers:numbers firstVideoSampleByteRange:0, 0];
}

- (HMIVideoFragment)initWithInitializationSegment:(id)segment separableSegment:(id)separableSegment timeRange:(id *)range sequenceNumbers:(id)numbers firstVideoSampleByteRange:(_NSRange)byteRange
{
  length = byteRange.length;
  location = byteRange.location;
  segmentCopy = segment;
  separableSegmentCopy = separableSegment;
  numbersCopy = numbers;
  v25.receiver = self;
  v25.super_class = HMIVideoFragment;
  v17 = [(HMIVideoFragment *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_initializationSegment, segment);
    objc_storeStrong(&v18->_separableSegment, separableSegment);
    v20 = *&range->var0.var3;
    v19 = *&range->var1.var1;
    *&v18->_timeRange.start.value = *&range->var0.var0;
    *&v18->_timeRange.start.epoch = v20;
    *&v18->_timeRange.duration.timescale = v19;
    v21 = [numbersCopy copy];
    sequenceNumbers = v18->_sequenceNumbers;
    v18->_sequenceNumbers = v21;

    v18->_firstVideoSampleByteRange.location = location;
    v18->_firstVideoSampleByteRange.length = length;
    v23 = MEMORY[0x277CC0898];
    v18->_baseDecodeTimeStamp.epoch = *(MEMORY[0x277CC0898] + 16);
    *&v18->_baseDecodeTimeStamp.value = *v23;
  }

  return v18;
}

- (void)_ensureAttributes
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->_attributesLoaded)
  {
    return;
  }

  v35 = 0;
  v36 = 0;
  blockBufferOut = 0;
  v34 = 0;
  theArray = 0;
  cf = 0;
  v29 = 0;
  v30 = 0;
  data = [(HMIVideoFragment *)self data];
  v4 = *MEMORY[0x277CBECE8];
  bytes = [data bytes];
  v6 = [data length];
  v7 = CMBlockBufferCreateWithMemoryBlock(v4, bytes, v6, *MEMORY[0x277CBED00], 0, 0, [data length], 2u, &blockBufferOut);
  if (!v7)
  {
    v7 = CMByteStreamCreateForBlockBuffer();
    if (!v7)
    {
      Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CD6320], @"video/mp4");
      CFRelease(@"video/mp4");
      v14 = FigFormatReaderCreateForStreamReturningResults();
      if (v14)
      {
LABEL_28:
        v8 = v14;
        goto LABEL_5;
      }

      v15 = v34;
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v16)
      {
        v8 = -12782;
        goto LABEL_5;
      }

      v17 = v16(v15, 0, 1986618469, &v36, 0);
      if (v17 != -12843)
      {
        v8 = v17;
        if (v17)
        {
          goto LABEL_5;
        }

        v18 = *MEMORY[0x277CD6490];
        FigBaseObject = FigTrackReaderGetFigBaseObject();
        v14 = CMBaseObjectCopyProperty(FigBaseObject, v18, v4, &theArray);
        if (v14)
        {
          goto LABEL_28;
        }

        v20 = *MEMORY[0x277CD6498];
        v21 = FigTrackReaderGetFigBaseObject();
        v8 = CMBaseObjectCopyProperty(v21, v20, v4, &v30);
        if (v30)
        {
          self->_frameReorderingRequired = CFBooleanGetValue(v30) != 0;
        }

        else
        {
          self->_frameReorderingRequired = 1;
        }

        if (v8)
        {
          goto LABEL_5;
        }

        if (CFArrayGetCount(theArray) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
          self->_videoFormatDescription = CFRetain(ValueAtIndex);
        }

        if (theArray)
        {
          CFRelease(theArray);
        }

        theArray = 0;
        getTimeRangeAssetTrackProperty(v34, v36, &self->_videoTrackTimeRange.start.value);
        v23 = *MEMORY[0x277CD64A0];
        v24 = FigTrackReaderGetFigBaseObject();
        v14 = CMBaseObjectCopyProperty(v24, v23, v4, &v29);
        if (v14)
        {
          goto LABEL_28;
        }

        if (v29)
        {
          CMTimeMakeFromDictionary(&buf, v29);
          self->_baseDecodeTimeStamp = buf;
        }
      }

      v25 = FigFormatReaderCopyTrackByType(v34, 1936684398, &v35);
      if (v25 != -12843)
      {
        v8 = v25;
        if (v25)
        {
          goto LABEL_5;
        }

        v26 = *MEMORY[0x277CD6490];
        v27 = FigTrackReaderGetFigBaseObject();
        v14 = CMBaseObjectCopyProperty(v27, v26, v4, &theArray);
        if (v14)
        {
          goto LABEL_28;
        }

        if (CFArrayGetCount(theArray) >= 1)
        {
          v28 = CFArrayGetValueAtIndex(theArray, 0);
          self->_audioFormatDescription = CFRetain(v28);
        }

        if (theArray)
        {
          CFRelease(theArray);
        }

        theArray = 0;
        getTimeRangeAssetTrackProperty(v34, v35, &self->_audioTrackTimeRange.start.value);
      }

      v8 = 0;
      goto LABEL_5;
    }
  }

  v8 = v7;
  Mutable = 0;
LABEL_5:
  self->_attributesLoaded = 1;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v8)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      LODWORD(buf.value) = 138543618;
      *(&buf.value + 4) = v13;
      LOWORD(buf.flags) = 1024;
      *(&buf.flags + 2) = v8;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to read fragment data, err: %d", &buf, 0x12u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- ($C79183323B9A0D5602617FF3BE5395AC)videoTrackTimeRange
{
  result = [(HMIVideoFragment *)self _ensureAttributes];
  v6 = *&self->_videoTrackTimeRange.start.epoch;
  *&retstr->var0.var0 = *&self->_videoTrackTimeRange.start.value;
  *&retstr->var0.var3 = v6;
  *&retstr->var1.var1 = *&self->_videoTrackTimeRange.duration.timescale;
  return result;
}

- ($C79183323B9A0D5602617FF3BE5395AC)audioTrackTimeRange
{
  result = [(HMIVideoFragment *)self _ensureAttributes];
  v6 = *&self->_audioTrackTimeRange.start.epoch;
  *&retstr->var0.var0 = *&self->_audioTrackTimeRange.start.value;
  *&retstr->var0.var3 = v6;
  *&retstr->var1.var1 = *&self->_audioTrackTimeRange.duration.timescale;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)baseDecodeTimeStamp
{
  result = [(HMIVideoFragment *)self _ensureAttributes];
  *retstr = self->_baseDecodeTimeStamp;
  return result;
}

- (BOOL)isCombinableWithFragment:(id)fragment
{
  fragmentCopy = fragment;
  v5 = CMFormatDescriptionEqual(-[HMIVideoFragment videoFormatDescription](self, "videoFormatDescription"), [fragmentCopy videoFormatDescription]);
  audioFormatDescription = [(HMIVideoFragment *)self audioFormatDescription];
  audioFormatDescription2 = [fragmentCopy audioFormatDescription];

  if (CMFormatDescriptionEqual(audioFormatDescription, audioFormatDescription2))
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  return !v8;
}

- (NSData)data
{
  initializationSegment = [(HMIVideoFragment *)self initializationSegment];
  v4 = [initializationSegment mutableCopy];

  separableSegment = [(HMIVideoFragment *)self separableSegment];
  [v4 appendData:separableSegment];

  v6 = [v4 copy];

  return v6;
}

- (NSData)sanitizedData
{
  data = [MEMORY[0x277CBEB28] data];
  data2 = [(HMIVideoFragment *)self data];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__HMIVideoFragment_sanitizedData__block_invoke;
  v7[3] = &unk_278754330;
  v5 = data;
  v8 = v5;
  HMIMP4Parse(data2, 0, v7);

  return v5;
}

uint64_t __33__HMIVideoFragment_sanitizedData__block_invoke(uint64_t a1, int a2)
{
  if (a2 != 1835295092)
  {
    [*(a1 + 32) appendData:{v2, v3}];
  }

  return 1;
}

- (NSData)sanitizedSeperableSegment
{
  data = [MEMORY[0x277CBEB28] data];
  separableSegment = [(HMIVideoFragment *)self separableSegment];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMIVideoFragment_sanitizedSeperableSegment__block_invoke;
  v7[3] = &unk_278754330;
  v5 = data;
  v8 = v5;
  HMIMP4Parse(separableSegment, 0, v7);

  return v5;
}

uint64_t __45__HMIVideoFragment_sanitizedSeperableSegment__block_invoke(uint64_t a1, int a2)
{
  if (a2 != 1835295092)
  {
    [*(a1 + 32) appendData:{v2, v3}];
  }

  return 1;
}

+ (BOOL)isInitializationSegment:(id)segment combinableWithInitializationSegment:(id)initializationSegment
{
  segmentCopy = segment;
  initializationSegmentCopy = initializationSegment;
  if (segmentCopy)
  {
    v7 = initializationSegmentCopy;
    if (initializationSegmentCopy)
    {
      v8 = [HMIVideoFragment alloc];
      data = [MEMORY[0x277CBEA90] data];
      v10 = [(HMIVideoFragment *)v8 initWithInitializationSegment:segmentCopy separableSegment:data];

      v11 = [HMIVideoFragment alloc];
      data2 = [MEMORY[0x277CBEA90] data];
      v13 = [(HMIVideoFragment *)v11 initWithInitializationSegment:v7 separableSegment:data2];

      LOBYTE(data2) = [(HMIVideoFragment *)v10 isCombinableWithFragment:v13];
      return data2;
    }
  }

  else
  {
    +[HMIVideoFragment isInitializationSegment:combinableWithInitializationSegment:];
  }

  v15 = +[HMIVideoFragment isInitializationSegment:combinableWithInitializationSegment:];
  [(HMIVideoFragment *)v15 fragmentData:v16 handler:v17, v18];
  return result;
}

+ (void)fragmentData:(id)data handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if ([self canFragmentData:dataCopy])
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__4;
    v21[4] = __Block_byref_object_dispose__4;
    v22 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__4;
    v19[4] = __Block_byref_object_dispose__4;
    v20 = 0;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__4;
    v17[4] = __Block_byref_object_dispose__4;
    v18 = 0;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v16 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__HMIVideoFragment_fragmentData_handler___block_invoke;
    v9[3] = &unk_2787543F8;
    v11 = v21;
    v12 = v19;
    v13 = v17;
    v14 = v15;
    v10 = handlerCopy;
    HMIMP4Parse(dataCopy, 0, v9);

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(v17, 8);

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v21, 8);
  }

  else
  {
    v8 = [[HMIVideoFragment alloc] initWithData:dataCopy];
    (*(handlerCopy + 2))(handlerCopy, v8);
  }
}

uint64_t __41__HMIVideoFragment_fragmentData_handler___block_invoke(void *a1, int a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (a2 <= 1836019557)
  {
    if (a2 != 1718909296)
    {
      if (a2 == 1835295092)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = [MEMORY[0x277CBEB28] dataWithData:*(*(a1[5] + 8) + 40)];
        [v11 appendData:*(*(a1[6] + 8) + 40)];
        v12 = [MEMORY[0x277CBEB28] dataWithData:*(*(a1[7] + 8) + 40)];
        [v12 appendData:v8];
        v13 = a1[4];
        v14 = [HMIVideoFragment alloc];
        v15 = *(MEMORY[0x277CC08C8] + 16);
        v21[0] = *MEMORY[0x277CC08C8];
        v21[1] = v15;
        v21[2] = *(MEMORY[0x277CC08C8] + 32);
        v16 = [(HMIVideoFragment *)v14 initWithInitializationSegment:v11 separableSegment:v12 timeRange:v21];
        (*(v13 + 16))(v13, v16);

        objc_autoreleasePoolPop(v10);
        v17 = *(a1[7] + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = 0;
      }

      goto LABEL_11;
    }

    v19 = a1[5];
LABEL_9:
    objc_storeStrong((*(v19 + 8) + 40), a3);
    goto LABEL_11;
  }

  if (a2 == 1836019558)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __41__HMIVideoFragment_fragmentData_handler___block_invoke_2;
    v22[3] = &unk_2787543D0;
    v22[4] = a1[8];
    HMIMP4Parse(v9, 0, v22);
    goto LABEL_11;
  }

  if (a2 == 1836019574)
  {
    v19 = a1[6];
    goto LABEL_9;
  }

LABEL_11:

  return 1;
}

uint64_t __41__HMIVideoFragment_fragmentData_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__HMIVideoFragment_fragmentData_handler___block_invoke_3;
  v4[3] = &unk_2787543A8;
  v4[4] = *(a1 + 32);
  HMIMP4ParseMFHD(a3, v4);
  return 0;
}

+ (BOOL)canFragmentData:(id)data
{
  dataCopy = data;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1718909296;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__HMIVideoFragment_canFragmentData___block_invoke;
  v6[3] = &unk_278754420;
  v6[4] = &v7;
  v6[5] = &v11;
  v6[6] = &v15;
  HMIMP4Parse(dataCopy, 0, v6);
  v4 = *(v12 + 24) == 1 && *(v8 + 6) == 1836019558 && *(v16 + 6) > 0;
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v4;
}

BOOL __36__HMIVideoFragment_canFragmentData___block_invoke(void *a1, int a2)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 24);
  if (v3 == a2)
  {
    if (a2 > 1836019557)
    {
      if (a2 == 1836019558)
      {
        *(v2 + 24) = 1835295092;
        v2 = *(a1[6] + 8);
        v5 = *(v2 + 24) + 1;
        goto LABEL_12;
      }

      v4 = 1836019574;
    }

    else
    {
      if (a2 == 1718909296)
      {
        v5 = 1836019574;
        goto LABEL_12;
      }

      v4 = 1835295092;
    }

    if (a2 == v4)
    {
      v5 = 1836019558;
LABEL_12:
      *(v2 + 24) = v5;
    }
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 0;
  }

  return v3 == a2;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  [(HMIVideoFragment *)self timeRange];
  if ((v10 & 1) == 0 || ([(HMIVideoFragment *)self timeRange], (v9 & 1) == 0) || ([(HMIVideoFragment *)self timeRange], v8[14]) || ([(HMIVideoFragment *)self timeRange], (v8[6] & 0x8000000000000000) != 0))
  {
    v5 = &v7;
    result = [(HMIVideoFragment *)self videoTrackTimeRange];
  }

  else
  {
    v5 = v8;
    result = [(HMIVideoFragment *)self timeRange];
  }

  *&retstr->var0 = *v5;
  retstr->var3 = v5[2];
  return result;
}

- (unint64_t)sequenceNumber
{
  sequenceNumbers = [(HMIVideoFragment *)self sequenceNumbers];
  v4 = [sequenceNumbers count];

  if (!v4)
  {
    return 0;
  }

  sequenceNumbers2 = [(HMIVideoFragment *)self sequenceNumbers];
  firstObject = [sequenceNumbers2 firstObject];
  unsignedIntegerValue = [firstObject unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)dealloc
{
  videoFormatDescription = self->_videoFormatDescription;
  if (videoFormatDescription)
  {
    CFRelease(videoFormatDescription);
  }

  audioFormatDescription = self->_audioFormatDescription;
  if (audioFormatDescription)
  {
    CFRelease(audioFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = HMIVideoFragment;
  [(HMIVideoFragment *)&v5 dealloc];
}

- (HMIVideoFragment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_initializationSegment);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_separableSegment);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v11 = NSStringFromSelector(sel_timeRange);
  if (coderCopy)
  {
    [coderCopy decodeCMTimeRangeForKey:v11];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_firstVideoSampleByteRange);
  v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
  v15 = NSRangeFromString(v14);

  v18[0] = v19;
  v18[1] = v20;
  v18[2] = v21;
  v16 = [(HMIVideoFragment *)self initWithInitializationSegment:v7 separableSegment:v10 timeRange:v18 firstVideoSampleByteRange:v15.location, v15.length];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  initializationSegment = [(HMIVideoFragment *)self initializationSegment];
  v6 = NSStringFromSelector(sel_initializationSegment);
  [coderCopy encodeObject:initializationSegment forKey:v6];

  separableSegment = [(HMIVideoFragment *)self separableSegment];
  v8 = NSStringFromSelector(sel_separableSegment);
  [coderCopy encodeObject:separableSegment forKey:v8];

  [(HMIVideoFragment *)self timeRange];
  v9 = NSStringFromSelector(sel_timeRange);
  [coderCopy encodeCMTimeRange:&v12 forKey:v9];

  v13.location = [(HMIVideoFragment *)self firstVideoSampleByteRange];
  v10 = NSStringFromRange(v13);
  v11 = NSStringFromSelector(sel_firstVideoSampleByteRange);
  [coderCopy encodeObject:v10 forKey:v11];
}

- (id)attributeDescriptions
{
  v23[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  sequenceNumbers = [(HMIVideoFragment *)self sequenceNumbers];
  v5 = [sequenceNumbers componentsJoinedByString:{@", "}];
  v21 = [v3 stringWithFormat:@"[%@]", v5];

  v6 = objc_alloc(MEMORY[0x277D0F778]);
  initializationSegment = [(HMIVideoFragment *)self initializationSegment];
  v8 = [v6 initWithName:@"Initialization Segment Data" value:initializationSegment];
  v23[0] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  separableSegment = [(HMIVideoFragment *)self separableSegment];
  v11 = [v9 initWithName:@"Separable Segment Data" value:separableSegment];
  v23[1] = v11;
  v12 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"Sequence Numbers" value:v21];
  v23[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoFragment *)self timeRange];
  v14 = HMICMTimeRangeDescription(v22);
  v15 = [v13 initWithName:@"Time Range" value:v14];
  v23[3] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  v25.location = [(HMIVideoFragment *)self firstVideoSampleByteRange];
  v17 = NSStringFromRange(v25);
  v18 = [v16 initWithName:@"First Video Sample Byte Range" value:v17];
  v23[4] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];

  return v19;
}

- (_NSRange)firstVideoSampleByteRange
{
  objc_copyStruct(v4, &self->_firstVideoSampleByteRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end