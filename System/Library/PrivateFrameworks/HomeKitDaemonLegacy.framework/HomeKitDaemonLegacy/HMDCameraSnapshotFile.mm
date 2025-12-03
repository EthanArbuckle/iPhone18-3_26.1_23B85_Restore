@interface HMDCameraSnapshotFile
+ (id)logCategory;
+ (id)snapshotFileCopiedFromFilePath:(id)path toDirectory:(id)directory dateCaptured:(id)captured error:(id *)error;
+ (id)unmanagedSnapshotFileWithFilePath:(id)path dateCaptured:(id)captured error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HMDCameraSnapshotFile)initWithDirectory:(id)directory idsData:(id)data error:(id *)error;
- (HMDCameraSnapshotFile)initWithDirectory:(id)directory imageData:(id)data videoResolution:(id)resolution dateCaptured:(id)captured error:(id *)error;
- (HMDCameraSnapshotFile)initWithDirectory:(id)directory imageData:(id)data videoResolution:(id)resolution error:(id *)error;
- (HMDCameraSnapshotFile)initWithDirectory:(id)directory snapshot:(id)snapshot error:(id *)error;
- (HMDCameraSnapshotFile)initWithFilePath:(id)path dateCaptured:(id)captured aspectRatio:(double)ratio;
- (HMDCameraSnapshotFile)initWithFilePath:(id)path dateCaptured:(id)captured error:(id *)error;
- (NSData)idsData;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation HMDCameraSnapshotFile

