void sub_22D131FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  cv::Mat::~Mat(&a17);
  cv::Mat::~Mat(&a29);
  _Unwind_Resume(a1);
}

void cv::Mat::~Mat(cv::Mat *this)
{
  v2 = *(this + 3);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(this);
  }

  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  if (*(this + 1) >= 1)
  {
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(this + 1));
  }

  *(this + 3) = 0;
  v5 = *(this + 9);
  if (v5)
  {
    v6 = v5 == this + 80;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }
}

void sub_22D132260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_22D132394(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2787526A8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

__CFString *systemResourceUsageLevelAsString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"HMISystemResourceUsageLevelUndefined";
  }

  else
  {
    return off_278752888[a1];
  }
}

void sub_22D135178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D1352D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D13540C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HMIFaceFilteredStateAsString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"None";
  }

  else
  {
    return off_2787528B0[a1 - 1];
  }
}

void sub_22D13617C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMIFourCCString(unsigned int a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c", HIBYTE(a1), BYTE2(a1), BYTE1(a1), a1];
  v2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v3 = [v1 stringByTrimmingCharactersInSet:v2];

  return v3;
}

uint64_t HMICMSampleBufferGetMediaType(opaqueCMSampleBuffer *a1)
{
  FormatDescription = CMSampleBufferGetFormatDescription(a1);

  return CMFormatDescriptionGetMediaType(FormatDescription);
}

BOOL HMICMSampleBufferIsSync(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (!SampleAttachmentsArray)
  {
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
  value = 0;
  return !CFDictionaryGetValueIfPresent(ValueAtIndex, *MEMORY[0x277CC06A0], &value) || value == *MEMORY[0x277CBED10];
}

id HMICMSampleBufferShortDescription(opaqueCMSampleBuffer *a1)
{
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  CMSampleBufferGetDecodeTimeStamp(&time, a1);
  v4 = CMTimeCopyDescription(0, &time);
  CMSampleBufferGetPresentationTimeStamp(&time, a1);
  v5 = CMTimeCopyDescription(0, &time);
  CMSampleBufferGetDuration(&time, a1);
  v6 = CMTimeCopyDescription(0, &time);
  v7 = MEMORY[0x277CCACA8];
  v8 = HMIFourCCString(MediaType);
  NumSamples = CMSampleBufferGetNumSamples(a1);
  IsSync = HMICMSampleBufferIsSync(a1);
  v11 = &stru_284057FB8;
  if (IsSync)
  {
    v11 = @"Sync";
  }

  v12 = [v7 stringWithFormat:@"Type: %@, DTS: %@, PTS: %@, DUR: %@, NUM: %ld [%@]", v8, v4, v5, v6, NumSamples, v11];

  return v12;
}

uint64_t HMIDurationString(double a1)
{
  __y = 0.0;
  v2 = -a1;
  if (a1 >= 0.0)
  {
    v2 = a1;
  }

  v3 = modf(v2 + 0.0005, &__y);
  LODWORD(v4) = __y;
  LODWORD(v5) = __y / 0xE10u;
  if (__y < 3600)
  {
    v5 = 0;
  }

  else
  {
    LODWORD(v4) = __y % 0xE10u;
    v5 = v5;
  }

  v6 = v4 < 60;
  LODWORD(v7) = v4 / 0x3C;
  if (v4 >= 60)
  {
    v4 = v4 % 0x3C;
  }

  else
  {
    v4 = v4;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v7;
  }

  v8 = v3 * 1000.0;
  v11 = v4;
  v9 = 32;
  if (a1 < 0.0)
  {
    v9 = 45;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%c%02d:%02d:%02d.%03d", v9, v5, v7, v11, v8];
}

__CFString *HMITimeString(CMTime *a1, int a2, unsigned int a3)
{
  flags = a1->flags;
  if ((flags & 1) == 0)
  {
    goto LABEL_2;
  }

  if ((a1->flags & 0x1D) == 1)
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = 8;
    }

    timescale = a1->timescale;
    v7 = MEMORY[0x277CCACA8];
    value = a1->value;
    time = *a1;
    if (timescale == a2)
    {
      Seconds = CMTimeGetSeconds(&time);
      v10 = HMIDurationString(Seconds);
      [v7 stringWithFormat:@"%*lld %@", v5, value, v10, v13];
    }

    else
    {
      v11 = CMTimeGetSeconds(&time);
      v10 = HMIDurationString(v11);
      [v7 stringWithFormat:@"%*lld/%-6d %@", v5, value, timescale, v10];
    }
    v4 = ;

    goto LABEL_17;
  }

  if ((flags & 4) != 0)
  {
    v4 = @"POSITIVE INFINITY";
  }

  else if ((flags & 8) != 0)
  {
    v4 = @"NEGATIVE INFINITY";
  }

  else
  {
    if ((flags & 0x10) == 0)
    {
LABEL_2:
      v4 = @"  INVALID TIME   ";
      goto LABEL_17;
    }

    v4 = @"   INDEFINITE    ";
  }

LABEL_17:

  return v4;
}

id HMICMSampleBufferFormattedDescription(opaqueCMSampleBuffer *a1, int a2)
{
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  memset(&v18, 0, sizeof(v18));
  CMSampleBufferGetDecodeTimeStamp(&v18, a1);
  memset(&v17, 0, sizeof(v17));
  CMSampleBufferGetPresentationTimeStamp(&v17, a1);
  memset(&v16, 0, sizeof(v16));
  CMSampleBufferGetDuration(&v16, a1);
  v15 = v18;
  v6 = HMITimeString(&v15, a2, 0);
  v15 = v17;
  v7 = HMITimeString(&v15, a2, 0);
  v15 = v16;
  v8 = HMITimeString(&v15, a2, 0);
  v9 = MEMORY[0x277CCACA8];
  v10 = HMIFourCCString(MediaType);
  IsSync = HMICMSampleBufferIsSync(a1);
  v12 = &stru_284057FB8;
  if (IsSync)
  {
    v12 = @" S";
  }

  v13 = [v9 stringWithFormat:@"%@ DTS %@ PTS %@ dur %@%@", v10, v6, v7, v8, v12];

  return v13;
}

id HMICMSampleBufferTinyDescription(opaqueCMSampleBuffer *a1)
{
  memset(&v4, 0, sizeof(v4));
  CMSampleBufferGetPresentationTimeStamp(&v4, a1);
  time = v4;
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"PTS: %.2f", CMTimeGetSeconds(&time)];

  return v1;
}

CMTimeValue HMICMSampleBufferCreateCopyWithTimingOffset(opaqueCMSampleBuffer *a1, CMTime *a2)
{
  v3 = a1;
  v25 = *MEMORY[0x277D85DE8];
  timingArrayEntriesNeededOut = 0;
  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a1, 0, 0, &timingArrayEntriesNeededOut);
  if (timingArrayEntriesNeededOut)
  {
    MEMORY[0x28223BE20](SampleTimingInfoArray, v5);
    v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (!CMSampleBufferGetSampleTimingInfoArray(v3, timingArrayEntriesNeededOut, v7, 0))
    {
      v9 = timingArrayEntriesNeededOut;
      if (timingArrayEntriesNeededOut >= 1)
      {
        v10 = 0;
        p_presentationTimeStamp = &v7->presentationTimeStamp;
        *&v8 = 138543362;
        v20 = v8;
        *&v8 = 138543618;
        v19 = v8;
        do
        {
          lhs = *a2;
          rhs = *p_presentationTimeStamp;
          CMTimeAdd(&time2, &lhs, &rhs);
          *p_presentationTimeStamp = time2;
          lhs = *a2;
          rhs = p_presentationTimeStamp[1];
          CMTimeAdd(&time2, &lhs, &rhs);
          p_presentationTimeStamp[1] = time2;
          CMTimeMake(&time2, 1, 1);
          lhs = p_presentationTimeStamp[-1];
          if ((CMTimeCompare(&lhs, &time2) & 0x80000000) == 0)
          {
            v12 = objc_autoreleasePoolPush();
            v13 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = HMFGetLogIdentifier();
              LODWORD(time2.value) = v20;
              *(&time2.value + 4) = v14;
              _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Sample has a very large duration, the source video is corrupt.", &time2, 0xCu);
            }

            objc_autoreleasePoolPop(v12);
            v15 = objc_autoreleasePoolPush();
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = HMFGetLogIdentifier();
              LODWORD(time2.value) = v19;
              *(&time2.value + 4) = v17;
              LOWORD(time2.flags) = 2112;
              *(&time2.flags + 2) = v3;
              _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_ERROR, "%{public}@Original Sample Buffer: %@", &time2, 0x16u);
            }

            objc_autoreleasePoolPop(v15);
          }

          ++v10;
          v9 = timingArrayEntriesNeededOut;
          p_presentationTimeStamp += 3;
        }

        while (v10 < timingArrayEntriesNeededOut);
      }

      time2.value = 0;
      CMSampleBufferCreateCopyWithNewTiming(0, v3, v9, v7, &time2);
      return time2.value;
    }
  }

  return v3;
}

CMSampleBufferRef HMICMSampleBufferCreateCopyWithPixelBuffer(opaqueCMSampleBuffer *a1, __CVBuffer *a2)
{
  formatDescriptionOut = 0;
  v4 = *MEMORY[0x277CBECE8];
  CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], a2, &formatDescriptionOut);
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetDuration(&v7.duration, a1);
  CMSampleBufferGetPresentationTimeStamp(&v7.presentationTimeStamp, a1);
  CMSampleBufferGetDecodeTimeStamp(&v7.decodeTimeStamp, a1);
  sampleBufferOut = 0;
  CMSampleBufferCreateReadyWithImageBuffer(v4, a2, formatDescriptionOut, &v7, &sampleBufferOut);
  CFRelease(formatDescriptionOut);
  return sampleBufferOut;
}

uint64_t HMICMSampleBufferTimeAscendingComparator(opaqueCMSampleBuffer *a1, opaqueCMSampleBuffer *a2)
{
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetPresentationTimeStamp(&v7, a1);
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetPresentationTimeStamp(&v6, a2);
  time1 = v7;
  v4 = v6;
  return CMTimeCompare(&time1, &v4);
}

__CFString *HMICMTimeDescription(CMTime *a1)
{
  v3 = *a1;
  v1 = CMTimeCopyDescription(0, &v3);

  return v1;
}

__CFString *HMICMTimeRangeDescription(_OWORD *a1)
{
  v1 = a1[1];
  *&v4.start.value = *a1;
  *&v4.start.epoch = v1;
  *&v4.duration.timescale = a1[2];
  v2 = CMTimeRangeCopyDescription(0, &v4);

  return v2;
}

CMTimeRange *HMICMSampleBufferGetPresentationTimeRange@<X0>(opaqueCMSampleBuffer *a1@<X0>, CMTimeRange *a2@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetPresentationTimeStamp(&v8, a1);
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetDuration(&v7, a1);
  start = v8;
  v5 = v7;
  return CMTimeRangeMake(a2, &start, &v5);
}

BOOL HMIMP4HasFTYP(void *a1)
{
  v1 = a1;
  v2 = [[HMIDataReader alloc] initWithData:v1];

  if ([(HMIDataReader *)v2 length]< 8)
  {
    v3 = 0;
  }

  else
  {
    [(HMIDataReader *)v2 readUInt32];
    v3 = [(HMIDataReader *)v2 readUInt32]== 1718909296;
  }

  return v3;
}

uint64_t HMIMP4Parse(void *a1, char a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a3;
  v6 = [[HMIDataReader alloc] initWithData:v4];
  *&v7 = 138543618;
  v25 = v7;
  while (1)
  {
    v8 = [(HMIDataReader *)v6 position];
    if (v8 >= [v4 length])
    {
LABEL_14:
      v23 = 1;
      goto LABEL_16;
    }

    v9 = [(HMIDataReader *)v6 position];
    v10 = [(HMIDataReader *)v6 readUInt32];
    v11 = [(HMIDataReader *)v6 readUInt32];
    if (!v10)
    {
      break;
    }

    v12 = v11;
    if (v10 == 1)
    {
      v13 = [(HMIDataReader *)v6 readUInt64];
    }

    else
    {
      v13 = v10;
    }

    v14 = [(HMIDataReader *)v6 position];
    [(HMIDataReader *)v6 seek:v9];
    v15 = [(HMIDataReader *)v6 position]+ v13;
    if (v15 > [(HMIDataReader *)v6 length])
    {
      if (a2)
      {
        break;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = v25;
        v28 = v18;
        v29 = 2048;
        v30 = v13;
        _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_ERROR, "%{public}@Bogus atomSize %llu, recovering by adjusting size.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v19 = [(HMIDataReader *)v6 length];
      v13 = v19 - [(HMIDataReader *)v6 position];
    }

    if (v13 < v14 - v9)
    {
      break;
    }

    v20 = [(HMIDataReader *)v6 readData:v13];
    v21 = [v20 subdataWithRange:{v14 - v9, v13 - (v14 - v9)}];
    v22 = v5[2](v5, v12, v20, v21);

    if ((v22 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v23 = 0;
LABEL_16:

  return v23;
}

void HMIMP4ParseMFHD(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[HMIDataReader alloc] initWithData:v4];

  v6 = v5;
  LODWORD(v4) = [(HMIDataReader *)v6 readUInt32];
  [(HMIDataReader *)v6 readUInt32];
  if (v4 == 1)
  {
    [(HMIDataReader *)v6 readUInt64];
  }

  [(HMIDataReader *)v6 readUInt32];
  v3[2](v3, [(HMIDataReader *)v6 readUInt32]);
}

id HMIParseDate(void *a1)
{
  v1 = MEMORY[0x277CCA968];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];
  [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
  v5 = [v3 dateFromString:v2];

  return v5;
}

id HMICGRectDescription(double a1, double a2, double a3, double a4)
{
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f x %.3f", *&a3, *&a4];
  v8 = [v6 stringWithFormat:@"%.3f, %.3f %@", *&a1, *&a2, v7];

  return v8;
}

id HMIUUIDShortDescription(void *a1)
{
  v1 = [a1 UUIDString];
  v2 = [v1 substringToIndex:4];

  return v2;
}

id HMISHA1Data(void *a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  CC_SHA1([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:40];
  if (a2)
  {
    if (a2 >= 20)
    {
      v5 = 20;
    }

    else
    {
      v5 = a2;
    }

    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = md;
    do
    {
      v8 = *v7++;
      [v4 appendFormat:@"%02x", v8];
      --v6;
    }

    while (v6);
  }

  return v4;
}

id HMIRandomData(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEB28] dataWithLength:a1];
  CCRandomGenerateBytes([v1 mutableBytes], objc_msgSend(v1, "length"));
  v2 = [v1 copy];

  return v2;
}

BOOL HMIDispatchSyncWait(void *a1, void *a2, double a3)
{
  v5 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __HMIDispatchSyncWait_block_invoke;
  v13[3] = &unk_278752928;
  v6 = v5;
  v14 = v6;
  v15 = &v16;
  v7 = a1;
  v8 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v13);
  dispatch_async(v7, v8);

  v9 = dispatch_time(0, (a3 * 1000000000.0));
  v10 = dispatch_block_wait(v8, v9);
  if (v10)
  {
    *(v17 + 24) = 1;
  }

  v11 = v10 == 0;

  _Block_object_dispose(&v16, 8);
  return v11;
}

void sub_22D137BB0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t HMISimulateCrash(void *a1, void *a2, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (+[HMIPreference isInternalInstall])
  {
    v7 = HMISimulateCrash_lastCrashReportDate;
    if (!HMISimulateCrash_lastCrashReportDate)
    {
      v8 = [MEMORY[0x277CBEAA8] distantPast];
      v9 = HMISimulateCrash_lastCrashReportDate;
      HMISimulateCrash_lastCrashReportDate = v8;

      v7 = HMISimulateCrash_lastCrashReportDate;
    }

    [v7 timeIntervalSinceNow];
    v11 = v10;
    if (v10 > -120.0)
    {
      v12 = a3;
    }

    else
    {
      v12 = 0;
    }

    if (v12 == 1)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v5;
        *&buf[22] = 2048;
        v28 = -v11;
        _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@Not generating crash report for %@ since another report was generated within last %f seconds.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      v17 = getpid();
      v18 = v6;
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v19 = getSimulateCrashSymbolLoc_ptr;
      v26 = getSimulateCrashSymbolLoc_ptr;
      if (!getSimulateCrashSymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getSimulateCrashSymbolLoc_block_invoke;
        v28 = COERCE_DOUBLE(&unk_2787529F8);
        v29 = &v23;
        __getSimulateCrashSymbolLoc_block_invoke(buf);
        v19 = v24[3];
      }

      _Block_object_dispose(&v23, 8);
      if (!v19)
      {
        HMISimulateCrash_cold_1();
        __break(1u);
      }

      v19(v17, 186429173, v18);

      v20 = [MEMORY[0x277CBEAA8] now];
      v21 = HMISimulateCrash_lastCrashReportDate;
      HMISimulateCrash_lastCrashReportDate = v20;
    }

    v16 = v12 ^ 1u;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void HMIReportMemoryException(void *a1, int a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (+[HMIPreference isInternalInstall])
  {
    v4 = HMIReportMemoryException_lastReportMemoryExceptionDate;
    if (!HMIReportMemoryException_lastReportMemoryExceptionDate)
    {
      v5 = [MEMORY[0x277CBEAA8] distantPast];
      v6 = HMIReportMemoryException_lastReportMemoryExceptionDate;
      HMIReportMemoryException_lastReportMemoryExceptionDate = v5;

      v4 = HMIReportMemoryException_lastReportMemoryExceptionDate;
    }

    [v4 timeIntervalSinceNow];
    if (a2 && (v8 = v7, v7 > -120.0))
    {
      v9 = objc_autoreleasePoolPush();
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v3;
        *&buf[22] = 2048;
        v37 = -v8;
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_ERROR, "%{public}@Not generating a memory exception report for %@ since another report was generated within last %f seconds.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v12 = [MEMORY[0x277CBEAA8] now];
      v13 = HMIReportMemoryException_lastReportMemoryExceptionDate;
      HMIReportMemoryException_lastReportMemoryExceptionDate = v12;

      v14 = MEMORY[0x277D85F48];
      v15 = *MEMORY[0x277D85F48];
      corpse_task_port = 0;
      if (task_generate_corpse(v15, &corpse_task_port))
      {
        v16 = objc_autoreleasePoolPush();
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v18;
          _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_INFO, "%{public}@Failed to generate a corpse task for memory exception reporting", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v16);
      }

      else
      {
        v19 = corpse_task_port;
        v20 = [MEMORY[0x277D0F8E0] processInfo];
        v21 = [v20 executableURL];
        v22 = [v21 path];
        v23 = v22;
        v24 = [v22 UTF8String];
        v25 = dispatch_get_global_queue(-32768, 0);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __HMIReportMemoryException_block_invoke;
        v29[3] = &unk_2787529D0;
        v30 = v3;
        v26 = v25;
        v27 = v29;
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v28 = getReportMemoryExceptionFromTaskSymbolLoc_ptr;
        v35 = getReportMemoryExceptionFromTaskSymbolLoc_ptr;
        if (!getReportMemoryExceptionFromTaskSymbolLoc_ptr)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getReportMemoryExceptionFromTaskSymbolLoc_block_invoke;
          v37 = COERCE_DOUBLE(&unk_2787529F8);
          v38 = &v32;
          __getReportMemoryExceptionFromTaskSymbolLoc_block_invoke(buf);
          v28 = v33[3];
        }

        _Block_object_dispose(&v32, 8);
        if (!v28)
        {
          HMISimulateCrash_cold_1();
          __break(1u);
        }

        v28(v19, 1, v24, v26, v27);

        mach_port_deallocate(*v14, corpse_task_port);
      }
    }
  }
}

