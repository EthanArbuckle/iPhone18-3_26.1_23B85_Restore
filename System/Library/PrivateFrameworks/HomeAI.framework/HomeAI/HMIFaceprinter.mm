@interface HMIFaceprinter
+ (__CVBuffer)createFacePixelBufferForFaceDetection:(id)detection pixelBuffer:(__CVBuffer *)buffer roll:(id)roll error:(id *)error;
+ (__CVBuffer)createFacePixelBufferForFaceEvent:(id)event pixelBuffer:(__CVBuffer *)buffer roll:(id)roll error:(id *)error;
+ (id)currentModelUUID;
+ (int64_t)_minorVersionFromVisionVersion:(int)version;
- (__CVBuffer)createFacePixelBufferFromFaceCrop:(id)crop error:(id *)error;
- (id)createFaceprintForFacePixelBuffer:(__CVBuffer *)buffer fastMode:(BOOL)mode error:(id *)error;
- (id)generateFaceprintForFaceCrop:(id)crop error:(id *)error;
- (id)updatedFaceprintsForFaceCrops:(id)crops withExistingFaceprints:(id)faceprints error:(id *)error;
- (void)warmStart;
@end

@implementation HMIFaceprinter

+ (id)currentModelUUID
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMIFaceprinter_currentModelUUID__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentModelUUID_onceToken_0 != -1)
  {
    dispatch_once(&currentModelUUID_onceToken_0, block);
  }

  v2 = currentModelUUID_modelUUID_0;

  return v2;
}

void __34__HMIFaceprinter_currentModelUUID__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = +[HMIFaceUtilities faceprintDefaultRevision];
  v3 = [HMIFaceprinter _minorVersionFromVisionVersion:HMIVisionRuntimeVersion()];
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
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Faceprint Version: %ld.%ld", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = HMIModelUUID(v2, v3);
  v9 = currentModelUUID_modelUUID_0;
  currentModelUUID_modelUUID_0 = v8;
}

- (void)warmStart
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMIFaceprinter_warmStart__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  if (warmStart_onceToken != -1)
  {
    dispatch_once(&warmStart_onceToken, block);
  }
}

void __27__HMIFaceprinter_warmStart__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_22D12F000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Warm starting faceprint model...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = HMIDispatchQueueNameString(*(a1 + 32), @"warm_start_faceprint_model");
  v7 = [v6 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMIFaceprinter_warmStart__block_invoke_177;
  block[3] = &unk_278752868;
  block[4] = *(a1 + 32);
  dispatch_async(v9, block);
}

void __27__HMIFaceprinter_warmStart__block_invoke_177(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [HMIVisionUtilities createPixelBufferWithSize:1111970369 pixelFormat:1 useIOSurface:128.0, 128.0];
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 32);
    v22 = 0;
    v6 = [v5 createFaceprintForFacePixelBuffer:v4 fastMode:1 error:&v22];
    v7 = v22;
    CVPixelBufferRelease(v4);
    if (v6)
    {
      v8 = [MEMORY[0x277CBEAA8] date];
      [v8 timeIntervalSinceDate:v2];
      v10 = v9;

      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v14;
        v25 = 2048;
        v26 = v10;
        v15 = "%{public}@Warm start of faceprint model took: %f";
        v16 = v13;
        v17 = OS_LOG_TYPE_DEBUG;
LABEL_10:
        _os_log_impl(&dword_22D12F000, v16, v17, v15, buf, 0x16u);
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v14;
        v25 = 2112;
        v26 = v7;
        v15 = "%{public}@Failed to warm start faceprint model: %@";
        v16 = v13;
        v17 = OS_LOG_TYPE_ERROR;
        goto LABEL_10;
      }
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_12;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 32);
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v21;
    _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to create pixel buffer when warm starting faceprint model", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
LABEL_12:
}

