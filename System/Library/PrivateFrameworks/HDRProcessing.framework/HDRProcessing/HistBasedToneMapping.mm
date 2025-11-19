@interface HistBasedToneMapping
- (BOOL)sceneChanged:(float *)a3 Prev:(float *)a4 Threshold:(float)a5 CorrCoeff:(float *)a6;
- (BOOL)testpatchDetection:(unsigned int)a3;
- (HistBasedToneMapping)init;
- (float)FIRFilterHistStat:(double)a3 statBuffer:(double *)a4 currIndex:(int)a5 numOfProcessedFrames:(int)a6;
- (float)FIRFilterHistStat:(float)a3 statBuffer:(float *)a4 currIndex:(int)a5 prevIndex:(int)a6 numOfProcessedFrames:(int)a7;
- (float)computeFrameAPLFromPQHistData:(float *)a3;
- (int64_t)computeFramePrctFromHistData;
- (int64_t)computeFrameStatFromHistData;
- (int64_t)copyHistStatFromObject:(id)a3;
- (int64_t)debugHistDataFromLayer:(__IOSurface *)a3;
- (int64_t)getHistDataFromLayerV0:(__IOSurface *)a3;
- (int64_t)getHistDataFromLayerV1:(__IOSurface *)a3;
- (int64_t)sanityCheckAndGetDataFromHistV0;
- (int64_t)sanityCheckAndGetDataFromHistV1;
- (int64_t)temporalProcessHistStat:(int64_t)a3 iirAlpha:(float)a4;
- (void)computeFrameAvgFromHistData;
- (void)computeFrameMaxFromHistData;
- (void)computeFrameMinFromHistData;
- (void)computeFrameStdFromHistData;
- (void)dealloc;
- (void)findStatLinkedListNode:(int64_t)a3;
- (void)getSettingsFromDefaultsWrite;
- (void)mapBinFromNarrowRangeToFullRange;
- (void)normalizeHistDataAndMapToPQForHLGInput:(int)a3;
- (void)normalizeHistDataForDoViInput;
- (void)normalizeHistDataForHDR10Input;
- (void)setHistBasedToneMappingTemporalType:(unsigned int)a3 temporalMode:(int)a4;
- (void)setbufSize;
@end

@implementation HistBasedToneMapping