void sub_22D139124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __HMIReportMemoryException_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Memory exception reporting for %@ completed with error: %@", &v8, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

void *__getSimulateCrashSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CrashReporterSupportLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CrashReporterSupportLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278752A18;
    v7 = 0;
    CrashReporterSupportLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
    if (CrashReporterSupportLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SimulateCrash");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSimulateCrashSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CrashReporterSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CrashReporterSupportLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getReportMemoryExceptionFromTaskSymbolLoc_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = libMemoryResourceExceptionLibraryCore_frameworkLibrary;
  v11 = libMemoryResourceExceptionLibraryCore_frameworkLibrary;
  if (!libMemoryResourceExceptionLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __libMemoryResourceExceptionLibraryCore_block_invoke;
    v5[4] = &unk_278752A70;
    v6 = &v8;
    v7 = v5;
    v12 = xmmword_278752A50;
    v13 = 0;
    v9[3] = _sl_dlopen();
    libMemoryResourceExceptionLibraryCore_frameworkLibrary = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  v3 = v5[0];
  if (!v2)
  {
    v3 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "ReportMemoryExceptionFromTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getReportMemoryExceptionFromTaskSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22D139574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMemoryResourceExceptionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMemoryResourceExceptionLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22D13A4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D13AAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D13BC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D13BE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D13CDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D13D7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D13DBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL HMILessThanOrEqualWithAccuracy(float a1, float a2, float a3)
{
  if (a1 < a2)
  {
    return 1;
  }

  v4 = a1 - a2;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  return v4 < a3;
}

BOOL HMIGreaterThanOrEqualWithAccuracy(float a1, float a2, float a3)
{
  if (a1 > a2)
  {
    return 1;
  }

  v4 = a1 - a2;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  return v4 < a3;
}

void HMICGRectFlipCoordinateSpace(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  HMICGRectNormalizedFromPixel(a5, a6, a1, a2, a3, a4);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *(MEMORY[0x277CBF2C0] + 16);
  *&v19.a = *MEMORY[0x277CBF2C0];
  *&v19.c = v16;
  *&v19.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v18.a = *&v19.a;
  *&v18.c = v16;
  *&v18.tx = *&v19.tx;
  CGAffineTransformScale(&v19, &v18, a5, a6);
  v17 = v19;
  CGAffineTransformTranslate(&v18, &v17, 0.0, 1.0);
  v19 = v18;
  v17 = v18;
  CGAffineTransformScale(&v18, &v17, 1.0, -1.0);
  v19 = v18;
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  CGRectApplyAffineTransform(v20, &v18);
}

void HMICGRectFlipCoordinateSpaceNormalized(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *&v11.a = *MEMORY[0x277CBF2C0];
  *&v11.c = v8;
  *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v10.a = *&v11.a;
  *&v10.c = v8;
  *&v10.tx = *&v11.tx;
  CGAffineTransformTranslate(&v11, &v10, 0.0, 1.0);
  v9 = v11;
  CGAffineTransformScale(&v10, &v9, 1.0, -1.0);
  v11 = v10;
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectApplyAffineTransform(v12, &v10);
}

CGFloat HMITransformBoundingBoxCoordinatesFromImageSpaceToRoISpace(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 1.0;
  v21.size.height = 1.0;
  if (!CGRectEqualToRect(v21, *&a5))
  {
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    v19 = a4;
    MinX = CGRectGetMinX(v22);
    v23.origin.x = a5;
    v23.origin.y = a6;
    v23.size.width = a7;
    v23.size.height = a8;
    v17 = MinX - CGRectGetMinX(v23);
    v24.origin.x = a5;
    v24.origin.y = a6;
    v24.size.width = a7;
    v24.size.height = a8;
    v20 = v17 / CGRectGetWidth(v24);
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = v19;
    CGRectGetMinY(v25);
    v26.origin.x = a5;
    v26.origin.y = a6;
    v26.size.width = a7;
    v26.size.height = a8;
    CGRectGetMinY(v26);
    v27.origin.x = a5;
    v27.origin.y = a6;
    v27.size.width = a7;
    v27.size.height = a8;
    CGRectGetHeight(v27);
    v28.origin.x = a1;
    v28.origin.y = a2;
    v28.size.width = a3;
    v28.size.height = v19;
    CGRectGetMaxX(v28);
    v29.origin.x = a5;
    v29.origin.y = a6;
    v29.size.width = a7;
    v29.size.height = a8;
    CGRectGetMinX(v29);
    v30.origin.x = a5;
    v30.origin.y = a6;
    v30.size.width = a7;
    v30.size.height = a8;
    CGRectGetWidth(v30);
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = v19;
    CGRectGetMaxY(v31);
    v32.origin.x = a5;
    v32.origin.y = a6;
    v32.size.width = a7;
    v32.size.height = a8;
    CGRectGetMinY(v32);
    v33.origin.x = a5;
    v33.origin.y = a6;
    v33.size.width = a7;
    v33.size.height = a8;
    CGRectGetHeight(v33);
    return v20;
  }

  return a1;
}

double HMIConvertBoundingBoxCoordinatesFromImageSpaceToRoISpace(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v8 = HMITransformBoundingBoxCoordinatesFromImageSpaceToRoISpace(a1, a2, a3, a4, a5, a6, a7, a8);
  v12 = 0;
  v13 = 0;
  v14 = 1.0;
  v15 = 1.0;

  *&result = CGRectIntersection(*&v8, *&v12);
  return result;
}

double HMICGRectSquare(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  Height = CGRectGetHeight(v19);
  v10 = (Width + Height) * 0.5;
  v11 = (Width - v10) * 0.5;
  v12 = (Height - v10) * 0.5;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;

  *&result = CGRectInset(*&v13, v11, v12);
  return result;
}

void HMICGRectSquareNormalized(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  CGAffineTransformMakeScale(&v19, a5, a6);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v21 = CGRectApplyAffineTransform(v20, &v19);
  v12 = HMICGRectSquare(v21.origin.x, v21.origin.y, v21.size.width, v21.size.height);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  CGAffineTransformMakeScale(&v19, 1.0 / a5, 1.0 / a6);
  v22.origin.x = v12;
  v22.origin.y = v14;
  v22.size.width = v16;
  v22.size.height = v18;
  CGRectApplyAffineTransform(v22, &v19);
}

double HMICGRectScaleAroundCenter(double a1, CGFloat a2, CGFloat a3, CGFloat a4, float a5)
{
  v9 = a1;
  Width = CGRectGetWidth(*&a1);
  v17.origin.x = v9;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  v11 = CGRectGetHeight(v17) * a5;
  v18.origin.x = v9;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  v19 = CGRectInset(v18, Width * a5, v11);
  x = v19.origin.x;
  y = v19.origin.y;
  v14 = v19.size.width;
  height = v19.size.height;
  if (CGRectGetWidth(v19) != 0.0)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = v14;
    v20.size.height = height;
    if (CGRectGetHeight(v20) != 0.0)
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = v14;
      v21.size.height = height;
      if (!CGRectIsInfinite(v21))
      {
        return x;
      }
    }
  }

  return v9;
}

double HMICGRectDivideAlongHeight(double a1, CGFloat a2, CGFloat a3, CGFloat a4, float a5)
{
  v9 = a1;
  if (!CGRectIsInfinite(*&a1))
  {
    v14.origin.x = v9;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    if (!CGRectIsNull(v14))
    {
      v15.origin.x = v9;
      v15.origin.y = a2;
      v15.size.width = a3;
      v15.size.height = a4;
      if (!CGRectIsEmpty(v15))
      {
        memset(&slice, 0, sizeof(slice));
        memset(&v12, 0, sizeof(v12));
        v16.origin.x = v9;
        v16.origin.y = a2;
        v16.size.width = a3;
        v16.size.height = a4;
        v10 = CGRectGetHeight(v16) * a5;
        v17.origin.x = v9;
        v17.origin.y = a2;
        v17.size.width = a3;
        v17.size.height = a4;
        CGRectDivide(v17, &slice, &v12, v10, CGRectMinYEdge);
        return slice.origin.x;
      }
    }
  }

  return v9;
}

uint64_t HMILineSgementsIntersect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1;
  }

  if (a1 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a1;
  }

  if (a2 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a2;
  }

  if (a2 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a2;
  }

  if (a5 >= a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = a5;
  }

  if (a5 <= a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = a5;
  }

  if (a6 >= a8)
  {
    v14 = a8;
  }

  else
  {
    v14 = a6;
  }

  if (a6 <= a8)
  {
    v15 = a8;
  }

  else
  {
    v15 = a6;
  }

  v16 = a1 - a3;
  v17 = 0.0;
  if (v16 == 0.0)
  {
    v18 = INFINITY;
    v19 = 0.0;
  }

  else
  {
    v18 = (a2 - a4) / v16;
    v19 = a2 - v18 * a1;
  }

  if (a5 - a7 == 0.0)
  {
    v20 = INFINITY;
  }

  else
  {
    v20 = (a6 - a8) / (a5 - a7);
    v17 = a6 - v20 * a5;
  }

  if (v18 == v20 || v18 == INFINITY && v20 == INFINITY)
  {
    return 0;
  }

  v22 = v8;
  v23 = v9;
  v24 = v12;
  if (v18 == INFINITY)
  {
    v25 = v17 + (v20 * v22);
    v26 = v8;
  }

  else if (v20 == INFINITY)
  {
    v25 = v19 + (v18 * v24);
    v26 = v12;
  }

  else
  {
    v26 = (v19 - v17) / (v20 - v18);
    v25 = v19 + (v18 * v26);
  }

  v27 = v13;
  if (v26 < v23)
  {
    goto LABEL_44;
  }

  v28 = v26 - v23;
  v29 = -(v26 - v23);
  if (v28 < 0.0)
  {
    v28 = v29;
  }

  if (v28 >= 0.0001)
  {
    v30 = 0;
  }

  else
  {
LABEL_44:
    if (v26 <= v22)
    {
      v31 = v26 - v22;
      v32 = -(v26 - v22);
      if (v31 < 0.0)
      {
        v31 = v32;
      }

      v30 = v31 < 0.0001;
    }

    else
    {
      v30 = 1;
    }
  }

  v33 = v11;
  if (v26 < v27)
  {
    goto LABEL_54;
  }

  v34 = v26 - v27;
  v35 = -(v26 - v27);
  if (v34 < 0.0)
  {
    v34 = v35;
  }

  if (v34 >= 0.0001)
  {
    v36 = 0;
  }

  else
  {
LABEL_54:
    if (v26 <= v24)
    {
      v37 = v26 - v24;
      if (v37 < 0.0)
      {
        v37 = -v37;
      }

      v36 = v37 < 0.0001;
    }

    else
    {
      v36 = 1;
    }
  }

  v38 = v15;
  v39 = v36 && v30;
  if (v25 < v33)
  {
    goto LABEL_64;
  }

  v40 = v25 - v33;
  if (v40 < 0.0)
  {
    v40 = -v40;
  }

  if (v40 >= 0.0001)
  {
    v42 = 0;
  }

  else
  {
LABEL_64:
    v41 = v10;
    if (v25 <= v41)
    {
      v43 = v25 - v41;
      if (v43 < 0.0)
      {
        v43 = -v43;
      }

      v42 = v43 < 0.0001;
    }

    else
    {
      v42 = 1;
    }
  }

  v44 = v39 & v42;
  if (v25 < v38)
  {
    goto LABEL_74;
  }

  v45 = v25 - v38;
  if (v45 < 0.0)
  {
    v45 = -v45;
  }

  if (v45 >= 0.0001)
  {
    v47 = 0;
  }

  else
  {
LABEL_74:
    v46 = v14;
    if (v25 <= v46)
    {
      v48 = v25 - v46;
      if (v48 < 0.0)
      {
        v48 = -v48;
      }

      v47 = v48 < 0.0001;
    }

    else
    {
      v47 = 1;
    }
  }

  return v44 & v47;
}

BOOL HMICGRectIntersectsPolygon(void *a1, double a2, double a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v10 = [v9 count];
  v30 = a4;
  v31 = a5;
  v11 = a2 + a4;
  v12 = a3 + a5;
  v13 = 1;
  while (v10 != v13)
  {
    v14 = [v9 objectAtIndexedSubscript:v13 - 1];
    [v14 point];
    v16 = v15;
    v18 = v17;

    v19 = [v9 objectAtIndexedSubscript:v13];
    [v19 point];
    v21 = v20;
    v23 = v22;

    if ((HMILineSgementsIntersect(v16, v18, v21, v23, a2, a3, v11, a3) & 1) == 0 && (HMILineSgementsIntersect(v16, v18, v21, v23, v11, a3, v11, v12) & 1) == 0 && (HMILineSgementsIntersect(v16, v18, v21, v23, v11, v12, a2, v12) & 1) == 0)
    {
      ++v13;
      if ((HMILineSgementsIntersect(v16, v18, v21, v23, a2, v12, a2, a3) & 1) == 0)
      {
        continue;
      }
    }

    v24 = 1;
    goto LABEL_12;
  }

  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = v30;
  v34.size.height = v31;
  v25 = CGPathCreateWithRect(v34, 0);
  v26 = [v9 objectAtIndexedSubscript:0];
  [v26 point];
  v27 = CGPathContainsPoint(v25, 0, v32, 0);

  if (v27)
  {
    v24 = 1;
  }

  else
  {
    v28 = HMICreatePathFromPoints(v9);
    v33.x = a2;
    v33.y = a3;
    v24 = CGPathContainsPoint(v28, 0, v33, 0);
    CGPathRelease(v28);
  }

  CGPathRelease(v25);
LABEL_12:

  return v24;
}

