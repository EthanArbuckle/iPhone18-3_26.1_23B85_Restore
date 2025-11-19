@interface MOEventBundle
+ (id)getInterfaceTypeString:(unint64_t)a3 superType:(unint64_t)a4;
+ (unint64_t)castEvergreenSubType:(unint64_t)a3;
+ (unint64_t)convertNSNumberToContactType:(id)a3;
+ (unint64_t)convertNSNumberToRoadType:(id)a3;
+ (unint64_t)convertNSNumberToSensitiveLocationType:(id)a3;
+ (unint64_t)convertNSNumberToUninterestingLocationType:(id)a3;
+ (unint64_t)getSuperTypeEnum:(id)a3;
- (BOOL)containTheSameEventSet:(id)a3;
- (BOOL)hasAppEntryEngagementEvent:(id)a3;
- (BOOL)hasSuggestionEngagementEvent:(id)a3;
- (BOOL)intersectedActivityOrVisitForObject:(id)a3 other:(id)a4;
- (BOOL)intersectedSubBundleIDForObject:(id)a3 other:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualBaseActionForObject:(id)a3 other:(id)a4;
- (BOOL)isEqualBasicPropertiesForObject:(id)a3 other:(id)a4;
- (BOOL)isEqualPersonsForObject:(id)a3 other:(id)a4;
- (BOOL)isEqualPropertyForObject:(id)a3 other:(id)a4 propertyPath:(id)a5 threshold:(double)a6;
- (BOOL)isEqualResourcesForObject:(id)a3 other:(id)a4 resourceType:(unint64_t)a5;
- (BOOL)isEqualToEventBundle:(id)a3;
- (BOOL)shareEvents:(id)a3;
- (MOEventBundle)initWithBundleIdentifier:(id)a3 bundleType:(id)a4 creationDate:(id)a5 endDate:(id)a6 expirationDate:(id)a7 events:(id)a8 filtered:(BOOL)a9 interfaceType:(unint64_t)a10 photoSource:(unint64_t)a11 promptLanguage:(id)a12 source:(unint64_t)a13 startDate:(id)a14 action:(id)a15 concurrentMediaAction:(id)a16 actions:(id)a17 persons:(id)a18 place:(id)a19 predominantWeather:(id)a20 resources:(id)a21 time:(id)a22 metaDataForRank:(id)a23 suggestionEngagements:(id)a24 suggestionEngagementViewCount:(unint64_t)a25 appEntryEngagements:(id)a26 isAggregatedAndSuppressed:(BOOL)a27 summarizationGranularity:(unint64_t)a28 places:(id)a29 subBundleIDs:(id)a30 subSuggestionIDs:(id)a31 includedInSummaryBundleOnly:(BOOL)a32 bundleSubType:(unint64_t)a33 bundleSuperType:(unint64_t)a34 photoTraits:(id)a35 isSensitive:(BOOL)a36;
- (MOEventBundle)initWithBundleIdentifier:(id)a3 bundleType:(id)a4 creationDate:(id)a5 endDate:(id)a6 expirationDate:(id)a7 events:(id)a8 filtered:(BOOL)a9 interfaceType:(unint64_t)a10 photoSource:(unint64_t)a11 promptLanguage:(id)a12 source:(unint64_t)a13 startDate:(id)a14 action:(id)a15 concurrentMediaAction:(id)a16 actions:(id)a17 persons:(id)a18 place:(id)a19 predominantWeather:(id)a20 resources:(id)a21 time:(id)a22 metaDataForRank:(id)a23 suggestionEngagements:(id)a24 suggestionEngagementViewCount:(unint64_t)a25 appEntryEngagements:(id)a26 isAggregatedAndSuppressed:(BOOL)a27 summarizationGranularity:(unint64_t)a28 places:(id)a29 subBundleIDs:(id)a30 subSuggestionIDs:(id)a31 photoTraits:(id)a32 isSensitive:(BOOL)a33;
- (MOEventBundle)initWithBundleIdentifier:(id)a3 suggestionID:(id)a4 bundleType:(id)a5 creationDate:(id)a6 firstCreationDate:(id)a7 endDate:(id)a8 expirationDate:(id)a9 events:(id)a10 filtered:(BOOL)a11 interfaceType:(unint64_t)a12 photoSource:(unint64_t)a13 promptLanguage:(id)a14 source:(unint64_t)a15 startDate:(id)a16 action:(id)a17 concurrentMediaAction:(id)a18 actions:(id)a19 persons:(id)a20 place:(id)a21 predominantWeather:(id)a22 resources:(id)a23 time:(id)a24 metaDataForRank:(id)a25 suggestionEngagements:(id)a26 suggestionEngagementViewCount:(unint64_t)a27 appEntryEngagements:(id)a28 isAggregatedAndSuppressed:(BOOL)a29 summarizationGranularity:(unint64_t)a30 places:(id)a31 subBundleIDs:(id)a32 subSuggestionIDs:(id)a33 includedInSummaryBundleOnly:(BOOL)a34 bundleSubType:(unint64_t)a35 bundleSuperType:(unint64_t)a36 photoTraits:(id)a37 isSensitive:(BOOL)a38;
- (MOEventBundle)initWithBundleIdentifier:(id)a3 suggestionID:(id)a4 startDate:(id)a5 endDate:(id)a6 creationDate:(id)a7;
- (MOEventBundle)initWithBundleIdentifier:(id)a3 usingBundle:(id)a4;
- (MOEventBundle)initWithCoder:(id)a3;
- (MOEventBundle)initWithEventSet:(id)a3 filtered:(BOOL)a4;
- (NSSet)getCategories;
- (double)duration;
- (id)_allResourcesImpl;
- (id)dateInterval;
- (id)description;
- (id)displayEndDate;
- (id)displayStartDate;
- (id)getBundleType;
- (id)getCustomLabelsForMetaData:(id)a3 labelFormatter:(id)a4;
- (id)getCustomLabelsForMetaData:(id)a3 templateFilePath:(id)a4;
- (id)getCustomPromptsForMetaData:(id)a3 labelFormatter:(id)a4;
- (id)getCustomPromptsForMetaData:(id)a3 templateFilePath:(id)a4;
- (id)getSubTypeString;
- (id)getSuperTypeString;
- (id)localEndDate;
- (id)localStartDate;
- (id)primarySourceTypes;
- (id)shortDescription;
- (unint64_t)getInterfaceTypeEnum:(id)a3;
- (unint64_t)hash;
- (void)addAction:(id)a3;
- (void)addBackgroundAction:(id)a3;
- (void)addEvent:(id)a3;
- (void)addEvents:(id)a3;
- (void)addMetaDataForRankForKey:(id)a3 value:(id)a4;
- (void)addPerson:(id)a3;
- (void)addPhotoTraits:(id)a3;
- (void)addResource:(id)a3;
- (void)addResources:(id)a3;
- (void)buildResources;
- (void)clearAppEntryEngagementEvent:(id)a3;
- (void)clearSuggestionEngagementEvent:(id)a3;
- (void)dateInterval;
- (void)encodeWithCoder:(id)a3;
- (void)setAppEntryEngagementEvent:(id)a3;
- (void)setPropertiesBasedOnEvents;
- (void)setSuggestionEngagementEvent:(id)a3;
- (void)withResourcesUsingBlock:(id)a3;
@end

@implementation MOEventBundle

- (MOEventBundle)initWithBundleIdentifier:(id)a3 suggestionID:(id)a4 startDate:(id)a5 endDate:(id)a6 creationDate:(id)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v35 = a6;
  v17 = a7;
  v33 = v17;
  if (!v14)
  {
    v21 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = v22;
    v24 = @"Invalid parameter not satisfying: bundleIdentifier";
    v25 = a2;
    v26 = self;
    v27 = 217;
    goto LABEL_24;
  }

  if (!v15)
  {
    v28 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = v22;
    v24 = @"Invalid parameter not satisfying: suggestionID";
    v25 = a2;
    v26 = self;
    v27 = 218;
    goto LABEL_24;
  }

  if (!v16)
  {
    v29 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = v22;
    v24 = @"Invalid parameter not satisfying: startDate";
    v25 = a2;
    v26 = self;
    v27 = 219;
    goto LABEL_24;
  }

  if (!v35)
  {
    v30 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = v22;
    v24 = @"Invalid parameter not satisfying: endDate";
    v25 = a2;
    v26 = self;
    v27 = 220;
    goto LABEL_24;
  }

  if (!v17)
  {
    v31 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = v22;
    v24 = @"Invalid parameter not satisfying: creationDate";
    v25 = a2;
    v26 = self;
    v27 = 221;
LABEL_24:
    [v22 handleFailureInMethod:v25 object:v26 file:@"MOEventBundle.m" lineNumber:v27 description:v24];

    v20 = 0;
    goto LABEL_25;
  }

  v36.receiver = self;
  v36.super_class = MOEventBundle;
  v18 = [(MOEventBundle *)&v36 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_bundleIdentifier, a3);
    objc_storeStrong(p_isa + 3, a4);
    objc_storeStrong(p_isa + 4, a5);
    objc_storeStrong(p_isa + 5, a6);
    objc_storeStrong(p_isa + 6, a7);
  }

  self = p_isa;
  v20 = self;
LABEL_25:

  return v20;
}

- (MOEventBundle)initWithBundleIdentifier:(id)a3 suggestionID:(id)a4 bundleType:(id)a5 creationDate:(id)a6 firstCreationDate:(id)a7 endDate:(id)a8 expirationDate:(id)a9 events:(id)a10 filtered:(BOOL)a11 interfaceType:(unint64_t)a12 photoSource:(unint64_t)a13 promptLanguage:(id)a14 source:(unint64_t)a15 startDate:(id)a16 action:(id)a17 concurrentMediaAction:(id)a18 actions:(id)a19 persons:(id)a20 place:(id)a21 predominantWeather:(id)a22 resources:(id)a23 time:(id)a24 metaDataForRank:(id)a25 suggestionEngagements:(id)a26 suggestionEngagementViewCount:(unint64_t)a27 appEntryEngagements:(id)a28 isAggregatedAndSuppressed:(BOOL)a29 summarizationGranularity:(unint64_t)a30 places:(id)a31 subBundleIDs:(id)a32 subSuggestionIDs:(id)a33 includedInSummaryBundleOnly:(BOOL)a34 bundleSubType:(unint64_t)a35 bundleSuperType:(unint64_t)a36 photoTraits:(id)a37 isSensitive:(BOOL)a38
{
  v88 = a5;
  obj = a7;
  v87 = a7;
  v86 = a9;
  v39 = a10;
  v85 = a14;
  v84 = a17;
  v83 = a18;
  v40 = a19;
  v41 = a20;
  v82 = a21;
  v81 = a22;
  v42 = a23;
  v80 = a24;
  v43 = a25;
  v44 = a26;
  v90 = a28;
  v45 = a31;
  v46 = a32;
  v47 = a33;
  v89 = a37;
  v48 = [(MOEventBundle *)self initWithBundleIdentifier:a3 suggestionID:a4 startDate:a16 endDate:a8 creationDate:a6];
  v49 = v48;
  if (v48)
  {
    objc_storeStrong(&v48->_firstCreationDate, obj);
    objc_storeStrong(&v49->_bundleType, a5);
    objc_storeStrong(&v49->_expirationDate, a9);
    v50 = [v39 copy];
    events = v49->_events;
    v49->_events = v50;

    v49->_filtered = a11;
    v49->_interfaceType = a12;
    v49->_photoSource = a13;
    objc_storeStrong(&v49->_promptLanguage, a14);
    v49->_source = a15;
    objc_storeStrong(&v49->_action, a17);
    objc_storeStrong(&v49->_concurrentMediaAction, a18);
    v52 = [v40 copy];
    actions = v49->_actions;
    v49->_actions = v52;

    v54 = [v41 copy];
    persons = v49->_persons;
    v49->_persons = v54;

    objc_storeStrong(&v49->_place, a21);
    objc_storeStrong(&v49->_predominantWeather, a22);
    v56 = [v42 copy];
    resources = v49->_resources;
    v49->_resources = v56;

    objc_storeStrong(&v49->_time, a24);
    v58 = [v43 copy];
    metaDataForRank = v49->_metaDataForRank;
    v49->_metaDataForRank = v58;

    v60 = [v44 mutableCopy];
    suggestionEngagementEvents = v49->_suggestionEngagementEvents;
    v49->_suggestionEngagementEvents = v60;

    v49->_suggestionEngagementViewCount = a27;
    v62 = [v90 mutableCopy];
    appEntryEngagementEvents = v49->_appEntryEngagementEvents;
    v49->_appEntryEngagementEvents = v62;

    v49->_isAggregatedAndSuppressed = a29;
    v49->_summarizationGranularity = a30;
    v64 = [v45 copy];
    places = v49->_places;
    v49->_places = v64;

    v66 = [v46 copy];
    subBundleIDs = v49->_subBundleIDs;
    v49->_subBundleIDs = v66;

    v68 = [v47 copy];
    subSuggestionIDs = v49->_subSuggestionIDs;
    v49->_subSuggestionIDs = v68;

    v49->_includedInSummaryBundleOnly = a34;
    v49->_bundleSubType = a35;
    v49->_bundleSuperType = a36;
    v70 = [v89 copy];
    photoTraits = v49->_photoTraits;
    v49->_photoTraits = v70;

    v49->_isSensitive = a38;
  }

  return v49;
}

