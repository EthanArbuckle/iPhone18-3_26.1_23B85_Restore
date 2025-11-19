@interface HMIFeedbackSubmitClipOperation
+ (id)logCategory;
- (BOOL)_attachEncryptedDataUsingKey:(id)a3 toPayload:(id)a4 error:(id *)a5;
- (HMIFeedbackSubmitClipOperation)initWithFeedbackSession:(id)a3 cameraProfileUUID:(id)a4 clipUUID:(id)a5;
- (id)_base64StringFromData:(id)a3;
- (id)_createPayloadWithServiceResult:(id)a3 error:(id *)a4;
- (id)_temporaryFileURLWithUUID:(id)a3 extension:(id)a4 error:(id *)a5;
- (id)feedbackRequestURLForClipWithUUID:(id)a3;
- (id)feedbackServiceHost;
- (id)feedbackServiceURL;
- (void)_downloadClipWithCameraProfileUUID:(id)a3 clipUUID:(id)a4 completionHandler:(id)a5;
- (void)_removeTemporaryFiles;
- (void)_requestPreSignedURLWithClipUUID:(id)a3 completionHandler:(id)a4;
- (void)_stripAudioTrackAndFacesFromAsset:(id)a3 completionHandler:(id)a4;
- (void)_submitClipWithCameraProfileUUID:(id)a3 clipUUID:(id)a4 completionHandler:(id)a5;
- (void)_uploadPayloadData:(id)a3 uploadURL:(id)a4 completionHandler:(id)a5;
- (void)main;
@end

@implementation HMIFeedbackSubmitClipOperation

- (HMIFeedbackSubmitClipOperation)initWithFeedbackSession:(id)a3 cameraProfileUUID:(id)a4 clipUUID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = HMIFeedbackSubmitClipOperation;
  v12 = [(HMFOperation *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_feedbackSession, a3);
    objc_storeStrong(&v13->_cameraProfileUUID, a4);
    objc_storeStrong(&v13->_clipUUID, a5);
    v14 = [MEMORY[0x277CBEB18] array];
    temporaryFileURLs = v13->_temporaryFileURLs;
    v13->_temporaryFileURLs = v14;

    faceCrops = v13->_faceCrops;
    v13->_faceCrops = 0;

    assetData = v13->_assetData;
    v13->_assetData = 0;

    serviceResult = v13->_serviceResult;
    v13->_serviceResult = 0;
  }

  return v13;
}

- (void)_downloadClipWithCameraProfileUUID:(id)a3 clipUUID:(id)a4 completionHandler:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v14;
    _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Downloading Clip", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMIFeedbackSubmitClipOperation *)v12 feedbackSession];
  v16 = [v15 homeKitClient];
  v17 = [v16 cameraProfileWithUUID:v8];

  if (v17)
  {
    v18 = [(HMIFeedbackSubmitClipOperation *)v12 feedbackSession];
    v19 = [v18 homeKitClient];
    v20 = [v19 homeWithCameraProfileUUID:v8];

    if (v20)
    {
      v33 = v9;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke;
      v39[3] = &unk_278753E00;
      v39[4] = v12;
      v21 = v10;
      v41 = v21;
      v22 = v17;
      v40 = v22;
      v23 = MEMORY[0x2318CB8E0](v39);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_152;
      v34[3] = &unk_278753E50;
      v37 = v21;
      v20 = v20;
      v35 = v20;
      v36 = v12;
      v24 = v23;
      v38 = v24;
      v25 = MEMORY[0x2318CB8E0](v34);
      v26 = objc_autoreleasePoolPush();
      v27 = v12;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v29 = v32 = v22;
        *buf = 138543362;
        v43 = v29;
        _os_log_impl(&dword_22D12F000, v28, OS_LOG_TYPE_INFO, "%{public}@Fetching Clip", buf, 0xCu);

        v22 = v32;
      }

      objc_autoreleasePoolPop(v26);
      v30 = [v22 clipManager];
      v9 = v33;
      [v30 fetchClipWithUUID:v33 completion:v25];
    }

    else
    {
      v31 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Cannot find home for camera profile."];
      (*(v10 + 2))(v10, 0, v31);
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Cannot find camera profile."];
    (*(v10 + 2))(v10, 0, v20);
  }
}