- (HistBasedToneMapping)init
{
  v44 = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = HistBasedToneMapping;
  v2 = [(HistBasedToneMapping *)&v37 init];
  v3 = v2;
  if (v2)
  {
    v2->_hist = 0;
    *&v2->_minHistBin = 128;
    v2->_sumHist = 0;
    v2->_histBuffSize = 544;
    v2->_histDataPtr = 0;
    v4 = malloc_type_calloc(0x220uLL, 1uLL, 0x100004077774924uLL);
    v3->_histBuff = v4;
    if (v4)
    {
      v5 = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL);
      v3->_normHistHeight = v5;
      if (v5)
      {
        v6 = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL);
        v3->_histBinCentroidInPQ = v6;
        if (v6)
        {
          v7 = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL);
          v3->_binCenter = v7;
          if (v7)
          {
            v8 = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL);
            v3->_histBinCentroidInLinear = v8;
            if (v8)
            {
              v9 = 0;
              v10 = xmmword_2508CD8F0;
              binCenter = v3->_binCenter;
              __asm { FMOV            V1.2D, #0.5 }

              v17.i64[0] = 0x3C0000003C000000;
              v17.i64[1] = 0x3C0000003C000000;
              v18.i64[0] = 0x400000004;
              v18.i64[1] = 0x400000004;
              do
              {
                v19.i64[0] = v10.u32[0];
                v19.i64[1] = v10.u32[1];
                v20 = vcvtq_f64_u64(v19);
                v19.i64[0] = v10.u32[2];
                v19.i64[1] = v10.u32[3];
                *&binCenter[v9] = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v20, _Q1)), vaddq_f64(vcvtq_f64_u64(v19), _Q1)), v17);
                v10 = vaddq_s32(v10, v18);
                v9 += 4;
              }

              while (v9 != 128);
              v21 = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL);
              v3->_hlgBinCenterInPQ = v21;
              if (v21)
              {
                histogram_HLG2PQ(v3->_binCenter, 128, v21, 1000.0);
                v22 = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL);
                v3->_fullRangeBinIdx = v22;
                if (v22)
                {
                  [(HistBasedToneMapping *)v3 mapBinFromNarrowRangeToFullRange];
                  statLinkedListHead = v3->_statLinkedListHead;
                  v3->_statLinkedListHead = 0;

                  statLinkedListTail = v3->_statLinkedListTail;
                  v3->_statLinkedListTail = 0;

                  statLinkedListCurr = v3->_statLinkedListCurr;
                  v3->_statLinkedListCurr = 0;

                  v3->_tempMode = 2;
                  v3->_bufSize = 0;
                  *&v3->_minVal = xmmword_2508CDDF0;
                  *&v3->_histMinMaxBinCenter = 0;
                  v26 = malloc_type_calloc(0xFuLL, 4uLL, 0x100004052888210uLL);
                  v3->_pcntVal = v26;
                  if (v26)
                  {
                    v27 = malloc_type_calloc(0xFuLL, 4uLL, 0x100004052888210uLL);
                    v3->_prctVal = v27;
                    if (v27)
                    {
                      v3->_numPrct = 5;
                      v28 = v3;
                      goto LABEL_99;
                    }

                    if (enableLogInstance)
                    {
                      if (logInstanceID)
                      {
                        v29 = logInstanceID;
                      }

                      else
                      {
                        v29 = prevLogInstanceID;
                      }

                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_81;
                      }

                      *buf = 134217984;
                      v39 = WORD1(v29);
                      v30 = MEMORY[0x277D86220];
                      v31 = " [1.450.54] #%04llx Memory allocation for prctVal failed";
LABEL_80:
                      _os_log_impl(&dword_250836000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
LABEL_81:
                      prevLogInstanceID = v29;
                      goto LABEL_89;
                    }

                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_96;
                    }

                    *buf = 0;
                    v32 = MEMORY[0x277D86220];
                    v33 = " [1.450.54] Memory allocation for prctVal failed";
                  }

                  else
                  {
                    if (enableLogInstance)
                    {
                      if (logInstanceID)
                      {
                        v29 = logInstanceID;
                      }

                      else
                      {
                        v29 = prevLogInstanceID;
                      }

                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_81;
                      }

                      *buf = 134217984;
                      v39 = WORD1(v29);
                      v30 = MEMORY[0x277D86220];
                      v31 = " [1.450.54] #%04llx Memory allocation for pcntVal failed";
                      goto LABEL_80;
                    }

                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_96;
                    }

                    *buf = 0;
                    v32 = MEMORY[0x277D86220];
                    v33 = " [1.450.54] Memory allocation for pcntVal failed";
                  }
                }

                else
                {
                  if (enableLogInstance)
                  {
                    if (logInstanceID)
                    {
                      v29 = logInstanceID;
                    }

                    else
                    {
                      v29 = prevLogInstanceID;
                    }

                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_81;
                    }

                    *buf = 134217984;
                    v39 = WORD1(v29);
                    v30 = MEMORY[0x277D86220];
                    v31 = " [1.450.54] #%04llx Memory allocation for fullRangeBinIdx failed";
                    goto LABEL_80;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_96;
                  }

                  *buf = 0;
                  v32 = MEMORY[0x277D86220];
                  v33 = " [1.450.54] Memory allocation for fullRangeBinIdx failed";
                }
              }

              else
              {
                if (enableLogInstance)
                {
                  if (logInstanceID)
                  {
                    v29 = logInstanceID;
                  }

                  else
                  {
                    v29 = prevLogInstanceID;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_81;
                  }

                  *buf = 134217984;
                  v39 = WORD1(v29);
                  v30 = MEMORY[0x277D86220];
                  v31 = " [1.450.54] #%04llx Memory allocation for hlgBinCenterInPQ failed";
                  goto LABEL_80;
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_96;
                }

                *buf = 0;
                v32 = MEMORY[0x277D86220];
                v33 = " [1.450.54] Memory allocation for hlgBinCenterInPQ failed";
              }
            }

            else
            {
              if (enableLogInstance)
              {
                if (logInstanceID)
                {
                  v29 = logInstanceID;
                }

                else
                {
                  v29 = prevLogInstanceID;
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_81;
                }

                *buf = 134217984;
                v39 = WORD1(v29);
                v30 = MEMORY[0x277D86220];
                v31 = " [1.450.54] #%04llx Memory allocation for  histBinCentroidInLinear failed";
                goto LABEL_80;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_96;
              }

              *buf = 0;
              v32 = MEMORY[0x277D86220];
              v33 = " [1.450.54] Memory allocation for  histBinCentroidInLinear failed";
            }
          }

          else
          {
            if (enableLogInstance)
            {
              if (logInstanceID)
              {
                v29 = logInstanceID;
              }

              else
              {
                v29 = prevLogInstanceID;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_81;
              }

              *buf = 134217984;
              v39 = WORD1(v29);
              v30 = MEMORY[0x277D86220];
              v31 = " [1.450.54] #%04llx Memory allocation for pqBinCenterInPQ failed";
              goto LABEL_80;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_96;
            }

            *buf = 0;
            v32 = MEMORY[0x277D86220];
            v33 = " [1.450.54] Memory allocation for pqBinCenterInPQ failed";
          }
        }

        else
        {
          if (enableLogInstance)
          {
            if (logInstanceID)
            {
              v29 = logInstanceID;
            }

            else
            {
              v29 = prevLogInstanceID;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_81;
            }

            *buf = 134217984;
            v39 = WORD1(v29);
            v30 = MEMORY[0x277D86220];
            v31 = " [1.450.54] #%04llx Memory allocation for histBinCenter failed";
            goto LABEL_80;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_96;
          }

          *buf = 0;
          v32 = MEMORY[0x277D86220];
          v33 = " [1.450.54] Memory allocation for histBinCenter failed";
        }
      }

      else
      {
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v29 = logInstanceID;
          }

          else
          {
            v29 = prevLogInstanceID;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_81;
          }

          *buf = 134217984;
          v39 = WORD1(v29);
          v30 = MEMORY[0x277D86220];
          v31 = " [1.450.54] #%04llx Memory allocation for normHist failed";
          goto LABEL_80;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_96;
        }

        *buf = 0;
        v32 = MEMORY[0x277D86220];
        v33 = " [1.450.54] Memory allocation for normHist failed";
      }
    }

    else
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v29 = logInstanceID;
        }

        else
        {
          v29 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_81;
        }

        *buf = 134217984;
        v39 = WORD1(v29);
        v30 = MEMORY[0x277D86220];
        v31 = " [1.450.54] #%04llx Memory allocation for histBuff failed";
        goto LABEL_80;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_96;
      }

      *buf = 0;
      v32 = MEMORY[0x277D86220];
      v33 = " [1.450.54] Memory allocation for histBuff failed";
    }

    _os_log_impl(&dword_250836000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
  }

LABEL_89:
  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v34 = logInstanceID;
    }

    else
    {
      v34 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v39 = WORD1(v34);
      v40 = 2080;
      v41 = "[HistBasedToneMapping init]";
      v42 = 2048;
      v43 = v3;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : Initialization Failed, self=%p\n", buf, 0x20u);
    }

    v28 = 0;
    prevLogInstanceID = v34;
    goto LABEL_99;
  }

LABEL_96:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[HistBasedToneMapping init]";
    v40 = 2048;
    v41 = v3;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : Initialization Failed, self=%p\n", buf, 0x16u);
  }

  v28 = 0;
LABEL_99:

  v35 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)dealloc
{
  [(HistStatLinkedListNode *)self->_statLinkedListHead detachAllNodes];
  statLinkedListHead = self->_statLinkedListHead;
  self->_statLinkedListHead = 0;

  statLinkedListTail = self->_statLinkedListTail;
  self->_statLinkedListTail = 0;

  statLinkedListCurr = self->_statLinkedListCurr;
  self->_statLinkedListCurr = 0;

  self->_histDataPtr = 0;
  hist = self->_hist;
  if (hist)
  {
    CFRelease(hist);
  }

  normHistHeight = self->_normHistHeight;
  if (normHistHeight)
  {
    free(normHistHeight);
    self->_normHistHeight = 0;
  }

  histBuff = self->_histBuff;
  if (histBuff)
  {
    free(histBuff);
    self->_histBuff = 0;
  }

  histBinCentroidInPQ = self->_histBinCentroidInPQ;
  if (histBinCentroidInPQ)
  {
    free(histBinCentroidInPQ);
    self->_histBinCentroidInPQ = 0;
  }

  histBinCentroidInLinear = self->_histBinCentroidInLinear;
  if (histBinCentroidInLinear)
  {
    free(histBinCentroidInLinear);
    self->_histBinCentroidInLinear = 0;
  }

  binCenter = self->_binCenter;
  if (binCenter)
  {
    free(binCenter);
    self->_binCenter = 0;
  }

  hlgBinCenterInPQ = self->_hlgBinCenterInPQ;
  if (hlgBinCenterInPQ)
  {
    free(hlgBinCenterInPQ);
    self->_hlgBinCenterInPQ = 0;
  }

  fullRangeBinIdx = self->_fullRangeBinIdx;
  if (fullRangeBinIdx)
  {
    free(fullRangeBinIdx);
    self->_fullRangeBinIdx = 0;
  }

  pcntVal = self->_pcntVal;
  if (pcntVal)
  {
    free(pcntVal);
    self->_pcntVal = 0;
  }

  prctVal = self->_prctVal;
  if (prctVal)
  {
    free(prctVal);
    self->_prctVal = 0;
  }

  self->_numPrct = 0;
  v16.receiver = self;
  v16.super_class = HistBasedToneMapping;
  [(HistBasedToneMapping *)&v16 dealloc];
}

