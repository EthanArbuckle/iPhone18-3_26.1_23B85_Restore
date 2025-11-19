@interface HMSoftwareUpdateDocumentation(Asset)
- (id)initWithAsset:()Asset;
@end

@implementation HMSoftwareUpdateDocumentation(Asset)

- (id)initWithAsset:()Asset
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 bundleURL];

  if (v5)
  {
    v75 = 0;
    v6 = [v4 fileManager];
    v7 = [v4 bundleURL];
    v8 = [v7 path];
    v9 = [v6 fileExistsAtPath:v8 isDirectory:&v75];

    if (v9)
    {
      if ((v75 & 1) != 0 || ![v4 extractionEnteredPassThrough])
      {
        v19 = 0;
      }

      else
      {
        v10 = objc_autoreleasePoolPush();
        v11 = a1;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v14 = [v4 bundleURL];
          *buf = 138543618;
          v77 = v13;
          v78 = 2112;
          v79 = v14;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Unarchiving the non-streamable asset: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        v15 = [v4 fileManager];
        v16 = [v4 bundleURL];
        v17 = [v4 bundleURL];
        v74 = 0;
        v18 = [v15 unzipItemAtURL:v16 toURL:v17 error:&v74];
        v19 = v74;

        if ((v18 & 1) == 0)
        {
          v20 = objc_autoreleasePoolPush();
          a1 = v11;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            v23 = [v4 bundleURL];
            *buf = 138543874;
            v77 = v22;
            v78 = 2112;
            v79 = v23;
            v80 = 2112;
            v81 = v19;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive contents of asset: %@ with error: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v20);
          goto LABEL_17;
        }
      }

      v30 = [v4 fileManager];
      v31 = [v4 bundleURL];
      v73 = v19;
      v32 = [v30 contentsOfDirectoryAtURL:v31 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:4 error:&v73];
      v33 = v73;

      if (![v32 count])
      {
        v43 = objc_autoreleasePoolPush();
        a1 = a1;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543618;
          v77 = v45;
          v78 = 2112;
          v79 = v33;
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@No release notes found. Error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
        v29 = 0;
        goto LABEL_46;
      }

      v34 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self.lastPathComponent MATCHES %@", @"(^[a-z]{2}(-|_)[A-Za-z0-9]+).txt"];
      v35 = [v32 filteredArrayUsingPredicate:v34];
      if (![v35 count])
      {
        v46 = objc_autoreleasePoolPush();
        a1 = a1;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138543362;
          v77 = v48;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@No valid release notes found.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v46);
        v29 = 0;
        goto LABEL_45;
      }

      v65 = v34;
      v36 = [MEMORY[0x277CBEAF8] currentLocale];
      v37 = [v36 languageCode];

      v38 = [MEMORY[0x277CBEAF8] currentLocale];
      v39 = [v38 localeIdentifier];

      v40 = [MEMORY[0x277CBEAF8] currentLocale];
      v41 = [v40 languageIdentifier];

      v63 = v39;
      if (v39 | v41)
      {
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __54__HMSoftwareUpdateDocumentation_Asset__initWithAsset___block_invoke;
        v70[3] = &unk_27972BEE0;
        v71 = v41;
        v72 = v39;
        v42 = [v35 na_firstObjectPassingTest:v70];
      }

      else
      {
        v42 = 0;
      }

      if (!v42 && v37)
      {
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __54__HMSoftwareUpdateDocumentation_Asset__initWithAsset___block_invoke_2;
        v68[3] = &unk_27972BF08;
        v69 = v37;
        v42 = [v35 na_firstObjectPassingTest:v68];
      }

      v62 = v41;
      v64 = v37;
      if (v42 || ([v35 na_firstObjectPassingTest:&__block_literal_global_120890], (v42 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v49 = [v4 testDocumentData];

        v50 = objc_alloc(MEMORY[0x277CD1D08]);
        if (v49)
        {
          v51 = [v4 testDocumentData];
          v67 = v33;
          v52 = &v67;
          v53 = [v50 initWithData:v51 error:&v67];
        }

        else
        {
          v51 = [v4 fileManager];
          v66 = v33;
          v52 = &v66;
          v53 = [v50 initWithURL:v42 fileManager:v51 error:&v66];
        }

        v54 = v53;
        v55 = *v52;

        if (v54)
        {
          a1 = [a1 initWithReleaseNotesSummary:0 releaseNotes:0 textReleaseNotes:v54 licenseAgreement:0 licenseAgreementVersion:0];

          v33 = v55;
          v29 = a1;
LABEL_44:

          v34 = v65;
LABEL_45:

LABEL_46:
          goto LABEL_47;
        }

        v33 = v55;
      }

      v56 = objc_autoreleasePoolPush();
      v57 = v4;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = HMFGetLogIdentifier();
        *buf = 138543874;
        v77 = v59;
        v78 = 2112;
        v79 = v42;
        v80 = 2112;
        v81 = v33;
        _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@Unable to load release note document, %@, with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v56);
      v29 = 0;
      goto LABEL_44;
    }

    v24 = objc_autoreleasePoolPush();
    a1 = a1;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v4 bundleURL];
      v28 = [v27 path];
      *buf = 138543618;
      v77 = v26;
      v78 = 2112;
      v79 = v28;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@No asset in path: %@", buf, 0x16u);

      goto LABEL_15;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    a1 = a1;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v77 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@The asset url is required", buf, 0xCu);
LABEL_15:
    }
  }

  objc_autoreleasePoolPop(v24);
LABEL_17:
  v29 = 0;
LABEL_47:

  v60 = *MEMORY[0x277D85DE8];
  return v29;
}

@end