@interface HFURLComponents
+ (BOOL)isHomeAppURL:(id)a3;
+ (NSURL)aboutImproveSiriAndDictationURL;
+ (NSURL)aboutResidentDeviceURL;
+ (NSURL)homeHub2OnboardingURL;
+ (NSURL)locationPrivacyURL;
+ (NSURL)musicLoginURL;
+ (NSURL)musicPrivacyURL;
+ (NSURL)personalRequestsOptInURL;
+ (NSURL)recognizeMyVoiceOptInURL;
+ (NSURL)siriPrivacyURL;
+ (NSURLComponents)dropInURLComponents;
+ (id)_URLComponentsForDestination:(unint64_t)a3;
+ (id)_settingsURLHostString:(id)a3 scheme:(id)a4 UUID:(id)a5 forHome:(id)a6;
+ (id)accessoryDetailsURLForAccessory:(id)a3 home:(id)a4;
+ (id)bridgeSettingsURLForAccessory:(id)a3 home:(id)a4;
+ (id)cameraProfileDetailsURLForCameraProfile:(id)a3 home:(id)a4;
+ (id)connectedServicesURLForAccessory:(id)a3 home:(id)a4;
+ (id)fixSymptomURLForAccessory:(id)a3 symptom:(id)a4;
+ (id)fixSymptomURLForAccessoryWithUUID:(id)a3 symptom:(id)a4;
+ (id)homeKitObjectURLForDestination:(unint64_t)a3 secondaryDestination:(unint64_t)a4 UUID:(id)a5 queryItems:(id)a6;
+ (id)personalRequestsOptInURLForHomeID:(id)a3;
+ (id)roomURLForRoom:(id)a3;
+ (id)serviceDetailsURLForService:(id)a3 home:(id)a4;
+ (id)symptomFromURL:(id)a3 accessory:(id)a4;
- (HFURLComponents)initWithURL:(id)a3;
- (HFURLComponents)initWithURL:(id)a3 homeKitDispatcher:(id)a4;
- (NAFuture)homeKitObjectFuture;
- (NSISO8601DateFormatter)isoDateFormatter;
- (id)_homeKitIdentifier;
- (id)dateForParameter:(id)a3;
- (id)description;
- (id)valueForParameter:(id)a3;
- (unint64_t)destination;
- (unint64_t)secondaryDestination;
@end

@implementation HFURLComponents

+ (NSURL)personalRequestsOptInURL
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"com.apple.Home-private"];
  [v2 setHost:@"personalRequestOptIn"];
  v3 = [v2 URL];

  return v3;
}

+ (NSURL)recognizeMyVoiceOptInURL
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"com.apple.Home-private"];
  [v2 setHost:@"recognizeMyVoiceOptIn"];
  v3 = [v2 URL];

  return v3;
}

+ (NSURL)aboutResidentDeviceURL
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"com.apple.Home"];
  [v2 setHost:@"aboutResidentDevice"];
  v3 = [v2 URL];

  return v3;
}

+ (NSURL)siriPrivacyURL
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"com.apple.Home.privacy"];
  [v2 setHost:@"privacySiri"];
  v3 = [v2 URL];

  return v3;
}

+ (NSURL)musicPrivacyURL
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"com.apple.Home.privacy"];
  [v2 setHost:@"privacyMusic"];
  v3 = [v2 URL];

  return v3;
}

+ (NSURL)locationPrivacyURL
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"com.apple.Home.privacy"];
  [v2 setHost:@"privacyLocation"];
  v3 = [v2 URL];

  return v3;
}

+ (NSURL)musicLoginURL
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"com.apple.Home.appleMusic"];
  v3 = [v2 URL];

  return v3;
}

+ (NSURL)homeHub2OnboardingURL
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"com.apple.Home-private"];
  [v2 setHost:@"homeHubUpdate"];
  v3 = [v2 URL];

  return v3;
}

+ (NSURLComponents)dropInURLComponents
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"com.apple.Home-private"];
  [v2 setHost:@"dropIn"];

  return v2;
}