- (int64_t)getHistDataFromLayerV0:(__IOSurface *)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_hist)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v5 = logInstanceID;
      }

      else
      {
        v5 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        v9 = WORD1(v5);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: !_hist warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/hist_based_tone_mapping.mm at line 232\n", &v8, 0xCu);
      }

      prevLogInstanceID = v5;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: !_hist warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/hist_based_tone_mapping.mm at line 232\n", &v8, 2u);
    }
  }

  self->_hist = IOSurfaceCopyValue(a3, @"kIOSurfacePixelMetadata");
  result = [(HistBasedToneMapping *)self sanityCheckAndGetDataFromHistV0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)sanityCheckAndGetDataFromHistV0
{
  hist = self->_hist;
  if (!hist)
  {
    return -17001;
  }

  v4 = CFGetTypeID(hist);
  if (v4 != CFDictionaryGetTypeID())
  {
    return -17001;
  }

  v5 = self->_hist;
  Value = CFDictionaryGetValue(v5, @"kIOSurfaceSessionCookie");
  if (!Value)
  {
    return -17001;
  }

  CFNumberGetValue(Value, kCFNumberSInt64Type, &self->_streamId);
  v7 = CFDictionaryGetValue(v5, @"kIOSurfaceSessionFrameNumber");
  if (!v7)
  {
    return -17001;
  }

  valuePtr = 0;
  CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr);
  v8 = CFDictionaryGetValue(v5, @"kIOSurfaceLumaHistogramV1");
  if (!v8)
  {
    return -17001;
  }

  v9 = v8;
  if (CFDataGetLength(v8) != 512)
  {
    return -17001;
  }

  BytePtr = CFDataGetBytePtr(v9);
  self->_histDataPtr = BytePtr;
  if (!BytePtr)
  {
    return -17001;
  }

  v11 = 0;
  v12 = 0uLL;
  v13 = 0uLL;
  do
  {
    v14 = *&BytePtr[v11];
    v13 = vaddw_high_u32(v13, v14);
    v12 = vaddw_u32(v12, *v14.i8);
    v11 += 16;
  }

  while (v11 != 512);
  v15 = vaddvq_s64(vaddq_s64(v12, v13));
  self->_sumHist = v15;
  if (v15)
  {
    return -17000;
  }

  else
  {
    return -17001;
  }
}

- (int64_t)getHistDataFromLayerV1:(__IOSurface *)a3
{
  histBuff = self->_histBuff;
  histBuffSize = self->_histBuffSize;
  IOSurfaceGetDataProperty();
  return -17001;
}

- (int64_t)sanityCheckAndGetDataFromHistV1
{
  histBuff = self->_histBuff;
  if (*histBuff != 0x6161766468737431)
  {
    return -17001;
  }

  self->_streamId = *(histBuff + 1);
  if (*(histBuff + 20) != 0x2000000080)
  {
    return -17001;
  }

  v3 = 0;
  v4 = histBuff + 32;
  self->_histDataPtr = v4;
  v5 = 0uLL;
  v6 = 0uLL;
  do
  {
    v7 = *&v4[v3];
    v6 = vaddw_high_u32(v6, v7);
    v5 = vaddw_u32(v5, *v7.i8);
    v3 += 16;
  }

  while (v3 != 512);
  v8 = vaddvq_s64(vaddq_s64(v5, v6));
  self->_sumHist = v8;
  if (v8)
  {
    return -17000;
  }

  else
  {
    return -17001;
  }
}

- (void)mapBinFromNarrowRangeToFullRange
{
  v2 = 0;
  binCenter = self->_binCenter;
  v4 = vdupq_n_s32(0xBD802008);
  fullRangeBinIdx = self->_fullRangeBinIdx;
  v6 = vdupq_n_s32(0x3F5B36CEu);
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  do
  {
    *&fullRangeBinIdx[v2] = vminq_s32(vmaxq_s32(vcvtq_n_s32_f32(vdivq_f32(vaddq_f32(*&binCenter[v2], v4), v6), 7uLL), 0), v7);
    v2 += 4;
  }

  while (v2 != 128);
}

- (void)normalizeHistDataForHDR10Input
{
  v2 = 0;
  histDataPtr = self->_histDataPtr;
  normHistHeight = self->_normHistHeight;
  *(normHistHeight + 30) = 0u;
  *(normHistHeight + 31) = 0u;
  *(normHistHeight + 28) = 0u;
  *(normHistHeight + 29) = 0u;
  *(normHistHeight + 26) = 0u;
  *(normHistHeight + 27) = 0u;
  *(normHistHeight + 24) = 0u;
  *(normHistHeight + 25) = 0u;
  *(normHistHeight + 22) = 0u;
  *(normHistHeight + 23) = 0u;
  *(normHistHeight + 20) = 0u;
  *(normHistHeight + 21) = 0u;
  *(normHistHeight + 18) = 0u;
  *(normHistHeight + 19) = 0u;
  *(normHistHeight + 16) = 0u;
  *(normHistHeight + 17) = 0u;
  *(normHistHeight + 14) = 0u;
  *(normHistHeight + 15) = 0u;
  *(normHistHeight + 12) = 0u;
  *(normHistHeight + 13) = 0u;
  *(normHistHeight + 10) = 0u;
  *(normHistHeight + 11) = 0u;
  *(normHistHeight + 8) = 0u;
  *(normHistHeight + 9) = 0u;
  *(normHistHeight + 6) = 0u;
  *(normHistHeight + 7) = 0u;
  *(normHistHeight + 4) = 0u;
  *(normHistHeight + 5) = 0u;
  *(normHistHeight + 2) = 0u;
  *(normHistHeight + 3) = 0u;
  *normHistHeight = 0u;
  *(normHistHeight + 1) = 0u;
  fullRangeBinIdx = self->_fullRangeBinIdx;
  sumHist = self->_sumHist;
  v7 = self->_normHistHeight;
  do
  {
    v7[fullRangeBinIdx[v2]] = v7[fullRangeBinIdx[v2]] + (*&histDataPtr[v2 * 4] / sumHist);
    ++v2;
  }

  while (v2 != 128);
  memcpy(self->_histBinCentroidInPQ, self->_binCenter, 0x200uLL);
}

