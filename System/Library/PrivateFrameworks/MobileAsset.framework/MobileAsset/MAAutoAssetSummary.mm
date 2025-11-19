@interface MAAutoAssetSummary
+ (id)assetRepresentationName:(int64_t)a3;
+ (id)summaryNewMaxColumnStrings;
+ (id)summaryPaddedBanner:(id)a3;
+ (id)summaryPaddedHeader:(id)a3;
+ (id)summaryPaddedString:(id)a3 paddingToLenghtOfString:(id)a4 paddingWith:(id)a5 paddingBefore:(BOOL)a6;
- (BOOL)getStringsForSummaryProps:(id *)a3 isPersonalized:(id *)a4 isPrePersonalized:(id *)a5 isGrafted:(id *)a6 graftPoint:(id *)a7 stageGroup:(id *)a8 targetOS:(id *)a9;
- (MAAutoAssetSummary)initWithAssetSelector:(id)a3 withAssetRepresentation:(int64_t)a4 withAssetWasPatched:(BOOL)a5 withAssetIsStaged:(BOOL)a6 withJobStatus:(id)a7 withScheduledIntervalSecs:(int64_t)a8 withScheduledRemainingSecs:(int64_t)a9 withPushDelaySecs:(int64_t)a10 withActiveClientCount:(int64_t)a11 withActiveMonitorCount:(int64_t)a12 withMaximumClientCount:(int64_t)a13 withTotalClientCount:(int64_t)a14;
- (MAAutoAssetSummary)initWithAssetSelector:(id)a3 withAssetRepresentation:(int64_t)a4 withAssetWasPatched:(BOOL)a5 withAssetIsStaged:(BOOL)a6 withJobStatus:(id)a7 withScheduledIntervalSecs:(int64_t)a8 withScheduledRemainingSecs:(int64_t)a9 withPushDelaySecs:(int64_t)a10 withActiveClientCount:(int64_t)a11 withActiveMonitorCount:(int64_t)a12 withMaximumClientCount:(int64_t)a13 withTotalClientCount:(int64_t)a14 withIsSecureMobileAsset:(BOOL)a15 withPersonalizationStatus:(BOOL)a16 withPrePersonalizationStatus:(BOOL)a17 withGraftStatus:(BOOL)a18 withGraftPoint:(id)a19 withStageGroupType:(unint64_t)a20 withTargetOS:(id)a21;
- (MAAutoAssetSummary)initWithCoder:(id)a3;
- (id)assetRepresentationName;
- (id)description;
- (id)newSummaryDictionary;
- (id)summary;
- (id)summaryPadded:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)summaryBuildMaxColumnStrings:(id)a3;
@end

@implementation MAAutoAssetSummary

- (MAAutoAssetSummary)initWithAssetSelector:(id)a3 withAssetRepresentation:(int64_t)a4 withAssetWasPatched:(BOOL)a5 withAssetIsStaged:(BOOL)a6 withJobStatus:(id)a7 withScheduledIntervalSecs:(int64_t)a8 withScheduledRemainingSecs:(int64_t)a9 withPushDelaySecs:(int64_t)a10 withActiveClientCount:(int64_t)a11 withActiveMonitorCount:(int64_t)a12 withMaximumClientCount:(int64_t)a13 withTotalClientCount:(int64_t)a14
{
  v21 = a3;
  v22 = a7;
  v26.receiver = self;
  v26.super_class = MAAutoAssetSummary;
  v23 = [(MAAutoAssetSummary *)&v26 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_assetSelector, a3);
    v24->_assetRepresentation = a4;
    v24->_assetWasPatched = a5;
    v24->_assetIsStaged = a6;
    objc_storeStrong(&v24->_jobStatus, a7);
    v24->_scheduledIntervalSecs = a8;
    v24->_scheduledRemainingSecs = a9;
    v24->_pushDelaySecs = a10;
    v24->_activeClientCount = a11;
    v24->_activeMonitorCount = a12;
    v24->_maximumClientCount = a13;
    v24->_totalClientCount = a14;
  }

  return v24;
}

- (MAAutoAssetSummary)initWithAssetSelector:(id)a3 withAssetRepresentation:(int64_t)a4 withAssetWasPatched:(BOOL)a5 withAssetIsStaged:(BOOL)a6 withJobStatus:(id)a7 withScheduledIntervalSecs:(int64_t)a8 withScheduledRemainingSecs:(int64_t)a9 withPushDelaySecs:(int64_t)a10 withActiveClientCount:(int64_t)a11 withActiveMonitorCount:(int64_t)a12 withMaximumClientCount:(int64_t)a13 withTotalClientCount:(int64_t)a14 withIsSecureMobileAsset:(BOOL)a15 withPersonalizationStatus:(BOOL)a16 withPrePersonalizationStatus:(BOOL)a17 withGraftStatus:(BOOL)a18 withGraftPoint:(id)a19 withStageGroupType:(unint64_t)a20 withTargetOS:(id)a21
{
  v25 = a3;
  v26 = a7;
  v27 = a19;
  v28 = a21;
  v35.receiver = self;
  v35.super_class = MAAutoAssetSummary;
  v29 = [(MAAutoAssetSummary *)&v35 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_assetSelector, a3);
    v30->_assetRepresentation = a4;
    v30->_assetWasPatched = a5;
    v30->_assetIsStaged = a6;
    objc_storeStrong(&v30->_jobStatus, a7);
    v30->_scheduledIntervalSecs = a8;
    v30->_scheduledRemainingSecs = a9;
    v30->_pushDelaySecs = a10;
    v30->_activeClientCount = a11;
    v30->_activeMonitorCount = a12;
    v30->_maximumClientCount = a13;
    v30->_totalClientCount = a14;
    v30->_assetIsSecureMobileAsset = a15;
    v30->_secureMobileAssetIsPersonalized = a16;
    v30->_secureMobileAssetIsPrePersonalized = a17;
    v30->_secureMobileAssetIsGrafted = a18;
    objc_storeStrong(&v30->_secureMobileAssetGraftPoint, a19);
    v30->_stageGroup = a20;
    objc_storeStrong(&v30->_targetOS, a21);
  }

  return v30;
}