CGPath *HMICreatePathFromPoints(void *a1)
{
  v1 = a1;
  if ([v1 count] >= 3)
  {
    Mutable = CGPathCreateMutable();
    v3 = [v1 objectAtIndexedSubscript:0];
    [v3 x];
    v5 = v4;
    v6 = [v1 objectAtIndexedSubscript:0];
    [v6 y];
    CGPathMoveToPoint(Mutable, 0, v5, v7);

    if ([v1 count] >= 2)
    {
      v8 = 1;
      do
      {
        v9 = [v1 objectAtIndexedSubscript:v8];
        [v9 x];
        v11 = v10;
        v12 = [v1 objectAtIndexedSubscript:v8];
        [v12 y];
        CGPathAddLineToPoint(Mutable, 0, v11, v13);

        ++v8;
      }

      while ([v1 count] > v8);
    }
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

float HMICGRectGeneralizedIntersectionOverUnion(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v26 = CGRectUnion(*&a1, *&a5);
  height = v26.size.height;
  width = v26.size.width;
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  v27 = CGRectIntersection(v26, v30);
  y = v27.origin.y;
  x = v27.origin.x;
  v22 = v27.size.height;
  v23 = v27.size.width;
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  v16 = -1.0;
  if (!CGRectIsNull(v27))
  {
    v28.origin.x = a5;
    v28.origin.y = a6;
    v28.size.width = a7;
    v28.size.height = a8;
    if (!CGRectIsNull(v28))
    {
      v29.origin.y = y;
      v29.origin.x = x;
      v29.size.width = v23;
      v29.size.height = v22;
      IsNull = CGRectIsNull(v29);
      v18 = v23 * v22;
      if (IsNull)
      {
        v18 = 0.0;
      }

      return v18 / (a7 * a8 + a3 * a4 - v18 + 0.000000001) - (width * height - (a7 * a8 + a3 * a4 - v18)) / (width * height + 0.000000001);
    }
  }

  return v16;
}

double HMICGPointClampWithSize(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    a1 = a3;
  }

  return fmax(a1, 0.0);
}

BOOL HMICGRectIntersectionOverUnionWithRespectToROI(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  *&v29[16] = a7;
  *&v29[24] = a8;
  *v29 = a5;
  *&v29[8] = a6;
  v31.origin.x = a9;
  v31.origin.y = a10;
  v31.size.width = a11;
  v31.size.height = a12;
  result = CGRectIsEmpty(v31);
  if (!result)
  {
    v32.origin.x = a9;
    v32.origin.y = a10;
    v32.size.width = a11;
    v32.size.height = a12;
    result = CGRectIsNull(v32);
    if (!result)
    {
      v33.origin.x = a1;
      v33.origin.y = a2;
      v33.size.width = a3;
      v33.size.height = a4;
      v36.origin.x = a9;
      v36.origin.y = a10;
      v36.size.width = a11;
      v36.size.height = a12;
      v34 = CGRectIntersection(v33, v36);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
      v37.origin.x = a9;
      v37.origin.y = a10;
      v37.size.width = a11;
      v37.size.height = a12;
      v35 = CGRectIntersection(*v29, v37);

      return HMICGRectIntersectionOverUnion(x, y, width, height, v35.origin.x, v35.origin.y, v35.size.width, v35.size.height);
    }
  }

  return result;
}

BOOL HMICGRectIntersectionOverMinAreaWithRespectToROI(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  *&v29[16] = a7;
  *&v29[24] = a8;
  *v29 = a5;
  *&v29[8] = a6;
  v31.origin.x = a9;
  v31.origin.y = a10;
  v31.size.width = a11;
  v31.size.height = a12;
  result = CGRectIsEmpty(v31);
  if (!result)
  {
    v32.origin.x = a9;
    v32.origin.y = a10;
    v32.size.width = a11;
    v32.size.height = a12;
    result = CGRectIsNull(v32);
    if (!result)
    {
      v33.origin.x = a1;
      v33.origin.y = a2;
      v33.size.width = a3;
      v33.size.height = a4;
      v36.origin.x = a9;
      v36.origin.y = a10;
      v36.size.width = a11;
      v36.size.height = a12;
      v34 = CGRectIntersection(v33, v36);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
      v37.origin.x = a9;
      v37.origin.y = a10;
      v37.size.width = a11;
      v37.size.height = a12;
      v35 = CGRectIntersection(*v29, v37);

      return HMICGRectIntersectionOverMinArea(x, y, width, height, v35.origin.x, v35.origin.y, v35.size.width, v35.size.height);
    }
  }

  return result;
}

float HMICGRectMinElementwiseDistance(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15 = 0.0;
  if (!CGRectIsNull(*&a1))
  {
    rect = a5;
    v41.origin.x = a5;
    v16 = a6;
    v41.origin.y = a6;
    v17 = a7;
    v41.size.width = a7;
    v41.size.height = a8;
    if (!CGRectIsNull(v41))
    {
      v42.origin.x = a1;
      v42.origin.y = a2;
      v42.size.width = a3;
      v42.size.height = a4;
      if (!CGRectIsEmpty(v42))
      {
        v43.origin.x = rect;
        v43.origin.y = v16;
        v43.size.width = a7;
        v43.size.height = a8;
        if (!CGRectIsEmpty(v43))
        {
          v44.origin.x = a1;
          v44.origin.y = a2;
          v44.size.width = a3;
          v18 = v16;
          v44.size.height = a4;
          MinX = CGRectGetMinX(v44);
          v45.origin.x = rect;
          v45.origin.y = v16;
          v45.size.width = v17;
          v45.size.height = a8;
          v36 = vabdd_f64(MinX, CGRectGetMinX(v45));
          v46.origin.x = a1;
          v46.origin.y = a2;
          v38 = a3;
          v46.size.width = a3;
          v19 = a4;
          v46.size.height = a4;
          MinY = CGRectGetMinY(v46);
          v47.origin.x = rect;
          v47.origin.y = v18;
          v47.size.width = v17;
          v47.size.height = a8;
          if (v36 >= vabdd_f64(MinY, CGRectGetMinY(v47)))
          {
            v50.origin.x = a1;
            v22 = a2;
            v21 = v38;
            v50.origin.y = a2;
            v50.size.width = v38;
            v50.size.height = v19;
            v23 = CGRectGetMinY(v50);
            v51.origin.x = rect;
            v51.origin.y = v18;
            v51.size.width = v17;
            v51.size.height = a8;
            v24 = CGRectGetMinY(v51);
          }

          else
          {
            v48.origin.x = a1;
            v22 = a2;
            v21 = v38;
            v48.origin.y = a2;
            v48.size.width = v38;
            v48.size.height = v19;
            v23 = CGRectGetMinX(v48);
            v49.origin.x = rect;
            v49.origin.y = v18;
            v49.size.width = v17;
            v49.size.height = a8;
            v24 = CGRectGetMinX(v49);
          }

          v25 = v23 - v24;
          v34 = fabsf(v25);
          v52.origin.x = a1;
          v52.origin.y = v22;
          v52.size.width = v21;
          v52.size.height = v19;
          MaxX = CGRectGetMaxX(v52);
          v53.origin.x = rect;
          v53.origin.y = v18;
          v53.size.width = v17;
          v53.size.height = a8;
          v33 = vabdd_f64(MaxX, CGRectGetMaxX(v53));
          v54.origin.x = a1;
          v54.origin.y = v22;
          v54.size.width = v21;
          v26 = v19;
          v54.size.height = v19;
          MaxY = CGRectGetMaxY(v54);
          v55.origin.x = rect;
          v55.origin.y = v18;
          v55.size.width = v17;
          v55.size.height = a8;
          if (v33 >= vabdd_f64(MaxY, CGRectGetMaxY(v55)))
          {
            v58.origin.x = a1;
            v58.origin.y = a2;
            v58.size.width = v38;
            v58.size.height = v26;
            v28 = CGRectGetMaxY(v58);
            v59.size.height = a8;
            v59.origin.x = rect;
            v59.origin.y = v18;
            v59.size.width = v17;
            v29 = CGRectGetMaxY(v59);
          }

          else
          {
            v56.origin.x = a1;
            v56.origin.y = a2;
            v56.size.width = v38;
            v56.size.height = v26;
            v28 = CGRectGetMaxX(v56);
            v57.size.height = a8;
            v57.origin.x = rect;
            v57.origin.y = v18;
            v57.size.width = v17;
            v29 = CGRectGetMaxX(v57);
          }

          v30 = v28 - v29;
          v31 = fabsf(v30);
          if (v34 >= v31)
          {
            return v31;
          }

          else
          {
            return v34;
          }
        }
      }
    }
  }

  return v15;
}

float HMICGRectMaxElementwiseDistance(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15 = 0.0;
  if (!CGRectIsNull(*&a1))
  {
    v42 = a4;
    v16 = a5;
    v44.origin.x = a5;
    v17 = a6;
    v44.origin.y = a6;
    v18 = a7;
    v44.size.width = a7;
    v44.size.height = a8;
    if (!CGRectIsNull(v44))
    {
      v45.size.height = v42;
      v45.origin.x = a1;
      v45.origin.y = a2;
      v45.size.width = a3;
      if (!CGRectIsEmpty(v45))
      {
        v46.origin.x = v16;
        v46.origin.y = v17;
        v46.size.width = a7;
        v46.size.height = a8;
        if (!CGRectIsEmpty(v46))
        {
          v47.origin.x = a1;
          v47.origin.y = a2;
          v47.size.width = a3;
          v47.size.height = v42;
          MinX = CGRectGetMinX(v47);
          v48.origin.x = v16;
          v48.origin.y = v17;
          v48.size.width = a7;
          v48.size.height = a8;
          v19 = MinX - CGRectGetMinX(v48);
          if (v19 < 0.0)
          {
            v19 = -v19;
          }

          v38 = v19;
          v41 = a3;
          v49.origin.x = a1;
          v49.origin.y = a2;
          v49.size.width = a3;
          v49.size.height = v42;
          MaxX = CGRectGetMaxX(v49);
          v50.origin.x = v16;
          v50.origin.y = v17;
          v50.size.width = a7;
          v50.size.height = a8;
          v21 = MaxX - CGRectGetMaxX(v50);
          if (v21 < 0.0)
          {
            v21 = -v21;
          }

          v22 = v17;
          if (v38 <= v21)
          {
            v53.origin.x = a1;
            v53.size.width = a3;
            v23 = a2;
            v53.origin.y = a2;
            v53.size.height = v42;
            v24 = CGRectGetMaxX(v53);
            v54.origin.x = v16;
            v54.origin.y = v17;
            v54.size.width = v18;
            v54.size.height = a8;
            v25 = CGRectGetMaxX(v54);
          }

          else
          {
            v51.origin.x = a1;
            v51.size.width = a3;
            v23 = a2;
            v51.origin.y = a2;
            v51.size.height = v42;
            v24 = CGRectGetMinX(v51);
            v52.origin.x = v16;
            v52.origin.y = v17;
            v52.size.width = v18;
            v52.size.height = a8;
            v25 = CGRectGetMinX(v52);
          }

          v26 = v24 - v25;
          if (v26 < 0.0)
          {
            v26 = -v26;
          }

          v27 = v26;
          v37 = v27;
          v55.origin.x = a1;
          v55.origin.y = v23;
          v55.size.width = v41;
          v55.size.height = v42;
          MinY = CGRectGetMinY(v55);
          v56.origin.x = v16;
          v56.origin.y = v17;
          v56.size.width = v18;
          v56.size.height = a8;
          v28 = MinY - CGRectGetMinY(v56);
          if (v28 < 0.0)
          {
            v28 = -v28;
          }

          v36 = v28;
          v57.origin.x = a1;
          v57.origin.y = v23;
          v57.size.width = v41;
          v57.size.height = v42;
          MaxY = CGRectGetMaxY(v57);
          v58.origin.x = v16;
          v58.origin.y = v22;
          v58.size.width = v18;
          v58.size.height = a8;
          v30 = MaxY - CGRectGetMaxY(v58);
          if (v30 < 0.0)
          {
            v30 = -v30;
          }

          if (v36 <= v30)
          {
            v61.origin.x = a1;
            v61.origin.y = a2;
            v61.size.width = v41;
            v61.size.height = v42;
            v31 = CGRectGetMaxY(v61);
            v62.origin.x = v16;
            v62.origin.y = v22;
            v62.size.width = v18;
            v62.size.height = a8;
            v32 = CGRectGetMaxY(v62);
          }

          else
          {
            v59.origin.x = a1;
            v59.origin.y = a2;
            v59.size.width = v41;
            v59.size.height = v42;
            v31 = CGRectGetMinY(v59);
            v60.origin.x = v16;
            v60.origin.y = v22;
            v60.size.width = v18;
            v60.size.height = a8;
            v32 = CGRectGetMinY(v60);
          }

          v33 = v31 - v32;
          if (v33 < 0.0)
          {
            v33 = -v33;
          }

          v34 = v33;
          if (v37 <= v34)
          {
            return v34;
          }

          else
          {
            return v37;
          }
        }
      }
    }
  }

  return v15;
}

float HMICGRectMaxParallelEdgeDistance(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10)
{
  v25 = 0.0;
  if (!CGRectIsNull(*&a1))
  {
    rect = a4;
    v26 = a5;
    v53.origin.x = a5;
    v27 = a6;
    v53.origin.y = a6;
    v28 = a7;
    v53.size.width = a7;
    v29 = a8;
    v53.size.height = a8;
    if (!CGRectIsNull(v53))
    {
      v54.origin.x = a1;
      v54.origin.y = a2;
      v54.size.width = a3;
      v54.size.height = rect;
      if (!CGRectIsEmpty(v54))
      {
        v55.origin.x = v26;
        v55.origin.y = v27;
        v30 = v28;
        v55.size.width = v28;
        v50 = v29;
        v55.size.height = v29;
        if (!CGRectIsEmpty(v55))
        {
          v56.origin.x = a1;
          v56.origin.y = a2;
          v31 = v26;
          v56.size.width = a3;
          v32 = v27;
          v56.size.height = rect;
          MinX = CGRectGetMinX(v56);
          v57.origin.x = v26;
          v57.origin.y = v27;
          v57.size.width = v30;
          v57.size.height = v50;
          v48 = vabdd_f64(MinX, CGRectGetMinX(v57));
          v58.origin.x = a1;
          v58.origin.y = a2;
          v33 = a3;
          v58.size.width = a3;
          v58.size.height = rect;
          MaxX = CGRectGetMaxX(v58);
          v59.origin.x = v31;
          v59.origin.y = v27;
          v59.size.width = v30;
          v59.size.height = v50;
          if (v48 >= vabdd_f64(MaxX, CGRectGetMaxX(v59)))
          {
            v62.origin.x = a1;
            v35 = a2;
            v62.origin.y = a2;
            v62.size.width = v33;
            v62.size.height = rect;
            v36 = CGRectGetMaxX(v62);
            v63.origin.x = v31;
            v63.origin.y = v27;
            v63.size.width = v30;
            v63.size.height = v50;
            v37 = CGRectGetMaxX(v63);
          }

          else
          {
            v60.origin.x = a1;
            v35 = a2;
            v60.origin.y = a2;
            v60.size.width = v33;
            v60.size.height = rect;
            v36 = CGRectGetMinX(v60);
            v61.origin.x = v31;
            v61.origin.y = v27;
            v61.size.width = v30;
            v61.size.height = v50;
            v37 = CGRectGetMinX(v61);
          }

          v38 = v36 - v37;
          v46 = fabsf(v38);
          v64.origin.x = a1;
          v64.origin.y = v35;
          v64.size.width = v33;
          v64.size.height = rect;
          MinY = CGRectGetMinY(v64);
          v65.origin.x = v31;
          v65.origin.y = v27;
          v65.size.width = v30;
          v65.size.height = v50;
          v45 = vabdd_f64(MinY, CGRectGetMinY(v65));
          v66.origin.x = a1;
          v66.origin.y = v35;
          v66.size.width = v33;
          v66.size.height = rect;
          MaxY = CGRectGetMaxY(v66);
          v67.origin.x = v31;
          v67.origin.y = v32;
          v67.size.width = v30;
          v67.size.height = v50;
          if (v45 >= vabdd_f64(MaxY, CGRectGetMaxY(v67)))
          {
            v70.origin.x = a1;
            v70.origin.y = a2;
            v70.size.width = v33;
            v70.size.height = rect;
            v40 = CGRectGetMaxY(v70);
            v71.origin.x = v31;
            v71.origin.y = v32;
            v71.size.width = v30;
            v71.size.height = v50;
            v41 = CGRectGetMaxY(v71);
          }

          else
          {
            v68.origin.x = a1;
            v68.origin.y = a2;
            v68.size.width = v33;
            v68.size.height = rect;
            v40 = CGRectGetMinY(v68);
            v69.origin.x = v31;
            v69.origin.y = v32;
            v69.size.width = v30;
            v69.size.height = v50;
            v41 = CGRectGetMinY(v69);
          }

          v42 = v40 - v41;
          v43 = a10 * fabsf(v42);
          if (a9 * v46 > v43)
          {
            return a9 * v46;
          }

          return v43;
        }
      }
    }
  }

  return v25;
}

float HMICGRectMaxParallelEdgeDistanceRatio(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15 = 0.0;
  if (!CGRectIsNull(*&a1))
  {
    rect_8 = a2;
    v16 = a5;
    v64.origin.x = a5;
    v17 = a6;
    v64.origin.y = a6;
    v18 = a7;
    v64.size.width = a7;
    v19 = a8;
    v64.size.height = a8;
    if (!CGRectIsNull(v64))
    {
      v65.origin.x = a1;
      v65.origin.y = rect_8;
      v65.size.width = a3;
      v65.size.height = a4;
      if (!CGRectIsEmpty(v65))
      {
        v66.origin.x = v16;
        v66.origin.y = v17;
        v20 = v18;
        v66.size.width = v18;
        v66.size.height = v19;
        if (!CGRectIsEmpty(v66))
        {
          v67.origin.x = a1;
          v67.origin.y = rect_8;
          v67.size.width = a3;
          v67.size.height = a4;
          MinX = CGRectGetMinX(v67);
          v68.origin.x = v16;
          v68.origin.y = v17;
          v68.size.width = v18;
          v68.size.height = v19;
          v59 = vabdd_f64(MinX, CGRectGetMinX(v68));
          v69.origin.x = a1;
          v69.origin.y = rect_8;
          v69.size.width = a3;
          v69.size.height = a4;
          MaxX = CGRectGetMaxX(v69);
          v70.origin.x = v16;
          v70.origin.y = v17;
          v70.size.width = v18;
          v58 = v19;
          v70.size.height = v19;
          v22 = v59 < vabdd_f64(MaxX, CGRectGetMaxX(v70));
          v60 = v18;
          v23 = a1;
          v24 = rect_8;
          v25 = a3;
          v26 = a4;
          if (v22)
          {
            v27 = CGRectGetMinX(*&v23);
            v71.origin.x = v16;
            v71.origin.y = v17;
            v71.size.height = v19;
            v71.size.width = v18;
            v28 = CGRectGetMinX(v71);
          }

          else
          {
            v27 = CGRectGetMaxX(*&v23);
            v72.origin.x = v16;
            v72.origin.y = v17;
            v72.size.height = v19;
            v72.size.width = v18;
            v28 = CGRectGetMaxX(v72);
          }

          v29 = v27 - v28;
          v57 = fabsf(v29);
          v73.origin.x = a1;
          v73.origin.y = rect_8;
          v73.size.width = a3;
          v73.size.height = a4;
          MinY = CGRectGetMinY(v73);
          v74.origin.x = v16;
          v74.origin.y = v17;
          v74.size.width = v18;
          v74.size.height = v19;
          v55 = vabdd_f64(MinY, CGRectGetMinY(v74));
          v75.origin.x = a1;
          v75.origin.y = rect_8;
          v75.size.width = a3;
          v75.size.height = a4;
          MaxY = CGRectGetMaxY(v75);
          v76.origin.x = v16;
          v76.origin.y = v17;
          v76.size.width = v20;
          v76.size.height = v19;
          if (v55 >= vabdd_f64(MaxY, CGRectGetMaxY(v76)))
          {
            v79.origin.x = a1;
            v31 = rect_8;
            v79.origin.y = rect_8;
            v79.size.width = a3;
            v79.size.height = a4;
            v32 = CGRectGetMaxY(v79);
            v80.origin.x = v16;
            v80.origin.y = v17;
            v80.size.height = v58;
            v80.size.width = v20;
            v33 = CGRectGetMaxY(v80);
          }

          else
          {
            v77.origin.x = a1;
            v31 = rect_8;
            v77.origin.y = rect_8;
            v77.size.width = a3;
            v77.size.height = a4;
            v32 = CGRectGetMinY(v77);
            v78.origin.x = v16;
            v78.origin.y = v17;
            v78.size.height = v58;
            v78.size.width = v20;
            v33 = CGRectGetMinY(v78);
          }

          v34 = v32 - v33;
          v56 = fabsf(v34);
          v81.origin.x = a1;
          v81.origin.y = v31;
          v81.size.width = a3;
          v81.size.height = a4;
          Width = CGRectGetWidth(v81);
          v82.origin.x = v16;
          v82.origin.y = v17;
          v82.size.width = v60;
          v82.size.height = v58;
          v35 = CGRectGetWidth(v82);
          v36 = Width <= v35;
          if (Width <= v35)
          {
            v37 = v16;
          }

          else
          {
            v37 = a1;
          }

          if (v36)
          {
            v38 = v17;
          }

          else
          {
            v38 = v31;
          }

          if (v36)
          {
            v39 = v60;
          }

          else
          {
            v39 = a3;
          }

          if (v36)
          {
            v40 = v58;
          }

          else
          {
            v40 = a4;
          }

          v41 = CGRectGetWidth(*&v37);
          v53 = v41;
          v83.origin.x = a1;
          v83.origin.y = v31;
          v83.size.width = a3;
          v83.size.height = a4;
          Height = CGRectGetHeight(v83);
          v84.origin.x = v16;
          v84.origin.y = v17;
          v84.size.width = v60;
          v84.size.height = v58;
          v42 = CGRectGetHeight(v84);
          v43 = Height <= v42;
          if (Height <= v42)
          {
            v44 = v16;
          }

          else
          {
            v44 = a1;
          }

          if (v43)
          {
            v45 = v17;
          }

          else
          {
            v45 = v31;
          }

          if (v43)
          {
            v46 = v60;
          }

          else
          {
            v46 = a3;
          }

          if (v43)
          {
            v47 = v58;
          }

          else
          {
            v47 = a4;
          }

          v48 = CGRectGetHeight(*&v44);
          v49 = v56 / v48;
          if ((v57 / v53) <= v49)
          {
            return v49;
          }

          else
          {
            return v57 / v53;
          }
        }
      }
    }
  }

  return v15;
}

void sub_22D140888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __HMISignpostScopeLeave(va);
  _Unwind_Resume(a1);
}

void sub_22D140D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __HMISignpostScopeLeave(va);
  _Unwind_Resume(a1);
}

uint64_t HMIAspectRatioEqualToAspectRatio(unint64_t a1, uint64_t a2)
{
  if (a1 == a2 && !((a2 ^ a1) >> 32))
  {
    return 1;
  }

  if (a1 < 1 || SHIDWORD(a1) < 1)
  {
    return a2 < 1 || SHIDWORD(a2) < 1;
  }

  v3 = SHIDWORD(a2) > 0 && SHIDWORD(a2) * (a1 & 0x7FFFFFFF) == (a2 & 0x7FFFFFFF) * SHIDWORD(a1);
  return a2 >= 1 && v3;
}

uint64_t kHMIPairwiseMatchDescendingComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 score];
  v6 = [v4 numberWithFloat:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 score];
  v9 = v8;

  LODWORD(v10) = v9;
  v11 = [v7 numberWithFloat:v10];
  v12 = [v6 compare:v11];

  return v12;
}

void sub_22D142148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMIGetMemoryStatistics(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 | a2)
  {
    memset(v11, 0, 40);
    task_info_outCnt[0] = 10;
    if (task_info(*MEMORY[0x277D85F48], 0x12u, v11, task_info_outCnt))
    {
      return 0;
    }

    if (a1)
    {
      *a1 = *(v11 + 4);
    }

    if (a2)
    {
      *a2 = *(v11 + 12);
    }
  }

  if (a3 | a4)
  {
    *task_info_outCnt = 0;
    memset(v11, 0, 60);
    v8 = MEMORY[0x2318CB540]();
    host_info_outCnt = 15;
    host_page_size(v8, task_info_outCnt);
    if (host_statistics(v8, 2, v11, &host_info_outCnt))
    {
      return 0;
    }

    v10 = *task_info_outCnt;
    if (a3)
    {
      *a3 = *task_info_outCnt * LODWORD(v11[0]);
    }

    if (a4)
    {
      *a4 = v10 * LODWORD(v11[0]) + ((DWORD2(v11[0]) + DWORD1(v11[0]) + HIDWORD(v11[0])) * v10);
    }
  }

  return 1;
}

BOOL HMIGetMemoryFootprintForProcessID(int a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  v5 = proc_pid_rusage(a1, 6, v7);
  if (!v5)
  {
    if (a2)
    {
      *a2 = *(&v8 + 1);
    }

    if (a3)
    {
      *a3 = v19;
    }
  }

  return v5 == 0;
}

BOOL HMIGetMemoryFootprint(void *a1, void *a2)
{
  v4 = getpid();

  return HMIGetMemoryFootprintForProcessID(v4, a1, a2);
}