- (void)normalizeHistDataAndMapToPQForHLGInput:(int)a3
{
  v3 = 0;
  histDataPtr = self->_histDataPtr;
  normHistHeight = self->_normHistHeight;
  *(normHistHeight + 30) = 0u;
  *(normHistHeight + 31) = 0u;
  *(normHistHeight + 28) = 0u;
  *(normHistHeight + 29) = 0u;
  *(normHistHeight + 26) = 0u;
  *(normHistHeight + 27) = 0u;
  *(normHistHeight + 24) = 0u;
  *(normHistHeight + 25) = 0u;
  *(normHistHeight + 22) = 0u;
  *(normHistHeight + 23) = 0u;
  *(normHistHeight + 20) = 0u;
  *(normHistHeight + 21) = 0u;
  *(normHistHeight + 18) = 0u;
  *(normHistHeight + 19) = 0u;
  *(normHistHeight + 16) = 0u;
  *(normHistHeight + 17) = 0u;
  *(normHistHeight + 14) = 0u;
  *(normHistHeight + 15) = 0u;
  *(normHistHeight + 12) = 0u;
  *(normHistHeight + 13) = 0u;
  *(normHistHeight + 10) = 0u;
  *(normHistHeight + 11) = 0u;
  *(normHistHeight + 8) = 0u;
  *(normHistHeight + 9) = 0u;
  *(normHistHeight + 6) = 0u;
  *(normHistHeight + 7) = 0u;
  *(normHistHeight + 4) = 0u;
  *(normHistHeight + 5) = 0u;
  *(normHistHeight + 2) = 0u;
  *(normHistHeight + 3) = 0u;
  *normHistHeight = 0u;
  *(normHistHeight + 1) = 0u;
  histBinCentroidInPQ = self->_histBinCentroidInPQ;
  *(histBinCentroidInPQ + 30) = 0u;
  *(histBinCentroidInPQ + 31) = 0u;
  *(histBinCentroidInPQ + 28) = 0u;
  *(histBinCentroidInPQ + 29) = 0u;
  *(histBinCentroidInPQ + 26) = 0u;
  *(histBinCentroidInPQ + 27) = 0u;
  *(histBinCentroidInPQ + 24) = 0u;
  *(histBinCentroidInPQ + 25) = 0u;
  *(histBinCentroidInPQ + 22) = 0u;
  *(histBinCentroidInPQ + 23) = 0u;
  *(histBinCentroidInPQ + 20) = 0u;
  *(histBinCentroidInPQ + 21) = 0u;
  *(histBinCentroidInPQ + 18) = 0u;
  *(histBinCentroidInPQ + 19) = 0u;
  *(histBinCentroidInPQ + 16) = 0u;
  *(histBinCentroidInPQ + 17) = 0u;
  *(histBinCentroidInPQ + 14) = 0u;
  *(histBinCentroidInPQ + 15) = 0u;
  *(histBinCentroidInPQ + 12) = 0u;
  *(histBinCentroidInPQ + 13) = 0u;
  *(histBinCentroidInPQ + 10) = 0u;
  *(histBinCentroidInPQ + 11) = 0u;
  *(histBinCentroidInPQ + 8) = 0u;
  *(histBinCentroidInPQ + 9) = 0u;
  *(histBinCentroidInPQ + 6) = 0u;
  *(histBinCentroidInPQ + 7) = 0u;
  *(histBinCentroidInPQ + 4) = 0u;
  *(histBinCentroidInPQ + 5) = 0u;
  *(histBinCentroidInPQ + 2) = 0u;
  *(histBinCentroidInPQ + 3) = 0u;
  *histBinCentroidInPQ = 0u;
  *(histBinCentroidInPQ + 1) = 0u;
  hlgBinCenterInPQ = self->_hlgBinCenterInPQ;
  v8 = self->_normHistHeight;
  v9 = self->_histBinCentroidInPQ;
  do
  {
    if (a3)
    {
      v10 = v3;
    }

    else
    {
      v10 = self->_fullRangeBinIdx[v3];
    }

    v11 = vcvts_n_s32_f32(hlgBinCenterInPQ[v10], 7uLL);
    v12 = *&histDataPtr[4 * v3];
    v8[v11] = v8[v11] + v12;
    v9[v11] = v9[v11] + (hlgBinCenterInPQ[v10] * v12);
    ++v3;
  }

  while (v3 != 128);
  for (i = 0; i != 128; ++i)
  {
    v14 = v8[i];
    if (v14 == 0.0)
    {
      v9[i] = self->_binCenter[i];
    }

    else
    {
      v9[i] = v9[i] / v14;
      v8[i] = v8[i] / self->_sumHist;
    }
  }
}

- (void)normalizeHistDataForDoViInput
{
  v3 = 0;
  histDataPtr = self->_histDataPtr;
  normHistHeight = self->_normHistHeight;
  *v2.i32 = self->_sumHist;
  v6 = vdupq_lane_s32(v2, 0);
  do
  {
    *&normHistHeight[v3] = vdivq_f32(vcvtq_f32_u32(*&histDataPtr[v3 * 4]), v6);
    v3 += 4;
  }

  while (v3 != 128);
  memcpy(self->_histBinCentroidInPQ, self->_binCenter, 0x200uLL);
}

- (void)computeFrameMinFromHistData
{
  v2 = 0;
  while (self->_normHistHeight[v2] == 0.0)
  {
    if (++v2 == 128)
    {
      goto LABEL_6;
    }
  }

  self->_minHistBin = v2;
LABEL_6:
  if (self->_histMinMaxBinCenter)
  {
    v3 = self->_histBinCentroidInPQ[self->_minHistBin];
  }

  else
  {
    v3 = self->_minHistBin * 0.0078125;
  }

  self->_minVal = v3;
}