- (MAAutoAssetSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MAAutoAssetSummary;
  v5 = [(MAAutoAssetSummary *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v6;

    v5->_assetRepresentation = [v4 decodeInt64ForKey:@"assetRepresentation"];
    v5->_assetWasPatched = [v4 decodeBoolForKey:@"assetWasPatched"];
    v5->_assetIsStaged = [v4 decodeBoolForKey:@"assetIsStaged"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"jobStatus"];
    jobStatus = v5->_jobStatus;
    v5->_jobStatus = v8;

    v5->_scheduledIntervalSecs = [v4 decodeIntegerForKey:@"scheduledIntervalSecs"];
    v5->_scheduledRemainingSecs = [v4 decodeIntegerForKey:@"scheduledRemainingSecs"];
    v5->_pushDelaySecs = [v4 decodeIntegerForKey:@"pushDelaySecs"];
    v5->_activeClientCount = [v4 decodeIntegerForKey:@"activeClientCount"];
    v5->_activeMonitorCount = [v4 decodeIntegerForKey:@"activeMonitorCount"];
    v5->_maximumClientCount = [v4 decodeIntegerForKey:@"maximumClientCount"];
    v5->_totalClientCount = [v4 decodeIntegerForKey:@"totalClientCount"];
    v5->_assetIsSecureMobileAsset = [v4 decodeBoolForKey:@"assetIsSecureMobileAsset"];
    v5->_secureMobileAssetIsPersonalized = [v4 decodeBoolForKey:@"secureMobileAssetIsPersonalized"];
    v5->_secureMobileAssetIsPrePersonalized = [v4 decodeBoolForKey:@"secureMobileAssetIsPrePersonalized"];
    v5->_secureMobileAssetIsGrafted = [v4 decodeBoolForKey:@"secureMobileAssetIsGrafted"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureMobileAssetGraftPoint"];
    secureMobileAssetGraftPoint = v5->_secureMobileAssetGraftPoint;
    v5->_secureMobileAssetGraftPoint = v10;

    v5->_stageGroup = [v4 decodeIntegerForKey:@"stageGroup"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetOSKey"];
    targetOS = v5->_targetOS;
    v5->_targetOS = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSummary *)self assetSelector];
  [v4 encodeObject:v5 forKey:@"assetSelector"];

  [v4 encodeInteger:-[MAAutoAssetSummary assetRepresentation](self forKey:{"assetRepresentation"), @"assetRepresentation"}];
  [v4 encodeBool:-[MAAutoAssetSummary assetWasPatched](self forKey:{"assetWasPatched"), @"assetWasPatched"}];
  [v4 encodeBool:-[MAAutoAssetSummary assetIsStaged](self forKey:{"assetIsStaged"), @"assetIsStaged"}];
  v6 = [(MAAutoAssetSummary *)self jobStatus];
  [v4 encodeObject:v6 forKey:@"jobStatus"];

  [v4 encodeInteger:-[MAAutoAssetSummary scheduledIntervalSecs](self forKey:{"scheduledIntervalSecs"), @"scheduledIntervalSecs"}];
  [v4 encodeInteger:-[MAAutoAssetSummary pushDelaySecs](self forKey:{"pushDelaySecs"), @"pushDelaySecs"}];
  [v4 encodeInteger:-[MAAutoAssetSummary scheduledRemainingSecs](self forKey:{"scheduledRemainingSecs"), @"scheduledRemainingSecs"}];
  [v4 encodeInteger:-[MAAutoAssetSummary activeClientCount](self forKey:{"activeClientCount"), @"activeClientCount"}];
  [v4 encodeInteger:-[MAAutoAssetSummary activeMonitorCount](self forKey:{"activeMonitorCount"), @"activeMonitorCount"}];
  [v4 encodeInteger:-[MAAutoAssetSummary maximumClientCount](self forKey:{"maximumClientCount"), @"maximumClientCount"}];
  [v4 encodeInteger:-[MAAutoAssetSummary totalClientCount](self forKey:{"totalClientCount"), @"totalClientCount"}];
  [v4 encodeBool:-[MAAutoAssetSummary assetIsSecureMobileAsset](self forKey:{"assetIsSecureMobileAsset"), @"assetIsSecureMobileAsset"}];
  [v4 encodeBool:-[MAAutoAssetSummary secureMobileAssetIsPersonalized](self forKey:{"secureMobileAssetIsPersonalized"), @"secureMobileAssetIsPersonalized"}];
  [v4 encodeBool:-[MAAutoAssetSummary secureMobileAssetIsPrePersonalized](self forKey:{"secureMobileAssetIsPrePersonalized"), @"secureMobileAssetIsPrePersonalized"}];
  [v4 encodeBool:-[MAAutoAssetSummary secureMobileAssetIsGrafted](self forKey:{"secureMobileAssetIsGrafted"), @"secureMobileAssetIsGrafted"}];
  v7 = [(MAAutoAssetSummary *)self secureMobileAssetGraftPoint];
  [v4 encodeObject:v7 forKey:@"secureMobileAssetGraftPoint"];

  [v4 encodeInteger:-[MAAutoAssetSummary stageGroup](self forKey:{"stageGroup"), @"stageGroup"}];
  v8 = [(MAAutoAssetSummary *)self targetOS];
  [v4 encodeObject:v8 forKey:@"targetOSKey"];
}

- (BOOL)getStringsForSummaryProps:(id *)a3 isPersonalized:(id *)a4 isPrePersonalized:(id *)a5 isGrafted:(id *)a6 graftPoint:(id *)a7 stageGroup:(id *)a8 targetOS:(id *)a9
{
  if (a3)
  {
    v9 = a4 == 0;
  }

  else
  {
    v9 = 1;
  }

  v14 = v9 || a5 == 0 || a6 == 0 || a7 == 0 || a8 == 0 || a9 == 0;
  v15 = !v14;
  if (v14)
  {
    v27 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v33 = 0;
      _os_log_impl(&dword_197AD5000, v27, OS_LOG_TYPE_ERROR, "Invalid arguments passed to getStringsForSummaryProps", v33, 2u);
    }
  }

  else
  {
    *a3 = @"N/A";
    *a4 = @"N/A";
    *a5 = @"N/A";
    *a6 = @"N/A";
    *a7 = @"N/A";
    *a8 = @"N/A";
    *a9 = @"N/A";
    if ([(MAAutoAssetSummary *)self assetIsSecureMobileAsset])
    {
      *a3 = @"YES";
      if ([(MAAutoAssetSummary *)self secureMobileAssetIsPersonalized])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      *a4 = v23;
      if ([(MAAutoAssetSummary *)self secureMobileAssetIsPrePersonalized])
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      *a5 = v24;
      if ([(MAAutoAssetSummary *)self secureMobileAssetIsGrafted])
      {
        *a6 = @"YES";
        v25 = [(MAAutoAssetSummary *)self secureMobileAssetGraftPoint];
        if (v25)
        {
          v26 = [(MAAutoAssetSummary *)self secureMobileAssetGraftPoint];
          *a7 = v26;
        }

        else
        {
          *a7 = @"Unknown(error)";
        }
      }

      else
      {
        *a6 = @"NO";
      }
    }

    else
    {
      *a3 = @"NO";
    }

    if ([(MAAutoAssetSummary *)self assetIsStaged])
    {
      if ([(MAAutoAssetSummary *)self stageGroup]== 1)
      {
        v28 = @"REQUIRED";
      }

      else
      {
        v29 = [(MAAutoAssetSummary *)self stageGroup];
        v28 = @"UNKNOWN";
        if (v29 == 2)
        {
          v28 = @"OPTIONAL";
        }
      }

      *a8 = v28;
      v30 = [(MAAutoAssetSummary *)self targetOS];
      if (v30)
      {
        v31 = [(MAAutoAssetSummary *)self targetOS];
        *a9 = v31;
      }

      else
      {
        *a9 = @"Unknown";
      }
    }
  }

  return v15;
}

- (id)description
{
  v3 = @"N";
  v54 = @"N/A";
  v55[0] = @"N";
  v52 = @"N/A";
  v53 = @"N/A";
  v50 = @"N/A";
  v51 = @"N/A";
  v49 = @"N/A";
  [(MAAutoAssetSummary *)self getStringsForSummaryProps:v55 isPersonalized:&v54 isPrePersonalized:&v53 isGrafted:&v52 graftPoint:&v51 stageGroup:&v50 targetOS:&v49];
  v45 = v55[0];
  v44 = v54;
  v43 = v53;
  v42 = v52;
  v41 = v51;
  v48 = v50;
  v47 = v49;
  v38 = MEMORY[0x1E696AEC0];
  v40 = [(MAAutoAssetSummary *)self assetSelector];
  v39 = [v40 summary];
  v46 = [(MAAutoAssetSummary *)self assetRepresentationName];
  if ([(MAAutoAssetSummary *)self assetWasPatched])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  v37 = v4;
  if ([(MAAutoAssetSummary *)self assetIsStaged])
  {
    v3 = @"Y";
  }

  v5 = [(MAAutoAssetSummary *)self scheduledIntervalSecs];
  v6 = [(MAAutoAssetSummary *)self scheduledRemainingSecs];
  v7 = [(MAAutoAssetSummary *)self pushDelaySecs];
  v8 = [(MAAutoAssetSummary *)self activeClientCount];
  v9 = [(MAAutoAssetSummary *)self activeMonitorCount];
  v10 = [(MAAutoAssetSummary *)self maximumClientCount];
  v11 = [(MAAutoAssetSummary *)self totalClientCount];
  v12 = [(MAAutoAssetSummary *)self jobStatus];
  if (v12)
  {
    v13 = [(MAAutoAssetSummary *)self jobStatus];
    v14 = [v13 description];
    v15 = v3;
    v16 = v14;
    v35 = v11;
    v31 = v9;
    v33 = v10;
    v27 = v7;
    v29 = v8;
    v25 = v6;
    v18 = v41;
    v17 = v42;
    v19 = v43;
    v20 = v44;
    v21 = v45;
    v22 = v39;
    v23 = [v38 stringWithFormat:@">>>\n                   assetSelector: %@\n             assetRepresentation: %@\n                 assetWasPatched: %@\n                   assetIsStaged: %@\n              assetIsSecureAsset: %@\n       secureAssetIsPersonalized: %@\n    secureAssetIsPrePersonalized: %@\n      secureMobileAssetIsGrafted: %@\n     secureMobileAssetGraftPoint: %@\n           scheduledIntervalSecs: %ld\n          scheduledRemainingSecs: %ld\n                   pushDelaySecs: %ld\n               activeClientCount: %ld\n              activeMonitorCount: %ld\n              maximumClientCount: %ld\n                totalClientCount: %ld\n                      stageGroup: %@\n                 targetOSVersion: %@\n%@<<<]", v39, v46, v37, v15, v45, v44, v43, v42, v41, v5, v25, v27, v29, v31, v33, v35, v48, v47, v14];
  }

  else
  {
    v36 = v11;
    v32 = v9;
    v34 = v10;
    v28 = v7;
    v30 = v8;
    v26 = v6;
    v18 = v41;
    v17 = v42;
    v19 = v43;
    v20 = v44;
    v21 = v45;
    v22 = v39;
    v23 = [v38 stringWithFormat:@">>>\n                   assetSelector: %@\n             assetRepresentation: %@\n                 assetWasPatched: %@\n                   assetIsStaged: %@\n              assetIsSecureAsset: %@\n       secureAssetIsPersonalized: %@\n    secureAssetIsPrePersonalized: %@\n      secureMobileAssetIsGrafted: %@\n     secureMobileAssetGraftPoint: %@\n           scheduledIntervalSecs: %ld\n          scheduledRemainingSecs: %ld\n                   pushDelaySecs: %ld\n               activeClientCount: %ld\n              activeMonitorCount: %ld\n              maximumClientCount: %ld\n                totalClientCount: %ld\n                      stageGroup: %@\n                 targetOSVersion: %@\n%@<<<]", v39, v46, v37, v3, v45, v44, v43, v42, v41, v5, v26, v28, v30, v32, v34, v36, v48, v47, @"                       jobStatus: N\n"];
  }

  return v23;
}

- (id)summary
{
  v3 = [(MAAutoAssetSummary *)self assetSelector];
  v28 = [v3 summary];

  v27 = [(MAAutoAssetSummary *)self assetRepresentationName];
  if ([(MAAutoAssetSummary *)self assetWasPatched])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  v26 = v4;
  if ([(MAAutoAssetSummary *)self assetIsStaged])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v21 = v5;
  v6 = [(MAAutoAssetSummary *)self jobStatus];
  if (v6)
  {
    v7 = [(MAAutoAssetSummary *)self jobStatus];
    v25 = [v7 summary];
  }

  else
  {
    v25 = @"NONE";
  }

  v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary scheduledIntervalSecs](self, "scheduledIntervalSecs")];
  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary scheduledRemainingSecs](self, "scheduledRemainingSecs")];
  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary pushDelaySecs](self, "pushDelaySecs")];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary activeClientCount](self, "activeClientCount")];
  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary activeMonitorCount](self, "activeMonitorCount")];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary maximumClientCount](self, "maximumClientCount")];
  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary totalClientCount](self, "totalClientCount")];
  v34 = @"N/A";
  v35[0] = @"N";
  v32 = @"N/A";
  v33 = @"N/A";
  v30 = @"N/A";
  v31 = @"N/A";
  v29 = @"N/A";
  [(MAAutoAssetSummary *)self getStringsForSummaryProps:v35 isPersonalized:&v34 isPrePersonalized:&v33 isGrafted:&v32 graftPoint:&v31 stageGroup:&v30 targetOS:&v29];
  v8 = v35[0];
  v9 = v34;
  v10 = v33;
  v11 = v32;
  v12 = v31;
  v13 = v30;
  v14 = v29;
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"asset(%@)[%@]|patched:%@|staged:%@|secureMobileAsset:%@|personalized:%@|prePersonalized:%@|grafted:%@|graftPoint:%@|status:%@|interval:%@|remaining:%@|pushDelay:%@|clients:%@|monitors:%@|maxClients:%@|totalClients:%@|stageGroup:%@|targetOSVersion:%@", v28, v27, v26, v21, v8, v9, v10, v11, v12, v25, v24, v23, v22, v20, v19, v17, v16, v13, v14];

  return v18;
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = @"NO";
  v33 = @"NO";
  v30 = @"NO";
  v31 = @"NO";
  v28 = @"N/A";
  v29 = @"N/A";
  v27 = @"N/A";
  [(MAAutoAssetSummary *)self getStringsForSummaryProps:&v33 isPersonalized:&v32 isPrePersonalized:&v31 isGrafted:&v30 graftPoint:&v29 stageGroup:&v28 targetOS:&v27];
  v4 = v33;
  v5 = v32;
  v6 = v31;
  v7 = v30;
  v8 = v29;
  v26 = v28;
  v25 = v27;
  v9 = [(MAAutoAssetSummary *)self assetSelector];
  v10 = [v9 newSummaryDictionary];
  [v3 setSafeObject:v10 forKey:@"assetSelector"];

  v11 = [(MAAutoAssetSummary *)self assetRepresentationName];
  [v3 setSafeObject:v11 forKey:@"assetRepresentation"];

  if ([(MAAutoAssetSummary *)self assetWasPatched])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v3 setSafeObject:v12 forKey:@"assetWasPatched"];
  if ([(MAAutoAssetSummary *)self assetIsStaged])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v3 setSafeObject:v13 forKey:@"assetIsStaged"];
  [v3 setSafeObject:v4 forKey:@"assetIsSecureMobileAsset"];
  [v3 setSafeObject:v5 forKey:@"secureMobileAssetIsPersonalized"];
  [v3 setSafeObject:v6 forKey:@"secureMobileAssetIsPrePersonalized"];
  [v3 setSafeObject:v7 forKey:@"secureMobileAssetIsGrafted"];
  [v3 setSafeObject:v8 forKey:@"secureMobileAssetGraftPoint"];
  v14 = [(MAAutoAssetSummary *)self jobStatus];
  if (v14)
  {
    v15 = [(MAAutoAssetSummary *)self jobStatus];
    v16 = [v15 newSummaryDictionary];
    [v3 setSafeObject:v16 forKey:@"jobStatus"];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF20]);
    [v3 setSafeObject:v15 forKey:@"jobStatus"];
  }

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetSummary scheduledIntervalSecs](self, "scheduledIntervalSecs")}];
  [v3 setSafeObject:v17 forKey:@"scheduledIntervalSecs"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetSummary scheduledRemainingSecs](self, "scheduledRemainingSecs")}];
  [v3 setSafeObject:v18 forKey:@"scheduledRemainingSecs"];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetSummary pushDelaySecs](self, "pushDelaySecs")}];
  [v3 setSafeObject:v19 forKey:@"pushDelaySecs"];

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetSummary activeClientCount](self, "activeClientCount")}];
  [v3 setSafeObject:v20 forKey:@"activeClientCount"];

  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetSummary activeMonitorCount](self, "activeMonitorCount")}];
  [v3 setSafeObject:v21 forKey:@"activeMonitorCount"];

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetSummary maximumClientCount](self, "maximumClientCount")}];
  [v3 setSafeObject:v22 forKey:@"maximumClientCount"];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetSummary totalClientCount](self, "totalClientCount")}];
  [v3 setSafeObject:v23 forKey:@"totalClientCount"];

  [v3 setSafeObject:v26 forKey:@"stageGroup"];
  [v3 setSafeObject:v25 forKey:@"targetOSKey"];

  return v3;
}