void __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCAD78] UUID];
  v19 = 0;
  v6 = [v4 _temporaryFileURLWithUUID:v5 extension:@"mp4" error:&v19];
  v7 = v19;

  if (v6)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v6 path];
    v10 = [v8 fileExistsAtPath:v9];

    if (!v10)
    {
      v12 = objc_alloc(MEMORY[0x277CD18E8]);
      v13 = [*(a1 + 40) clipManager];
      v14 = [v12 initWithClipManager:v13 clip:v3];

      [v14 setClipDestinationFileURL:v6];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_2;
      v16[3] = &unk_278753DB0;
      v16[4] = *(a1 + 32);
      v18 = *(a1 + 48);
      v17 = v6;
      [v14 setFetchVideoAssetContextCompletionBlock:v16];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_149;
      v15[3] = &unk_278753DD8;
      v15[4] = *(a1 + 32);
      [v14 setDownloadProgressHandler:v15];
      [v14 start];

      goto LABEL_7;
    }

    v11 = *(*(a1 + 48) + 16);
  }

  else
  {
    v11 = *(*(a1 + 48) + 16);
  }

  v11();
LABEL_7:
}

void __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetched Clip videoAssetContext: %@, error: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *(a1 + 48);
  if (v5)
  {
    (*(v11 + 16))(*(a1 + 48), *(a1 + 40), 0);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Cannot download clip asset." suggestion:@"Check network connectivity." underlyingError:v6];
    (*(v11 + 16))(v11, 0, v12);
  }
}

void __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_149(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2048;
    v11 = a2;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetching Clip, progress %lu%%", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_152(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v20 = *(a1 + 48);
    v14 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Cannot download clip for camera profile." suggestion:@"Ensure the clip belongs to the camera profile." underlyingError:v6];
    (*(v20 + 16))(v20, 0, v14);
LABEL_9:

    goto LABEL_13;
  }

  v7 = [*(a1 + 32) personManager];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching Face Crops", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [v5 significantEvents];
    v14 = [v13 na_map:&__block_literal_global_162];

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 40);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_INFO, "%{public}@Fetched Person UUIDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [*(a1 + 32) personManager];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_163;
    v22[3] = &unk_278753E28;
    v22[4] = *(a1 + 40);
    v24 = *(a1 + 56);
    v23 = v5;
    [v19 fetchFaceCropsForPersonsWithUUIDs:v14 completion:v22];

    goto LABEL_9;
  }

  if (v11)
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v21;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Face crops are not available.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  (*(*(a1 + 56) + 16))();
LABEL_13:
}

id __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_159(uint64_t a1, void *a2)
{
  v2 = [a2 faceClassification];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 person];
    v5 = [v4 UUID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __96__HMIFeedbackSubmitClipOperation__downloadClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_163(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetched Face Crops: %@, error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) setFaceCrops:v5];
  (*(*(a1 + 48) + 16))();
}