+ (id)accessoryDetailsURLForAccessory:(id)a3 home:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 uniqueIdentifier];
  v7 = MEMORY[0x277CCAD18];
  v8 = [v5 uniqueIdentifier];

  v9 = [v8 UUIDString];
  v10 = [v7 queryItemWithName:@"HFURLComponentsHome" value:v9];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [HFURLComponents homeKitObjectURLForDestination:4 secondaryDestination:0 UUID:v6 queryItems:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)serviceDetailsURLForService:(id)a3 home:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 uniqueIdentifier];
  v7 = MEMORY[0x277CCAD18];
  v8 = [v5 uniqueIdentifier];

  v9 = [v8 UUIDString];
  v10 = [v7 queryItemWithName:@"HFURLComponentsHome" value:v9];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [HFURLComponents homeKitObjectURLForDestination:7 secondaryDestination:0 UUID:v6 queryItems:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)cameraProfileDetailsURLForCameraProfile:(id)a3 home:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 uniqueIdentifier];
  v7 = MEMORY[0x277CCAD18];
  v8 = [v5 uniqueIdentifier];

  v9 = [v8 UUIDString];
  v10 = [v7 queryItemWithName:@"HFURLComponentsHome" value:v9];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [HFURLComponents homeKitObjectURLForDestination:6 secondaryDestination:0 UUID:v6 queryItems:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)bridgeSettingsURLForAccessory:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = [a3 uniqueIdentifier];
  v8 = [a1 _settingsURLHostString:@"bridgeSettings" UUID:v7 forHome:v6];

  return v8;
}

+ (id)connectedServicesURLForAccessory:(id)a3 home:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 uniqueIdentifier];
  v7 = MEMORY[0x277CCAD18];
  v8 = [v5 uniqueIdentifier];

  v9 = [v8 UUIDString];
  v10 = [v7 queryItemWithName:@"HFURLComponentsHome" value:v9];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [HFURLComponents homeKitObjectURLForDestination:29 secondaryDestination:3 UUID:v6 queryItems:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)personalRequestsOptInURLForHomeID:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v4 setScheme:@"com.apple.Home-private"];
  [v4 setHost:@"personalRequestOptIn"];
  if ([v3 length])
  {
    v5 = [MEMORY[0x277CCAD18] queryItemWithName:@"homeId" value:v3];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v4 setQueryItems:v6];
  }

  v7 = [v4 URL];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)roomURLForRoom:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [HFURLComponents _URLComponentsForDestination:3];
  v5 = MEMORY[0x277CCACA8];
  v13[0] = @"/";
  v6 = [v3 uniqueIdentifier];

  v7 = [v6 UUIDString];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v9 = [v5 pathWithComponents:v8];
  [v4 setPath:v9];

  v10 = [v4 URL];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_settingsURLHostString:(id)a3 scheme:(id)a4 UUID:(id)a5 forHome:(id)a6
{
  v28[2] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = MEMORY[0x277CCACE0];
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v11);
  [v14 setScheme:v12];

  [v14 setHost:v13];
  if (v9)
  {
    v15 = MEMORY[0x277CCACA8];
    v28[0] = @"/";
    v16 = [v9 UUIDString];
    v28[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v18 = [v15 pathWithComponents:v17];
    [v14 setPath:v18];
  }

  v19 = MEMORY[0x277CCAD18];
  v20 = [v10 uniqueIdentifier];
  v21 = [v20 UUIDString];
  v22 = [v19 queryItemWithName:@"HFURLComponentsHome" value:v21];
  v27 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  [v14 setQueryItems:v23];

  v24 = [v14 URL];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)fixSymptomURLForAccessory:(id)a3 symptom:(id)a4
{
  v6 = a4;
  v7 = [a3 uniqueIdentifier];
  v8 = [a1 fixSymptomURLForAccessoryWithUUID:v7 symptom:v6];

  return v8;
}