- (void)computeFrameMaxFromHistData
{
  v2 = self->_normHistHeight + 127;
  v3 = 127;
  while (*v2 == 0.0)
  {
    --v3;
    --v2;
    if (v3 == -1)
    {
      goto LABEL_6;
    }
  }

  self->_maxHistBin = v3;
LABEL_6:
  if (self->_histMinMaxBinCenter)
  {
    v4 = self->_histBinCentroidInPQ[self->_maxHistBin];
  }

  else
  {
    v4 = vcvts_n_f32_s32(self->_maxHistBin + 1, 7uLL);
  }

  self->_maxVal = v4;
}

- (void)computeFrameAvgFromHistData
{
  self->_avgVal = 0.0;
  maxHistBin = self->_maxHistBin;
  minHistBin = self->_minHistBin;
  if (minHistBin <= maxHistBin)
  {
    v4 = &self->_normHistHeight[minHistBin];
    v5 = maxHistBin - minHistBin + 1;
    v6 = &self->_histBinCentroidInPQ[minHistBin];
    v7 = 0.0;
    do
    {
      v8 = *v4++;
      v9 = v8;
      v10 = *v6++;
      v7 = v7 + (v9 * v10);
      self->_avgVal = v7;
      --v5;
    }

    while (v5);
  }
}

- (void)computeFrameStdFromHistData
{
  maxHistBin = self->_maxHistBin;
  minHistBin = self->_minHistBin;
  v4 = 0.0;
  if (minHistBin <= maxHistBin)
  {
    v5 = &self->_normHistHeight[minHistBin];
    v6 = maxHistBin - minHistBin + 1;
    v7 = &self->_histBinCentroidInPQ[minHistBin];
    do
    {
      v8 = *v5++;
      v9 = v8;
      v10 = *v7++;
      v4 = v4 + ((v9 * v10) * v10);
      --v6;
    }

    while (v6);
  }

  self->_stdVal = sqrtf(v4 - (self->_avgVal * self->_avgVal));
}

- (float)computeFrameAPLFromPQHistData:(float *)a3
{
  v4 = 0;
  v27 = vdupq_n_s32(0xB5C436E8);
  v28 = vdupq_n_s32(0x354436E8u);
  v25 = vdupq_n_s32(0x461C4000u);
  v26 = vdupq_n_s32(0xC61C4000);
  v23 = vdupq_n_s32(0xC1958000);
  v24 = vdupq_n_s32(0xBF560000);
  v22 = vdupq_n_s32(0x4196D000u);
  normHistHeight = self->_normHistHeight;
  v6 = 0.0;
  do
  {
    v31 = *&normHistHeight[v4];
    v7 = *&a3[v4];
    v8 = vcgeq_f32(v7, v28);
    v35 = vbslq_s8(v8, v7, vnegq_f32(vaddq_f32(v7, v27)));
    v30 = vbslq_s8(v8, v25, v26);
    v32 = powf(*&v35.i32[1], 0.012683);
    v9.f32[0] = powf(*v35.i32, 0.012683);
    v9.f32[1] = v32;
    v33 = v9;
    v10 = powf(*&v35.i32[2], 0.012683);
    v11 = v33;
    v11.f32[2] = v10;
    v34 = v11;
    v12 = powf(*&v35.i32[3], 0.012683);
    v13 = v34;
    v13.f32[3] = v12;
    v14 = vdivq_f32(vaddq_f32(v13, v24), vmlaq_f32(v22, v23, v13));
    *v34.f32 = vcvt_f32_f64(vmaxnmq_f64(vcvt_hight_f64_f32(v14), 0));
    *v14.f32 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(*v14.f32), 0));
    v29 = v14.f32[0];
    v35.i32[0] = powf(v14.f32[1], 6.2774);
    v15.f32[0] = powf(v29, 6.2774);
    v15.i32[1] = v35.i32[0];
    v36 = v15;
    v16 = powf(v34.f32[0], 6.2774);
    v17 = v36;
    v17.f32[2] = v16;
    v37 = v17;
    v18 = powf(v34.f32[1], 6.2774);
    v19 = v37;
    v19.f32[3] = v18;
    v20 = vmulq_f32(v31, vmulq_f32(v30, v19));
    v6 = (((v6 + v20.f32[0]) + v20.f32[1]) + v20.f32[2]) + v20.f32[3];
    v4 += 4;
  }

  while (v4 != 128);
  return v6;
}

- (int64_t)computeFrameStatFromHistData
{
  [(HistBasedToneMapping *)self computeFrameMinFromHistData];
  [(HistBasedToneMapping *)self computeFrameMaxFromHistData];
  if (self->_minVal > self->_maxVal)
  {
    return -17001;
  }

  [(HistBasedToneMapping *)self computeFrameAvgFromHistData];
  [(HistBasedToneMapping *)self computeFrameStdFromHistData];
  [(HistBasedToneMapping *)self computeFrameAPLFromPQHistData:self->_histBinCentroidInPQ];
  self->_avgPixelLevel = v4;
  return -17000;
}

- (int64_t)computeFramePrctFromHistData
{
  v2 = 0;
  v3 = 0;
  LODWORD(v4) = 0;
  v5 = *&debugPercentEntry0;
  v6 = 0.0;
  if (*&debugPercentEntry0 > 1.0 || *&debugPercentEntry0 < 0.0)
  {
    v5 = 0.001;
  }

  pcntVal = self->_pcntVal;
  prctVal = self->_prctVal;
  *pcntVal = v5;
  v10 = *&debugPercentEntry1;
  if (*&debugPercentEntry1 > 1.0 || *&debugPercentEntry1 < 0.0)
  {
    v10 = 0.05;
  }

  v12 = *&debugPercentEntry2;
  if (*&debugPercentEntry2 > 1.0 || *&debugPercentEntry2 < 0.0)
  {
    v12 = 0.5;
  }

  self->_numPrct = 5;
  pcntVal[1] = v10;
  pcntVal[2] = v12;
  v14 = *&debugPercentEntry3;
  if (*&debugPercentEntry3 > 1.0 || *&debugPercentEntry3 < 0.0)
  {
    v14 = 0.985;
  }

  v16 = *&debugPercentEntry4 > 1.0 || *&debugPercentEntry4 < 0.0;
  v17 = 0.999;
  if (!v16)
  {
    v17 = *&debugPercentEntry4;
  }

  pcntVal[3] = v14;
  pcntVal[4] = v17;
  normHistHeight = self->_normHistHeight;
  histBinCentroidInPQ = self->_histBinCentroidInPQ;
  do
  {
    if (v4 <= 127)
    {
      v20 = pcntVal[v2];
      if (v6 < v20)
      {
        v4 = v4;
        while (1)
        {
          v6 = v6 + normHistHeight[v4];
          if (v4 == 127)
          {
            break;
          }

          ++v4;
          if (v6 >= v20)
          {
            v3 = v4 - 1;
            goto LABEL_38;
          }
        }

        v3 = 127;
        LODWORD(v4) = 128;
      }
    }

LABEL_38:
    prctVal[v2++] = histBinCentroidInPQ[v3];
  }

  while (v2 != 5);
  return -17000;
}

