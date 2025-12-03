@interface MOEventBundle
+ (id)getInterfaceTypeString:(unint64_t)string superType:(unint64_t)type;
+ (unint64_t)castEvergreenSubType:(unint64_t)type;
+ (unint64_t)convertNSNumberToContactType:(id)type;
+ (unint64_t)convertNSNumberToRoadType:(id)type;
+ (unint64_t)convertNSNumberToSensitiveLocationType:(id)type;
+ (unint64_t)convertNSNumberToUninterestingLocationType:(id)type;
+ (unint64_t)getSuperTypeEnum:(id)enum;
- (BOOL)containTheSameEventSet:(id)set;
- (BOOL)hasAppEntryEngagementEvent:(id)event;
- (BOOL)hasSuggestionEngagementEvent:(id)event;
- (BOOL)intersectedActivityOrVisitForObject:(id)object other:(id)other;
- (BOOL)intersectedSubBundleIDForObject:(id)object other:(id)other;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualBaseActionForObject:(id)object other:(id)other;
- (BOOL)isEqualBasicPropertiesForObject:(id)object other:(id)other;
- (BOOL)isEqualPersonsForObject:(id)object other:(id)other;
- (BOOL)isEqualPropertyForObject:(id)object other:(id)other propertyPath:(id)path threshold:(double)threshold;
- (BOOL)isEqualResourcesForObject:(id)object other:(id)other resourceType:(unint64_t)type;
- (BOOL)isEqualToEventBundle:(id)bundle;
- (BOOL)shareEvents:(id)events;
- (MOEventBundle)initWithBundleIdentifier:(id)identifier bundleType:(id)type creationDate:(id)date endDate:(id)endDate expirationDate:(id)expirationDate events:(id)events filtered:(BOOL)filtered interfaceType:(unint64_t)self0 photoSource:(unint64_t)self1 promptLanguage:(id)self2 source:(unint64_t)self3 startDate:(id)self4 action:(id)self5 concurrentMediaAction:(id)self6 actions:(id)self7 persons:(id)self8 place:(id)self9 predominantWeather:(id)weather resources:(id)resources time:(id)time metaDataForRank:(id)rank suggestionEngagements:(id)engagements suggestionEngagementViewCount:(unint64_t)count appEntryEngagements:(id)entryEngagements isAggregatedAndSuppressed:(BOOL)suppressed summarizationGranularity:(unint64_t)granularity places:(id)places subBundleIDs:(id)identifier0 subSuggestionIDs:(id)identifier1 includedInSummaryBundleOnly:(BOOL)identifier2 bundleSubType:(unint64_t)identifier3 bundleSuperType:(unint64_t)identifier4 photoTraits:(id)identifier5 isSensitive:(BOOL)identifier6;
- (MOEventBundle)initWithBundleIdentifier:(id)identifier bundleType:(id)type creationDate:(id)date endDate:(id)endDate expirationDate:(id)expirationDate events:(id)events filtered:(BOOL)filtered interfaceType:(unint64_t)self0 photoSource:(unint64_t)self1 promptLanguage:(id)self2 source:(unint64_t)self3 startDate:(id)self4 action:(id)self5 concurrentMediaAction:(id)self6 actions:(id)self7 persons:(id)self8 place:(id)self9 predominantWeather:(id)weather resources:(id)resources time:(id)time metaDataForRank:(id)rank suggestionEngagements:(id)engagements suggestionEngagementViewCount:(unint64_t)count appEntryEngagements:(id)entryEngagements isAggregatedAndSuppressed:(BOOL)suppressed summarizationGranularity:(unint64_t)granularity places:(id)places subBundleIDs:(id)identifier0 subSuggestionIDs:(id)identifier1 photoTraits:(id)identifier2 isSensitive:(BOOL)identifier3;
- (MOEventBundle)initWithBundleIdentifier:(id)identifier suggestionID:(id)d bundleType:(id)type creationDate:(id)date firstCreationDate:(id)creationDate endDate:(id)endDate expirationDate:(id)expirationDate events:(id)self0 filtered:(BOOL)self1 interfaceType:(unint64_t)self2 photoSource:(unint64_t)self3 promptLanguage:(id)self4 source:(unint64_t)self5 startDate:(id)self6 action:(id)self7 concurrentMediaAction:(id)self8 actions:(id)self9 persons:(id)persons place:(id)place predominantWeather:(id)weather resources:(id)resources time:(id)time metaDataForRank:(id)rank suggestionEngagements:(id)engagements suggestionEngagementViewCount:(unint64_t)count appEntryEngagements:(id)entryEngagements isAggregatedAndSuppressed:(BOOL)suppressed summarizationGranularity:(unint64_t)identifier0 places:(id)identifier1 subBundleIDs:(id)identifier2 subSuggestionIDs:(id)identifier3 includedInSummaryBundleOnly:(BOOL)identifier4 bundleSubType:(unint64_t)identifier5 bundleSuperType:(unint64_t)identifier6 photoTraits:(id)identifier7 isSensitive:(BOOL)identifier8;
- (MOEventBundle)initWithBundleIdentifier:(id)identifier suggestionID:(id)d startDate:(id)date endDate:(id)endDate creationDate:(id)creationDate;
- (MOEventBundle)initWithBundleIdentifier:(id)identifier usingBundle:(id)bundle;
- (MOEventBundle)initWithCoder:(id)coder;
- (MOEventBundle)initWithEventSet:(id)set filtered:(BOOL)filtered;
- (NSSet)getCategories;
- (double)duration;
- (id)_allResourcesImpl;
- (id)dateInterval;
- (id)description;
- (id)displayEndDate;
- (id)displayStartDate;
- (id)getBundleType;
- (id)getCustomLabelsForMetaData:(id)data labelFormatter:(id)formatter;
- (id)getCustomLabelsForMetaData:(id)data templateFilePath:(id)path;
- (id)getCustomPromptsForMetaData:(id)data labelFormatter:(id)formatter;
- (id)getCustomPromptsForMetaData:(id)data templateFilePath:(id)path;
- (id)getSubTypeString;
- (id)getSuperTypeString;
- (id)localEndDate;
- (id)localStartDate;
- (id)primarySourceTypes;
- (id)shortDescription;
- (unint64_t)getInterfaceTypeEnum:(id)enum;
- (unint64_t)hash;
- (void)addAction:(id)action;
- (void)addBackgroundAction:(id)action;
- (void)addEvent:(id)event;
- (void)addEvents:(id)events;
- (void)addMetaDataForRankForKey:(id)key value:(id)value;
- (void)addPerson:(id)person;
- (void)addPhotoTraits:(id)traits;
- (void)addResource:(id)resource;
- (void)addResources:(id)resources;
- (void)buildResources;
- (void)clearAppEntryEngagementEvent:(id)event;
- (void)clearSuggestionEngagementEvent:(id)event;
- (void)dateInterval;
- (void)encodeWithCoder:(id)coder;
- (void)setAppEntryEngagementEvent:(id)event;
- (void)setPropertiesBasedOnEvents;
- (void)setSuggestionEngagementEvent:(id)event;
- (void)withResourcesUsingBlock:(id)block;
@end

@implementation MOEventBundle

- (MOEventBundle)initWithBundleIdentifier:(id)identifier suggestionID:(id)d startDate:(id)date endDate:(id)endDate creationDate:(id)creationDate
{
  identifierCopy = identifier;
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  creationDateCopy = creationDate;
  v33 = creationDateCopy;
  if (!identifierCopy)
  {
    v21 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v23 = currentHandler;
    v24 = @"Invalid parameter not satisfying: bundleIdentifier";
    v25 = a2;
    selfCopy5 = self;
    v27 = 217;
    goto LABEL_24;
  }

  if (!dCopy)
  {
    v28 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v23 = currentHandler;
    v24 = @"Invalid parameter not satisfying: suggestionID";
    v25 = a2;
    selfCopy5 = self;
    v27 = 218;
    goto LABEL_24;
  }

  if (!dateCopy)
  {
    v29 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v23 = currentHandler;
    v24 = @"Invalid parameter not satisfying: startDate";
    v25 = a2;
    selfCopy5 = self;
    v27 = 219;
    goto LABEL_24;
  }

  if (!endDateCopy)
  {
    v30 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v23 = currentHandler;
    v24 = @"Invalid parameter not satisfying: endDate";
    v25 = a2;
    selfCopy5 = self;
    v27 = 220;
    goto LABEL_24;
  }

  if (!creationDateCopy)
  {
    v31 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundle initWithBundleIdentifier:suggestionID:startDate:endDate:creationDate:];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v23 = currentHandler;
    v24 = @"Invalid parameter not satisfying: creationDate";
    v25 = a2;
    selfCopy5 = self;
    v27 = 221;
LABEL_24:
    [currentHandler handleFailureInMethod:v25 object:selfCopy5 file:@"MOEventBundle.m" lineNumber:v27 description:v24];

    selfCopy6 = 0;
    goto LABEL_25;
  }

  v36.receiver = self;
  v36.super_class = MOEventBundle;
  v18 = [(MOEventBundle *)&v36 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_bundleIdentifier, identifier);
    objc_storeStrong(p_isa + 3, d);
    objc_storeStrong(p_isa + 4, date);
    objc_storeStrong(p_isa + 5, endDate);
    objc_storeStrong(p_isa + 6, creationDate);
  }

  self = p_isa;
  selfCopy6 = self;
LABEL_25:

  return selfCopy6;
}

- (MOEventBundle)initWithBundleIdentifier:(id)identifier suggestionID:(id)d bundleType:(id)type creationDate:(id)date firstCreationDate:(id)creationDate endDate:(id)endDate expirationDate:(id)expirationDate events:(id)self0 filtered:(BOOL)self1 interfaceType:(unint64_t)self2 photoSource:(unint64_t)self3 promptLanguage:(id)self4 source:(unint64_t)self5 startDate:(id)self6 action:(id)self7 concurrentMediaAction:(id)self8 actions:(id)self9 persons:(id)persons place:(id)place predominantWeather:(id)weather resources:(id)resources time:(id)time metaDataForRank:(id)rank suggestionEngagements:(id)engagements suggestionEngagementViewCount:(unint64_t)count appEntryEngagements:(id)entryEngagements isAggregatedAndSuppressed:(BOOL)suppressed summarizationGranularity:(unint64_t)identifier0 places:(id)identifier1 subBundleIDs:(id)identifier2 subSuggestionIDs:(id)identifier3 includedInSummaryBundleOnly:(BOOL)identifier4 bundleSubType:(unint64_t)identifier5 bundleSuperType:(unint64_t)identifier6 photoTraits:(id)identifier7 isSensitive:(BOOL)identifier8
{
  typeCopy = type;
  obj = creationDate;
  creationDateCopy = creationDate;
  expirationDateCopy = expirationDate;
  eventsCopy = events;
  languageCopy = language;
  actionCopy = action;
  mediaActionCopy = mediaAction;
  actionsCopy = actions;
  personsCopy = persons;
  placeCopy = place;
  weatherCopy = weather;
  resourcesCopy = resources;
  timeCopy = time;
  rankCopy = rank;
  engagementsCopy = engagements;
  entryEngagementsCopy = entryEngagements;
  placesCopy = places;
  dsCopy = ds;
  iDsCopy = iDs;
  traitsCopy = traits;
  v48 = [(MOEventBundle *)self initWithBundleIdentifier:identifier suggestionID:d startDate:startDate endDate:endDate creationDate:date];
  v49 = v48;
  if (v48)
  {
    objc_storeStrong(&v48->_firstCreationDate, obj);
    objc_storeStrong(&v49->_bundleType, type);
    objc_storeStrong(&v49->_expirationDate, expirationDate);
    v50 = [eventsCopy copy];
    events = v49->_events;
    v49->_events = v50;

    v49->_filtered = filtered;
    v49->_interfaceType = interfaceType;
    v49->_photoSource = source;
    objc_storeStrong(&v49->_promptLanguage, language);
    v49->_source = a15;
    objc_storeStrong(&v49->_action, action);
    objc_storeStrong(&v49->_concurrentMediaAction, mediaAction);
    v52 = [actionsCopy copy];
    actions = v49->_actions;
    v49->_actions = v52;

    v54 = [personsCopy copy];
    persons = v49->_persons;
    v49->_persons = v54;

    objc_storeStrong(&v49->_place, place);
    objc_storeStrong(&v49->_predominantWeather, weather);
    v56 = [resourcesCopy copy];
    resources = v49->_resources;
    v49->_resources = v56;

    objc_storeStrong(&v49->_time, time);
    v58 = [rankCopy copy];
    metaDataForRank = v49->_metaDataForRank;
    v49->_metaDataForRank = v58;

    v60 = [engagementsCopy mutableCopy];
    suggestionEngagementEvents = v49->_suggestionEngagementEvents;
    v49->_suggestionEngagementEvents = v60;

    v49->_suggestionEngagementViewCount = count;
    v62 = [entryEngagementsCopy mutableCopy];
    appEntryEngagementEvents = v49->_appEntryEngagementEvents;
    v49->_appEntryEngagementEvents = v62;

    v49->_isAggregatedAndSuppressed = suppressed;
    v49->_summarizationGranularity = granularity;
    v64 = [placesCopy copy];
    places = v49->_places;
    v49->_places = v64;

    v66 = [dsCopy copy];
    subBundleIDs = v49->_subBundleIDs;
    v49->_subBundleIDs = v66;

    v68 = [iDsCopy copy];
    subSuggestionIDs = v49->_subSuggestionIDs;
    v49->_subSuggestionIDs = v68;

    v49->_includedInSummaryBundleOnly = only;
    v49->_bundleSubType = subType;
    v49->_bundleSuperType = superType;
    v70 = [traitsCopy copy];
    photoTraits = v49->_photoTraits;
    v49->_photoTraits = v70;

    v49->_isSensitive = sensitive;
  }

  return v49;
}