+ (id)fixSymptomURLForAccessoryWithUUID:(id)a3 symptom:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setScheme:@"com.apple.Home.fixSymptom"];
  v8 = [v6 UUIDString];

  v9 = [@"/" stringByAppendingPathComponent:v8];
  [v7 setPath:v9];

  [v7 setHost:@"symptomHandler"];
  v10 = MEMORY[0x277CCAD18];
  v11 = [v5 type];

  v12 = NSStringFromHMSymptomType(v11);
  v13 = [v10 queryItemWithName:@"fixSymptom" value:v12];
  v18[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [v7 setQueryItems:v14];

  v15 = [v7 URL];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (NSURL)aboutImproveSiriAndDictationURL
{
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v2 setScheme:@"com.apple.Home.privacy"];
  [v2 setHost:@"aboutImproveSiriAndDictation"];
  v3 = [v2 URL];

  return v3;
}

+ (id)symptomFromURL:(id)a3 accessory:(id)a4
{
  v5 = MEMORY[0x277CCACE0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithURL:v7 resolvingAgainstBaseURL:0];

  v9 = [v8 queryItems];
  v10 = [v9 na_firstObjectPassingTest:&__block_literal_global_72];

  v11 = [v10 value];
  v12 = NSStringToHMSymptomType(v11);

  v13 = [v6 symptomsHandler];

  v14 = [v13 symptoms];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__HFURLComponents_symptomFromURL_accessory___block_invoke_2;
  v17[3] = &__block_descriptor_40_e19_B16__0__HMSymptom_8l;
  v17[4] = v12;
  v15 = [v14 na_firstObjectPassingTest:v17];

  return v15;
}

uint64_t __44__HFURLComponents_symptomFromURL_accessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"fixSymptom"];

  return v3;
}

+ (BOOL)isHomeAppURL:(id)a3
{
  v3 = a3;
  if (_MergedGlobals_243 != -1)
  {
    dispatch_once(&_MergedGlobals_243, &__block_literal_global_120);
  }

  v4 = qword_280E02EB8;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__HFURLComponents_isHomeAppURL___block_invoke_3;
  v8[3] = &unk_277DF3130;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

void __32__HFURLComponents_isHomeAppURL___block_invoke_2()
{
  v5[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"com.apple.Home";
  v5[1] = @"com.apple.Home-private";
  v5[2] = @"X-HM";
  v5[3] = @"com.apple.Home.privacy";
  v5[4] = @"com.apple.Home.appleMusic";
  v5[5] = @"com.apple.Home.fixSymptom";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = qword_280E02EB8;
  qword_280E02EB8 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

BOOL __32__HFURLComponents_isHomeAppURL___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 scheme];
  v5 = [v3 caseInsensitiveCompare:v4];

  return v5 == 0;
}

- (HFURLComponents)initWithURL:(id)a3
{
  v4 = a3;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [(HFURLComponents *)self initWithURL:v4 homeKitDispatcher:v5];

  return v6;
}

- (HFURLComponents)initWithURL:(id)a3 homeKitDispatcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFURLComponents;
  v9 = [(HFURLComponents *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, a3);
    objc_storeStrong(&v10->_homeKitDispatcher, a4);
  }

  return v10;
}