- (BOOL)testpatchDetection:(unsigned int)a3
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3 != 2)
  {
LABEL_37:
    v19 = 0;
    goto LABEL_38;
  }

  v4 = 0.0;
  v5 = 0.0;
  if (GetConfig())
  {
    Config = GetConfig();
    v5 = *HDRConfig::GetConfigEntryValue(Config, 0x21u, 0);
  }

  if (GetConfig())
  {
    v7 = GetConfig();
    v4 = *HDRConfig::GetConfigEntryValue(v7, 0x22u, 0);
  }

  v8 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
  if (v8)
  {
    v9 = v8;
    memcpy(v8, self->_histDataPtr, 0x200uLL);
    qsort(v9, 0x80uLL, 4uLL, descending);
    v10 = *v9;
    v11 = v9[1];
    if (((v11 + *v9) / self->_sumHist) < v5)
    {
      goto LABEL_26;
    }

    memcpy(v9, self->_histDataPtr, 0x200uLL);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v9[v12];
      if (v10 == v15)
      {
        v14 = v12;
      }

      if (v11 == v15)
      {
        v13 = v12;
      }

      ++v12;
    }

    while (v12 != 128);
    if (v14 >= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (v14 > v13)
    {
      v13 = v14;
    }

    v17 = v9[v13];
    if (v17 >= v9[v16])
    {
LABEL_26:
      v19 = 0;
    }

    else
    {
      v19 = (v17 / self->_sumHist) >= v4 && v16 == 8;
    }

    free(v9);
    goto LABEL_38;
  }

  if (!enableLogInstance)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Memory allocation for testpatchHistBuff failed", &v23, 2u);
    }

    goto LABEL_37;
  }

  if (logInstanceID)
  {
    v20 = logInstanceID;
  }

  else
  {
    v20 = prevLogInstanceID;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    v24 = WORD1(v20);
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Memory allocation for testpatchHistBuff failed", &v23, 0xCu);
  }

  v19 = 0;
  prevLogInstanceID = v20;
LABEL_38:
  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)findStatLinkedListNode:(int64_t)a3
{
  p_statLinkedListHead = &self->_statLinkedListHead;
  statLinkedListHead = self->_statLinkedListHead;
  if (statLinkedListHead)
  {
    v7 = statLinkedListHead;
    v8 = 0;
    while (1)
    {
      obj = v7;
      if ([(HistStatLinkedListNode *)v7 streamId]== a3)
      {
        break;
      }

      v9 = [(HistStatLinkedListNode *)obj next];

      ++v8;
      v7 = v9;
      if (!v9)
      {
        v10 = [[HistStatLinkedListNode alloc] initWithStreamId:a3 bufferSize:self->_bufSize];
        [(HistStatLinkedListNode *)v10 setNext:*p_statLinkedListHead];
        [(HistStatLinkedListNode *)v10 setPrev:0];
        [(HistStatLinkedListNode *)*p_statLinkedListHead setPrev:v10];
        objc_storeStrong(p_statLinkedListHead, v10);
        ++v8;
        v11 = v10;
        goto LABEL_12;
      }
    }

    v11 = obj;
    if (obj != *p_statLinkedListHead)
    {
      v15 = [(HistStatLinkedListNode *)obj next];
      v16 = [(HistStatLinkedListNode *)obj prev];
      [v16 setNext:v15];

      if (obj == self->_statLinkedListTail)
      {
        v19 = [(HistStatLinkedListNode *)obj prev];
        statLinkedListTail = self->_statLinkedListTail;
        self->_statLinkedListTail = v19;
      }

      else
      {
        statLinkedListTail = [(HistStatLinkedListNode *)obj prev];
        v18 = [(HistStatLinkedListNode *)obj next];
        [v18 setPrev:statLinkedListTail];
      }

      [(HistStatLinkedListNode *)obj setNext:*p_statLinkedListHead];
      [(HistStatLinkedListNode *)obj setPrev:0];
      [(HistStatLinkedListNode *)*p_statLinkedListHead setPrev:obj];
      objc_storeStrong(p_statLinkedListHead, obj);
      v11 = obj;
    }

LABEL_12:
    obja = v11;
    objc_storeStrong(&self->_statLinkedListCurr, v11);
    if (v8 >= 101)
    {
      v20 = [(HistStatLinkedListNode *)self->_statLinkedListTail prev];
      v21 = self->_statLinkedListTail;
      self->_statLinkedListTail = v20;

      v22 = [(HistStatLinkedListNode *)self->_statLinkedListTail next];
      [v22 setPrev:0];

      [(HistStatLinkedListNode *)self->_statLinkedListTail setNext:0];
    }
  }

  else
  {
    v12 = [[HistStatLinkedListNode alloc] initWithStreamId:a3 bufferSize:self->_bufSize];
    v13 = self->_statLinkedListHead;
    self->_statLinkedListHead = v12;

    objc_storeStrong(&self->_statLinkedListCurr, self->_statLinkedListHead);
    v14 = self->_statLinkedListCurr;
    obja = self->_statLinkedListTail;
    self->_statLinkedListTail = v14;
  }
}

- (float)FIRFilterHistStat:(float)a3 statBuffer:(float *)a4 currIndex:(int)a5 prevIndex:(int)a6 numOfProcessedFrames:(int)a7
{
  bufSize = self->_bufSize;
  v8 = a4[a6] + a3;
  if (bufSize <= a7)
  {
    v10 = a5;
    result = (v8 - a4[a5]) / bufSize;
  }

  else
  {
    result = v8 / (a7 + 1);
    v10 = a5;
  }

  a4[v10] = v8;
  return result;
}