- (MOEventBundle)initWithBundleIdentifier:(id)identifier usingBundle:(id)bundle
{
  bundleCopy = bundle;
  identifierCopy = identifier;
  suggestionID = [bundleCopy suggestionID];
  bundleType = [bundleCopy bundleType];
  creationDate = [bundleCopy creationDate];
  firstCreationDate = [bundleCopy firstCreationDate];
  endDate = [bundleCopy endDate];
  expirationDate = [bundleCopy expirationDate];
  events = [bundleCopy events];
  filtered = [bundleCopy filtered];
  interfaceType = [bundleCopy interfaceType];
  photoSource = [bundleCopy photoSource];
  promptLanguage = [bundleCopy promptLanguage];
  source = [bundleCopy source];
  startDate = [bundleCopy startDate];
  action = [bundleCopy action];
  concurrentMediaAction = [bundleCopy concurrentMediaAction];
  actions = [bundleCopy actions];
  persons = [bundleCopy persons];
  place = [bundleCopy place];
  predominantWeather = [bundleCopy predominantWeather];
  resources = [bundleCopy resources];
  time = [bundleCopy time];
  metaDataForRank = [bundleCopy metaDataForRank];
  suggestionEngagementEvents = [bundleCopy suggestionEngagementEvents];
  suggestionEngagementViewCount = [bundleCopy suggestionEngagementViewCount];
  appEntryEngagementEvents = [bundleCopy appEntryEngagementEvents];
  isAggregatedAndSuppressed = [bundleCopy isAggregatedAndSuppressed];
  summarizationGranularity = [bundleCopy summarizationGranularity];
  places = [bundleCopy places];
  subBundleIDs = [bundleCopy subBundleIDs];
  subSuggestionIDs = [bundleCopy subSuggestionIDs];
  LOBYTE(identifier) = [bundleCopy includedInSummaryBundleOnly];
  bundleSubType = [bundleCopy bundleSubType];
  bundleSuperType = [bundleCopy bundleSuperType];
  photoTraits = [bundleCopy photoTraits];
  isSensitive = [bundleCopy isSensitive];

  LOBYTE(v15) = isSensitive;
  LOBYTE(v14) = identifier;
  LOBYTE(v13) = isAggregatedAndSuppressed;
  LOBYTE(v12) = filtered;
  v35 = [(MOEventBundle *)self initWithBundleIdentifier:identifierCopy suggestionID:suggestionID bundleType:bundleType creationDate:creationDate firstCreationDate:firstCreationDate endDate:endDate expirationDate:expirationDate events:events filtered:v12 interfaceType:interfaceType photoSource:photoSource promptLanguage:promptLanguage source:source startDate:startDate action:action concurrentMediaAction:concurrentMediaAction actions:actions persons:persons place:place predominantWeather:predominantWeather resources:resources time:time metaDataForRank:metaDataForRank suggestionEngagements:suggestionEngagementEvents suggestionEngagementViewCount:suggestionEngagementViewCount appEntryEngagements:appEntryEngagementEvents isAggregatedAndSuppressed:v13 summarizationGranularity:summarizationGranularity places:places subBundleIDs:subBundleIDs subSuggestionIDs:subSuggestionIDs includedInSummaryBundleOnly:v14 bundleSubType:bundleSubType bundleSuperType:bundleSuperType photoTraits:photoTraits isSensitive:v15];

  return v35;
}

- (MOEventBundle)initWithBundleIdentifier:(id)identifier bundleType:(id)type creationDate:(id)date endDate:(id)endDate expirationDate:(id)expirationDate events:(id)events filtered:(BOOL)filtered interfaceType:(unint64_t)self0 photoSource:(unint64_t)self1 promptLanguage:(id)self2 source:(unint64_t)self3 startDate:(id)self4 action:(id)self5 concurrentMediaAction:(id)self6 actions:(id)self7 persons:(id)self8 place:(id)self9 predominantWeather:(id)weather resources:(id)resources time:(id)time metaDataForRank:(id)rank suggestionEngagements:(id)engagements suggestionEngagementViewCount:(unint64_t)count appEntryEngagements:(id)entryEngagements isAggregatedAndSuppressed:(BOOL)suppressed summarizationGranularity:(unint64_t)granularity places:(id)places subBundleIDs:(id)identifier0 subSuggestionIDs:(id)identifier1 includedInSummaryBundleOnly:(BOOL)identifier2 bundleSubType:(unint64_t)identifier3 bundleSuperType:(unint64_t)identifier4 photoTraits:(id)identifier5 isSensitive:(BOOL)identifier6
{
  v50 = MEMORY[0x277CBEB58];
  traitsCopy = traits;
  iDsCopy = iDs;
  dsCopy = ds;
  placesCopy = places;
  entryEngagementsCopy = entryEngagements;
  rankCopy = rank;
  timeCopy = time;
  resourcesCopy = resources;
  weatherCopy = weather;
  placeCopy = place;
  personsCopy = persons;
  actionsCopy = actions;
  mediaActionCopy = mediaAction;
  actionCopy = action;
  startDateCopy = startDate;
  languageCopy = language;
  eventsCopy = events;
  expirationDateCopy = expirationDate;
  endDateCopy = endDate;
  dateCopy = date;
  typeCopy = type;
  identifierCopy = identifier;
  v54 = [v50 setWithSet:engagements];
  v51 = [MEMORY[0x277CBEB58] setWithSet:entryEngagementsCopy];

  LOBYTE(v43) = sensitive;
  LOBYTE(v42) = only;
  LOBYTE(v41) = suppressed;
  LOBYTE(v40) = filtered;
  v57 = [(MOEventBundle *)self initWithBundleIdentifier:identifierCopy suggestionID:identifierCopy bundleType:typeCopy creationDate:dateCopy firstCreationDate:0 endDate:endDateCopy expirationDate:expirationDateCopy events:eventsCopy filtered:v40 interfaceType:interfaceType photoSource:source promptLanguage:languageCopy source:a13 startDate:startDateCopy action:actionCopy concurrentMediaAction:mediaActionCopy actions:actionsCopy persons:personsCopy place:placeCopy predominantWeather:weatherCopy resources:resourcesCopy time:timeCopy metaDataForRank:rankCopy suggestionEngagements:v54 suggestionEngagementViewCount:count appEntryEngagements:v51 isAggregatedAndSuppressed:v41 summarizationGranularity:granularity places:placesCopy subBundleIDs:dsCopy subSuggestionIDs:iDsCopy includedInSummaryBundleOnly:v42 bundleSubType:subType bundleSuperType:superType photoTraits:traitsCopy isSensitive:v43];

  return v57;
}

- (MOEventBundle)initWithBundleIdentifier:(id)identifier bundleType:(id)type creationDate:(id)date endDate:(id)endDate expirationDate:(id)expirationDate events:(id)events filtered:(BOOL)filtered interfaceType:(unint64_t)self0 photoSource:(unint64_t)self1 promptLanguage:(id)self2 source:(unint64_t)self3 startDate:(id)self4 action:(id)self5 concurrentMediaAction:(id)self6 actions:(id)self7 persons:(id)self8 place:(id)self9 predominantWeather:(id)weather resources:(id)resources time:(id)time metaDataForRank:(id)rank suggestionEngagements:(id)engagements suggestionEngagementViewCount:(unint64_t)count appEntryEngagements:(id)entryEngagements isAggregatedAndSuppressed:(BOOL)suppressed summarizationGranularity:(unint64_t)granularity places:(id)places subBundleIDs:(id)identifier0 subSuggestionIDs:(id)identifier1 photoTraits:(id)identifier2 isSensitive:(BOOL)identifier3
{
  v47 = MEMORY[0x277CBEB58];
  traitsCopy = traits;
  iDsCopy = iDs;
  dsCopy = ds;
  placesCopy = places;
  entryEngagementsCopy = entryEngagements;
  rankCopy = rank;
  timeCopy = time;
  resourcesCopy = resources;
  weatherCopy = weather;
  placeCopy = place;
  personsCopy = persons;
  actionsCopy = actions;
  mediaActionCopy = mediaAction;
  actionCopy = action;
  startDateCopy = startDate;
  languageCopy = language;
  eventsCopy = events;
  expirationDateCopy = expirationDate;
  endDateCopy = endDate;
  dateCopy = date;
  typeCopy = type;
  identifierCopy = identifier;
  v52 = [v47 setWithSet:engagements];
  v48 = [MEMORY[0x277CBEB58] setWithSet:entryEngagementsCopy];

  LOBYTE(v40) = 0;
  LOBYTE(v39) = 0;
  LOBYTE(v38) = suppressed;
  LOBYTE(v37) = filtered;
  v54 = [(MOEventBundle *)self initWithBundleIdentifier:identifierCopy suggestionID:identifierCopy bundleType:typeCopy creationDate:dateCopy firstCreationDate:0 endDate:endDateCopy expirationDate:expirationDateCopy events:eventsCopy filtered:v37 interfaceType:interfaceType photoSource:source promptLanguage:languageCopy source:a13 startDate:startDateCopy action:actionCopy concurrentMediaAction:mediaActionCopy actions:actionsCopy persons:personsCopy place:placeCopy predominantWeather:weatherCopy resources:resourcesCopy time:timeCopy metaDataForRank:rankCopy suggestionEngagements:v52 suggestionEngagementViewCount:count appEntryEngagements:v48 isAggregatedAndSuppressed:v38 summarizationGranularity:granularity places:placesCopy subBundleIDs:dsCopy subSuggestionIDs:iDsCopy includedInSummaryBundleOnly:v39 bundleSubType:0 bundleSuperType:0 photoTraits:traitsCopy isSensitive:v40];

  return v54;
}

- (id)getBundleType
{
  interfaceType = [(MOEventBundle *)self interfaceType];
  bundleSuperType = [(MOEventBundle *)self bundleSuperType];

  return [MOEventBundle getInterfaceTypeString:interfaceType superType:bundleSuperType];
}