- (unint64_t)destination
{
  v3 = [(HFURLComponents *)self URL];
  v4 = [v3 scheme];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [(HFURLComponents *)self URL];
  v6 = [v5 scheme];
  v7 = [v6 caseInsensitiveCompare:@"X-HM"];

  if (!v7)
  {
    return 15;
  }

  v8 = [(HFURLComponents *)self URL];
  v9 = [v8 scheme];
  v10 = [v9 caseInsensitiveCompare:@"com.apple.Home.fixSymptom"];

  if (!v10)
  {
    return 17;
  }

  v11 = [(HFURLComponents *)self URL];
  v12 = [v11 scheme];
  v13 = [v12 caseInsensitiveCompare:@"com.apple.Home-private"];

  if (v13)
  {
    goto LABEL_5;
  }

  v71 = [(HFURLComponents *)self URL];
  v72 = [v71 host];

  if (!v72)
  {
    return 0;
  }

  v73 = [(HFURLComponents *)self URL];
  v74 = [v73 host];
  if (![v74 caseInsensitiveCompare:@"installhomepodprofile"])
  {

    return 18;
  }

  v75 = [(HFURLComponents *)self URL];
  v76 = [v75 host];
  v77 = [v76 uppercaseString];
  v78 = [@"installhomepodprofile&" uppercaseString];
  v79 = [v77 hasPrefix:v78];

  if (v79)
  {
    return 18;
  }

  v80 = [(HFURLComponents *)self URL];
  v81 = [v80 host];
  v82 = [v81 caseInsensitiveCompare:@"homepodSoftwareUpdate"];

  if (!v82)
  {
    return 19;
  }

  v83 = [(HFURLComponents *)self URL];
  v84 = [v83 host];
  v85 = [v84 caseInsensitiveCompare:@"addAccessory"];

  if (!v85)
  {
    return 15;
  }

  v86 = [(HFURLComponents *)self URL];
  v87 = [v86 host];
  v88 = [v87 caseInsensitiveCompare:@"userLockSettings"];

  if (!v88)
  {
    return 24;
  }

  v89 = [(HFURLComponents *)self URL];
  v90 = [v89 host];
  v91 = [v90 caseInsensitiveCompare:@"locksOnboarding"];

  if (!v91)
  {
    return 25;
  }

  v92 = [(HFURLComponents *)self URL];
  v93 = [v92 host];
  v94 = [v93 caseInsensitiveCompare:@"locksFirmwareUpdateSetup"];

  if (!v94)
  {
    return 26;
  }

  v95 = [(HFURLComponents *)self URL];
  v96 = [v95 host];
  v97 = [v96 caseInsensitiveCompare:@"homeHubUpdate"];

  if (!v97)
  {
    return 20;
  }

  v98 = [(HFURLComponents *)self URL];
  v99 = [v98 host];
  v100 = [v99 caseInsensitiveCompare:@"dropIn"];

  if (!v100)
  {
    return 27;
  }

  v101 = [(HFURLComponents *)self URL];
  v102 = [v101 host];
  v103 = [v102 caseInsensitiveCompare:@"mediaServiceDefaultAccountSettings"];

  if (!v103)
  {
    return 28;
  }

  v104 = [(HFURLComponents *)self URL];
  v105 = [v104 host];
  v106 = [v105 caseInsensitiveCompare:@"connectedServices"];

  if (!v106)
  {
    return 29;
  }

  v107 = [(HFURLComponents *)self URL];
  v108 = [v107 host];
  v109 = [v108 caseInsensitiveCompare:@"userDetails"];

  if (!v109)
  {
    return 30;
  }

LABEL_5:
  v14 = [(HFURLComponents *)self URL];
  v15 = [v14 host];

  if (!v15)
  {
    return 0;
  }

  v16 = [(HFURLComponents *)self URL];
  v17 = [v16 host];
  v18 = [v17 caseInsensitiveCompare:@"invitation"];

  if (!v18)
  {
    return 1;
  }

  v19 = [(HFURLComponents *)self URL];
  v20 = [v19 host];
  v21 = [v20 caseInsensitiveCompare:@"home"];

  if (!v21)
  {
    return 2;
  }

  v22 = [(HFURLComponents *)self URL];
  v23 = [v22 host];
  v24 = [v23 caseInsensitiveCompare:@"room"];

  if (!v24)
  {
    return 3;
  }

  v25 = [(HFURLComponents *)self URL];
  v26 = [v25 host];
  v27 = [v26 caseInsensitiveCompare:@"accessory"];

  if (!v27)
  {
    return 4;
  }

  v28 = [(HFURLComponents *)self URL];
  v29 = [v28 host];
  v30 = [v29 caseInsensitiveCompare:@"mediaSystem"];

  if (!v30)
  {
    return 5;
  }

  v31 = [(HFURLComponents *)self URL];
  v32 = [v31 host];
  v33 = [v32 caseInsensitiveCompare:@"accessoryProfile"];

  if (!v33)
  {
    return 6;
  }

  v34 = [(HFURLComponents *)self URL];
  v35 = [v34 host];
  v36 = [v35 caseInsensitiveCompare:@"service"];

  if (!v36)
  {
    return 7;
  }

  v37 = [(HFURLComponents *)self URL];
  v38 = [v37 host];
  v39 = [v38 caseInsensitiveCompare:@"trigger"];

  if (!v39)
  {
    return 8;
  }

  v40 = [(HFURLComponents *)self URL];
  v41 = [v40 host];
  v42 = [v41 caseInsensitiveCompare:@"person"];

  if (!v42)
  {
    return 9;
  }

  v43 = [(HFURLComponents *)self URL];
  v44 = [v43 host];
  v45 = [v44 caseInsensitiveCompare:@"unknownPersonEvent"];

  if (!v45)
  {
    return 10;
  }

  v46 = [(HFURLComponents *)self URL];
  v47 = [v46 host];
  v48 = [v47 caseInsensitiveCompare:@"aboutResidentDevice"];

  if (!v48)
  {
    return 11;
  }

  v49 = [(HFURLComponents *)self URL];
  v50 = [v49 host];
  v51 = [v50 caseInsensitiveCompare:@"faceRecognitionSettings"];

  if (!v51)
  {
    return 12;
  }

  v52 = [(HFURLComponents *)self URL];
  v53 = [v52 host];
  v54 = [v53 caseInsensitiveCompare:@"networkRoutersSettings"];

  if (!v54)
  {
    return 13;
  }

  v55 = [(HFURLComponents *)self URL];
  v56 = [v55 host];
  v57 = [v56 caseInsensitiveCompare:@"bridgeSettings"];

  if (!v57)
  {
    return 21;
  }

  v58 = [(HFURLComponents *)self URL];
  v59 = [v58 host];
  v60 = [v59 caseInsensitiveCompare:@"firmwareUpdate"];

  if (!v60)
  {
    return 14;
  }

  v61 = [(HFURLComponents *)self URL];
  v62 = [v61 host];
  v63 = [v62 caseInsensitiveCompare:@"reprovisionDevice"];

  if (!v63)
  {
    return 16;
  }

  v64 = [(HFURLComponents *)self URL];
  v65 = [v64 host];
  v66 = [v65 caseInsensitiveCompare:@"personalRequestOptIn"];

  if (v66)
  {
    v67 = [(HFURLComponents *)self URL];
    v68 = [v67 host];
    v69 = [v68 caseInsensitiveCompare:@"recognizeMyVoiceOptIn"];

    if (!v69)
    {
      return 23;
    }

    return 0;
  }

  return 22;
}