id HMIGetAllProcessIDs()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = proc_listallpids(0, 0);
  if ((v1 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v2 = 4 * v1;
  v3 = malloc_type_malloc(4 * v1, 0x100004052888210uLL);
  v4 = proc_listallpids(v3, v2);
  if ((v4 & 0x80000000) != 0)
  {
    free(v3);
LABEL_10:
    v9 = MEMORY[0x277CBEC10];
    goto LABEL_11;
  }

  if (v4)
  {
    v5 = v3;
    v6 = v4;
    do
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      memset(v11, 0, sizeof(v11));
      if (proc_pidinfo(*v5, 3, 0, v11, 136) == 136)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
        v8 = [MEMORY[0x277CCABB0] numberWithInt:*v5];
        [v0 setObject:v8 forKeyedSubscript:v7];
      }

      ++v5;
      --v6;
    }

    while (v6);
  }

  free(v3);
  v9 = v0;
LABEL_11:

  return v9;
}

uint64_t HMIGetProcessID(void *a1)
{
  v1 = a1;
  v2 = HMIGetAllProcessIDs();
  v3 = [v2 objectForKeyedSubscript:v1];

  if (v3)
  {
    v4 = [v2 objectForKeyedSubscript:v1];
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  return v5;
}

uint64_t HMIGetAvailableSpaceForPurgeableAssets(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = CacheDeleteCopyAvailableSpaceForVolume();
  v3 = v2;
  if (a1)
  {
    *a1 = [v2 unsignedLongLongValue];
  }

  return 1;
}

__CFString *HMIThermalPressureLevelAsString(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"HMIThermalPressureLevelNominal";
  }

  else
  {
    return off_278752C58[a1];
  }
}

uint64_t _mapOSThermalLevelToHMIThermalLevel(uint64_t a1)
{
  if (a1 > 29)
  {
    if (a1 == 30)
    {
      return 4;
    }

    if (a1 != 40)
    {
      if (a1 == 50)
      {
        return 6;
      }

      return 0;
    }

    return 5;
  }

  else
  {
    if (!a1)
    {
      return 1;
    }

    if (a1 != 10)
    {
      if (a1 == 20)
      {
        return 3;
      }

      return 0;
    }

    return 2;
  }
}

void sub_22D14352C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMIPeakPowerPressureLevelAsString(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return @"HMIPeakPowerPressureLevelNominal";
  }

  else
  {
    return off_278752C90[a1 + 1];
  }
}

void sub_22D143A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D14439C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __HMISignpostScopeLeave(va);
  _Unwind_Resume(a1);
}

void sub_22D1460E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 168), 8);
  _Unwind_Resume(a1);
}

const char *CVML_getStatusDescription(unint64_t a1)
{
  v1 = "Not supported error";
  switch(a1)
  {
    case 0x59u:
      return v1;
    case 0x5Au:
      v1 = "General error";
      break;
    case 0x5Bu:
      v1 = "Espresso error";
      break;
    case 0x5Cu:
      v1 = "incorrect binserializer key";
      break;
    case 0x5Du:
      v1 = "small sparsity error";
      break;
    case 0x5Eu:
      v1 = "feature extraction error";
      break;
    case 0x5Fu:
      v1 = "initialization error";
      break;
    case 0x60u:
      v1 = "no saved state to revert";
      break;
    case 0x61u:
      v1 = "nominal distance not changed";
      break;
    case 0x62u:
      v1 = "batch size violation";
      break;
    case 0x63u:
      v1 = "computation kill request was issued";
      break;
    case 0x64u:
      v1 = "too few IDs to build VIP model";
      break;
    case 0x65u:
      v1 = "video error";
      break;
    case 0x66u:
      v1 = "error with projection computation";
      break;
    case 0x67u:
      v1 = "missing positional parameter";
      break;
    case 0x68u:
      v1 = "inconsistent state error";
      break;
    case 0x69u:
      v1 = "warping error";
      break;
    case 0x6Au:
      v1 = "OpenGL error";
      break;
    case 0x6Bu:
      v1 = "invalid format";
      break;
    case 0x6Cu:
      v1 = "out of bounds";
      break;
    case 0x6Du:
      v1 = "singular point configuration error";
      break;
    case 0x6Eu:
      v1 = "division by zero";
      break;
    case 0x6Fu:
      v1 = "LAPACK error";
      break;
    case 0x70u:
      v1 = "platform endianess not supported";
      break;
    case 0x71u:
      v1 = "hash already in use";
      break;
    case 0x72u:
      v1 = "invalid ID";
      break;
    case 0x73u:
      v1 = "invalid data type";
      break;
    case 0x74u:
      v1 = "data inconsistency error";
      break;
    case 0x75u:
      v1 = "I/O error";
      break;
    case 0x76u:
      v1 = "unknown option";
      break;
    case 0x77u:
      v1 = "invalid option";
      break;
    case 0x78u:
      v1 = "missing option";
      break;
    case 0x79u:
      v1 = "delegate error";
      break;
    case 0x7Au:
      v1 = "vImage related error";
      break;
    case 0x7Bu:
      v1 = "memory allocation error";
      break;
    case 0x7Cu:
      v1 = "invalid parameter";
      break;
    case 0x7Du:
      v1 = "unexpected null pointer";
      break;
    case 0x7Eu:
      v1 = "internal error";
      break;
    case 0x7Fu:
      v1 = "not implemented error";
      break;
    case 0x80u:
      v1 = "ok";
      break;
    default:
      v1 = CVML_getStatusDescription_ourSharedDefaultStatusDescription;
      snprintf(CVML_getStatusDescription_ourSharedDefaultStatusDescription, 0x3FuLL, "CVML_status module %d error %lld", a1 >> 8, a1 - 128);
      break;
  }

  return v1;
}

const char *CVML_getModuleDescription(uint64_t a1)
{
  v1 = a1 >> 8;
  if (a1 >> 8 > 127)
  {
    if (v1 <= 130)
    {
      switch(v1)
      {
        case 128:
          return "FaceProcessorCLI";
        case 129:
          return "ImageClassifierCLI";
        case 130:
          return "MPCmdlineClientCLI";
      }
    }

    else
    {
      if (v1 <= 132)
      {
        if (v1 == 131)
        {
          return "ClusteringCLI";
        }

        else
        {
          return "ImageProcessorCLI";
        }
      }

      if (v1 == 133)
      {
        return "PhotosProcessorCLI";
      }

      if (v1 == 192)
      {
        return "CVMLEngine";
      }
    }

LABEL_60:
    v2 = CVML_getModuleDescription_ourSharedModuleNameString;
    snprintf(CVML_getModuleDescription_ourSharedModuleNameString, 0x1FuLL, "CVML Module %lld", a1 >> 8);
    return v2;
  }

  v2 = "BinSerializer";
  switch(v1)
  {
    case 1:
      return v2;
    case 2:
      v2 = "ERT";
      break;
    case 3:
      v2 = "Face3D";
      break;
    case 4:
      v2 = "FaceDescriptor";
      break;
    case 5:
      v2 = "FaceFrontalizer";
      break;
    case 6:
      v2 = "FaceWarper";
      break;
    case 7:
      v2 = "Geometry2D";
      break;
    case 8:
      v2 = "Geometry3D";
      break;
    case 9:
      v2 = "ImageGrouping";
      break;
    case 10:
      v2 = "ImageQuality";
      break;
    case 11:
      v2 = "LandmarkDetector";
      break;
    case 12:
      v2 = "MomentProcessor";
      break;
    case 13:
      v2 = "FaceboxAligner";
      break;
    case 14:
      v2 = "ImageDescriptor";
      break;
    case 15:
      v2 = "ImageClassifier";
      break;
    case 16:
      v2 = "ImageProcessing";
      break;
    case 17:
      v2 = "VIPIdentification";
      break;
    case 18:
      v2 = "ImageRegistration";
      break;
    case 19:
      v2 = "SimilarityMatrix";
      break;
    case 20:
      v2 = "Clustering";
      break;
    case 21:
      v2 = "HumanDetector";
      break;
    case 22:
      v2 = "FaceRegionMap";
      break;
    case 23:
      v2 = "ObjectDetector";
      break;
    case 24:
      v2 = "DML";
      break;
    case 25:
      v2 = "SGD";
      break;
    case 26:
      v2 = "ObjectTracker";
      break;
    case 27:
      v2 = "SRCClassifier";
      break;
    case 28:
      v2 = "Kmeans";
      break;
    case 29:
      v2 = "SparseCoding";
      break;
    case 30:
      v2 = "FaceID";
      break;
    case 31:
      v2 = "BoostedClassifier";
      break;
    case 32:
      v2 = "FaceSegmenter";
      break;
    case 33:
      v2 = "ImageAnalyzer";
      break;
    case 34:
      v2 = "FaceAttributes";
      break;
    case 35:
      v2 = "FaceprintAndAttributes";
      break;
    case 36:
      v2 = "FaceQuality";
      break;
    case 64:
      v2 = "Generic";
      break;
    case 65:
      v2 = "ImageTools";
      break;
    case 66:
      v2 = "VideoTools";
      break;
    case 67:
      v2 = "ImageWarper";
      break;
    case 68:
      v2 = "ThirdParty";
      break;
    case 69:
      v2 = "BinSerializerProcessor";
      break;
    case 70:
      v2 = "AppleNetParser";
      break;
    default:
      goto LABEL_60;
  }

  return v2;
}

void *__HMISignpostScopeLeave(void *result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return [result end];
    }
  }

  return result;
}

__CFString *HMIPersonFaceCropSourceAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown source: %ld", a1];
  }

  else
  {
    v2 = off_278752EA8[a1];
  }

  return v2;
}

void sub_22D14C334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D14CF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = HMIBackgroundEstimator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22D14DA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  if (v17 == v18)
  {
  }

  if (v14 == v15)
  {
  }

  if (v11 == v12)
  {
  }

  _Unwind_Resume(a1);
}

void sub_22D14EF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void std::vector<CGPoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t std::deque<CGPoint>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<CGPoint *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<CGPoint *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint const*,CGPoint const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22D151D9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::deque<CGPoint>::push_back(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<CGPoint>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void *std::deque<CGPoint>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<CGPoint *>::emplace_back<CGPoint *&>(a1, &v10);
}

void sub_22D152050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<CGPoint *>::emplace_back<CGPoint *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<CGPoint *>::emplace_front<CGPoint *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<CGPoint *>::emplace_back<CGPoint *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<CGPoint *>::emplace_front<CGPoint *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_22D152E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  os_unfair_lock_unlock(v7 + 2);
  _Unwind_Resume(a1);
}

uint64_t HMIEventClassToCameraVideoAnalyzerEventType(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = objc_opt_class();
  v8[0] = &unk_284075000;
  v7[1] = objc_opt_class();
  v8[1] = &unk_284075018;
  v7[2] = objc_opt_class();
  v8[2] = &unk_284075030;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v3 = [v2 objectForKeyedSubscript:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_22D153570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D153784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D1539E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D153DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D154760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HMIOpenCVEcho(int a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 32;
  *v13 = 0x2000000020;
  *v6.i64 = a1;
  *&v6.i64[1] = a1;
  v7 = a1;
  v8 = a1;
  v10 = v9 + 8;
  v11 = v12;
  v12[0] = 0;
  v12[1] = 0;
  LODWORD(v9[0]) = 1124007936;
  memset(v9 + 4, 0, 48);
  v9[3] = 0u;
  cv::Mat::create(v9, 3, v13, 4);
  cv::Mat::operator=(v9, &v6);
  v1 = *(*&v9[1] + 16 * *v11 + 16 * *(v11 + 1) + 16 * *(v11 + 2));
  if (*(&v9[1] + 1) && atomic_fetch_add(*(&v9[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v9);
  }

  *&v9[1] = 0;
  memset(&v9[2], 0, 24);
  if (SDWORD1(v9[0]) >= 1)
  {
    v2 = 0;
    v3 = v10;
    do
    {
      *&v3[4 * v2++] = 0;
    }

    while (v2 < SDWORD1(v9[0]));
  }

  *(&v9[1] + 1) = 0;
  if (v11)
  {
    v4 = v11 == v12;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    free(v11);
  }

  return v1;
}

void sub_22D155660(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void homeai::mod::ImageDescriptorBufferFloat32::computeDistancesFrom(homeai::mod::ImageDescriptorBufferFloat32 *this@<X0>, vDSP_Length *lpsrc@<X1>, float **a3@<X8>)
{
  if (!v6)
  {
    __cxa_bad_cast();
  }

  if (v6 == this)
  {
    v9 = *(*this + 96);

    v9(this);
  }

  else
  {
    if (*(v6 + 12) != *(this + 12))
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = 3708;
      __cxa_throw(exception, MEMORY[0x277D827F8], 0);
    }

    v7 = *(this + 9);
    v8 = lpsrc[9];
    std::vector<float>::vector[abi:ne200100](a3, v8 * v7);
    if (v7 == 1 && v8 == 1)
    {
      **a3 = (*(*this + 88))(this, lpsrc);
    }

    else if (v7 == 1)
    {
      DataForKthDescriptor = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(lpsrc, 0);
      v11 = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, 0);
      v12 = homeai::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptorAndDescriptors(this, v11, DataForKthDescriptor, v8, *a3);
      if ((v12 & 0x80) == 0)
      {
        v13 = __cxa_allocate_exception(8uLL);
        *v13 = v12;
        __cxa_throw(v13, MEMORY[0x277D827F8], 0);
      }
    }

    else if (v8 == 1)
    {
      v14 = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(lpsrc, 0);
      v15 = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, 0);
      v16 = homeai::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptorAndDescriptors(this, v14, v15, v7, *a3);
      if ((v16 & 0x80) == 0)
      {
        v17 = __cxa_allocate_exception(8uLL);
        *v17 = v16;
        __cxa_throw(v17, MEMORY[0x277D827F8], 0);
      }
    }

    else
    {
      v18 = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(lpsrc, 0);
      if (v7 >= 1)
      {
        v19 = v18;
        v20 = 0;
        v21 = 0;
        v22 = v7 & 0x7FFFFFFF;
        do
        {
          v23 = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, v20);
          v24 = homeai::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptorAndDescriptors(this, v23, v19, v8, &(*a3)[v21]);
          if ((v24 & 0x80) == 0)
          {
            v25 = __cxa_allocate_exception(8uLL);
            *v25 = v24;
            __cxa_throw(v25, MEMORY[0x277D827F8], 0);
          }

          v21 += v8;
          ++v20;
        }

        while (v22 != v20);
      }
    }
  }
}

void sub_22D1644A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(homeai::mod::ImageDescriptorBufferAbstract *this, unint64_t a2)
{
  if (*(this + 9) <= a2)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3692;
    __cxa_throw(exception, MEMORY[0x277D827F8], 0);
  }

  return *(this + 7) + *(this + 8) * a2;
}

uint64_t homeai::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptorAndDescriptors(homeai::mod::ImageDescriptorBufferFloat32 *this, const float *__A, const float *a3, vDSP_Length __N, float *__C)
{
  if (!__A || (v5 = a3) == 0 || (__Y = __C) == 0)
  {
    v12 = &CVML_status_unexpectedNullPointer;
LABEL_10:
    v10 = *v12;
    return (v10 + 128) | 0xE00;
  }

  v7 = __N;
  v10 = 0;
  if (__N > 7)
  {
    v14 = *(this + 26);
    switch(v14)
    {
      case 3:
        v17 = 0.5;
        vDSP_vfill(&v17, __C, 1, __N);
        cblas_sgemv(CblasColMajor, CblasTrans, *(this + 24), v7, 0.5, v5, *(this + 24), __A, 1, 1.0, __Y, 1);
        return (v10 + 128) | 0xE00;
      case 2:
        __Aa = 0.5;
        vDSP_vfill(&__Aa, __C, 1, __N);
        cblas_sgemv(CblasColMajor, CblasTrans, *(this + 24), v7, -0.5, v5, *(this + 24), __A, 1, 1.0, __Y, 1);
        return (v10 + 128) | 0xE00;
      case 1:
        while (1)
        {
          v11 = homeai::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptors(this, __A, v5, __Y);
          if ((v11 & 0x80) == 0)
          {
            break;
          }

          v5 = (v5 + *(this + 8));
          ++__Y;
          if (!--v7)
          {
            return (v10 + 128) | 0xE00;
          }
        }

LABEL_21:
        v15 = v11;
        exception = __cxa_allocate_exception(8uLL);
        *exception = v15;
        __cxa_throw(exception, MEMORY[0x277D827F8], 0);
    }

    v12 = &CVML_status_unknownOption;
    goto LABEL_10;
  }

  if (__N)
  {
    while (1)
    {
      v11 = homeai::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptors(this, __A, v5, __Y);
      if ((v11 & 0x80) == 0)
      {
        break;
      }

      v5 = (v5 + *(this + 8));
      ++__Y;
      if (!--v7)
      {
        return (v10 + 128) | 0xE00;
      }
    }

    goto LABEL_21;
  }

  return (v10 + 128) | 0xE00;
}

float homeai::mod::ImageDescriptorBufferFloat32::computeDistanceFrom(homeai::mod::ImageDescriptorBufferFloat32 *this, const homeai::mod::ImageDescriptorBufferAbstract *a2)
{
  if (*(this + 9) != 1 || *(a2 + 9) != 1)
  {
    v8 = 3708;
    goto LABEL_8;
  }

  DataForKthDescriptor = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, 0);
  v6 = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a2, 0);
  __C = 0.0;
  v8 = homeai::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptors(this, DataForKthDescriptor, v6, &__C);
  if ((v8 & 0x80) == 0)
  {
LABEL_8:
    exception = __cxa_allocate_exception(8uLL);
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x277D827F8], 0);
  }

  return __C;
}

uint64_t homeai::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptors(homeai::mod::ImageDescriptorBufferFloat32 *this, const float *__A, const float *a3, float *__C)
{
  if (__A && a3)
  {
    v5 = 0;
    *__C = 0.0;
    v6 = *(this + 26);
    switch(v6)
    {
      case 3:
        v10 = 0.0;
        vDSP_dotpr(__A, 1, a3, 1, &v10, *(this + 12));
        v7 = (v10 + 1.0) * 0.5;
        goto LABEL_11;
      case 2:
        __Ca = 0.0;
        vDSP_dotpr(__A, 1, a3, 1, &__Ca, *(this + 12));
        v7 = ((__Ca + 1.0) * -0.5) + 1.0;
        goto LABEL_11;
      case 1:
        vDSP_distancesq(__A, 1, a3, 1, __C, *(this + 12));
        v7 = sqrtf(*__C);
LABEL_11:
        *__C = v7;
        return (v5 + 128) | 0xE00;
    }

    v8 = &CVML_status_unknownOption;
  }

  else
  {
    v8 = &CVML_status_unexpectedNullPointer;
  }

  v5 = *v8;
  return (v5 + 128) | 0xE00;
}

uint64_t homeai::mod::ImageDescriptorBufferFloat32::computeSelfDistances@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 72);
  if (v3 > 1)
  {
    v4 = this;
    std::vector<float>::vector[abi:ne200100](a2, ((v3 - 1) * v3) >> 1);
    DataForKthDescriptor = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v4, 0);
    v6 = 0;
    v7 = v3 & 0x7FFFFFFF;
    v8 = 1;
    do
    {
      v9 = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v4, v8);
      this = homeai::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptorAndDescriptors(v4, v9, DataForKthDescriptor, v8, (*a2 + 4 * v6));
      if ((this & 0x80) == 0)
      {
        v10 = this;
        exception = __cxa_allocate_exception(8uLL);
        *exception = v10;
        __cxa_throw(exception, MEMORY[0x277D827F8], 0);
      }

      v6 += v8++;
    }

    while (v7 != v8);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