- (void)summaryBuildMaxColumnStrings:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSummary *)self assetSelector];
  v6 = [v5 summary];

  v85 = [(MAAutoAssetSummary *)self assetRepresentationName];
  if ([(MAAutoAssetSummary *)self assetWasPatched])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v86 = v7;
  if ([(MAAutoAssetSummary *)self assetIsStaged])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v75 = v8;
  v9 = [(MAAutoAssetSummary *)self jobStatus];
  if (v9)
  {
    v10 = [(MAAutoAssetSummary *)self jobStatus];
    v84 = [v10 summary];
  }

  else
  {
    v84 = @"NONE";
  }

  v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary scheduledIntervalSecs](self, "scheduledIntervalSecs")];
  v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary scheduledRemainingSecs](self, "scheduledRemainingSecs")];
  v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary pushDelaySecs](self, "pushDelaySecs")];
  v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary activeClientCount](self, "activeClientCount")];
  v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary activeMonitorCount](self, "activeMonitorCount")];
  v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary maximumClientCount](self, "maximumClientCount")];
  v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary totalClientCount](self, "totalClientCount")];
  v92 = @"NO";
  v93[0] = @"NO";
  v90 = @"NO";
  v91 = @"NO";
  v88 = @"N/A";
  v89 = @"N/A";
  v87 = @"N/A";
  [(MAAutoAssetSummary *)self getStringsForSummaryProps:v93 isPersonalized:&v92 isPrePersonalized:&v91 isGrafted:&v90 graftPoint:&v89 stageGroup:&v88 targetOS:&v87];
  v76 = v93[0];
  v11 = v92;
  v12 = v91;
  v13 = v90;
  v14 = v89;
  v15 = v88;
  v16 = v87;
  v74 = v6;
  v17 = [v6 length];
  v18 = [v4 safeStringForKey:@"assetSelector"];
  v19 = [v18 length];

  if (v17 > v19)
  {
    [v4 setSafeObject:v74 forKey:@"assetSelector"];
  }

  v20 = [v85 length];
  v21 = [v4 safeStringForKey:@"assetRepresentation"];
  v22 = [v21 length];

  if (v20 > v22)
  {
    [v4 setSafeObject:v85 forKey:@"assetRepresentation"];
  }

  v23 = [(__CFString *)v86 length];
  v24 = [v4 safeStringForKey:@"assetWasPatched"];
  v25 = [v24 length];

  if (v23 > v25)
  {
    [v4 setSafeObject:v86 forKey:@"assetWasPatched"];
  }

  v26 = [(__CFString *)v75 length];
  v27 = [v4 safeStringForKey:@"assetIsStaged"];
  v28 = [v27 length];

  if (v26 > v28)
  {
    [v4 setSafeObject:v86 forKey:@"assetIsStaged"];
  }

  v29 = [(__CFString *)v76 length];
  v30 = [v4 safeStringForKey:@"assetIsSecureMobileAsset"];
  v31 = [v30 length];

  if (v29 > v31)
  {
    [v4 setSafeObject:v76 forKey:@"assetIsSecureMobileAsset"];
  }

  v32 = [(__CFString *)v11 length];
  v33 = [v4 safeStringForKey:@"secureMobileAssetIsPersonalized"];
  v34 = [v33 length];

  if (v32 > v34)
  {
    [v4 setSafeObject:v11 forKey:@"secureMobileAssetIsPersonalized"];
  }

  v35 = [(__CFString *)v12 length];
  v36 = [v4 safeStringForKey:@"secureMobileAssetIsPrePersonalized"];
  v37 = [v36 length];

  if (v35 > v37)
  {
    [v4 setSafeObject:v12 forKey:@"secureMobileAssetIsPrePersonalized"];
  }

  v38 = [(__CFString *)v13 length];
  v39 = [v4 safeStringForKey:@"secureMobileAssetIsGrafted"];
  v40 = [v39 length];

  if (v38 > v40)
  {
    [v4 setSafeObject:v13 forKey:@"secureMobileAssetIsGrafted"];
  }

  v41 = [(__CFString *)v14 length];
  v42 = [v4 safeStringForKey:@"secureMobileAssetGraftPoint"];
  v43 = [v42 length];

  if (v41 > v43)
  {
    [v4 setSafeObject:v14 forKey:@"secureMobileAssetGraftPoint"];
  }

  v44 = [(__CFString *)v84 length];
  v45 = [v4 safeStringForKey:@"jobStatus"];
  v46 = [v45 length];

  if (v44 > v46)
  {
    [v4 setSafeObject:v84 forKey:@"jobStatus"];
  }

  v47 = [v83 length];
  v48 = [v4 safeStringForKey:@"scheduledIntervalSecs"];
  v49 = [v48 length];

  if (v47 > v49)
  {
    [v4 setSafeObject:v83 forKey:@"scheduledIntervalSecs"];
  }

  v50 = [v82 length];
  v51 = [v4 safeStringForKey:@"scheduledRemainingSecs"];
  v52 = [v51 length];

  if (v50 > v52)
  {
    [v4 setSafeObject:v82 forKey:@"scheduledRemainingSecs"];
  }

  v53 = [v81 length];
  v54 = [v4 safeStringForKey:@"pushDelaySecs"];
  v55 = [v54 length];

  if (v53 > v55)
  {
    [v4 setSafeObject:v81 forKey:@"pushDelaySecs"];
  }

  v56 = [v80 length];
  v57 = [v4 safeStringForKey:@"activeClientCount"];
  v58 = [v57 length];

  if (v56 > v58)
  {
    [v4 setSafeObject:v80 forKey:@"activeClientCount"];
  }

  v59 = [v79 length];
  v60 = [v4 safeStringForKey:@"activeMonitorCount"];
  v61 = [v60 length];

  if (v59 > v61)
  {
    [v4 setSafeObject:v79 forKey:@"activeMonitorCount"];
  }

  v62 = [v78 length];
  v63 = [v4 safeStringForKey:@"maximumClientCount"];
  v64 = [v63 length];

  if (v62 > v64)
  {
    [v4 setSafeObject:v78 forKey:@"maximumClientCount"];
  }

  v65 = [v77 length];
  v66 = [v4 safeStringForKey:@"totalClientCount"];
  v67 = [v66 length];

  if (v65 > v67)
  {
    [v4 setSafeObject:v77 forKey:@"totalClientCount"];
  }

  v68 = [(__CFString *)v15 length];
  v69 = [v4 safeStringForKey:@"stageGroup"];
  v70 = [v69 length];

  if (v68 < v70)
  {
    [v4 setSafeObject:v15 forKey:@"stageGroup"];
  }

  v71 = [(__CFString *)v16 length];
  v72 = [v4 safeStringForKey:@"targetOSKey"];
  v73 = [v72 length];

  if (v71 < v73)
  {
    [v4 setSafeObject:v16 forKey:@"targetOSKey"];
  }
}