- (float)FIRFilterHistStat:(double)a3 statBuffer:(double *)a4 currIndex:(int)a5 numOfProcessedFrames:(int)a6
{
  v6 = &a4[a5];
  *v6 = a3;
  v7 = 0.0;
  if ((a5 & 0x80000000) == 0)
  {
    v8 = &a4[a5];
    do
    {
      v9 = *v8--;
      v7 = v7 + v9;
    }

    while (v8 >= a4);
  }

  bufSize = self->_bufSize;
  v11 = &a4[bufSize - 1];
  if (bufSize <= a6 && v11 > v6)
  {
    do
    {
      v13 = *v11--;
      v7 = v7 + v13;
    }

    while (v11 > v6);
  }

  if (bufSize > a6)
  {
    v14 = a6 + 1;
  }

  else
  {
    v14 = self->_bufSize;
  }

  return v7 / v14;
}

- (int64_t)temporalProcessHistStat:(int64_t)a3 iirAlpha:(float)a4
{
  avgVal = self->_avgVal;
  v7 = self->_prctVal[self->_numPrct - 1];
  self->_isSceneChanged = 1;
  tempMode = self->_tempMode;
  if ((tempMode & 0xFFFFFFFE) == 2)
  {
    [(HistBasedToneMapping *)self findStatLinkedListNode:a3];
    [(HistStatLinkedListNode *)self->_statLinkedListCurr prevAvgVal];
    v10 = v9;
    [(HistStatLinkedListNode *)self->_statLinkedListCurr prevMaxVal];
    v12 = v11;
    if ([(HistStatLinkedListNode *)self->_statLinkedListCurr numOfProcessedFrames])
    {
      LODWORD(v15) = 1027101164;
      *&v13 = avgVal;
      LODWORD(v14) = v10;
      v16 = [(HistBasedToneMapping *)self toneChanged:v13 Prev:v14 Threshold:v15];
      LODWORD(v17) = 1036831949;
      *&v18 = v7;
      LODWORD(v19) = v12;
      v20 = v16 | [(HistBasedToneMapping *)self toneChanged:v18 Prev:v19 Threshold:v17];
    }

    else
    {
      LOBYTE(v20) = 1;
    }

    self->_isSceneChanged = v20;
    *&v13 = avgVal;
    [(HistStatLinkedListNode *)self->_statLinkedListCurr setPrevAvgVal:v13];
    *&v21 = v7;
    [(HistStatLinkedListNode *)self->_statLinkedListCurr setPrevMaxVal:v21];
    tempMode = self->_tempMode;
  }

  if (tempMode == 1)
  {
    return -17000;
  }

  if (tempMode == 3)
  {
    v28 = [(HistStatLinkedListNode *)self->_statLinkedListCurr numOfProcessedFrames];
    bufSize = self->_bufSize;
    isSceneChanged = self->_isSceneChanged;
    minVal = self->_minVal;
    v32 = [(HistStatLinkedListNode *)self->_statLinkedListCurr minValBuffer];
    v33 = v32;
    if (isSceneChanged)
    {
      *v32 = minVal;
      maxVal = self->_maxVal;
      *[(HistStatLinkedListNode *)self->_statLinkedListCurr maxValBuffer]= maxVal;
      v35 = self->_avgVal;
      *[(HistStatLinkedListNode *)self->_statLinkedListCurr avgValBuffer]= v35;
      stdVal = self->_stdVal;
      *[(HistStatLinkedListNode *)self->_statLinkedListCurr stdValBuffer]= stdVal;
      if (self->_numPrct >= 1)
      {
        v37 = 0;
        do
        {
          v38 = self->_prctVal[v37];
          *[(HistStatLinkedListNode *)self->_statLinkedListCurr prctValBuffer][8 * v37++] = v38;
        }

        while (v37 < self->_numPrct);
      }

      goto LABEL_18;
    }

    v42 = (v28 % bufSize);
    v43 = ((bufSize + v42 - 1) % bufSize);
    v44 = [(HistStatLinkedListNode *)self->_statLinkedListCurr numOfProcessedFrames];
    *&v45 = minVal;
    [(HistBasedToneMapping *)self FIRFilterHistStat:v33 statBuffer:v42 currIndex:v43 prevIndex:v44 numOfProcessedFrames:v45];
    self->_minVal = v46;
    v47 = self->_maxVal;
    v48 = [(HistStatLinkedListNode *)self->_statLinkedListCurr maxValBuffer];
    v49 = [(HistStatLinkedListNode *)self->_statLinkedListCurr numOfProcessedFrames];
    *&v50 = v47;
    [(HistBasedToneMapping *)self FIRFilterHistStat:v48 statBuffer:v42 currIndex:v43 prevIndex:v49 numOfProcessedFrames:v50];
    self->_maxVal = v51;
    v52 = self->_avgVal;
    v53 = [(HistStatLinkedListNode *)self->_statLinkedListCurr avgValBuffer];
    v54 = [(HistStatLinkedListNode *)self->_statLinkedListCurr numOfProcessedFrames];
    *&v55 = v52;
    [(HistBasedToneMapping *)self FIRFilterHistStat:v53 statBuffer:v42 currIndex:v43 prevIndex:v54 numOfProcessedFrames:v55];
    self->_avgVal = v56;
    v57 = self->_stdVal;
    v58 = [(HistStatLinkedListNode *)self->_statLinkedListCurr stdValBuffer];
    v59 = [(HistStatLinkedListNode *)self->_statLinkedListCurr numOfProcessedFrames];
    *&v60 = v57;
    [(HistBasedToneMapping *)self FIRFilterHistStat:v58 statBuffer:v42 currIndex:v43 prevIndex:v59 numOfProcessedFrames:v60];
    self->_stdVal = v61;
    if (self->_numPrct >= 1)
    {
      v62 = 0;
      prctVal = self->_prctVal;
      do
      {
        v64 = prctVal[v62];
        v65 = [(HistStatLinkedListNode *)self->_statLinkedListCurr prctValBuffer][8 * v62];
        v66 = [(HistStatLinkedListNode *)self->_statLinkedListCurr numOfProcessedFrames];
        *&v67 = v64;
        [(HistBasedToneMapping *)self FIRFilterHistStat:v65 statBuffer:v42 currIndex:v43 prevIndex:v66 numOfProcessedFrames:v67];
        prctVal = self->_prctVal;
        prctVal[v62++] = v68;
      }

      while (v62 < self->_numPrct);
    }

LABEL_27:
    statLinkedListCurr = self->_statLinkedListCurr;
    v40 = [(HistStatLinkedListNode *)statLinkedListCurr numOfProcessedFrames]+ 1;
    v39 = statLinkedListCurr;
    goto LABEL_28;
  }

  if (tempMode != 2)
  {
    return -17006;
  }

  if (!self->_isSceneChanged)
  {
    v69 = (self->_minVal * a4) + ((1.0 - a4) * *[(HistStatLinkedListNode *)self->_statLinkedListCurr minValBuffer]);
    *[(HistStatLinkedListNode *)self->_statLinkedListCurr minValBuffer]= v69;
    self->_minVal = v69;
    v70 = (self->_maxVal * a4) + ((1.0 - a4) * *[(HistStatLinkedListNode *)self->_statLinkedListCurr maxValBuffer]);
    *[(HistStatLinkedListNode *)self->_statLinkedListCurr maxValBuffer]= v70;
    self->_maxVal = v70;
    v71 = (self->_avgVal * a4) + ((1.0 - a4) * *[(HistStatLinkedListNode *)self->_statLinkedListCurr avgValBuffer]);
    *[(HistStatLinkedListNode *)self->_statLinkedListCurr avgValBuffer]= v71;
    self->_avgVal = v71;
    v72 = (self->_stdVal * a4) + ((1.0 - a4) * *[(HistStatLinkedListNode *)self->_statLinkedListCurr stdValBuffer]);
    *[(HistStatLinkedListNode *)self->_statLinkedListCurr stdValBuffer]= v72;
    self->_stdVal = v72;
    if (self->_numPrct >= 1)
    {
      v73 = 0;
      do
      {
        v74 = (self->_prctVal[v73] * a4) + ((1.0 - a4) * *[(HistStatLinkedListNode *)self->_statLinkedListCurr prctValBuffer][8 * v73]);
        *[(HistStatLinkedListNode *)self->_statLinkedListCurr prctValBuffer][8 * v73] = v74;
        self->_prctVal[v73++] = v74;
      }

      while (v73 < self->_numPrct);
    }

    goto LABEL_27;
  }

  v22 = self->_minVal;
  *[(HistStatLinkedListNode *)self->_statLinkedListCurr minValBuffer]= v22;
  v23 = self->_maxVal;
  *[(HistStatLinkedListNode *)self->_statLinkedListCurr maxValBuffer]= v23;
  v24 = self->_avgVal;
  *[(HistStatLinkedListNode *)self->_statLinkedListCurr avgValBuffer]= v24;
  v25 = self->_stdVal;
  *[(HistStatLinkedListNode *)self->_statLinkedListCurr stdValBuffer]= v25;
  if (self->_numPrct >= 1)
  {
    v26 = 0;
    do
    {
      v27 = self->_prctVal[v26];
      *[(HistStatLinkedListNode *)self->_statLinkedListCurr prctValBuffer][8 * v26++] = v27;
    }

    while (v26 < self->_numPrct);
  }

LABEL_18:
  v39 = self->_statLinkedListCurr;
  v40 = 1;
LABEL_28:
  [(HistStatLinkedListNode *)v39 setNumOfProcessedFrames:v40];
  return -17000;
}

