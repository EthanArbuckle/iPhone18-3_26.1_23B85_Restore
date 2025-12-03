@interface HMSoftwareUpdateDocumentation(NSBundle)
+ (id)localizationsForBundle:()NSBundle fileManager:;
- (id)initWithBundle:()NSBundle fileManager:;
@end

@implementation HMSoftwareUpdateDocumentation(NSBundle)

- (id)initWithBundle:()NSBundle fileManager:
{
  v96 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = __resourceBundleForBundle(v6, v7);
    v9 = v8;
    if (!v8)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v93 = v34;
        v94 = 2112;
        v95 = v6;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid bundle: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      selfCopy2 = 0;
      goto LABEL_40;
    }

    v10 = MEMORY[0x277CCA8D8];
    localizations = [v8 localizations];
    v12 = [v10 preferredLocalizationsFromArray:localizations];

    if (![v12 count])
    {

      v12 = &unk_286627160;
    }

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v93 = v16;
      v94 = 2112;
      v95 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Parsing using preferred localizations: %@", buf, 0x16u);
    }

    v79 = selfCopy;
    objc_autoreleasePoolPop(v13);
    v17 = __htmlDocumentForResource(v9, v12, @"ReadMeSummary");
    v18 = __htmlDocumentForResource(v9, v12, @"ReadMe");
    v80 = __htmlDocumentForResource(v9, v12, @"License");
    v19 = v9;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v20 = v12;
    v21 = [v20 countByEnumeratingWithState:&v82 objects:buf count:16];
    if (v21)
    {
      v73 = v18;
      v75 = v17;
      v77 = v7;
      v22 = *v83;
      while (2)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v83 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = [v19 URLForResource:@"ReadMe" withExtension:@"txt" subdirectory:0 localization:*(*(&v82 + 1) + 8 * i)];
          if (v24)
          {
            v29 = v24;
            v81 = 0;
            v21 = [objc_alloc(MEMORY[0x277CD1D08]) initWithURL:v24 error:&v81];
            v30 = v81;
            if (v21)
            {
              v31 = v21;
              v17 = v75;
              v7 = v77;
            }

            else
            {
              v35 = objc_autoreleasePoolPush();
              v36 = HMFGetOSLogHandle();
              v17 = v75;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                contexta = HMFGetLogIdentifier();
                [v29 path];
                v37 = v70 = v35;
                *v86 = 138543874;
                v87 = contexta;
                v88 = 2112;
                v89 = v37;
                v90 = 2112;
                v91 = v30;
                _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Unable to load document, %@, with error: %@", v86, 0x20u);

                v35 = v70;
              }

              objc_autoreleasePoolPop(v35);
              v7 = v77;
            }

            goto LABEL_28;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v82 objects:buf count:16];
        if (v21)
        {
          continue;
        }

        break;
      }

      v17 = v75;
      v7 = v77;
LABEL_28:
      v18 = v73;
    }

    v78 = v6;
    if (v18 && v21)
    {
      v38 = v21;
      v39 = v18;
      v40 = objc_autoreleasePoolPush();
      v41 = v79;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v43 = v17;
        v45 = v44 = v7;
        *buf = 138543362;
        v93 = v45;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Both html and text release notes provided, using text notes", buf, 0xCu);

        v7 = v44;
        v17 = v43;
      }

      objc_autoreleasePoolPop(v40);
      v18 = 0;
      v17 = 0;
      v21 = v38;
      v6 = v78;
    }

    if (!v80)
    {
      v49 = 0;
      goto LABEL_39;
    }

    infoDictionary = [v6 infoDictionary];
    v47 = [infoDictionary hmf_dictionaryForKey:@"MobileAssetProperties"];
    v48 = v47;
    if (v47)
    {
      v49 = [v47 hmf_numberForKey:@"SUSLAVersionRequired"];
      if (v49)
      {
LABEL_37:

LABEL_39:
        self = [v79 initWithReleaseNotesSummary:v17 releaseNotes:v18 textReleaseNotes:v21 licenseAgreement:v80 licenseAgreementVersion:{v49, v70}];

        selfCopy2 = self;
        v6 = v78;
LABEL_40:

        goto LABEL_41;
      }

      v74 = v18;
      v76 = v17;
      v52 = v7;
      v63 = objc_autoreleasePoolPush();
      v64 = v79;
      v65 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
      {
        v66 = HMFGetLogIdentifier();
        *buf = 138543362;
        v93 = v66;
        _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Missing SLA version", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v63);
      v67 = [[HMDAssertionLogEvent alloc] initWithReason:@"Missing SLA version"];
      v68 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v68 submitLogEvent:v67];

      context = objc_autoreleasePoolPush();
      v69 = v64;
      v60 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
LABEL_51:
        v18 = v74;

        objc_autoreleasePoolPop(context);
        v49 = 0;
        v7 = v52;
        v17 = v76;
        goto LABEL_37;
      }

      v61 = HMFGetLogIdentifier();
      *buf = 138543618;
      v93 = v61;
      v94 = 2112;
      v95 = v48;
      v62 = "%{public}@Missing SLA version from asset properties: %@";
    }

    else
    {
      v74 = v18;
      v76 = v17;
      v52 = v7;
      v53 = objc_autoreleasePoolPush();
      v54 = v79;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
      {
        v56 = HMFGetLogIdentifier();
        *buf = 138543362;
        v93 = v56;
        _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Missing asset properties", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v53);
      v57 = [[HMDAssertionLogEvent alloc] initWithReason:@"Missing asset properties"];
      v58 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v58 submitLogEvent:v57];

      context = objc_autoreleasePoolPush();
      v59 = v54;
      v60 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      v61 = HMFGetLogIdentifier();
      *buf = 138543618;
      v93 = v61;
      v94 = 2112;
      v95 = infoDictionary;
      v62 = "%{public}@Missing asset properites from asset info: %@";
    }

    _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_ERROR, v62, buf, 0x16u);

    goto LABEL_51;
  }

  v25 = objc_autoreleasePoolPush();
  self = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v93 = v27;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@The bundle parameter is required", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v25);
  selfCopy2 = 0;
LABEL_41:

  v50 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

+ (id)localizationsForBundle:()NSBundle fileManager:
{
  v4 = __resourceBundleForBundle(a3, a4);
  v5 = v4;
  if (v4)
  {
    localizations = [v4 localizations];
  }

  else
  {
    localizations = MEMORY[0x277CBEBF8];
  }

  return localizations;
}

@end