+ (id)getInterfaceTypeString:(unint64_t)string superType:(unint64_t)type
{
  switch(string)
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
      if (type)
      {
        v7 = @"workoutTrend";
        if (type == 3)
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
  bundleSuperType = [(MOEventBundle *)self bundleSuperType];
  if (bundleSuperType - 1 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_278775388[bundleSuperType - 1];
  }
}

- (id)getSubTypeString
{
  bundleSubType = [(MOEventBundle *)self bundleSubType];
  result = @"unknown";
  if (bundleSubType <= 600)
  {
    if (bundleSubType <= 301)
    {
      if (bundleSubType <= 201)
      {
        v4 = @"pre_onboarded_visit";
        v21 = @"workout";
        if (bundleSubType != 201)
        {
          v21 = @"unknown";
        }

        if (bundleSubType != 106)
        {
          v4 = v21;
        }

        v22 = @"shopping";
        v23 = @"trip";
        if (bundleSubType != 105)
        {
          v23 = @"unknown";
        }

        if (bundleSubType != 104)
        {
          v22 = v23;
        }

        if (bundleSubType <= 105)
        {
          v4 = v22;
        }

        v7 = @"visit";
        v24 = @"flight";
        v25 = @"dining";
        if (bundleSubType != 103)
        {
          v25 = @"unknown";
        }

        if (bundleSubType != 102)
        {
          v24 = v25;
        }

        if (bundleSubType != 101)
        {
          v7 = v24;
        }

        v10 = bundleSubType <= 103;
      }

      else if (bundleSubType > 205)
      {
        v4 = @"motion_activity_mixed_running_walking";
        v38 = @"contact";
        if (bundleSubType != 301)
        {
          v38 = @"unknown";
        }

        if (bundleSubType != 208)
        {
          v4 = v38;
        }

        v7 = @"motion_activity_transit";
        v39 = @"motion_activity_running";
        if (bundleSubType != 207)
        {
          v39 = @"unknown";
        }

        if (bundleSubType != 206)
        {
          v7 = v39;
        }

        v10 = bundleSubType <= 207;
      }

      else
      {
        v4 = @"motion_activity_walking";
        v13 = @"workout_transit";
        if (bundleSubType != 205)
        {
          v13 = @"unknown";
        }

        if (bundleSubType != 204)
        {
          v4 = v13;
        }

        v7 = @"workout_weekly_summary";
        v14 = @"workout_routine";
        if (bundleSubType != 203)
        {
          v14 = @"unknown";
        }

        if (bundleSubType != 202)
        {
          v7 = v14;
        }

        v10 = bundleSubType <= 203;
      }
    }

    else if (bundleSubType > 406)
    {
      if (bundleSubType > 500)
      {
        v4 = @"hosting_at_home";
        v42 = @"evergreen_at_home";
        if (bundleSubType != 504)
        {
          v42 = @"unknown";
        }

        if (bundleSubType != 503)
        {
          v4 = v42;
        }

        v7 = @"time_at_home";
        v43 = @"photos_at_home";
        if (bundleSubType != 502)
        {
          v43 = @"unknown";
        }

        if (bundleSubType != 501)
        {
          v7 = v43;
        }

        v10 = bundleSubType <= 502;
      }

      else
      {
        v4 = @"media_on_repeat_weekly_summary_third_party";
        v19 = @"played_media_weekly_summary_third_party";
        if (bundleSubType != 410)
        {
          v19 = @"unknown";
        }

        if (bundleSubType != 409)
        {
          v4 = v19;
        }

        v7 = @"media_on_repeat_third_party";
        v20 = @"played_media_third_party";
        if (bundleSubType != 408)
        {
          v20 = @"unknown";
        }

        if (bundleSubType != 407)
        {
          v7 = v20;
        }

        v10 = bundleSubType <= 408;
      }
    }

    else if (bundleSubType > 402)
    {
      v4 = @"played_media_weekly_summary";
      v40 = @"media_suppressed";
      if (bundleSubType != 406)
      {
        v40 = @"unknown";
      }

      if (bundleSubType != 405)
      {
        v4 = v40;
      }

      v7 = @"played_podcast";
      v41 = @"media_on_repeat_weekly_summary";
      if (bundleSubType != 404)
      {
        v41 = @"unknown";
      }

      if (bundleSubType != 403)
      {
        v7 = v41;
      }

      v10 = bundleSubType <= 404;
    }

    else
    {
      v4 = @"song_on_repeat";
      v11 = @"played_song";
      if (bundleSubType != 402)
      {
        v11 = @"unknown";
      }

      if (bundleSubType != 401)
      {
        v4 = v11;
      }

      v7 = @"contact_weekly_summary";
      v12 = @"contact_trend";
      if (bundleSubType != 303)
      {
        v12 = @"unknown";
      }

      if (bundleSubType != 302)
      {
        v7 = v12;
      }

      v10 = bundleSubType <= 400;
    }

    goto LABEL_151;
  }

  if (bundleSubType > 706)
  {
    if (bundleSubType > 907)
    {
      if (bundleSubType > 1003)
      {
        v4 = @"personalized_reflection_outing";
        v34 = @"personalized_reflection_contact";
        v35 = @"personalized_reflection_activity";
        if (bundleSubType != 1103)
        {
          v35 = @"unknown";
        }

        if (bundleSubType != 1102)
        {
          v34 = v35;
        }

        if (bundleSubType != 1101)
        {
          v4 = v34;
        }

        v7 = @"thematic_summary_common_place";
        v36 = @"thematic_summary_photo_subject";
        v37 = @"thematic_summary_state_of_mind";
        if (bundleSubType != 1006)
        {
          v37 = @"unknown";
        }

        if (bundleSubType != 1005)
        {
          v36 = v37;
        }

        if (bundleSubType != 1004)
        {
          v7 = v36;
        }

        v10 = bundleSubType <= 1100;
      }

      else
      {
        v4 = @"thematic_summary_holiday";
        v15 = @"thematic_summary_social";
        v16 = @"thematic_summary_common_activity";
        if (bundleSubType != 1003)
        {
          v16 = @"unknown";
        }

        if (bundleSubType != 1002)
        {
          v15 = v16;
        }

        if (bundleSubType != 1001)
        {
          v4 = v15;
        }

        v7 = @"clustering_thematic_grouping";
        v17 = @"clustering_time_at_home_grouping";
        v18 = @"clustering_unspecified_grouping";
        if (bundleSubType != 910)
        {
          v18 = @"unknown";
        }

        if (bundleSubType != 909)
        {
          v17 = v18;
        }

        if (bundleSubType != 908)
        {
          v7 = v17;
        }

        v10 = bundleSubType <= 1000;
      }
    }

    else if (bundleSubType > 901)
    {
      v4 = @"clustering_location_grouping";
      v30 = @"clustering_activity_grouping";
      v31 = @"clustering_contact_grouping";
      if (bundleSubType != 907)
      {
        v31 = @"unknown";
      }

      if (bundleSubType != 906)
      {
        v30 = v31;
      }

      if (bundleSubType != 905)
      {
        v4 = v30;
      }

      v7 = @"clustering_activity_routine";
      v32 = @"clustering_contact_routine";
      v33 = @"clustering_time_at_home_routine";
      if (bundleSubType != 904)
      {
        v33 = @"unknown";
      }

      if (bundleSubType != 903)
      {
        v32 = v33;
      }

      if (bundleSubType != 902)
      {
        v7 = v32;
      }

      v10 = bundleSubType <= 904;
    }

    else
    {
      v4 = @"daily_mood";
      v5 = @"momentary_emotion";
      v6 = @"clustering_outing_routine";
      if (bundleSubType != 901)
      {
        v6 = @"unknown";
      }

      if (bundleSubType != 802)
      {
        v5 = v6;
      }

      if (bundleSubType != 801)
      {
        v4 = v5;
      }

      v7 = @"evergreen_gratitude";
      v8 = @"evergreen_resilience";
      v9 = @"evergreen_purpose";
      if (bundleSubType != 709)
      {
        v9 = @"unknown";
      }

      if (bundleSubType != 708)
      {
        v8 = v9;
      }

      if (bundleSubType != 707)
      {
        v7 = v8;
      }

      v10 = bundleSubType <= 800;
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

  if (bundleSubType > 700)
  {
    v4 = @"evergreen_creativity";
    v26 = @"evergreen_kindness";
    v27 = @"evergreen_purpose";
    if (bundleSubType != 706)
    {
      v27 = @"unknown";
    }

    if (bundleSubType != 705)
    {
      v26 = v27;
    }

    if (bundleSubType != 704)
    {
      v4 = v26;
    }

    v7 = @"evergreen_gratitude";
    v28 = @"evergreen_wisdom";
    v29 = @"evergreen_resillience";
    if (bundleSubType != 703)
    {
      v29 = @"unknown";
    }

    if (bundleSubType != 702)
    {
      v28 = v29;
    }

    if (bundleSubType != 701)
    {
      v7 = v28;
    }

    v10 = bundleSubType <= 703;
    goto LABEL_151;
  }

  switch(bundleSubType)
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

- (unint64_t)getInterfaceTypeEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([enumCopy isEqualToString:@"activity"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"outing"])
  {
    v4 = 2;
  }

  else if ([enumCopy isEqualToString:@"photo_moment"])
  {
    v4 = 3;
  }

  else if ([enumCopy isEqualToString:@"significant_contact"])
  {
    v4 = 4;
  }

  else if ([enumCopy isEqualToString:@"media"])
  {
    v4 = 5;
  }

  else if ([enumCopy isEqualToString:@"shared_content"])
  {
    v4 = 6;
  }

  else if ([enumCopy isEqualToString:@"time_at_home"])
  {
    v4 = 7;
  }

  else if ([enumCopy isEqualToString:@"evergreen"])
  {
    v4 = 11;
  }

  else if ([enumCopy isEqualToString:@"topics_of_interest"])
  {
    v4 = 8;
  }

  else if ([enumCopy isEqualToString:@"trend"] & 1) != 0 || (objc_msgSend(enumCopy, "isEqualToString:", @"workoutTrend") & 1) != 0 || (objc_msgSend(enumCopy, "isEqualToString:", @"conversationTrend"))
  {
    v4 = 9;
  }

  else if ([enumCopy isEqualToString:@"photo_memory"])
  {
    v4 = 10;
  }

  else if ([enumCopy isEqualToString:@"timeContext"])
  {
    v4 = 12;
  }

  else if ([enumCopy isEqualToString:@"trip"])
  {
    v4 = 13;
  }

  else if ([enumCopy isEqualToString:@"state_of_mind"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)getSuperTypeEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([enumCopy isEqualToString:@"outing"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"activity"])
  {
    v4 = 2;
  }

  else if ([enumCopy isEqualToString:@"contact"])
  {
    v4 = 3;
  }

  else if ([enumCopy isEqualToString:@"media"])
  {
    v4 = 4;
  }

  else if ([enumCopy isEqualToString:@"time_at_home"])
  {
    v4 = 5;
  }

  else if ([enumCopy isEqualToString:@"photo_memory"])
  {
    v4 = 6;
  }

  else if ([enumCopy isEqualToString:@"evergreen"])
  {
    v4 = 7;
  }

  else if ([enumCopy isEqualToString:@"state_of_mind"])
  {
    v4 = 8;
  }

  else if ([enumCopy isEqualToString:@"clustering"])
  {
    v4 = 9;
  }

  else if ([enumCopy isEqualToString:@"personalized_reflection"])
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
  bundleIdentifier = [(MOEventBundle *)self bundleIdentifier];
  suggestionID = [(MOEventBundle *)self suggestionID];
  subSuggestionIDs = [(MOEventBundle *)self subSuggestionIDs];
  startDate = [(MOEventBundle *)self startDate];
  endDate = [(MOEventBundle *)self endDate];
  creationDate = [(MOEventBundle *)self creationDate];
  expirationDate = [(MOEventBundle *)self expirationDate];
  firstCreationDate = [(MOEventBundle *)self firstCreationDate];
  displayStartDate = [(MOEventBundle *)self displayStartDate];
  displayEndDate = [(MOEventBundle *)self displayEndDate];
  source = [(MOEventBundle *)self source];
  interfaceType = [(MOEventBundle *)self interfaceType];
  bundleSubType = [(MOEventBundle *)self bundleSubType];
  bundleSuperType = [(MOEventBundle *)self bundleSuperType];
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
  summarizationGranularity = [(MOEventBundle *)self summarizationGranularity];
  if ([(MOEventBundle *)self includedInSummaryBundleOnly])
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  v28 = v5;
  promptLanguage = [(MOEventBundle *)self promptLanguage];
  mask = [promptLanguage mask];
  photoSource = [(MOEventBundle *)self photoSource];
  photoTraits = [(MOEventBundle *)self photoTraits];
  action = [(MOEventBundle *)self action];
  concurrentMediaAction = [(MOEventBundle *)self concurrentMediaAction];
  place = [(MOEventBundle *)self place];
  time = [(MOEventBundle *)self time];
  predominantWeather = [(MOEventBundle *)self predominantWeather];
  actions = [(MOEventBundle *)self actions];
  persons = [(MOEventBundle *)self persons];
  places = [(MOEventBundle *)self places];
  subBundleIDs = [(MOEventBundle *)self subBundleIDs];
  metaData = [(MOEventBundle *)self metaData];
  v17 = [metaData count];
  events = [(MOEventBundle *)self events];
  v6 = [events count];
  labels = [(MOEventBundle *)self labels];
  promptLanguages = [(MOEventBundle *)self promptLanguages];
  _allResourcesImpl = [(MOEventBundle *)self _allResourcesImpl];
  metaData2 = [(MOEventBundle *)self metaData];
  allKeys = [metaData2 allKeys];
  v7 = [allKeys count];
  metaData3 = [(MOEventBundle *)self metaData];
  allKeys2 = [metaData3 allKeys];
  metaDataForRank = [(MOEventBundle *)self metaDataForRank];
  allKeys3 = [metaDataForRank allKeys];
  rankingDictionary = [(MOEventBundle *)self rankingDictionary];
  suggestionEngagementEvents = [(MOEventBundle *)self suggestionEngagementEvents];
  suggestionEngagementViewCount = [(MOEventBundle *)self suggestionEngagementViewCount];
  appEntryEngagementEvents = [(MOEventBundle *)self appEntryEngagementEvents];
  v39 = [v38 stringWithFormat:@"<MOEventBundle bundleIdentifier, %@, suggestionID, %@, sub Suggestion IDs, %@, startDate, %@, endDate, %@, creationDate, %@, expirationDate, %@, firstCreationDate, %@, displayStartDate, %@, displayEndDate, %@, source, %lu, interfaceType, %lu, bundleSubType, %lu, bundleSuperType, %lu, filtered, %@, agg./suppressed, %@, sum. granularity, %lu, includedInSummaryOnly, %@, promptLanguage, %@, photoSource, %lu, traits, %@, action, %@, concurrentMediaAction, %@, place, %@, time, %@, predominantWeather %@, actions, %@, persons, %@, places, %@, sub bundle IDs, %@, metaData.count, %lu, events.count, %lu, labels, %@, prompts, %@, allResources, %@, meta, %lu, meta keywords, %@, metaDataForRank, %@, rankings, %@, suggestionEngagements, %@, suggestionEngagementViewCount, %lu, appEntryEngagementEvents %@>", bundleIdentifier, suggestionID, subSuggestionIDs, startDate, endDate, creationDate, expirationDate, firstCreationDate, displayStartDate, displayEndDate, source, interfaceType, bundleSubType, bundleSuperType, v32, v31, summarizationGranularity, v28, mask, photoSource, photoTraits, action, concurrentMediaAction, place, time, predominantWeather, actions, persons, places, subBundleIDs, v17, v6, labels, promptLanguages, _allResourcesImpl, v7, allKeys2, allKeys3, rankingDictionary, suggestionEngagementEvents, suggestionEngagementViewCount, appEntryEngagementEvents];

  objc_autoreleasePoolPop(v41);

  return v39;
}

- (id)shortDescription
{
  v3 = objc_autoreleasePoolPush();
  v32 = MEMORY[0x277CCACA8];
  v34 = v3;
  bundleIdentifier = [(MOEventBundle *)self bundleIdentifier];
  suggestionID = [(MOEventBundle *)self suggestionID];
  subSuggestionIDs = [(MOEventBundle *)self subSuggestionIDs];
  startDate = [(MOEventBundle *)self startDate];
  endDate = [(MOEventBundle *)self endDate];
  creationDate = [(MOEventBundle *)self creationDate];
  firstCreationDate = [(MOEventBundle *)self firstCreationDate];
  interfaceType = [(MOEventBundle *)self interfaceType];
  bundleSubType = [(MOEventBundle *)self bundleSubType];
  bundleSuperType = [(MOEventBundle *)self bundleSuperType];
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
  summarizationGranularity = [(MOEventBundle *)self summarizationGranularity];
  if ([(MOEventBundle *)self includedInSummaryBundleOnly])
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  v19 = v6;
  promptLanguage = [(MOEventBundle *)self promptLanguage];
  mask = [promptLanguage mask];
  photoSource = [(MOEventBundle *)self photoSource];
  action = [(MOEventBundle *)self action];
  concurrentMediaAction = [(MOEventBundle *)self concurrentMediaAction];
  place = [(MOEventBundle *)self place];
  time = [(MOEventBundle *)self time];
  subBundleIDs = [(MOEventBundle *)self subBundleIDs];
  labels = [(MOEventBundle *)self labels];
  rankingDictionary = [(MOEventBundle *)self rankingDictionary];
  v9 = [rankingDictionary objectForKeyedSubscript:@"visibilityCategoryForUI"];
  rankingDictionary2 = [(MOEventBundle *)self rankingDictionary];
  v11 = [rankingDictionary2 objectForKeyedSubscript:@"bundleGoodnessScore"];
  v33 = [v32 stringWithFormat:@"<MOEventBundle bundleIdentifier, %@, suggestionID, %@, sub Suggestion IDs, %@, startDate, %@, endDate, %@, creationDate, %@, firstCreationDate, %@, interfaceType, %lu, bundleSubType, %lu, bundleSuperType, %lu, filtered, %@, agg./suppressed, %@, sum. granularity, %lu, includedInSummaryOnly, %@, promptLanguage, %@, photoSource, %lu, action, %@, concurrentMediaAction, %@, place, %@, time, %@, sub bundle IDs, %@, labels, %@, rankingVisibilityCategoryForUI, %@, rankingBundleGoodnessScore, %@ >", bundleIdentifier, suggestionID, subSuggestionIDs, startDate, endDate, creationDate, firstCreationDate, interfaceType, bundleSubType, bundleSuperType, v22, v21, summarizationGranularity, v19, mask, photoSource, action, concurrentMediaAction, place, time, subBundleIDs, labels, v9, v11];

  objc_autoreleasePoolPop(v34);

  return v33;
}

- (MOEventBundle)initWithEventSet:(id)set filtered:(BOOL)filtered
{
  setCopy = set;
  date = [MEMORY[0x277CBEAA8] date];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v9 = [(MOEventBundle *)self initWithBundleIdentifier:uUID suggestionID:uUID startDate:date endDate:date creationDate:date];
  if (v9)
  {
    allObjects = [setCopy allObjects];
    events = v9->_events;
    v9->_events = allObjects;

    v9->_filtered = filtered;
    [(MOEventBundle *)v9 setPropertiesBasedOnEvents];
  }

  return v9;
}

- (NSSet)getCategories
{
  v2 = MEMORY[0x277CBEB98];
  events = [(MOEventBundle *)self events];
  v4 = [events valueForKeyPath:@"@distinctUnionOfObjects.category"];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (void)setPropertiesBasedOnEvents
{
  v37 = *MEMORY[0x277D85DE8];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  startDate = self->_startDate;
  self->_startDate = distantFuture;

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  endDate = self->_endDate;
  self->_endDate = distantPast;

  distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
  expirationDate = self->_expirationDate;
  self->_expirationDate = distantFuture2;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  events = [(MOEventBundle *)self events];
  v10 = [events countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(events);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = self->_startDate;
        startDate = [v14 startDate];
        LODWORD(v15) = [(NSDate *)v15 isAfterDate:startDate];

        if (v15)
        {
          startDate2 = [v14 startDate];
          v18 = [startDate2 copy];
          v19 = self->_startDate;
          self->_startDate = v18;
        }

        endDate = [v14 endDate];
        v21 = [endDate isAfterDate:self->_endDate];

        if (v21)
        {
          endDate2 = [v14 endDate];
          v23 = [endDate2 copy];
          v24 = self->_endDate;
          self->_endDate = v23;
        }

        v25 = self->_expirationDate;
        expirationDate = [v14 expirationDate];
        LODWORD(v25) = [(NSDate *)v25 isAfterDate:expirationDate];

        if (v25)
        {
          expirationDate2 = [v14 expirationDate];
          v28 = [expirationDate2 copy];
          v29 = self->_expirationDate;
          self->_expirationDate = v28;
        }

        v30 = [v14 provider] - 1;
        if (v30 <= 0xB)
        {
          self->_source |= qword_22D931EC8[v30];
        }
      }

      v11 = [events countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)addBackgroundAction:(id)action
{
  actionCopy = action;
  v4 = MEMORY[0x277CBEB18];
  backgroundActions = [(MOEventBundle *)self backgroundActions];
  v6 = [v4 arrayWithArray:backgroundActions];

  if (actionCopy)
  {
    [v6 addObject:actionCopy];
  }

  [(MOEventBundle *)self setBackgroundActions:v6];
}

- (void)addAction:(id)action
{
  actionCopy = action;
  v4 = MEMORY[0x277CBEB18];
  actions = [(MOEventBundle *)self actions];
  v6 = [v4 arrayWithArray:actions];

  if (actionCopy)
  {
    [v6 addObject:actionCopy];
  }

  [(MOEventBundle *)self setActions:v6];
}

- (id)localStartDate
{
  time = [(MOEventBundle *)self time];
  if (!time)
  {
    goto LABEL_4;
  }

  v4 = time;
  time2 = [(MOEventBundle *)self time];
  timeZone = [time2 timeZone];

  if (timeZone)
  {
    v7 = objc_alloc(MEMORY[0x277CBEBB0]);
    time3 = [(MOEventBundle *)self time];
    timeZone2 = [time3 timeZone];
    v10 = [v7 initWithName:timeZone2];

    startDate = [(MOEventBundle *)self startDate];
    startDate2 = [MOTime localTimeOfDate:startDate timeZone:v10];
  }

  else
  {
LABEL_4:
    startDate2 = [(MOEventBundle *)self startDate];
  }

  return startDate2;
}

- (id)localEndDate
{
  time = [(MOEventBundle *)self time];
  if (!time)
  {
    goto LABEL_4;
  }

  v4 = time;
  time2 = [(MOEventBundle *)self time];
  timeZone = [time2 timeZone];

  if (timeZone)
  {
    v7 = objc_alloc(MEMORY[0x277CBEBB0]);
    time3 = [(MOEventBundle *)self time];
    timeZone2 = [time3 timeZone];
    v10 = [v7 initWithName:timeZone2];

    endDate = [(MOEventBundle *)self endDate];
    endDate2 = [MOTime localTimeOfDate:endDate timeZone:v10];
  }

  else
  {
LABEL_4:
    endDate2 = [(MOEventBundle *)self endDate];
  }

  return endDate2;
}

- (id)displayStartDate
{
  v63 = *MEMORY[0x277D85DE8];
  if ([(MOEventBundle *)self bundleSubType]== 202 || [(MOEventBundle *)self bundleSubType]== 404 || [(MOEventBundle *)self bundleSubType]== 405)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    events = [(MOEventBundle *)self events];
    v5 = [events countByEnumeratingWithState:&v56 objects:v62 count:16];
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
            objc_enumerationMutation(events);
          }

          v9 = *(*(&v56 + 1) + 8 * i);
          if (([v9 category] == 2 || objc_msgSend(v9, "category") == 4) && objc_msgSend(v9, "provider") != 5)
          {
            startDate = [v9 startDate];
            v11 = [distantFuture isAfterDate:startDate];

            if (v11)
            {
              startDate2 = [v9 startDate];

              distantFuture = startDate2;
            }
          }
        }

        v6 = [events countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v6);
    }

    time = [(MOEventBundle *)self time];
    if (!time)
    {
      goto LABEL_19;
    }

    v14 = time;
    time2 = [(MOEventBundle *)self time];
    timeZone = [time2 timeZone];

    if (timeZone)
    {
      v17 = objc_alloc(MEMORY[0x277CBEBB0]);
      time3 = [(MOEventBundle *)self time];
      timeZone2 = [time3 timeZone];
      v20 = [v17 initWithName:timeZone2];

      startDate3 = [MOTime localTimeOfDate:distantFuture timeZone:v20];
    }

    else
    {
LABEL_19:
      startDate3 = distantFuture;
    }
  }

  else if ([(MOEventBundle *)self bundleSubType]== 203)
  {
    startDate3 = [(MOEventBundle *)self startDate];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    events2 = [(MOEventBundle *)self events];
    v25 = [events2 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v53;
      v28 = @"kEventResourcePatternWorkoutInfoDictArray";
      v45 = *v53;
      v46 = events2;
      v44 = @"kEventResourcePatternWorkoutInfoDictArray";
      do
      {
        v29 = 0;
        v47 = v26;
        do
        {
          if (*v53 != v27)
          {
            objc_enumerationMutation(events2);
          }

          v30 = *(*(&v52 + 1) + 8 * v29);
          if ([v30 provider] == 5 && objc_msgSend(v30, "category") == 2)
          {
            patterns = [v30 patterns];
            v32 = [patterns objectForKey:v28];

            if (v32)
            {
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              patterns2 = [v30 patterns];
              v34 = [patterns2 objectForKeyedSubscript:v28];

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
                    if ([startDate3 isAfterDate:v42])
                    {
                      v43 = v42;

                      startDate3 = v43;
                    }
                  }

                  v36 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
                }

                while (v36);
              }

              v27 = v45;
              events2 = v46;
              v28 = v44;
            }

            v26 = v47;
          }

          ++v29;
        }

        while (v29 != v26);
        v26 = [events2 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v26);
    }
  }

  else
  {
    startDate3 = [(MOEventBundle *)self localStartDate];
  }

  v22 = *MEMORY[0x277D85DE8];

  return startDate3;
}