- (id)createFaceprintForFacePixelBuffer:(__CVBuffer *)buffer fastMode:(BOOL)mode error:(id *)error
{
  modeCopy = mode;
  v41[1] = *MEMORY[0x277D85DE8];
  v9 = objc_alloc(MEMORY[0x277CE2D50]);
  v10 = +[HMIVisionSession sharedInstance];
  vnSession = [v10 vnSession];
  v35 = [v9 initWithCVPixelBuffer:buffer options:MEMORY[0x277CBEC10] session:vnSession];

  v12 = objc_alloc_init(MEMORY[0x277CE2C48]);
  v13 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:2 unalignedBoundingBox:0.0 alignedBoundingBox:{0.0, 1.0, 1.0, 0.0, 0.0, 1.0, 1.0}];
  v41[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];

  [v12 setInputFaceObservations:v14];
  v39 = 0;
  LOBYTE(v13) = [v12 setRevision:+[HMIFaceUtilities faceprintDefaultRevision](HMIFaceUtilities error:{"faceprintDefaultRevision"), &v39}];
  v15 = v39;
  if (v13)
  {
    v16 = objc_alloc_init(MEMORY[0x277CE2C08]);
    [v16 setInputFaceObservations:v14];
    v38 = v15;
    v17 = [v16 setRevision:+[HMIFaceUtilities faceprintAttributeDefaultRevision](HMIFaceUtilities error:{"faceprintAttributeDefaultRevision"), &v38}];
    v18 = v38;

    if (v17)
    {
      if (modeCopy)
      {
        [v12 setDetectionLevel:2];
        [v16 setDetectionLevel:2];
      }

      v37 = [[HMISignpost alloc] initWithName:@"CreateFaceprint"];
      v40[0] = v12;
      v40[1] = v16;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
      v36 = v18;
      v20 = [v35 performRequests:v19 error:&v36];
      v15 = v36;

      if (v20)
      {
        results = [v12 results];
        firstObject = [results firstObject];

        results2 = [v16 results];
        firstObject2 = [results2 firstObject];

        v25 = 0;
        if (firstObject && firstObject2)
        {
          faceprint = [firstObject faceprint];
          [firstObject2 setFaceprint:faceprint];

          v25 = firstObject2;
        }
      }

      else
      {
        v32 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1025 underlyingError:v15];
        firstObject = v32;
        if (error)
        {
          v33 = v32;
          *error = firstObject;
        }

        HMIErrorLog(self, firstObject);
        v25 = 0;
      }

      __HMISignpostScopeLeave(&v37);
    }

    else
    {
      v29 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1025 underlyingError:v18];
      v30 = v29;
      if (error)
      {
        v31 = v29;
        *error = v30;
      }

      HMIErrorLog(self, v30);

      v25 = 0;
      v15 = v18;
    }
  }

  else
  {
    v27 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1025 underlyingError:v15];
    v16 = v27;
    if (error)
    {
      v28 = v27;
      *error = v16;
    }

    HMIErrorLog(self, v16);
    v25 = 0;
  }

  return v25;
}