- (id)summaryPadded:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSummary *)self assetSelector];
  v6 = [v5 summary];

  v60 = [(MAAutoAssetSummary *)self assetRepresentationName];
  if ([(MAAutoAssetSummary *)self assetWasPatched])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v61 = v7;
  if ([(MAAutoAssetSummary *)self assetIsStaged])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v69 = v8;
  v9 = [(MAAutoAssetSummary *)self jobStatus];
  if (v9)
  {
    v10 = [(MAAutoAssetSummary *)self jobStatus];
    v70 = [v10 summary];
  }

  else
  {
    v70 = @"NONE";
  }

  v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary scheduledIntervalSecs](self, "scheduledIntervalSecs")];
  v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary scheduledRemainingSecs](self, "scheduledRemainingSecs")];
  v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary pushDelaySecs](self, "pushDelaySecs")];
  v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary activeClientCount](self, "activeClientCount")];
  v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary activeMonitorCount](self, "activeMonitorCount")];
  v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary maximumClientCount](self, "maximumClientCount")];
  v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSummary totalClientCount](self, "totalClientCount")];
  v76 = @"NO";
  v77[0] = @"NO";
  v74 = @"NO";
  v75 = @"NO";
  v72 = @"N/A";
  v73 = @"N/A";
  v71 = @"N/A";
  [(MAAutoAssetSummary *)self getStringsForSummaryProps:v77 isPersonalized:&v76 isPrePersonalized:&v75 isGrafted:&v74 graftPoint:&v73 stageGroup:&v72 targetOS:&v71];
  v46 = v77[0];
  v44 = v76;
  v42 = v75;
  v40 = v74;
  v38 = v73;
  v59 = v72;
  v34 = v71;
  v36 = MEMORY[0x1E696AEC0];
  v48 = [v4 safeStringForKey:@"assetSelector"];
  v31 = v6;
  v58 = [MAAutoAssetSummary summaryPaddedString:v6 paddingToLenghtOfString:v48 paddingWith:@" " paddingBefore:0];
  v47 = [v4 safeStringForKey:@"assetRepresentation"];
  v57 = [MAAutoAssetSummary summaryPaddedString:v60 paddingToLenghtOfString:v47 paddingWith:@" " paddingBefore:0];
  v45 = [v4 safeStringForKey:@"assetWasPatched"];
  v56 = [MAAutoAssetSummary summaryPaddedString:v61 paddingToLenghtOfString:v45 paddingWith:@" " paddingBefore:0];
  v43 = [v4 safeStringForKey:@"assetIsStaged"];
  v55 = [MAAutoAssetSummary summaryPaddedString:v69 paddingToLenghtOfString:v43 paddingWith:@" " paddingBefore:0];
  v41 = [v4 safeStringForKey:@"assetIsSecureMobileAsset"];
  v54 = [MAAutoAssetSummary summaryPaddedString:v46 paddingToLenghtOfString:v41 paddingWith:@" " paddingBefore:0];
  v39 = [v4 safeStringForKey:@"secureMobileAssetIsPersonalized"];
  v53 = [MAAutoAssetSummary summaryPaddedString:v44 paddingToLenghtOfString:v39 paddingWith:@" " paddingBefore:0];
  v35 = [v4 safeStringForKey:@"secureMobileAssetIsPrePersonalized"];
  v52 = [MAAutoAssetSummary summaryPaddedString:v42 paddingToLenghtOfString:v35 paddingWith:@" " paddingBefore:0];
  v33 = [v4 safeStringForKey:@"secureMobileAssetIsGrafted"];
  v50 = [MAAutoAssetSummary summaryPaddedString:v40 paddingToLenghtOfString:v33 paddingWith:@" " paddingBefore:0];
  v32 = [v4 safeStringForKey:@"secureMobileAssetGraftPoint"];
  v51 = [MAAutoAssetSummary summaryPaddedString:v38 paddingToLenghtOfString:v32 paddingWith:@" " paddingBefore:0];
  v30 = [v4 safeStringForKey:@"jobStatus"];
  v25 = [MAAutoAssetSummary summaryPaddedString:v70 paddingToLenghtOfString:v30 paddingWith:@" " paddingBefore:0];
  v29 = [v4 safeStringForKey:@"scheduledIntervalSecs"];
  v24 = [MAAutoAssetSummary summaryPaddedString:v63 paddingToLenghtOfString:v29 paddingWith:@" " paddingBefore:1];
  v28 = [v4 safeStringForKey:@"scheduledRemainingSecs"];
  v49 = [MAAutoAssetSummary summaryPaddedString:v68 paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:1];
  v27 = [v4 safeStringForKey:@"pushDelaySecs"];
  v19 = [MAAutoAssetSummary summaryPaddedString:v67 paddingToLenghtOfString:v27 paddingWith:@" " paddingBefore:1];
  v26 = [v4 safeStringForKey:@"activeClientCount"];
  v21 = [MAAutoAssetSummary summaryPaddedString:v66 paddingToLenghtOfString:v26 paddingWith:@" " paddingBefore:1];
  v23 = [v4 safeStringForKey:@"activeMonitorCount"];
  v11 = [MAAutoAssetSummary summaryPaddedString:v65 paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:1];
  v22 = [v4 safeStringForKey:@"maximumClientCount"];
  v12 = [MAAutoAssetSummary summaryPaddedString:v64 paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:1];
  v20 = [v4 safeStringForKey:@"totalClientCount"];
  v13 = [MAAutoAssetSummary summaryPaddedString:v62 paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:1];
  v14 = [v4 safeStringForKey:@"stageGroup"];
  v15 = [MAAutoAssetSummary summaryPaddedString:v59 paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:1];
  v16 = [v4 safeStringForKey:@"targetOSKey"];

  v17 = [MAAutoAssetSummary summaryPaddedString:v34 paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:1];

  v37 = [v36 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v58, v57, v56, v55, v54, v53, v52, v50, v51, v25, v24, v49, v19, v21, v11, v12, v13, v15, v17];

  return v37;
}