- (MOEventBundle)initWithBundleIdentifier:(id)a3 usingBundle:(id)a4
{
  v5 = a4;
  v33 = a3;
  v47 = [v5 suggestionID];
  v46 = [v5 bundleType];
  v45 = [v5 creationDate];
  v44 = [v5 firstCreationDate];
  v43 = [v5 endDate];
  v42 = [v5 expirationDate];
  v41 = [v5 events];
  v32 = [v5 filtered];
  v31 = [v5 interfaceType];
  v30 = [v5 photoSource];
  v39 = [v5 promptLanguage];
  v29 = [v5 source];
  v40 = [v5 startDate];
  v38 = [v5 action];
  v28 = [v5 concurrentMediaAction];
  v37 = [v5 actions];
  v27 = [v5 persons];
  v26 = [v5 place];
  v25 = [v5 predominantWeather];
  v24 = [v5 resources];
  v36 = [v5 time];
  v23 = [v5 metaDataForRank];
  v22 = [v5 suggestionEngagementEvents];
  v21 = [v5 suggestionEngagementViewCount];
  v17 = [v5 appEntryEngagementEvents];
  v20 = [v5 isAggregatedAndSuppressed];
  v19 = [v5 summarizationGranularity];
  v18 = [v5 places];
  v16 = [v5 subBundleIDs];
  v6 = [v5 subSuggestionIDs];
  LOBYTE(a3) = [v5 includedInSummaryBundleOnly];
  v7 = [v5 bundleSubType];
  v8 = [v5 bundleSuperType];
  v9 = [v5 photoTraits];
  v10 = [v5 isSensitive];

  LOBYTE(v15) = v10;
  LOBYTE(v14) = a3;
  LOBYTE(v13) = v20;
  LOBYTE(v12) = v32;
  v35 = [(MOEventBundle *)self initWithBundleIdentifier:v33 suggestionID:v47 bundleType:v46 creationDate:v45 firstCreationDate:v44 endDate:v43 expirationDate:v42 events:v41 filtered:v12 interfaceType:v31 photoSource:v30 promptLanguage:v39 source:v29 startDate:v40 action:v38 concurrentMediaAction:v28 actions:v37 persons:v27 place:v26 predominantWeather:v25 resources:v24 time:v36 metaDataForRank:v23 suggestionEngagements:v22 suggestionEngagementViewCount:v21 appEntryEngagements:v17 isAggregatedAndSuppressed:v13 summarizationGranularity:v19 places:v18 subBundleIDs:v16 subSuggestionIDs:v6 includedInSummaryBundleOnly:v14 bundleSubType:v7 bundleSuperType:v8 photoTraits:v9 isSensitive:v15];

  return v35;
}

- (MOEventBundle)initWithBundleIdentifier:(id)a3 bundleType:(id)a4 creationDate:(id)a5 endDate:(id)a6 expirationDate:(id)a7 events:(id)a8 filtered:(BOOL)a9 interfaceType:(unint64_t)a10 photoSource:(unint64_t)a11 promptLanguage:(id)a12 source:(unint64_t)a13 startDate:(id)a14 action:(id)a15 concurrentMediaAction:(id)a16 actions:(id)a17 persons:(id)a18 place:(id)a19 predominantWeather:(id)a20 resources:(id)a21 time:(id)a22 metaDataForRank:(id)a23 suggestionEngagements:(id)a24 suggestionEngagementViewCount:(unint64_t)a25 appEntryEngagements:(id)a26 isAggregatedAndSuppressed:(BOOL)a27 summarizationGranularity:(unint64_t)a28 places:(id)a29 subBundleIDs:(id)a30 subSuggestionIDs:(id)a31 includedInSummaryBundleOnly:(BOOL)a32 bundleSubType:(unint64_t)a33 bundleSuperType:(unint64_t)a34 photoTraits:(id)a35 isSensitive:(BOOL)a36
{
  v50 = MEMORY[0x277CBEB58];
  v55 = a35;
  v36 = a31;
  v53 = a30;
  v52 = a29;
  v37 = a26;
  v38 = a23;
  v49 = a22;
  v48 = a21;
  v47 = a20;
  v46 = a19;
  v44 = a18;
  v45 = a17;
  v73 = a16;
  v72 = a15;
  v71 = a14;
  v70 = a12;
  v69 = a8;
  v67 = a7;
  v65 = a6;
  v63 = a5;
  v61 = a4;
  v59 = a3;
  v54 = [v50 setWithSet:a24];
  v51 = [MEMORY[0x277CBEB58] setWithSet:v37];

  LOBYTE(v43) = a36;
  LOBYTE(v42) = a32;
  LOBYTE(v41) = a27;
  LOBYTE(v40) = a9;
  v57 = [(MOEventBundle *)self initWithBundleIdentifier:v59 suggestionID:v59 bundleType:v61 creationDate:v63 firstCreationDate:0 endDate:v65 expirationDate:v67 events:v69 filtered:v40 interfaceType:a10 photoSource:a11 promptLanguage:v70 source:a13 startDate:v71 action:v72 concurrentMediaAction:v73 actions:v45 persons:v44 place:v46 predominantWeather:v47 resources:v48 time:v49 metaDataForRank:v38 suggestionEngagements:v54 suggestionEngagementViewCount:a25 appEntryEngagements:v51 isAggregatedAndSuppressed:v41 summarizationGranularity:a28 places:v52 subBundleIDs:v53 subSuggestionIDs:v36 includedInSummaryBundleOnly:v42 bundleSubType:a33 bundleSuperType:a34 photoTraits:v55 isSensitive:v43];

  return v57;
}

- (MOEventBundle)initWithBundleIdentifier:(id)a3 bundleType:(id)a4 creationDate:(id)a5 endDate:(id)a6 expirationDate:(id)a7 events:(id)a8 filtered:(BOOL)a9 interfaceType:(unint64_t)a10 photoSource:(unint64_t)a11 promptLanguage:(id)a12 source:(unint64_t)a13 startDate:(id)a14 action:(id)a15 concurrentMediaAction:(id)a16 actions:(id)a17 persons:(id)a18 place:(id)a19 predominantWeather:(id)a20 resources:(id)a21 time:(id)a22 metaDataForRank:(id)a23 suggestionEngagements:(id)a24 suggestionEngagementViewCount:(unint64_t)a25 appEntryEngagements:(id)a26 isAggregatedAndSuppressed:(BOOL)a27 summarizationGranularity:(unint64_t)a28 places:(id)a29 subBundleIDs:(id)a30 subSuggestionIDs:(id)a31 photoTraits:(id)a32 isSensitive:(BOOL)a33
{
  v47 = MEMORY[0x277CBEB58];
  v51 = a32;
  v50 = a31;
  v33 = a30;
  v49 = a29;
  v34 = a26;
  v35 = a23;
  v46 = a22;
  v45 = a21;
  v44 = a20;
  v43 = a19;
  v41 = a18;
  v42 = a17;
  v70 = a16;
  v69 = a15;
  v68 = a14;
  v67 = a12;
  v66 = a8;
  v64 = a7;
  v62 = a6;
  v60 = a5;
  v58 = a4;
  v56 = a3;
  v52 = [v47 setWithSet:a24];
  v48 = [MEMORY[0x277CBEB58] setWithSet:v34];

  LOBYTE(v40) = 0;
  LOBYTE(v39) = 0;
  LOBYTE(v38) = a27;
  LOBYTE(v37) = a9;
  v54 = [(MOEventBundle *)self initWithBundleIdentifier:v56 suggestionID:v56 bundleType:v58 creationDate:v60 firstCreationDate:0 endDate:v62 expirationDate:v64 events:v66 filtered:v37 interfaceType:a10 photoSource:a11 promptLanguage:v67 source:a13 startDate:v68 action:v69 concurrentMediaAction:v70 actions:v42 persons:v41 place:v43 predominantWeather:v44 resources:v45 time:v46 metaDataForRank:v35 suggestionEngagements:v52 suggestionEngagementViewCount:a25 appEntryEngagements:v48 isAggregatedAndSuppressed:v38 summarizationGranularity:a28 places:v49 subBundleIDs:v33 subSuggestionIDs:v50 includedInSummaryBundleOnly:v39 bundleSubType:0 bundleSuperType:0 photoTraits:v51 isSensitive:v40];

  return v54;
}

- (id)getBundleType
{
  v3 = [(MOEventBundle *)self interfaceType];
  v4 = [(MOEventBundle *)self bundleSuperType];

  return [MOEventBundle getInterfaceTypeString:v3 superType:v4];
}

+ (id)getInterfaceTypeString:(unint64_t)a3 superType:(unint64_t)a4
{
  switch(a3)
  {
    case 1uLL:
      v5 = @"activity";

      break;
    case 2uLL:
      v5 = @"outing";

      break;
    case 3uLL:
      v5 = @"photo_moment";

      break;
    case 4uLL:
      v5 = @"significant_contact";

      break;
    case 5uLL:
      v5 = @"media";

      break;
    case 6uLL:
      v5 = @"shared_content";

      break;
    case 7uLL:
      v5 = @"time_at_home";

      break;
    case 8uLL:
      v5 = @"topics_of_interest";

      break;
    case 9uLL:
      if (a4)
      {
        v7 = @"workoutTrend";
        if (a4 == 3)
        {
          v7 = @"conversationTrend";
        }

        v5 = v7;
      }

      else
      {
        v5 = @"trend";
      }

      break;
    case 0xAuLL:
      v5 = @"photo_memory";

      break;
    case 0xBuLL:
      v5 = @"evergreen";

      break;
    case 0xCuLL:
      v5 = @"timeContext";

      break;
    case 0xDuLL:
      v5 = @"trip";

      break;
    case 0xEuLL:
      v5 = @"state_of_mind";

      break;
    case 0xFuLL:
      v5 = @"clustering";

      break;
    case 0x10uLL:
      v5 = @"thematic_summary";

      break;
    default:
      v5 = @"unknown";

      break;
  }

  return v5;
}

- (id)getSuperTypeString
{
  v2 = [(MOEventBundle *)self bundleSuperType];
  if (v2 - 1 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_278775388[v2 - 1];
  }
}