- (void)_stripAudioTrackAndFacesFromAsset:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAD78] UUID];
  v34 = 0;
  v9 = [(HMIFeedbackSubmitClipOperation *)self _temporaryFileURLWithUUID:v8 extension:@"mp4" error:&v34];
  v10 = v34;

  if (!v9)
  {
    v7[2](v7, 0, v10);
    goto LABEL_20;
  }

  memset(&v33, 0, sizeof(v33));
  v11 = +[HMIPreference isInternalInstall];
  v12 = 60.0;
  if (!v11)
  {
    v12 = 20.0;
  }

  CMTimeMakeWithSeconds(&v33, v12, 1000);
  if (+[HMIPreference isInternalInstall])
  {
    goto LABEL_5;
  }

  v32 = 0;
  v21 = objc_alloc_init(HMIFeedbackVisionProcessor);
  buf = v33;
  v22 = [(HMIFeedbackVisionProcessor *)v21 blurFacesFromAssetURL:v6 outputURL:v9 duration:&buf analysisFPS:5 windowSize:&v32 faceDetected:COERCE_DOUBLE(__PAIR64__(HIDWORD(v33.value), 15.0))];

  if (!v22)
  {
    v17 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Unable to blur faces."];
    v7[2](v7, 0, v17);
LABEL_19:

    goto LABEL_20;
  }

  if (v32 != 1)
  {
LABEL_5:
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      LODWORD(buf.value) = 138543362;
      *(&buf.value + 4) = v16;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Use the original video without audio track for upload", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CE63D8] assetWithURL:v6];
    if ([v17 isReadable])
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __86__HMIFeedbackSubmitClipOperation__stripAudioTrackAndFacesFromAsset_completionHandler___block_invoke;
      v27[3] = &unk_278753EA0;
      v18 = v17;
      v28 = v18;
      v30 = v7;
      v29 = v9;
      v31 = v33;
      v19 = MEMORY[0x2318CB8E0](v27);
      [v18 loadValuesAsynchronouslyForKeys:&unk_284075570 completionHandler:v19];

      v20 = v28;
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1004 description:@"Unable to read the asset from disk."];
      v7[2](v7, 0, v20);
    }

    goto LABEL_19;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    LODWORD(buf.value) = 138543362;
    *(&buf.value + 4) = v26;
    _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_INFO, "%{public}@Use the face-blurred video for upload", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  (v7)[2](v7, v9, 0);
LABEL_20:
}

void __86__HMIFeedbackSubmitClipOperation__stripAudioTrackAndFacesFromAsset_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v29 = 0;
  v3 = [v2 statusOfValueForKey:@"tracks" error:&v29];
  v4 = v29;
  if (v3 == 2)
  {
    v5 = [MEMORY[0x277CE6548] composition];
    v6 = *MEMORY[0x277CE5EA8];
    v7 = [v5 addMutableTrackWithMediaType:*MEMORY[0x277CE5EA8] preferredTrackID:0];
    v8 = [*(a1 + 32) tracksWithMediaType:v6];
    v9 = [v8 firstObject];

    if (v9)
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        [v10 duration];
      }

      else
      {
        memset(&duration, 0, sizeof(duration));
      }

      start = **&MEMORY[0x277CC08F0];
      v19 = *&start.value;
      epoch = start.epoch;
      CMTimeRangeMake(&v28, &start, &duration);
      v25 = v4;
      *&duration.value = v19;
      duration.epoch = epoch;
      v14 = [v7 insertTimeRange:&v28 ofTrack:v9 atTime:&duration error:&v25];
      v15 = v25;

      if (v14)
      {
        v16 = objc_alloc(MEMORY[0x277CE6400]);
        v17 = [v16 initWithAsset:v5 presetName:*MEMORY[0x277CE5C78]];
        [v17 setOutputFileType:*MEMORY[0x277CE5D98]];
        [v17 setOutputURL:*(a1 + 40)];
        [v17 setShouldOptimizeForNetworkUse:1];
        CMTimeMake(&v28.start, 0, 1000);
        duration = *(a1 + 56);
        CMTimeRangeMake(&v24, &v28.start, &duration);
        v28 = v24;
        [v17 setTimeRange:&v28];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __86__HMIFeedbackSubmitClipOperation__stripAudioTrackAndFacesFromAsset_completionHandler___block_invoke_2;
        v20[3] = &unk_278753E78;
        v21 = v17;
        v23 = *(a1 + 48);
        v22 = *(a1 + 40);
        v18 = v17;
        [v18 exportAsynchronouslyWithCompletionHandler:v20];
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }

      v4 = v15;
    }

    else
    {
      v11 = *(a1 + 48);
      v12 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Clip doesn't have a video track."];
      (*(v11 + 16))(v11, 0, v12);
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __86__HMIFeedbackSubmitClipOperation__stripAudioTrackAndFacesFromAsset_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) status];
  v3 = *(a1 + 48);
  if (v2 == 3)
  {
    v4 = *(a1 + 40);
    v5 = *(v3 + 16);
    v6 = *(a1 + 48);

    v5(v6, v4, 0);
  }

  else
  {
    v7 = [*(a1 + 32) error];
    (*(v3 + 16))(v3, 0, v7);
  }
}

