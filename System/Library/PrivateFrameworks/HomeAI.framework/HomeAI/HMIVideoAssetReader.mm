@interface HMIVideoAssetReader
- (BOOL)_createOutputsForAsset:(id)a3 readVideo:(BOOL)a4 readAudio:(BOOL)a5;
- (BOOL)checkAndSaveCrashReportWithData:(id)a3;
- (HMIVideoAssetReader)initWithAsset:(id)a3 readVideoTrack:(BOOL)a4 readAudioTrack:(BOOL)a5;
- (opaqueCMSampleBuffer)_copyNextSampleBufferFromTrackOutput:(id)a3;
- (opaqueCMSampleBuffer)copyNextSampleBufferWithTrackIndexOutput:(unint64_t *)a3;
- (void)dealloc;
@end

@implementation HMIVideoAssetReader

- (HMIVideoAssetReader)initWithAsset:(id)a3 readVideoTrack:(BOOL)a4 readAudioTrack:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v21.receiver = self;
  v21.super_class = HMIVideoAssetReader;
  v10 = [(HMIVideoAssetReader *)&v21 init];
  if (v10)
  {
    v10->_trackSamples = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v11 = [MEMORY[0x277CBEB18] array];
    trackOutputs = v10->_trackOutputs;
    v10->_trackOutputs = v11;

    objc_storeStrong(&v10->_asset, a3);
    v20 = 0;
    v13 = [MEMORY[0x277CE6410] assetReaderWithAsset:v9 error:&v20];
    v14 = v20;
    assetReader = v10->_assetReader;
    v10->_assetReader = v13;

    if (v10->_assetReader)
    {
      if ([(HMIVideoAssetReader *)v10 _createOutputsForAsset:v9 readVideo:v6 readAudio:v5])
      {
        v16 = 1;
LABEL_7:
        v10->super._status = v16;

        goto LABEL_8;
      }
    }

    else
    {
      error = v10->super._error;
      v10->super._error = v14;
      v18 = v14;
    }

    v16 = 4;
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

- (BOOL)_createOutputsForAsset:(id)a3 readVideo:(BOOL)a4 readAudio:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEB18] array];
  if (v6)
  {
    v9 = [(AVAsset *)self->_asset tracksWithMediaType:*MEMORY[0x277CE5EA8]];
    [v8 addObjectsFromArray:v9];
  }

  if (v5)
  {
    v10 = [(AVAsset *)self->_asset tracksWithMediaType:*MEMORY[0x277CE5E48]];
    [v8 addObjectsFromArray:v10];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    v15 = *MEMORY[0x277CBEEE8];
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:*(*(&v20 + 1) + 8 * i) outputSettings:{0, v20}];
        [v17 setAlwaysCopiesSampleData:0];
        if (![(AVAssetReader *)self->_assetReader canAddOutput:v17])
        {

          v18 = 0;
          goto LABEL_15;
        }

        [(AVAssetReader *)self->_assetReader addOutput:v17];
        [(NSMutableArray *)self->_trackOutputs addObject:v17];
        CFArrayAppendValue(self->_trackSamples, v15);
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_15:

  return v18;
}

- (void)dealloc
{
  [(AVAssetReader *)self->_assetReader cancelReading];
  CFRelease(self->_trackSamples);
  v3.receiver = self;
  v3.super_class = HMIVideoAssetReader;
  [(HMIVideoAssetReader *)&v3 dealloc];
}

- (opaqueCMSampleBuffer)_copyNextSampleBufferFromTrackOutput:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 copyNextSampleBuffer];
  if (v5)
  {
    v6 = v5;
    while (!CMSampleBufferGetNumSamples(v6))
    {
      CFRelease(v6);
      v6 = [v4 copyNextSampleBuffer];
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    memset(&v15, 0, sizeof(v15));
    CMSampleBufferGetDecodeTimeStamp(&v15, v6);
  }

  else
  {
LABEL_5:
    if ([(AVAssetReader *)self->_assetReader status]== AVAssetReaderStatusFailed)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [(AVAssetReader *)self->_assetReader error];
        LODWORD(v15.value) = 138543618;
        *(&v15.value + 4) = v10;
        LOWORD(v15.flags) = 2112;
        *(&v15.flags + 2) = v11;
        _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to read sample buffer, error: %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [(AVAssetReader *)self->_assetReader error];
      error = v8->super._error;
      v8->super._error = v12;

      v6 = 0;
      v8->super._status = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (opaqueCMSampleBuffer)copyNextSampleBufferWithTrackIndexOutput:(unint64_t *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  status = self->super._status;
  if (status != 1)
  {
    if (status == 4)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        LODWORD(buf.value) = 138543362;
        *(&buf.value + 4) = v9;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Asset reader failed, ignoring", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      return 0;
    }

LABEL_14:
    buf = **&MEMORY[0x277CC08B0];
    if ([(NSMutableArray *)self->_trackOutputs count])
    {
      v15 = 0;
      v16 = *MEMORY[0x277CBEEE8];
      v17 = -1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_trackSamples, v15);
        if (ValueAtIndex)
        {
          v19 = ValueAtIndex == v16;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          memset(&v30, 0, sizeof(v30));
          CMSampleBufferGetDecodeTimeStamp(&v30, ValueAtIndex);
          time1 = v30;
          v28 = buf;
          if (CMTimeCompare(&time1, &v28) < 0)
          {
            buf = v30;
            v17 = v15;
          }
        }

        ++v15;
      }

      while ([(NSMutableArray *)self->_trackOutputs count]> v15);
      if ((v17 & 0x80000000) == 0)
      {
        v20 = CFArrayGetValueAtIndex(self->_trackSamples, v17);
        v21 = CFRetain(v20);
        v22 = [(NSMutableArray *)self->_trackOutputs objectAtIndexedSubscript:v17];
        v23 = [(HMIVideoAssetReader *)self _copyNextSampleBufferFromTrackOutput:v22];

        trackSamples = self->_trackSamples;
        if (v23)
        {
          CFArraySetValueAtIndex(trackSamples, v17, v23);
          CFRelease(v23);
          if (!a3)
          {
            return v21;
          }
        }

        else
        {
          CFArraySetValueAtIndex(trackSamples, v17, v16);
          if (!a3)
          {
            return v21;
          }
        }

        *a3 = v17;
        return v21;
      }
    }

    return 0;
  }

  if (![(AVAssetReader *)self->_assetReader startReading])
  {
    v26 = [(AVAssetReader *)self->_assetReader error];
    error = self->super._error;
    self->super._error = v26;

    v21 = 0;
    self->super._status = 4;
    return v21;
  }

  self->super._status = 2;
  if ([(NSMutableArray *)self->_trackOutputs count])
  {
    v10 = 0;
    v11 = *MEMORY[0x277CBEEE8];
    do
    {
      v12 = [(NSMutableArray *)self->_trackOutputs objectAtIndexedSubscript:v10];
      v13 = [(HMIVideoAssetReader *)self _copyNextSampleBufferFromTrackOutput:v12];

      v14 = self->_trackSamples;
      if (v13)
      {
        CFArraySetValueAtIndex(v14, v10, v13);
        CFRelease(v13);
      }

      else
      {
        CFArraySetValueAtIndex(v14, v10, v11);
      }

      ++v10;
    }

    while ([(NSMutableArray *)self->_trackOutputs count]> v10);
  }

  if (self->super._status != 4)
  {
    goto LABEL_14;
  }

  return 0;
}