+ (__CVBuffer)createFacePixelBufferForFaceDetection:(id)detection pixelBuffer:(__CVBuffer *)buffer roll:(id)roll error:(id *)error
{
  v95 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  rollCopy = roll;
  Size = HMICVPixelBufferGetSize(buffer);
  v13 = v12;
  [detectionCopy unalignedBoundingBox];
  HMICGRectFlipCoordinateSpaceNormalized(v14, v15, v16, v17);
  HMICGRectSquareNormalized(v18, v19, v20, v21, Size, v13);
  v26 = HMIExpandFaceRect(v22, v23, v24, v25, 1.76470578);
  HMICGRectPixelFromNormalized(v26, v27, v28, v29, Size, v13);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [rollCopy floatValue];
  v80 = v37;
  v81 = v35;
  if (fabsf(v38) <= 0.175)
  {

    v44 = v37;
    v43 = v35;
    v42 = v33;
    v41 = v31;
    rollCopy = &unk_284075888;
  }

  else
  {
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    v41 = HMICGRectExpandWithinLimit(v31, v33, v35, v37, Width, Height, 1.4142);
  }

  v96 = CGRectIntegral(*&v41);
  x = v96.origin.x;
  y = v96.origin.y;
  v47 = v96.size.width;
  v48 = v96.size.height;
  v49 = objc_autoreleasePoolPush();
  selfCopy = self;
  v51 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    v52 = HMFGetLogIdentifier();
    v97.origin.x = x;
    v97.origin.y = y;
    v97.size.width = v47;
    v97.size.height = v48;
    NSStringFromRect(v97);
    v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [rollCopy floatValue];
    *buf = 138544386;
    v86 = v52;
    v87 = 2112;
    v88 = v53;
    v89 = 2048;
    v90 = Size;
    v91 = 2048;
    v92 = v13;
    v93 = 2048;
    v94 = v54 * 57.2957795;
    _os_log_impl(&dword_22D12F000, v51, OS_LOG_TYPE_DEBUG, "%{public}@Cropping face %@ from pixel buffer with dimensions: %.1f x %.1f roll: %.02f degrees", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v49);
  v55 = v47 < 256.0;
  v56 = v48 < 256.0;
  if (v55 && v56)
  {
    v57 = v47;
  }

  else
  {
    v57 = 256.0;
  }

  if (v55 && v56)
  {
    v58 = v48;
  }

  else
  {
    v58 = 256.0;
  }

  v84 = 0;
  v59 = [HMIVisionUtilities transferPixelBuffer:buffer crop:1111970369 size:8 pixelFormat:&v84 options:x error:y, v47, v48, v57, v58];
  v60 = COERCE_DOUBLE(v84);
  if (v59)
  {
    v61 = v31 - x;
    v63 = v80;
    v62 = v81;
    HMICGRectTransferToNewCoordinate(v31, v33, v81, v80, v57, v58, v61);
    [rollCopy floatValue];
    v83 = v60;
    v64 = [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:rotationAngle:crop:size:precision:error:" rotationAngle:v59 crop:0 size:&v83 precision:? error:?];
    v65 = COERCE_DOUBLE(*&v83);

    CVPixelBufferRelease(v59);
    v66 = objc_autoreleasePoolPush();
    v67 = selfCopy;
    v68 = HMFGetOSLogHandle();
    v69 = v68;
    if (v64)
    {
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        v70 = HMFGetLogIdentifier();
        [rollCopy floatValue];
        *buf = 138543618;
        v86 = v70;
        v87 = 2048;
        v88 = v71 * 57.2957795;
        _os_log_impl(&dword_22D12F000, v69, OS_LOG_TYPE_DEBUG, "%{public}@Face was rotated by:%.02f degrees", buf, 0x16u);
      }

LABEL_26:

      objc_autoreleasePoolPop(v66);
      goto LABEL_27;
    }

    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v76 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v76;
      v87 = 2112;
      v88 = v65;
      _os_log_impl(&dword_22D12F000, v69, OS_LOG_TYPE_ERROR, "%{public}@Error in rotating the face %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v66);
    v60 = v65;
  }

  else
  {
    v72 = objc_autoreleasePoolPush();
    v73 = selfCopy;
    v74 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v75 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v75;
      v87 = 2112;
      v88 = v60;
      _os_log_impl(&dword_22D12F000, v74, OS_LOG_TYPE_ERROR, "%{public}@Error pixel buffer type conversion %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v72);
    v63 = v80;
    v62 = v81;
  }

  v82 = v60;
  v64 = [HMIVisionUtilities transferPixelBuffer:buffer crop:1111970369 size:8 pixelFormat:&v82 options:v31 error:v33, v62, v63, 128.0, 128.0];
  v65 = COERCE_DOUBLE(*&v82);

  if (!v64)
  {
    v66 = objc_autoreleasePoolPush();
    v77 = selfCopy;
    v69 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v78 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v78;
      v87 = 2112;
      v88 = v65;
      _os_log_impl(&dword_22D12F000, v69, OS_LOG_TYPE_ERROR, "%{public}@HMIPrivateErrorCodeCropAndResizeFailed %@", buf, 0x16u);
    }

    v64 = 0;
    goto LABEL_26;
  }

LABEL_27:

  return v64;
}

+ (__CVBuffer)createFacePixelBufferForFaceEvent:(id)event pixelBuffer:(__CVBuffer *)buffer roll:(id)roll error:(id *)error
{
  rollCopy = roll;
  [event boundingBox];
  HMICGRectFlipCoordinateSpaceNormalized(v10, v11, v12, v13);
  v18 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:2 unalignedBoundingBox:v14 alignedBoundingBox:{v15, v16, v17, v14, v15, v16, v17}];
  v19 = [HMIFaceprinter createFacePixelBufferForFaceDetection:v18 pixelBuffer:buffer roll:rollCopy error:error];

  return v19;
}