- (id)feedbackRequestURLForClipWithUUID:(id)a3
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [(HMIFeedbackSubmitClipOperation *)self feedbackServiceURL];
  v8 = [v6 UUIDString];

  v9 = [v5 stringWithFormat:@"%@%@", v7, v8];
  v10 = [v4 URLWithString:v9];

  return v10;
}

- (id)feedbackServiceHost
{
  v2 = [(HMIFeedbackSubmitClipOperation *)self feedbackSession];
  v3 = [v2 feedbackServiceHost];

  return v3;
}

- (id)feedbackServiceURL
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMIFeedbackSubmitClipOperation *)self feedbackServiceHost];
  v4 = [v2 stringWithFormat:@"https://%@/v2/clip-uuid/", v3];

  return v4;
}

- (id)_base64StringFromData:(id)a3
{
  v3 = [a3 base64EncodedDataWithOptions:1];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];

  return v4;
}

- (id)_temporaryFileURLWithUUID:(id)a3 extension:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = HMIURLForCacheDirectory(a5);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 URLByAppendingPathComponent:@"feedback"];
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v12 path];
    v15 = [v13 fileExistsAtPath:v14];

    if ((v15 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "path"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v17, 1, 0, a5), v17, v16, v19 = 0, v18))
    {
      v20 = [v12 path];
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v8, v9];
      v22 = [v20 stringByAppendingPathComponent:v21];

      v19 = [MEMORY[0x277CBEBC0] fileURLWithPath:v22];
      [(NSMutableArray *)self->_temporaryFileURLs addObject:v19];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_uploadPayloadData:(id)a3 uploadURL:(id)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v29 = v14;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Uploading payload data: %@, to URL %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCAD78] UUID];
  v27 = 0;
  v16 = [(HMIFeedbackSubmitClipOperation *)v12 _temporaryFileURLWithUUID:v15 extension:@"json" error:&v27];
  v17 = v27;

  if (v16)
  {
    [v8 writeToURL:v16 atomically:1];
    v18 = [MEMORY[0x277CCAB70] requestWithURL:v9];
    [v18 setHTTPMethod:@"PUT"];
    [v18 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v19 = [(HMIFeedbackSubmitClipOperation *)v12 feedbackSession];
    v20 = [v19 session];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __81__HMIFeedbackSubmitClipOperation__uploadPayloadData_uploadURL_completionHandler___block_invoke;
    v25 = &unk_278753EC8;
    v26 = v10;
    v21 = [v20 uploadTaskWithRequest:v18 fromFile:v16 completionHandler:&v22];

    [v21 resume];
  }

  else
  {
    (*(v10 + 2))(v10, v17);
  }
}