- (id)getSubTypeString
{
  v2 = [(MOEventBundle *)self bundleSubType];
  result = @"unknown";
  if (v2 <= 600)
  {
    if (v2 <= 301)
    {
      if (v2 <= 201)
      {
        v4 = @"pre_onboarded_visit";
        v21 = @"workout";
        if (v2 != 201)
        {
          v21 = @"unknown";
        }

        if (v2 != 106)
        {
          v4 = v21;
        }

        v22 = @"shopping";
        v23 = @"trip";
        if (v2 != 105)
        {
          v23 = @"unknown";
        }

        if (v2 != 104)
        {
          v22 = v23;
        }

        if (v2 <= 105)
        {
          v4 = v22;
        }

        v7 = @"visit";
        v24 = @"flight";
        v25 = @"dining";
        if (v2 != 103)
        {
          v25 = @"unknown";
        }

        if (v2 != 102)
        {
          v24 = v25;
        }

        if (v2 != 101)
        {
          v7 = v24;
        }

        v10 = v2 <= 103;
      }

      else if (v2 > 205)
      {
        v4 = @"motion_activity_mixed_running_walking";
        v38 = @"contact";
        if (v2 != 301)
        {
          v38 = @"unknown";
        }

        if (v2 != 208)
        {
          v4 = v38;
        }

        v7 = @"motion_activity_transit";
        v39 = @"motion_activity_running";
        if (v2 != 207)
        {
          v39 = @"unknown";
        }

        if (v2 != 206)
        {
          v7 = v39;
        }

        v10 = v2 <= 207;
      }

      else
      {
        v4 = @"motion_activity_walking";
        v13 = @"workout_transit";
        if (v2 != 205)
        {
          v13 = @"unknown";
        }

        if (v2 != 204)
        {
          v4 = v13;
        }

        v7 = @"workout_weekly_summary";
        v14 = @"workout_routine";
        if (v2 != 203)
        {
          v14 = @"unknown";
        }

        if (v2 != 202)
        {
          v7 = v14;
        }

        v10 = v2 <= 203;
      }
    }

    else if (v2 > 406)
    {
      if (v2 > 500)
      {
        v4 = @"hosting_at_home";
        v42 = @"evergreen_at_home";
        if (v2 != 504)
        {
          v42 = @"unknown";
        }

        if (v2 != 503)
        {
          v4 = v42;
        }

        v7 = @"time_at_home";
        v43 = @"photos_at_home";
        if (v2 != 502)
        {
          v43 = @"unknown";
        }

        if (v2 != 501)
        {
          v7 = v43;
        }

        v10 = v2 <= 502;
      }

      else
      {
        v4 = @"media_on_repeat_weekly_summary_third_party";
        v19 = @"played_media_weekly_summary_third_party";
        if (v2 != 410)
        {
          v19 = @"unknown";
        }

        if (v2 != 409)
        {
          v4 = v19;
        }

        v7 = @"media_on_repeat_third_party";
        v20 = @"played_media_third_party";
        if (v2 != 408)
        {
          v20 = @"unknown";
        }

        if (v2 != 407)
        {
          v7 = v20;
        }

        v10 = v2 <= 408;
      }
    }

    else if (v2 > 402)
    {
      v4 = @"played_media_weekly_summary";
      v40 = @"media_suppressed";
      if (v2 != 406)
      {
        v40 = @"unknown";
      }

      if (v2 != 405)
      {
        v4 = v40;
      }

      v7 = @"played_podcast";
      v41 = @"media_on_repeat_weekly_summary";
      if (v2 != 404)
      {
        v41 = @"unknown";
      }

      if (v2 != 403)
      {
        v7 = v41;
      }

      v10 = v2 <= 404;
    }

    else
    {
      v4 = @"song_on_repeat";
      v11 = @"played_song";
      if (v2 != 402)
      {
        v11 = @"unknown";
      }

      if (v2 != 401)
      {
        v4 = v11;
      }

      v7 = @"contact_weekly_summary";
      v12 = @"contact_trend";
      if (v2 != 303)
      {
        v12 = @"unknown";
      }

      if (v2 != 302)
      {
        v7 = v12;
      }

      v10 = v2 <= 400;
    }

    goto LABEL_151;
  }

  if (v2 > 706)
  {
    if (v2 > 907)
    {
      if (v2 > 1003)
      {
        v4 = @"personalized_reflection_outing";
        v34 = @"personalized_reflection_contact";
        v35 = @"personalized_reflection_activity";
        if (v2 != 1103)
        {
          v35 = @"unknown";
        }

        if (v2 != 1102)
        {
          v34 = v35;
        }

        if (v2 != 1101)
        {
          v4 = v34;
        }

        v7 = @"thematic_summary_common_place";
        v36 = @"thematic_summary_photo_subject";
        v37 = @"thematic_summary_state_of_mind";
        if (v2 != 1006)
        {
          v37 = @"unknown";
        }

        if (v2 != 1005)
        {
          v36 = v37;
        }

        if (v2 != 1004)
        {
          v7 = v36;
        }

        v10 = v2 <= 1100;
      }

      else
      {
        v4 = @"thematic_summary_holiday";
        v15 = @"thematic_summary_social";
        v16 = @"thematic_summary_common_activity";
        if (v2 != 1003)
        {
          v16 = @"unknown";
        }

        if (v2 != 1002)
        {
          v15 = v16;
        }

        if (v2 != 1001)
        {
          v4 = v15;
        }

        v7 = @"clustering_thematic_grouping";
        v17 = @"clustering_time_at_home_grouping";
        v18 = @"clustering_unspecified_grouping";
        if (v2 != 910)
        {
          v18 = @"unknown";
        }

        if (v2 != 909)
        {
          v17 = v18;
        }

        if (v2 != 908)
        {
          v7 = v17;
        }

        v10 = v2 <= 1000;
      }
    }

    else if (v2 > 901)
    {
      v4 = @"clustering_location_grouping";
      v30 = @"clustering_activity_grouping";
      v31 = @"clustering_contact_grouping";
      if (v2 != 907)
      {
        v31 = @"unknown";
      }

      if (v2 != 906)
      {
        v30 = v31;
      }

      if (v2 != 905)
      {
        v4 = v30;
      }

      v7 = @"clustering_activity_routine";
      v32 = @"clustering_contact_routine";
      v33 = @"clustering_time_at_home_routine";
      if (v2 != 904)
      {
        v33 = @"unknown";
      }

      if (v2 != 903)
      {
        v32 = v33;
      }

      if (v2 != 902)
      {
        v7 = v32;
      }

      v10 = v2 <= 904;
    }

    else
    {
      v4 = @"daily_mood";
      v5 = @"momentary_emotion";
      v6 = @"clustering_outing_routine";
      if (v2 != 901)
      {
        v6 = @"unknown";
      }

      if (v2 != 802)
      {
        v5 = v6;
      }

      if (v2 != 801)
      {
        v4 = v5;
      }

      v7 = @"evergreen_gratitude";
      v8 = @"evergreen_resilience";
      v9 = @"evergreen_purpose";
      if (v2 != 709)
      {
        v9 = @"unknown";
      }

      if (v2 != 708)
      {
        v8 = v9;
      }

      if (v2 != 707)
      {
        v7 = v8;
      }

      v10 = v2 <= 800;
    }

LABEL_151:
    if (v10)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }

  if (v2 > 700)
  {
    v4 = @"evergreen_creativity";
    v26 = @"evergreen_kindness";
    v27 = @"evergreen_purpose";
    if (v2 != 706)
    {
      v27 = @"unknown";
    }

    if (v2 != 705)
    {
      v26 = v27;
    }

    if (v2 != 704)
    {
      v4 = v26;
    }

    v7 = @"evergreen_gratitude";
    v28 = @"evergreen_wisdom";
    v29 = @"evergreen_resillience";
    if (v2 != 703)
    {
      v29 = @"unknown";
    }

    if (v2 != 702)
    {
      v28 = v29;
    }

    if (v2 != 701)
    {
      v7 = v28;
    }

    v10 = v2 <= 703;
    goto LABEL_151;
  }

  switch(v2)
  {
    case 601:
      result = @"photo_memory_single_moment";
      break;
    case 602:
      result = @"photo_memory_person";
      break;
    case 603:
      result = @"photo_memory_social_group";
      break;
    case 604:
      result = @"photo_memory_last_month_at_home";
      break;
    case 605:
      result = @"photo_memory_lookbacks";
      break;
    case 606:
      result = @"photo_memory_foodie";
      break;
    case 607:
      result = @"photo_memory_pet";
      break;
    case 608:
      result = @"photo_memory_location";
      break;
    case 609:
      result = @"photo_memory_meaningful_event";
      break;
    case 610:
      result = @"photo_memory_trip";
      break;
    case 611:
      result = @"photo_memory_past_super_set";
      break;
    case 612:
      result = @"photo_memory_season";
      break;
    case 613:
      result = @"photo_memory_recent_highlights";
      break;
    case 614:
      result = @"photo_memory_family";
      break;
    case 615:
      result = @"photo_memory_exciting_moments";
      break;
    case 616:
      result = @"photo_memory_trends";
      break;
    case 617:
      result = @"photo_memory_others";
      break;
    default:
      return result;
  }

  return result;
}

- (unint64_t)getInterfaceTypeEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"activity"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"outing"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"photo_moment"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"significant_contact"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"media"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"shared_content"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"time_at_home"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"evergreen"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"topics_of_interest"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"trend"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"workoutTrend") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"conversationTrend"))
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"photo_memory"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"timeContext"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"trip"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"state_of_mind"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)getSuperTypeEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"outing"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"activity"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"contact"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"media"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"time_at_home"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"photo_memory"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"evergreen"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"state_of_mind"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"clustering"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"personalized_reflection"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v41 = objc_autoreleasePoolPush();
  v38 = MEMORY[0x277CCACA8];
  v58 = [(MOEventBundle *)self bundleIdentifier];
  v56 = [(MOEventBundle *)self suggestionID];
  v57 = [(MOEventBundle *)self subSuggestionIDs];
  v55 = [(MOEventBundle *)self startDate];
  v54 = [(MOEventBundle *)self endDate];
  v53 = [(MOEventBundle *)self creationDate];
  v52 = [(MOEventBundle *)self expirationDate];
  v51 = [(MOEventBundle *)self firstCreationDate];
  v50 = [(MOEventBundle *)self displayStartDate];
  v49 = [(MOEventBundle *)self displayEndDate];
  v37 = [(MOEventBundle *)self source];
  v36 = [(MOEventBundle *)self interfaceType];
  v35 = [(MOEventBundle *)self bundleSubType];
  v34 = [(MOEventBundle *)self bundleSuperType];
  if ([(MOEventBundle *)self filtered])
  {
    v3 = @"Yes";
  }

  else
  {
    v3 = @"No";
  }

  v32 = v3;
  if ([(MOEventBundle *)self isAggregatedAndSuppressed])
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  v31 = v4;
  v29 = [(MOEventBundle *)self summarizationGranularity];
  if ([(MOEventBundle *)self includedInSummaryBundleOnly])
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  v28 = v5;
  v40 = [(MOEventBundle *)self promptLanguage];
  v47 = [v40 mask];
  v27 = [(MOEventBundle *)self photoSource];
  v48 = [(MOEventBundle *)self photoTraits];
  v46 = [(MOEventBundle *)self action];
  v45 = [(MOEventBundle *)self concurrentMediaAction];
  v44 = [(MOEventBundle *)self place];
  v26 = [(MOEventBundle *)self time];
  v43 = [(MOEventBundle *)self predominantWeather];
  v24 = [(MOEventBundle *)self actions];
  v42 = [(MOEventBundle *)self persons];
  v22 = [(MOEventBundle *)self places];
  v16 = [(MOEventBundle *)self subBundleIDs];
  v33 = [(MOEventBundle *)self metaData];
  v17 = [v33 count];
  v30 = [(MOEventBundle *)self events];
  v6 = [v30 count];
  v19 = [(MOEventBundle *)self labels];
  v18 = [(MOEventBundle *)self promptLanguages];
  v15 = [(MOEventBundle *)self _allResourcesImpl];
  v25 = [(MOEventBundle *)self metaData];
  v23 = [v25 allKeys];
  v7 = [v23 count];
  v21 = [(MOEventBundle *)self metaData];
  v8 = [v21 allKeys];
  v20 = [(MOEventBundle *)self metaDataForRank];
  v9 = [v20 allKeys];
  v10 = [(MOEventBundle *)self rankingDictionary];
  v11 = [(MOEventBundle *)self suggestionEngagementEvents];
  v12 = [(MOEventBundle *)self suggestionEngagementViewCount];
  v13 = [(MOEventBundle *)self appEntryEngagementEvents];
  v39 = [v38 stringWithFormat:@"<MOEventBundle bundleIdentifier, %@, suggestionID, %@, sub Suggestion IDs, %@, startDate, %@, endDate, %@, creationDate, %@, expirationDate, %@, firstCreationDate, %@, displayStartDate, %@, displayEndDate, %@, source, %lu, interfaceType, %lu, bundleSubType, %lu, bundleSuperType, %lu, filtered, %@, agg./suppressed, %@, sum. granularity, %lu, includedInSummaryOnly, %@, promptLanguage, %@, photoSource, %lu, traits, %@, action, %@, concurrentMediaAction, %@, place, %@, time, %@, predominantWeather %@, actions, %@, persons, %@, places, %@, sub bundle IDs, %@, metaData.count, %lu, events.count, %lu, labels, %@, prompts, %@, allResources, %@, meta, %lu, meta keywords, %@, metaDataForRank, %@, rankings, %@, suggestionEngagements, %@, suggestionEngagementViewCount, %lu, appEntryEngagementEvents %@>", v58, v56, v57, v55, v54, v53, v52, v51, v50, v49, v37, v36, v35, v34, v32, v31, v29, v28, v47, v27, v48, v46, v45, v44, v26, v43, v24, v42, v22, v16, v17, v6, v19, v18, v15, v7, v8, v9, v10, v11, v12, v13];

  objc_autoreleasePoolPop(v41);

  return v39;
}

- (id)shortDescription
{
  v3 = objc_autoreleasePoolPush();
  v32 = MEMORY[0x277CCACA8];
  v34 = v3;
  v31 = [(MOEventBundle *)self bundleIdentifier];
  v30 = [(MOEventBundle *)self suggestionID];
  v37 = [(MOEventBundle *)self subSuggestionIDs];
  v29 = [(MOEventBundle *)self startDate];
  v36 = [(MOEventBundle *)self endDate];
  v27 = [(MOEventBundle *)self creationDate];
  v25 = [(MOEventBundle *)self firstCreationDate];
  v26 = [(MOEventBundle *)self interfaceType];
  v24 = [(MOEventBundle *)self bundleSubType];
  v23 = [(MOEventBundle *)self bundleSuperType];
  if ([(MOEventBundle *)self filtered])
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  v22 = v4;
  if ([(MOEventBundle *)self isAggregatedAndSuppressed])
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  v21 = v5;
  v20 = [(MOEventBundle *)self summarizationGranularity];
  if ([(MOEventBundle *)self includedInSummaryBundleOnly])
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  v19 = v6;
  v28 = [(MOEventBundle *)self promptLanguage];
  v35 = [v28 mask];
  v18 = [(MOEventBundle *)self photoSource];
  v17 = [(MOEventBundle *)self action];
  v16 = [(MOEventBundle *)self concurrentMediaAction];
  v15 = [(MOEventBundle *)self place];
  v14 = [(MOEventBundle *)self time];
  v7 = [(MOEventBundle *)self subBundleIDs];
  v13 = [(MOEventBundle *)self labels];
  v8 = [(MOEventBundle *)self rankingDictionary];
  v9 = [v8 objectForKeyedSubscript:@"visibilityCategoryForUI"];
  v10 = [(MOEventBundle *)self rankingDictionary];
  v11 = [v10 objectForKeyedSubscript:@"bundleGoodnessScore"];
  v33 = [v32 stringWithFormat:@"<MOEventBundle bundleIdentifier, %@, suggestionID, %@, sub Suggestion IDs, %@, startDate, %@, endDate, %@, creationDate, %@, firstCreationDate, %@, interfaceType, %lu, bundleSubType, %lu, bundleSuperType, %lu, filtered, %@, agg./suppressed, %@, sum. granularity, %lu, includedInSummaryOnly, %@, promptLanguage, %@, photoSource, %lu, action, %@, concurrentMediaAction, %@, place, %@, time, %@, sub bundle IDs, %@, labels, %@, rankingVisibilityCategoryForUI, %@, rankingBundleGoodnessScore, %@ >", v31, v30, v37, v29, v36, v27, v25, v26, v24, v23, v22, v21, v20, v19, v35, v18, v17, v16, v15, v14, v7, v13, v9, v11];

  objc_autoreleasePoolPop(v34);

  return v33;
}