- (id)displayEndDate
{
  v63 = *MEMORY[0x277D85DE8];
  if ([(MOEventBundle *)self bundleSubType]== 202 || [(MOEventBundle *)self bundleSubType]== 404 || [(MOEventBundle *)self bundleSubType]== 405)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    events = [(MOEventBundle *)self events];
    v5 = [events countByEnumeratingWithState:&v56 objects:v62 count:16];
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
            objc_enumerationMutation(events);
          }

          v9 = *(*(&v56 + 1) + 8 * i);
          if (([v9 category] == 2 || objc_msgSend(v9, "category") == 4) && objc_msgSend(v9, "provider") != 5)
          {
            endDate = [v9 endDate];
            v11 = [distantPast isBeforeDate:endDate];

            if (v11)
            {
              endDate2 = [v9 endDate];

              distantPast = endDate2;
            }
          }
        }

        v6 = [events countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v6);
    }

    time = [(MOEventBundle *)self time];
    if (!time)
    {
      goto LABEL_19;
    }

    v14 = time;
    time2 = [(MOEventBundle *)self time];
    timeZone = [time2 timeZone];

    if (timeZone)
    {
      v17 = objc_alloc(MEMORY[0x277CBEBB0]);
      time3 = [(MOEventBundle *)self time];
      timeZone2 = [time3 timeZone];
      v20 = [v17 initWithName:timeZone2];

      endDate3 = [MOTime localTimeOfDate:distantPast timeZone:v20];
    }

    else
    {
LABEL_19:
      endDate3 = distantPast;
    }
  }

  else if ([(MOEventBundle *)self bundleSubType]== 203)
  {
    endDate3 = [(MOEventBundle *)self endDate];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    events2 = [(MOEventBundle *)self events];
    v25 = [events2 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v53;
      v28 = @"kEventResourcePatternWorkoutInfoDictArray";
      v45 = *v53;
      v46 = events2;
      v44 = @"kEventResourcePatternWorkoutInfoDictArray";
      do
      {
        v29 = 0;
        v47 = v26;
        do
        {
          if (*v53 != v27)
          {
            objc_enumerationMutation(events2);
          }

          v30 = *(*(&v52 + 1) + 8 * v29);
          if ([v30 provider] == 5 && objc_msgSend(v30, "category") == 2)
          {
            patterns = [v30 patterns];
            v32 = [patterns objectForKey:v28];

            if (v32)
            {
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              patterns2 = [v30 patterns];
              v34 = [patterns2 objectForKeyedSubscript:v28];

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
                    if ([endDate3 isBeforeDate:v42])
                    {
                      v43 = v42;

                      endDate3 = v43;
                    }
                  }

                  v36 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
                }

                while (v36);
              }

              v27 = v45;
              events2 = v46;
              v28 = v44;
            }

            v26 = v47;
          }

          ++v29;
        }

        while (v29 != v26);
        v26 = [events2 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v26);
    }
  }

  else
  {
    endDate3 = [(MOEventBundle *)self localEndDate];
  }

  v22 = *MEMORY[0x277D85DE8];

  return endDate3;
}