- (BOOL)_attachEncryptedDataUsingKey:(id)a3 toPayload:(id)a4 error:(id *)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 length] == 32)
  {
    v10 = [MEMORY[0x277CBEB28] dataWithLength:{-[NSData length](self->_assetData, "length")}];
    v11 = [MEMORY[0x277CBEB28] dataWithLength:16];
    v62 = 0;
    v12 = NSRandomData();
    v13 = 0;
    v14 = v13;
    if (v12)
    {
      v48 = a5;
      v49 = v13;
      v50 = v9;
      [v8 bytes];
      [v8 length];
      [v12 bytes];
      [v12 length];
      [(NSData *)self->_assetData bytes];
      v57 = v12;
      v15 = [(NSData *)self->_assetData length];
      v16 = [v10 mutableBytes];
      v42 = [v11 mutableBytes];
      v44 = [v11 length];
      v56 = self;
      if (CCCryptorGCMOneshotEncrypt())
      {
        v17 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:{@"Failed to encrypt data.", v15, v16, v42, v44}];
        v18 = v17;
        if (v48)
        {
          v19 = v17;
          *v48 = v18;
        }

        HMIErrorLog(self, v18);
        v20 = 0;
        v14 = v49;
      }

      else
      {
        v26 = [(HMIFeedbackSubmitClipOperation *)self _base64StringFromData:v12, v15, v16, v42, v44];
        [v9 setObject:v26 forKeyedSubscript:@"iv"];

        v27 = [(HMIFeedbackSubmitClipOperation *)self _base64StringFromData:v11];
        [v9 setObject:v27 forKeyedSubscript:@"authTag"];

        v28 = [(HMIFeedbackSubmitClipOperation *)self _base64StringFromData:v10];
        [v9 setObject:v28 forKeyedSubscript:@"clip"];

        if (!+[HMIPreference isInternalInstall])
        {
          v20 = 1;
          v14 = v49;
LABEL_29:

          goto LABEL_30;
        }

        v46 = v11;
        v47 = v10;
        v18 = [MEMORY[0x277CBEB18] array];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = [(HMIFeedbackSubmitClipOperation *)self faceCrops];
        v55 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
        if (v55)
        {
          v53 = v8;
          v54 = *v59;
          v52 = v18;
          while (2)
          {
            for (i = 0; i != v55; ++i)
            {
              if (*v59 != v54)
              {
                objc_enumerationMutation(obj);
              }

              v30 = [*(*(&v58 + 1) + 8 * i) dataRepresentation];
              v31 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v30, "length")}];
              v32 = [MEMORY[0x277CBEB28] dataWithLength:16];
              [v8 bytes];
              [v8 length];
              [v57 bytes];
              [v57 length];
              [v30 bytes];
              v33 = [v30 length];
              v34 = [v31 mutableBytes];
              v43 = [v32 mutableBytes];
              v45 = [v32 length];
              if (CCCryptorGCMOneshotEncrypt())
              {
                v38 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:{@"Failed to encrypt face crop data.", v33, v34, v43, v45}];
                v39 = v38;
                v10 = v47;
                v18 = v52;
                if (v48)
                {
                  v40 = v38;
                  *v48 = v39;
                }

                HMIErrorLog(v56, v39);

                v20 = 0;
                v8 = v53;
                v9 = v50;
                goto LABEL_27;
              }

              v63[0] = @"data";
              v35 = [(HMIFeedbackSubmitClipOperation *)v56 _base64StringFromData:v31, v33, v34, v43, v45];
              v63[1] = @"authTag";
              v64[0] = v35;
              v36 = [(HMIFeedbackSubmitClipOperation *)v56 _base64StringFromData:v32];
              v64[1] = v36;
              v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
              v18 = v52;
              [v52 addObject:v37];

              v8 = v53;
            }

            v55 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
            if (v55)
            {
              continue;
            }

            break;
          }
        }

        v9 = v50;
        [v50 setObject:v18 forKeyedSubscript:@"faceCrops"];
        v20 = 1;
        v10 = v47;
LABEL_27:
        v11 = v46;
        v14 = v49;
        v12 = v57;
      }
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Cannot generate initialization vector."];
      v18 = v24;
      if (a5)
      {
        v25 = v24;
        *a5 = v18;
      }

      HMIErrorLog(self, v18);
      v20 = 0;
    }

    goto LABEL_29;
  }

  v21 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Invalid key size."];
  v22 = v21;
  if (a5)
  {
    v23 = v21;
    *a5 = v22;
  }

  HMIErrorLog(self, v22);

  v20 = 0;