- (MOEventBundle)initWithEventSet:(id)a3 filtered:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [(MOEventBundle *)self initWithBundleIdentifier:v8 suggestionID:v8 startDate:v7 endDate:v7 creationDate:v7];
  if (v9)
  {
    v10 = [v6 allObjects];
    events = v9->_events;
    v9->_events = v10;

    v9->_filtered = a4;
    [(MOEventBundle *)v9 setPropertiesBasedOnEvents];
  }

  return v9;
}

- (NSSet)getCategories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(MOEventBundle *)self events];
  v4 = [v3 valueForKeyPath:@"@distinctUnionOfObjects.category"];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (void)setPropertiesBasedOnEvents
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] distantFuture];
  startDate = self->_startDate;
  self->_startDate = v3;

  v5 = [MEMORY[0x277CBEAA8] distantPast];
  endDate = self->_endDate;
  self->_endDate = v5;

  v7 = [MEMORY[0x277CBEAA8] distantFuture];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v7;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [(MOEventBundle *)self events];
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = self->_startDate;
        v16 = [v14 startDate];
        LODWORD(v15) = [(NSDate *)v15 isAfterDate:v16];

        if (v15)
        {
          v17 = [v14 startDate];
          v18 = [v17 copy];
          v19 = self->_startDate;
          self->_startDate = v18;
        }

        v20 = [v14 endDate];
        v21 = [v20 isAfterDate:self->_endDate];

        if (v21)
        {
          v22 = [v14 endDate];
          v23 = [v22 copy];
          v24 = self->_endDate;
          self->_endDate = v23;
        }

        v25 = self->_expirationDate;
        v26 = [v14 expirationDate];
        LODWORD(v25) = [(NSDate *)v25 isAfterDate:v26];

        if (v25)
        {
          v27 = [v14 expirationDate];
          v28 = [v27 copy];
          v29 = self->_expirationDate;
          self->_expirationDate = v28;
        }

        v30 = [v14 provider] - 1;
        if (v30 <= 0xB)
        {
          self->_source |= qword_22D931EC8[v30];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)addBackgroundAction:(id)a3
{
  v7 = a3;
  v4 = MEMORY[0x277CBEB18];
  v5 = [(MOEventBundle *)self backgroundActions];
  v6 = [v4 arrayWithArray:v5];

  if (v7)
  {
    [v6 addObject:v7];
  }

  [(MOEventBundle *)self setBackgroundActions:v6];
}

- (void)addAction:(id)a3
{
  v7 = a3;
  v4 = MEMORY[0x277CBEB18];
  v5 = [(MOEventBundle *)self actions];
  v6 = [v4 arrayWithArray:v5];

  if (v7)
  {
    [v6 addObject:v7];
  }

  [(MOEventBundle *)self setActions:v6];
}

- (id)localStartDate
{
  v3 = [(MOEventBundle *)self time];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = [(MOEventBundle *)self time];
  v6 = [v5 timeZone];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBEBB0]);
    v8 = [(MOEventBundle *)self time];
    v9 = [v8 timeZone];
    v10 = [v7 initWithName:v9];

    v11 = [(MOEventBundle *)self startDate];
    v12 = [MOTime localTimeOfDate:v11 timeZone:v10];
  }

  else
  {
LABEL_4:
    v12 = [(MOEventBundle *)self startDate];
  }

  return v12;
}

- (id)localEndDate
{
  v3 = [(MOEventBundle *)self time];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = [(MOEventBundle *)self time];
  v6 = [v5 timeZone];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBEBB0]);
    v8 = [(MOEventBundle *)self time];
    v9 = [v8 timeZone];
    v10 = [v7 initWithName:v9];

    v11 = [(MOEventBundle *)self endDate];
    v12 = [MOTime localTimeOfDate:v11 timeZone:v10];
  }

  else
  {
LABEL_4:
    v12 = [(MOEventBundle *)self endDate];
  }

  return v12;
}

- (id)displayStartDate
{
  v63 = *MEMORY[0x277D85DE8];
  if ([(MOEventBundle *)self bundleSubType]== 202 || [(MOEventBundle *)self bundleSubType]== 404 || [(MOEventBundle *)self bundleSubType]== 405)
  {
    v3 = [MEMORY[0x277CBEAA8] distantFuture];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v4 = [(MOEventBundle *)self events];
    v5 = [v4 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v57;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v57 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v56 + 1) + 8 * i);
          if (([v9 category] == 2 || objc_msgSend(v9, "category") == 4) && objc_msgSend(v9, "provider") != 5)
          {
            v10 = [v9 startDate];
            v11 = [v3 isAfterDate:v10];

            if (v11)
            {
              v12 = [v9 startDate];

              v3 = v12;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v6);
    }

    v13 = [(MOEventBundle *)self time];
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = v13;
    v15 = [(MOEventBundle *)self time];
    v16 = [v15 timeZone];

    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CBEBB0]);
      v18 = [(MOEventBundle *)self time];
      v19 = [v18 timeZone];
      v20 = [v17 initWithName:v19];

      v21 = [MOTime localTimeOfDate:v3 timeZone:v20];
    }

    else
    {
LABEL_19:
      v21 = v3;
    }
  }

  else if ([(MOEventBundle *)self bundleSubType]== 203)
  {
    v21 = [(MOEventBundle *)self startDate];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v24 = [(MOEventBundle *)self events];
    v25 = [v24 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v53;
      v28 = @"kEventResourcePatternWorkoutInfoDictArray";
      v45 = *v53;
      v46 = v24;
      v44 = @"kEventResourcePatternWorkoutInfoDictArray";
      do
      {
        v29 = 0;
        v47 = v26;
        do
        {
          if (*v53 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v52 + 1) + 8 * v29);
          if ([v30 provider] == 5 && objc_msgSend(v30, "category") == 2)
          {
            v31 = [v30 patterns];
            v32 = [v31 objectForKey:v28];

            if (v32)
            {
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v33 = [v30 patterns];
              v34 = [v33 objectForKeyedSubscript:v28];

              v35 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
              if (v35)
              {
                v36 = v35;
                v37 = *v49;
                do
                {
                  for (j = 0; j != v36; ++j)
                  {
                    if (*v49 != v37)
                    {
                      objc_enumerationMutation(v34);
                    }

                    v39 = [*(*(&v48 + 1) + 8 * j) objectForKeyedSubscript:@"kEventResourcePatternWorkoutStartDate"];
                    [v39 doubleValue];
                    v41 = v40;

                    v42 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v41];
                    if ([v21 isAfterDate:v42])
                    {
                      v43 = v42;

                      v21 = v43;
                    }
                  }

                  v36 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
                }

                while (v36);
              }

              v27 = v45;
              v24 = v46;
              v28 = v44;
            }

            v26 = v47;
          }

          ++v29;
        }

        while (v29 != v26);
        v26 = [v24 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v26);
    }
  }

  else
  {
    v21 = [(MOEventBundle *)self localStartDate];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)displayEndDate
{
  v63 = *MEMORY[0x277D85DE8];
  if ([(MOEventBundle *)self bundleSubType]== 202 || [(MOEventBundle *)self bundleSubType]== 404 || [(MOEventBundle *)self bundleSubType]== 405)
  {
    v3 = [MEMORY[0x277CBEAA8] distantPast];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v4 = [(MOEventBundle *)self events];
    v5 = [v4 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v57;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v57 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v56 + 1) + 8 * i);
          if (([v9 category] == 2 || objc_msgSend(v9, "category") == 4) && objc_msgSend(v9, "provider") != 5)
          {
            v10 = [v9 endDate];
            v11 = [v3 isBeforeDate:v10];

            if (v11)
            {
              v12 = [v9 endDate];

              v3 = v12;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v6);
    }

    v13 = [(MOEventBundle *)self time];
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = v13;
    v15 = [(MOEventBundle *)self time];
    v16 = [v15 timeZone];

    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CBEBB0]);
      v18 = [(MOEventBundle *)self time];
      v19 = [v18 timeZone];
      v20 = [v17 initWithName:v19];

      v21 = [MOTime localTimeOfDate:v3 timeZone:v20];
    }

    else
    {
LABEL_19:
      v21 = v3;
    }
  }

  else if ([(MOEventBundle *)self bundleSubType]== 203)
  {
    v21 = [(MOEventBundle *)self endDate];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v24 = [(MOEventBundle *)self events];
    v25 = [v24 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v53;
      v28 = @"kEventResourcePatternWorkoutInfoDictArray";
      v45 = *v53;
      v46 = v24;
      v44 = @"kEventResourcePatternWorkoutInfoDictArray";
      do
      {
        v29 = 0;
        v47 = v26;
        do
        {
          if (*v53 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v52 + 1) + 8 * v29);
          if ([v30 provider] == 5 && objc_msgSend(v30, "category") == 2)
          {
            v31 = [v30 patterns];
            v32 = [v31 objectForKey:v28];

            if (v32)
            {
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v33 = [v30 patterns];
              v34 = [v33 objectForKeyedSubscript:v28];

              v35 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
              if (v35)
              {
                v36 = v35;
                v37 = *v49;
                do
                {
                  for (j = 0; j != v36; ++j)
                  {
                    if (*v49 != v37)
                    {
                      objc_enumerationMutation(v34);
                    }

                    v39 = [*(*(&v48 + 1) + 8 * j) objectForKeyedSubscript:@"kEventResourcePatternWorkoutEndDate"];
                    [v39 doubleValue];
                    v41 = v40;

                    v42 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v41];
                    if ([v21 isBeforeDate:v42])
                    {
                      v43 = v42;

                      v21 = v43;
                    }
                  }

                  v36 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
                }

                while (v36);
              }

              v27 = v45;
              v24 = v46;
              v28 = v44;
            }

            v26 = v47;
          }

          ++v29;
        }

        while (v29 != v26);
        v26 = [v24 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v26);
    }
  }

  else
  {
    v21 = [(MOEventBundle *)self localEndDate];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)addPerson:(id)a3
{
  v7 = a3;
  v4 = MEMORY[0x277CBEB18];
  v5 = [(MOEventBundle *)self persons];
  v6 = [v4 arrayWithArray:v5];

  if (v7)
  {
    [v6 addObject:v7];
  }

  [(MOEventBundle *)self setPersons:v6];
}

- (void)addResource:(id)a3
{
  v7 = a3;
  v4 = MEMORY[0x277CBEB18];
  v5 = [(MOEventBundle *)self resources];
  v6 = [v4 arrayWithArray:v5];

  if (v7)
  {
    [v6 addObject:v7];
  }

  [(MOEventBundle *)self setResources:v6];
}

- (void)addPhotoTraits:(id)a3
{
  v7 = a3;
  v4 = MEMORY[0x277CBEB18];
  v5 = [(MOEventBundle *)self photoTraits];
  v6 = [v4 arrayWithArray:v5];

  if ([v6 count])
  {
    [v6 addObjectsFromArray:v7];
  }

  [(MOEventBundle *)self setPhotoTraits:v6];
}

- (void)addResources:(id)a3
{
  v7 = a3;
  v4 = MEMORY[0x277CBEB18];
  v5 = [(MOEventBundle *)self resources];
  v6 = [v4 arrayWithArray:v5];

  if ([v7 count])
  {
    [v6 addObjectsFromArray:v7];
  }

  [(MOEventBundle *)self setResources:v6];
}

- (void)addMetaDataForRankForKey:(id)a3 value:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = [(MOEventBundle *)self metaDataForRank];
  v11 = [v6 dictionaryWithDictionary:v9];

  [v11 setObject:v7 forKey:v8];
  v10 = [v11 copy];
  [(MOEventBundle *)self setMetaDataForRank:v10];
}

- (id)_allResourcesImpl
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__MOEventBundle__allResourcesImpl__block_invoke;
  v6[3] = &unk_278775340;
  v4 = v3;
  v7 = v4;
  [(MOEventBundle *)self withResourcesUsingBlock:v6];

  return v4;
}