- (void)addPerson:(id)person
{
  personCopy = person;
  v4 = MEMORY[0x277CBEB18];
  persons = [(MOEventBundle *)self persons];
  v6 = [v4 arrayWithArray:persons];

  if (personCopy)
  {
    [v6 addObject:personCopy];
  }

  [(MOEventBundle *)self setPersons:v6];
}

- (void)addResource:(id)resource
{
  resourceCopy = resource;
  v4 = MEMORY[0x277CBEB18];
  resources = [(MOEventBundle *)self resources];
  v6 = [v4 arrayWithArray:resources];

  if (resourceCopy)
  {
    [v6 addObject:resourceCopy];
  }

  [(MOEventBundle *)self setResources:v6];
}

- (void)addPhotoTraits:(id)traits
{
  traitsCopy = traits;
  v4 = MEMORY[0x277CBEB18];
  photoTraits = [(MOEventBundle *)self photoTraits];
  v6 = [v4 arrayWithArray:photoTraits];

  if ([v6 count])
  {
    [v6 addObjectsFromArray:traitsCopy];
  }

  [(MOEventBundle *)self setPhotoTraits:v6];
}

- (void)addResources:(id)resources
{
  resourcesCopy = resources;
  v4 = MEMORY[0x277CBEB18];
  resources = [(MOEventBundle *)self resources];
  v6 = [v4 arrayWithArray:resources];

  if ([resourcesCopy count])
  {
    [v6 addObjectsFromArray:resourcesCopy];
  }

  [(MOEventBundle *)self setResources:v6];
}