- (unint64_t)secondaryDestination
{
  v2 = [(HFURLComponents *)self URL];
  v3 = [v2 pathComponents];

  if ([v3 count] >= 3)
  {
    v4 = [v3 objectAtIndexedSubscript:2];
    v5 = [v4 isEqualToString:@"quickControl"];

    if ((v5 & 1) == 0)
    {
      v8 = [v3 objectAtIndexedSubscript:2];
      v9 = [v8 isEqualToString:@"detailsAction"];

      if (v9)
      {
        v6 = 1;
        goto LABEL_4;
      }

      v6 = 2;
      v10 = [v3 objectAtIndexedSubscript:2];
      v11 = [v10 isEqualToString:@"alternateAction"];

      if (v11)
      {
        goto LABEL_4;
      }
    }
  }

  v6 = 0;
LABEL_4:

  return v6;
}

- (NAFuture)homeKitObjectFuture
{
  objc_initWeak(&location, self);
  v3 = [(HFURLComponents *)self homeKitDispatcher];
  v4 = [v3 allHomesFuture];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HFURLComponents_homeKitObjectFuture__block_invoke;
  v7[3] = &unk_277DF52E0;
  objc_copyWeak(&v8, &location);
  v5 = [v4 flatMap:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

id __38__HFURLComponents_homeKitObjectFuture__block_invoke(uint64_t a1, void *a2)
{
  v77[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained homeKitDispatcher];
  v6 = [v5 homeManager];
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [WeakRetained valueForParameter:@"HFURLComponentsHome"];
  v9 = [v7 initWithUUIDString:v8];
  v10 = [v6 hf_homeWithIdentifier:v9];

  v11 = [WeakRetained destination];
  if (v11 == 10)
  {
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v43 = +[HFHomeKitDispatcher sharedDispatcher];
      v13 = [v43 home];
    }

    v44 = objc_alloc(MEMORY[0x277CCAD78]);
    v45 = [WeakRetained valueForParameter:@"HFURLComponentsCameraProfile"];
    v46 = [v44 initWithUUIDString:v45];
    v47 = [v13 hf_cameraProfileWithIdentifier:v46];

    v48 = [WeakRetained _homeKitIdentifier];
    v33 = [v47 hf_significantEventWithIdentifier:v48];

    goto LABEL_53;
  }

  v12 = v11;
  if (v11 == 9)
  {
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v34 = +[HFHomeKitDispatcher sharedDispatcher];
      v13 = [v34 home];
    }

    v35 = objc_alloc(MEMORY[0x277CCAD78]);
    v36 = [WeakRetained valueForParameter:@"HFURLComponentsPersonManager"];
    v37 = [v35 initWithUUIDString:v36];
    v38 = [v13 hf_personManagerWithIdentifier:v37];
    v39 = v38;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = [v13 personManager];
    }

    v41 = v40;

    v42 = [WeakRetained _homeKitIdentifier];
    v33 = [v41 hf_personWithIdentifier:v42];

LABEL_52:
    goto LABEL_53;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (v12 == 27)
  {
    if (v10)
    {
      v41 = v10;
    }

    else
    {
      v54 = +[HFHomeKitDispatcher sharedDispatcher];
      v41 = [v54 home];
    }

    v55 = objc_alloc(MEMORY[0x277CCAD78]);
    v56 = [WeakRetained valueForParameter:@"accessoryId"];
    v57 = [v55 initWithUUIDString:v56];
    v58 = [v41 hf_accessoryWithIdentifier:v57];

    v33 = [MEMORY[0x277D2C900] futureWithResult:v58];

    goto LABEL_52;
  }

  v14 = v12 - 1;
  if (!v14)
  {
    v15 = [WeakRetained homeKitDispatcher];
    v16 = [v15 homeManager];
    v17 = [v16 incomingHomeInvitations];
    [v13 addObjectsFromArray:v17];
  }

  v61 = v10;
  v62 = WeakRetained;
  if (v10)
  {
    v77[0] = v10;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:1];

    v3 = v18;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v3 = v3;
  v19 = [v3 countByEnumeratingWithState:&v69 objects:v76 count:16];
  v63 = v3;
  if (v19)
  {
    v20 = v19;
    v21 = *v70;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v70 != v21)
        {
          objc_enumerationMutation(v3);
        }

        v23 = *(*(&v69 + 1) + 8 * i);
        switch(v14)
        {
          case 0:
            v24 = [*(*(&v69 + 1) + 8 * i) outgoingInvitations];
            goto LABEL_34;
          case 1:
          case 13:
          case 18:
          case 19:
          case 23:
          case 24:
          case 25:
          case 27:
            [v13 addObject:v23];
            continue;
          case 2:
            v24 = [*(*(&v69 + 1) + 8 * i) hf_allRooms];
            goto LABEL_34;
          case 3:
          case 16:
          case 28:
            v24 = [*(*(&v69 + 1) + 8 * i) accessories];
            goto LABEL_34;
          case 4:
            v24 = [*(*(&v69 + 1) + 8 * i) mediaSystems];
            goto LABEL_34;
          case 5:
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v25 = [v23 accessories];
            v26 = [v25 countByEnumeratingWithState:&v65 objects:v75 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v66;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v66 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = [*(*(&v65 + 1) + 8 * j) cameraProfiles];
                  [v13 addObjectsFromArray:v30];
                }

                v27 = [v25 countByEnumeratingWithState:&v65 objects:v75 count:16];
              }

              while (v27);
            }

            v3 = v63;
            continue;
          case 6:
            v24 = [*(*(&v69 + 1) + 8 * i) hf_allServices];
            goto LABEL_34;
          case 7:
            v24 = [*(*(&v69 + 1) + 8 * i) triggers];
            goto LABEL_34;
          case 20:
            v24 = [*(*(&v69 + 1) + 8 * i) hf_allBridgeAccessories];
