@interface MAAutoAssetSummary
+ (id)assetRepresentationName:(int64_t)name;
+ (id)summaryNewMaxColumnStrings;
+ (id)summaryPaddedBanner:(id)banner;
+ (id)summaryPaddedHeader:(id)header;
+ (id)summaryPaddedString:(id)string paddingToLenghtOfString:(id)ofString paddingWith:(id)with paddingBefore:(BOOL)before;
- (BOOL)getStringsForSummaryProps:(id *)props isPersonalized:(id *)personalized isPrePersonalized:(id *)prePersonalized isGrafted:(id *)grafted graftPoint:(id *)point stageGroup:(id *)group targetOS:(id *)s;
- (MAAutoAssetSummary)initWithAssetSelector:(id)selector withAssetRepresentation:(int64_t)representation withAssetWasPatched:(BOOL)patched withAssetIsStaged:(BOOL)staged withJobStatus:(id)status withScheduledIntervalSecs:(int64_t)secs withScheduledRemainingSecs:(int64_t)remainingSecs withPushDelaySecs:(int64_t)self0 withActiveClientCount:(int64_t)self1 withActiveMonitorCount:(int64_t)self2 withMaximumClientCount:(int64_t)self3 withTotalClientCount:(int64_t)self4;
- (MAAutoAssetSummary)initWithAssetSelector:(id)selector withAssetRepresentation:(int64_t)representation withAssetWasPatched:(BOOL)patched withAssetIsStaged:(BOOL)staged withJobStatus:(id)status withScheduledIntervalSecs:(int64_t)secs withScheduledRemainingSecs:(int64_t)remainingSecs withPushDelaySecs:(int64_t)self0 withActiveClientCount:(int64_t)self1 withActiveMonitorCount:(int64_t)self2 withMaximumClientCount:(int64_t)self3 withTotalClientCount:(int64_t)self4 withIsSecureMobileAsset:(BOOL)self5 withPersonalizationStatus:(BOOL)self6 withPrePersonalizationStatus:(BOOL)self7 withGraftStatus:(BOOL)self8 withGraftPoint:(id)self9 withStageGroupType:(unint64_t)type withTargetOS:(id)s;
- (MAAutoAssetSummary)initWithCoder:(id)coder;
- (id)assetRepresentationName;
- (id)description;
- (id)newSummaryDictionary;
- (id)summary;
- (id)summaryPadded:(id)padded;
- (void)encodeWithCoder:(id)coder;
- (void)summaryBuildMaxColumnStrings:(id)strings;
@end

@implementation MAAutoAssetSummary

- (MAAutoAssetSummary)initWithAssetSelector:(id)selector withAssetRepresentation:(int64_t)representation withAssetWasPatched:(BOOL)patched withAssetIsStaged:(BOOL)staged withJobStatus:(id)status withScheduledIntervalSecs:(int64_t)secs withScheduledRemainingSecs:(int64_t)remainingSecs withPushDelaySecs:(int64_t)self0 withActiveClientCount:(int64_t)self1 withActiveMonitorCount:(int64_t)self2 withMaximumClientCount:(int64_t)self3 withTotalClientCount:(int64_t)self4
{
  selectorCopy = selector;
  statusCopy = status;
  v26.receiver = self;
  v26.super_class = MAAutoAssetSummary;
  v23 = [(MAAutoAssetSummary *)&v26 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_assetSelector, selector);
    v24->_assetRepresentation = representation;
    v24->_assetWasPatched = patched;
    v24->_assetIsStaged = staged;
    objc_storeStrong(&v24->_jobStatus, status);
    v24->_scheduledIntervalSecs = secs;
    v24->_scheduledRemainingSecs = remainingSecs;
    v24->_pushDelaySecs = delaySecs;
    v24->_activeClientCount = count;
    v24->_activeMonitorCount = monitorCount;
    v24->_maximumClientCount = clientCount;
    v24->_totalClientCount = totalClientCount;
  }

  return v24;
}

- (MAAutoAssetSummary)initWithAssetSelector:(id)selector withAssetRepresentation:(int64_t)representation withAssetWasPatched:(BOOL)patched withAssetIsStaged:(BOOL)staged withJobStatus:(id)status withScheduledIntervalSecs:(int64_t)secs withScheduledRemainingSecs:(int64_t)remainingSecs withPushDelaySecs:(int64_t)self0 withActiveClientCount:(int64_t)self1 withActiveMonitorCount:(int64_t)self2 withMaximumClientCount:(int64_t)self3 withTotalClientCount:(int64_t)self4 withIsSecureMobileAsset:(BOOL)self5 withPersonalizationStatus:(BOOL)self6 withPrePersonalizationStatus:(BOOL)self7 withGraftStatus:(BOOL)self8 withGraftPoint:(id)self9 withStageGroupType:(unint64_t)type withTargetOS:(id)s
{
  selectorCopy = selector;
  statusCopy = status;
  pointCopy = point;
  sCopy = s;
  v35.receiver = self;
  v35.super_class = MAAutoAssetSummary;
  v29 = [(MAAutoAssetSummary *)&v35 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_assetSelector, selector);
    v30->_assetRepresentation = representation;
    v30->_assetWasPatched = patched;
    v30->_assetIsStaged = staged;
    objc_storeStrong(&v30->_jobStatus, status);
    v30->_scheduledIntervalSecs = secs;
    v30->_scheduledRemainingSecs = remainingSecs;
    v30->_pushDelaySecs = delaySecs;
    v30->_activeClientCount = count;
    v30->_activeMonitorCount = monitorCount;
    v30->_maximumClientCount = clientCount;
    v30->_totalClientCount = totalClientCount;
    v30->_assetIsSecureMobileAsset = asset;
    v30->_secureMobileAssetIsPersonalized = personalizationStatus;
    v30->_secureMobileAssetIsPrePersonalized = prePersonalizationStatus;
    v30->_secureMobileAssetIsGrafted = graftStatus;
    objc_storeStrong(&v30->_secureMobileAssetGraftPoint, point);
    v30->_stageGroup = type;
    objc_storeStrong(&v30->_targetOS, s);
  }

  return v30;
}

