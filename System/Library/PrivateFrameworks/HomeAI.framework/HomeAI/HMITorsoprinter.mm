@interface HMITorsoprinter
+ (__CVBuffer)createTorsoPixelBufferForTorsoEvent:(id)event pixelBuffer:(__CVBuffer *)buffer error:(id *)error;
+ (id)currentModelUUID;
- (id)torsoprintForTorsoPixelBuffer:(__CVBuffer *)buffer unrecognizable:(BOOL)unrecognizable error:(id *)error;
@end

@implementation HMITorsoprinter

+ (id)currentModelUUID
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMITorsoprinter_currentModelUUID__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentModelUUID_onceToken != -1)
  {
    dispatch_once(&currentModelUUID_onceToken, block);
  }

  v2 = currentModelUUID_modelUUID;

  return v2;
}

void __35__HMITorsoprinter_currentModelUUID__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = +[HMITorsoprinter currentTorsoRequestRevision];
  v3 = HMIVisionRuntimeVersion();
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543874;
    v11 = v7;
    v12 = 2048;
    v13 = v2;
    v14 = 2048;
    v15 = v3;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Torsoprint Version: %ld.%ld", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = HMIModelUUID(v2, v3);
  v9 = currentModelUUID_modelUUID;
  currentModelUUID_modelUUID = v8;
}

+ (__CVBuffer)createTorsoPixelBufferForTorsoEvent:(id)event pixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  eventCopy = event;
  Size = HMICVPixelBufferGetSize(buffer);
  v10 = v9;
  [eventCopy boundingBox];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  HMICGRectPixelFromNormalized(v12, v14, v16, v18, Size, v10);
  v22 = CGRectIntegral(v21);

  return [HMIVisionUtilities transferPixelBuffer:buffer crop:1111970369 size:8 pixelFormat:error options:v22.origin.x error:v22.origin.y, v22.size.width, v22.size.height, 128.0, 256.0];
}

- (id)torsoprintForTorsoPixelBuffer:(__CVBuffer *)buffer unrecognizable:(BOOL)unrecognizable error:(id *)error
{
  unrecognizableCopy = unrecognizable;
  v71[1] = *MEMORY[0x277D85DE8];
  v9 = objc_alloc_init(MEMORY[0x277CE2C50]);
  v63 = 0;
  v10 = [v9 setRevision:+[HMITorsoprinter currentTorsoRequestRevision](HMITorsoprinter error:{"currentTorsoRequestRevision"), &v63}];
  v11 = v63;
  if (v10)
  {
    v12 = [MEMORY[0x277CE2D30] observationWithRequestRevision:3737841664 boundingBox:{0.0, 0.0, 1.0, 1.0}];
    v71[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
    [v9 setInputDetectedObjectObservations:v13];

    v14 = objc_alloc(MEMORY[0x277CE2D50]);
    v15 = +[HMIVisionSession sharedInstance];
    vnSession = [v15 vnSession];
    v17 = [v14 initWithCVPixelBuffer:buffer options:MEMORY[0x277CBEC10] session:vnSession];

    v70 = v9;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
    v62 = v11;
    v19 = [v17 performRequests:v18 error:&v62];
    v20 = v62;

    if (v19)
    {
      results = [v9 results];
      v22 = [results count];

      if (v22 == 1)
      {
        results2 = [v9 results];
        firstObject = [results2 firstObject];

        torsoprint = [firstObject torsoprint];
        [torsoprint confidence];
        v27 = v26;

        v28 = v27 <= 0.5;
        if (v27 <= 0.5)
        {
          context = objc_autoreleasePoolPush();
          selfCopy = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v59 = HMFGetLogIdentifier();
            torsoprint2 = [firstObject torsoprint];
            [torsoprint2 confidence];
            *buf = 138543618;
            v65 = v59;
            v66 = 2048;
            v67 = v31;
            _os_log_impl(&dword_22D12F000, v30, OS_LOG_TYPE_INFO, "%{public}@Found low quality torso conf: %.4f", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          v28 = 1;
        }

        [HMITorsoQuality entropyOfSaturationForBGRAPixelBuffer:buffer];
        v33 = v32;
        [HMITorsoQuality entropyOfLaplacianForBGRAPixelBuffer:buffer];
        v35 = v34;
        if (v33 >= -1.988 && v34 >= -1.915)
        {
          v36 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v39 = v61 = v36;
            *buf = 138543874;
            v65 = v39;
            v66 = 2048;
            v67 = v33;
            v68 = 2048;
            v69 = v35;
            _os_log_impl(&dword_22D12F000, v38, OS_LOG_TYPE_INFO, "%{public}@Found low quality torso entropyOfSaturation: %.4f entropyOfLaplacian: %.4f", buf, 0x20u);

            v36 = v61;
          }

          objc_autoreleasePoolPop(v36);
          v28 = 1;
        }

        torsoprint3 = [firstObject torsoprint];

        if (torsoprint3)
        {
          v41 = [HMITorsoprint alloc];
          uUID = [MEMORY[0x277CCAD78] UUID];
          torsoprint4 = [firstObject torsoprint];
          descriptorData = [torsoprint4 descriptorData];
          v45 = [(HMITorsoprint *)v41 initWithUUID:uUID data:descriptorData lowQuality:v28 unrecognizable:unrecognizableCopy];
        }

        else
        {
          v55 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1038 description:@"torsoprint is nil"];
          uUID = v55;
          if (error)
          {
            v56 = v55;
            *error = uUID;
          }

          HMIErrorLog(self, uUID);
          v45 = 0;
        }

        goto LABEL_29;
      }

      v50 = MEMORY[0x277CCACA8];
      results3 = [v9 results];
      firstObject = [v50 stringWithFormat:@"Expected 1 torsoprint, but got %lu torsoprints", objc_msgSend(results3, "count")];

      v52 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1038 description:firstObject];
      v53 = v52;
      if (error)
      {
        v54 = v52;
        *error = v53;
      }

      HMIErrorLog(self, v53);
    }

    else
    {
      v48 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1038 description:@"failed to perform image request" underlyingError:v20];
      firstObject = v48;
      if (error)
      {
        v49 = v48;
        *error = firstObject;
      }

      HMIErrorLog(self, firstObject);
    }

    v45 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v46 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1038 description:@"Failed to set request revision" underlyingError:v11];
  v17 = v46;
  if (error)
  {
    v47 = v46;
    *error = v17;
  }

  HMIErrorLog(self, v17);
  v45 = 0;
  v20 = v11;
LABEL_30:

  return v45;
}

@end