- (void)addMetaDataForRankForKey:(id)key value:(id)value
{
  v6 = MEMORY[0x277CBEB38];
  valueCopy = value;
  keyCopy = key;
  metaDataForRank = [(MOEventBundle *)self metaDataForRank];
  v11 = [v6 dictionaryWithDictionary:metaDataForRank];

  [v11 setObject:valueCopy forKey:keyCopy];
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

- (void)withResourcesUsingBlock:(id)block
{
  v67 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  selfCopy = self;
  resources = [(MOEventBundle *)self resources];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __41__MOEventBundle_withResourcesUsingBlock___block_invoke;
  v58[3] = &unk_278775368;
  v6 = blockCopy;
  v59 = v6;
  v60 = &v61;
  [resources enumerateObjectsUsingBlock:v58];

  if ((v62[3] & 1) == 0)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    persons = [(MOEventBundle *)selfCopy persons];
    v8 = [persons countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v8)
    {
      v9 = *v55;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(persons);
        }

        v11 = *(*(&v54 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [[MOResource alloc] initWithPerson:v11];
        if (!v13)
        {
          goto LABEL_10;
        }

        sourceEventIdentifier = [v11 sourceEventIdentifier];
        [(MOResource *)v13 setSourceEventIdentifier:sourceEventIdentifier];

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
          v8 = [persons countByEnumeratingWithState:&v54 objects:v66 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    place = [(MOEventBundle *)selfCopy place];
    if (!place)
    {
      goto LABEL_25;
    }

    places = [(MOEventBundle *)selfCopy places];
    v18 = [places count] == 0;

    if (!v18)
    {
      goto LABEL_25;
    }

    v19 = objc_autoreleasePoolPush();
    place2 = [(MOEventBundle *)selfCopy place];
    startDate = [place2 startDate];

    if (!startDate)
    {
      startDate = [(MOEventBundle *)selfCopy startDate];
    }

    place3 = [(MOEventBundle *)selfCopy place];
    endDate = [place3 endDate];

    if (!endDate)
    {
      endDate = [(MOEventBundle *)selfCopy endDate];
    }

    v24 = [MOResource alloc];
    place4 = [(MOEventBundle *)selfCopy place];
    v26 = [(MOResource *)v24 initWithPlace:place4 startDate:startDate endDate:endDate];

    if (!v26)
    {
      goto LABEL_23;
    }

    place5 = [(MOEventBundle *)selfCopy place];
    sourceEventIdentifier2 = [place5 sourceEventIdentifier];
    [(MOResource *)v26 setSourceEventIdentifier:sourceEventIdentifier2];

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
      persons = [(MOEventBundle *)selfCopy places];
      v30 = [persons countByEnumeratingWithState:&v50 objects:v65 count:16];
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
            objc_enumerationMutation(persons);
          }

          v33 = *(*(&v50 + 1) + 8 * v32);
          v34 = objc_autoreleasePoolPush();
          startDate2 = [v33 startDate];
          if (!startDate2)
          {
            startDate2 = [(MOEventBundle *)selfCopy startDate];
          }

          endDate2 = [v33 endDate];
          if (!endDate2)
          {
            endDate2 = [(MOEventBundle *)selfCopy endDate];
          }

          v37 = [[MOResource alloc] initWithPlace:v33 startDate:startDate2 endDate:endDate2];
          v39 = 1;
          if (v37)
          {
            sourceEventIdentifier3 = [v33 sourceEventIdentifier];
            [(MOResource *)v37 setSourceEventIdentifier:sourceEventIdentifier3];

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
            v30 = [persons countByEnumeratingWithState:&v50 objects:v65 count:16];
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

      predominantWeather = [(MOEventBundle *)selfCopy predominantWeather];

      if (predominantWeather)
      {
        v41 = objc_autoreleasePoolPush();
        v42 = [MOResource alloc];
        predominantWeather2 = [(MOEventBundle *)selfCopy predominantWeather];
        v44 = [(MOResource *)v42 initWithWeather:predominantWeather2];

        if (v44)
        {
          predominantWeather3 = [(MOEventBundle *)selfCopy predominantWeather];
          sourceEventIdentifier4 = [predominantWeather3 sourceEventIdentifier];
          [(MOResource *)v44 setSourceEventIdentifier:sourceEventIdentifier4];

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
  selfCopy = self;
  persons = [(MOEventBundle *)self persons];
  v6 = [persons countByEnumeratingWithState:&v89 objects:v95 count:16];
  v7 = 0x278772000uLL;
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    place4 = *v90;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v90 != place4)
        {
          objc_enumerationMutation(persons);
        }

        v11 = *(*(&v89 + 1) + 8 * i);
        v12 = [[MOResource alloc] initWithPerson:v11];
        v13 = v12;
        if (v12)
        {
          identifier = [(MOResource *)v12 identifier];

          if (identifier)
          {
            sourceEventIdentifier = [v11 sourceEventIdentifier];
            [(MOResource *)v13 setSourceEventIdentifier:sourceEventIdentifier];

            [(MOResource *)v13 priorityScore];
            if (v16 <= 0.0)
            {
              [(MOResource *)v13 setPriorityScore:v9++ + 10000.0];
            }

            [v4 addObject:v13];
          }
        }
      }

      v8 = [persons countByEnumeratingWithState:&v89 objects:v95 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v17 = selfCopy;
  if ([(MOEventBundle *)selfCopy interfaceType]!= 7)
  {
    interfaceType = [(MOEventBundle *)selfCopy interfaceType];
    if (interfaceType == 1)
    {
      obj = [(MOEventBundle *)selfCopy place];
      if ([obj placeUserType] == 1)
      {
LABEL_95:

        goto LABEL_96;
      }
    }

    interfaceType2 = [(MOEventBundle *)selfCopy interfaceType];
    if (interfaceType2 == 1)
    {
      place = [(MOEventBundle *)selfCopy place];
      if ([place placeUserType] == 2)
      {
        v21 = 0;
LABEL_46:

LABEL_47:
        if (interfaceType == 1)
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

        place2 = [(MOEventBundle *)v17 place];
        [place2 priorityScore];
        if (v30 < 20000.0)
        {
          place3 = [(MOEventBundle *)v17 place];
          if (place3)
          {
            v32 = place3;
            places = [(MOEventBundle *)v17 places];
            v34 = [places count];

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
                    interfaceType3 = [(MOEventBundle *)v17 interfaceType];
                    if (interfaceType3 == 12)
                    {
                      place4 = [(MOEventBundle *)v17 place];
                      if ([place4 placeUserType] == 1)
                      {
                        startDate = place4;
LABEL_92:

                        continue;
                      }

                      if ([(MOEventBundle *)v17 interfaceType]== 12)
                      {
LABEL_76:
                        v52 = place4;
                        place5 = [(MOEventBundle *)v17 place];
                        placeUserType = [place5 placeUserType];

                        if (interfaceType3 == 12)
                        {

                          v28 = placeUserType == 2;
                          place4 = v52;
                          v17 = selfCopy;
                          if (v28)
                          {
                            goto LABEL_81;
                          }
                        }

                        else
                        {
                          v28 = placeUserType == 2;
                          v17 = selfCopy;
                          place4 = v52;
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

                    v55 = place4;
                    startDate = [v48 startDate];
                    if (!startDate)
                    {
                      startDate = [(MOEventBundle *)v17 startDate];
                    }

                    endDate = [v48 endDate];
                    if (!endDate)
                    {
                      endDate = [(MOEventBundle *)v17 endDate];
                    }

                    v57 = [[MOResource alloc] initWithPlace:v48 startDate:startDate endDate:endDate];
                    if (v57)
                    {
                      sourceEventIdentifier2 = [v48 sourceEventIdentifier];
                      [(MOResource *)v57 setSourceEventIdentifier:sourceEventIdentifier2];

                      [(MOResource *)v57 priorityScore];
                      if (v59 <= 0.0)
                      {
                        [(MOResource *)v57 setPriorityScore:v9++ + 10000.0];
                      }

                      [v4 addObject:v57];
                    }

                    v17 = selfCopy;
                    place4 = v55;
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

            place6 = [(MOEventBundle *)v17 place];
            place2 = [place6 startDate];

            if (!place2)
            {
              place2 = [(MOEventBundle *)v17 startDate];
            }

            place7 = [(MOEventBundle *)v17 place];
            endDate2 = [place7 endDate];

            if (!endDate2)
            {
              endDate2 = [(MOEventBundle *)v17 endDate];
            }

            v38 = [MOResource alloc];
            place8 = [(MOEventBundle *)v17 place];
            v40 = [(MOResource *)v38 initWithPlace:place8 startDate:place2 endDate:endDate2];

            if (v40)
            {
              place9 = [(MOEventBundle *)v17 place];
              sourceEventIdentifier3 = [place9 sourceEventIdentifier];
              [(MOResource *)v40 setSourceEventIdentifier:sourceEventIdentifier3];

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

      v78 = place;
    }

    place4 = [(MOEventBundle *)selfCopy interfaceType];
    if (place4 == 12)
    {
      place10 = [(MOEventBundle *)selfCopy place];
      if ([place10 placeUserType] == 1)
      {
        v21 = 0;
LABEL_44:

LABEL_45:
        place = v78;
        if (interfaceType2 != 1)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    v22 = selfCopy;
    interfaceType4 = [(MOEventBundle *)selfCopy interfaceType];
    if (interfaceType4 == 12)
    {
      place11 = [(MOEventBundle *)selfCopy place];
      if ([place11 placeUserType] == 2)
      {
        v21 = 0;
        goto LABEL_42;
      }

      v76 = place11;
      v22 = selfCopy;
    }

    interfaceType5 = [(MOEventBundle *)v22 interfaceType];
    if (interfaceType5 == 16)
    {
      place12 = [(MOEventBundle *)v22 place];
      if ([place12 placeUserType] == 1)
      {

        v21 = 0;
        place11 = v76;
        if (interfaceType4 != 12)
        {
LABEL_43:
          v17 = selfCopy;
          if (place4 != 12)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

LABEL_42:

        goto LABEL_43;
      }

      v75 = place12;
      if ([(MOEventBundle *)v22 interfaceType]!= 16)
      {
        v21 = 1;
        place11 = v76;
        goto LABEL_40;
      }

      v22 = selfCopy;
    }

    else if ([(MOEventBundle *)v22 interfaceType]!= 16)
    {
      v21 = 1;
      place11 = v76;
      goto LABEL_41;
    }

    place13 = [(MOEventBundle *)v22 place];
    v21 = [place13 placeUserType] != 2;

    v28 = interfaceType5 == 16;
    place11 = v76;
    if (!v28)
    {
LABEL_41:
      if (interfaceType4 != 12)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

LABEL_40:

    goto LABEL_41;
  }

LABEL_96:
  predominantWeather = [(MOEventBundle *)v17 predominantWeather];

  if (predominantWeather)
  {
    v61 = objc_alloc(*(v7 + 3032));
    predominantWeather2 = [(MOEventBundle *)v17 predominantWeather];
    v63 = [v61 initWithWeather:predominantWeather2];

    if (v63)
    {
      predominantWeather3 = [(MOEventBundle *)v17 predominantWeather];
      sourceEventIdentifier4 = [predominantWeather3 sourceEventIdentifier];
      [v63 setSourceEventIdentifier:sourceEventIdentifier4];

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
  resources = [(MOEventBundle *)v17 resources];
  v68 = [resources countByEnumeratingWithState:&v81 objects:v93 count:16];
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
          objc_enumerationMutation(resources);
        }

        v72 = *(*(&v81 + 1) + 8 * k);
        [v72 priorityScore];
        if (v73 <= 0.0)
        {
          [v72 setPriorityScore:v9++ + 10000.0];
        }

        [v4 addObject:v72];
      }

      v69 = [resources countByEnumeratingWithState:&v81 objects:v93 count:16];
    }

    while (v69);
  }

  [(MOEventBundle *)v17 setResources:v4];
  v74 = *MEMORY[0x277D85DE8];
}

- (void)addEvent:(id)event
{
  v11[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (eventCopy)
  {
    events = [(MOEventBundle *)self events];

    if (events)
    {
      v6 = MEMORY[0x277CBEB18];
      events2 = [(MOEventBundle *)self events];
      v8 = [v6 arrayWithArray:events2];

      [v8 addObject:eventCopy];
      v9 = [v8 copy];
      [(MOEventBundle *)self setEvents:v9];
    }

    else
    {
      v11[0] = eventCopy;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [(MOEventBundle *)self setEvents:v8];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addEvents:(id)events
{
  eventsCopy = events;
  if (eventsCopy)
  {
    v10 = eventsCopy;
    if ([eventsCopy count])
    {
      events = [(MOEventBundle *)self events];

      if (events)
      {
        v6 = MEMORY[0x277CBEB18];
        events2 = [(MOEventBundle *)self events];
        v8 = [v6 arrayWithArray:events2];

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

- (MOEventBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
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
    selfCopy = 0;
  }

  else
  {
    v10 = [(MOEventBundle *)self initWithBundleIdentifier:v5 creationDate:v6];
    v11 = v10;
    if (v10)
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
      startDate = v11->_startDate;
      v11->_startDate = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
      endDate = v11->_endDate;
      v11->_endDate = v14;

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstCreationDate"];
      firstCreationDate = v11->_firstCreationDate;
      v11->_firstCreationDate = v16;

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
      expirationDate = v11->_expirationDate;
      v11->_expirationDate = v18;

      v11->_source = [coderCopy decodeIntegerForKey:@"source"];
      v11->_interfaceType = [coderCopy decodeIntegerForKey:@"interfaceType"];
      v11->_photoSource = [coderCopy decodeIntegerForKey:@"photoSource"];
      v20 = MEMORY[0x277CBEB98];
      v21 = objc_opt_class();
      v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
      v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"events"];
      events = v11->_events;
      v11->_events = v23;

      v11->_filtered = [coderCopy decodeBoolForKey:@"filtered"];
      v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"promptLanguage"];
      promptLanguage = v11->_promptLanguage;
      v11->_promptLanguage = v25;

      v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
      action = v11->_action;
      v11->_action = v27;

      v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"concurrentMediaAction"];
      concurrentMediaAction = v11->_concurrentMediaAction;
      v11->_concurrentMediaAction = v29;

      v31 = MEMORY[0x277CBEB98];
      v32 = objc_opt_class();
      v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
      v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"actions"];
      actions = v11->_actions;
      v11->_actions = v34;

      v36 = MEMORY[0x277CBEB98];
      v37 = objc_opt_class();
      v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
      v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"backgroundActions"];
      backgroundActions = v11->_backgroundActions;
      v11->_backgroundActions = v39;

      v41 = MEMORY[0x277CBEB98];
      v42 = objc_opt_class();
      v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
      v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"persons"];
      persons = v11->_persons;
      v11->_persons = v44;

      v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"place"];
      place = v11->_place;
      v11->_place = v46;

      v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weather"];
      predominantWeather = v11->_predominantWeather;
      v11->_predominantWeather = v48;

      v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
      time = v11->_time;
      v11->_time = v50;

      v52 = MEMORY[0x277CBEB98];
      v53 = objc_opt_class();
      v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
      v55 = [coderCopy decodeObjectOfClasses:v54 forKey:@"resources"];
      resources = v11->_resources;
      v11->_resources = v55;

      v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rankingDictionary"];
      v58 = [MODictionaryEncoder decodeToDictionary:v57];
      rankingDictionary = v11->_rankingDictionary;
      v11->_rankingDictionary = v58;

      v60 = MEMORY[0x277CBEB98];
      v61 = objc_opt_class();
      v62 = [v60 setWithObjects:{v61, objc_opt_class(), 0}];
      v63 = [coderCopy decodeObjectOfClasses:v62 forKey:@"labels"];
      labels = v11->_labels;
      v11->_labels = v63;

      v65 = MEMORY[0x277CBEB98];
      v66 = objc_opt_class();
      v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
      v68 = [coderCopy decodeObjectOfClasses:v67 forKey:@"promptLanguages"];
      promptLanguages = v11->_promptLanguages;
      v11->_promptLanguages = v68;

      v70 = objc_alloc(MEMORY[0x277CBEB38]);
      v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metaData"];
      v72 = [MODictionaryEncoder decodeToDictionary:v71];
      v73 = [v70 initWithDictionary:v72];
      metaData = v11->_metaData;
      v11->_metaData = v73;

      v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metaDataForRank"];
      v76 = [MODictionaryEncoder decodeToDictionary:v75];
      metaDataForRank = v11->_metaDataForRank;
      v11->_metaDataForRank = v76;

      v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionID"];
      suggestionID = v11->_suggestionID;
      v11->_suggestionID = v78;

      v80 = MEMORY[0x277CBEB58];
      v81 = MEMORY[0x277CBEB98];
      v82 = objc_opt_class();
      v83 = [v81 setWithObjects:{v82, objc_opt_class(), 0}];
      v84 = [coderCopy decodeObjectOfClasses:v83 forKey:@"suggestionEngagements"];
      v85 = [v80 setWithArray:v84];
      suggestionEngagementEvents = v11->_suggestionEngagementEvents;
      v11->_suggestionEngagementEvents = v85;

      v87 = MEMORY[0x277CBEB98];
      v88 = objc_opt_class();
      v89 = [v87 setWithObjects:{v88, objc_opt_class(), 0}];
      v90 = [coderCopy decodeObjectOfClasses:v89 forKey:@"places"];
      places = v11->_places;
      v11->_places = v90;

      v11->_isAggregatedAndSuppressed = [coderCopy decodeBoolForKey:@"isAggregatedAndSuppressed"];
      v11->_summarizationGranularity = [coderCopy decodeIntegerForKey:@"summarizationGranularity"];
      v92 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subBundleIDs"];
      subBundleIDs = v11->_subBundleIDs;
      v11->_subBundleIDs = v92;

      v94 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subSuggestionIDs"];
      subSuggestionIDs = v11->_subSuggestionIDs;
      v11->_subSuggestionIDs = v94;

      v11->_suggestionEngagementViewCount = [coderCopy decodeIntegerForKey:@"suggestionViewCount"];
      v96 = MEMORY[0x277CBEB58];
      v97 = MEMORY[0x277CBEB98];
      v98 = objc_opt_class();
      v99 = [v97 setWithObjects:{v98, objc_opt_class(), 0}];
      v100 = [coderCopy decodeObjectOfClasses:v99 forKey:@"appEntryEngagements"];
      v101 = [v96 setWithArray:v100];
      appEntryEngagementEvents = v11->_appEntryEngagementEvents;
      v11->_appEntryEngagementEvents = v101;

      v103 = MEMORY[0x277CBEB98];
      v104 = objc_opt_class();
      v105 = [v103 setWithObjects:{v104, objc_opt_class(), 0}];
      v106 = [coderCopy decodeObjectOfClasses:v105 forKey:@"visitEventsRejectedByWatchLocation"];
      visitEventsRejectedByWatchLocation = v11->_visitEventsRejectedByWatchLocation;
      v11->_visitEventsRejectedByWatchLocation = v106;

      v11->_bundleSubType = [coderCopy decodeIntegerForKey:@"bundleSubType"];
      v11->_bundleSuperType = [coderCopy decodeIntegerForKey:@"bundleSuperType"];
      v108 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterMetadata"];
      clusterMetadata = v11->_clusterMetadata;
      v11->_clusterMetadata = v108;

      v110 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outlierMetadata"];
      outlierMetadata = v11->_outlierMetadata;
      v11->_outlierMetadata = v110;

      v112 = MEMORY[0x277CBEB98];
      v113 = objc_opt_class();
      v114 = [v112 setWithObjects:{v113, objc_opt_class(), 0}];
      v115 = [coderCopy decodeObjectOfClasses:v114 forKey:@"photoTraits"];
      photoTraits = v11->_photoTraits;
      v11->_photoTraits = v115;

      v11->_isSensitive = [coderCopy decodeBoolForKey:@"isSensitive"];
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_firstCreationDate forKey:@"firstCreationDate"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
  [coderCopy encodeInteger:self->_interfaceType forKey:@"interfaceType"];
  [coderCopy encodeInteger:self->_photoSource forKey:@"photoSource"];
  [coderCopy encodeObject:self->_events forKey:@"events"];
  [coderCopy encodeBool:self->_filtered forKey:@"filtered"];
  [coderCopy encodeObject:self->_promptLanguage forKey:@"promptLanguage"];
  [coderCopy encodeObject:self->_action forKey:@"action"];
  [coderCopy encodeObject:self->_concurrentMediaAction forKey:@"concurrentMediaAction"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
  [coderCopy encodeObject:self->_backgroundActions forKey:@"backgroundActions"];
  [coderCopy encodeObject:self->_persons forKey:@"persons"];
  [coderCopy encodeObject:self->_place forKey:@"place"];
  [coderCopy encodeObject:self->_predominantWeather forKey:@"weather"];
  [coderCopy encodeObject:self->_time forKey:@"time"];
  [coderCopy encodeObject:self->_resources forKey:@"resources"];
  v5 = [MODictionaryEncoder encodeDictionary:self->_rankingDictionary];
  [coderCopy encodeObject:v5 forKey:@"rankingDictionary"];

  [coderCopy encodeObject:self->_labels forKey:@"labels"];
  [coderCopy encodeObject:self->_promptLanguages forKey:@"promptLanguages"];
  v6 = [MODictionaryEncoder encodeDictionary:self->_metaData];
  [coderCopy encodeObject:v6 forKey:@"metaData"];

  v7 = [MODictionaryEncoder encodeDictionary:self->_metaDataForRank];
  [coderCopy encodeObject:v7 forKey:@"metaDataForRank"];

  [coderCopy encodeObject:self->_suggestionID forKey:@"suggestionID"];
  suggestionEngagementEvents = [(MOEventBundle *)self suggestionEngagementEvents];
  allObjects = [suggestionEngagementEvents allObjects];
  [coderCopy encodeObject:allObjects forKey:@"suggestionEngagements"];

  [coderCopy encodeObject:self->_places forKey:@"places"];
  [coderCopy encodeBool:self->_isAggregatedAndSuppressed forKey:@"isAggregatedAndSuppressed"];
  [coderCopy encodeInteger:self->_summarizationGranularity forKey:@"summarizationGranularity"];
  [coderCopy encodeObject:self->_subBundleIDs forKey:@"subBundleIDs"];
  [coderCopy encodeObject:self->_subSuggestionIDs forKey:@"subSuggestionIDs"];
  [coderCopy encodeInteger:self->_suggestionEngagementViewCount forKey:@"suggestionViewCount"];
  [coderCopy encodeObject:self->_visitEventsRejectedByWatchLocation forKey:@"visitEventsRejectedByWatchLocation"];
  appEntryEngagementEvents = [(MOEventBundle *)self appEntryEngagementEvents];
  allObjects2 = [appEntryEngagementEvents allObjects];
  [coderCopy encodeObject:allObjects2 forKey:@"appEntryEngagements"];

  [coderCopy encodeInteger:self->_bundleSubType forKey:@"bundleSubType"];
  [coderCopy encodeInteger:self->_bundleSuperType forKey:@"bundleSuperType"];
  [coderCopy encodeObject:self->_clusterMetadata forKey:@"clusterMetadata"];
  [coderCopy encodeObject:self->_outlierMetadata forKey:@"outlierMetadata"];
  [coderCopy encodeObject:self->_photoTraits forKey:@"photoTraits"];
  [coderCopy encodeBool:self->_isSensitive forKey:@"isSensitive"];
}

- (id)dateInterval
{
  startDate = [(MOEventBundle *)self startDate];
  if (startDate)
  {
  }

  else
  {
    endDate = [(MOEventBundle *)self endDate];

    if (!endDate)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_16;
    }
  }

  endDate2 = [(MOEventBundle *)self endDate];

  startDate2 = [(MOEventBundle *)self startDate];
  endDate3 = startDate2;
  if (!endDate2)
  {
    [(MOEventBundle *)self setEndDate:startDate2];
LABEL_14:

    goto LABEL_15;
  }

  if (!endDate3)
  {
    endDate3 = [(MOEventBundle *)self endDate];
    [(MOEventBundle *)self setStartDate:endDate3];
    goto LABEL_14;
  }

  startDate3 = [(MOEventBundle *)self startDate];
  endDate4 = [(MOEventBundle *)self endDate];
  v11 = [startDate3 isOnOrBefore:endDate4];

  if ((v11 & 1) == 0)
  {
    v12 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(MOEventBundle *)self dateInterval];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MOEventBundle.m" lineNumber:1586 description:{@"startDate is NOT earlier than endDate, bundle, %@ (in %s:%d)", self, "-[MOEventBundle dateInterval]", 1586}];
  }

  startDate4 = [(MOEventBundle *)self startDate];
  endDate5 = [(MOEventBundle *)self endDate];
  v16 = [startDate4 isBeforeDate:endDate5];

  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v18 = objc_alloc(MEMORY[0x277CCA970]);
  startDate5 = [(MOEventBundle *)self startDate];
  endDate6 = [(MOEventBundle *)self endDate];
  v17 = [v18 initWithStartDate:startDate5 endDate:endDate6];

LABEL_16:

  return v17;
}

- (unint64_t)hash
{
  bundleIdentifier = [(MOEventBundle *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

- (BOOL)isEqualToEventBundle:(id)bundle
{
  v115 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  if (self == bundleCopy)
  {
    goto LABEL_3;
  }

  bundleIdentifier = [(MOEventBundle *)self bundleIdentifier];
  bundleIdentifier2 = [(MOEventBundle *)bundleCopy bundleIdentifier];
  v7 = [bundleIdentifier isEqual:bundleIdentifier2];

  if (v7)
  {
    goto LABEL_3;
  }

  suggestionID = [(MOEventBundle *)self suggestionID];
  if (suggestionID)
  {
    v12 = suggestionID;
    suggestionID2 = [(MOEventBundle *)bundleCopy suggestionID];
    if (suggestionID2)
    {
      v14 = suggestionID2;
      suggestionID3 = [(MOEventBundle *)self suggestionID];
      suggestionID4 = [(MOEventBundle *)bundleCopy suggestionID];
      v17 = [suggestionID3 isEqual:suggestionID4];

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

  interfaceType = [(MOEventBundle *)self interfaceType];
  if (interfaceType != [(MOEventBundle *)bundleCopy interfaceType])
  {
LABEL_84:
    LOBYTE(v8) = 0;
    goto LABEL_4;
  }

  LOBYTE(v8) = 0;
  switch([(MOEventBundle *)bundleCopy interfaceType])
  {
    case 0uLL:
      if (![(MOEventBundle *)self isEqualPropertyForObject:self other:bundleCopy propertyPath:@"startDate" threshold:60.0])
      {
        goto LABEL_84;
      }

      v19 = @"endDate";
      v23 = 60.0;
      goto LABEL_42;
    case 1uLL:
    case 2uLL:
      if (![(MOEventBundle *)self isEqualPropertyForObject:self other:bundleCopy propertyPath:@"startDate" threshold:600.0])
      {
        goto LABEL_84;
      }

      v19 = @"endDate";
      selfCopy3 = self;
      selfCopy4 = self;
      v22 = bundleCopy;
      v23 = 600.0;
      goto LABEL_43;
    case 4uLL:
      if (![(MOEventBundle *)self isEqualBasicPropertiesForObject:self other:bundleCopy])
      {
        goto LABEL_84;
      }

      startDate = [(MOEventBundle *)self startDate];
      startDate2 = [(MOEventBundle *)bundleCopy startDate];
      v8 = [startDate isSameDayWithDate:startDate2];

      if (!v8)
      {
        goto LABEL_4;
      }

      v27 = [(MOEventBundle *)self isEqualPersonsForObject:self other:bundleCopy];
      goto LABEL_44;
    case 5uLL:
      if (![(MOEventBundle *)self isEqualBasicPropertiesForObject:self other:bundleCopy])
      {
        goto LABEL_84;
      }

      startDate3 = [(MOEventBundle *)self startDate];
      startDate4 = [(MOEventBundle *)bundleCopy startDate];
      v8 = [startDate3 isSameDayWithDate:startDate4];

      if (!v8)
      {
        goto LABEL_4;
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      resources = [(MOEventBundle *)self resources];
      v31 = [resources countByEnumeratingWithState:&v107 objects:v114 count:16];
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
              objc_enumerationMutation(resources);
            }

            v36 = *(*(&v107 + 1) + 8 * i);
            v37 = objc_autoreleasePoolPush();
            if ([v36 type] == 3)
            {
              getDictionary = [v36 getDictionary];

              v33 = getDictionary;
            }

            objc_autoreleasePoolPop(v37);
          }

          v32 = [resources countByEnumeratingWithState:&v107 objects:v114 count:16];
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
      resources2 = [(MOEventBundle *)bundleCopy resources];
      v85 = [resources2 countByEnumeratingWithState:&v103 objects:v113 count:16];
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
            objc_enumerationMutation(resources2);
          }

          v90 = *(*(&v103 + 1) + 8 * j);
          v91 = objc_autoreleasePoolPush();
          if ([v90 type] == 3)
          {
            getDictionary2 = [v90 getDictionary];

            v87 = getDictionary2;
          }

          objc_autoreleasePoolPop(v91);
        }

        v86 = [resources2 countByEnumeratingWithState:&v103 objects:v113 count:16];
      }

      while (v86);

      if (v33 && v87)
      {
        resources2 = [v33 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
        v93 = [v87 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];
        v94 = v93;
        if (resources2 && v93)
        {
          [resources2 isEqualToString:v93];
        }

        goto LABEL_106;
      }

LABEL_107:

      goto LABEL_3;
    case 6uLL:
      v19 = @"dateInterval";
      v23 = 0.8;
LABEL_42:
      selfCopy3 = self;
      selfCopy4 = self;
      v22 = bundleCopy;
LABEL_43:
      v27 = [(MOEventBundle *)selfCopy3 isEqualPropertyForObject:selfCopy4 other:v22 propertyPath:v19 threshold:v23];
      goto LABEL_44;
    case 7uLL:
      bundleSubType = [(MOEventBundle *)self bundleSubType];
      if (bundleSubType != [(MOEventBundle *)bundleCopy bundleSubType])
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    case 8uLL:
      if (![(MOEventBundle *)self isEqualPropertyForObject:self other:bundleCopy propertyPath:@"dateInterval" threshold:0.8])
      {
        goto LABEL_84;
      }

      v27 = [(MOEventBundle *)self isEqualResourcesForObject:self other:bundleCopy resourceType:8];
      goto LABEL_44;
    case 10uLL:
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      resources3 = [(MOEventBundle *)self resources];
      v48 = [resources3 countByEnumeratingWithState:&v99 objects:v112 count:16];
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
              objc_enumerationMutation(resources3);
            }

            v53 = *(*(&v99 + 1) + 8 * k);
            v54 = objc_autoreleasePoolPush();
            if ([v53 type] == 15)
            {
              getDictionary3 = [v53 getDictionary];

              v50 = getDictionary3;
            }

            objc_autoreleasePoolPop(v54);
          }

          v49 = [resources3 countByEnumeratingWithState:&v99 objects:v112 count:16];
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
      resources4 = [(MOEventBundle *)bundleCopy resources];
      v57 = [resources4 countByEnumeratingWithState:&v95 objects:v111 count:16];
      if (!v57)
      {

        v59 = 0;
LABEL_76:
        LOBYTE(v8) = [(MOEventBundle *)self isEqualBaseActionForObject:self other:bundleCopy];

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
            objc_enumerationMutation(resources4);
          }

          v62 = *(*(&v95 + 1) + 8 * m);
          v63 = objc_autoreleasePoolPush();
          if ([v62 type] == 15)
          {
            getDictionary4 = [v62 getDictionary];

            v59 = getDictionary4;
          }

          objc_autoreleasePoolPop(v63);
        }

        v58 = [resources4 countByEnumeratingWithState:&v95 objects:v111 count:16];
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
      v83 = [objc_opt_class() castEvergreenSubType:{-[MOEventBundle bundleSubType](bundleCopy, "bundleSubType")}];
      LOBYTE(v8) = v83 == [objc_opt_class() castEvergreenSubType:{-[MOEventBundle bundleSubType](self, "bundleSubType")}];
LABEL_4:

      v9 = *MEMORY[0x277D85DE8];
      return v8;
    case 11uLL:
      goto LABEL_88;
    case 12uLL:
      summarizationGranularity = [(MOEventBundle *)self summarizationGranularity];
      if (summarizationGranularity != [(MOEventBundle *)bundleCopy summarizationGranularity])
      {
        goto LABEL_84;
      }

      if ([(MOEventBundle *)self isEqualPropertyForObject:self other:bundleCopy propertyPath:@"startDate" threshold:600.0])
      {
        goto LABEL_3;
      }

      subBundleIDs = [(MOEventBundle *)self subBundleIDs];
      v26 = [subBundleIDs count];

      if (v26)
      {
        if ([(MOEventBundle *)self intersectedSubBundleIDForObject:self other:bundleCopy])
        {
          goto LABEL_3;
        }
      }

      v27 = [(MOEventBundle *)self intersectedActivityOrVisitForObject:self other:bundleCopy];
LABEL_44:
      LOBYTE(v8) = v27;
      goto LABEL_4;
    case 13uLL:
      place = [(MOEventBundle *)self place];
      if (!place)
      {
        goto LABEL_84;
      }

      v40 = place;
      place2 = [(MOEventBundle *)bundleCopy place];

      if (!place2)
      {
        goto LABEL_84;
      }

      place3 = [(MOEventBundle *)self place];
      placeType = [place3 placeType];
      if (placeType > 0x64 || (-[MOEventBundle place](bundleCopy, "place"), place2 = objc_claimAutoreleasedReturnValue(), [place2 placeType] > 0x64))
      {
        place4 = [(MOEventBundle *)self place];
        placeType2 = [place4 placeType];
        place5 = [(MOEventBundle *)bundleCopy place];
        placeType3 = [place5 placeType];

        if (placeType <= 0x64)
        {
        }

        if (placeType2 != placeType3)
        {
          goto LABEL_84;
        }
      }

      else
      {
      }

      v72 = objc_alloc(MEMORY[0x277CCA970]);
      startDate5 = [(MOEventBundle *)self startDate];
      endDate = [(MOEventBundle *)self endDate];
      v75 = [v72 initWithStartDate:startDate5 endDate:endDate];

      v76 = objc_alloc(MEMORY[0x277CCA970]);
      startDate6 = [(MOEventBundle *)bundleCopy startDate];
      endDate2 = [(MOEventBundle *)bundleCopy endDate];
      v79 = [v76 initWithStartDate:startDate6 endDate:endDate2];

      LOBYTE(startDate6) = [v75 intersectsDateInterval:v79];
      if (startDate6)
      {
        goto LABEL_3;
      }

LABEL_81:
      if ([(MOEventBundle *)self bundleSubType]== 801 && [(MOEventBundle *)bundleCopy bundleSubType]== 801)
      {
LABEL_83:
        startDate7 = [(MOEventBundle *)self startDate];
        startDate8 = [(MOEventBundle *)bundleCopy startDate];
        LOBYTE(v8) = [startDate7 isSameDayWithDate:startDate8];
      }

      else
      {
        startDate7 = [(MOEventBundle *)self startDate];
        startDate9 = [(MOEventBundle *)bundleCopy startDate];
        LOBYTE(v8) = startDate7 == startDate9;
      }

      goto LABEL_4;
    case 14uLL:
      goto LABEL_81;
    default:
      goto LABEL_4;
  }
}

+ (unint64_t)castEvergreenSubType:(unint64_t)type
{
  result = type;
  if (type - 707 <= 2)
  {
    return qword_22D931F28[type - 707];
  }

  return result;
}

- (BOOL)intersectedSubBundleIDForObject:(id)object other:(id)other
{
  v30 = *MEMORY[0x277D85DE8];
  otherCopy = other;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  subBundleIDs = [object subBundleIDs];
  v7 = [subBundleIDs countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(subBundleIDs);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        subBundleIDs2 = [otherCopy subBundleIDs];
        v13 = [subBundleIDs2 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(subBundleIDs2);
              }

              if ([v11 isEqualToString:*(*(&v20 + 1) + 8 * j)])
              {

                v17 = 1;
                goto LABEL_19;
              }
            }

            v14 = [subBundleIDs2 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [subBundleIDs countByEnumeratingWithState:&v24 objects:v29 count:16];
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

- (BOOL)intersectedActivityOrVisitForObject:(id)object other:(id)other
{
  v38 = *MEMORY[0x277D85DE8];
  otherCopy = other;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  events = [object events];
  v8 = [events countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v26 = events;
    v27 = otherCopy;
    v24 = *v33;
    do
    {
      v11 = 0;
      v25 = v9;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(events);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        if ([v12 category] == 1 || objc_msgSend(v12, "category") == 2)
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          events2 = [otherCopy events];
          v14 = [events2 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
                  objc_enumerationMutation(events2);
                }

                v18 = *(*(&v28 + 1) + 8 * i);
                if ([v18 category] == 1 || objc_msgSend(v18, "category") == 2)
                {
                  if ((v19 = [v12 category], v19 == objc_msgSend(v18, "category")) && objc_msgSend(v12, "category") == 1 && -[MOEventBundle isEqualPropertyForObject:other:propertyPath:threshold:](self, "isEqualPropertyForObject:other:propertyPath:threshold:", v12, v18, @"startDate", 600.0) || (v20 = objc_msgSend(v12, "category"), v20 == objc_msgSend(v18, "category")) && objc_msgSend(v12, "category") == 2 && -[MOEventBundle isEqualPropertyForObject:other:propertyPath:threshold:](self, "isEqualPropertyForObject:other:propertyPath:threshold:", v12, v18, @"startDate", 600.0))
                  {

                    v21 = 1;
                    events = v26;
                    otherCopy = v27;
                    goto LABEL_29;
                  }
                }
              }

              v15 = [events2 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          events = v26;
          otherCopy = v27;
          v10 = v24;
          v9 = v25;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [events countByEnumeratingWithState:&v32 objects:v37 count:16];
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

- (BOOL)isEqualBasicPropertiesForObject:(id)object other:(id)other
{
  objectCopy = object;
  otherCopy = other;
  bundleSuperType = [objectCopy bundleSuperType];
  if (bundleSuperType == [otherCopy bundleSuperType] && (v8 = objc_msgSend(objectCopy, "bundleSubType"), v8 == objc_msgSend(otherCopy, "bundleSubType")) && (v9 = objc_msgSend(objectCopy, "interfaceType"), v9 == objc_msgSend(otherCopy, "interfaceType")))
  {
    summarizationGranularity = [objectCopy summarizationGranularity];
    v11 = summarizationGranularity == [otherCopy summarizationGranularity];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualPropertyForObject:(id)object other:(id)other propertyPath:(id)path threshold:(double)threshold
{
  objectCopy = object;
  otherCopy = other;
  pathCopy = path;
  v12 = [objectCopy valueForKeyPath:pathCopy];
  v13 = [otherCopy valueForKeyPath:pathCopy];

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
      v14 = v16 < threshold;
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

        v25 = [objectCopy isEqual:otherCopy];
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
      v14 = v21 / v24 > threshold;
    }
  }

LABEL_22:

  return v14;
}

- (BOOL)isEqualResourcesForObject:(id)object other:(id)other resourceType:(unint64_t)type
{
  v47 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  otherCopy = other;
  v36 = objc_opt_new();
  v35 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = objectCopy;
  resources = [objectCopy resources];
  v9 = [resources countByEnumeratingWithState:&v41 objects:v46 count:16];
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
          objc_enumerationMutation(resources);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        if ([v13 type] == type)
        {
          v14 = objc_alloc(MEMORY[0x277CCACA8]);
          name = [v13 name];
          assets = [v13 assets];
          [v13 value];
          v18 = [v14 initWithFormat:@"%@, %@, %f", name, assets, v17];

          if (v18)
          {
            [v36 addObject:v18];
          }
        }
      }

      v10 = [resources countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v10);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  resources2 = [otherCopy resources];
  v20 = [resources2 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
          objc_enumerationMutation(resources2);
        }

        v24 = *(*(&v37 + 1) + 8 * j);
        if ([v24 type] == type)
        {
          v25 = objc_alloc(MEMORY[0x277CCACA8]);
          name2 = [v24 name];
          assets2 = [v24 assets];
          [v24 value];
          v29 = [v25 initWithFormat:@"%@, %@, %f", name2, assets2, v28];

          if (v29)
          {
            [v35 addObject:v29];
          }
        }
      }

      v21 = [resources2 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v21);
  }

  v30 = [v36 isEqualToSet:v35];
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)isEqualPersonsForObject:(id)object other:(id)other
{
  v38 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  otherCopy = other;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  persons = [objectCopy persons];
  v10 = [persons countByEnumeratingWithState:&v32 objects:v37 count:16];
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
          objc_enumerationMutation(persons);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        contactIdentifier = [v14 contactIdentifier];

        if (contactIdentifier)
        {
          contactIdentifier2 = [v14 contactIdentifier];
          [v7 addObject:contactIdentifier2];
        }
      }

      v11 = [persons countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  persons2 = [otherCopy persons];
  v18 = [persons2 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
          objc_enumerationMutation(persons2);
        }

        v22 = *(*(&v28 + 1) + 8 * j);
        contactIdentifier3 = [v22 contactIdentifier];

        if (contactIdentifier3)
        {
          contactIdentifier4 = [v22 contactIdentifier];
          [v8 addObject:contactIdentifier4];
        }
      }

      v19 = [persons2 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  v25 = [v7 isEqualToSet:v8];
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)isEqualBaseActionForObject:(id)object other:(id)other
{
  otherCopy = other;
  action = [object action];
  action2 = [otherCopy action];

  if (action | action2)
  {
    v8 = 0;
    if (action2)
    {
      v10 = 0;
    }

    else
    {
      v10 = action != 0;
    }

    if (action2)
    {
      v11 = action == 0;
    }

    else
    {
      v11 = 0;
    }

    if (!v11 && !v10)
    {
      actionType = [action actionType];
      if (actionType == [action2 actionType])
      {
        actionName = [action actionName];
        actionName2 = [action2 actionName];
        v8 = [actionName isEqualToString:actionName2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        bundleIdentifier = [(MOEventBundle *)self bundleIdentifier];
        if (bundleIdentifier || ([(MOEventBundle *)v7 bundleIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          bundleIdentifier2 = [(MOEventBundle *)self bundleIdentifier];
          bundleIdentifier3 = [(MOEventBundle *)v7 bundleIdentifier];
          v11 = [bundleIdentifier2 isEqual:bundleIdentifier3];

          if (bundleIdentifier)
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

- (BOOL)containTheSameEventSet:(id)set
{
  v19[1] = *MEMORY[0x277D85DE8];
  setCopy = set;
  if (setCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = setCopy;
    events = [(MOEventBundle *)self events];
    v7 = [events mutableCopy];

    events2 = [v5 events];

    v9 = [events2 mutableCopy];
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

- (BOOL)shareEvents:(id)events
{
  v51 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if (eventsCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v32 = eventsCopy;
    v5 = eventsCopy;
    v6 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v31 = v5;
    events = [v5 events];
    v8 = [events countByEnumeratingWithState:&v44 objects:v50 count:16];
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
            objc_enumerationMutation(events);
          }

          v12 = *(*(&v44 + 1) + 8 * i);
          eventIdentifier = [v12 eventIdentifier];

          if (eventIdentifier)
          {
            eventIdentifier2 = [v12 eventIdentifier];
            [v6 addObject:eventIdentifier2];
          }
        }

        v9 = [events countByEnumeratingWithState:&v44 objects:v50 count:16];
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
                eventIdentifier3 = [v18 eventIdentifier];
                v27 = [v25 compare:eventIdentifier3];

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

    eventsCopy = v32;
    v28 = v34;
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28 & 1;
}

- (id)getCustomLabelsForMetaData:(id)data templateFilePath:(id)path
{
  pathCopy = path;
  dataCopy = data;
  if (pathCopy)
  {
    v8 = [[MOEventBundleLabelFormatter alloc] initWithTemplatePath:pathCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = [(MOEventBundle *)self getCustomLabelsForMetaData:dataCopy labelFormatter:v8];

  return v10;
}

- (id)getCustomLabelsForMetaData:(id)data labelFormatter:(id)formatter
{
  dataCopy = data;
  formatterCopy = formatter;
  if (dataCopy)
  {
    getBundleType = [(MOEventBundle *)self getBundleType];
    v9 = [formatterCopy formattedBundleLabelsForMetaData:dataCopy bundleType:getBundleType];
  }

  else
  {
    getBundleType = [(MOEventBundle *)self metaData];
    getBundleType2 = [(MOEventBundle *)self getBundleType];
    v9 = [formatterCopy formattedBundleLabelsForMetaData:getBundleType bundleType:getBundleType2];

    formatterCopy = getBundleType2;
  }

  return v9;
}

- (id)getCustomPromptsForMetaData:(id)data templateFilePath:(id)path
{
  pathCopy = path;
  dataCopy = data;
  if (pathCopy)
  {
    v8 = [[MOEventBundleLabelFormatter alloc] initWithTemplatePath:pathCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = [(MOEventBundle *)self getCustomPromptsForMetaData:dataCopy labelFormatter:v8];

  return v10;
}

- (id)getCustomPromptsForMetaData:(id)data labelFormatter:(id)formatter
{
  dataCopy = data;
  formatterCopy = formatter;
  if (dataCopy)
  {
    getBundleType = [(MOEventBundle *)self getBundleType];
    v9 = [formatterCopy formattedBundlePromptsForMetaData:dataCopy bundleType:getBundleType];
  }

  else
  {
    getBundleType = [(MOEventBundle *)self metaData];
    getBundleType2 = [(MOEventBundle *)self getBundleType];
    v9 = [formatterCopy formattedBundlePromptsForMetaData:getBundleType bundleType:getBundleType2];

    formatterCopy = getBundleType2;
  }

  return v9;
}

- (BOOL)hasSuggestionEngagementEvent:(id)event
{
  eventCopy = event;
  suggestionEngagementEvents = [(MOEventBundle *)self suggestionEngagementEvents];
  v6 = [suggestionEngagementEvents containsObject:eventCopy];

  return v6;
}

- (void)setSuggestionEngagementEvent:(id)event
{
  eventCopy = event;
  suggestionEngagementEvents = [(MOEventBundle *)self suggestionEngagementEvents];

  if (!suggestionEngagementEvents)
  {
    v5 = objc_opt_new();
    [(MOEventBundle *)self setSuggestionEngagementEvents:v5];
  }

  v6 = eventCopy;
  if (eventCopy)
  {
    suggestionEngagementEvents2 = [(MOEventBundle *)self suggestionEngagementEvents];
    [suggestionEngagementEvents2 addObject:eventCopy];

    v6 = eventCopy;
  }
}

- (void)clearSuggestionEngagementEvent:(id)event
{
  eventCopy = event;
  suggestionEngagementEvents = [(MOEventBundle *)self suggestionEngagementEvents];
  [suggestionEngagementEvents removeObject:eventCopy];
}

- (BOOL)hasAppEntryEngagementEvent:(id)event
{
  eventCopy = event;
  appEntryEngagementEvents = [(MOEventBundle *)self appEntryEngagementEvents];
  v6 = [appEntryEngagementEvents containsObject:eventCopy];

  return v6;
}

- (void)setAppEntryEngagementEvent:(id)event
{
  eventCopy = event;
  appEntryEngagementEvents = [(MOEventBundle *)self appEntryEngagementEvents];

  if (!appEntryEngagementEvents)
  {
    v5 = objc_opt_new();
    [(MOEventBundle *)self setAppEntryEngagementEvents:v5];
  }

  v6 = eventCopy;
  if (eventCopy)
  {
    appEntryEngagementEvents2 = [(MOEventBundle *)self appEntryEngagementEvents];
    [appEntryEngagementEvents2 addObject:eventCopy];

    v6 = eventCopy;
  }
}

- (void)clearAppEntryEngagementEvent:(id)event
{
  eventCopy = event;
  appEntryEngagementEvents = [(MOEventBundle *)self appEntryEngagementEvents];
  [appEntryEngagementEvents removeObject:eventCopy];
}

- (double)duration
{
  endDate = [(MOEventBundle *)self endDate];
  startDate = [(MOEventBundle *)self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = v5;

  return v6;
}

+ (unint64_t)convertNSNumberToSensitiveLocationType:(id)type
{
  result = [type integerValue];
  if (result - 1 >= 5)
  {
    return 0;
  }

  return result;
}

+ (unint64_t)convertNSNumberToUninterestingLocationType:(id)type
{
  result = [type integerValue];
  if (result - 1 >= 5)
  {
    return 0;
  }

  return result;
}

+ (unint64_t)convertNSNumberToContactType:(id)type
{
  result = [type integerValue];
  if (result - 1 >= 4)
  {
    return 0;
  }

  return result;
}

+ (unint64_t)convertNSNumberToRoadType:(id)type
{
  result = [type integerValue];
  if (result - 1 >= 4)
  {
    return 0;
  }

  return result;
}

- (id)primarySourceTypes
{
  v32[1] = *MEMORY[0x277D85DE8];
  interfaceType = [(MOEventBundle *)self interfaceType];
  allObjects = MEMORY[0x277CBEBF8];
  switch(interfaceType)
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
      bundleSubType = [(MOEventBundle *)self bundleSubType];
      switch(bundleSubType)
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
      bundleSubType2 = [(MOEventBundle *)self bundleSubType];
      if (bundleSubType2 <= 204)
      {
        if ((bundleSubType2 - 101) >= 5)
        {
          if ((bundleSubType2 - 201) >= 4)
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

      if ((bundleSubType2 - 401) <= 4 && ((1 << (bundleSubType2 + 111)) & 0x19) != 0)
      {
        v17 = MOEventBundleSourceTypeMedia;
        v5 = MEMORY[0x277CBEA60];
        v6 = &v17;
LABEL_30:
        v10 = 1;
        goto LABEL_31;
      }

      if ((bundleSubType2 - 205) >= 2)
      {
        if (bundleSubType2 != 302)
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
      allObjects = [v5 arrayWithObjects:v6 count:v10];
LABEL_32:
      v12 = *MEMORY[0x277D85DE8];

      return allObjects;
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
      selfCopy = self;
      v9 = v8;
      [(MOEventBundle *)self withResourcesUsingBlock:v14];
      allObjects = [v9 allObjects];

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
  selfCopy = self;
  v5 = 2080;
  v6 = "[MOEventBundle dateInterval]";
  v7 = 1024;
  v8 = 1586;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "startDate is NOT earlier than endDate, bundle, %@ (in %s:%d)", &v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

@end