- (unint64_t)hash
{
  filePath = [(HMDCameraSnapshotFile *)self filePath];
  v3 = [filePath hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    filePath = [(HMDCameraSnapshotFile *)self filePath];
    filePath2 = [v6 filePath];
    if ([filePath isEqualToString:filePath2])
    {
      dateCaptured = [(HMDCameraSnapshotFile *)self dateCaptured];
      dateCaptured2 = [v6 dateCaptured];
      if ([dateCaptured isEqualToDate:dateCaptured2] && (-[HMDCameraSnapshotFile aspectRatio](self, "aspectRatio"), v12 = v11, objc_msgSend(v6, "aspectRatio"), v12 == v13))
      {
        slotIdentifier = [(HMDCameraSnapshotFile *)self slotIdentifier];
        slotIdentifier2 = [v6 slotIdentifier];
        v16 = HMFEqualObjects();
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NSData)idsData
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEA90];
  filePath = [(HMDCameraSnapshotFile *)self filePath];
  v17 = 0;
  v5 = [v3 dataWithContentsOfFile:filePath options:2 error:&v17];
  v6 = v17;

  if (v5)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    dateCaptured = [(HMDCameraSnapshotFile *)self dateCaptured];
    [v7 setObject:dateCaptured forKeyedSubscript:@"timestamp"];

    [v7 setObject:v5 forKeyedSubscript:@"imageData"];
    v9 = encodeRootObject();
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      filePath2 = [(HMDCameraSnapshotFile *)selfCopy filePath];
      *buf = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = filePath2;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to get snapshot data from file at path %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  filePath = [(HMDCameraSnapshotFile *)self filePath];
  v5 = [v3 initWithName:@"File Path" value:filePath];
  v19[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  dateCaptured = [(HMDCameraSnapshotFile *)self dateCaptured];
  v8 = [v6 initWithName:@"Date Captured" value:dateCaptured];
  v19[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCABB0];
  [(HMDCameraSnapshotFile *)self aspectRatio];
  v11 = [v10 numberWithDouble:?];
  v12 = [v9 initWithName:@"Aspect Ratio" value:v11];
  v19[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  slotIdentifier = [(HMDCameraSnapshotFile *)self slotIdentifier];
  v15 = [v13 initWithName:@"Slot" value:slotIdentifier];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)dealloc
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMDCameraSnapshotFile", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  slotIdentifier = [(HMDCameraSnapshotFile *)selfCopy slotIdentifier];

  if (slotIdentifier)
  {
    v8 = +[HMDCameraSnapshotSlotManager sharedManager];
    slotIdentifier2 = [(HMDCameraSnapshotFile *)selfCopy slotIdentifier];
    [v8 deleteSlotWithIdentifier:slotIdentifier2];
  }

  if (![(HMDCameraSnapshotFile *)selfCopy isUnmanaged])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    filePath = [(HMDCameraSnapshotFile *)selfCopy filePath];
    v12 = [defaultManager fileExistsAtPath:filePath];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        filePath2 = [(HMDCameraSnapshotFile *)v14 filePath];
        *buf = 138543618;
        v31 = v16;
        v32 = 2112;
        v33 = filePath2;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Deleting snapshot file at %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      filePath3 = [(HMDCameraSnapshotFile *)v14 filePath];
      v29 = 0;
      v20 = [defaultManager2 removeItemAtPath:filePath3 error:&v29];
      v21 = v29;

      if ((v20 & 1) == 0)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v14;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          filePath4 = [(HMDCameraSnapshotFile *)v23 filePath];
          *buf = 138543874;
          v31 = v25;
          v32 = 2112;
          v33 = filePath4;
          v34 = 2112;
          v35 = v21;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete snapshot file at %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v22);
      }
    }
  }

  v28.receiver = selfCopy;
  v28.super_class = HMDCameraSnapshotFile;
  [(HMDCameraSnapshotFile *)&v28 dealloc];
  v27 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotFile)initWithDirectory:(id)directory idsData:(id)data error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  dataCopy = data;
  if (!directoryCopy)
  {
    _HMFPreconditionFailure();
LABEL_31:
    _HMFPreconditionFailure();
  }

  v10 = dataCopy;
  if (!dataCopy)
  {
    goto LABEL_31;
  }

  v11 = MEMORY[0x277CCAAC8];
  v12 = getIDSSessionOptionsAllowedClasses();
  v40 = 0;
  v13 = [v11 unarchivedObjectOfClasses:v12 fromData:v10 error:&v40];
  v14 = v40;

  if (v13)
  {
    v15 = v13;
    objc_opt_class();
    v16 = objc_opt_isKindOfClass() & 1;
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v39 = v17;

    if (v16)
    {
      v18 = [v15 objectForKeyedSubscript:@"timestamp"];
      v19 = [v15 objectForKeyedSubscript:@"imageData"];
      v20 = v19;
      if (v18 && v19)
      {
        selfCopy3 = [(HMDCameraSnapshotFile *)self initWithDirectory:directoryCopy imageData:v19 videoResolution:0 dateCaptured:v18 error:error];
        v22 = selfCopy3;
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v34 = v38 = v32;
          *buf = 138543874;
          v42 = v34;
          v43 = 2112;
          v44 = v18;
          v45 = 2112;
          v46 = v20;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create snapshot file from IDS data: either date captured %@ or image data %@ is missing", buf, 0x20u);

          v32 = v38;
        }

        objc_autoreleasePoolPop(v32);
        if (error)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          *error = v22 = 0;
        }

        else
        {
          v22 = 0;
        }
      }

      v35 = v39;
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = objc_opt_class();
        *buf = 138543874;
        v42 = v29;
        v43 = 2112;
        v44 = v15;
        v45 = 2112;
        v46 = v30;
        v31 = v30;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to create snapshot file from IDS data: decoded object is not a dictionary: %@ (%@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        *error = v22 = 0;
      }

      else
      {
        v22 = 0;
      }

      v35 = v39;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v25;
      v43 = 2112;
      v44 = v14;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create snapshot file from IDS data: failed to unarchive allowed IDS session options from relay data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    if (error)
    {
      v26 = v14;
      v22 = 0;
      *error = v14;
    }

    else
    {
      v22 = 0;
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return v22;
}