- (void)setHistBasedToneMappingTemporalType:(unsigned int)a3 temporalMode:(int)a4
{
  if (a3 - 1 > 2)
  {
    self->_tempMode = 0;
  }

  else
  {
    self->_tempMode = a4;
    [(HistBasedToneMapping *)self setbufSize];
  }
}

- (void)setbufSize
{
  tempMode = self->_tempMode;
  if (tempMode == 3)
  {
    v3 = 30;
  }

  else
  {
    v3 = 0;
  }

  if (tempMode == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  self->_bufSize = v4;
}

- (BOOL)sceneChanged:(float *)a3 Prev:(float *)a4 Threshold:(float)a5 CorrCoeff:(float *)a6
{
  v6 = *a3;
  if (*a3 <= *a4)
  {
    v6 = *a4;
  }

  v7 = ((*a3 - *a4) * (*a3 - *a4)) / v6;
  v8 = 0.0;
  v9 = 128;
  do
  {
    if ((*a3 + *a4) != 0.0)
    {
      v8 = v7 + v8;
    }

    --v9;
  }

  while (v9);
  *a6 = v8 * 100.0;
  return (v8 * 100.0) >= a5;
}

- (void)getSettingsFromDefaultsWrite
{
  if (GetConfig())
  {
    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0, 0) == 1)
    {
      if (GetConfig())
      {
        v4 = GetConfig();
        v5 = *HDRConfig::GetConfigEntryValue(v4, 0x3Cu, 0);
      }

      else
      {
        v5 = 0;
      }

      self->_histPrintData = v5 & 1;
      if (GetConfig())
      {
        v6 = GetConfig();
        v7 = *HDRConfig::GetConfigEntryValue(v6, 0x3Bu, 0);
      }

      else
      {
        v7 = 0;
      }

      self->_histMinMaxBinCenter = v7 & 1;
    }
  }
}

- (int64_t)debugHistDataFromLayer:(__IOSurface *)a3
{
  [(HistBasedToneMapping *)self getSettingsFromDefaultsWrite];
  if (GetConfig() && (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0x3Du, 0) == 1))
  {
    result = [(HistBasedToneMapping *)self getHistDataFromLayerV0:a3];
  }

  else
  {
    result = [(HistBasedToneMapping *)self getHistDataFromLayerV1:a3];
  }

  self->_isDataValid = result == -17000;
  return result;
}

- (int64_t)copyHistStatFromObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isDataValid];
    self->_isDataValid = v6;
    if (v6)
    {
      [v5 minVal];
      self->_minVal = v7;
      [v5 maxVal];
      self->_maxVal = v8;
      [v5 avgVal];
      self->_avgVal = v9;
      [v5 stdVal];
      self->_stdVal = v10;
      v11 = 0;
      self->_numPrct = [v5 numPrct];
      while (v11 < [v5 numPrct])
      {
        self->_pcntVal[v11] = *([v5 pcntVal] + 4 * v11);
        self->_prctVal[v11] = *([v5 prctVal] + 4 * v11);
        ++v11;
      }

      [v5 avgPixelLevel];
      self->_avgPixelLevel = v13;
      self->_isSceneChanged = [v5 isSceneChanged];
    }

    v12 = -17000;
  }

  else
  {
    v12 = -17001;
  }

  return v12;
}

@end