- (id)assetRepresentationName
{
  v2 = [(MAAutoAssetSummary *)self assetRepresentation];

  return [MAAutoAssetSummary assetRepresentationName:v2];
}

+ (id)assetRepresentationName:(int64_t)a3
{
  v3 = @"UNKNOWN";
  if (a3 > 400)
  {
    v4 = @"AvailableForStaging";
    v8 = @"BeingStaged";
    v9 = @"Staged";
    if (a3 != 603)
    {
      v9 = @"UNKNOWN";
    }

    if (a3 != 602)
    {
      v8 = v9;
    }

    if (a3 != 601)
    {
      v4 = v8;
    }

    if (a3 == 600)
    {
      v3 = @"CandidateForStaging";
    }

    if (a3 == 500)
    {
      v3 = @"VersionDownloaded";
    }

    if (a3 == 401)
    {
      v3 = @"ScheduledPushed";
    }

    v7 = a3 <= 600;
  }

  else
  {
    v4 = @"AwaitingUnlock";
    v5 = @"Active";
    v6 = @"Scheduled";
    if (a3 != 400)
    {
      v6 = @"UNKNOWN";
    }

    if (a3 != 300)
    {
      v5 = v6;
    }

    if (a3 != 201)
    {
      v4 = v5;
    }

    if (a3 == 200)
    {
      v3 = @"AwaitingSync";
    }

    if (a3 == 100)
    {
      v3 = @"Monitor";
    }

    if (!a3)
    {
      v3 = @"None";
    }

    v7 = a3 <= 200;
  }

  if (v7)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (id)summaryNewMaxColumnStrings
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setSafeObject:@"assetSelector" forKey:@"assetSelector"];
  [v2 setSafeObject:@"assetRepresentation" forKey:@"assetRepresentation"];
  [v2 setSafeObject:@"assetWasPatched" forKey:@"assetWasPatched"];
  [v2 setSafeObject:@"assetIsStaged" forKey:@"assetIsStaged"];
  [v2 setSafeObject:@"assetIsSecureMobileAsset" forKey:@"assetIsSecureMobileAsset"];
  [v2 setSafeObject:@"secureMobileAssetIsPersonalized" forKey:@"secureMobileAssetIsPersonalized"];
  [v2 setSafeObject:@"secureMobileAssetIsPrePersonalized" forKey:@"secureMobileAssetIsPrePersonalized"];
  [v2 setSafeObject:@"secureMobileAssetIsGrafted" forKey:@"secureMobileAssetIsGrafted"];
  [v2 setSafeObject:@"secureMobileAssetGraftPoint" forKey:@"secureMobileAssetGraftPoint"];
  [v2 setSafeObject:@"jobStatus" forKey:@"jobStatus"];
  [v2 setSafeObject:@"scheduledIntervalSecs" forKey:@"scheduledIntervalSecs"];
  [v2 setSafeObject:@"scheduledRemainingSecs" forKey:@"scheduledRemainingSecs"];
  [v2 setSafeObject:@"activeClientCount" forKey:@"activeClientCount"];
  [v2 setSafeObject:@"activeMonitorCount" forKey:@"activeMonitorCount"];
  [v2 setSafeObject:@"maximumClientCount" forKey:@"maximumClientCount"];
  [v2 setSafeObject:@"totalClientCount" forKey:@"totalClientCount"];
  [v2 setSafeObject:@"stageGroup" forKey:@"stageGroup"];
  [v2 setSafeObject:@"targetOSKey" forKey:@"targetOSKey"];

  return v2;
}