LABEL_30:

  return v20;
}

- (id)_createPayloadWithServiceResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"key"];
  v8 = [v7 dataUsingEncoding:4];

  v9 = [MEMORY[0x277CBEB38] dictionary];
  if ([(HMIFeedbackSubmitClipOperation *)self _attachEncryptedDataUsingKey:v8 toPayload:v9 error:a4])
  {
    v10 = [v6 objectForKeyedSubscript:@"wrappedKey"];
    [v9 setObject:v10 forKeyedSubscript:@"key"];

    if (+[HMIPreference isInternalInstall])
    {
      [v9 setObject:@"1" forKeyedSubscript:@"internal"];
    }

    v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v9 options:8 error:a4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_submitClipWithCameraProfileUUID:(id)a3 clipUUID:(id)a4 completionHandler:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v35 = v14;
    v36 = 2112;
    v37 = v9;
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Submitting clipUUID: %@, cameraProfileUUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __94__HMIFeedbackSubmitClipOperation__submitClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke;
  v32[3] = &unk_278753EF0;
  v32[4] = v12;
  v15 = v10;
  v33 = v15;
  v16 = MEMORY[0x2318CB8E0](v32);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __94__HMIFeedbackSubmitClipOperation__submitClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_231;
  v29[3] = &unk_278753F18;
  v29[4] = v12;
  v17 = v15;
  v30 = v17;
  v31 = v16;
  v18 = v16;
  v19 = MEMORY[0x2318CB8E0](v29);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __94__HMIFeedbackSubmitClipOperation__submitClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_232;
  v24[3] = &unk_278753F40;
  v24[4] = v12;
  v25 = v8;
  v26 = v9;
  v27 = v17;
  v28 = v19;
  v20 = v19;
  v21 = v9;
  v22 = v8;
  v23 = v17;
  [(HMIFeedbackSubmitClipOperation *)v12 _requestPreSignedURLWithClipUUID:v21 completionHandler:v24];
}

void __94__HMIFeedbackSubmitClipOperation__submitClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v21 = v10;
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_INFO, "%{public}@Stripped Audio %@, error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5];
    [*(a1 + 32) setAssetData:v11];

    v12 = *(a1 + 32);
    v13 = [v12 serviceResult];
    v19 = 0;
    v14 = [v12 _createPayloadWithServiceResult:v13 error:&v19];
    v6 = v19;

    if (v14)
    {
      v15 = MEMORY[0x277CBEBC0];
      v16 = [*(a1 + 32) serviceResult];
      v17 = [v16 objectForKeyedSubscript:@"url"];
      v18 = [v15 URLWithString:v17];

      [*(a1 + 32) _uploadPayloadData:v14 uploadURL:v18 completionHandler:*(a1 + 40)];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __94__HMIFeedbackSubmitClipOperation__submitClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_231(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_INFO, "%{public}@Downloaded %@, error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    [*(a1 + 32) _stripAudioTrackAndFacesFromAsset:v5 completionHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __94__HMIFeedbackSubmitClipOperation__submitClipWithCameraProfileUUID_clipUUID_completionHandler___block_invoke_232(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setServiceResult:v5];
    [*(a1 + 32) _downloadClipWithCameraProfileUUID:*(a1 + 40) clipUUID:*(a1 + 48) completionHandler:*(a1 + 64)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch pre-signed URL, error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }
}

- (void)_requestPreSignedURLWithClipUUID:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMIFeedbackSubmitClipOperation *)v9 feedbackServiceHost];
    *buf = 138543874;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Requesting a pre-signed url from server endpoint:%@, for clipUUID:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMIFeedbackSubmitClipOperation *)v9 feedbackSession];
  v14 = [v13 session];
  v15 = [(HMIFeedbackSubmitClipOperation *)v9 feedbackRequestURLForClipWithUUID:v6];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __85__HMIFeedbackSubmitClipOperation__requestPreSignedURLWithClipUUID_completionHandler___block_invoke;
  v21 = &unk_278753F68;
  v22 = v9;
  v23 = v7;
  v16 = v7;
  v17 = [v14 dataTaskWithURL:v15 completionHandler:&v18];

  [v17 resume];
}