LABEL_34:
            v31 = v24;
            [v13 addObjectsFromArray:{v24, v61}];

            break;
          default:
            continue;
        }
      }

      v20 = [v3 countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v20);
  }

  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __38__HFURLComponents_homeKitObjectFuture__block_invoke_2;
  v64[3] = &unk_277DF7C90;
  WeakRetained = v62;
  v64[4] = v62;
  v32 = [v13 na_firstObjectPassingTest:v64];
  if (v32)
  {
    v33 = [MEMORY[0x277D2C900] futureWithResult:v32];
  }

  else
  {
    v49 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA738];
    v73 = *MEMORY[0x277CCA748];
    v51 = [v62 URL];
    v74 = v51;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v53 = [v49 errorWithDomain:v50 code:-1000 userInfo:v52];

    v3 = v63;
    v33 = [MEMORY[0x277D2C900] futureWithError:v53];
  }

  v10 = v61;
LABEL_53:

  v59 = *MEMORY[0x277D85DE8];

  return v33;
}

uint64_t __38__HFURLComponents_homeKitObjectFuture__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) _homeKitIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

+ (id)_URLComponentsForDestination:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v4 setScheme:@"com.apple.Home"];
  v5 = @"invitation";
  switch(a3)
  {
    case 1uLL:
      goto LABEL_31;
    case 2uLL:
      v5 = @"home";
      goto LABEL_31;
    case 3uLL:
      v5 = @"room";
      goto LABEL_31;
    case 4uLL:
      v5 = @"accessory";
      goto LABEL_31;
    case 5uLL:
      v5 = @"mediaSystem";
      goto LABEL_31;
    case 6uLL:
      v5 = @"accessoryProfile";
      goto LABEL_31;
    case 7uLL:
      v5 = @"service";
      goto LABEL_31;
    case 8uLL:
      v5 = @"trigger";
      goto LABEL_31;
    case 9uLL:
      v5 = @"person";
      goto LABEL_31;
    case 0xAuLL:
      v5 = @"unknownPersonEvent";
      goto LABEL_31;
    case 0xBuLL:
      v5 = @"aboutResidentDevice";
      goto LABEL_31;
    case 0xCuLL:
      v5 = @"faceRecognitionSettings";
      goto LABEL_31;
    case 0xDuLL:
      v5 = @"networkRoutersSettings";
      goto LABEL_31;
    case 0xEuLL:
      v5 = @"firmwareUpdate";
      goto LABEL_31;
    case 0xFuLL:
      v5 = @"x-hm";
      goto LABEL_31;
    case 0x10uLL:
      v5 = @"reprovisionDevice";
      goto LABEL_31;
    case 0x11uLL:
      v5 = @"com.apple.Home.fixSymptom";
      goto LABEL_31;
    case 0x12uLL:
      [v4 setScheme:@"com.apple.Home-private"];
      v5 = @"installhomepodprofile";
      goto LABEL_31;
    case 0x13uLL:
      [v4 setScheme:@"com.apple.Home-private"];
      v5 = @"homepodSoftwareUpdate";
      goto LABEL_31;
    case 0x14uLL:
      [v4 setScheme:@"com.apple.Home-private"];
      v5 = @"homeHubUpdate";
      goto LABEL_31;
    case 0x15uLL:
      v5 = @"bridgeSettings";
      goto LABEL_31;
    case 0x16uLL:
      [v4 setScheme:@"com.apple.Home-private"];
      v5 = @"personalRequestOptIn";
      goto LABEL_31;
    case 0x17uLL:
      [v4 setScheme:@"com.apple.Home.privacy"];
      v5 = @"recognizeMyVoiceOptIn";
      goto LABEL_31;
    case 0x18uLL:
      [v4 setScheme:@"com.apple.Home-private"];
      v5 = @"userLockSettings";
      goto LABEL_31;
    case 0x19uLL:
      [v4 setScheme:@"com.apple.Home-private"];
      v5 = @"locksOnboarding";
      goto LABEL_31;
    case 0x1AuLL:
      [v4 setScheme:@"com.apple.Home-private"];
      v5 = @"locksFirmwareUpdateSetup";
      goto LABEL_31;
    case 0x1BuLL:
      [v4 setScheme:@"com.apple.Home-private"];
      v5 = @"dropIn";
      goto LABEL_31;
    case 0x1CuLL:
      [v4 setScheme:@"com.apple.Home-private"];
      v5 = @"mediaServiceDefaultAccountSettings";
      goto LABEL_31;
    case 0x1DuLL:
      [v4 setScheme:@"com.apple.Home-private"];
      v5 = @"connectedServices";
      goto LABEL_31;
    case 0x1EuLL:
      [v4 setScheme:@"com.apple.Home-private"];
      v5 = @"userDetails";
LABEL_31:
      [v4 setHost:v5];
      break;
    default:
      break;
  }

  return v4;
}