- (HMDCameraSnapshotFile)initWithFilePath:(id)path dateCaptured:(id)captured error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  capturedCopy = captured;
  if (!pathCopy)
  {
    _HMFPreconditionFailure();
LABEL_19:
    _HMFPreconditionFailure();
  }

  v10 = capturedCopy;
  if (!capturedCopy)
  {
    goto LABEL_19;
  }

  v25 = 0;
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy options:2 error:&v25];
  v12 = v25;
  if (v11)
  {
    v13 = HMDCameraAspectRatioForImageData(v11);
    v14 = v13;
    if (v13)
    {
      [v13 doubleValue];
      self = [(HMDCameraSnapshotFile *)self initWithFilePath:pathCopy dateCaptured:v10 aspectRatio:?];
      selfCopy = self;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v22;
        v28 = 2112;
        v29 = pathCopy;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Failed to find aspect ratio for snapshot file at path: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        *error = selfCopy = 0;
      }

      else
      {
        selfCopy = 0;
      }
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    self = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v18;
      v28 = 2112;
      v29 = pathCopy;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to read snapshot data from file at path %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    if (error)
    {
      v19 = v12;
      selfCopy = 0;
      *error = v12;
    }

    else
    {
      selfCopy = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HMDCameraSnapshotFile)initWithDirectory:(id)directory imageData:(id)data videoResolution:(id)resolution dateCaptured:(id)captured error:(id *)error
{
  v110 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  dataCopy = data;
  resolutionCopy = resolution;
  capturedCopy = captured;
  v101 = directoryCopy;
  if (!directoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_63;
  }

  if (!dataCopy)
  {
LABEL_63:
    _HMFPreconditionFailure();
LABEL_64:
    _HMFPreconditionFailure();
  }

  v16 = capturedCopy;
  if (!capturedCopy)
  {
    goto LABEL_64;
  }

  v17 = MEMORY[0x277CCACA8];
  hmd_snapshotFileName = [capturedCopy hmd_snapshotFileName];
  v19 = [v17 stringWithFormat:@"%@/%@", directoryCopy, hmd_snapshotFileName];

  if (resolutionCopy)
  {
    v20 = dataCopy;
    v21 = resolutionCopy;
    v22 = CGImageSourceCreateWithData(v20, 0);
    if (v22)
    {
      v23 = v22;
      selfCopy = self;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v22, 0, 0);
      CFRelease(v23);
      if (ImageAtIndex)
      {
        errorCopy = error;
        Width = CGImageGetWidth(ImageAtIndex);
        image = ImageAtIndex;
        Height = CGImageGetHeight(ImageAtIndex);
        v27 = objc_autoreleasePoolPush();
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v30 = v29 = v21;
          *buf = 138543874;
          v103 = v30;
          v104 = 2048;
          v105 = *&Width;
          v106 = 2048;
          v107 = *&Height;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Image has width: %lu, height: %lu", buf, 0x20u);

          v21 = v29;
        }

        objc_autoreleasePoolPop(v27);
        height = [MEMORY[0x277CCABB0] numberWithDouble:Width / Height];
        v31 = height;
        [v21 imageWidth];
        v33 = v32 = v21;
        unsignedIntegerValue = [v33 unsignedIntegerValue];

        v96 = v32;
        imageHeight = [v32 imageHeight];
        unsignedIntegerValue2 = [imageHeight unsignedIntegerValue];

        if (Height == unsignedIntegerValue2 && Width == unsignedIntegerValue || Width == unsignedIntegerValue2 && Height == unsignedIntegerValue)
        {
          v37 = objc_autoreleasePoolPush();
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543362;
            v103 = v39;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Given image data matches the expected resolution", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v37);
          v40 = v20;
        }

        else
        {
          ColorSpace = CGImageGetColorSpace(image);
          if (ColorSpace)
          {
            v57 = ColorSpace;
            v58 = (unsignedIntegerValue2 * Width / Height);
            v59 = unsignedIntegerValue2;
            v60 = unsignedIntegerValue2;
            BitsPerComponent = CGImageGetBitsPerComponent(image);
            BytesPerRow = CGImageGetBytesPerRow(image);
            BitmapInfo = CGImageGetBitmapInfo(image);
            v64 = CGBitmapContextCreate(0, v58, v60, BitsPerComponent, BytesPerRow, v57, BitmapInfo);
            if (v64)
            {
              v65 = v64;
              v111.origin.x = 0.0;
              v111.origin.y = 0.0;
              v111.size.width = v58;
              v111.size.height = v59;
              CGContextDrawImage(v64, v111, image);
              v66 = CGBitmapContextCreateImage(v65);
              CGContextRelease(v65);
              if (v66)
              {
                v94 = objc_alloc_init(MEMORY[0x277CBEB28]);
                v67 = CGImageDestinationCreateWithData(v94, *MEMORY[0x277CC20C8], 1uLL, 0);
                v93 = v66;
                if (v67)
                {
                  v68 = v67;
                  CGImageDestinationAddImage(v67, v66, 0);
                  cf = v68;
                  v69 = CGImageDestinationFinalize(v68);
                  v70 = objc_autoreleasePoolPush();
                  v71 = HMFGetOSLogHandle();
                  v72 = v71;
                  if (v69)
                  {
                    v21 = v96;
                    error = errorCopy;
                    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                    {
                      v73 = HMFGetLogIdentifier();
                      v74 = [(__CFData *)v94 length];
                      *buf = 138544130;
                      v103 = v73;
                      v104 = 2048;
                      v105 = v58;
                      v106 = 2048;
                      v107 = v59;
                      v108 = 2048;
                      v109 = v74;
                      _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_INFO, "%{public}@Resized to JPEG image of width: %lf, height: %lf, byte count: %lu", buf, 0x2Au);
                    }

                    objc_autoreleasePoolPop(v70);
                    v40 = v94;
                  }

                  else
                  {
                    v21 = v96;
                    error = errorCopy;
                    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                    {
                      v91 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v103 = v91;
                      _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_ERROR, "%{public}@Failed to finalize destination", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v70);
                    v40 = 0;
                  }

                  v78 = image;
                  CFRelease(cf);
                  self = selfCopy;
                }

                else
                {
                  v88 = objc_autoreleasePoolPush();
                  v89 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                  {
                    v90 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v103 = v90;
                    _os_log_impl(&dword_2531F8000, v89, OS_LOG_TYPE_ERROR, "%{public}@Failed to create image destination", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v88);
                  v40 = 0;
                  v21 = v96;
                  error = errorCopy;
                  v78 = image;
                  self = selfCopy;
                }

                v52 = height;
                CFRelease(v93);

                goto LABEL_40;
              }
            }
          }

          v75 = objc_autoreleasePoolPush();
          v76 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            v77 = HMFGetLogIdentifier();
            *buf = 138543362;
            v103 = v77;
            _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_ERROR, "%{public}@Failed to create resized image", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v75);
          v40 = 0;
        }

        v21 = v96;
        error = errorCopy;
        v78 = image;
        self = selfCopy;
        v52 = height;
LABEL_40:
        CFRelease(v78);
        goto LABEL_41;
      }

      v53 = objc_autoreleasePoolPush();
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = HMFGetLogIdentifier();
        *buf = 138543362;
        v103 = v55;
        _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to create image", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v53);
      v52 = 0;
      v40 = 0;
      self = selfCopy;
    }

    else
    {
      selfCopy2 = self;
      v49 = objc_autoreleasePoolPush();
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = HMFGetLogIdentifier();
        *buf = 138543362;
        v103 = v51;
        _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Failed to create image source", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v49);
      v52 = 0;
      v40 = 0;
      self = selfCopy2;
    }