void __85__HMIFeedbackSubmitClipOperation__requestPreSignedURLWithClipUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v34 = 0;
    v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:4 error:&v34];
    v15 = v34;
    if (!v14)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v25;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode server response, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      (*(*(a1 + 40) + 16))();
      goto LABEL_26;
    }

    v16 = v8;
    v17 = [v16 statusCode];
    context = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    switch(v17)
    {
      case 500:
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v30;
          v37 = 2112;
          v38 = v14;
          _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to request service result due to internal server error, serverResponse: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v27 = MEMORY[0x277CCA9B8];
        v28 = @"Status Code:500, Error: Internal server error";
        v29 = 1049;
        break;
      case 404:
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v26;
          v37 = 2112;
          v38 = v14;
          _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to request service result, resource is not found, serverResponse: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v27 = MEMORY[0x277CCA9B8];
        v28 = @"Status Code:400, Error: Resource not found on server error";
        v29 = 1050;
        break;
      case 200:
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v21;
          v37 = 2112;
          v38 = v14;
          _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@Service result: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        (*(*(a1 + 40) + 16))();
        goto LABEL_25;
      default:
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v31;
          v37 = 2112;
          v38 = v14;
          _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to request service result due to server error, serverResponse: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v27 = MEMORY[0x277CCA9B8];
        v28 = @"Unkown server error";
        v29 = 1000;
        break;
    }

    v32 = [v27 hmiPrivateErrorWithCode:v29 description:{v28, context}];

    (*(*(a1 + 40) + 16))();
    v15 = v32;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v13;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to request service result from server, error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  (*(*(a1 + 40) + 16))();
LABEL_27:
}

- (void)_removeTemporaryFiles
{
  temporaryFileURLs = self->_temporaryFileURLs;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__HMIFeedbackSubmitClipOperation__removeTemporaryFiles__block_invoke;
  v3[3] = &unk_278753F90;
  v3[4] = self;
  [(NSMutableArray *)temporaryFileURLs na_each:v3];
}

void __55__HMIFeedbackSubmitClipOperation__removeTemporaryFiles__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v7;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Deleting Temporary File %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v3 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = 0;
    v12 = [v11 removeItemAtURL:v3 error:&v18];
    v13 = v18;

    if ((v12 & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v20 = v17;
        v21 = 2112;
        v22 = v3;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_INFO, "%{public}@Deleted Temporary File %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }
}

- (void)main
{
  cameraProfileUUID = self->_cameraProfileUUID;
  clipUUID = self->_clipUUID;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__HMIFeedbackSubmitClipOperation_main__block_invoke;
  v4[3] = &unk_2787529D0;
  v4[4] = self;
  [(HMIFeedbackSubmitClipOperation *)self _submitClipWithCameraProfileUUID:cameraProfileUUID clipUUID:clipUUID completionHandler:v4];
}

void __38__HMIFeedbackSubmitClipOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _removeTemporaryFiles];
  v3 = *(a1 + 32);
  if (v4)
  {
    [v3 cancelWithError:v4];
  }

  else
  {
    [v3 finish];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t37 != -1)
  {
    +[HMIFeedbackSubmitClipOperation logCategory];
  }

  v3 = logCategory__hmf_once_v38;

  return v3;
}

uint64_t __45__HMIFeedbackSubmitClipOperation_logCategory__block_invoke()
{
  logCategory__hmf_once_v38 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end