void sub_22D1649A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *homeai::mod::ImageDescriptorBufferFloat32::getRepresentative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 72);
  if (v4 != 1)
  {
    if (v4)
    {
      v9 = malloc_type_realloc(*(a1 + 112), 4 * v4, 0x100004052888210uLL);
      *(a1 + 112) = v9;
      if (v9)
      {
        v15 = a3;
        memset(__p, 0, sizeof(__p));
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, &v15, &v16, 1uLL);
        if (malloc_type_malloc(4 * *(a1 + 96), 0xB8F4E184uLL))
        {
          operator new();
        }

        exception = __cxa_allocate_exception(8uLL);
        *exception = 3707;
        __cxa_throw(exception, MEMORY[0x277D827F8], 0);
      }

      v5 = &CVML_status_memoryAllocationError;
    }

    else
    {
      v5 = &CVML_status_internalError;
    }

    v10 = *v5;
    if ((v10 & 0x80) != 0)
    {
      v11 = (v10 + 128) | 0xE00;
      v12 = __cxa_allocate_exception(8uLL);
      *v12 = v11;
      __cxa_throw(v12, MEMORY[0x277D827F8], 0);
    }

    return 0;
  }

  v6 = (*(*a1 + 24))(a1);
  if (!v6)
  {
    return 0;
  }
}

void sub_22D164D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<float>::__append(this, __sz - v2);
  }
}

void std::vector<long long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<long long>::__append(a1, a2 - v2);
  }
}

void homeai::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(void **this)
{
  *this = &unk_284053C80;
  free(this[14]);

  homeai::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(this);
}

{
  *this = &unk_284053C80;
  free(this[14]);
  homeai::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(this);

  JUMPOUT(0x2318CB1A0);
}

{
  *this = &unk_284053C80;
  free(this[14]);

  homeai::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(this);
}

uint64_t homeai::mod::ImageDescriptorBufferAbstract::createDeepCopy(homeai::mod::ImageDescriptorBufferAbstract *this)
{
  v2 = (*(*this + 16))(this);
  *(v2 + 88) = 1;
  v3 = *(this + 8);
  v4 = *(this + 9);
  *(v2 + 64) = v3;
  *(v2 + 72) = v4;
  v5 = malloc_type_malloc(v3 * v4, 0xFB939071uLL);
  *(v2 + 56) = v5;
  v6 = *(this + 9);
  *(v2 + 80) = v6;
  memcpy(v5, *(this + 7), *(this + 8) * v6);
  v7 = *(this + 2);
  v8 = *(this + 1);
  if (v8 != v7)
  {
    do
    {
      std::vector<long long>::push_back[abi:ne200100]((v2 + 8), v8++);
    }

    while (v8 != v7);
    std::map<long long,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,int>,std::__tree_node<std::__value_type<long long,int>,void *> *,long>>>(v2 + 32, *(this + 4), this + 5);
  }

  return v2;
}

uint64_t homeai::mod::ImageDescriptorBufferFloat32::print(homeai::mod::ImageDescriptorBufferFloat32 *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v23);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Descriptor count = ", 19);
  v3 = MEMORY[0x2318CB0C0](v2, *(this + 9));
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Descriptor length = ", 20);
  v6 = MEMORY[0x2318CB0C0](v5, *(this + 12));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " (", 2);
  v8 = (*(*this + 104))(this);
  v9 = MEMORY[0x2318CB0C0](v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " bytes", 6);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ")", 1);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  if (*(this + 9))
  {
    v13 = 0;
    v14 = MEMORY[0x277D82680];
    do
    {
      v15 = MEMORY[0x2318CB0C0](&v24, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " = [", 4);
      if (*(this + 24) >= 2)
      {
        v16 = 0;
        do
        {
          homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, v13);
          v17 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", ", 2);
          ++v16;
        }

        while (v16 < *(this + 24) - 1);
      }

      homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, v13);
      v18 = std::ostream::operator<<();
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "]", 1);
      std::ios_base::getloc((v19 + *(*v19 - 24)));
      v20 = std::locale::use_facet(&v29, v14);
      (v20->__vftable[2].~facet_0)(v20, 10);
      std::locale::~locale(&v29);
      std::ostream::put();
      std::ostream::flush();
      ++v13;
    }

    while (v13 < *(this + 9));
  }

  std::ostream::flush();
  std::stringbuf::str();
  v23[0] = *MEMORY[0x277D82818];
  v21 = *(MEMORY[0x277D82818] + 72);
  *(v23 + *(v23[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v24 = v21;
  v25 = MEMORY[0x277D82878] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318CB150](&v28);
}

void sub_22D1654D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::locale::~locale((v26 - 96));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x277D82818]);
  MEMORY[0x2318CB150](&a26);
  _Unwind_Resume(a1);
}

int64x2_t homeai::mod::ImageDescriptorBufferAbstract::setToReferenceToKthDescriptor(homeai::mod::ImageDescriptorBufferAbstract *this, homeai::mod::ImageDescriptorBufferAbstract *a2, unint64_t a3)
{
  v6 = a2 + 8;
  *(a2 + 2) = *(a2 + 1);
  v7 = (a2 + 40);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a2 + 32, *(a2 + 5));
  *(v6 + 3) = v7;
  *(v6 + 5) = 0;
  *v7 = 0;
  v8 = *(this + 1);
  if (v8 != *(this + 2))
  {
    std::vector<long long>::push_back[abi:ne200100](v6, (v8 + 8 * a3));
    *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v6 + 24), (*(this + 1) + 8 * a3)) + 10) = 0;
  }

  DataForKthDescriptor = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, a3);
  *(a2 + 88) = 0;
  v10 = *(this + 8);
  *(a2 + 7) = DataForKthDescriptor;
  *(a2 + 8) = v10;
  result = vdupq_n_s64(1uLL);
  *(a2 + 72) = result;
  return result;
}

void homeai::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(void **this)
{
  *this = &unk_284053E30;
  if (*(this + 88) == 1)
  {
    free(this[7]);
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy((this + 4), this[5]);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

void std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::map<long long,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,int>,std::__tree_node<std::__value_type<long long,int>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_hint_unique_key_args<long long,std::pair<long long const,int> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void std::vector<long long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_hint_unique_key_args<long long,std::pair<long long const,int> const&>(void *a1, void *a2, uint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__find_equal<long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__find_equal<long long>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_22D165F18(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x2318CB150](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2318CB100](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_22D165FD4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2318CB090](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2318CB0A0](v13);
  return a1;
}

void sub_22D166244(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x2318CB0A0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x22D166224);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_22D166478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_22D16672C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22D1667A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::vector<float>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22D166988(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t homeai::clustering::GreedyClusterer::GreedyClusterer(uint64_t this, float a2, float a3, float a4)
{
  *this = &unk_284053D10;
  *(this + 20) = 0x13F800000;
  *(this + 28) = 1;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = a4;
  return this;
}

void homeai::clustering::GreedyClusterer::~GreedyClusterer(homeai::clustering::GreedyClusterer *this)
{
  *this = &unk_284053D10;
  v1 = (this + 32);
  std::vector<std::shared_ptr<homeai::clustering::GreedyClusterer::cluster_t>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_284053D10;
  v2 = (this + 32);
  std::vector<std::shared_ptr<homeai::clustering::GreedyClusterer::cluster_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x2318CB1A0](this, 0x10A1C40832DF375);
}

void homeai::clustering::GreedyClusterer::performClustering(homeai::clustering::GreedyClusterer *a1, void *a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v9[1] = 0;
  v9[2] = v10;
  v8[2] = v9;
  v9[0] = 0;
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  v4 = a2[7];
  v5 = a2[8];
  v6 = (*(*a2 + 104))(a2);
  homeai::clustering::GreedyClusterer::addDescriptors(a1, v4, v5 >> 2, v6 >> 2, a2[9]);
}

void sub_22D167860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, void *a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23)
{
  std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(&a9, a10);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(&a16, a17);
  std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(&a22, a23);
  _Unwind_Resume(a1);
}

void homeai::clustering::GreedyClusterer::addDescriptors(homeai::clustering::GreedyClusterer *this, float *a2, int a3, int a4, uint64_t a5)
{
  v7 = a4;
  v6 = a5;
  if (a2)
  {
    std::allocate_shared[abi:ne200100]<std::vector<long long>,std::allocator<std::vector<long long>>,unsigned long &,0>();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2318CB020](exception, "Descriptor vectors nil");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_22D167E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a12 = &a20;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<homeai::clustering::GreedyClusterer::cluster_t>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<homeai::clustering::GreedyClusterer::cluster_t>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<homeai::clustering::GreedyClusterer::cluster_t>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void homeai::clustering::GreedyClusterer::computeMergePairs(uint64_t a1, void *a2, void *a3, uint64_t *a4, int a5)
{
  if (*(a1 + 40) != *(a1 + 32))
  {
    v5 = *a2;
    v46 = a2 + 1;
    if (*a2 != a2 + 1)
    {
      v7 = a4;
      v8 = a1;
      v9 = a3 + 1;
      do
      {
        v10 = *a3;
        if (*a3 != v9)
        {
          v11 = v5[4];
          do
          {
            v12 = v10[4];
            v13 = v12 <= v11 && a5 == 0;
            if (!v13)
            {
              v14 = *(v8 + 32);
              v15 = 16 * v12;
              v16 = *(v14 + 16 * v12);
              if (*(v16 + 8))
              {
                v17 = *(*(v14 + 16 * v11) + 16);
                v18 = *(v16 + 16);
                __C = 0.0;
                vDSP_dotpr(v17, 1, v18, 1, &__C, 0x80uLL);
                v19 = 1.0 - __C;
                if ((1.0 - __C) < *(v8 + 12))
                {
                  v20 = *(v8 + 32);
                  v21 = **(v20 + 16 * v11);
                  v22 = **(v20 + v15);
                  if (v21 <= v22)
                  {
                    v23 = v22;
                  }

                  else
                  {
                    v23 = v21;
                  }

                  if (v21 >= v22)
                  {
                    v24 = v22;
                  }

                  else
                  {
                    v24 = v21;
                  }

                  v25 = *v7;
                  v27 = *(*v7 + 8);
                  v26 = *(*v7 + 16);
                  if (v27 >= v26)
                  {
                    v29 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *v25) >> 3);
                    v30 = v29 + 1;
                    if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
                      std::vector<int>::__throw_length_error[abi:ne200100]();
                    }

                    v31 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v25) >> 3);
                    if (2 * v31 > v30)
                    {
                      v30 = 2 * v31;
                    }

                    if (v31 >= 0x555555555555555)
                    {
                      v32 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v32 = v30;
                    }

                    if (v32)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<long long,long long,float>>>(*v7, v32);
                    }

                    v33 = 24 * v29;
                    *v33 = v24;
                    *(v33 + 8) = v23;
                    *(v33 + 16) = v19;
                    v28 = 24 * v29 + 24;
                    v34 = *(v25 + 8) - *v25;
                    v35 = v33 - v34;
                    memcpy((v33 - v34), *v25, v34);
                    v36 = *v25;
                    *v25 = v35;
                    *(v25 + 8) = v28;
                    *(v25 + 16) = 0;
                    if (v36)
                    {
                      operator delete(v36);
                    }

                    v7 = a4;
                  }

                  else
                  {
                    *v27 = v24;
                    *(v27 + 8) = v23;
                    v28 = v27 + 24;
                    *(v27 + 16) = v19;
                  }

                  *(v25 + 8) = v28;
                  v37 = **v7;
                  v38 = *(*v7 + 8);
                  v39 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v37) >> 3);
                  v8 = a1;
                  if (v39 >= 0x86471)
                  {
                    v40 = 126 - 2 * __clz(v39);
                    if (v38 == v37)
                    {
                      v41 = 0;
                    }

                    else
                    {
                      v41 = v40;
                    }

                    std::__introsort<std::_ClassicAlgPolicy,homeai::clustering::GreedyClusterer::computeMergePairs(std::set<long long> &,std::set<long long> &,std::shared_ptr<std::vector<std::tuple<long long,long long,float>>>,BOOL)::$_0 &,std::tuple<long long,long long,float>*,false>(v37, v38, v41, 1);
                    std::vector<std::tuple<long long,long long,float>>::resize(*v7, 0x7A120uLL);
                  }
                }
              }
            }

            v42 = v10[1];
            if (v42)
            {
              do
              {
                v43 = v42;
                v42 = *v42;
              }

              while (v42);
            }

            else
            {
              do
              {
                v43 = v10[2];
                v13 = *v43 == v10;
                v10 = v43;
              }

              while (!v13);
            }

            v10 = v43;
          }

          while (v43 != v9);
        }

        v44 = v5[1];
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = v5[2];
            v13 = *v45 == v5;
            v5 = v45;
          }

          while (!v13);
        }

        v5 = v45;
      }

      while (v45 != v46);
    }
  }
}

void homeai::clustering::GreedyClusterer::getClustersFromMergePairs(uint64_t a1, uint64_t **a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 1, 1uLL, memory_order_relaxed);
  }

  homeai::clustering::GreedyClusterer::getConnectedComponents(a1, v3);
}

void sub_22D168468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::tuple<long long,long long,float>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::tuple<long long,long long,float>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void homeai::clustering::GreedyClusterer::getConnectedComponents(uint64_t a1, uint64_t **a2)
{
  if ((atomic_load_explicit(&qword_27D9FABE8, memory_order_acquire) & 1) == 0)
  {
    homeai::clustering::GreedyClusterer::getConnectedComponents(a1);
  }

  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  v3 = **a2;
  v4 = (*a2)[1];
  if (v3 != v4)
  {
    do
    {
      v5 = *(v3 + 8);
      *&v10 = *v3;
      *&v9 = v5;
      *&v11 = &v10;
      v6 = std::__hash_table<std::__hash_value_type<long long,std::unordered_set<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unordered_set<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v12, &v10);
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v6 + 3, &v9);
      v3 += 24;
    }

    while (v3 != v4);
    v3 = **a2;
    v4 = (*a2)[1];
  }

  v7 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  if (v4 == v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,homeai::clustering::GreedyClusterer::computeMergePairs(std::set<long long> &,std::set<long long> &,std::shared_ptr<std::vector<std::tuple<long long,long long,float>>>,BOOL)::$_0 &,std::tuple<long long,long long,float>*,false>(v3, v4, v8, 1);
  operator new();
}

void sub_22D168D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(&a31);
  std::__hash_table<std::__hash_value_type<long long,std::vector<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<long long>>>>::~__hash_table(v32 - 208);
  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  std::__hash_table<std::__hash_value_type<long long,std::unordered_set<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unordered_set<long long>>>>::~__hash_table(v32 - 160);
  _Unwind_Resume(a1);
}

void *std::vector<long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<std::vector<long long>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<long long>>::__emplace_back_slow_path<std::vector<long long> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<long long>>::__construct_one_at_end[abi:ne200100]<std::vector<long long> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void homeai::clustering::GreedyClusterer::getConnectedComponentsWithoutFiltering(uint64_t a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  std::vector<int>::vector[abi:ne200100](&v40, (*(a1 + 40) - *(a1 + 32)) >> 4);
  if (v40 != v41)
  {
    v6 = 0;
    v7 = (v41 - v40 - 4) >> 2;
    v8 = vdupq_n_s64(v7);
    v9 = (v7 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v10 = v40 + 8;
    do
    {
      v11 = vdupq_n_s64(v6);
      v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_22D297DE0)));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        *(v10 - 2) = v6;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        *(v10 - 1) = v6 + 1;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_22D297DD0)))).i32[1])
      {
        *v10 = v6 + 2;
        v10[1] = v6 + 3;
      }

      v6 += 4;
      v10 += 4;
    }

    while (v9 != v6);
  }

  std::vector<std::vector<long long>>::vector[abi:ne200100](&v38, (*(a1 + 40) - *(a1 + 32)) >> 4);
  v13 = *a2;
  v14 = **a2;
  for (i = v13[1]; v14 != i; v14 += 24)
  {
    v16 = *(v14 + 8);
    v36 = *v14;
    v33 = v16;
    std::vector<long long>::push_back[abi:ne200100]((v38 + 24 * v36), &v33);
    std::vector<long long>::push_back[abi:ne200100]((v38 + 24 * v33), &v36);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v43 = 0;
  std::list<long long>::list(&v33, &v43, 1);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  if (v39 != v38)
  {
    v17 = 0;
    while (1)
    {
      v32 = 0;
      v18 = v35;
      if (v35)
      {
        v19 = __p;
        v20 = *(__p + 1);
        v32 = *(__p + 2);
        v21 = *__p;
        *(v21 + 8) = v20;
        *v20 = v21;
        v35 = v18 - 1;
        operator delete(v19);
        goto LABEL_28;
      }

      std::vector<std::vector<long long>>::push_back[abi:ne200100](a3, &v43);
      v22 = v43;
      v44 = v43;
      v23 = (v41 - v40) >> 2;
      if (v23 <= v17)
      {
LABEL_36:
        if (v22)
        {
          v44 = v22;
          operator delete(v22);
        }

        goto LABEL_38;
      }

      v24 = v17;
LABEL_18:
      v25 = *(v40 + v24);
      if (v37[0])
      {
        break;
      }

LABEL_27:
      v32 = *(v40 + v24);
      ++v17;
LABEL_28:
      v42 = &v32;
      if ((std::__tree<std::__value_type<long long,BOOL>,std::__map_value_compare<long long,std::__value_type<long long,BOOL>,std::less<long long>,true>,std::allocator<std::__value_type<long long,BOOL>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&v36, &v32)[5] & 1) == 0)
      {
        v42 = &v32;
        *(std::__tree<std::__value_type<long long,BOOL>,std::__map_value_compare<long long,std::__value_type<long long,BOOL>,std::less<long long>,true>,std::allocator<std::__value_type<long long,BOOL>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&v36, &v32) + 40) = 1;
        std::vector<long long>::push_back[abi:ne200100](&v43, &v32);
        v28 = (v38 + 24 * v32);
        v30 = *v28;
        v29 = v28[1];
        while (v30 != v29)
        {
          v31 = *v30;
          v42 = &v31;
          if ((std::__tree<std::__value_type<long long,BOOL>,std::__map_value_compare<long long,std::__value_type<long long,BOOL>,std::less<long long>,true>,std::allocator<std::__value_type<long long,BOOL>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&v36, &v31)[5] & 1) == 0)
          {
            operator new();
          }

          ++v30;
        }
      }

      if (v39 == v38)
      {
        v22 = v43;
        goto LABEL_36;
      }
    }

    v26 = v37[0];
    while (1)
    {
      v27 = v26[4];
      if (v27 <= v25)
      {
        if (v27 >= v25)
        {
          if (v23 <= ++v24)
          {
            goto LABEL_36;
          }

          goto LABEL_18;
        }

        ++v26;
      }

      v26 = *v26;
      if (!v26)
      {
        v17 = v24;
        goto LABEL_27;
      }
    }
  }

LABEL_38:
  std::__list_imp<long long>::clear(&v33);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(&v36, v37[0]);
  v36 = &v38;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v36);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_22D1692F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, void *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(&a15, a16);
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = &a18;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::tuple<long long,long long,float>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<long long,long long,float>>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void *std::__list_imp<long long>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::vector<std::shared_ptr<homeai::clustering::GreedyClusterer::cluster_t>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<homeai::clustering::GreedyClusterer::cluster_t>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<homeai::clustering::GreedyClusterer::cluster_t>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(a1, a2[1]);
    std::__list_imp<long long>::clear(a2 + 5);

    operator delete(a2);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__tree<long long>::__emplace_hint_unique_key_args<long long,long long const&>(void *a1, void *a2, uint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__find_equal<long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned long,std::list<long long>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::list<long long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<long long>::clear(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::map<unsigned long,std::list<long long>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned long,std::list<long long>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,std::list<long long>>,std::__tree_node<std::__value_type<unsigned long,std::list<long long>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned long,std::list<long long>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,std::list<long long>>,std::__tree_node<std::__value_type<unsigned long,std::list<long long>>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long const,std::list<long long>> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long const,std::list<long long>> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::__find_equal<unsigned long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::__construct_node<std::pair<unsigned long const,std::list<long long>> const&>();
  }

  return v3;
}