- (__CVBuffer)createFacePixelBufferFromFaceCrop:(id)crop error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  cropCopy = crop;
  dataRepresentation = [cropCopy dataRepresentation];
  v8 = [HMIVisionUtilities createPixelBufferFromJPEGData:dataRepresentation error:error];

  if (v8)
  {
    [cropCopy faceBoundingBox];
    y = 0.0;
    v64.origin.x = 0.0;
    v64.origin.y = 0.0;
    v64.size.width = 1.0;
    v64.size.height = 1.0;
    if (CGRectEqualToRect(v60, v64))
    {
      Width = CVPixelBufferGetWidth(v8);
      Height = CVPixelBufferGetHeight(v8);
      x = 0.0;
    }

    else
    {
      Size = HMICVPixelBufferGetSize(v8);
      v16 = v15;
      [cropCopy faceBoundingBox];
      HMICGRectSquareNormalized(v17, v18, v19, v20, Size, v16);
      v25 = HMIExpandFaceRect(v21, v22, v23, v24, 1.76470578);
      HMICGRectPixelFromNormalized(v25, v26, v27, v28, Size, v16);
      v62 = CGRectIntegral(v61);
      x = v62.origin.x;
      y = v62.origin.y;
      Width = v62.size.width;
      Height = v62.size.height;
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v63.origin.x = x;
        v63.origin.y = y;
        v63.size.width = Width;
        v63.size.height = Height;
        v33 = NSStringFromRect(v63);
        *buf = 138544130;
        v52 = v32;
        v53 = 2112;
        v54 = v33;
        v55 = 2048;
        v56 = Size;
        v57 = 2048;
        v58 = v16;
        _os_log_impl(&dword_22D12F000, v31, OS_LOG_TYPE_INFO, "%{public}@Cropping face %@ from face crop with dimensions %.1f x %.1f", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v29);
    }

    v34 = Width < 256.0;
    v35 = Height < 256.0;
    if (v34 && v35)
    {
      v36 = Height;
    }

    else
    {
      v36 = 256.0;
    }

    if (v34 && v35)
    {
      v37 = Width;
    }

    else
    {
      v37 = 256.0;
    }

    v50 = 0;
    v38 = [HMIVisionUtilities transferPixelBuffer:v8 crop:1111970369 size:0 pixelFormat:&v50 options:x error:y, Width, Height, v37, v36];
    v39 = v50;
    CVPixelBufferRelease(v8);
    if (v38)
    {
      v40 = HMICGRectTransferToNewCoordinate(x, y, Width, Height, v37, v36, 0.0);
      v49 = v39;
      v13 = [HMIVisionUtilities transferPixelBuffer:v38 rotationAngle:1 crop:&v49 size:0.0 precision:v40 error:v41, v42, v43, 128.0, 128.0];
      v44 = v49;

      CVBufferRelease(v38);
      v39 = v44;
    }

    else
    {
      v45 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1021 underlyingError:v39];
      v46 = v45;
      if (error)
      {
        v47 = v45;
        *error = v46;
      }

      HMIErrorLog(self, v46);

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)generateFaceprintForFaceCrop:(id)crop error:(id *)error
{
  v6 = [(HMIFaceprinter *)self createFacePixelBufferFromFaceCrop:crop error:?];
  if (v6)
  {
    v7 = v6;
    v8 = [(HMIFaceprinter *)self createFaceprintForFacePixelBuffer:v6 fastMode:0 error:error];
    CVBufferRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)updatedFaceprintsForFaceCrops:(id)crops withExistingFaceprints:(id)faceprints error:(id *)error
{
  v97 = *MEMORY[0x277D85DE8];
  cropsCopy = crops;
  faceprintsCopy = faceprints;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = faceprintsCopy;
  v9 = [obj countByEnumeratingWithState:&v85 objects:v96 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v86;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v86 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v85 + 1) + 8 * i);
        faceCropUUID = [v13 faceCropUUID];
        v15 = [dictionary objectForKey:faceCropUUID];

        if (!v15)
        {
          v15 = [MEMORY[0x277CBEB58] set];
        }

        [v15 addObject:v13];
        faceCropUUID2 = [v13 faceCropUUID];
        [dictionary setObject:v15 forKeyedSubscript:faceCropUUID2];
      }

      v10 = [obj countByEnumeratingWithState:&v85 objects:v96 count:16];
    }

    while (v10);
  }

  v70 = [MEMORY[0x277CBEB58] set];
  v73 = [MEMORY[0x277CBEB58] set];
  v68 = [MEMORY[0x277CBEB58] set];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v76 = cropsCopy;
  v17 = [v76 countByEnumeratingWithState:&v81 objects:v95 count:16];
  selfCopy2 = self;
  if (v17)
  {
    v20 = v17;
    v21 = *v82;
    v69 = *MEMORY[0x277CE2ED0];
    *&v18 = 138543362;
    v66 = v18;
    v75 = *v82;
    v78 = dictionary;
    do
    {
      v22 = 0;
      v74 = v20;
      do
      {
        if (*v82 != v21)
        {
          objc_enumerationMutation(v76);
        }

        v23 = *(*(&v81 + 1) + 8 * v22);
        uUID = [v23 UUID];
        v25 = [dictionary objectForKey:uUID];

        if (v25)
        {
          v26 = [v25 na_firstObjectPassingTest:&__block_literal_global_15];
          v27 = objc_autoreleasePoolPush();
          v28 = selfCopy2;
          v29 = HMFGetOSLogHandle();
          v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
          if (v26)
          {
            if (v30)
            {
              HMFGetLogIdentifier();
              v71 = v26;
              v31 = v20;
              v32 = v21;
              v33 = selfCopy2;
              v35 = v34 = v25;
              *buf = 138543618;
              v90 = v35;
              v91 = 2112;
              v92 = v23;
              _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_INFO, "%{public}@Using existing faceprint for face crop:%@", buf, 0x16u);

              v25 = v34;
              selfCopy2 = v33;
              v21 = v32;
              v20 = v31;
              v26 = v71;
            }

            objc_autoreleasePoolPop(v27);
            [v73 addObject:v26];
            dictionary = v78;
            goto LABEL_36;
          }

          if (v30)
          {
            HMFGetLogIdentifier();
            v37 = v36 = v25;
            v38 = [v36 count];
            *buf = 138543874;
            v90 = v37;
            v91 = 2048;
            v92 = v38;
            v93 = 2112;
            v94 = v23;
            _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_INFO, "%{public}@%lu faceprint(s) exist for face crop:%@ but are not the current version", buf, 0x20u);

            v25 = v36;
          }

          objc_autoreleasePoolPop(v27);
          [v68 unionSet:v25];
        }

        v79 = v25;
        v39 = objc_autoreleasePoolPush();
        v40 = selfCopy2;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v90 = v42;
          v91 = 2112;
          v92 = v23;
          _os_log_impl(&dword_22D12F000, v41, OS_LOG_TYPE_INFO, "%{public}@Faceprinting face crop:%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v39);
        v80 = 0;
        v43 = [(HMIFaceprinter *)v40 generateFaceprintForFaceCrop:v23 error:&v80];
        v26 = v80;
        if (v43)
        {
          faceAttributes = [v43 faceAttributes];
          facemaskCategory = [faceAttributes facemaskCategory];

          label = [facemaskCategory label];
          identifier = [label identifier];
          v48 = [identifier isEqualToString:v69];

          if (v48)
          {
            v49 = objc_autoreleasePoolPush();
            v50 = v40;
            v51 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v52 = HMFGetLogIdentifier();
              *buf = v66;
              v90 = v52;
              _os_log_impl(&dword_22D12F000, v51, OS_LOG_TYPE_INFO, "%{public}@Face crop has a facemask, creating sentinel faceprint", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v49);
            uUID2 = [MEMORY[0x277CCAD78] UUID];
            faceprint = +[HMIFaceprinter currentModelUUID];
            uUID3 = [v23 UUID];
            v56 = [HMIFaceprint sentinelFaceprintWithUUID:uUID2 modelUUID:faceprint faceCropUUID:uUID3];
          }

          else
          {
            v72 = [HMIFaceprint alloc];
            uUID2 = [MEMORY[0x277CCAD78] UUID];
            faceprint = [v43 faceprint];
            uUID3 = [faceprint descriptorData];
            v61 = +[HMIFaceprinter currentModelUUID];
            [v23 UUID];
            v63 = v62 = facemaskCategory;
            v56 = [(HMIFaceprint *)v72 initWithUUID:uUID2 data:uUID3 modelUUID:v61 faceCropUUID:v63];

            facemaskCategory = v62;
            selfCopy2 = self;
          }

          [v70 addObject:v56];
          dictionary = v78;
          v20 = v74;
          v21 = v75;
        }

        else
        {
          v57 = objc_autoreleasePoolPush();
          v58 = v40;
          v59 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v60 = HMFGetLogIdentifier();
            *buf = 138543618;
            v90 = v60;
            v91 = 2112;
            v92 = v26;
            _os_log_impl(&dword_22D12F000, v59, OS_LOG_TYPE_ERROR, "%{public}@Skipping crop, encountered error faceprinting: %@", buf, 0x16u);

            v21 = v75;
          }

          objc_autoreleasePoolPop(v57);
          dictionary = v78;
        }

        v25 = v79;
LABEL_36:

        ++v22;
      }

      while (v20 != v22);
      v20 = [v76 countByEnumeratingWithState:&v81 objects:v95 count:16];
    }

    while (v20);
  }

  v64 = [[HMIUpdatedFaceprintsResult alloc] initWithExistingAtCurrentVersion:v73 createdAtCurrentVersion:v70 existingAtOtherVersions:v68];

  return v64;
}

uint64_t __77__HMIFaceprinter_updatedFaceprintsForFaceCrops_withExistingFaceprints_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 modelUUID];
  v3 = +[HMIFaceprinter currentModelUUID];
  v4 = [v2 isEqual:v3];

  return v4;
}

+ (int64_t)_minorVersionFromVisionVersion:(int)version
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138544386;
    v11 = v8;
    v12 = 1024;
    v13 = version >> 16;
    v14 = 1024;
    v15 = BYTE1(version);
    v16 = 1024;
    versionCopy = version;
    v18 = 1024;
    versionCopy2 = version;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Vision run-time version: %d.%02d.%02d (%d)", &v10, 0x24u);
  }

  objc_autoreleasePoolPop(v5);
  return version;
}

@end