LABEL_41:

    v41 = v52;
    if (v40)
    {
      v79 = v40;
    }

    else
    {
      v79 = v20;
    }

    dataCopy = v79;

    if (v41)
    {
      goto LABEL_45;
    }

    goto LABEL_17;
  }

  v41 = HMDCameraAspectRatioForImageData(dataCopy);
  if (v41)
  {
LABEL_45:
    v80 = [HMDPersistentStore writeData:dataCopy toStorePath:v19 dataLabel:v19];
    if ([v80 unsignedIntegerValue])
    {
      [v41 doubleValue];
      selfCopy4 = [(HMDCameraSnapshotFile *)self initWithFilePath:v19 dateCaptured:v16 aspectRatio:?];
      v47 = selfCopy4;
    }

    else
    {
      errorCopy2 = error;
      v82 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v83 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v100 = v16;
        v85 = v84 = resolutionCopy;
        *buf = 138543618;
        v103 = v85;
        v104 = 2112;
        v105 = *&v19;
        _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_ERROR, "%{public}@Failed to write snapshot data to file at path: %@", buf, 0x16u);

        resolutionCopy = v84;
        v16 = v100;
      }

      objc_autoreleasePoolPop(v82);
      if (errorCopy2)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        *errorCopy2 = v47 = 0;
      }

      else
      {
        v47 = 0;
      }
    }

    goto LABEL_53;
  }

LABEL_17:
  v42 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v46 = v45 = error;
    *buf = 138543618;
    v103 = v46;
    v104 = 2112;
    v105 = *&v19;
    _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine aspect ratio for snapshot file at path: %@", buf, 0x16u);

    error = v45;
  }

  objc_autoreleasePoolPop(v42);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    *error = v47 = 0;
  }

  else
  {
    v47 = 0;
  }

LABEL_53:

  v86 = *MEMORY[0x277D85DE8];
  return v47;
}

