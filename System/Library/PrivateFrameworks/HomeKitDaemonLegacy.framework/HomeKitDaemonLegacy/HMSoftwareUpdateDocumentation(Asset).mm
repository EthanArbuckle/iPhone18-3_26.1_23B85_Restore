@interface HMSoftwareUpdateDocumentation(Asset)
- (id)initWithAsset:()Asset;
@end

@implementation HMSoftwareUpdateDocumentation(Asset)

- (id)initWithAsset:()Asset
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = a3;
  bundleURL = [v4 bundleURL];

  if (bundleURL)
  {
    v75 = 0;
    fileManager = [v4 fileManager];
    bundleURL2 = [v4 bundleURL];
    path = [bundleURL2 path];
    v9 = [fileManager fileExistsAtPath:path isDirectory:&v75];

    if (v9)
    {
      if ((v75 & 1) != 0 || ![v4 extractionEnteredPassThrough])
      {
        v19 = 0;
      }

      else
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          bundleURL3 = [v4 bundleURL];
          *buf = 138543618;
          v77 = v13;
          v78 = 2112;
          v79 = bundleURL3;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Unarchiving the non-streamable asset: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        fileManager2 = [v4 fileManager];
        bundleURL4 = [v4 bundleURL];
        bundleURL5 = [v4 bundleURL];
        v74 = 0;
        v18 = [fileManager2 unzipItemAtURL:bundleURL4 toURL:bundleURL5 error:&v74];
        v19 = v74;

        if ((v18 & 1) == 0)
        {
          v20 = objc_autoreleasePoolPush();
          self = selfCopy;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            bundleURL6 = [v4 bundleURL];
            *buf = 138543874;
            v77 = v22;
            v78 = 2112;
            v79 = bundleURL6;
            v80 = 2112;
            v81 = v19;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive contents of asset: %@ with error: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v20);
          goto LABEL_17;
        }
      }

      fileManager3 = [v4 fileManager];
      bundleURL7 = [v4 bundleURL];
      v73 = v19;
      v32 = [fileManager3 contentsOfDirectoryAtURL:bundleURL7 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:4 error:&v73];
      v33 = v73;

      if (![v32 count])
      {
        v43 = objc_autoreleasePoolPush();
        self = self;
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
        selfCopy2 = 0;
        goto LABEL_46;
      }

      v34 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self.lastPathComponent MATCHES %@", @"(^[a-z]{2}(-|_)[A-Za-z0-9]+).txt"];
      v35 = [v32 filteredArrayUsingPredicate:v34];
      if (![v35 count])
      {
        v46 = objc_autoreleasePoolPush();
        self = self;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138543362;
          v77 = v48;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@No valid release notes found.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v46);
        selfCopy2 = 0;
        goto LABEL_45;
      }

      v65 = v34;
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      languageCode = [currentLocale languageCode];

      currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
      localeIdentifier = [currentLocale2 localeIdentifier];

      currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
      languageIdentifier = [currentLocale3 languageIdentifier];

      v63 = localeIdentifier;
      if (localeIdentifier | languageIdentifier)
      {
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __54__HMSoftwareUpdateDocumentation_Asset__initWithAsset___block_invoke;
        v70[3] = &unk_27972BEE0;
        v71 = languageIdentifier;
        v72 = localeIdentifier;
        v42 = [v35 na_firstObjectPassingTest:v70];
      }

      else
      {
        v42 = 0;
      }

      if (!v42 && languageCode)
      {
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __54__HMSoftwareUpdateDocumentation_Asset__initWithAsset___block_invoke_2;
        v68[3] = &unk_27972BF08;
        v69 = languageCode;
        v42 = [v35 na_firstObjectPassingTest:v68];
      }

      v62 = languageIdentifier;
      v64 = languageCode;
      if (v42 || ([v35 na_firstObjectPassingTest:&__block_literal_global_120890], (v42 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        testDocumentData = [v4 testDocumentData];

        v50 = objc_alloc(MEMORY[0x277CD1D08]);
        if (testDocumentData)
        {
          testDocumentData2 = [v4 testDocumentData];
          v67 = v33;
          v52 = &v67;
          v53 = [v50 initWithData:testDocumentData2 error:&v67];
        }

        else
        {
          testDocumentData2 = [v4 fileManager];
          v66 = v33;
          v52 = &v66;
          v53 = [v50 initWithURL:v42 fileManager:testDocumentData2 error:&v66];
        }

        v54 = v53;
        v55 = *v52;

        if (v54)
        {
          self = [self initWithReleaseNotesSummary:0 releaseNotes:0 textReleaseNotes:v54 licenseAgreement:0 licenseAgreementVersion:0];

          v33 = v55;
          selfCopy2 = self;
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
      selfCopy2 = 0;
      goto LABEL_44;
    }

    v24 = objc_autoreleasePoolPush();
    self = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      bundleURL8 = [v4 bundleURL];
      path2 = [bundleURL8 path];
      *buf = 138543618;
      v77 = v26;
      v78 = 2112;
      v79 = path2;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@No asset in path: %@", buf, 0x16u);

      goto LABEL_15;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    self = self;
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
  selfCopy2 = 0;
LABEL_47:

  v60 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

@end