- (BOOL)checkAndSaveCrashReportWithData:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3810000000;
  v36 = &unk_22D2C2491;
  v37 = *MEMORY[0x277CC08B0];
  v38 = *(MEMORY[0x277CC08B0] + 16);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3810000000;
  v31 = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 16);
  v30 = &unk_22D2C2491;
  v32 = v6;
  v7 = [(AVAsset *)self->_asset tracks];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __55__HMIVideoAssetReader_checkAndSaveCrashReportWithData___block_invoke;
  v23[3] = &unk_278752CC8;
  v23[4] = self;
  v25 = &v33;
  v26 = &v27;
  v8 = v5;
  v24 = v8;
  [v7 na_each:v23];

  lhs = *(v28 + 4);
  rhs = *(v34 + 4);
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) > 1.0)
  {
    [v8 addObject:&unk_284075978];
  }

  if ([v8 count])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = v12;
      LOWORD(time.flags) = 2112;
      *(&time.flags + 2) = v8;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Warnings: %@", &time, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277CCAB68] string];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__HMIVideoAssetReader_checkAndSaveCrashReportWithData___block_invoke_26;
    v19[3] = &unk_278752CF0;
    v14 = v13;
    v20 = v14;
    [v8 na_each:v19];
    if (+[HMIPreference isInternalInstall])
    {
      [v14 appendString:@"Sanitized Data\n"];
      v15 = [v4 base64EncodedDataWithOptions:1];
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v15 encoding:4];
      [v14 appendString:v16];

      [v14 appendString:@"\n\n"];
    }

    HMISimulateCrash(@"Asset Check", v14, 1);
  }

  v17 = [v8 count] != 0;

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v17;
}

void __55__HMIVideoAssetReader_checkAndSaveCrashReportWithData___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    if (v3)
    {
      [v3 timeRange];
    }

    else
    {
      v23 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    v8 = HMICMTimeRangeDescription(buf);
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 2112;
    *&buf[24] = v8;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Track %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    [v3 timeRange];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    v17 = 0u;
  }

  *buf = *(v18 + 8);
  *&buf[16] = *(&v18[1] + 1);
  time2 = *(*(*(a1 + 48) + 8) + 32);
  CMTimeMinimum(&v19, buf, &time2);
  *(*(*(a1 + 48) + 8) + 32) = v19;
  if (v3)
  {
    [v3 timeRange];
  }

  else
  {
    memset(&v14[3], 0, 32);
  }

  *buf = *(&v14[3] + 8);
  *&buf[16] = *(&v14[4] + 1);
  time2 = *(*(*(a1 + 56) + 8) + 32);
  CMTimeMaximum(&v15, buf, &time2);
  *(*(*(a1 + 56) + 8) + 32) = v15;
  if (v3)
  {
    [v3 timeRange];
  }

  else
  {
    memset(v14, 0, 32);
  }

  *buf = *(v14 + 8);
  *&buf[16] = *(&v14[1] + 1);
  if (CMTimeGetSeconds(buf) > 3600.0)
  {
    v9 = *(a1 + 40);
    v20[0] = @"name";
    v20[1] = @"discussion";
    v21[0] = @"VeryLongTrackDuration";
    v10 = MEMORY[0x277CCACA8];
    if (v3)
    {
      [v3 timeRange];
    }

    else
    {
      v23 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    v11 = HMICMTimeRangeDescription(buf);
    v12 = [v10 stringWithFormat:@"Track %@ has an unexpectedly long track duration %@.", v3, v11];
    v21[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [v9 addObject:v13];
  }
}

uint64_t __55__HMIVideoAssetReader_checkAndSaveCrashReportWithData___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"name"];
  [v3 appendFormat:@"%@\n", v5];

  v6 = *(a1 + 32);
  v7 = [v4 objectForKeyedSubscript:@"discussion"];

  [v6 appendFormat:@"%@\n", v7];
  v8 = *(a1 + 32);

  return [v8 appendString:@"\n"];
}

@end