@interface SZExtractor(HMFDigest)
+ (id)optionsForArchiveURL:()HMFDigest digest:fileManager:;
@end

@implementation SZExtractor(HMFDigest)

+ (id)optionsForArchiveURL:()HMFDigest digest:fileManager:
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 algorithm] - 2;
  if (v11 < 7 && ((0x79u >> v11) & 1) != 0)
  {
    v12 = **(&unk_27972BFF8 + v11);
    path = [v8 path];
    v37 = 0;
    v14 = [v10 attributesOfItemAtPath:path error:&v37];
    v15 = v37;

    if (v14)
    {
      v16 = *MEMORY[0x277D6A768];
      v40[0] = v12;
      v17 = *MEMORY[0x277D6A778];
      v39[0] = v16;
      v39[1] = v17;
      value = [v9 value];
      hmf_hexadecimalRepresentation = [value hmf_hexadecimalRepresentation];
      v38 = hmf_hexadecimalRepresentation;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      v40[1] = v19;
      v39[2] = *MEMORY[0x277D6A770];
      [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v14, "fileSize")}];
      v20 = v14;
      v21 = v12;
      v23 = v22 = v15;
      v39[3] = *MEMORY[0x277D6A760];
      v40[2] = v23;
      v40[3] = MEMORY[0x277CBEC38];
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];

      v15 = v22;
      v12 = v21;
      v14 = v20;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v33;
        v43 = 2112;
        v44 = v15;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to get file size with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v24 = 0;
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      [v9 algorithm];
      v29 = HMFDigestAlgorithmToString();
      *buf = 138543618;
      v42 = v28;
      v43 = 2112;
      v44 = v29;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Invalid digest algorithm: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v24;
}

@end