- (void)withResourcesUsingBlock:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v49 = self;
  v5 = [(MOEventBundle *)self resources];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __41__MOEventBundle_withResourcesUsingBlock___block_invoke;
  v58[3] = &unk_278775368;
  v6 = v4;
  v59 = v6;
  v60 = &v61;
  [v5 enumerateObjectsUsingBlock:v58];

  if ((v62[3] & 1) == 0)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v7 = [(MOEventBundle *)v49 persons];
    v8 = [v7 countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v8)
    {
      v9 = *v55;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v54 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [[MOResource alloc] initWithPerson:v11];
        if (!v13)
        {
          goto LABEL_10;
        }

        v14 = [v11 sourceEventIdentifier];
        [(MOResource *)v13 setSourceEventIdentifier:v14];

        (*(v6 + 2))(v6, v13, v62 + 3);
        if (v62[3])
        {
          v15 = 0;
        }

        else
        {
LABEL_10:
          v15 = 1;
        }

        objc_autoreleasePoolPop(v12);
        if (!v15)
        {
          goto LABEL_45;
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v54 objects:v66 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v16 = [(MOEventBundle *)v49 place];
    if (!v16)
    {
      goto LABEL_25;
    }

    v17 = [(MOEventBundle *)v49 places];
    v18 = [v17 count] == 0;

    if (!v18)
    {
      goto LABEL_25;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = [(MOEventBundle *)v49 place];
    v21 = [v20 startDate];

    if (!v21)
    {
      v21 = [(MOEventBundle *)v49 startDate];
    }

    v22 = [(MOEventBundle *)v49 place];
    v23 = [v22 endDate];

    if (!v23)
    {
      v23 = [(MOEventBundle *)v49 endDate];
    }

    v24 = [MOResource alloc];
    v25 = [(MOEventBundle *)v49 place];
    v26 = [(MOResource *)v24 initWithPlace:v25 startDate:v21 endDate:v23];

    if (!v26)
    {
      goto LABEL_23;
    }

    v27 = [(MOEventBundle *)v49 place];
    v28 = [v27 sourceEventIdentifier];
    [(MOResource *)v26 setSourceEventIdentifier:v28];

    (*(v6 + 2))(v6, v26, v62 + 3);
    if (v62[3])
    {
      v29 = 0;
    }

    else
    {
LABEL_23:
      v29 = 1;
    }

    objc_autoreleasePoolPop(v19);
    if (v29)
    {
LABEL_25:
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v7 = [(MOEventBundle *)v49 places];
      v30 = [v7 countByEnumeratingWithState:&v50 objects:v65 count:16];
      if (v30)
      {
        v31 = *v51;
        v48 = v6 + 16;
LABEL_27:
        v32 = 0;
        while (1)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(v7);
          }

          v33 = *(*(&v50 + 1) + 8 * v32);
          v34 = objc_autoreleasePoolPush();
          v35 = [v33 startDate];
          if (!v35)
          {
            v35 = [(MOEventBundle *)v49 startDate];
          }

          v36 = [v33 endDate];
          if (!v36)
          {
            v36 = [(MOEventBundle *)v49 endDate];
          }

          v37 = [[MOResource alloc] initWithPlace:v33 startDate:v35 endDate:v36];
          v39 = 1;
          if (v37)
          {
            v38 = [v33 sourceEventIdentifier];
            [(MOResource *)v37 setSourceEventIdentifier:v38];

            (*(v6 + 2))(v6, v37, v62 + 3);
            if (v62[3])
            {
              v39 = 0;
            }
          }

          objc_autoreleasePoolPop(v34);
          if (!v39)
          {
            break;
          }

          if (v30 == ++v32)
          {
            v30 = [v7 countByEnumeratingWithState:&v50 objects:v65 count:16];
            if (v30)
            {
              goto LABEL_27;
            }

            goto LABEL_41;
          }
        }

LABEL_45:

        goto LABEL_46;
      }

LABEL_41:

      v40 = [(MOEventBundle *)v49 predominantWeather];

      if (v40)
      {
        v41 = objc_autoreleasePoolPush();
        v42 = [MOResource alloc];
        v43 = [(MOEventBundle *)v49 predominantWeather];
        v44 = [(MOResource *)v42 initWithWeather:v43];

        if (v44)
        {
          v45 = [(MOEventBundle *)v49 predominantWeather];
          v46 = [v45 sourceEventIdentifier];
          [(MOResource *)v44 setSourceEventIdentifier:v46];

          (*(v6 + 2))(v6, v44, v62 + 3);
        }

        objc_autoreleasePoolPop(v41);
      }
    }
  }

LABEL_46:

  _Block_object_dispose(&v61, 8);
  v47 = *MEMORY[0x277D85DE8];
}

uint64_t __41__MOEventBundle_withResourcesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a4;
  return result;
}