- (HMDCameraSnapshotFile)initWithDirectory:(id)directory imageData:(id)data videoResolution:(id)resolution error:(id *)error
{
  directoryCopy = directory;
  dataCopy = data;
  resolutionCopy = resolution;
  if (directoryCopy)
  {
    if (dataCopy)
    {
      v13 = resolutionCopy;
      date = [MEMORY[0x277CBEAA8] date];
      v15 = [(HMDCameraSnapshotFile *)self initWithDirectory:directoryCopy imageData:dataCopy videoResolution:v13 dateCaptured:date error:error];

      return v15;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v17 = _HMFPreconditionFailure();
  return [(HMDCameraSnapshotFile *)v17 initWithDirectory:v18 snapshot:v19 error:v20, v21];
}

- (HMDCameraSnapshotFile)initWithDirectory:(id)directory snapshot:(id)snapshot error:(id *)error
{
  directoryCopy = directory;
  snapshotCopy = snapshot;
  if (directoryCopy)
  {
    v10 = snapshotCopy;
    if (snapshotCopy)
    {
      imageData = [snapshotCopy imageData];
      videoResolution = [v10 videoResolution];
      v13 = [(HMDCameraSnapshotFile *)self initWithDirectory:directoryCopy imageData:imageData videoResolution:videoResolution error:error];

      return v13;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v15 = _HMFPreconditionFailure();
  return [(HMDCameraSnapshotFile *)v15 initWithFilePath:v16 dateCaptured:v17 aspectRatio:v18, v19];
}

- (HMDCameraSnapshotFile)initWithFilePath:(id)path dateCaptured:(id)captured aspectRatio:(double)ratio
{
  pathCopy = path;
  capturedCopy = captured;
  if (!pathCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  v10 = capturedCopy;
  if (!capturedCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (ratio == 0.0)
  {
LABEL_9:
    v17 = _HMFPreconditionFailure();
    return +[(HMDCameraSnapshotFile *)v17];
  }

  v19.receiver = self;
  v19.super_class = HMDCameraSnapshotFile;
  v11 = [(HMDCameraSnapshotFile *)&v19 init];
  if (v11)
  {
    v12 = [pathCopy copy];
    filePath = v11->_filePath;
    v11->_filePath = v12;

    v14 = [v10 copy];
    dateCaptured = v11->_dateCaptured;
    v11->_dateCaptured = v14;

    v11->_aspectRatio = ratio;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t22_75976 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22_75976, &__block_literal_global_75977);
  }

  v3 = logCategory__hmf_once_v23_75978;

  return v3;
}

uint64_t __36__HMDCameraSnapshotFile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v23_75978;
  logCategory__hmf_once_v23_75978 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)snapshotFileCopiedFromFilePath:(id)path toDirectory:(id)directory dateCaptured:(id)captured error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  directoryCopy = directory;
  capturedCopy = captured;
  if (!pathCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!directoryCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
LABEL_16:
    _HMFPreconditionFailure();
  }

  v13 = capturedCopy;
  if (!capturedCopy)
  {
    goto LABEL_16;
  }

  v24 = 0;
  v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy options:2 error:&v24];
  v15 = v24;
  if (v14)
  {
    v16 = [[HMDCameraSnapshotFile alloc] initWithDirectory:directoryCopy imageData:v14 videoResolution:0 dateCaptured:v13 error:error];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v20;
      v27 = 2112;
      v28 = pathCopy;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to read snapshot data from file at path %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    if (error)
    {
      v21 = v15;
      v16 = 0;
      *error = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)unmanagedSnapshotFileWithFilePath:(id)path dateCaptured:(id)captured error:(id *)error
{
  pathCopy = path;
  capturedCopy = captured;
  if (!pathCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = capturedCopy;
  if (!capturedCopy)
  {
LABEL_7:
    v12 = _HMFPreconditionFailure();
    [(HMDAppleMediaAccessoriesStateManager *)v12 appleMediaAccessoriesStateMessenger:v13 didReceiveModelIdentifierRequestMessage:v14 withAccessoryIdentifier:v15, v16];
    return result;
  }

  v10 = [[HMDCameraSnapshotFile alloc] initWithFilePath:pathCopy dateCaptured:capturedCopy error:error];
  [(HMDCameraSnapshotFile *)v10 setUnmanaged:1];

  return v10;
}

@end