+ (id)homeKitObjectURLForDestination:(unint64_t)a3 secondaryDestination:(unint64_t)a4 UUID:(id)a5 queryItems:(id)a6
{
  v24[3] = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  if (a3)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"HFURLComponents.m" lineNumber:718 description:{@"Invalid parameter not satisfying: %@", @"primaryDestination != HFURLComponentsDestinationUnknown"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:a1 file:@"HFURLComponents.m" lineNumber:719 description:{@"Invalid parameter not satisfying: %@", @"uuid != nil"}];

LABEL_3:
  v13 = [a1 _URLComponentsForDestination:a3];
  if (a4 - 1 > 2)
  {
    v14 = @"quickControl";
  }

  else
  {
    v14 = off_277DF9340[a4 - 1];
  }

  v15 = MEMORY[0x277CCACA8];
  v24[0] = @"/";
  v16 = [v11 UUIDString];
  v24[1] = v16;
  v24[2] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v18 = [v15 pathWithComponents:v17];
  [v13 setPath:v18];

  [v13 setQueryItems:v12];
  v19 = [v13 URL];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

__CFString *__87__HFURLComponents_homeKitObjectURLForDestination_secondaryDestination_UUID_queryItems___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32) - 1;
  if (v1 > 2)
  {
    return @"quickControl";
  }

  else
  {
    return off_277DF9340[v1];
  }
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFURLComponents *)self URL];
  v5 = [v3 appendObject:v4 withName:@"url"];

  v6 = [v3 appendUnsignedInteger:-[HFURLComponents destination](self withName:{"destination"), @"destination"}];
  v7 = [v3 appendUnsignedInteger:-[HFURLComponents secondaryDestination](self withName:{"secondaryDestination"), @"secondaryDestination"}];
  v8 = [v3 build];

  return v8;
}