- (void)buildResources
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v79 = self;
  v5 = [(MOEventBundle *)self persons];
  v6 = [v5 countByEnumeratingWithState:&v89 objects:v95 count:16];
  v7 = 0x278772000uLL;
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v2 = *v90;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v90 != v2)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v89 + 1) + 8 * i);
        v12 = [[MOResource alloc] initWithPerson:v11];
        v13 = v12;
        if (v12)
        {
          v14 = [(MOResource *)v12 identifier];

          if (v14)
          {
            v15 = [v11 sourceEventIdentifier];
            [(MOResource *)v13 setSourceEventIdentifier:v15];

            [(MOResource *)v13 priorityScore];
            if (v16 <= 0.0)
            {
              [(MOResource *)v13 setPriorityScore:v9++ + 10000.0];
            }

            [v4 addObject:v13];
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v89 objects:v95 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v17 = v79;
  if ([(MOEventBundle *)v79 interfaceType]!= 7)
  {
    v18 = [(MOEventBundle *)v79 interfaceType];
    if (v18 == 1)
    {
      obj = [(MOEventBundle *)v79 place];
      if ([obj placeUserType] == 1)
      {
LABEL_95:

        goto LABEL_96;
      }
    }

    v19 = [(MOEventBundle *)v79 interfaceType];
    if (v19 == 1)
    {
      v20 = [(MOEventBundle *)v79 place];
      if ([v20 placeUserType] == 2)
      {
        v21 = 0;
LABEL_46:

LABEL_47:
        if (v18 == 1)
        {

          if (!v21)
          {
            goto LABEL_96;
          }
        }

        else if (!v21)
        {
          goto LABEL_96;
        }

        v29 = [(MOEventBundle *)v17 place];
        [v29 priorityScore];
        if (v30 < 20000.0)
        {
          v31 = [(MOEventBundle *)v17 place];
          if (v31)
          {
            v32 = v31;
            v33 = [(MOEventBundle *)v17 places];
            v34 = [v33 count];

            if (v34)
            {
LABEL_64:
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              obj = [(MOEventBundle *)v17 places];
              v44 = [obj countByEnumeratingWithState:&v85 objects:v94 count:16];
              if (!v44)
              {
                goto LABEL_95;
              }

              v45 = v44;
              v46 = *v86;
              while (1)
              {
                for (j = 0; j != v45; ++j)
                {
                  if (*v86 != v46)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v48 = *(*(&v85 + 1) + 8 * j);
                  [v48 priorityScore];
                  if (v49 < 20000.0)
                  {
                    v50 = [(MOEventBundle *)v17 interfaceType];
                    if (v50 == 12)
                    {
                      v2 = [(MOEventBundle *)v17 place];
                      if ([v2 placeUserType] == 1)
                      {
                        v51 = v2;
LABEL_92:

                        continue;
                      }

                      if ([(MOEventBundle *)v17 interfaceType]== 12)
                      {
LABEL_76:
                        v52 = v2;
                        v53 = [(MOEventBundle *)v17 place];
                        v54 = [v53 placeUserType];

                        if (v50 == 12)
                        {

                          v28 = v54 == 2;
                          v2 = v52;
                          v17 = v79;
                          if (v28)
                          {
                            goto LABEL_81;
                          }
                        }

                        else
                        {
                          v28 = v54 == 2;
                          v17 = v79;
                          v2 = v52;
                          if (v28)
                          {
LABEL_81:
                            v7 = 0x278772000;
                            continue;
                          }
                        }
                      }

                      else
                      {
                      }
                    }

                    else if ([(MOEventBundle *)v17 interfaceType]== 12)
                    {
                      goto LABEL_76;
                    }

                    v55 = v2;
                    v51 = [v48 startDate];
                    if (!v51)
                    {
                      v51 = [(MOEventBundle *)v17 startDate];
                    }

                    v56 = [v48 endDate];
                    if (!v56)
                    {
                      v56 = [(MOEventBundle *)v17 endDate];
                    }

                    v57 = [[MOResource alloc] initWithPlace:v48 startDate:v51 endDate:v56];
                    if (v57)
                    {
                      v58 = [v48 sourceEventIdentifier];
                      [(MOResource *)v57 setSourceEventIdentifier:v58];

                      [(MOResource *)v57 priorityScore];
                      if (v59 <= 0.0)
                      {
                        [(MOResource *)v57 setPriorityScore:v9++ + 10000.0];
                      }

                      [v4 addObject:v57];
                    }

                    v17 = v79;
                    v2 = v55;
                    v7 = 0x278772000uLL;
                    goto LABEL_92;
                  }
                }

                v45 = [obj countByEnumeratingWithState:&v85 objects:v94 count:16];
                if (!v45)
                {
                  goto LABEL_95;
                }
              }
            }

            v35 = [(MOEventBundle *)v17 place];
            v29 = [v35 startDate];

            if (!v29)
            {
              v29 = [(MOEventBundle *)v17 startDate];
            }

            v36 = [(MOEventBundle *)v17 place];
            v37 = [v36 endDate];

            if (!v37)
            {
              v37 = [(MOEventBundle *)v17 endDate];
            }

            v38 = [MOResource alloc];
            v39 = [(MOEventBundle *)v17 place];
            v40 = [(MOResource *)v38 initWithPlace:v39 startDate:v29 endDate:v37];

            if (v40)
            {
              v41 = [(MOEventBundle *)v17 place];
              v42 = [v41 sourceEventIdentifier];
              [(MOResource *)v40 setSourceEventIdentifier:v42];

              [(MOResource *)v40 priorityScore];
              if (v43 <= 0.0)
              {
                [(MOResource *)v40 setPriorityScore:v9++ + 10000.0];
              }

              [v4 addObject:v40];
            }
          }
        }

        goto LABEL_64;
      }

      v78 = v20;
    }

    v2 = [(MOEventBundle *)v79 interfaceType];
    if (v2 == 12)
    {
      v77 = [(MOEventBundle *)v79 place];
      if ([v77 placeUserType] == 1)
      {
        v21 = 0;
LABEL_44:

LABEL_45:
        v20 = v78;
        if (v19 != 1)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    v22 = v79;
    v23 = [(MOEventBundle *)v79 interfaceType];
    if (v23 == 12)
    {
      v24 = [(MOEventBundle *)v79 place];
      if ([v24 placeUserType] == 2)
      {
        v21 = 0;
        goto LABEL_42;
      }

      v76 = v24;
      v22 = v79;
    }

    v25 = [(MOEventBundle *)v22 interfaceType];
    if (v25 == 16)
    {
      v26 = [(MOEventBundle *)v22 place];
      if ([v26 placeUserType] == 1)
      {

        v21 = 0;
        v24 = v76;
        if (v23 != 12)
        {
LABEL_43:
          v17 = v79;
          if (v2 != 12)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

LABEL_42:

        goto LABEL_43;
      }

      v75 = v26;
      if ([(MOEventBundle *)v22 interfaceType]!= 16)
      {
        v21 = 1;
        v24 = v76;
        goto LABEL_40;
      }

      v22 = v79;
    }

    else if ([(MOEventBundle *)v22 interfaceType]!= 16)
    {
      v21 = 1;
      v24 = v76;
      goto LABEL_41;
    }

    v27 = [(MOEventBundle *)v22 place];
    v21 = [v27 placeUserType] != 2;

    v28 = v25 == 16;
    v24 = v76;
    if (!v28)
    {
LABEL_41:
      if (v23 != 12)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

LABEL_40:

    goto LABEL_41;
  }

LABEL_96:
  v60 = [(MOEventBundle *)v17 predominantWeather];

  if (v60)
  {
    v61 = objc_alloc(*(v7 + 3032));
    v62 = [(MOEventBundle *)v17 predominantWeather];
    v63 = [v61 initWithWeather:v62];

    if (v63)
    {
      v64 = [(MOEventBundle *)v17 predominantWeather];
      v65 = [v64 sourceEventIdentifier];
      [v63 setSourceEventIdentifier:v65];

      [v63 priorityScore];
      if (v66 <= 0.0)
      {
        [v63 setPriorityScore:v9++ + 10000.0];
      }

      [v4 addObject:v63];
    }
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v67 = [(MOEventBundle *)v17 resources];
  v68 = [v67 countByEnumeratingWithState:&v81 objects:v93 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v82;
    do
    {
      for (k = 0; k != v69; ++k)
      {
        if (*v82 != v70)
        {
          objc_enumerationMutation(v67);
        }

        v72 = *(*(&v81 + 1) + 8 * k);
        [v72 priorityScore];
        if (v73 <= 0.0)
        {
          [v72 setPriorityScore:v9++ + 10000.0];
        }

        [v4 addObject:v72];
      }

      v69 = [v67 countByEnumeratingWithState:&v81 objects:v93 count:16];
    }

    while (v69);
  }

  [(MOEventBundle *)v17 setResources:v4];
  v74 = *MEMORY[0x277D85DE8];
}

- (void)addEvent:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(MOEventBundle *)self events];

    if (v5)
    {
      v6 = MEMORY[0x277CBEB18];
      v7 = [(MOEventBundle *)self events];
      v8 = [v6 arrayWithArray:v7];

      [v8 addObject:v4];
      v9 = [v8 copy];
      [(MOEventBundle *)self setEvents:v9];
    }

    else
    {
      v11[0] = v4;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [(MOEventBundle *)self setEvents:v8];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addEvents:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    if ([v4 count])
    {
      v5 = [(MOEventBundle *)self events];

      if (v5)
      {
        v6 = MEMORY[0x277CBEB18];
        v7 = [(MOEventBundle *)self events];
        v8 = [v6 arrayWithArray:v7];

        if ([v10 count])
        {
          [v8 addObjectsFromArray:v10];
        }

        v9 = [v8 copy];
        [(MOEventBundle *)self setEvents:v9];
      }

      else
      {
        [(MOEventBundle *)self setEvents:v10];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (MOEventBundle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(MOEventBundle *)self initWithBundleIdentifier:v5 creationDate:v6];
    v11 = v10;
    if (v10)
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
      startDate = v11->_startDate;
      v11->_startDate = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
      endDate = v11->_endDate;
      v11->_endDate = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstCreationDate"];
      firstCreationDate = v11->_firstCreationDate;
      v11->_firstCreationDate = v16;

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
      expirationDate = v11->_expirationDate;
      v11->_expirationDate = v18;

      v11->_source = [v4 decodeIntegerForKey:@"source"];
      v11->_interfaceType = [v4 decodeIntegerForKey:@"interfaceType"];
      v11->_photoSource = [v4 decodeIntegerForKey:@"photoSource"];
      v20 = MEMORY[0x277CBEB98];
      v21 = objc_opt_class();
      v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
      v23 = [v4 decodeObjectOfClasses:v22 forKey:@"events"];
      events = v11->_events;
      v11->_events = v23;

      v11->_filtered = [v4 decodeBoolForKey:@"filtered"];
      v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"promptLanguage"];
      promptLanguage = v11->_promptLanguage;
      v11->_promptLanguage = v25;

      v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
      action = v11->_action;
      v11->_action = v27;

      v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"concurrentMediaAction"];
      concurrentMediaAction = v11->_concurrentMediaAction;
      v11->_concurrentMediaAction = v29;

      v31 = MEMORY[0x277CBEB98];
      v32 = objc_opt_class();
      v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
      v34 = [v4 decodeObjectOfClasses:v33 forKey:@"actions"];
      actions = v11->_actions;
      v11->_actions = v34;

      v36 = MEMORY[0x277CBEB98];
      v37 = objc_opt_class();
      v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
      v39 = [v4 decodeObjectOfClasses:v38 forKey:@"backgroundActions"];
      backgroundActions = v11->_backgroundActions;
      v11->_backgroundActions = v39;

      v41 = MEMORY[0x277CBEB98];
      v42 = objc_opt_class();
      v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
      v44 = [v4 decodeObjectOfClasses:v43 forKey:@"persons"];
      persons = v11->_persons;
      v11->_persons = v44;

      v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"place"];
      place = v11->_place;
      v11->_place = v46;

      v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weather"];
      predominantWeather = v11->_predominantWeather;
      v11->_predominantWeather = v48;

      v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
      time = v11->_time;
      v11->_time = v50;

      v52 = MEMORY[0x277CBEB98];
      v53 = objc_opt_class();
      v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
      v55 = [v4 decodeObjectOfClasses:v54 forKey:@"resources"];
      resources = v11->_resources;
      v11->_resources = v55;

      v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rankingDictionary"];
      v58 = [MODictionaryEncoder decodeToDictionary:v57];
      rankingDictionary = v11->_rankingDictionary;
      v11->_rankingDictionary = v58;

      v60 = MEMORY[0x277CBEB98];
      v61 = objc_opt_class();
      v62 = [v60 setWithObjects:{v61, objc_opt_class(), 0}];
      v63 = [v4 decodeObjectOfClasses:v62 forKey:@"labels"];
      labels = v11->_labels;
      v11->_labels = v63;

      v65 = MEMORY[0x277CBEB98];
      v66 = objc_opt_class();
      v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
      v68 = [v4 decodeObjectOfClasses:v67 forKey:@"promptLanguages"];
      promptLanguages = v11->_promptLanguages;
      v11->_promptLanguages = v68;

      v70 = objc_alloc(MEMORY[0x277CBEB38]);
      v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metaData"];
      v72 = [MODictionaryEncoder decodeToDictionary:v71];
      v73 = [v70 initWithDictionary:v72];
      metaData = v11->_metaData;
      v11->_metaData = v73;

      v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metaDataForRank"];
      v76 = [MODictionaryEncoder decodeToDictionary:v75];
      metaDataForRank = v11->_metaDataForRank;
      v11->_metaDataForRank = v76;

      v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestionID"];
      suggestionID = v11->_suggestionID;
      v11->_suggestionID = v78;

      v80 = MEMORY[0x277CBEB58];
      v81 = MEMORY[0x277CBEB98];
      v82 = objc_opt_class();
      v83 = [v81 setWithObjects:{v82, objc_opt_class(), 0}];
      v84 = [v4 decodeObjectOfClasses:v83 forKey:@"suggestionEngagements"];
      v85 = [v80 setWithArray:v84];
      suggestionEngagementEvents = v11->_suggestionEngagementEvents;
      v11->_suggestionEngagementEvents = v85;

      v87 = MEMORY[0x277CBEB98];
      v88 = objc_opt_class();
      v89 = [v87 setWithObjects:{v88, objc_opt_class(), 0}];
      v90 = [v4 decodeObjectOfClasses:v89 forKey:@"places"];
      places = v11->_places;
      v11->_places = v90;

      v11->_isAggregatedAndSuppressed = [v4 decodeBoolForKey:@"isAggregatedAndSuppressed"];
      v11->_summarizationGranularity = [v4 decodeIntegerForKey:@"summarizationGranularity"];
      v92 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subBundleIDs"];
      subBundleIDs = v11->_subBundleIDs;
      v11->_subBundleIDs = v92;

      v94 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subSuggestionIDs"];
      subSuggestionIDs = v11->_subSuggestionIDs;
      v11->_subSuggestionIDs = v94;

      v11->_suggestionEngagementViewCount = [v4 decodeIntegerForKey:@"suggestionViewCount"];
      v96 = MEMORY[0x277CBEB58];
      v97 = MEMORY[0x277CBEB98];
      v98 = objc_opt_class();
      v99 = [v97 setWithObjects:{v98, objc_opt_class(), 0}];
      v100 = [v4 decodeObjectOfClasses:v99 forKey:@"appEntryEngagements"];
      v101 = [v96 setWithArray:v100];
      appEntryEngagementEvents = v11->_appEntryEngagementEvents;
      v11->_appEntryEngagementEvents = v101;

      v103 = MEMORY[0x277CBEB98];
      v104 = objc_opt_class();
      v105 = [v103 setWithObjects:{v104, objc_opt_class(), 0}];
      v106 = [v4 decodeObjectOfClasses:v105 forKey:@"visitEventsRejectedByWatchLocation"];
      visitEventsRejectedByWatchLocation = v11->_visitEventsRejectedByWatchLocation;
      v11->_visitEventsRejectedByWatchLocation = v106;

      v11->_bundleSubType = [v4 decodeIntegerForKey:@"bundleSubType"];
      v11->_bundleSuperType = [v4 decodeIntegerForKey:@"bundleSuperType"];
      v108 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterMetadata"];
      clusterMetadata = v11->_clusterMetadata;
      v11->_clusterMetadata = v108;

      v110 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outlierMetadata"];
      outlierMetadata = v11->_outlierMetadata;
      v11->_outlierMetadata = v110;

      v112 = MEMORY[0x277CBEB98];
      v113 = objc_opt_class();
      v114 = [v112 setWithObjects:{v113, objc_opt_class(), 0}];
      v115 = [v4 decodeObjectOfClasses:v114 forKey:@"photoTraits"];
      photoTraits = v11->_photoTraits;
      v11->_photoTraits = v115;

      v11->_isSensitive = [v4 decodeBoolForKey:@"isSensitive"];
    }

    self = v11;
    v9 = self;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v12 = a3;
  [v12 encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [v12 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v12 encodeObject:self->_firstCreationDate forKey:@"firstCreationDate"];
  [v12 encodeObject:self->_startDate forKey:@"startDate"];
  [v12 encodeObject:self->_endDate forKey:@"endDate"];
  [v12 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v12 encodeInteger:self->_source forKey:@"source"];
  [v12 encodeInteger:self->_interfaceType forKey:@"interfaceType"];
  [v12 encodeInteger:self->_photoSource forKey:@"photoSource"];
  [v12 encodeObject:self->_events forKey:@"events"];
  [v12 encodeBool:self->_filtered forKey:@"filtered"];
  [v12 encodeObject:self->_promptLanguage forKey:@"promptLanguage"];
  [v12 encodeObject:self->_action forKey:@"action"];
  [v12 encodeObject:self->_concurrentMediaAction forKey:@"concurrentMediaAction"];
  [v12 encodeObject:self->_actions forKey:@"actions"];
  [v12 encodeObject:self->_backgroundActions forKey:@"backgroundActions"];
  [v12 encodeObject:self->_persons forKey:@"persons"];
  [v12 encodeObject:self->_place forKey:@"place"];
  [v12 encodeObject:self->_predominantWeather forKey:@"weather"];
  [v12 encodeObject:self->_time forKey:@"time"];
  [v12 encodeObject:self->_resources forKey:@"resources"];
  v5 = [MODictionaryEncoder encodeDictionary:self->_rankingDictionary];
  [v12 encodeObject:v5 forKey:@"rankingDictionary"];

  [v12 encodeObject:self->_labels forKey:@"labels"];
  [v12 encodeObject:self->_promptLanguages forKey:@"promptLanguages"];
  v6 = [MODictionaryEncoder encodeDictionary:self->_metaData];
  [v12 encodeObject:v6 forKey:@"metaData"];

  v7 = [MODictionaryEncoder encodeDictionary:self->_metaDataForRank];
  [v12 encodeObject:v7 forKey:@"metaDataForRank"];

  [v12 encodeObject:self->_suggestionID forKey:@"suggestionID"];
  v8 = [(MOEventBundle *)self suggestionEngagementEvents];
  v9 = [v8 allObjects];
  [v12 encodeObject:v9 forKey:@"suggestionEngagements"];

  [v12 encodeObject:self->_places forKey:@"places"];
  [v12 encodeBool:self->_isAggregatedAndSuppressed forKey:@"isAggregatedAndSuppressed"];
  [v12 encodeInteger:self->_summarizationGranularity forKey:@"summarizationGranularity"];
  [v12 encodeObject:self->_subBundleIDs forKey:@"subBundleIDs"];
  [v12 encodeObject:self->_subSuggestionIDs forKey:@"subSuggestionIDs"];
  [v12 encodeInteger:self->_suggestionEngagementViewCount forKey:@"suggestionViewCount"];
  [v12 encodeObject:self->_visitEventsRejectedByWatchLocation forKey:@"visitEventsRejectedByWatchLocation"];
  v10 = [(MOEventBundle *)self appEntryEngagementEvents];
  v11 = [v10 allObjects];
  [v12 encodeObject:v11 forKey:@"appEntryEngagements"];

  [v12 encodeInteger:self->_bundleSubType forKey:@"bundleSubType"];
  [v12 encodeInteger:self->_bundleSuperType forKey:@"bundleSuperType"];
  [v12 encodeObject:self->_clusterMetadata forKey:@"clusterMetadata"];
  [v12 encodeObject:self->_outlierMetadata forKey:@"outlierMetadata"];
  [v12 encodeObject:self->_photoTraits forKey:@"photoTraits"];
  [v12 encodeBool:self->_isSensitive forKey:@"isSensitive"];
}

- (id)dateInterval
{
  v4 = [(MOEventBundle *)self startDate];
  if (v4)
  {
  }

  else
  {
    v5 = [(MOEventBundle *)self endDate];

    if (!v5)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_16;
    }
  }

  v6 = [(MOEventBundle *)self endDate];

  v7 = [(MOEventBundle *)self startDate];
  v8 = v7;
  if (!v6)
  {
    [(MOEventBundle *)self setEndDate:v7];
LABEL_14:

    goto LABEL_15;
  }

  if (!v8)
  {
    v8 = [(MOEventBundle *)self endDate];
    [(MOEventBundle *)self setStartDate:v8];
    goto LABEL_14;
  }

  v9 = [(MOEventBundle *)self startDate];
  v10 = [(MOEventBundle *)self endDate];
  v11 = [v9 isOnOrBefore:v10];

  if ((v11 & 1) == 0)
  {
    v12 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(MOEventBundle *)self dateInterval];
    }

    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MOEventBundle.m" lineNumber:1586 description:{@"startDate is NOT earlier than endDate, bundle, %@ (in %s:%d)", self, "-[MOEventBundle dateInterval]", 1586}];
  }

  v14 = [(MOEventBundle *)self startDate];
  v15 = [(MOEventBundle *)self endDate];
  v16 = [v14 isBeforeDate:v15];

  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v18 = objc_alloc(MEMORY[0x277CCA970]);
  v19 = [(MOEventBundle *)self startDate];
  v20 = [(MOEventBundle *)self endDate];
  v17 = [v18 initWithStartDate:v19 endDate:v20];

LABEL_16:

  return v17;
}

- (unint64_t)hash
{
  v2 = [(MOEventBundle *)self bundleIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqualToEventBundle:(id)a3
{
  v115 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_3;
  }

  v5 = [(MOEventBundle *)self bundleIdentifier];
  v6 = [(MOEventBundle *)v4 bundleIdentifier];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    goto LABEL_3;
  }

  v11 = [(MOEventBundle *)self suggestionID];
  if (v11)
  {
    v12 = v11;
    v13 = [(MOEventBundle *)v4 suggestionID];
    if (v13)
    {
      v14 = v13;
      v15 = [(MOEventBundle *)self suggestionID];
      v16 = [(MOEventBundle *)v4 suggestionID];
      v17 = [v15 isEqual:v16];

      if (v17)
      {
LABEL_3:
        LOBYTE(v8) = 1;
        goto LABEL_4;
      }
    }

    else
    {
    }
  }

  v18 = [(MOEventBundle *)self interfaceType];
  if (v18 != [(MOEventBundle *)v4 interfaceType])
  {
LABEL_84:
    LOBYTE(v8) = 0;
    goto LABEL_4;
  }

  LOBYTE(v8) = 0;
  switch([(MOEventBundle *)v4 interfaceType])
  {
    case 0uLL:
      if (![(MOEventBundle *)self isEqualPropertyForObject:self other:v4 propertyPath:@"startDate" threshold:60.0])
      {
        goto LABEL_84;
      }

      v19 = @"endDate";
      v23 = 60.0;
      goto LABEL_42;
    case 1uLL:
    case 2uLL:
      if (![(MOEventBundle *)self isEqualPropertyForObject:self other:v4 propertyPath:@"startDate" threshold:600.0])
      {
        goto LABEL_84;
      }

      v19 = @"endDate";
      v20 = self;
      v21 = self;
      v22 = v4;
      v23 = 600.0;
      goto LABEL_43;
    case 4uLL:
      if (![(MOEventBundle *)self isEqualBasicPropertiesForObject:self other:v4])
      {
        goto LABEL_84;
      }

      v44 = [(MOEventBundle *)self startDate];
      v45 = [(MOEventBundle *)v4 startDate];
      v8 = [v44 isSameDayWithDate:v45];

      if (!v8)
      {
        goto LABEL_4;
      }

      v27 = [(MOEventBundle *)self isEqualPersonsForObject:self other:v4];
      goto LABEL_44;
    case 5uLL:
      if (![(MOEventBundle *)self isEqualBasicPropertiesForObject:self other:v4])
      {
        goto LABEL_84;
      }

      v28 = [(MOEventBundle *)self startDate];
      v29 = [(MOEventBundle *)v4 startDate];
      v8 = [v28 isSameDayWithDate:v29];

      if (!v8)
      {
        goto LABEL_4;
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v30 = [(MOEventBundle *)self resources];
      v31 = [v30 countByEnumeratingWithState:&v107 objects:v114 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = 0;
        v34 = *v108;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v108 != v34)
            {
              objc_enumerationMutation(v30);
            }

            v36 = *(*(&v107 + 1) + 8 * i);
            v37 = objc_autoreleasePoolPush();
            if ([v36 type] == 3)
            {
              v38 = [v36 getDictionary];

              v33 = v38;
            }

            objc_autoreleasePoolPop(v37);
          }

          v32 = [v30 countByEnumeratingWithState:&v107 objects:v114 count:16];
        }

        while (v32);
      }

      else
      {
        v33 = 0;
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v84 = [(MOEventBundle *)v4 resources];
      v85 = [v84 countByEnumeratingWithState:&v103 objects:v113 count:16];
      if (!v85)
      {
        v87 = 0;
LABEL_106:

        goto LABEL_107;
      }

      v86 = v85;
      v87 = 0;
      v88 = *v104;
      do
      {
        for (j = 0; j != v86; ++j)
        {
          if (*v104 != v88)
          {
            objc_enumerationMutation(v84);
          }

          v90 = *(*(&v103 + 1) + 8 * j);
          v91 = objc_autoreleasePoolPush();
          if ([v90 type] == 3)
          {
            v92 = [v90 getDictionary];

            v87 = v92;
          }

          objc_autoreleasePoolPop(v91);
        }

        v86 = [v84 countByEnumeratingWithState:&v103 objects:v113 count:16];
      }

      while (v86);

      if (v33 && v87)
      {
        v84 = [v33 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
        v93 = [v87 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
        v94 = v93;
        if (v84 && v93)
        {
          [v84 isEqualToString:v93];
        }

        goto LABEL_106;
      }

LABEL_107:

      goto LABEL_3;
    case 6uLL:
      v19 = @"dateInterval";
      v23 = 0.8;
LABEL_42:
      v20 = self;
      v21 = self;
      v22 = v4;
LABEL_43:
      v27 = [(MOEventBundle *)v20 isEqualPropertyForObject:v21 other:v22 propertyPath:v19 threshold:v23];
      goto LABEL_44;
    case 7uLL:
      v46 = [(MOEventBundle *)self bundleSubType];
      if (v46 != [(MOEventBundle *)v4 bundleSubType])
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    case 8uLL:
      if (![(MOEventBundle *)self isEqualPropertyForObject:self other:v4 propertyPath:@"dateInterval" threshold:0.8])
      {
        goto LABEL_84;
      }

      v27 = [(MOEventBundle *)self isEqualResourcesForObject:self other:v4 resourceType:8];
      goto LABEL_44;
    case 10uLL:
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v47 = [(MOEventBundle *)self resources];
      v48 = [v47 countByEnumeratingWithState:&v99 objects:v112 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = 0;
        v51 = *v100;
        do
        {
          for (k = 0; k != v49; ++k)
          {
            if (*v100 != v51)
            {
              objc_enumerationMutation(v47);
            }

            v53 = *(*(&v99 + 1) + 8 * k);
            v54 = objc_autoreleasePoolPush();
            if ([v53 type] == 15)
            {
              v55 = [v53 getDictionary];

              v50 = v55;
            }

            objc_autoreleasePoolPop(v54);
          }

          v49 = [v47 countByEnumeratingWithState:&v99 objects:v112 count:16];
        }

        while (v49);
      }

      else
      {
        v50 = 0;
      }

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v56 = [(MOEventBundle *)v4 resources];
      v57 = [v56 countByEnumeratingWithState:&v95 objects:v111 count:16];
      if (!v57)
      {

        v59 = 0;
LABEL_76:
        LOBYTE(v8) = [(MOEventBundle *)self isEqualBaseActionForObject:self other:v4];

        goto LABEL_4;
      }

      v58 = v57;
      v59 = 0;
      v60 = *v96;
      do
      {
        for (m = 0; m != v58; ++m)
        {
          if (*v96 != v60)
          {
            objc_enumerationMutation(v56);
          }

          v62 = *(*(&v95 + 1) + 8 * m);
          v63 = objc_autoreleasePoolPush();
          if ([v62 type] == 15)
          {
            v64 = [v62 getDictionary];

            v59 = v64;
          }

          objc_autoreleasePoolPop(v63);
        }

        v58 = [v56 countByEnumeratingWithState:&v95 objects:v111 count:16];
      }

      while (v58);

      if (!v50 || !v59)
      {
        goto LABEL_76;
      }

      v65 = [v50 objectForKey:@"MOPHMemoryMetaDataKeyMemoryIdentifier"];
      v66 = [v59 objectForKey:@"MOPHMemoryMetaDataKeyMemoryIdentifier"];
      v67 = v66;
      if (v65 && v66 && ([v65 isEqualToString:v66] & 1) != 0)
      {

        goto LABEL_3;
      }

LABEL_88:
      v83 = [objc_opt_class() castEvergreenSubType:{-[MOEventBundle bundleSubType](v4, "bundleSubType")}];
      LOBYTE(v8) = v83 == [objc_opt_class() castEvergreenSubType:{-[MOEventBundle bundleSubType](self, "bundleSubType")}];
LABEL_4:

      v9 = *MEMORY[0x277D85DE8];
      return v8;
    case 11uLL:
      goto LABEL_88;
    case 12uLL:
      v24 = [(MOEventBundle *)self summarizationGranularity];
      if (v24 != [(MOEventBundle *)v4 summarizationGranularity])
      {
        goto LABEL_84;
      }

      if ([(MOEventBundle *)self isEqualPropertyForObject:self other:v4 propertyPath:@"startDate" threshold:600.0])
      {
        goto LABEL_3;
      }

      v25 = [(MOEventBundle *)self subBundleIDs];
      v26 = [v25 count];

      if (v26)
      {
        if ([(MOEventBundle *)self intersectedSubBundleIDForObject:self other:v4])
        {
          goto LABEL_3;
        }
      }

      v27 = [(MOEventBundle *)self intersectedActivityOrVisitForObject:self other:v4];
LABEL_44:
      LOBYTE(v8) = v27;
      goto LABEL_4;
    case 13uLL:
      v39 = [(MOEventBundle *)self place];
      if (!v39)
      {
        goto LABEL_84;
      }

      v40 = v39;
      v41 = [(MOEventBundle *)v4 place];

      if (!v41)
      {
        goto LABEL_84;
      }

      v42 = [(MOEventBundle *)self place];
      v43 = [v42 placeType];
      if (v43 > 0x64 || (-[MOEventBundle place](v4, "place"), v41 = objc_claimAutoreleasedReturnValue(), [v41 placeType] > 0x64))
      {
        v68 = [(MOEventBundle *)self place];
        v69 = [v68 placeType];
        v70 = [(MOEventBundle *)v4 place];
        v71 = [v70 placeType];

        if (v43 <= 0x64)
        {
        }

        if (v69 != v71)
        {
          goto LABEL_84;
        }
      }

      else
      {
      }

      v72 = objc_alloc(MEMORY[0x277CCA970]);
      v73 = [(MOEventBundle *)self startDate];
      v74 = [(MOEventBundle *)self endDate];
      v75 = [v72 initWithStartDate:v73 endDate:v74];

      v76 = objc_alloc(MEMORY[0x277CCA970]);
      v77 = [(MOEventBundle *)v4 startDate];
      v78 = [(MOEventBundle *)v4 endDate];
      v79 = [v76 initWithStartDate:v77 endDate:v78];

      LOBYTE(v77) = [v75 intersectsDateInterval:v79];
      if (v77)
      {
        goto LABEL_3;
      }

LABEL_81:
      if ([(MOEventBundle *)self bundleSubType]== 801 && [(MOEventBundle *)v4 bundleSubType]== 801)
      {
LABEL_83:
        v80 = [(MOEventBundle *)self startDate];
        v81 = [(MOEventBundle *)v4 startDate];
        LOBYTE(v8) = [v80 isSameDayWithDate:v81];
      }

      else
      {
        v80 = [(MOEventBundle *)self startDate];
        v82 = [(MOEventBundle *)v4 startDate];
        LOBYTE(v8) = v80 == v82;
      }

      goto LABEL_4;
    case 14uLL:
      goto LABEL_81;
    default:
      goto LABEL_4;
  }
}

+ (unint64_t)castEvergreenSubType:(unint64_t)a3
{
  result = a3;
  if (a3 - 707 <= 2)
  {
    return qword_22D931F28[a3 - 707];
  }

  return result;
}

- (BOOL)intersectedSubBundleIDForObject:(id)a3 other:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [a3 subBundleIDs];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [v5 subBundleIDs];
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([v11 isEqualToString:*(*(&v20 + 1) + 8 * j)])
              {

                v17 = 1;
                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v17 = 0;
    }

    while (v8);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)intersectedActivityOrVisitForObject:(id)a3 other:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [a3 events];
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v26 = v7;
    v27 = v6;
    v24 = *v33;
    do
    {
      v11 = 0;
      v25 = v9;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        if ([v12 category] == 1 || objc_msgSend(v12, "category") == 2)
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v13 = [v6 events];
          v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v29;
            while (2)
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v29 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v28 + 1) + 8 * i);
                if ([v18 category] == 1 || objc_msgSend(v18, "category") == 2)
                {
                  if ((v19 = [v12 category], v19 == objc_msgSend(v18, "category")) && objc_msgSend(v12, "category") == 1 && -[MOEventBundle isEqualPropertyForObject:other:propertyPath:threshold:](self, "isEqualPropertyForObject:other:propertyPath:threshold:", v12, v18, @"startDate", 600.0) || (v20 = objc_msgSend(v12, "category"), v20 == objc_msgSend(v18, "category")) && objc_msgSend(v12, "category") == 2 && -[MOEventBundle isEqualPropertyForObject:other:propertyPath:threshold:](self, "isEqualPropertyForObject:other:propertyPath:threshold:", v12, v18, @"startDate", 600.0))
                  {

                    v21 = 1;
                    v7 = v26;
                    v6 = v27;
                    goto LABEL_29;
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v7 = v26;
          v6 = v27;
          v10 = v24;
          v9 = v25;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
      v21 = 0;
    }

    while (v9);
  }

  else
  {
    v21 = 0;
  }