void *std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::__find_equal<unsigned long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *std::list<long long>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

void *std::__shared_ptr_emplace<std::vector<long long>>::__shared_ptr_emplace[abi:ne200100]<unsigned long &,std::allocator<std::vector<long long>>,0>(void *a1, unint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284053D40;
  std::vector<long long>::vector[abi:ne200100](a1 + 3, *a2);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<long long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284053D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CB1A0);
}

void std::__shared_ptr_emplace<std::vector<long long>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *std::vector<long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_22D169EE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<homeai::clustering::GreedyClusterer::cluster_t>::__shared_ptr_emplace[abi:ne200100]<int &,float *&,long long &,int,std::allocator<homeai::clustering::GreedyClusterer::cluster_t>,0>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284053D90;
  v5 = *a5;
  *(a1 + 24) = *a4;
  *(a1 + 32) = v5;
  operator new[]();
}

void std::__shared_ptr_emplace<homeai::clustering::GreedyClusterer::cluster_t>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284053D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t std::__shared_ptr_emplace<homeai::clustering::GreedyClusterer::cluster_t>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    JUMPOUT(0x2318CB180);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<homeai::clustering::GreedyClusterer::cluster_t>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<homeai::clustering::GreedyClusterer::cluster_t>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<homeai::clustering::GreedyClusterer::cluster_t>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<homeai::clustering::GreedyClusterer::cluster_t>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::__shared_ptr_emplace<std::vector<std::tuple<long long,long long,float>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284053DE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CB1A0);
}

void std::__shared_ptr_emplace<std::vector<std::tuple<long long,long long,float>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<long long>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<long long>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,false>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v26 = *(a2 - 3);
        v27 = *v9;
        if (v26 < *v9 || v27 >= v26 && ((v30 = *(a2 - 2), v31 = *(v9 + 1), v30 < v31) || v31 >= v30 && *(a2 - 2) < v9[4]))
        {
          *v9 = v26;
          *(a2 - 3) = v27;
          v28 = *(v9 + 1);
          *(v9 + 1) = *(a2 - 2);
          *(a2 - 2) = v28;
          v29 = *(v9 + 4);
          v9[4] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(v9, v9 + 6, v9 + 12, a2 - 6);
      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(v9, v9 + 6, v9 + 12, v9 + 18, a2 - 6);
      return;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,std::tuple<long long,long long,float> *>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &v9[6 * (v13 >> 1)];
    if (v12 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(&v9[6 * v14], v9, a2 - 6);
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(v9, &v9[6 * v14], a2 - 6);
      v16 = 3 * v14;
      v17 = &v9[6 * v14 - 6];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(v9 + 6, v17, a2 - 12);
      v18 = &v9[2 * v16 + 6];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>((a1 + 48), v18, a2 - 18);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(v17, v15, v18);
      v19 = *a1;
      *a1 = *v15;
      *v15 = v19;
      LODWORD(v19) = *(a1 + 16);
      *(a1 + 16) = v15[4];
      *(v15 + 4) = v19;
      if (a5)
      {
        goto LABEL_21;
      }
    }

    v20 = *(a1 - 24);
    if (v20 >= *a1)
    {
      if (*a1 < v20 || (v21 = *(a1 - 16), v22 = *(a1 + 8), v21 >= v22) && (v22 < v21 || *(a1 - 8) >= *(a1 + 16)))
      {
        v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<long long,long long,float> *,std::__less<void,void> &>(a1, a2);
        goto LABEL_26;
      }
    }

LABEL_21:
    v23 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<long long,long long,float> *,std::__less<void,void> &>(a1, a2);
    if ((v24 & 1) == 0)
    {
      goto LABEL_24;
    }

    v25 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(a1, v23);
    v9 = (v23 + 24);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(v23 + 24, a2))
    {
      a4 = -v11;
      a2 = v23;
      if (v25)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v25)
    {
LABEL_24:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,false>(a1, v23, a3, -v11, a5 & 1);
      v9 = (v23 + 24);
LABEL_26:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(v9, v9 + 6, a2 - 6);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(float *a1, float *a2, float *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && ((v20 = *(a2 + 1), v21 = *(a1 + 1), v20 < v21) || v21 >= v20 && a2[4] < a1[4]))
  {
    v5 = *a3;
    if (*a3 < v3 || v3 >= v5 && ((v22 = *(a3 + 1), v23 = *(a2 + 1), v22 < v23) || v23 >= v22 && a3[4] < a2[4]))
    {
      *a1 = v5;
      *a3 = v4;
      v6 = *(a1 + 1);
      *(a1 + 1) = *(a3 + 1);
      *(a3 + 1) = v6;
      v7 = a1[4];
      a1[4] = a3[4];
    }

    else
    {
      *a1 = v3;
      *a2 = v4;
      v15 = *(a1 + 1);
      *(a1 + 1) = *(a2 + 1);
      *(a2 + 1) = v15;
      v7 = a1[4];
      a1[4] = a2[4];
      a2[4] = v7;
      v16 = *a3;
      v17 = *a2;
      if (*a3 >= *a2)
      {
        if (v17 < v16)
        {
          return 1;
        }

        v26 = *(a3 + 1);
        if (v26 >= v15 && (v15 < v26 || a3[4] >= v7))
        {
          return 1;
        }
      }

      *a2 = v16;
      *a3 = v17;
      v18 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v18;
      a2[4] = a3[4];
    }

    a3[4] = v7;
    return 1;
  }

  v8 = *a3;
  if (*a3 < v3 || v3 >= v8 && ((v27 = *(a3 + 1), v28 = *(a2 + 1), v27 < v28) || v28 >= v27 && a3[4] < a2[4]))
  {
    *a2 = v8;
    *a3 = v3;
    v9 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v9;
    v10 = *(a2 + 4);
    a2[4] = a3[4];
    *(a3 + 4) = v10;
    v11 = *a2;
    v12 = *a1;
    if (*a2 < *a1 || v12 >= v11 && ((v24 = *(a2 + 1), v25 = *(a1 + 1), v24 < v25) || v25 >= v24 && a2[4] < a1[4]))
    {
      *a1 = v11;
      *a2 = v12;
      v13 = *(a1 + 1);
      *(a1 + 1) = *(a2 + 1);
      *(a2 + 1) = v13;
      v14 = *(a1 + 4);
      a1[4] = a2[4];
      *(a2 + 4) = v14;
    }

    return 1;
  }

  return 0;
}

float std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(float *a1, float *a2, float *a3, float *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(a1, a2, a3);
  v9 = *a4;
  v10 = *a3;
  if (*a4 < *a3 || v10 >= v9 && ((v18 = *(a4 + 1), v19 = *(a3 + 1), v18 < v19) || v19 >= v18 && (result = a4[4], result < a3[4])))
  {
    *a3 = v9;
    *a4 = v10;
    v11 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 1);
    *(a4 + 1) = v11;
    result = a3[4];
    a3[4] = a4[4];
    a4[4] = result;
    v12 = *a3;
    v13 = *a2;
    if (*a3 < *a2 || v13 >= v12 && ((v20 = *(a3 + 1), v21 = *(a2 + 1), v20 < v21) || v21 >= v20 && (result = a3[4], result < a2[4])))
    {
      *a2 = v12;
      *a3 = v13;
      v14 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v14;
      result = a2[4];
      a2[4] = a3[4];
      a3[4] = result;
      v15 = *a2;
      v16 = *a1;
      if (*a2 < *a1 || v16 >= v15 && ((v22 = *(a2 + 1), v23 = *(a1 + 1), v22 < v23) || v23 >= v22 && (result = a2[4], result < a1[4])))
      {
        *a1 = v15;
        *a2 = v16;
        v17 = *(a1 + 1);
        *(a1 + 1) = *(a2 + 1);
        *(a2 + 1) = v17;
        result = a1[4];
        a1[4] = a2[4];
        a2[4] = result;
      }
    }
  }

  return result;
}

float std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(float *a1, float *a2, float *a3, float *a4, float *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(a1, a2, a3, a4);
  v11 = *a5;
  v12 = *a4;
  if (*a5 < *a4 || v12 >= v11 && ((v23 = *(a5 + 1), v24 = *(a4 + 1), v23 < v24) || v24 >= v23 && (result = a5[4], result < a4[4])))
  {
    *a4 = v11;
    *a5 = v12;
    v13 = *(a4 + 1);
    *(a4 + 1) = *(a5 + 1);
    *(a5 + 1) = v13;
    result = a4[4];
    a4[4] = a5[4];
    a5[4] = result;
    v14 = *a4;
    v15 = *a3;
    if (*a4 < *a3 || v15 >= v14 && ((v25 = *(a4 + 1), v26 = *(a3 + 1), v25 < v26) || v26 >= v25 && (result = a4[4], result < a3[4])))
    {
      *a3 = v14;
      *a4 = v15;
      v16 = *(a3 + 1);
      *(a3 + 1) = *(a4 + 1);
      *(a4 + 1) = v16;
      result = a3[4];
      a3[4] = a4[4];
      a4[4] = result;
      v17 = *a3;
      v18 = *a2;
      if (*a3 < *a2 || v18 >= v17 && ((v27 = *(a3 + 1), v28 = *(a2 + 1), v27 < v28) || v28 >= v27 && (result = a3[4], result < a2[4])))
      {
        *a2 = v17;
        *a3 = v18;
        v19 = *(a2 + 1);
        *(a2 + 1) = *(a3 + 1);
        *(a3 + 1) = v19;
        result = a2[4];
        a2[4] = a3[4];
        a3[4] = result;
        v20 = *a2;
        v21 = *a1;
        if (*a2 < *a1 || v21 >= v20 && ((v29 = *(a2 + 1), v30 = *(a1 + 1), v29 < v30) || v30 >= v29 && (result = a2[4], result < a1[4])))
        {
          *a1 = v20;
          *a2 = v21;
          v22 = *(a1 + 1);
          *(a1 + 1) = *(a2 + 1);
          *(a2 + 1) = v22;
          result = a1[4];
          a1[4] = a2[4];
          a2[4] = result;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(uint64_t *result, uint64_t *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 3;
  if (result + 3 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = *(v5 + 3);
    v7 = *v5;
    if (v6 >= *v5)
    {
      if (v7 < v6)
      {
        goto LABEL_23;
      }

      v8 = *(v5 + 4);
      v15 = *(v5 + 1);
      if (v8 >= v15 && (v15 < v8 || v5[10] >= v5[4]))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v8 = *(v5 + 4);
    }

    v9 = v5[10];
    *(v5 + 3) = v7;
    v4[1] = *(v5 + 1);
    *(v4 + 4) = v5[4];
    v10 = result;
    if (v5 == result)
    {
      goto LABEL_22;
    }

    v11 = v3;
    while (1)
    {
      v12 = *(result + v11 - 24);
      if (v6 < v12)
      {
        v13 = *(result + v11 - 16);
        goto LABEL_14;
      }

      if (v12 < v6)
      {
        goto LABEL_21;
      }

      v13 = *(result + v11 - 16);
      if (v8 >= v13)
      {
        break;
      }

LABEL_14:
      v5 -= 6;
      v14 = result + v11;
      *v14 = v12;
      *(v14 + 8) = v13;
      *(v14 + 16) = *(result + v11 - 8);
      v11 -= 24;
      if (!v11)
      {
        v10 = result;
        goto LABEL_22;
      }
    }

    if (v13 >= v8)
    {
      v10 = (result + v11);
      if (v9 >= *(result + v11 - 8))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

LABEL_21:
    v10 = v5;
LABEL_22:
    *v10 = v6;
    *(v10 + 1) = v8;
    v10[4] = v9;
LABEL_23:
    v2 = v4 + 3;
    v3 += 24;
  }

  while (v4 + 3 != a2);
  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 3;
    if (result + 3 != a2)
    {
      for (i = result + 1; ; i += 3)
      {
        v4 = result;
        result = v2;
        v5 = *(v4 + 3);
        v6 = *v4;
        if (v5 < *v4)
        {
          break;
        }

        if (v6 >= v5)
        {
          v7 = *(v4 + 4);
          v12 = *(v4 + 1);
          if (v7 < v12 || v12 >= v7 && v4[10] < v4[4])
          {
            goto LABEL_6;
          }
        }

LABEL_15:
        v2 = result + 3;
        if (result + 3 == a2)
        {
          return result;
        }
      }

      v7 = *(v4 + 4);
LABEL_6:
      v8 = v4[10];
      for (j = i; ; j -= 3)
      {
        v10 = *j;
        j[2] = v6;
        j[3] = v10;
        *(j + 8) = *(j + 2);
        v6 = *(j - 4);
        if (v5 >= v6)
        {
          if (v6 < v5)
          {
            break;
          }

          v11 = *(j - 3);
          if (v7 >= v11 && (v11 < v7 || v8 >= *(j - 4)))
          {
            break;
          }
        }
      }

      *(j - 1) = v5;
      *j = v7;
      *(j + 2) = v8;
      goto LABEL_15;
    }
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<long long,long long,float> *,std::__less<void,void> &>(uint64_t *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a2 - 3);
  if (*a1 < v5 || v5 >= v2 && ((v23 = *(a2 - 2), v3 < v23) || v23 >= v3 && v4 < *(a2 - 2)))
  {
    i = a1;
    while (1)
    {
      v8 = *(i + 3);
      i += 6;
      v7 = v8;
      if (v2 < v8)
      {
        break;
      }

      if (v7 >= v2)
      {
        v9 = *(i + 1);
        if (v3 < v9 || v9 >= v3 && v4 < i[4])
        {
          break;
        }
      }
    }
  }

  else
  {
    for (i = (a1 + 3); i < a2; i += 6)
    {
      if (v2 < *i)
      {
        break;
      }

      if (*i >= v2)
      {
        v22 = *(i + 1);
        if (v3 < v22 || v22 >= v3 && v4 < i[4])
        {
          break;
        }
      }
    }
  }

  if (i < a2)
  {
    for (a2 -= 6; ; a2 -= 6)
    {
      if (v2 >= v5)
      {
        if (v5 < v2)
        {
          break;
        }

        v10 = *(a2 + 1);
        if (v3 >= v10 && (v10 < v3 || v4 >= a2[4]))
        {
          break;
        }
      }

      v11 = *(a2 - 3);
      v5 = v11;
    }
  }

  if (i < a2)
  {
    v12 = *i;
    v13 = *a2;
    do
    {
      *i = v13;
      *a2 = v12;
      v14 = *(i + 1);
      *(i + 1) = *(a2 + 1);
      *(a2 + 1) = v14;
      v15 = *(i + 3);
      i += 6;
      v12 = v15;
      v16 = *(i - 2);
      *(i - 2) = a2[4];
      *(a2 + 4) = v16;
      while (v2 >= v12)
      {
        if (v12 >= v2)
        {
          v17 = *(i + 1);
          if (v3 < v17 || v17 >= v3 && v4 < i[4])
          {
            break;
          }
        }

        v18 = *(i + 3);
        i += 6;
        v12 = v18;
      }

      do
      {
        do
        {
          v19 = *(a2 - 3);
          a2 -= 6;
          v13 = v19;
        }

        while (v2 < v19);
        if (v13 < v2)
        {
          break;
        }

        v20 = *(a2 + 1);
      }

      while (v3 < v20 || v20 >= v3 && v4 < a2[4]);
    }

    while (i < a2);
  }

  if (i - 6 != a1)
  {
    *a1 = *(i - 3);
    a1[1] = *(i - 2);
    *(a1 + 4) = *(i - 2);
  }

  *(i - 3) = v2;
  *(i - 2) = v3;
  *(i - 2) = v4;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<long long,long long,float> *,std::__less<void,void> &>(float *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = a1[4];
  while (1)
  {
    v6 = *&a1[v2 + 6];
    if (v6 >= v3)
    {
      if (v3 < v6)
      {
        break;
      }

      v7 = *&a1[v2 + 8];
      if (v7 >= v4 && (v4 < v7 || a1[v2 + 10] >= v5))
      {
        break;
      }
    }

    v2 += 6;
  }

  v8 = &a1[v2 + 6];
  if (v2 * 4)
  {
    while (1)
    {
      v10 = *(a2 - 24);
      a2 -= 24;
      v9 = v10;
      if (v10 < v3)
      {
        break;
      }

      if (v3 >= v9)
      {
        v11 = *(a2 + 8);
        if (v11 < v4 || v4 >= v11 && *(a2 + 16) < v5)
        {
          break;
        }
      }
    }
  }

  else
  {
LABEL_25:
    if (v8 < a2)
    {
      do
      {
        v13 = *(a2 - 24);
        a2 -= 24;
        v12 = v13;
        if (v13 < v3)
        {
          break;
        }

        if (v3 < v12)
        {
          goto LABEL_25;
        }

        v14 = *(a2 + 8);
        if (v14 < v4)
        {
          break;
        }

        if (v4 < v14)
        {
          goto LABEL_25;
        }
      }

      while (*(a2 + 16) >= v5 && v8 < a2);
    }
  }

  if (v8 >= a2)
  {
    v17 = v8;
  }

  else
  {
    v16 = *a2;
    v17 = v8;
    v18 = a2;
    do
    {
      *v17 = v16;
      *v18 = v6;
      v19 = *(v17 + 8);
      *(v17 + 8) = *(v18 + 8);
      *(v18 + 8) = v19;
      v20 = *(v17 + 16);
      *(v17 + 16) = *(v18 + 16);
      *(v18 + 16) = v20;
      do
      {
        do
        {
          v21 = *(v17 + 24);
          v17 += 24;
          v6 = v21;
        }

        while (v21 < v3);
        if (v3 < v6)
        {
          break;
        }

        v22 = *(v17 + 8);
      }

      while (v22 < v4 || v4 >= v22 && *(v17 + 16) < v5);
      while (1)
      {
        v23 = *(v18 - 24);
        v18 -= 24;
        v16 = v23;
        if (v23 < v3)
        {
          break;
        }

        if (v3 >= v16)
        {
          v24 = *(v18 + 8);
          if (v24 < v4 || v4 >= v24 && *(v18 + 16) < v5)
          {
            break;
          }
        }
      }
    }

    while (v17 < v18);
  }

  if ((v17 - 24) != a1)
  {
    *a1 = *(v17 - 24);
    *(a1 + 1) = *(v17 - 16);
    a1[4] = *(v17 - 8);
  }

  *(v17 - 24) = v3;
  *(v17 - 16) = v4;
  *(v17 - 8) = v5;
  return v17 - 24;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(a1, (a1 + 24), (a2 - 24));
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24));
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 24);
      v6 = *a1;
      if (v5 < *a1 || v6 >= v5 && ((v25 = *(a2 - 16), v26 = *(a1 + 8), v25 < v26) || v26 >= v25 && *(a2 - 8) < *(a1 + 16)))
      {
        *a1 = v5;
        *(a2 - 24) = v6;
        v7 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 16);
        *(a2 - 16) = v7;
        v8 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 8);
        *(a2 - 8) = v8;
      }

      return 1;
    }
  }

  v9 = a1 + 48;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,0>(a1, (a1 + 24), (a1 + 48));
  v10 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (2)
  {
    v13 = *v10;
    v14 = *v9;
    if (*v10 >= *v9)
    {
      if (v14 < v13)
      {
        goto LABEL_31;
      }

      v15 = *(v10 + 8);
      v23 = *(v9 + 8);
      if (v15 >= v23 && (v23 < v15 || *(v10 + 16) >= *(v9 + 16)))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v15 = *(v10 + 8);
    }

    v16 = *(v10 + 16);
    *v10 = v14;
    *(v10 + 8) = *(v9 + 8);
    *(v10 + 16) = *(v9 + 16);
    v17 = v11;
    while (1)
    {
      v18 = a1 + v17;
      v19 = *(a1 + v17 + 24);
      if (v13 >= v19)
      {
        break;
      }

      v20 = *(v18 + 32);
LABEL_22:
      *(v18 + 48) = v19;
      v21 = a1 + v17;
      *(v21 + 56) = v20;
      *(v21 + 64) = *(a1 + v17 + 40);
      v17 -= 24;
      if (v17 == -48)
      {
        v22 = a1;
        goto LABEL_30;
      }
    }

    if (v19 >= v13)
    {
      v20 = *(a1 + v17 + 32);
      if (v15 < v20 || v20 >= v15 && v16 < *(a1 + v17 + 40))
      {
        goto LABEL_22;
      }
    }

    v22 = a1 + v17 + 48;
LABEL_30:
    *v22 = v13;
    *(v22 + 8) = v15;
    *(v22 + 16) = v16;
    if (++v12 != 8)
    {
LABEL_31:
      v9 = v10;
      v11 += 24;
      v10 += 24;
      if (v10 == a2)
      {
        return 1;
      }

      continue;
    }

    return v10 + 24 == a2;
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *,std::tuple<long long,long long,float> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(a1, a4, v9, v12);
        v12 -= 6;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = *v13;
        v15 = *a1;
        if (*v13 < *a1 || v15 >= v14 && ((v18 = v13[1], v19 = *(a1 + 8), v18 < v19) || v19 >= v18 && *(v13 + 4) < *(a1 + 16)))
        {
          *v13 = v15;
          *a1 = v14;
          v16 = v13[1];
          v13[1] = *(a1 + 8);
          *(a1 + 8) = v16;
          v17 = *(v13 + 4);
          *(v13 + 4) = *(a1 + 16);
          *(a1 + 16) = v17;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v21 = a2 - 3;
      do
      {
        v23 = *a1;
        v22 = *(a1 + 8);
        v24 = *(a1 + 16);
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(a1, a4, v20);
        if (v21 == v25)
        {
          *v25 = v23;
          *(v25 + 8) = v22;
          *(v25 + 16) = v24;
        }

        else
        {
          *v25 = *v21;
          *(v25 + 8) = v21[1];
          *(v25 + 16) = *(v21 + 4);
          *v21 = v23;
          v21[1] = v22;
          *(v21 + 4) = v24;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(a1, v25 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v25 + 24 - a1) >> 3));
        }

        v21 -= 3;
      }

      while (v20-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v6 = (result + 24 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
      {
        v7 = *(v6 + 3);
        if (*v6 < v7 || v7 >= *v6 && ((v21 = *(v6 + 1), v22 = *(v6 + 4), v21 < v22) || v22 >= v21 && v6[4] < v6[10]))
        {
          v6 += 6;
          v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
        }
      }

      v8 = *v6;
      v9 = *a4;
      if (*v6 >= *a4)
      {
        if (v9 >= v8)
        {
          v20 = *(v6 + 1);
          v10 = *(a4 + 1);
          if (v20 < v10 || v10 >= v20 && v6[4] < a4[4])
          {
            return result;
          }
        }

        else
        {
          v10 = *(a4 + 1);
        }

        v11 = a4[4];
        *a4 = v8;
        *(a4 + 1) = *(v6 + 1);
        a4[4] = v6[4];
        if (v4 >= v5)
        {
          while (1)
          {
            v12 = v6;
            v13 = 2 * v5;
            v5 = (2 * v5) | 1;
            v6 = (result + 24 * v5);
            v14 = v13 + 2;
            if (v14 < a3)
            {
              v15 = *(v6 + 3);
              if (*v6 < v15 || v15 >= *v6 && ((v18 = *(v6 + 1), v19 = *(v6 + 4), v18 < v19) || v19 >= v18 && v6[4] < v6[10]))
              {
                v6 += 6;
                v5 = v14;
              }
            }

            v16 = *v6;
            if (*v6 < v9)
            {
              break;
            }

            if (v9 >= v16)
            {
              v17 = *(v6 + 1);
              if (v17 < v10 || v10 >= v17 && v6[4] < v11)
              {
                break;
              }
            }

            *v12 = v16;
            *(v12 + 1) = *(v6 + 1);
            v12[4] = v6[4];
            if (v4 < v5)
            {
              goto LABEL_35;
            }
          }

          v6 = v12;
        }

LABEL_35:
        *v6 = v9;
        *(v6 + 1) = v10;
        v6[4] = v11;
      }
    }
  }

  return result;
}

