@interface HMDCameraClipImportMetadata
- (id)initClipData:(id)a3;
@end

@implementation HMDCameraClipImportMetadata

- (id)initClipData:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = HMDCameraClipImportMetadata;
  v5 = [(HMDCameraClipImportMetadata *)&v44 init];
  if (!v5)
  {
LABEL_27:
    v37 = v5;
    goto LABEL_28;
  }

  v6 = [v4 hmf_stringForKey:@"startDate"];
  if (!v6)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v5;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v24;
      v47 = 2112;
      v48 = v4;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not find start date string in clip data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    goto LABEL_22;
  }

  v7 = v6;
  v8 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v9 = [v8 dateFromString:v7];
  if (!v9)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v5;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v28;
      v47 = 2112;
      v48 = v7;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not parse start date from string: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    goto LABEL_21;
  }

  v10 = v9;
  v11 = [v4 hmf_numberForKey:@"targetFragmentDuration"];
  if (!v11)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v5;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v32;
      v47 = 2112;
      v48 = v4;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not find target fragment duration in clip data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    goto LABEL_20;
  }

  v12 = v11;
  v13 = [v4 hmf_arrayForKey:@"posterFrames"];
  if (!v13)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v5;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v36;
      v47 = 2112;
      v48 = v4;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not find poster frames in clip data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v14 = v13;
  v15 = [v4 hmf_arrayForKey:@"fragments"];
  if (v15)
  {
    objc_storeStrong(&v5->_startDate, v10);
    [v12 doubleValue];
    v5->_targetFragmentDuration = v16;
    v17 = [v14 na_map:&__block_literal_global_131_154600];
    posterFrames = v5->_posterFrames;
    v5->_posterFrames = v17;

    v19 = [v15 na_map:&__block_literal_global_135];
    videoSegments = v5->_videoSegments;
    v5->_videoSegments = v19;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v38 = v5;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v42;
      v47 = 2112;
      v48 = v4;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Could not find video fragments in clip data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(context);
  }

  if (v15)
  {
    goto LABEL_27;
  }

LABEL_22:
  v37 = 0;
LABEL_28:

  v40 = *MEMORY[0x277D85DE8];
  return v37;
}

HMDCameraClipImportVideoSegmentMetadata *__44__HMDCameraClipImportMetadata_initClipData___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDCameraClipImportVideoSegmentMetadata alloc] initWithVideoSegmentMetadata:v2];

  return v3;
}

HMDCameraClipImportPosterFrameMetadata *__44__HMDCameraClipImportMetadata_initClipData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDCameraClipImportPosterFrameMetadata alloc] initWithPosterFrameMetadata:v2];

  return v3;
}

@end