LABEL_29:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)isEqualBasicPropertiesForObject:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 bundleSuperType];
  if (v7 == [v6 bundleSuperType] && (v8 = objc_msgSend(v5, "bundleSubType"), v8 == objc_msgSend(v6, "bundleSubType")) && (v9 = objc_msgSend(v5, "interfaceType"), v9 == objc_msgSend(v6, "interfaceType")))
  {
    v10 = [v5 summarizationGranularity];
    v11 = v10 == [v6 summarizationGranularity];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualPropertyForObject:(id)a3 other:(id)a4 propertyPath:(id)a5 threshold:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 valueForKeyPath:v11];
  v13 = [v10 valueForKeyPath:v11];

  if (!(v12 | v13))
  {
    v14 = 1;
    goto LABEL_22;
  }

  v14 = 0;
  if (v12 && v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 timeIntervalSinceDate:v13];
      v16 = fabs(v15);
LABEL_7:
      v14 = v16 < a6;
      goto LABEL_22;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v12 isEqualToString:v13];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v13;
          [v12 doubleValue];
          v28 = v27;
          [v26 doubleValue];
          v30 = v29;

          v16 = v28 - v30;
          if (v28 - v30 < 0.0)
          {
            v16 = -(v28 - v30);
          }

          goto LABEL_7;
        }

        v25 = [v9 isEqual:v10];
      }

      v14 = v25;
      goto LABEL_22;
    }

    v17 = v12;
    v18 = v13;
    if (![v17 intersectsDateInterval:v18])
    {
      goto LABEL_14;
    }

    v19 = [v17 intersectionWithDateInterval:v18];
    [v19 duration];
    v21 = v20;

    v22 = [v17 unionWithDateInterval:v18];
    [v22 duration];
    v24 = v23;

    if (v24 == 0.0)
    {
LABEL_14:
      v14 = 0;
    }

    else
    {
      v14 = v21 / v24 > a6;
    }
  }

LABEL_22:

  return v14;
}