- (MAAutoAssetSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MAAutoAssetSummary;
  v5 = [(MAAutoAssetSummary *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v6;

    v5->_assetRepresentation = [coderCopy decodeInt64ForKey:@"assetRepresentation"];
    v5->_assetWasPatched = [coderCopy decodeBoolForKey:@"assetWasPatched"];
    v5->_assetIsStaged = [coderCopy decodeBoolForKey:@"assetIsStaged"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"jobStatus"];
    jobStatus = v5->_jobStatus;
    v5->_jobStatus = v8;

    v5->_scheduledIntervalSecs = [coderCopy decodeIntegerForKey:@"scheduledIntervalSecs"];
    v5->_scheduledRemainingSecs = [coderCopy decodeIntegerForKey:@"scheduledRemainingSecs"];
    v5->_pushDelaySecs = [coderCopy decodeIntegerForKey:@"pushDelaySecs"];
    v5->_activeClientCount = [coderCopy decodeIntegerForKey:@"activeClientCount"];
    v5->_activeMonitorCount = [coderCopy decodeIntegerForKey:@"activeMonitorCount"];
    v5->_maximumClientCount = [coderCopy decodeIntegerForKey:@"maximumClientCount"];
    v5->_totalClientCount = [coderCopy decodeIntegerForKey:@"totalClientCount"];
    v5->_assetIsSecureMobileAsset = [coderCopy decodeBoolForKey:@"assetIsSecureMobileAsset"];
    v5->_secureMobileAssetIsPersonalized = [coderCopy decodeBoolForKey:@"secureMobileAssetIsPersonalized"];
    v5->_secureMobileAssetIsPrePersonalized = [coderCopy decodeBoolForKey:@"secureMobileAssetIsPrePersonalized"];
    v5->_secureMobileAssetIsGrafted = [coderCopy decodeBoolForKey:@"secureMobileAssetIsGrafted"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureMobileAssetGraftPoint"];
    secureMobileAssetGraftPoint = v5->_secureMobileAssetGraftPoint;
    v5->_secureMobileAssetGraftPoint = v10;

    v5->_stageGroup = [coderCopy decodeIntegerForKey:@"stageGroup"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetOSKey"];
    targetOS = v5->_targetOS;
    v5->_targetOS = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetSelector = [(MAAutoAssetSummary *)self assetSelector];
  [coderCopy encodeObject:assetSelector forKey:@"assetSelector"];

  [coderCopy encodeInteger:-[MAAutoAssetSummary assetRepresentation](self forKey:{"assetRepresentation"), @"assetRepresentation"}];
  [coderCopy encodeBool:-[MAAutoAssetSummary assetWasPatched](self forKey:{"assetWasPatched"), @"assetWasPatched"}];
  [coderCopy encodeBool:-[MAAutoAssetSummary assetIsStaged](self forKey:{"assetIsStaged"), @"assetIsStaged"}];
  jobStatus = [(MAAutoAssetSummary *)self jobStatus];
  [coderCopy encodeObject:jobStatus forKey:@"jobStatus"];

  [coderCopy encodeInteger:-[MAAutoAssetSummary scheduledIntervalSecs](self forKey:{"scheduledIntervalSecs"), @"scheduledIntervalSecs"}];
  [coderCopy encodeInteger:-[MAAutoAssetSummary pushDelaySecs](self forKey:{"pushDelaySecs"), @"pushDelaySecs"}];
  [coderCopy encodeInteger:-[MAAutoAssetSummary scheduledRemainingSecs](self forKey:{"scheduledRemainingSecs"), @"scheduledRemainingSecs"}];
  [coderCopy encodeInteger:-[MAAutoAssetSummary activeClientCount](self forKey:{"activeClientCount"), @"activeClientCount"}];
  [coderCopy encodeInteger:-[MAAutoAssetSummary activeMonitorCount](self forKey:{"activeMonitorCount"), @"activeMonitorCount"}];
  [coderCopy encodeInteger:-[MAAutoAssetSummary maximumClientCount](self forKey:{"maximumClientCount"), @"maximumClientCount"}];
  [coderCopy encodeInteger:-[MAAutoAssetSummary totalClientCount](self forKey:{"totalClientCount"), @"totalClientCount"}];
  [coderCopy encodeBool:-[MAAutoAssetSummary assetIsSecureMobileAsset](self forKey:{"assetIsSecureMobileAsset"), @"assetIsSecureMobileAsset"}];
  [coderCopy encodeBool:-[MAAutoAssetSummary secureMobileAssetIsPersonalized](self forKey:{"secureMobileAssetIsPersonalized"), @"secureMobileAssetIsPersonalized"}];
  [coderCopy encodeBool:-[MAAutoAssetSummary secureMobileAssetIsPrePersonalized](self forKey:{"secureMobileAssetIsPrePersonalized"), @"secureMobileAssetIsPrePersonalized"}];
  [coderCopy encodeBool:-[MAAutoAssetSummary secureMobileAssetIsGrafted](self forKey:{"secureMobileAssetIsGrafted"), @"secureMobileAssetIsGrafted"}];
  secureMobileAssetGraftPoint = [(MAAutoAssetSummary *)self secureMobileAssetGraftPoint];
  [coderCopy encodeObject:secureMobileAssetGraftPoint forKey:@"secureMobileAssetGraftPoint"];

  [coderCopy encodeInteger:-[MAAutoAssetSummary stageGroup](self forKey:{"stageGroup"), @"stageGroup"}];
  targetOS = [(MAAutoAssetSummary *)self targetOS];
  [coderCopy encodeObject:targetOS forKey:@"targetOSKey"];
}

- (BOOL)getStringsForSummaryProps:(id *)props isPersonalized:(id *)personalized isPrePersonalized:(id *)prePersonalized isGrafted:(id *)grafted graftPoint:(id *)point stageGroup:(id *)group targetOS:(id *)s
{
  if (props)
  {
    v9 = personalized == 0;
  }

  else
  {
    v9 = 1;
  }

  v14 = v9 || prePersonalized == 0 || grafted == 0 || point == 0 || group == 0 || s == 0;
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
    *props = @"N/A";
    *personalized = @"N/A";
    *prePersonalized = @"N/A";
    *grafted = @"N/A";
    *point = @"N/A";
    *group = @"N/A";
    *s = @"N/A";
    if ([(MAAutoAssetSummary *)self assetIsSecureMobileAsset])
    {
      *props = @"YES";
      if ([(MAAutoAssetSummary *)self secureMobileAssetIsPersonalized])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      *personalized = v23;
      if ([(MAAutoAssetSummary *)self secureMobileAssetIsPrePersonalized])
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      *prePersonalized = v24;
      if ([(MAAutoAssetSummary *)self secureMobileAssetIsGrafted])
      {
        *grafted = @"YES";
        secureMobileAssetGraftPoint = [(MAAutoAssetSummary *)self secureMobileAssetGraftPoint];
        if (secureMobileAssetGraftPoint)
        {
          secureMobileAssetGraftPoint2 = [(MAAutoAssetSummary *)self secureMobileAssetGraftPoint];
          *point = secureMobileAssetGraftPoint2;
        }

        else
        {
          *point = @"Unknown(error)";
        }
      }

      else
      {
        *grafted = @"NO";
      }
    }

    else
    {
      *props = @"NO";
    }

    if ([(MAAutoAssetSummary *)self assetIsStaged])
    {
      if ([(MAAutoAssetSummary *)self stageGroup]== 1)
      {
        v28 = @"REQUIRED";
      }

      else
      {
        stageGroup = [(MAAutoAssetSummary *)self stageGroup];
        v28 = @"UNKNOWN";
        if (stageGroup == 2)
        {
          v28 = @"OPTIONAL";
        }
      }

      *group = v28;
      targetOS = [(MAAutoAssetSummary *)self targetOS];
      if (targetOS)
      {
        targetOS2 = [(MAAutoAssetSummary *)self targetOS];
        *s = targetOS2;
      }

      else
      {
        *s = @"Unknown";
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
  assetSelector = [(MAAutoAssetSummary *)self assetSelector];
  summary = [assetSelector summary];
  assetRepresentationName = [(MAAutoAssetSummary *)self assetRepresentationName];
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

  scheduledIntervalSecs = [(MAAutoAssetSummary *)self scheduledIntervalSecs];
  scheduledRemainingSecs = [(MAAutoAssetSummary *)self scheduledRemainingSecs];
  pushDelaySecs = [(MAAutoAssetSummary *)self pushDelaySecs];
  activeClientCount = [(MAAutoAssetSummary *)self activeClientCount];
  activeMonitorCount = [(MAAutoAssetSummary *)self activeMonitorCount];
  maximumClientCount = [(MAAutoAssetSummary *)self maximumClientCount];
  totalClientCount = [(MAAutoAssetSummary *)self totalClientCount];
  jobStatus = [(MAAutoAssetSummary *)self jobStatus];
  if (jobStatus)
  {
    jobStatus2 = [(MAAutoAssetSummary *)self jobStatus];
    v14 = [jobStatus2 description];
    v15 = v3;
    v16 = v14;
    v35 = totalClientCount;
    v31 = activeMonitorCount;
    v33 = maximumClientCount;
    v27 = pushDelaySecs;
    v29 = activeClientCount;
    v25 = scheduledRemainingSecs;
    v18 = v41;
    v17 = v42;
    v19 = v43;
    v20 = v44;
    v21 = v45;
    v22 = summary;
    v23 = [v38 stringWithFormat:@">>>\n                   assetSelector: %@\n             assetRepresentation: %@\n                 assetWasPatched: %@\n                   assetIsStaged: %@\n              assetIsSecureAsset: %@\n       secureAssetIsPersonalized: %@\n    secureAssetIsPrePersonalized: %@\n      secureMobileAssetIsGrafted: %@\n     secureMobileAssetGraftPoint: %@\n           scheduledIntervalSecs: %ld\n          scheduledRemainingSecs: %ld\n                   pushDelaySecs: %ld\n               activeClientCount: %ld\n              activeMonitorCount: %ld\n              maximumClientCount: %ld\n                totalClientCount: %ld\n                      stageGroup: %@\n                 targetOSVersion: %@\n%@<<<]", summary, assetRepresentationName, v37, v15, v45, v44, v43, v42, v41, scheduledIntervalSecs, v25, v27, v29, v31, v33, v35, v48, v47, v14];
  }

  else
  {
    v36 = totalClientCount;
    v32 = activeMonitorCount;
    v34 = maximumClientCount;
    v28 = pushDelaySecs;
    v30 = activeClientCount;
    v26 = scheduledRemainingSecs;
    v18 = v41;
    v17 = v42;
    v19 = v43;
    v20 = v44;
    v21 = v45;
    v22 = summary;
    v23 = [v38 stringWithFormat:@">>>\n                   assetSelector: %@\n             assetRepresentation: %@\n                 assetWasPatched: %@\n                   assetIsStaged: %@\n              assetIsSecureAsset: %@\n       secureAssetIsPersonalized: %@\n    secureAssetIsPrePersonalized: %@\n      secureMobileAssetIsGrafted: %@\n     secureMobileAssetGraftPoint: %@\n           scheduledIntervalSecs: %ld\n          scheduledRemainingSecs: %ld\n                   pushDelaySecs: %ld\n               activeClientCount: %ld\n              activeMonitorCount: %ld\n              maximumClientCount: %ld\n                totalClientCount: %ld\n                      stageGroup: %@\n                 targetOSVersion: %@\n%@<<<]", summary, assetRepresentationName, v37, v3, v45, v44, v43, v42, v41, scheduledIntervalSecs, v26, v28, v30, v32, v34, v36, v48, v47, @"                       jobStatus: N\n"];
  }

  return v23;
}

- (id)summary
{
  assetSelector = [(MAAutoAssetSummary *)self assetSelector];
  summary = [assetSelector summary];

  assetRepresentationName = [(MAAutoAssetSummary *)self assetRepresentationName];
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
  jobStatus = [(MAAutoAssetSummary *)self jobStatus];
  if (jobStatus)
  {
    jobStatus2 = [(MAAutoAssetSummary *)self jobStatus];
    summary2 = [jobStatus2 summary];
  }

  else
  {
    summary2 = @"NONE";
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
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"asset(%@)[%@]|patched:%@|staged:%@|secureMobileAsset:%@|personalized:%@|prePersonalized:%@|grafted:%@|graftPoint:%@|status:%@|interval:%@|remaining:%@|pushDelay:%@|clients:%@|monitors:%@|maxClients:%@|totalClients:%@|stageGroup:%@|targetOSVersion:%@", summary, assetRepresentationName, v26, v21, v8, v9, v10, v11, v12, summary2, v24, v23, v22, v20, v19, v17, v16, v13, v14];

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
  assetSelector = [(MAAutoAssetSummary *)self assetSelector];
  newSummaryDictionary = [assetSelector newSummaryDictionary];
  [v3 setSafeObject:newSummaryDictionary forKey:@"assetSelector"];

  assetRepresentationName = [(MAAutoAssetSummary *)self assetRepresentationName];
  [v3 setSafeObject:assetRepresentationName forKey:@"assetRepresentation"];

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
  jobStatus = [(MAAutoAssetSummary *)self jobStatus];
  if (jobStatus)
  {
    jobStatus2 = [(MAAutoAssetSummary *)self jobStatus];
    newSummaryDictionary2 = [jobStatus2 newSummaryDictionary];
    [v3 setSafeObject:newSummaryDictionary2 forKey:@"jobStatus"];
  }

  else
  {
    jobStatus2 = objc_alloc_init(MEMORY[0x1E695DF20]);
    [v3 setSafeObject:jobStatus2 forKey:@"jobStatus"];
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

- (void)summaryBuildMaxColumnStrings:(id)strings
{
  stringsCopy = strings;
  assetSelector = [(MAAutoAssetSummary *)self assetSelector];
  summary = [assetSelector summary];

  assetRepresentationName = [(MAAutoAssetSummary *)self assetRepresentationName];
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
  jobStatus = [(MAAutoAssetSummary *)self jobStatus];
  if (jobStatus)
  {
    jobStatus2 = [(MAAutoAssetSummary *)self jobStatus];
    summary2 = [jobStatus2 summary];
  }

  else
  {
    summary2 = @"NONE";
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
  v74 = summary;
  v17 = [summary length];
  v18 = [stringsCopy safeStringForKey:@"assetSelector"];
  v19 = [v18 length];

  if (v17 > v19)
  {
    [stringsCopy setSafeObject:v74 forKey:@"assetSelector"];
  }

  v20 = [assetRepresentationName length];
  v21 = [stringsCopy safeStringForKey:@"assetRepresentation"];
  v22 = [v21 length];

  if (v20 > v22)
  {
    [stringsCopy setSafeObject:assetRepresentationName forKey:@"assetRepresentation"];
  }

  v23 = [(__CFString *)v86 length];
  v24 = [stringsCopy safeStringForKey:@"assetWasPatched"];
  v25 = [v24 length];

  if (v23 > v25)
  {
    [stringsCopy setSafeObject:v86 forKey:@"assetWasPatched"];
  }

  v26 = [(__CFString *)v75 length];
  v27 = [stringsCopy safeStringForKey:@"assetIsStaged"];
  v28 = [v27 length];

  if (v26 > v28)
  {
    [stringsCopy setSafeObject:v86 forKey:@"assetIsStaged"];
  }

  v29 = [(__CFString *)v76 length];
  v30 = [stringsCopy safeStringForKey:@"assetIsSecureMobileAsset"];
  v31 = [v30 length];

  if (v29 > v31)
  {
    [stringsCopy setSafeObject:v76 forKey:@"assetIsSecureMobileAsset"];
  }

  v32 = [(__CFString *)v11 length];
  v33 = [stringsCopy safeStringForKey:@"secureMobileAssetIsPersonalized"];
  v34 = [v33 length];

  if (v32 > v34)
  {
    [stringsCopy setSafeObject:v11 forKey:@"secureMobileAssetIsPersonalized"];
  }

  v35 = [(__CFString *)v12 length];
  v36 = [stringsCopy safeStringForKey:@"secureMobileAssetIsPrePersonalized"];
  v37 = [v36 length];

  if (v35 > v37)
  {
    [stringsCopy setSafeObject:v12 forKey:@"secureMobileAssetIsPrePersonalized"];
  }

  v38 = [(__CFString *)v13 length];
  v39 = [stringsCopy safeStringForKey:@"secureMobileAssetIsGrafted"];
  v40 = [v39 length];

  if (v38 > v40)
  {
    [stringsCopy setSafeObject:v13 forKey:@"secureMobileAssetIsGrafted"];
  }

  v41 = [(__CFString *)v14 length];
  v42 = [stringsCopy safeStringForKey:@"secureMobileAssetGraftPoint"];
  v43 = [v42 length];

  if (v41 > v43)
  {
    [stringsCopy setSafeObject:v14 forKey:@"secureMobileAssetGraftPoint"];
  }

  v44 = [(__CFString *)summary2 length];
  v45 = [stringsCopy safeStringForKey:@"jobStatus"];
  v46 = [v45 length];

  if (v44 > v46)
  {
    [stringsCopy setSafeObject:summary2 forKey:@"jobStatus"];
  }

  v47 = [v83 length];
  v48 = [stringsCopy safeStringForKey:@"scheduledIntervalSecs"];
  v49 = [v48 length];

  if (v47 > v49)
  {
    [stringsCopy setSafeObject:v83 forKey:@"scheduledIntervalSecs"];
  }

  v50 = [v82 length];
  v51 = [stringsCopy safeStringForKey:@"scheduledRemainingSecs"];
  v52 = [v51 length];

  if (v50 > v52)
  {
    [stringsCopy setSafeObject:v82 forKey:@"scheduledRemainingSecs"];
  }

  v53 = [v81 length];
  v54 = [stringsCopy safeStringForKey:@"pushDelaySecs"];
  v55 = [v54 length];

  if (v53 > v55)
  {
    [stringsCopy setSafeObject:v81 forKey:@"pushDelaySecs"];
  }

  v56 = [v80 length];
  v57 = [stringsCopy safeStringForKey:@"activeClientCount"];
  v58 = [v57 length];

  if (v56 > v58)
  {
    [stringsCopy setSafeObject:v80 forKey:@"activeClientCount"];
  }

  v59 = [v79 length];
  v60 = [stringsCopy safeStringForKey:@"activeMonitorCount"];
  v61 = [v60 length];

  if (v59 > v61)
  {
    [stringsCopy setSafeObject:v79 forKey:@"activeMonitorCount"];
  }

  v62 = [v78 length];
  v63 = [stringsCopy safeStringForKey:@"maximumClientCount"];
  v64 = [v63 length];

  if (v62 > v64)
  {
    [stringsCopy setSafeObject:v78 forKey:@"maximumClientCount"];
  }

  v65 = [v77 length];
  v66 = [stringsCopy safeStringForKey:@"totalClientCount"];
  v67 = [v66 length];

  if (v65 > v67)
  {
    [stringsCopy setSafeObject:v77 forKey:@"totalClientCount"];
  }

  v68 = [(__CFString *)v15 length];
  v69 = [stringsCopy safeStringForKey:@"stageGroup"];
  v70 = [v69 length];

  if (v68 < v70)
  {
    [stringsCopy setSafeObject:v15 forKey:@"stageGroup"];
  }

  v71 = [(__CFString *)v16 length];
  v72 = [stringsCopy safeStringForKey:@"targetOSKey"];
  v73 = [v72 length];

  if (v71 < v73)
  {
    [stringsCopy setSafeObject:v16 forKey:@"targetOSKey"];
  }
}

- (id)summaryPadded:(id)padded
{
  paddedCopy = padded;
  assetSelector = [(MAAutoAssetSummary *)self assetSelector];
  summary = [assetSelector summary];

  assetRepresentationName = [(MAAutoAssetSummary *)self assetRepresentationName];
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
  jobStatus = [(MAAutoAssetSummary *)self jobStatus];
  if (jobStatus)
  {
    jobStatus2 = [(MAAutoAssetSummary *)self jobStatus];
    summary2 = [jobStatus2 summary];
  }

  else
  {
    summary2 = @"NONE";
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
  v48 = [paddedCopy safeStringForKey:@"assetSelector"];
  v31 = summary;
  v58 = [MAAutoAssetSummary summaryPaddedString:summary paddingToLenghtOfString:v48 paddingWith:@" " paddingBefore:0];
  v47 = [paddedCopy safeStringForKey:@"assetRepresentation"];
  v57 = [MAAutoAssetSummary summaryPaddedString:assetRepresentationName paddingToLenghtOfString:v47 paddingWith:@" " paddingBefore:0];
  v45 = [paddedCopy safeStringForKey:@"assetWasPatched"];
  v56 = [MAAutoAssetSummary summaryPaddedString:v61 paddingToLenghtOfString:v45 paddingWith:@" " paddingBefore:0];
  v43 = [paddedCopy safeStringForKey:@"assetIsStaged"];
  v55 = [MAAutoAssetSummary summaryPaddedString:v69 paddingToLenghtOfString:v43 paddingWith:@" " paddingBefore:0];
  v41 = [paddedCopy safeStringForKey:@"assetIsSecureMobileAsset"];
  v54 = [MAAutoAssetSummary summaryPaddedString:v46 paddingToLenghtOfString:v41 paddingWith:@" " paddingBefore:0];
  v39 = [paddedCopy safeStringForKey:@"secureMobileAssetIsPersonalized"];
  v53 = [MAAutoAssetSummary summaryPaddedString:v44 paddingToLenghtOfString:v39 paddingWith:@" " paddingBefore:0];
  v35 = [paddedCopy safeStringForKey:@"secureMobileAssetIsPrePersonalized"];
  v52 = [MAAutoAssetSummary summaryPaddedString:v42 paddingToLenghtOfString:v35 paddingWith:@" " paddingBefore:0];
  v33 = [paddedCopy safeStringForKey:@"secureMobileAssetIsGrafted"];
  v50 = [MAAutoAssetSummary summaryPaddedString:v40 paddingToLenghtOfString:v33 paddingWith:@" " paddingBefore:0];
  v32 = [paddedCopy safeStringForKey:@"secureMobileAssetGraftPoint"];
  v51 = [MAAutoAssetSummary summaryPaddedString:v38 paddingToLenghtOfString:v32 paddingWith:@" " paddingBefore:0];
  v30 = [paddedCopy safeStringForKey:@"jobStatus"];
  v25 = [MAAutoAssetSummary summaryPaddedString:summary2 paddingToLenghtOfString:v30 paddingWith:@" " paddingBefore:0];
  v29 = [paddedCopy safeStringForKey:@"scheduledIntervalSecs"];
  v24 = [MAAutoAssetSummary summaryPaddedString:v63 paddingToLenghtOfString:v29 paddingWith:@" " paddingBefore:1];
  v28 = [paddedCopy safeStringForKey:@"scheduledRemainingSecs"];
  v49 = [MAAutoAssetSummary summaryPaddedString:v68 paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:1];
  v27 = [paddedCopy safeStringForKey:@"pushDelaySecs"];
  v19 = [MAAutoAssetSummary summaryPaddedString:v67 paddingToLenghtOfString:v27 paddingWith:@" " paddingBefore:1];
  v26 = [paddedCopy safeStringForKey:@"activeClientCount"];
  v21 = [MAAutoAssetSummary summaryPaddedString:v66 paddingToLenghtOfString:v26 paddingWith:@" " paddingBefore:1];
  v23 = [paddedCopy safeStringForKey:@"activeMonitorCount"];
  v11 = [MAAutoAssetSummary summaryPaddedString:v65 paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:1];
  v22 = [paddedCopy safeStringForKey:@"maximumClientCount"];
  v12 = [MAAutoAssetSummary summaryPaddedString:v64 paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:1];
  v20 = [paddedCopy safeStringForKey:@"totalClientCount"];
  v13 = [MAAutoAssetSummary summaryPaddedString:v62 paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:1];
  v14 = [paddedCopy safeStringForKey:@"stageGroup"];
  v15 = [MAAutoAssetSummary summaryPaddedString:v59 paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:1];
  v16 = [paddedCopy safeStringForKey:@"targetOSKey"];

  v17 = [MAAutoAssetSummary summaryPaddedString:v34 paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:1];

  v37 = [v36 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v58, v57, v56, v55, v54, v53, v52, v50, v51, v25, v24, v49, v19, v21, v11, v12, v13, v15, v17];

  return v37;
}

- (id)assetRepresentationName
{
  assetRepresentation = [(MAAutoAssetSummary *)self assetRepresentation];

  return [MAAutoAssetSummary assetRepresentationName:assetRepresentation];
}

+ (id)assetRepresentationName:(int64_t)name
{
  v3 = @"UNKNOWN";
  if (name > 400)
  {
    v4 = @"AvailableForStaging";
    v8 = @"BeingStaged";
    v9 = @"Staged";
    if (name != 603)
    {
      v9 = @"UNKNOWN";
    }

    if (name != 602)
    {
      v8 = v9;
    }

    if (name != 601)
    {
      v4 = v8;
    }

    if (name == 600)
    {
      v3 = @"CandidateForStaging";
    }

    if (name == 500)
    {
      v3 = @"VersionDownloaded";
    }

    if (name == 401)
    {
      v3 = @"ScheduledPushed";
    }

    v7 = name <= 600;
  }

  else
  {
    v4 = @"AwaitingUnlock";
    v5 = @"Active";
    v6 = @"Scheduled";
    if (name != 400)
    {
      v6 = @"UNKNOWN";
    }

    if (name != 300)
    {
      v5 = v6;
    }

    if (name != 201)
    {
      v4 = v5;
    }

    if (name == 200)
    {
      v3 = @"AwaitingSync";
    }

    if (name == 100)
    {
      v3 = @"Monitor";
    }

    if (!name)
    {
      v3 = @"None";
    }

    v7 = name <= 200;
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

+ (id)summaryPaddedString:(id)string paddingToLenghtOfString:(id)ofString paddingWith:(id)with paddingBefore:(BOOL)before
{
  beforeCopy = before;
  stringCopy = string;
  ofStringCopy = ofString;
  withCopy = with;
  v12 = stringCopy;
  v13 = [v12 length];
  v14 = v12;
  if (v13 < [ofStringCopy length])
  {
    v15 = [ofStringCopy length];
    v16 = v15 - [v12 length];
    string = [MEMORY[0x1E696AEC0] string];
    v18 = [string stringByPaddingToLength:v16 withString:withCopy startingAtIndex:0];

    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (beforeCopy)
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

+ (id)summaryPaddedHeader:(id)header
{
  v26 = MEMORY[0x1E696AEC0];
  headerCopy = header;
  v33 = [headerCopy safeStringForKey:@"assetSelector"];
  v42 = [MAAutoAssetSummary summaryPaddedString:@"assetSelector" paddingToLenghtOfString:v33 paddingWith:@" " paddingBefore:0];
  v32 = [headerCopy safeStringForKey:@"assetRepresentation"];
  v41 = [MAAutoAssetSummary summaryPaddedString:@"assetRepresentation" paddingToLenghtOfString:v32 paddingWith:@" " paddingBefore:0];
  v31 = [headerCopy safeStringForKey:@"assetWasPatched"];
  v40 = [MAAutoAssetSummary summaryPaddedString:@"assetWasPatched" paddingToLenghtOfString:v31 paddingWith:@" " paddingBefore:0];
  v30 = [headerCopy safeStringForKey:@"assetIsStaged"];
  v39 = [MAAutoAssetSummary summaryPaddedString:@"assetIsStaged" paddingToLenghtOfString:v30 paddingWith:@" " paddingBefore:0];
  v29 = [headerCopy safeStringForKey:@"assetIsSecureMobileAsset"];
  v38 = [MAAutoAssetSummary summaryPaddedString:@"assetIsSecureMobileAsset" paddingToLenghtOfString:v29 paddingWith:@" " paddingBefore:0];
  v28 = [headerCopy safeStringForKey:@"secureMobileAssetIsPersonalized"];
  v37 = [MAAutoAssetSummary summaryPaddedString:@"secureMobileAssetIsPersonalized" paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:0];
  v25 = [headerCopy safeStringForKey:@"secureMobileAssetIsPrePersonalized"];
  v36 = [MAAutoAssetSummary summaryPaddedString:@"secureMobileAssetIsPrePersonalized" paddingToLenghtOfString:v25 paddingWith:@" " paddingBefore:0];
  v24 = [headerCopy safeStringForKey:@"secureMobileAssetIsGrafted"];
  v35 = [MAAutoAssetSummary summaryPaddedString:@"secureMobileAssetIsGrafted" paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:0];
  v23 = [headerCopy safeStringForKey:@"secureMobileAssetGraftPoint"];
  v34 = [MAAutoAssetSummary summaryPaddedString:@"secureMobileAssetGraftPoint" paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:0];
  v22 = [headerCopy safeStringForKey:@"jobStatus"];
  v18 = [MAAutoAssetSummary summaryPaddedString:@"jobStatus" paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:0];
  v21 = [headerCopy safeStringForKey:@"scheduledIntervalSecs"];
  v16 = [MAAutoAssetSummary summaryPaddedString:@"scheduledIntervalSecs" paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:0];
  v20 = [headerCopy safeStringForKey:@"scheduledRemainingSecs"];
  v14 = [MAAutoAssetSummary summaryPaddedString:@"scheduledRemainingSecs" paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:0];
  v19 = [headerCopy safeStringForKey:@"activeClientCount"];
  v13 = [MAAutoAssetSummary summaryPaddedString:@"activeClientCount" paddingToLenghtOfString:v19 paddingWith:@" " paddingBefore:0];
  v17 = [headerCopy safeStringForKey:@"activeMonitorCount"];
  v11 = [MAAutoAssetSummary summaryPaddedString:@"activeMonitorCount" paddingToLenghtOfString:v17 paddingWith:@" " paddingBefore:0];
  v15 = [headerCopy safeStringForKey:@"maximumClientCount"];
  v10 = [MAAutoAssetSummary summaryPaddedString:@"maximumClientCount" paddingToLenghtOfString:v15 paddingWith:@" " paddingBefore:0];
  v12 = [headerCopy safeStringForKey:@"totalClientCount"];
  v4 = [MAAutoAssetSummary summaryPaddedString:@"totalClientCount" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v5 = [headerCopy safeStringForKey:@"stageGroup"];
  v6 = [MAAutoAssetSummary summaryPaddedString:@"stageGroup" paddingToLenghtOfString:v5 paddingWith:@" " paddingBefore:0];
  v7 = [headerCopy safeStringForKey:@"targetOSKey"];

  v8 = [MAAutoAssetSummary summaryPaddedString:@"targetOSKey" paddingToLenghtOfString:v7 paddingWith:@" " paddingBefore:0];
  v27 = [v26 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v42, v41, v40, v39, v38, v37, v36, v35, v34, v18, v16, v14, v13, v11, v10, v4, v6, v8];

  return v27;
}

+ (id)summaryPaddedBanner:(id)banner
{
  v25 = MEMORY[0x1E696AEC0];
  bannerCopy = banner;
  v32 = [bannerCopy safeStringForKey:@"assetSelector"];
  v42 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v32 paddingWith:@"=" paddingBefore:0];
  v31 = [bannerCopy safeStringForKey:@"assetRepresentation"];
  v41 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v31 paddingWith:@"=" paddingBefore:0];
  v30 = [bannerCopy safeStringForKey:@"assetWasPatched"];
  v40 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v30 paddingWith:@"=" paddingBefore:0];
  v29 = [bannerCopy safeStringForKey:@"assetIsStaged"];
  v39 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v29 paddingWith:@"=" paddingBefore:0];
  v28 = [bannerCopy safeStringForKey:@"assetIsSecureMobileAsset"];
  v38 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v28 paddingWith:@"=" paddingBefore:0];
  v27 = [bannerCopy safeStringForKey:@"secureMobileAssetIsPersonalized"];
  v37 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v27 paddingWith:@"=" paddingBefore:0];
  v24 = [bannerCopy safeStringForKey:@"secureMobileAssetIsPrePersonalized"];
  v36 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v24 paddingWith:@"=" paddingBefore:0];
  v23 = [bannerCopy safeStringForKey:@"secureMobileAssetIsGrafted"];
  v35 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v23 paddingWith:@"=" paddingBefore:0];
  v22 = [bannerCopy safeStringForKey:@"secureMobileAssetGraftPoint"];
  v34 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v22 paddingWith:@"=" paddingBefore:0];
  v21 = [bannerCopy safeStringForKey:@"jobStatus"];
  v17 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v21 paddingWith:@"=" paddingBefore:0];
  v20 = [bannerCopy safeStringForKey:@"scheduledIntervalSecs"];
  v33 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v20 paddingWith:@"=" paddingBefore:0];
  v19 = [bannerCopy safeStringForKey:@"scheduledRemainingSecs"];
  v14 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v19 paddingWith:@"=" paddingBefore:0];
  v18 = [bannerCopy safeStringForKey:@"activeClientCount"];
  v13 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v18 paddingWith:@"=" paddingBefore:0];
  v16 = [bannerCopy safeStringForKey:@"activeMonitorCount"];
  v4 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v16 paddingWith:@"=" paddingBefore:0];
  v15 = [bannerCopy safeStringForKey:@"maximumClientCount"];
  v5 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v15 paddingWith:@"=" paddingBefore:0];
  v12 = [bannerCopy safeStringForKey:@"totalClientCount"];
  v6 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v12 paddingWith:@"=" paddingBefore:0];
  v7 = [bannerCopy safeStringForKey:@"stageGroup"];
  v8 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v7 paddingWith:@"=" paddingBefore:0];
  v9 = [bannerCopy safeStringForKey:@"targetOSKey"];

  v10 = [MAAutoAssetSummary summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v9 paddingWith:@"=" paddingBefore:0];
  v26 = [v25 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v42, v41, v40, v39, v38, v37, v36, v35, v34, v17, v33, v14, v13, v4, v5, v6, v8, v10];

  return v26;
}

@end