float std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = a1 + 24 * v3;
    a1 = v5 + 24;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = *(v5 + 48);
      v9 = *(v5 + 24);
      if (v9 < v8 || v8 >= v9 && ((v11 = *(v5 + 32), v12 = *(v5 + 56), v11 < v12) || v12 >= v11 && *(v5 + 40) < *(v5 + 64)))
      {
        a1 = v5 + 48;
        v3 = v7;
      }
    }

    *v4 = *a1;
    *(v4 + 8) = *(a1 + 8);
    result = *(a1 + 16);
    *(v4 + 16) = result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<long long,long long,float> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 24 * (v4 >> 1));
  v7 = *v6;
  v8 = *(a2 - 24);
  if (*v6 >= v8)
  {
    if (v8 < v7)
    {
      return result;
    }

    v15 = *(v6 + 1);
    v9 = *(a2 - 16);
    if (v15 >= v9 && (v9 < v15 || v6[4] >= *(a2 - 8)))
    {
      return result;
    }
  }

  else
  {
    v9 = *(a2 - 16);
  }

  v10 = *(a2 - 8);
  *(a2 - 24) = v7;
  *(a2 - 16) = *(v6 + 1);
  *(a2 - 8) = v6[4];
  if (v4 < 2)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v11 = v6;
    v12 = v5 - 1;
    v5 = (v5 - 1) >> 1;
    v6 = (result + 24 * v5);
    v13 = *v6;
    if (*v6 >= v8)
    {
      break;
    }

    v14 = *(v6 + 1);
LABEL_11:
    *v11 = v13;
    *(v11 + 1) = v14;
    v11[4] = v6[4];
    if (v12 <= 1)
    {
      goto LABEL_19;
    }
  }

  if (v8 >= v13)
  {
    v14 = *(v6 + 1);
    if (v14 < v9 || v9 >= v14 && v6[4] < v10)
    {
      goto LABEL_11;
    }
  }

  v6 = v11;
LABEL_19:
  *v6 = v8;
  *(v6 + 1) = v9;
  v6[4] = v10;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<long long,long long,float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float *std::__introsort<std::_ClassicAlgPolicy,homeai::clustering::GreedyClusterer::computeMergePairs(std::set<long long> &,std::set<long long> &,std::shared_ptr<std::vector<std::tuple<long long,long long,float>>>,BOOL)::$_0 &,std::tuple<long long,long long,float>*,false>(float *result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 3);
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v128 = *(a2 - 8);
        v129 = *(v8 + 16);
        if (v128 < v129)
        {
          v130 = *v8;
          *v8 = *(a2 - 24);
          *(a2 - 24) = v130;
          v131 = *(v8 + 8);
          *(v8 + 8) = *(a2 - 16);
          *(a2 - 16) = v131;
          *(v8 + 16) = v128;
          *(a2 - 8) = v129;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,homeai::clustering::GreedyClusterer::computeMergePairs(std::set<long long> &,std::set<long long> &,std::shared_ptr<std::vector<std::tuple<long long,long long,float>>>,BOOL)::$_0 &,std::tuple<long long,long long,float>*,0>(v8, (v8 + 24), (v8 + 48), (a2 - 24));
    }

    if (v10 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,homeai::clustering::GreedyClusterer::computeMergePairs(std::set<long long> &,std::set<long long> &,std::shared_ptr<std::vector<std::tuple<long long,long long,float>>>,BOOL)::$_0 &,std::tuple<long long,long long,float>*,0>(v8, (v8 + 24), (v8 + 48), (v8 + 72));
      v115 = *(a2 - 8);
      v116 = *(v8 + 88);
      if (v115 >= v116)
      {
        return result;
      }

      v117 = *(v8 + 72);
      *(v8 + 72) = *(a2 - 24);
      *(a2 - 24) = v117;
      v118 = *(v8 + 80);
      *(v8 + 80) = *(a2 - 16);
      *(a2 - 16) = v118;
      *(v8 + 88) = v115;
      *(a2 - 8) = v116;
      v119 = *(v8 + 88);
      v120 = *(v8 + 64);
      if (v119 >= v120)
      {
        return result;
      }

      v121 = *(v8 + 72);
      v122 = *(v8 + 80);
      v123 = *(v8 + 48);
      *(v8 + 48) = v121;
      *(v8 + 56) = v122;
      *(v8 + 72) = v123;
      *(v8 + 64) = v119;
      *(v8 + 88) = v120;
      v124 = *(v8 + 40);
      if (v119 >= v124)
      {
        return result;
      }

      v125 = *(v8 + 24);
      *(v8 + 24) = v121;
      *(v8 + 32) = v122;
      *(v8 + 48) = v125;
      *(v8 + 40) = v119;
      *(v8 + 64) = v124;
      v126 = *(v8 + 16);
      if (v119 >= v126)
      {
        return result;
      }

      v127 = *v8;
      *v8 = v121;
      *(v8 + 8) = v122;
      *(v8 + 24) = v127;
      goto LABEL_175;
    }