- (id)valueForParameter:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = MEMORY[0x277CCACE0];
    v6 = [(HFURLComponents *)self URL];
    v7 = [v6 absoluteString];
    v8 = [v5 componentsWithString:v7];

    v9 = [v8 queryItems];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__HFURLComponents_valueForParameter___block_invoke;
    v14[3] = &unk_277DF9320;
    v15 = v4;
    v10 = [v9 na_firstObjectPassingTest:v14];

    v11 = [v10 value];
  }

  else
  {
    v8 = HFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = "[HFURLComponents valueForParameter:]";
      _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "(%s) parameter.length = 0", buf, 0xCu);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __37__HFURLComponents_valueForParameter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)dateForParameter:(id)a3
{
  v4 = [(HFURLComponents *)self valueForParameter:a3];
  if (v4)
  {
    v5 = [(HFURLComponents *)self isoDateFormatter];
    v6 = [v5 dateFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSISO8601DateFormatter)isoDateFormatter
{
  p_isoDateFormatter = &self->_isoDateFormatter;
  isoDateFormatter = self->_isoDateFormatter;
  if (isoDateFormatter)
  {
    v4 = isoDateFormatter;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAA68]);
    [(NSISO8601DateFormatter *)v4 setFormatOptions:3955];
    objc_storeStrong(p_isoDateFormatter, v4);
  }

  return v4;
}

- (id)_homeKitIdentifier
{
  v3 = [(HFURLComponents *)self URL];
  v4 = [v3 pathComponents];
  v5 = [v4 count];

  if (v5 < 2)
  {
    v10 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    v7 = [(HFURLComponents *)self URL];
    v8 = [v7 pathComponents];
    v9 = [v8 objectAtIndexedSubscript:1];
    v10 = [v6 initWithUUIDString:v9];
  }

  return v10;
}

@end