- (BOOL)isEqualResourcesForObject:(id)a3 other:(id)a4 resourceType:(unint64_t)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v34 = a4;
  v36 = objc_opt_new();
  v35 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v7;
  v8 = [v7 resources];
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        if ([v13 type] == a5)
        {
          v14 = objc_alloc(MEMORY[0x277CCACA8]);
          v15 = [v13 name];
          v16 = [v13 assets];
          [v13 value];
          v18 = [v14 initWithFormat:@"%@, %@, %f", v15, v16, v17];

          if (v18)
          {
            [v36 addObject:v18];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v10);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = [v34 resources];
  v20 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v37 + 1) + 8 * j);
        if ([v24 type] == a5)
        {
          v25 = objc_alloc(MEMORY[0x277CCACA8]);
          v26 = [v24 name];
          v27 = [v24 assets];
          [v24 value];
          v29 = [v25 initWithFormat:@"%@, %@, %f", v26, v27, v28];

          if (v29)
          {
            [v35 addObject:v29];
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v21);
  }

  v30 = [v36 isEqualToSet:v35];
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)isEqualPersonsForObject:(id)a3 other:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = [v5 persons];
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [v14 contactIdentifier];

        if (v15)
        {
          v16 = [v14 contactIdentifier];
          [v7 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = [v6 persons];
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * j);
        v23 = [v22 contactIdentifier];

        if (v23)
        {
          v24 = [v22 contactIdentifier];
          [v8 addObject:v24];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  v25 = [v7 isEqualToSet:v8];
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)isEqualBaseActionForObject:(id)a3 other:(id)a4
{
  v5 = a4;
  v6 = [a3 action];
  v7 = [v5 action];

  if (v6 | v7)
  {
    v8 = 0;
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6 != 0;
    }

    if (v7)
    {
      v11 = v6 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (!v11 && !v10)
    {
      v12 = [v6 actionType];
      if (v12 == [v7 actionType])
      {
        v13 = [v6 actionName];
        v14 = [v7 actionName];
        v8 = [v13 isEqualToString:v14];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(MOEventBundle *)self bundleIdentifier];
        if (v8 || ([(MOEventBundle *)v7 bundleIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(MOEventBundle *)self bundleIdentifier];
          v10 = [(MOEventBundle *)v7 bundleIdentifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (BOOL)containTheSameEventSet:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(MOEventBundle *)self events];
    v7 = [v6 mutableCopy];

    v8 = [v5 events];

    v9 = [v8 mutableCopy];
    v10 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"startDate" ascending:1];
    v19[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v12 = [v7 sortedArrayUsingDescriptors:v11];

    v18 = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v14 = [v9 sortedArrayUsingDescriptors:v13];

    v15 = [v12 isEqualToArray:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)shareEvents:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v32 = v4;
    v5 = v4;
    v6 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v31 = v5;
    v7 = [v5 events];
    v8 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v45;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v44 + 1) + 8 * i);
          v13 = [v12 eventIdentifier];

          if (v13)
          {
            v14 = [v12 eventIdentifier];
            [v6 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v9);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [(MOEventBundle *)self events];
    v15 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v34 = 0;
      v35 = *v41;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v41 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v40 + 1) + 8 * j);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v19 = v6;
          v20 = [v19 countByEnumeratingWithState:&v36 objects:v48 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = v6;
            v23 = *v37;
            while (2)
            {
              for (k = 0; k != v21; ++k)
              {
                if (*v37 != v23)
                {
                  objc_enumerationMutation(v19);
                }

                v25 = *(*(&v36 + 1) + 8 * k);
                v26 = [v18 eventIdentifier];
                v27 = [v25 compare:v26];

                if (!v27)
                {
                  v34 = 1;
                  goto LABEL_27;
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v36 objects:v48 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }

LABEL_27:
            v6 = v22;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v16);
    }

    else
    {
      v34 = 0;
    }

    v4 = v32;
    v28 = v34;
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28 & 1;
}

- (id)getCustomLabelsForMetaData:(id)a3 templateFilePath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (v6)
  {
    v8 = [[MOEventBundleLabelFormatter alloc] initWithTemplatePath:v6];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = [(MOEventBundle *)self getCustomLabelsForMetaData:v7 labelFormatter:v8];

  return v10;
}

- (id)getCustomLabelsForMetaData:(id)a3 labelFormatter:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(MOEventBundle *)self getBundleType];
    v9 = [v7 formattedBundleLabelsForMetaData:v6 bundleType:v8];
  }

  else
  {
    v8 = [(MOEventBundle *)self metaData];
    v10 = [(MOEventBundle *)self getBundleType];
    v9 = [v7 formattedBundleLabelsForMetaData:v8 bundleType:v10];

    v7 = v10;
  }

  return v9;
}

- (id)getCustomPromptsForMetaData:(id)a3 templateFilePath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (v6)
  {
    v8 = [[MOEventBundleLabelFormatter alloc] initWithTemplatePath:v6];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = [(MOEventBundle *)self getCustomPromptsForMetaData:v7 labelFormatter:v8];

  return v10;
}

- (id)getCustomPromptsForMetaData:(id)a3 labelFormatter:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(MOEventBundle *)self getBundleType];
    v9 = [v7 formattedBundlePromptsForMetaData:v6 bundleType:v8];
  }

  else
  {
    v8 = [(MOEventBundle *)self metaData];
    v10 = [(MOEventBundle *)self getBundleType];
    v9 = [v7 formattedBundlePromptsForMetaData:v8 bundleType:v10];

    v7 = v10;
  }

  return v9;
}

- (BOOL)hasSuggestionEngagementEvent:(id)a3
{
  v4 = a3;
  v5 = [(MOEventBundle *)self suggestionEngagementEvents];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)setSuggestionEngagementEvent:(id)a3
{
  v8 = a3;
  v4 = [(MOEventBundle *)self suggestionEngagementEvents];

  if (!v4)
  {
    v5 = objc_opt_new();
    [(MOEventBundle *)self setSuggestionEngagementEvents:v5];
  }

  v6 = v8;
  if (v8)
  {
    v7 = [(MOEventBundle *)self suggestionEngagementEvents];
    [v7 addObject:v8];

    v6 = v8;
  }
}

- (void)clearSuggestionEngagementEvent:(id)a3
{
  v4 = a3;
  v5 = [(MOEventBundle *)self suggestionEngagementEvents];
  [v5 removeObject:v4];
}

- (BOOL)hasAppEntryEngagementEvent:(id)a3
{
  v4 = a3;
  v5 = [(MOEventBundle *)self appEntryEngagementEvents];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)setAppEntryEngagementEvent:(id)a3
{
  v8 = a3;
  v4 = [(MOEventBundle *)self appEntryEngagementEvents];

  if (!v4)
  {
    v5 = objc_opt_new();
    [(MOEventBundle *)self setAppEntryEngagementEvents:v5];
  }

  v6 = v8;
  if (v8)
  {
    v7 = [(MOEventBundle *)self appEntryEngagementEvents];
    [v7 addObject:v8];

    v6 = v8;
  }
}

- (void)clearAppEntryEngagementEvent:(id)a3
{
  v4 = a3;
  v5 = [(MOEventBundle *)self appEntryEngagementEvents];
  [v5 removeObject:v4];
}

- (double)duration
{
  v3 = [(MOEventBundle *)self endDate];
  v4 = [(MOEventBundle *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

+ (unint64_t)convertNSNumberToSensitiveLocationType:(id)a3
{
  result = [a3 integerValue];
  if (result - 1 >= 5)
  {
    return 0;
  }

  return result;
}

+ (unint64_t)convertNSNumberToUninterestingLocationType:(id)a3
{
  result = [a3 integerValue];
  if (result - 1 >= 5)
  {
    return 0;
  }

  return result;
}

+ (unint64_t)convertNSNumberToContactType:(id)a3
{
  result = [a3 integerValue];
  if (result - 1 >= 4)
  {
    return 0;
  }

  return result;
}

+ (unint64_t)convertNSNumberToRoadType:(id)a3
{
  result = [a3 integerValue];
  if (result - 1 >= 4)
  {
    return 0;
  }

  return result;
}

- (id)primarySourceTypes
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = [(MOEventBundle *)self interfaceType];
  v4 = MEMORY[0x277CBEBF8];
  switch(v3)
  {
    case 1uLL:
      v32[0] = MOEventBundleSourceTypeActivity;
      v5 = MEMORY[0x277CBEA60];
      v6 = v32;
      goto LABEL_30;
    case 2uLL:
    case 0xDuLL:
      v31 = MOEventBundleSourceTypeVisitLocation;
      v5 = MEMORY[0x277CBEA60];
      v6 = &v31;
      goto LABEL_30;
    case 3uLL:
    case 0xAuLL:
      v29 = MOEventBundleSourceTypePhoto;
      v5 = MEMORY[0x277CBEA60];
      v6 = &v29;
      goto LABEL_30;
    case 4uLL:
      v28 = MOEventBundleSourceTypeContact;
      v5 = MEMORY[0x277CBEA60];
      v6 = &v28;
      goto LABEL_30;
    case 5uLL:
      v27 = MOEventBundleSourceTypeMedia;
      v5 = MEMORY[0x277CBEA60];
      v6 = &v27;
      goto LABEL_30;
    case 7uLL:
      v30[0] = MOEventBundleSourceTypeVisitLocation;
      v30[1] = MOEventBundleSourceTypePhoto;
      v5 = MEMORY[0x277CBEA60];
      v6 = v30;
      goto LABEL_13;
    case 9uLL:
      v11 = [(MOEventBundle *)self bundleSubType];
      switch(v11)
      {
        case 0x268uLL:
          v22 = MOEventBundleSourceTypePhoto;
          v5 = MEMORY[0x277CBEA60];
          v6 = &v22;
          break;
        case 0x12FuLL:
          v23 = MOEventBundleSourceTypeContact;
          v5 = MEMORY[0x277CBEA60];
          v6 = &v23;
          break;
        case 0xCBuLL:
          v24 = MOEventBundleSourceTypeActivity;
          v5 = MEMORY[0x277CBEA60];
          v6 = &v24;
          break;
        default:
          goto LABEL_32;
      }

      goto LABEL_30;
    case 0xBuLL:
      v26 = MOEventBundleSourceTypeReflectionPrompt;
      v5 = MEMORY[0x277CBEA60];
      v6 = &v26;
      goto LABEL_30;
    case 0xCuLL:
      v7 = [(MOEventBundle *)self bundleSubType];
      if (v7 <= 204)
      {
        if ((v7 - 101) >= 5)
        {
          if ((v7 - 201) >= 4)
          {
            goto LABEL_32;
          }

          v20 = MOEventBundleSourceTypeActivity;
          v5 = MEMORY[0x277CBEA60];
          v6 = &v20;
        }

        else
        {
          v21 = MOEventBundleSourceTypeVisitLocation;
          v5 = MEMORY[0x277CBEA60];
          v6 = &v21;
        }

        goto LABEL_30;
      }

      if ((v7 - 401) <= 4 && ((1 << (v7 + 111)) & 0x19) != 0)
      {
        v17 = MOEventBundleSourceTypeMedia;
        v5 = MEMORY[0x277CBEA60];
        v6 = &v17;
LABEL_30:
        v10 = 1;
        goto LABEL_31;
      }

      if ((v7 - 205) >= 2)
      {
        if (v7 != 302)
        {
          goto LABEL_32;
        }

        v18 = MOEventBundleSourceTypeContact;
        v5 = MEMORY[0x277CBEA60];
        v6 = &v18;
        goto LABEL_30;
      }

      v19[0] = MOEventBundleSourceTypeActivity;
      v19[1] = MOEventBundleSourceTypeVisitLocation;
      v5 = MEMORY[0x277CBEA60];
      v6 = v19;
LABEL_13:
      v10 = 2;
LABEL_31:
      v4 = [v5 arrayWithObjects:v6 count:v10];
LABEL_32:
      v12 = *MEMORY[0x277D85DE8];

      return v4;
    case 0xEuLL:
      v25 = MOEventBundleSourceTypeStateOfMind;
      v5 = MEMORY[0x277CBEA60];
      v6 = &v25;
      goto LABEL_30;
    case 0x10uLL:
      v8 = objc_opt_new();
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __60__MOEventBundle_MOEventBundleSourceType__primarySourceTypes__block_invoke;
      v14[3] = &unk_2787756A8;
      v15 = v8;
      v16 = self;
      v9 = v8;
      [(MOEventBundle *)self withResourcesUsingBlock:v14];
      v4 = [v9 allObjects];

      goto LABEL_32;
    default:
      goto LABEL_32;
  }
}

void __60__MOEventBundle_MOEventBundleSourceType__primarySourceTypes__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 sourceEventIdentifier];

  if (v3)
  {
    if ([v6 type] == 2)
    {
      v4 = &MOEventBundleSourceTypePhoto;
LABEL_10:
      [*(a1 + 32) addObject:*v4];
      goto LABEL_11;
    }

    if ([v6 type] == 12)
    {
      v5 = [*(a1 + 40) place];

      if (!v5)
      {
        goto LABEL_11;
      }

      v4 = &MOEventBundleSourceTypeVisitLocation;
      goto LABEL_10;
    }

    if ([v6 type] == 10 || objc_msgSend(v6, "type") == 13)
    {
      v4 = &MOEventBundleSourceTypeActivity;
      goto LABEL_10;
    }

    if ([v6 type] == 16)
    {
      v4 = &MOEventBundleSourceTypeStateOfMind;
      goto LABEL_10;
    }

    if ([v6 type] == 11)
    {
      v4 = &MOEventBundleSourceTypeContact;
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)dateInterval
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 138412802;
  v4 = a1;
  v5 = 2080;
  v6 = "[MOEventBundle dateInterval]";
  v7 = 1024;
  v8 = 1586;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "startDate is NOT earlier than endDate, bundle, %@ (in %s:%d)", &v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

@end