LABEL_10:
    if (v9 <= 575)
    {
      v137 = (v8 + 24);
      v139 = v8 == a2 || v137 == a2;
      if (a4)
      {
        if (!v139)
        {
          v140 = 0;
          v141 = v8;
          do
          {
            v142 = *(v141 + 10);
            v143 = *(v141 + 4);
            v141 = v137;
            if (v142 < v143)
            {
              v144 = *v137;
              v145 = v140;
              while (1)
              {
                v146 = v8 + v145;
                v147 = *(v8 + v145 + 8);
                *(v146 + 24) = *(v8 + v145);
                *(v146 + 32) = v147;
                *(v146 + 40) = *(v8 + v145 + 16);
                if (!v145)
                {
                  break;
                }

                v145 -= 24;
                if (v142 >= *(v146 - 8))
                {
                  v148 = v8 + v145 + 24;
                  goto LABEL_134;
                }
              }

              v148 = v8;
LABEL_134:
              *v148 = v144;
              *(v148 + 16) = v142;
            }

            v137 = (v141 + 24);
            v140 += 24;
          }

          while ((v141 + 24) != a2);
        }
      }

      else if (!v139)
      {
        v183 = (v8 + 40);
        do
        {
          v184 = *(v7 + 40);
          v185 = *(v7 + 16);
          v7 = v137;
          if (v184 < v185)
          {
            v186 = *v137;
            v187 = v183;
            do
            {
              v188 = v187;
              v189 = *(v187 - 4);
              *(v187 - 2) = *(v187 - 5);
              *(v187 - 1) = v189;
              v190 = *(v187 - 6);
              v187 -= 6;
              *v188 = v190;
            }

            while (v184 < *(v188 - 12));
            *(v187 - 1) = v186;
            *v187 = v184;
          }

          v137 = (v7 + 24);
          v183 += 6;
        }

        while (v7 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v149 = (v10 - 2) >> 1;
      v150 = v149;
      do
      {
        v151 = v150;
        if (v149 >= v150)
        {
          v152 = (2 * v150) | 1;
          v153 = v8 + 24 * v152;
          if (2 * v151 + 2 < v10 && *(v153 + 16) < *(v153 + 40))
          {
            v153 += 24;
            v152 = 2 * v151 + 2;
          }

          v154 = v8 + 24 * v151;
          v155 = *(v153 + 16);
          v156 = *(v154 + 16);
          if (v155 >= v156)
          {
            v157 = *v154;
            do
            {
              v158 = v154;
              v154 = v153;
              *v158 = *v153;
              *(v158 + 8) = *(v153 + 8);
              *(v158 + 16) = v155;
              if (v149 < v152)
              {
                break;
              }

              v159 = 2 * v152;
              v152 = (2 * v152) | 1;
              v153 = v8 + 24 * v152;
              v160 = v159 + 2;
              if (v160 < v10 && *(v153 + 16) < *(v153 + 40))
              {
                v153 += 24;
                v152 = v160;
              }

              v155 = *(v153 + 16);
            }

            while (v155 >= v156);
            *v154 = v157;
            *(v154 + 16) = v156;
          }
        }

        v150 = v151 - 1;
      }

      while (v151);
      v161 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      while (2)
      {
        v162 = 0;
        v163 = *v8;
        v164 = *(v8 + 8);
        v165 = *(v8 + 16);
        v166 = v8;
        do
        {
          v167 = v166 + 24 * v162;
          v168 = v167 + 24;
          v169 = (2 * v162) | 1;
          v162 = 2 * v162 + 2;
          if (v162 >= v161)
          {
            v162 = v169;
          }

          else
          {
            v170 = *(v167 + 40);
            v171 = *(v167 + 64);
            v172 = v167 + 48;
            if (v170 >= v171)
            {
              v162 = v169;
            }

            else
            {
              v168 = v172;
            }
          }

          *v166 = *v168;
          result = *(v168 + 8);
          *(v166 + 8) = result;
          *(v166 + 16) = *(v168 + 16);
          v166 = v168;
        }

        while (v162 <= ((v161 - 2) >> 1));
        if (v168 != a2 - 24)
        {
          *v168 = *(a2 - 24);
          *(v168 + 8) = *(a2 - 16);
          *(v168 + 16) = *(a2 - 8);
          *(a2 - 24) = v163;
          *(a2 - 16) = v164;
          *(a2 - 8) = v165;
          v173 = v168 - v8 + 24;
          if (v173 >= 25)
          {
            v174 = (-2 - 0x5555555555555555 * (v173 >> 3)) >> 1;
            v175 = v8 + 24 * v174;
            v176 = *(v175 + 16);
            v165 = *(v168 + 16);
            if (v176 < v165)
            {
              v177 = *v168;
              do
              {
                v178 = v168;
                v168 = v175;
                *v178 = *v175;
                *(v178 + 8) = *(v175 + 8);
                *(v178 + 16) = v176;
                if (!v174)
                {
                  break;
                }

                v174 = (v174 - 1) >> 1;
                v175 = v8 + 24 * v174;
                v176 = *(v175 + 16);
              }

              while (v176 < v165);
              *v168 = v177;
LABEL_168:
              *(v168 + 16) = v165;
            }
          }

          a2 -= 24;
          if (v161-- <= 2)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v168 = v163;
      *(v168 + 8) = v164;
      goto LABEL_168;
    }

    v11 = v10 >> 1;
    v12 = v8 + 24 * (v10 >> 1);
    v13 = *(a2 - 8);
    if (v9 >= 0xC01)
    {
      v14 = *(v12 + 16);
      v15 = *(v8 + 16);
      if (v14 >= v15)
      {
        if (v13 < v14)
        {
          v22 = *v12;
          *v12 = *(a2 - 24);
          *(a2 - 24) = v22;
          v23 = *(v12 + 8);
          *(v12 + 8) = *(a2 - 16);
          *(a2 - 16) = v23;
          *(v12 + 16) = v13;
          *(a2 - 8) = v14;
          v24 = *(v12 + 16);
          v25 = *(v8 + 16);
          if (v24 < v25)
          {
            v26 = *v8;
            *v8 = *v12;
            *v12 = v26;
            *(v8 + 16) = v24;
            *(v12 + 16) = v25;
          }
        }
      }

      else
      {
        v16 = *v8;
        if (v13 < v14)
        {
          *v8 = *(a2 - 24);
          *(a2 - 24) = v16;
          v17 = *(v8 + 8);
          *(v8 + 8) = *(a2 - 16);
          *(a2 - 16) = v17;
          *(v8 + 16) = v13;
          goto LABEL_27;
        }

        v32 = *(v8 + 8);
        *v8 = *v12;
        *v12 = v16;
        *(v12 + 8) = v32;
        *(v8 + 16) = v14;
        *(v12 + 16) = v15;
        v33 = *(a2 - 8);
        if (v33 < v15)
        {
          *v12 = *(a2 - 24);
          *(a2 - 24) = v16;
          v34 = *(v12 + 8);
          *(v12 + 8) = *(a2 - 16);
          *(a2 - 16) = v34;
          *(v12 + 16) = v33;
LABEL_27:
          *(a2 - 8) = v15;
        }
      }

      v35 = v8 + 24 * v11;
      v36 = v35 - 24;
      v37 = *(v35 - 8);
      v38 = *(v8 + 40);
      v39 = *(a2 - 32);
      if (v37 >= v38)
      {
        if (v39 < v37)
        {
          v42 = *v36;
          *v36 = *(a2 - 48);
          *(a2 - 48) = v42;
          v43 = *(v36 + 8);
          *(v36 + 8) = *(a2 - 40);
          *(a2 - 40) = v43;
          *(v36 + 16) = v39;
          *(a2 - 32) = v37;
          v44 = *(v36 + 16);
          v45 = *(v8 + 40);
          if (v44 < v45)
          {
            v46 = *(v8 + 24);
            *(v8 + 24) = *v36;
            *v36 = v46;
            v47 = *(v8 + 32);
            *(v8 + 32) = *(v36 + 8);
            *(v36 + 8) = v47;
            *(v8 + 40) = v44;
            *(v36 + 16) = v45;
          }
        }
      }

      else
      {
        v40 = *(v8 + 24);
        if (v39 < v37)
        {
          *(v8 + 24) = *(a2 - 48);
          *(a2 - 48) = v40;
          v41 = *(v8 + 32);
          *(v8 + 32) = *(a2 - 40);
          *(a2 - 40) = v41;
          *(v8 + 40) = v39;
          goto LABEL_39;
        }

        *(v8 + 24) = *v36;
        *v36 = v40;
        v51 = *(v8 + 32);
        *(v8 + 32) = *(v36 + 8);
        *(v36 + 8) = v51;
        *(v8 + 40) = v37;
        *(v36 + 16) = v38;
        v52 = *(a2 - 32);
        if (v52 < v38)
        {
          v53 = *v36;
          *v36 = *(a2 - 48);
          *(a2 - 48) = v53;
          v54 = *(v36 + 8);
          *(v36 + 8) = *(a2 - 40);
          *(a2 - 40) = v54;
          *(v36 + 16) = v52;
LABEL_39:
          *(a2 - 32) = v38;
        }
      }

      v55 = v8 + 24 * v11;
      v56 = v55 + 24;
      v57 = *(v55 + 40);
      v58 = *(v8 + 64);
      v59 = *(a2 - 56);
      if (v57 >= v58)
      {
        if (v59 < v57)
        {
          v62 = *v56;
          *v56 = *(a2 - 72);
          *(a2 - 72) = v62;
          v63 = *(v56 + 8);
          *(v56 + 8) = *(a2 - 64);
          *(a2 - 64) = v63;
          *(v56 + 16) = v59;
          *(a2 - 56) = v57;
          v64 = *(v56 + 16);
          v65 = *(v8 + 64);
          if (v64 < v65)
          {
            v66 = *(v8 + 48);
            *(v8 + 48) = *v56;
            *v56 = v66;
            v67 = *(v8 + 56);
            *(v8 + 56) = *(v56 + 8);
            *(v56 + 8) = v67;
            *(v8 + 64) = v64;
            *(v56 + 16) = v65;
          }
        }
      }

      else
      {
        v60 = *(v8 + 48);
        if (v59 < v57)
        {
          *(v8 + 48) = *(a2 - 72);
          *(a2 - 72) = v60;
          v61 = *(v8 + 56);
          *(v8 + 56) = *(a2 - 64);
          *(a2 - 64) = v61;
          *(v8 + 64) = v59;
          goto LABEL_48;
        }

        *(v8 + 48) = *v56;
        *v56 = v60;
        v68 = *(v8 + 56);
        *(v8 + 56) = *(v56 + 8);
        *(v56 + 8) = v68;
        *(v8 + 64) = v57;
        *(v56 + 16) = v58;
        v69 = *(a2 - 56);
        if (v69 < v58)
        {
          v70 = *v56;
          *v56 = *(a2 - 72);
          *(a2 - 72) = v70;
          v71 = *(v56 + 8);
          *(v56 + 8) = *(a2 - 64);
          *(a2 - 64) = v71;
          *(v56 + 16) = v69;
LABEL_48:
          *(a2 - 56) = v58;
        }
      }

      v72 = *(v12 + 16);
      v73 = *(v36 + 16);
      v74 = *(v56 + 16);
      if (v72 >= v73)
      {
        v75 = *v12;
        if (v74 >= v72)
        {
LABEL_55:
          v73 = v72;
        }

        else
        {
          v77 = *(v12 + 8);
          v78 = *v56;
          v79 = *(v56 + 8);
          *v12 = *v56;
          *(v12 + 8) = v79;
          *v56 = v75;
          *(v56 + 8) = v77;
          *(v12 + 16) = v74;
          *(v56 + 16) = v72;
          if (v74 >= v73)
          {
            v73 = v74;
            v75 = v78;
          }

          else
          {
            v80 = *v36;
            *v36 = v78;
            *(v36 + 8) = v79;
            *v12 = v80;
            *(v36 + 16) = v74;
            *(v12 + 16) = v73;
            v75 = v80;
          }
        }
      }

      else
      {
        v75 = *v36;
        v76 = *(v36 + 8);
        if (v74 < v72)
        {
          *v36 = *v56;
          *v56 = v75;
          *(v56 + 8) = v76;
          *(v36 + 16) = v74;
          *(v56 + 16) = v73;
          v75 = *v12;
          goto LABEL_55;
        }

        *v36 = *v12;
        *v12 = v75;
        *(v12 + 8) = v76;
        *(v36 + 16) = v72;
        *(v12 + 16) = v73;
        if (v74 < v73)
        {
          v101 = *v56;
          *v12 = *v56;
          *v56 = v75;
          *(v56 + 8) = v76;
          *(v12 + 16) = v74;
          *(v56 + 16) = v73;
          v75 = v101;
          v73 = v74;
        }
      }

      v81 = *(v12 + 8);
      v82 = *v8;
      *v8 = v75;
      *(v8 + 8) = v81;
      *v12 = v82;
      LODWORD(v82) = *(v8 + 16);
      *(v8 + 16) = v73;
      *(v12 + 16) = v82;
      goto LABEL_57;
    }

    v18 = *(v8 + 16);
    v19 = *(v12 + 16);
    if (v18 >= v19)
    {
      if (v13 < v18)
      {
        v27 = *v8;
        *v8 = *(a2 - 24);
        *(a2 - 24) = v27;
        v28 = *(v8 + 8);
        *(v8 + 8) = *(a2 - 16);
        *(a2 - 16) = v28;
        *(v8 + 16) = v13;
        *(a2 - 8) = v18;
        v29 = *(v8 + 16);
        v30 = *(v12 + 16);
        if (v29 < v30)
        {
          v31 = *v12;
          *v12 = *v8;
          *v8 = v31;
          *(v12 + 16) = v29;
          *(v8 + 16) = v30;
        }
      }

      goto LABEL_57;
    }

    v20 = *v12;
    if (v13 < v18)
    {
      *v12 = *(a2 - 24);
      *(a2 - 24) = v20;
      v21 = *(v12 + 8);
      *(v12 + 8) = *(a2 - 16);
      *(a2 - 16) = v21;
      *(v12 + 16) = v13;
LABEL_36:
      *(a2 - 8) = v19;
      goto LABEL_57;
    }

    v48 = *(v12 + 8);
    *v12 = *v8;
    *v8 = v20;
    *(v8 + 8) = v48;
    *(v12 + 16) = v18;
    *(v8 + 16) = v19;
    v49 = *(a2 - 8);
    if (v49 < v19)
    {
      *v8 = *(a2 - 24);
      *(a2 - 24) = v20;
      v50 = *(v8 + 8);
      *(v8 + 8) = *(a2 - 16);
      *(a2 - 16) = v50;
      *(v8 + 16) = v49;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v83 = *v8;
      v84 = *(v8 + 16);
LABEL_60:
      v85 = 0;
      v86 = *(v8 + 8);
      do
      {
        v87 = *(v8 + v85 + 40);
        v85 += 24;
      }

      while (v87 < v84);
      v88 = v8 + v85;
      v89 = a2;
      if (v85 == 24)
      {
        v92 = a2;
        while (v88 < v92)
        {
          v90 = v92 - 24;
          v93 = *(v92 - 8);
          v92 -= 24;
          if (v93 < v84)
          {
            goto LABEL_70;
          }
        }

        v90 = v92;
      }

      else
      {
        do
        {
          v90 = v89 - 24;
          v91 = *(v89 - 8);
          v89 -= 24;
        }

        while (v91 >= v84);
      }

LABEL_70:
      v8 = v88;
      if (v88 < v90)
      {
        v94 = v90;
        do
        {
          v95 = *v8;
          *v8 = *v94;
          *v94 = v95;
          v96 = *(v8 + 8);
          *(v8 + 8) = *(v94 + 8);
          *(v94 + 8) = v96;
          v97 = *(v8 + 16);
          *(v8 + 16) = *(v94 + 16);
          *(v94 + 16) = v97;
          do
          {
            v98 = *(v8 + 40);
            v8 += 24;
          }

          while (v98 < v84);
          do
          {
            v99 = *(v94 - 8);
            v94 -= 24;
          }

          while (v99 >= v84);
        }

        while (v8 < v94);
      }

      if (v8 - 24 != v7)
      {
        *v7 = *(v8 - 24);
        *(v7 + 8) = *(v8 - 16);
        *(v7 + 16) = *(v8 - 8);
      }

      *(v8 - 24) = v83;
      *(v8 - 16) = v86;
      *(v8 - 8) = v84;
      if (v88 < v90)
      {
        goto LABEL_81;
      }

      v100 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,homeai::clustering::GreedyClusterer::computeMergePairs(std::set<long long> &,std::set<long long> &,std::shared_ptr<std::vector<std::tuple<long long,long long,float>>>,BOOL)::$_0 &,std::tuple<long long,long long,float>*>(v7, v8 - 24);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,homeai::clustering::GreedyClusterer::computeMergePairs(std::set<long long> &,std::set<long long> &,std::shared_ptr<std::vector<std::tuple<long long,long long,float>>>,BOOL)::$_0 &,std::tuple<long long,long long,float>*>(v8, a2);
      if (result)
      {
        a2 = v8 - 24;
        if (v100)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v100)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,homeai::clustering::GreedyClusterer::computeMergePairs(std::set<long long> &,std::set<long long> &,std::shared_ptr<std::vector<std::tuple<long long,long long,float>>>,BOOL)::$_0 &,std::tuple<long long,long long,float>*,false>(v7, v8 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v84 = *(v8 + 16);
      v83 = *v8;
      if (*(v8 - 8) < v84)
      {
        goto LABEL_60;
      }

      if (v84 >= *(a2 - 8))
      {
        v104 = v8 + 24;
        do
        {
          v8 = v104;
          if (v104 >= a2)
          {
            break;
          }

          v105 = *(v104 + 16);
          v104 += 24;
        }

        while (v84 >= v105);
      }

      else
      {
        v102 = v8;
        do
        {
          v8 = v102 + 24;
          v103 = *(v102 + 40);
          v102 += 24;
        }

        while (v84 >= v103);
      }

      v106 = a2;
      if (v8 < a2)
      {
        v107 = a2;
        do
        {
          v106 = v107 - 24;
          v108 = *(v107 - 8);
          v107 -= 24;
        }

        while (v84 < v108);
      }

      v109 = *(v7 + 8);
      while (v8 < v106)
      {
        v110 = *v8;
        *v8 = *v106;
        *v106 = v110;
        v111 = *(v8 + 8);
        *(v8 + 8) = *(v106 + 8);
        *(v106 + 8) = v111;
        v112 = *(v8 + 16);
        *(v8 + 16) = *(v106 + 16);
        *(v106 + 16) = v112;
        do
        {
          v113 = *(v8 + 40);
          v8 += 24;
        }

        while (v84 >= v113);
        do
        {
          v114 = *(v106 - 8);
          v106 -= 24;
        }

        while (v84 < v114);
      }

      if (v8 - 24 != v7)
      {
        *v7 = *(v8 - 24);
        *(v7 + 8) = *(v8 - 16);
        *(v7 + 16) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 24) = v83;
      *(v8 - 16) = v109;
      *(v8 - 8) = v84;
    }
  }

  v132 = *(v8 + 40);
  v133 = *(v8 + 16);
  v134 = *(a2 - 8);
  if (v132 >= v133)
  {
    if (v134 >= v132)
    {
      return result;
    }

    v180 = *(v8 + 24);
    *(v8 + 24) = *(a2 - 24);
    *(a2 - 24) = v180;
    v181 = *(v8 + 32);
    *(v8 + 32) = *(a2 - 16);
    *(a2 - 16) = v181;
    *(v8 + 40) = v134;
    *(a2 - 8) = v132;
    v119 = *(v8 + 40);
    v126 = *(v8 + 16);
    if (v119 >= v126)
    {
      return result;
    }

    v182 = *v8;
    *v8 = *(v8 + 24);
    *(v8 + 24) = v182;
LABEL_175:
    *(v8 + 16) = v119;
    *(v8 + 40) = v126;
    return result;
  }

  v135 = *v8;
  if (v134 >= v132)
  {
    v191 = *(v8 + 8);
    *v8 = *(v8 + 24);
    *(v8 + 24) = v135;
    *(v8 + 32) = v191;
    *(v8 + 16) = v132;
    *(v8 + 40) = v133;
    v192 = *(a2 - 8);
    if (v192 >= v133)
    {
      return result;
    }

    *(v8 + 24) = *(a2 - 24);
    *(a2 - 24) = v135;
    v193 = *(v8 + 32);
    *(v8 + 32) = *(a2 - 16);
    *(a2 - 16) = v193;
    *(v8 + 40) = v192;
  }

  else
  {
    *v8 = *(a2 - 24);
    *(a2 - 24) = v135;
    v136 = *(v8 + 8);
    *(v8 + 8) = *(a2 - 16);
    *(a2 - 16) = v136;
    *(v8 + 16) = v134;
  }

  *(a2 - 8) = v133;
  return result;
}

float *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,homeai::clustering::GreedyClusterer::computeMergePairs(std::set<long long> &,std::set<long long> &,std::shared_ptr<std::vector<std::tuple<long long,long long,float>>>,BOOL)::$_0 &,std::tuple<long long,long long,float>*,0>(float *result, float *a2, float *a3, float *a4)
{
  v4 = a2[4];
  v5 = result[4];
  v6 = a3[4];
  if (v4 >= v5)
  {
    if (v6 >= v4)
    {
      v4 = a3[4];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      v10 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v10;
      a2[4] = v6;
      a3[4] = v4;
      v11 = a2[4];
      v12 = result[4];
      if (v11 < v12)
      {
        v13 = *result;
        *result = *a2;
        *a2 = v13;
        v14 = *(result + 1);
        *(result + 1) = *(a2 + 1);
        *(a2 + 1) = v14;
        result[4] = v11;
        a2[4] = v12;
        v4 = a3[4];
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v4)
    {
      *result = *a3;
      *a3 = v7;
      v8 = *(result + 1);
      *(result + 1) = *(a3 + 1);
      *(a3 + 1) = v8;
      result[4] = v6;
LABEL_9:
      a3[4] = v5;
      v4 = v5;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v7;
    v15 = *(result + 1);
    *(result + 1) = *(a2 + 1);
    *(a2 + 1) = v15;
    result[4] = v4;
    a2[4] = v5;
    v4 = a3[4];
    if (v4 < v5)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v17;
      a2[4] = v4;
      goto LABEL_9;
    }
  }

LABEL_11:
  v18 = a4[4];
  if (v18 < v4)
  {
    v19 = *a3;
    *a3 = *a4;
    *a4 = v19;
    v20 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 1);
    *(a4 + 1) = v20;
    a3[4] = v18;
    a4[4] = v4;
    v21 = a3[4];
    v22 = a2[4];
    if (v21 < v22)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v24;
      a2[4] = v21;
      a3[4] = v22;
      v25 = a2[4];
      v26 = result[4];
      if (v25 < v26)
      {
        v27 = *result;
        *result = *a2;
        *a2 = v27;
        v28 = *(result + 1);
        *(result + 1) = *(a2 + 1);
        *(a2 + 1) = v28;
        result[4] = v25;
        a2[4] = v26;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,homeai::clustering::GreedyClusterer::computeMergePairs(std::set<long long> &,std::set<long long> &,std::shared_ptr<std::vector<std::tuple<long long,long long,float>>>,BOOL)::$_0 &,std::tuple<long long,long long,float>*>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v22 = *(a1 + 40);
        v23 = *(a1 + 16);
        v24 = *(a2 - 8);
        if (v22 < v23)
        {
          v25 = *a1;
          if (v24 >= v22)
          {
            v41 = *(a1 + 8);
            *a1 = *(a1 + 24);
            *(a1 + 24) = v25;
            *(a1 + 32) = v41;
            *(a1 + 16) = v22;
            *(a1 + 40) = v23;
            v42 = *(a2 - 8);
            if (v42 >= v23)
            {
              return 1;
            }

            *(a1 + 24) = *(a2 - 24);
            *(a2 - 24) = v25;
            v43 = *(a1 + 32);
            *(a1 + 32) = *(a2 - 16);
            *(a2 - 16) = v43;
            *(a1 + 40) = v42;
          }

          else
          {
            *a1 = *(a2 - 24);
            *(a2 - 24) = v25;
            v26 = *(a1 + 8);
            *(a1 + 8) = *(a2 - 16);
            *(a2 - 16) = v26;
            *(a1 + 16) = v24;
          }

          *(a2 - 8) = v23;
          return 1;
        }

        if (v24 >= v22)
        {
          return 1;
        }

        v34 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 24);
        *(a2 - 24) = v34;
        v35 = *(a1 + 32);
        *(a1 + 32) = *(a2 - 16);
        *(a2 - 16) = v35;
        *(a1 + 40) = v24;
        *(a2 - 8) = v22;
        v13 = *(a1 + 40);
        v20 = *(a1 + 16);
        if (v13 >= v20)
        {
          return 1;
        }

        v36 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 24) = v36;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,homeai::clustering::GreedyClusterer::computeMergePairs(std::set<long long> &,std::set<long long> &,std::shared_ptr<std::vector<std::tuple<long long,long long,float>>>,BOOL)::$_0 &,std::tuple<long long,long long,float>*,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24));
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,homeai::clustering::GreedyClusterer::computeMergePairs(std::set<long long> &,std::set<long long> &,std::shared_ptr<std::vector<std::tuple<long long,long long,float>>>,BOOL)::$_0 &,std::tuple<long long,long long,float>*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        v9 = *(a2 - 8);
        v10 = *(a1 + 88);
        if (v9 >= v10)
        {
          return 1;
        }

        v11 = *(a1 + 72);
        *(a1 + 72) = *(a2 - 24);
        *(a2 - 24) = v11;
        v12 = *(a1 + 80);
        *(a1 + 80) = *(a2 - 16);
        *(a2 - 16) = v12;
        *(a1 + 88) = v9;
        *(a2 - 8) = v10;
        v13 = *(a1 + 88);
        v14 = *(a1 + 64);
        if (v13 >= v14)
        {
          return 1;
        }

        v15 = *(a1 + 72);
        v16 = *(a1 + 80);
        v17 = *(a1 + 48);
        *(a1 + 48) = v15;
        *(a1 + 56) = v16;
        *(a1 + 72) = v17;
        *(a1 + 64) = v13;
        *(a1 + 88) = v14;
        v18 = *(a1 + 40);
        if (v13 >= v18)
        {
          return 1;
        }

        v19 = *(a1 + 24);
        *(a1 + 24) = v15;
        *(a1 + 32) = v16;
        *(a1 + 48) = v19;
        *(a1 + 40) = v13;
        *(a1 + 64) = v18;
        v20 = *(a1 + 16);
        if (v13 >= v20)
        {
          return 1;
        }

        v21 = *a1;
        *a1 = v15;
        *(a1 + 8) = v16;
        *(a1 + 24) = v21;
        break;
      default:
        goto LABEL_17;
    }

    *(a1 + 16) = v13;
    *(a1 + 40) = v20;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 8);
    v6 = *(a1 + 16);
    if (v5 < v6)
    {
      v7 = *a1;
      *a1 = *(a2 - 24);
      *(a2 - 24) = v7;
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 16);
      *(a2 - 16) = v8;
      *(a1 + 16) = v5;
      *(a2 - 8) = v6;
    }

    return 1;
  }

LABEL_17:
  v27 = *(a1 + 40);
  v28 = (a1 + 16);
  v29 = *(a1 + 16);
  v30 = (a1 + 64);
  v31 = *(a1 + 64);
  if (v27 < v29)
  {
    v33 = *a1;
    v32 = *(a1 + 8);
    if (v31 >= v27)
    {
      *a1 = *(a1 + 24);
      *(a1 + 24) = v33;
      *(a1 + 32) = v32;
      *(a1 + 16) = v27;
      *(a1 + 40) = v29;
      if (v31 >= v29)
      {
        goto LABEL_34;
      }

      *(a1 + 24) = *(a1 + 48);
      *(a1 + 48) = v33;
      *(a1 + 56) = v32;
      v28 = (a1 + 40);
    }

    else
    {
      *a1 = *(a1 + 48);
      *(a1 + 48) = v33;
      *(a1 + 56) = v32;
    }

    goto LABEL_33;
  }

  if (v31 < v27)
  {
    v37 = *(a1 + 48);
    v38 = *(a1 + 56);
    v39 = *(a1 + 24);
    *(a1 + 24) = v37;
    *(a1 + 32) = v38;
    *(a1 + 48) = v39;
    *(a1 + 40) = v31;
    *(a1 + 64) = v27;
    if (v31 < v29)
    {
      v40 = *a1;
      *a1 = v37;
      *(a1 + 8) = v38;
      *(a1 + 24) = v40;
      v30 = (a1 + 40);
LABEL_33:
      *v28 = v31;
      *v30 = v29;
    }
  }

LABEL_34:
  v44 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  v47 = a1 + 48;
  while (1)
  {
    v48 = *(v44 + 16);
    if (v48 < *(v47 + 16))
    {
      v49 = *v44;
      v50 = v45;
      while (1)
      {
        v51 = a1 + v50;
        v52 = *(a1 + v50 + 56);
        *(v51 + 72) = *(a1 + v50 + 48);
        *(v51 + 80) = v52;
        *(v51 + 88) = *(a1 + v50 + 64);
        if (v50 == -48)
        {
          break;
        }

        v50 -= 24;
        if (v48 >= *(v51 + 40))
        {
          v53 = a1 + v50 + 72;
          goto LABEL_42;
        }
      }

      v53 = a1;
LABEL_42:
      *v53 = v49;
      *(v53 + 16) = v48;
      if (++v46 == 8)
      {
        return v44 + 24 == a2;
      }
    }

    v47 = v44;
    v45 += 24;
    v44 += 24;
    if (v44 == a2)
    {
      return 1;
    }
  }
}

void std::vector<std::tuple<long long,long long,float>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<long long,long long,float>>>(a1, v9);
    }

    v12 = 24 * v6;
    v13 = 24 * v6 + 24 * a2;
    v14 = 24 * a2;
    v15 = v12;
    do
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    v16 = *(a1 + 8) - *a1;
    v17 = v12 - v16;
    memcpy((v12 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }
}