+ (id)summaryPaddedString:(id)a3 paddingToLenghtOfString:(id)a4 paddingWith:(id)a5 paddingBefore:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  v13 = [v12 length];
  v14 = v12;
  if (v13 < [v10 length])
  {
    v15 = [v10 length];
    v16 = v15 - [v12 length];
    v17 = [MEMORY[0x1E696AEC0] string];
    v18 = [v17 stringByPaddingToLength:v16 withString:v11 startingAtIndex:0];

    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v6)
    {
      v20 = [v19 initWithFormat:@"%@%@", v18, v12];
    }

    else
    {
      v20 = [v19 initWithFormat:@"%@%@", v12, v18];
    }

    v14 = v20;
  }

  return v14;
}

+ (id)summaryPaddedHeader:(id)a3
{
  v26 = MEMORY[0x1E696AEC0];
  v3 = a3;
  v33 = [v3 safeStringForKey:@"assetSelector"];
  v42 = [MAAutoAssetSummary summaryPaddedString:@"assetSelector" paddingToLenghtOfString:v33 paddingWith:@" " paddingBefore:0];
  v32 = [v3 safeStringForKey:@"assetRepresentation"];
  v41 = [MAAutoAssetSummary summaryPaddedString:@"assetRepresentation" paddingToLenghtOfString:v32 paddingWith:@" " paddingBefore:0];
  v31 = [v3 safeStringForKey:@"assetWasPatched"];
  v40 = [MAAutoAssetSummary summaryPaddedString:@"assetWasPatched" paddingToLenghtOfString:v31 paddingWith:@" " paddingBefore:0];
  v30 = [v3 safeStringForKey:@"assetIsStaged"];
  v39 = [MAAutoAssetSummary summaryPaddedString:@"assetIsStaged" paddingToLenghtOfString:v30 paddingWith:@" " paddingBefore:0];
  v29 = [v3 safeStringForKey:@"assetIsSecureMobileAsset"];
  v38 = [MAAutoAssetSummary summaryPaddedString:@"assetIsSecureMobileAsset" paddingToLenghtOfString:v29 paddingWith:@" " paddingBefore:0];
  v28 = [v3 safeStringForKey:@"secureMobileAssetIsPersonalized"];
  v37 = [MAAutoAssetSummary summaryPaddedString:@"secureMobileAssetIsPersonalized" paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:0];
  v25 = [v3 safeStringForKey:@"secureMobileAssetIsPrePersonalized"];
  v36 = [MAAutoAssetSummary summaryPaddedString:@"secureMobileAssetIsPrePersonalized" paddingToLenghtOfString:v25 paddingWith:@" " paddingBefore:0];
  v24 = [v3 safeStringForKey:@"secureMobileAssetIsGrafted"];
  v35 = [MAAutoAssetSummary summaryPaddedString:@"secureMobileAssetIsGrafted" paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:0];
  v23 = [v3 safeStringForKey:@"secureMobileAssetGraftPoint"];
  v34 = [MAAutoAssetSummary summaryPaddedString:@"secureMobileAssetGraftPoint" paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:0];
  v22 = [v3 safeStringForKey:@"jobStatus"];
  v18 = [MAAutoAssetSummary summaryPaddedString:@"jobStatus" paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:0];
  v21 = [v3 safeStringForKey:@"scheduledIntervalSecs"];
  v16 = [MAAutoAssetSummary summaryPaddedString:@"scheduledIntervalSecs" paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:0];
  v20 = [v3 safeStringForKey:@"scheduledRemainingSecs"];
  v14 = [MAAutoAssetSummary summaryPaddedString:@"scheduledRemainingSecs" paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:0];
  v19 = [v3 safeStringForKey:@"activeClientCount"];
  v13 = [MAAutoAssetSummary summaryPaddedString:@"activeClientCount" paddingToLenghtOfString:v19 paddingWith:@" " paddingBefore:0];
  v17 = [v3 safeStringForKey:@"activeMonitorCount"];
  v11 = [MAAutoAssetSummary summaryPaddedString:@"activeMonitorCount" paddingToLenghtOfString:v17 paddingWith:@" " paddingBefore:0];
  v15 = [v3 safeStringForKey:@"maximumClientCount"];
  v10 = [MAAutoAssetSummary summaryPaddedString:@"maximumClientCount" paddingToLenghtOfString:v15 paddingWith:@" " paddingBefore:0];
  v12 = [v3 safeStringForKey:@"totalClientCount"];
  v4 = [MAAutoAssetSummary summaryPaddedString:@"totalClientCount" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v5 = [v3 safeStringForKey:@"stageGroup"];
  v6 = [MAAutoAssetSummary summaryPaddedString:@"stageGroup" paddingToLenghtOfString:v5 paddingWith:@" " paddingBefore:0];
  v7 = [v3 safeStringForKey:@"targetOSKey"];

  v8 = [MAAutoAssetSummary summaryPaddedString:@"targetOSKey" paddingToLenghtOfString:v7 paddingWith:@" " paddingBefore:0];
  v27 = [v26 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v42, v41, v40, v39, v38, v37, v36, v35, v34, v18, v16, v14, v13, v11, v10, v4, v6, v8];

  return v27;
}

+ (id)summaryPaddedBanner:(id)a3
{
  v25 = MEMORY[0x1E696AEC0];
  v3 = a3;
  v32 = [v3 safeStringForKey:@"assetSelector"];
  v42 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v32 paddingWith:@"=" paddingBefore:0];
  v31 = [v3 safeStringForKey:@"assetRepresentation"];
  v41 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v31 paddingWith:@"=" paddingBefore:0];
  v30 = [v3 safeStringForKey:@"assetWasPatched"];
  v40 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v30 paddingWith:@"=" paddingBefore:0];
  v29 = [v3 safeStringForKey:@"assetIsStaged"];
  v39 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v29 paddingWith:@"=" paddingBefore:0];
  v28 = [v3 safeStringForKey:@"assetIsSecureMobileAsset"];
  v38 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v28 paddingWith:@"=" paddingBefore:0];
  v27 = [v3 safeStringForKey:@"secureMobileAssetIsPersonalized"];
  v37 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v27 paddingWith:@"=" paddingBefore:0];
  v24 = [v3 safeStringForKey:@"secureMobileAssetIsPrePersonalized"];
  v36 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v24 paddingWith:@"=" paddingBefore:0];
  v23 = [v3 safeStringForKey:@"secureMobileAssetIsGrafted"];
  v35 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v23 paddingWith:@"=" paddingBefore:0];
  v22 = [v3 safeStringForKey:@"secureMobileAssetGraftPoint"];
  v34 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v22 paddingWith:@"=" paddingBefore:0];
  v21 = [v3 safeStringForKey:@"jobStatus"];
  v17 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v21 paddingWith:@"=" paddingBefore:0];
  v20 = [v3 safeStringForKey:@"scheduledIntervalSecs"];
  v33 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v20 paddingWith:@"=" paddingBefore:0];
  v19 = [v3 safeStringForKey:@"scheduledRemainingSecs"];
  v14 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v19 paddingWith:@"=" paddingBefore:0];
  v18 = [v3 safeStringForKey:@"activeClientCount"];
  v13 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v18 paddingWith:@"=" paddingBefore:0];
  v16 = [v3 safeStringForKey:@"activeMonitorCount"];
  v4 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v16 paddingWith:@"=" paddingBefore:0];
  v15 = [v3 safeStringForKey:@"maximumClientCount"];
  v5 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v15 paddingWith:@"=" paddingBefore:0];
  v12 = [v3 safeStringForKey:@"totalClientCount"];
  v6 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v12 paddingWith:@"=" paddingBefore:0];
  v7 = [v3 safeStringForKey:@"stageGroup"];
  v8 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v7 paddingWith:@"=" paddingBefore:0];
  v9 = [v3 safeStringForKey:@"targetOSKey"];

  v10 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v9 paddingWith:@"=" paddingBefore:0];
  v26 = [v25 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v42, v41, v40, v39, v38, v37, v36, v35, v34, v17, v33, v14, v13, v4, v5, v6, v8, v10];

  return v26;
}

@end