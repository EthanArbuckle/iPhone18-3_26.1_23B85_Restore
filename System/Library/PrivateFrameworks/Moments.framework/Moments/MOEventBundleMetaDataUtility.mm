@interface MOEventBundleMetaDataUtility
+ (id)activityPhotoTraitLabelMetadataForThematicSummary:(id)summary AtHome:(BOOL)home;
+ (id)andStringFromArray:(id)array propertyPath:(id)path maxCount:(unint64_t)count;
+ (id)buildActivityMetaDataForEventBundle:(id)bundle;
+ (id)buildClusteringMetaDataForEventBundle:(id)bundle;
+ (id)buildEvergreenMetaDataForEventBundle:(id)bundle;
+ (id)buildMediaPlayMetaDataForEventBundle:(id)bundle;
+ (id)buildMetaDataForEventBundle:(id)bundle;
+ (id)buildOutingMetaDataForEventBundle:(id)bundle;
+ (id)buildPhotoMemoryMetaDataForEventBundle:(id)bundle;
+ (id)buildSharedContentMetaDataForEventBundle:(id)bundle;
+ (id)buildSignificantContactMetaDataForEventBundle:(id)bundle;
+ (id)buildStateOfMindMetaDataForEventBundle:(id)bundle;
+ (id)buildThematicSummaryMetaDataForEventBundle:(id)bundle;
+ (id)buildTimeAtHomeMetaDataForEventBundle:(id)bundle;
+ (id)buildTimeContextMetaDataForEventBundle:(id)bundle;
+ (id)buildTimeContextTransitMetaDataForEventBundle:(id)bundle;
+ (id)buildTrendMetaDataForEventBundle:(id)bundle;
+ (id)buildTripMetaDataForEventBundle:(id)bundle;
+ (id)combinedPlaceTypeLabelMetadataForThematicSummary:(id)summary;
+ (id)mediaKeywordWithType:(unint64_t)type;
+ (id)placeTypePhotoTraitLabelMetadataForThematicSummary:(id)summary;
+ (void)appendDefaultMetaData:(id)data;
+ (void)defineClassCollections;
+ (void)setActivityNameForThematicSummaryFromActionName:(id)name metaData:(id)data keyword:(id)keyword keywordType:(id)type;
+ (void)setActivityNameFromActionName:(id)name metaData:(id)data keyword:(id)keyword keywordType:(id)type;
+ (void)setMetaDataForAction:(id)action metaData:(id)data;
+ (void)setMetaDataForActions:(id)actions metaData:(id)data;
+ (void)setMetaDataForActivityAction:(id)action metaData:(id)data;
+ (void)setMetaDataForActivityConcurrentMediaAction:(id)action metaData:(id)data;
+ (void)setMetaDataForActivityPlace:(id)place metaData:(id)data;
+ (void)setMetaDataForBirthday:(id)birthday metaData:(id)data eventBundle:(id)bundle;
+ (void)setMetaDataForDiningAction:(id)action metaData:(id)data startDate:(id)date endDate:(id)endDate;
+ (void)setMetaDataForHoliday:(id)holiday metaData:(id)data eventBundle:(id)bundle;
+ (void)setMetaDataForInvite:(id)invite metaData:(id)data;
+ (void)setMetaDataForMediaAction:(id)action metaData:(id)data;
+ (void)setMetaDataForPersons:(id)persons suggestionId:(id)id metaData:(id)data sortBycomparePersons:(BOOL)bycomparePersons;
+ (void)setMetaDataForPhotos:(id)photos metaData:(id)data;
+ (void)setMetaDataForPlace:(id)place metaData:(id)data;
+ (void)setMetaDataForPlaces:(id)places metaData:(id)data;
+ (void)setMetaDataForTime:(id)time startDate:(id)date endDate:(id)endDate metaData:(id)data;
+ (void)setMetaDataWithKeyword:(id)keyword extendedKeyword:(id)extendedKeyword value:(id)value metaData:(id)data;
@end

@implementation MOEventBundleMetaDataUtility

+ (void)defineClassCollections
{
  if (defineClassCollections_onceToken != -1)
  {
    +[MOEventBundleMetaDataUtility defineClassCollections];
  }
}

void __54__MOEventBundleMetaDataUtility_defineClassCollections__block_invoke()
{
  v0 = noSavoringPromptLabels;
  noSavoringPromptLabels = &unk_2841005E8;

  v1 = noReappraisalPromptLabels;
  noReappraisalPromptLabels = &unk_284100600;
}

+ (id)buildMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = 0;
  switch([bundleCopy interfaceType])
  {
    case 1:
      v5 = [MOEventBundleMetaDataUtility buildActivityMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 2:
      v5 = [MOEventBundleMetaDataUtility buildOutingMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 4:
      v5 = [MOEventBundleMetaDataUtility buildSignificantContactMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 5:
      v5 = [MOEventBundleMetaDataUtility buildMediaPlayMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 6:
      v5 = [MOEventBundleMetaDataUtility buildSharedContentMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 7:
      v5 = [MOEventBundleMetaDataUtility buildTimeAtHomeMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 9:
      v5 = [MOEventBundleMetaDataUtility buildTrendMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 10:
      v5 = [MOEventBundleMetaDataUtility buildPhotoMemoryMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 11:
      v5 = [MOEventBundleMetaDataUtility buildEvergreenMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 12:
      if ([bundleCopy bundleSubType] == 205 || objc_msgSend(bundleCopy, "bundleSubType") == 206)
      {
        v5 = [MOEventBundleMetaDataUtility buildTimeContextTransitMetaDataForEventBundle:bundleCopy];
      }

      else
      {
        v5 = [MOEventBundleMetaDataUtility buildTimeContextMetaDataForEventBundle:bundleCopy];
      }

      goto LABEL_18;
    case 13:
      v5 = [MOEventBundleMetaDataUtility buildTripMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 14:
      v5 = [MOEventBundleMetaDataUtility buildStateOfMindMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 15:
      v5 = [MOEventBundleMetaDataUtility buildClusteringMetaDataForEventBundle:bundleCopy];
      goto LABEL_18;
    case 16:
      v5 = [MOEventBundleMetaDataUtility buildThematicSummaryMetaDataForEventBundle:bundleCopy];
LABEL_18:
      v4 = v5;
      if (v5)
      {
        [MOEventBundleMetaDataUtility appendDefaultMetaData:v5];
      }

      break;
    default:
      break;
  }

  return v4;
}

+ (void)appendDefaultMetaData:(id)data
{
  dataCopy = data;
  v3 = +[MOEventBundleLabelLocalizer preferredLocalization];
  if (v3)
  {
    [dataCopy setObject:v3 forKeyedSubscript:@"language"];
  }
}

+ (id)buildActivityMetaDataForEventBundle:(id)bundle
{
  v36 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v4 = objc_opt_new();
  action = [bundleCopy action];

  if (action)
  {
    action2 = [bundleCopy action];
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:action2 metaData:v4];
  }

  concurrentMediaAction = [bundleCopy concurrentMediaAction];

  if (concurrentMediaAction)
  {
    concurrentMediaAction2 = [bundleCopy concurrentMediaAction];
    [MOEventBundleMetaDataUtility setMetaDataForActivityConcurrentMediaAction:concurrentMediaAction2 metaData:v4];
  }

  places = [bundleCopy places];
  if (places)
  {
    v10 = places;
    if ([bundleCopy bundleSubType] == 204 || objc_msgSend(bundleCopy, "bundleSubType") == 207)
    {

LABEL_9:
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      places2 = [bundleCopy places];
      v12 = [places2 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v32;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(places2);
            }

            v16 = *(*(&v31 + 1) + 8 * i);
            placeName = [v16 placeName];

            if (placeName)
            {
              [MOEventBundleMetaDataUtility setMetaDataForActivityPlace:v16 metaData:v4];
            }
          }

          v13 = [places2 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v13);
      }

      goto LABEL_22;
    }

    bundleSubType = [bundleCopy bundleSubType];

    if (bundleSubType == 208)
    {
      goto LABEL_9;
    }
  }

  place = [bundleCopy place];

  if (place)
  {
    place2 = [bundleCopy place];
    [MOEventBundleMetaDataUtility setMetaDataForActivityPlace:place2 metaData:v4];
  }

LABEL_22:
  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    startDate = [bundleCopy startDate];
    endDate = [bundleCopy endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:time2 startDate:startDate endDate:endDate metaData:v4];
  }

  persons = [bundleCopy persons];

  if (persons)
  {
    persons2 = [bundleCopy persons];
    suggestionID = [bundleCopy suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:persons2 suggestionId:suggestionID metaData:v4];
  }

  photoTraits = [bundleCopy photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForHoliday:photoTraits metaData:v4 eventBundle:bundleCopy];

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildOutingMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  actions = [bundleCopy actions];
  if (actions)
  {
    actions2 = [bundleCopy actions];
    v7 = [actions2 count];

    if (v7)
    {
      v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu", @"actionType", 2];
      actions3 = [bundleCopy actions];
      v10 = [actions3 filteredArrayUsingPredicate:v8];

      if ([v10 count])
      {
        firstObject = [v10 firstObject];
        actions = [firstObject actionName];
      }

      else
      {
        actions = 0;
      }
    }

    else
    {
      actions = 0;
    }
  }

  action = [bundleCopy action];
  if (action)
  {
    v13 = action;
    action2 = [bundleCopy action];
    if ([action2 actionType] == 9)
    {
    }

    else
    {
      action3 = [bundleCopy action];
      actionType = [action3 actionType];

      if (actionType != 10)
      {
        goto LABEL_13;
      }
    }

    action4 = [bundleCopy action];
    actionName = [action4 actionName];

    actions = actionName;
  }

LABEL_13:
  if (actions)
  {
    v19 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actions];
    [v4 setObject:v19 forKeyedSubscript:@"action"];

    v20 = [objc_opt_class() keywordFromString:actions];
    [v4 setObject:v20 forKeyedSubscript:@"action_type"];
  }

  action5 = [bundleCopy action];
  if (action5)
  {
    v22 = action5;
    action6 = [bundleCopy action];
    actionType2 = [action6 actionType];

    if (actionType2 == 11)
    {
      [v4 setObject:@"flight" forKeyedSubscript:@"flight"];
    }
  }

  if ([bundleCopy isSensitive])
  {
    [v4 setObject:@"sensitive" forKeyedSubscript:@"sensitive"];
  }

  action7 = [bundleCopy action];
  startDate = [bundleCopy startDate];
  endDate = [bundleCopy endDate];
  [MOEventBundleMetaDataUtility setMetaDataForDiningAction:action7 metaData:v4 startDate:startDate endDate:endDate];

  place = [bundleCopy place];
  [MOEventBundleMetaDataUtility setMetaDataForPlace:place metaData:v4];

  persons = [bundleCopy persons];
  suggestionID = [bundleCopy suggestionID];
  [MOEventBundleMetaDataUtility setMetaDataForPersons:persons suggestionId:suggestionID metaData:v4];

  time = [bundleCopy time];
  startDate2 = [bundleCopy startDate];
  endDate2 = [bundleCopy endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:time startDate:startDate2 endDate:endDate2 metaData:v4];

  photoTraits = [bundleCopy photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForHoliday:photoTraits metaData:v4 eventBundle:bundleCopy];

  photoTraits2 = [bundleCopy photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForBirthday:photoTraits2 metaData:v4 eventBundle:bundleCopy];

  [MOEventBundleMetaDataUtility setMetaDataForInvite:bundleCopy metaData:v4];

  return v4;
}

+ (id)buildSharedContentMetaDataForEventBundle:(id)bundle
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  bundleCopy = bundle;
  v5 = [v3 alloc];
  v12 = @"default_label";
  action = [bundleCopy action];

  actionName = [action actionName];
  v13[0] = actionName;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 initWithDictionary:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)buildTimeAtHomeMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  action = [bundleCopy action];
  actionName = [action actionName];
  [v4 setObject:actionName forKeyedSubscript:@"default_label"];

  action2 = [bundleCopy action];
  actionName2 = [action2 actionName];
  v9 = [actionName2 isEqualToString:@"Hosting at Home"];

  if (v9)
  {
    v10 = &unk_284100A20;
  }

  else
  {
    v10 = &unk_284100A38;
  }

  [v4 setObject:v10 forKeyedSubscript:@"home_activity"];
  persons = [bundleCopy persons];

  if (persons)
  {
    persons2 = [bundleCopy persons];
    suggestionID = [bundleCopy suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:persons2 suggestionId:suggestionID metaData:v4];
  }

  resources = [bundleCopy resources];
  [MOEventBundleMetaDataUtility setMetaDataForPhotos:resources metaData:v4];

  time = [bundleCopy time];
  startDate = [bundleCopy startDate];
  endDate = [bundleCopy endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:time startDate:startDate endDate:endDate metaData:v4];

  photoTraits = [bundleCopy photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForHoliday:photoTraits metaData:v4 eventBundle:bundleCopy];

  photoTraits2 = [bundleCopy photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForBirthday:photoTraits2 metaData:v4 eventBundle:bundleCopy];

  [MOEventBundleMetaDataUtility setMetaDataForInvite:bundleCopy metaData:v4];

  return v4;
}

+ (id)buildSignificantContactMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  action = [bundleCopy action];
  if (action)
  {
    v5 = action;
    persons = [bundleCopy persons];
    if (persons)
    {
      v7 = persons;
      summarizationGranularity = [bundleCopy summarizationGranularity];

      if (summarizationGranularity != 2)
      {
        v9 = objc_opt_new();
        action2 = [bundleCopy action];
        persons2 = [bundleCopy persons];
        firstObject = [persons2 firstObject];
        name = [firstObject name];

        actionName = [action2 actionName];
        endDate2 = actionName;
        if (name)
        {
          v16 = [actionName stringByAppendingString:name];

          endDate2 = v16;
        }

        [v9 setObject:endDate2 forKeyedSubscript:@"default_label"];
        actionName2 = [action2 actionName];
        v18 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName2];
        [v9 setObject:v18 forKeyedSubscript:@"header"];

        [v9 setObject:name forKeyedSubscript:@"title"];
        actionName3 = [action2 actionName];
        v20 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName3];
        [v9 setObject:v20 forKeyedSubscript:@"action"];

        v21 = objc_opt_class();
        actionName4 = [action2 actionName];
        v23 = [v21 keywordFromString:actionName4];
        [v9 setObject:v23 forKeyedSubscript:@"action_type"];

        persons3 = [bundleCopy persons];
        suggestionID = [bundleCopy suggestionID];
        [MOEventBundleMetaDataUtility setMetaDataForPersons:persons3 suggestionId:suggestionID metaData:v9];

        time = [bundleCopy time];
        startDate = [bundleCopy startDate];
        endDate = [bundleCopy endDate];
        [MOEventBundleMetaDataUtility setMetaDataForTime:time startDate:startDate endDate:endDate metaData:v9];

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if ([bundleCopy summarizationGranularity] != 2 || (objc_msgSend(bundleCopy, "isAggregatedAndSuppressed") & 1) != 0)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v9 = objc_opt_new();
  [v9 setObject:@"contact_summary" forKeyedSubscript:@"summary_type"];
  persons4 = [bundleCopy persons];
  suggestionID2 = [bundleCopy suggestionID];
  [MOEventBundleMetaDataUtility setMetaDataForPersons:persons4 suggestionId:suggestionID2 metaData:v9];

  action2 = [bundleCopy time];
  name = [bundleCopy startDate];
  endDate2 = [bundleCopy endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:action2 startDate:name endDate:endDate2 metaData:v9];
LABEL_12:

LABEL_13:

  return v9;
}

+ (id)buildMediaPlayMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  action = [bundleCopy action];
  if (!action)
  {
    goto LABEL_19;
  }

  v5 = action;
  resources = [bundleCopy resources];
  if (!resources)
  {

    goto LABEL_19;
  }

  v7 = resources;
  summarizationGranularity = [bundleCopy summarizationGranularity];

  if (summarizationGranularity == 2)
  {
LABEL_19:
    if ([bundleCopy summarizationGranularity] != 2 || (objc_msgSend(bundleCopy, "isAggregatedAndSuppressed") & 1) != 0)
    {
      v9 = 0;
      goto LABEL_35;
    }

    v41 = objc_autoreleasePoolPush();
    v9 = objc_opt_new();
    resources2 = [bundleCopy resources];
    firstObject = [resources2 firstObject];

    [v9 setObject:@"media_summary" forKeyedSubscript:@"summary_type"];
    v54 = MEMORY[0x277CCABB0];
    resources3 = [bundleCopy resources];
    v56 = [v54 numberWithUnsignedInteger:{objc_msgSend(resources3, "count")}];
    [v9 setObject:v56 forKeyedSubscript:@"media_event_count"];

    resources4 = [bundleCopy resources];
    firstObject2 = [resources4 firstObject];
    getDictionary = [firstObject2 getDictionary];
    firstObject4 = [getDictionary objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

    if (([firstObject4 isEqual:MOMediaPlayMetaDataKeyPlayerMediaTypeSongAlbum] & 1) != 0 || (objc_msgSend(firstObject4, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist) & 1) != 0 || objc_msgSend(firstObject4, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum))
    {
      v60 = MEMORY[0x277CCABB0];
      events = [bundleCopy events];
      v62 = [v60 numberWithUnsignedInteger:{objc_msgSend(events, "count")}];
      [v9 setObject:v62 forKeyedSubscript:@"media_event_count"];
    }

    resources5 = [bundleCopy resources];
    firstObject3 = [resources5 firstObject];
    getDictionary2 = [firstObject3 getDictionary];
    v66 = [getDictionary2 objectForKeyedSubscript:@"media_type"];
    [v9 setObject:v66 forKeyedSubscript:@"media_type"];

    action2 = [bundleCopy action];
    actionName = [action2 actionName];
    if (([actionName isEqualToString:@"songs_on_repeat"] & 1) == 0)
    {
      action3 = [bundleCopy action];
      actionName2 = [action3 actionName];
      if (([actionName2 isEqualToString:@"song_on_repeat"] & 1) == 0)
      {
        action4 = [bundleCopy action];
        [action4 actionName];
        v88 = firstObject4;
        v81 = v80 = v41;
        v86 = [v81 isEqualToString:@"media_on_repeat"];

        v41 = v80;
        firstObject4 = v88;

        if ((v86 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

LABEL_30:
    action5 = [bundleCopy action];
    actionName3 = [action5 actionName];
    [v9 setObject:actionName3 forKeyedSubscript:@"media_on_repeat"];

LABEL_31:
    action6 = [bundleCopy action];
    actionName4 = [action6 actionName];
    v75 = [actionName4 isEqualToString:@"media_on_repeat_third_party"];

    if (v75)
    {
      action7 = [bundleCopy action];
      actionName5 = [action7 actionName];
      [v9 setObject:actionName5 forKeyedSubscript:@"media_on_repeat_third_party"];
    }

    getDictionary3 = [firstObject getDictionary];
    v17 = [getDictionary3 objectForKeyedSubscript:@"third_party_dominate_value"];
    [v9 setObject:v17 forKeyedSubscript:@"third_party_dominate_value"];
    goto LABEL_34;
  }

  v84 = objc_autoreleasePoolPush();
  v9 = objc_opt_new();
  firstObject = [bundleCopy action];
  resources6 = [bundleCopy resources];
  firstObject4 = [resources6 firstObject];

  getDictionary4 = [firstObject4 getDictionary];
  v87 = [getDictionary4 objectForKeyedSubscript:@"media_album"];

  v14 = MEMORY[0x277CCACA8];
  actionName6 = [firstObject actionName];
  name = [firstObject4 name];
  v17 = [v14 stringWithFormat:@"%@: %@", actionName6, name];

  [v9 setObject:v17 forKeyedSubscript:@"default_label"];
  actionName7 = [firstObject actionName];
  v19 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName7];
  [v9 setObject:v19 forKeyedSubscript:@"header"];

  v20 = MEMORY[0x277CCACA8];
  name2 = [firstObject4 name];
  v22 = [v20 stringWithFormat:@"%@", name2];
  [v9 setObject:v22 forKeyedSubscript:@"title"];

  v23 = MEMORY[0x277CCABB0];
  resources7 = [bundleCopy resources];
  v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(resources7, "count")}];
  [v9 setObject:v25 forKeyedSubscript:@"media_event_count"];

  getDictionary5 = [firstObject4 getDictionary];
  v27 = [getDictionary5 objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

  v85 = v27;
  if (([v27 isEqual:MOMediaPlayMetaDataKeyPlayerMediaTypeSongAlbum] & 1) != 0 || (objc_msgSend(v27, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist) & 1) != 0 || objc_msgSend(v27, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum))
  {
    v28 = MEMORY[0x277CCABB0];
    events2 = [bundleCopy events];
    v30 = [v28 numberWithUnsignedInteger:{objc_msgSend(events2, "count")}];
    [v9 setObject:v30 forKeyedSubscript:@"media_event_count"];
  }

  getDictionary6 = [firstObject4 getDictionary];
  v32 = [getDictionary6 objectForKeyedSubscript:@"media_type"];
  [v9 setObject:v32 forKeyedSubscript:@"media_type"];

  [v9 setObject:v87 forKeyedSubscript:@"media_album"];
  time = [bundleCopy time];
  startDate = [bundleCopy startDate];
  endDate = [bundleCopy endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:time startDate:startDate endDate:endDate metaData:v9];

  actionName8 = [firstObject actionName];
  if (([actionName8 isEqualToString:@"songs_on_repeat"] & 1) == 0)
  {
    actionName9 = [firstObject actionName];
    if (![actionName9 isEqualToString:@"song_on_repeat"])
    {
      actionName10 = [firstObject actionName];
      v83 = [actionName10 isEqualToString:@"media_on_repeat"];

      if ((v83 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

LABEL_12:
  actionName11 = [firstObject actionName];
  [v9 setObject:actionName11 forKeyedSubscript:@"media_on_repeat"];

LABEL_13:
  actionName12 = [firstObject actionName];
  v40 = [actionName12 isEqualToString:@"media_on_repeat_third_party"];

  v41 = v84;
  if (v40)
  {
    actionName13 = [firstObject actionName];
    [v9 setObject:actionName13 forKeyedSubscript:@"media_on_repeat_third_party"];
  }

  actionName14 = [firstObject actionName];
  v44 = [actionName14 isEqualToString:@"played_media_sessions"];

  if (v44)
  {
    actionName15 = [firstObject actionName];
    [v9 setObject:actionName15 forKeyedSubscript:@"played_media_sessions"];
  }

  actionName16 = [firstObject actionName];
  [v9 setObject:actionName16 forKeyedSubscript:@"action"];

  v47 = objc_opt_class();
  actionName17 = [firstObject actionName];
  v49 = [v47 keywordFromString:actionName17];
  [v9 setObject:v49 forKeyedSubscript:@"action_type"];

  getDictionary7 = [firstObject4 getDictionary];
  v51 = [getDictionary7 objectForKeyedSubscript:@"third_party_dominate_value"];
  [v9 setObject:v51 forKeyedSubscript:@"third_party_dominate_value"];

  getDictionary3 = v87;
LABEL_34:

  objc_autoreleasePoolPop(v41);
LABEL_35:

  return v9;
}

+ (id)buildPhotoMemoryMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  action = [bundleCopy action];
  if (action)
  {
    resources = [bundleCopy resources];

    if (resources)
    {
      action = objc_opt_new();
      action2 = [bundleCopy action];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"Memories from Photos"];
      actionName = [action2 actionName];
      v9 = [actionName length];

      if (v9 >= 2)
      {
        [action setObject:v7 forKeyedSubscript:@"default_label"];
        actionName2 = [action2 actionName];
        [action setObject:actionName2 forKeyedSubscript:@"title"];
      }
    }

    else
    {
      action = 0;
    }
  }

  return action;
}

+ (id)buildTrendMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  events = [bundleCopy events];
  firstObject = [events firstObject];
  category = [firstObject category];

  if (category == 10)
  {
    action = [bundleCopy action];
    persons = [bundleCopy persons];
    firstObject2 = [persons firstObject];
    name = [firstObject2 name];

    actionName = [action actionName];
    v13 = [actionName stringByAppendingString:name];

    [v4 setObject:v13 forKeyedSubscript:@"default_label"];
    actionName2 = [action actionName];
    v15 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName2];
    [v4 setObject:v15 forKeyedSubscript:@"header"];

    [v4 setObject:name forKeyedSubscript:@"title"];
    actionName3 = [action actionName];
    v17 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName3];
    [v4 setObject:v17 forKeyedSubscript:@"action"];

    v18 = objc_opt_class();
    actionName4 = [action actionName];
    v20 = [v18 keywordFromString:actionName4];
    [v4 setObject:v20 forKeyedSubscript:@"action_type"];

    persons2 = [bundleCopy persons];
    suggestionID = [bundleCopy suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:persons2 suggestionId:suggestionID metaData:v4];
  }

  return v4;
}

+ (id)buildEvergreenMetaDataForEventBundle:(id)bundle
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  resources = [bundle resources];
  v4 = [resources countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(resources);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        if ([v8 type] == 9)
        {
          v27 = resources;
          v9 = objc_opt_new();
          v10 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:@"EVERGREEN_LABEL"];
          [v9 setObject:v10 forKeyedSubscript:@"default_label"];

          v11 = MEMORY[0x277CCACA8];
          name = [v8 name];
          v13 = [v11 stringWithFormat:@"%@_%@", @"evergreen_type", name];

          name2 = [v8 name];
          v28 = v9;
          [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"evergreen_type" extendedKeyword:v13 value:name2 metaData:v9];

          v15 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [MOEventBundleMetaDataUtility buildEvergreenMetaDataForEventBundle:v8];
          }

          promptCount = [v8 promptCount];
          if (promptCount)
          {
            for (j = 0; j != promptCount; ++j)
            {
              promptIndexes = [v8 promptIndexes];
              v19 = [promptIndexes objectAtIndex:j];

              if (v19)
              {
                v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"evergreen_slot_", j];
                [v28 setObject:v19 forKeyedSubscript:v20];
                v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", @"evergreen_index", objc_msgSend(v19, "intValue")];
                stringValue = [v19 stringValue];
                [MOEventBundleMetaDataUtility setMetaDataWithKeyword:v20 extendedKeyword:v21 value:stringValue metaData:v28];
              }
            }
          }

          [v28 setObject:&unk_284100A50 forKeyedSubscript:@"shuffle_mode"];
          v23 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [MOEventBundleMetaDataUtility buildEvergreenMetaDataForEventBundle:v8];
          }

          v24 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [MOEventBundleMetaDataUtility buildEvergreenMetaDataForEventBundle:v8];
          }

          resources = v27;
          goto LABEL_22;
        }
      }

      v5 = [resources countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v28 = 0;
LABEL_22:

  v25 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)buildTimeContextMetaDataForEventBundle:(id)bundle
{
  v32 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v4 = objc_opt_new();
  action = [bundleCopy action];
  actionType = [action actionType];

  action2 = [bundleCopy action];
  if (actionType == 4)
  {
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:action2 metaData:v4];
  }

  else
  {
    [MOEventBundleMetaDataUtility setMetaDataForAction:action2 metaData:v4];
  }

  actions = [bundleCopy actions];

  if (actions)
  {
    actions2 = [bundleCopy actions];
    [MOEventBundleMetaDataUtility setMetaDataForActions:actions2 metaData:v4];
  }

  place = [bundleCopy place];

  if (place)
  {
    place2 = [bundleCopy place];
    [MOEventBundleMetaDataUtility setMetaDataForPlace:place2 metaData:v4];
  }

  places = [bundleCopy places];

  if (places)
  {
    places2 = [bundleCopy places];
    [MOEventBundleMetaDataUtility setMetaDataForPlaces:places2 metaData:v4];
  }

  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    startDate = [bundleCopy startDate];
    endDate = [bundleCopy endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:time2 startDate:startDate endDate:endDate metaData:v4];
  }

  persons = [bundleCopy persons];

  if (persons)
  {
    persons2 = [bundleCopy persons];
    suggestionID = [bundleCopy suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:persons2 suggestionId:suggestionID metaData:v4];
  }

  action3 = [bundleCopy action];
  if ([action3 actionType] != 4)
  {
    goto LABEL_17;
  }

  concurrentMediaAction = [bundleCopy concurrentMediaAction];

  if (concurrentMediaAction)
  {
    action3 = [bundleCopy concurrentMediaAction];
    [MOEventBundleMetaDataUtility setMetaDataForActivityConcurrentMediaAction:action3 metaData:v4];
LABEL_17:
  }

  if ([bundleCopy bundleSubType] == 202 && objc_msgSend(bundleCopy, "summarizationGranularity") == 2 && (objc_msgSend(bundleCopy, "isAggregatedAndSuppressed") & 1) == 0)
  {
    [v4 setObject:@"workout_summary" forKeyedSubscript:@"summary_type"];
  }

  v23 = _mo_log_facility_get_os_log(MOLogFacilitySummarization);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    startDate2 = [bundleCopy startDate];
    allKeys = [v4 allKeys];
    v28 = 138412546;
    v29 = startDate2;
    v30 = 2112;
    v31 = allKeys;
    _os_log_impl(&dword_22D8C5000, v23, OS_LOG_TYPE_INFO, "build meta for time context bundle, bundle startDate, %@, metaData, %@", &v28, 0x16u);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildTimeContextTransitMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  action = [bundleCopy action];

  if (action)
  {
    action2 = [bundleCopy action];
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:action2 metaData:v4];
  }

  places = [bundleCopy places];

  if (places)
  {
    places2 = [bundleCopy places];
    [MOEventBundleMetaDataUtility setMetaDataForPlaces:places2 metaData:v4];
  }

  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    startDate = [bundleCopy startDate];
    endDate = [bundleCopy endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:time2 startDate:startDate endDate:endDate metaData:v4];
  }

  [v4 setObject:@"transit_summary" forKeyedSubscript:@"summary_type"];
  places3 = [bundleCopy places];
  firstObject = [places3 firstObject];

  if (([firstObject placeType] == 2 || objc_msgSend(firstObject, "placeType") == 3) && objc_msgSend(firstObject, "placeType") != 4 && objc_msgSend(firstObject, "placeType") != 5 && objc_msgSend(firstObject, "proposition") != 4)
  {
    [v4 setObject:@"YES" forKeyedSubscript:@"destination_format"];
  }

  return v4;
}

+ (id)buildTripMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  action = [bundleCopy action];
  actionType = [action actionType];

  if (actionType == 2)
  {
    action2 = [bundleCopy action];
    [MOEventBundleMetaDataUtility setMetaDataForAction:action2 metaData:v4];
  }

  if ([bundleCopy isSensitive])
  {
    [v4 setObject:@"sensitive" forKeyedSubscript:@"sensitive"];
  }

  place = [bundleCopy place];

  if (place)
  {
    place2 = [bundleCopy place];
    [MOEventBundleMetaDataUtility setMetaDataForPlace:place2 metaData:v4];

    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"placeType", &unk_284100618];
    places = [bundleCopy places];
    v12 = [places filteredArrayUsingPredicate:v10];

    place3 = [bundleCopy place];
    [place3 placeNameConfidence];
    v15 = v14;

    if ([v12 count] >= 2)
    {
      v16 = kMOLabelFormatterMetaKeywordSingleDominantPlace;
      if (v15 < 0.8)
      {
        v17 = [v12 objectAtIndexedSubscript:0];
        [v17 placeNameConfidence];
        v19 = v18;
        v20 = [v12 objectAtIndexedSubscript:1];
        [v20 placeNameConfidence];
        v22 = v19 + v21;

        v16 = kMOLabelFormatterMetaKeywordDoubleDominantPlaces;
        if (v22 < 0.8)
        {
          [v4 setObject:@"YES" forKeyedSubscript:@"many_places"];
          if (v15 >= 0.4)
          {
            v16 = kMOLabelFormatterMetaKeywordSingleDominantPlace;
          }
        }
      }

      [v4 setObject:@"YES" forKeyedSubscript:*v16];
      [MOEventBundleMetaDataUtility setMetaDataForPlaces:v12 metaData:v4];
    }
  }

  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    startDate = [bundleCopy startDate];
    endDate = [bundleCopy endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:time2 startDate:startDate endDate:endDate metaData:v4];
  }

  persons = [bundleCopy persons];

  if (persons)
  {
    persons2 = [bundleCopy persons];
    suggestionID = [bundleCopy suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:persons2 suggestionId:suggestionID metaData:v4];
  }

  return v4;
}

+ (id)buildClusteringMetaDataForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  getSubTypeString = [bundleCopy getSubTypeString];
  [v4 setObject:getSubTypeString forKeyedSubscript:@"cluster_subtype"];

  action = [bundleCopy action];
  actionType = [action actionType];

  action2 = [bundleCopy action];
  if (actionType == 4)
  {
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:action2 metaData:v4];
  }

  else
  {
    [MOEventBundleMetaDataUtility setMetaDataForAction:action2 metaData:v4];
  }

  place = [bundleCopy place];

  if (place)
  {
    place2 = [bundleCopy place];
    [MOEventBundleMetaDataUtility setMetaDataForPlace:place2 metaData:v4];
  }

  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    startDate = [bundleCopy startDate];
    endDate = [bundleCopy endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:time2 startDate:startDate endDate:endDate metaData:v4];
  }

  return v4;
}

+ (id)buildThematicSummaryMetaDataForEventBundle:(id)bundle
{
  v276 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v6 = objc_opt_new();
  getSubTypeString = [bundleCopy getSubTypeString];
  [v6 setObject:getSubTypeString forKeyedSubscript:@"thematic_summary_subtype"];

  subBundleIDs = [bundleCopy subBundleIDs];
  v253 = bundleCopy;
  if ([subBundleIDs count] < 3)
  {
    goto LABEL_10;
  }

  clusterMetadata = [bundleCopy clusterMetadata];
  phenotype = [clusterMetadata phenotype];
  v11 = [phenotype objectForKeyedSubscript:@"timeTag"];
  if (!v11)
  {
    clusterMetadata2 = [bundleCopy clusterMetadata];
    phenotype2 = [clusterMetadata2 phenotype];
    v4 = [phenotype2 objectForKeyedSubscript:@"timeString"];
    if (!v4)
    {
      v14 = 0;
LABEL_7:

      goto LABEL_8;
    }
  }

  clusterMetadata3 = [bundleCopy clusterMetadata];
  weekOfYearHistogram = [clusterMetadata3 weekOfYearHistogram];
  v14 = [weekOfYearHistogram count] > 2;

  bundleCopy = v253;
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_8:

  if (!v14)
  {
    goto LABEL_11;
  }

  subBundleIDs = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v6 setObject:subBundleIDs forKeyedSubscript:@"is_routine"];
LABEL_10:

LABEL_11:
  clusterMetadata4 = [bundleCopy clusterMetadata];
  phenotype3 = [clusterMetadata4 phenotype];
  v17 = [phenotype3 objectForKeyedSubscript:@"holiday"];
  if (v17)
  {
    v18 = v17;
    clusterMetadata5 = [bundleCopy clusterMetadata];
    phenotype4 = [clusterMetadata5 phenotype];
    v21 = [phenotype4 objectForKeyedSubscript:@"holiday"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    bundleCopy = v253;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }

    clusterMetadata4 = [v253 clusterMetadata];
    phenotype3 = [clusterMetadata4 phenotype];
    v23 = [phenotype3 objectForKeyedSubscript:@"holiday"];
    [v6 setObject:v23 forKeyedSubscript:@"holiday_name"];
  }

LABEL_15:
  clusterMetadata6 = [bundleCopy clusterMetadata];
  phenotype5 = [clusterMetadata6 phenotype];
  v26 = [phenotype5 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
  v27 = 0x277CCA000uLL;
  objc_opt_class();
  v28 = objc_opt_isKindOfClass();

  if (v28)
  {
    clusterMetadata7 = [bundleCopy clusterMetadata];
    phenotype6 = [clusterMetadata7 phenotype];
    v31 = [phenotype6 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
    [v6 setObject:v31 forKeyedSubscript:@"photo_trait_subject"];
  }

  clusterMetadata8 = [bundleCopy clusterMetadata];
  phenotype7 = [clusterMetadata8 phenotype];
  v34 = [phenotype7 objectForKeyedSubscript:@"withFamily"];

  if (v34)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"with_family"];
  }

  clusterMetadata9 = [bundleCopy clusterMetadata];
  phenotype8 = [clusterMetadata9 phenotype];
  v37 = [phenotype8 objectForKeyedSubscript:@"withFriend"];

  if (v37)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"with_friends"];
  }

  clusterMetadata10 = [bundleCopy clusterMetadata];
  phenotype9 = [clusterMetadata10 phenotype];
  v40 = [phenotype9 objectForKeyedSubscript:@"withMyPet"];

  if (v40)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"with_pets"];
  }

  clusterMetadata11 = [bundleCopy clusterMetadata];
  phenotypePersonUUIDs = [clusterMetadata11 phenotypePersonUUIDs];
  v43 = [phenotypePersonUUIDs count];

  v248 = v6;
  if (v43)
  {
    clusterMetadata12 = [bundleCopy clusterMetadata];
    phenotype10 = [clusterMetadata12 phenotype];
    v46 = [phenotype10 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

    if (v46)
    {
      v47 = objc_opt_new();
      clusterMetadata13 = [bundleCopy clusterMetadata];
      contactNamesHistogram = [clusterMetadata13 contactNamesHistogram];
      v50 = [contactNamesHistogram keysSortedByValueUsingComparator:&__block_literal_global_600];

      v266 = 0u;
      v267 = 0u;
      v264 = 0u;
      v265 = 0u;
      obj = v50;
      v255 = [obj countByEnumeratingWithState:&v264 objects:v275 count:16];
      if (v255)
      {
        v251 = *v265;
        do
        {
          for (i = 0; i != v255; ++i)
          {
            if (*v265 != v251)
            {
              objc_enumerationMutation(obj);
            }

            v52 = *(*(&v264 + 1) + 8 * i);
            v260 = 0u;
            v261 = 0u;
            v262 = 0u;
            v263 = 0u;
            persons = [bundleCopy persons];
            v54 = [persons countByEnumeratingWithState:&v260 objects:v274 count:16];
            if (v54)
            {
              v55 = v54;
              v56 = *v261;
              do
              {
                for (j = 0; j != v55; ++j)
                {
                  if (*v261 != v56)
                  {
                    objc_enumerationMutation(persons);
                  }

                  v58 = *(*(&v260 + 1) + 8 * j);
                  name = [v58 name];
                  v60 = [name isEqualToString:v52];

                  if (v60)
                  {
                    [v47 addObject:v58];
                  }
                }

                v55 = [persons countByEnumeratingWithState:&v260 objects:v274 count:16];
              }

              while (v55);
            }

            bundleCopy = v253;
          }

          v255 = [obj countByEnumeratingWithState:&v264 objects:v275 count:16];
        }

        while (v255);
      }

      v61 = v47;
      suggestionID = [bundleCopy suggestionID];
      v6 = v248;
      [MOEventBundleMetaDataUtility setMetaDataForPersons:v61 suggestionId:suggestionID metaData:v248 sortBycomparePersons:0];

      v27 = 0x277CCA000;
    }

    else
    {
      v63 = MEMORY[0x277CCAC30];
      clusterMetadata14 = [bundleCopy clusterMetadata];
      phenotypePersonUUIDs2 = [clusterMetadata14 phenotypePersonUUIDs];
      v66 = [v63 predicateWithFormat:@"contactIdentifier IN %@", phenotypePersonUUIDs2];

      persons2 = [bundleCopy persons];
      v61 = [persons2 filteredArrayUsingPredicate:v66];

      suggestionID2 = [bundleCopy suggestionID];
      [MOEventBundleMetaDataUtility setMetaDataForPersons:v61 suggestionId:suggestionID2 metaData:v6 sortBycomparePersons:1];
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"with_contact"];
  }

  clusterMetadata15 = [bundleCopy clusterMetadata];
  phenotype11 = [clusterMetadata15 phenotype];
  v71 = [phenotype11 objectForKeyedSubscript:@"placeName"];

  clusterMetadata16 = [bundleCopy clusterMetadata];
  phenotype12 = [clusterMetadata16 phenotype];
  v74 = [phenotype12 objectForKeyedSubscript:@"combinedPlaceType"];

  clusterMetadata17 = [bundleCopy clusterMetadata];
  phenotype13 = [clusterMetadata17 phenotype];
  v77 = [phenotype13 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];

  clusterMetadata18 = [bundleCopy clusterMetadata];
  phenotype14 = [clusterMetadata18 phenotype];
  v252 = [phenotype14 objectForKeyedSubscript:@"enclosingAreaName"];

  if ([v71 length])
  {
    v80 = v71;
    v81 = kMOLabelFormatterMetaKeywordPlaceName;
    goto LABEL_51;
  }

  if ([v74 length])
  {
    v80 = [objc_opt_class() combinedPlaceTypeLabelMetadataForThematicSummary:v74];
    v82 = v74;
    v74 = v80;
LABEL_50:

    v81 = kMOLabelFormatterMetaKeywordPlaceName;
    goto LABEL_51;
  }

  if ([v77 length])
  {
    v80 = [objc_opt_class() placeTypePhotoTraitLabelMetadataForThematicSummary:v77];
    v82 = v77;
    v77 = v80;
    goto LABEL_50;
  }

  v80 = v252;
  if (![v252 length])
  {
    goto LABEL_52;
  }

  v81 = kMOLabelFormatterMetaKeywordEnclosingArea;
LABEL_51:
  v83 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v80];
  v84 = *v81;
  v6 = v248;
  [v248 setObject:v83 forKeyedSubscript:v84];

LABEL_52:
  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:?];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"not_home"];
  if ([v71 length])
  {
    lowercaseString = [v71 lowercaseString];
    v86 = [lowercaseString isEqualToString:@"home"];

    if (v86)
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"at_home"];
      [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"not_home"];
    }
  }

  if ([v74 length])
  {
    lowercaseString2 = [v74 lowercaseString];
    v88 = [lowercaseString2 isEqualToString:@"home"];

    if (v88)
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"at_home"];
      v89 = MEMORY[0x277CBEC28];
      v90 = v6;
      v91 = @"not_home";
LABEL_66:
      [v90 setObject:v89 forKeyedSubscript:v91];
      goto LABEL_67;
    }

    if ([v74 isEqualToString:@"restaurants"])
    {
      v92 = kMOLabelFormatterMetaKeywordAtRestaurant;
LABEL_65:
      v91 = *v92;
      v89 = MEMORY[0x277CBEC38];
      v90 = v6;
      goto LABEL_66;
    }

    if ([v74 isEqualToString:@"stores"])
    {
      v92 = kMOLabelFormatterMetaKeywordAtStore;
      goto LABEL_65;
    }

    if (([v74 isEqualToString:@"parks"] & 1) != 0 || objc_msgSend(v74, "isEqualToString:", @"national parks"))
    {
      v92 = kMOLabelFormatterMetaKeywordAtPark;
      goto LABEL_65;
    }
  }

LABEL_67:
  v93 = [v6 objectForKeyedSubscript:@"place"];
  obja = v71;
  if (v93 || ([v6 objectForKeyedSubscript:@"enclosing_area"], (v93 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    places2 = v93;
LABEL_70:

    goto LABEL_71;
  }

  places = [bundleCopy places];
  v118 = [places count];

  if (v118 >= 2)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"multiple_places"];
    v119 = [v6 objectForKeyedSubscript:@"place"];

    if (!v119)
    {
      places2 = [bundleCopy places];
      firstObject = [places2 firstObject];
      placeName = [firstObject placeName];
      [v6 setObject:placeName forKeyedSubscript:@"place"];

      goto LABEL_70;
    }
  }

LABEL_71:
  v247 = v74;
  clusterMetadata19 = [bundleCopy clusterMetadata];
  phenotype15 = [clusterMetadata19 phenotype];
  v97 = [phenotype15 objectForKeyedSubscript:@"secondLevelActivityType"];

  clusterMetadata20 = [bundleCopy clusterMetadata];
  phenotype16 = [clusterMetadata20 phenotype];
  v100 = phenotype16;
  v246 = v77;
  if (v97)
  {
    v101 = [phenotype16 objectForKeyedSubscript:@"secondLevelActivityType"];

    v102 = v253;
    if ([v101 isEqualToString:@"eating out"])
    {
      v103 = [v6 objectForKeyedSubscript:@"at_home"];

      if (v103)
      {
        lowercaseString3 = [@"dining" lowercaseString];
        v105 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString3];
        [v6 setObject:v105 forKeyedSubscript:@"action"];

        v106 = objc_opt_class();
        lowercaseString4 = [@"dining" lowercaseString];
        v108 = [v106 keywordFromString:lowercaseString4];
        [v6 setObject:v108 forKeyedSubscript:@"action_type"];

        v109 = @"prompt_type";
        v110 = v6;
        v111 = @"dining";
      }

      else
      {
        lowercaseString5 = [@"eating out" lowercaseString];
        v123 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString5];
        [v6 setObject:v123 forKeyedSubscript:@"action"];

        v124 = objc_opt_class();
        lowercaseString6 = [@"eating out" lowercaseString];
        v126 = [v124 keywordFromString:lowercaseString6];
        [v6 setObject:v126 forKeyedSubscript:@"action_type"];

        [v6 setObject:@"dining" forKeyedSubscript:@"prompt_type"];
        v111 = MEMORY[0x277CBEC38];
        v109 = @"is_outing";
        v110 = v6;
      }

      [v110 setObject:v111 forKeyedSubscript:v109];
    }

    if ([v101 isEqualToString:@"shopping"])
    {
      lowercaseString7 = [@"shopping" lowercaseString];
      v128 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString7];
      [v6 setObject:v128 forKeyedSubscript:@"action"];

      v129 = objc_opt_class();
      lowercaseString8 = [@"shopping" lowercaseString];
      v131 = [v129 keywordFromString:lowercaseString8];
      [v6 setObject:v131 forKeyedSubscript:@"action_type"];

      v132 = v6;
      v133 = @"shopping";
LABEL_91:
      [v132 setObject:v133 forKeyedSubscript:@"prompt_type"];
      v134 = MEMORY[0x277CBEC38];
      v135 = @"is_outing";
LABEL_95:
      [v6 setObject:v134 forKeyedSubscript:v135];
      goto LABEL_96;
    }

    if ([v101 isEqualToString:@"visit"])
    {
      v133 = @"visit";
      v132 = v6;
      goto LABEL_91;
    }

    action = [v253 action];
    actionType = [action actionType];

    if (actionType != 4)
    {
      action2 = [v253 action];
      actionName = [action2 actionName];
      if ([actionName isEqualToString:@"Time at Home"])
      {
      }

      else
      {
        action3 = [v253 action];
        actionName2 = [action3 actionName];
        v232 = [actionName2 isEqualToString:@"visit"];

        if ((v232 & 1) == 0)
        {
          action4 = [v253 action];
          actionName3 = [action4 actionName];
          lowercaseString9 = [actionName3 lowercaseString];
          v236 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString9];
          [v6 setObject:v236 forKeyedSubscript:@"action"];

          v237 = objc_opt_class();
          action5 = [v253 action];
          actionName4 = [action5 actionName];
          lowercaseString10 = [actionName4 lowercaseString];
          v241 = [v237 keywordFromString:lowercaseString10];
          [v6 setObject:v241 forKeyedSubscript:@"action_type"];
        }
      }

      v27 = 0x277CCA000;
      goto LABEL_96;
    }

    action6 = [v253 action];
    actionName5 = [action6 actionName];
    [MOEventBundleMetaDataUtility setActivityNameForThematicSummaryFromActionName:actionName5 metaData:v6 keyword:@"action" keywordType:@"action_type"];

LABEL_94:
    [v6 setObject:@"workouts" forKeyedSubscript:@"diversity_key"];
    v135 = @"prompt_type";
    v134 = @"workout";
    goto LABEL_95;
  }

  v112 = [phenotype16 objectForKeyedSubscript:@"topLevelActivityType"];

  v102 = v253;
  if (!v112)
  {
    goto LABEL_97;
  }

  clusterMetadata21 = [v253 clusterMetadata];
  phenotype17 = [clusterMetadata21 phenotype];
  v101 = [phenotype17 objectForKeyedSubscript:@"topLevelActivityType"];

  if ([v101 isEqualToString:@"contact"])
  {
    v115 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:@"contact"];
    [v6 setObject:v115 forKeyedSubscript:@"action"];

    v116 = [objc_opt_class() keywordFromString:@"contact"];
    [v6 setObject:v116 forKeyedSubscript:@"action_type"];
  }

  if ([v101 isEqualToString:@"outing"])
  {
    [v6 setObject:@"visit" forKeyedSubscript:@"prompt_type"];
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"is_outing"];
  }

  if ([v101 isEqualToString:@"activity"])
  {
    goto LABEL_94;
  }

LABEL_96:

LABEL_97:
  clusterMetadata22 = [v102 clusterMetadata];
  phenotype18 = [clusterMetadata22 phenotype];
  v142 = [phenotype18 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
  v143 = *(v27 + 3240);
  objc_opt_class();
  v144 = objc_opt_isKindOfClass();

  if (v144)
  {
    clusterMetadata23 = [v102 clusterMetadata];
    phenotype19 = [clusterMetadata23 phenotype];
    v147 = [phenotype19 objectForKeyedSubscript:@"topLevelActivityType"];

    v148 = [v6 objectForKeyedSubscript:@"at_home"];
    bOOLValue = [v148 BOOLValue];

    v150 = [objc_opt_class() activityPhotoTraitLabelMetadataForThematicSummary:v147 AtHome:bOOLValue];

    if ([v150 length])
    {
      lowercaseString11 = [v150 lowercaseString];
      v152 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString11];
      [v6 setObject:v152 forKeyedSubscript:@"action"];

      v153 = objc_opt_class();
      lowercaseString12 = [v150 lowercaseString];
      v155 = [v153 keywordFromString:lowercaseString12];
      [v6 setObject:v155 forKeyedSubscript:@"action_type"];
    }
  }

  v156 = [v6 objectForKeyedSubscript:@"diversity_key"];
  if (v156)
  {
    v157 = v156;
    v158 = [v6 objectForKeyedSubscript:@"diversity_key"];

    v6 = v248;
    if (v158 == @"workouts")
    {
      v258 = 0u;
      v259 = 0u;
      v256 = 0u;
      v257 = 0u;
      actions = [v102 actions];
      v198 = [actions countByEnumeratingWithState:&v256 objects:v273 count:16];
      if (v198)
      {
        v199 = v198;
        v200 = 0;
        v201 = *v257;
        do
        {
          for (k = 0; k != v199; ++k)
          {
            if (*v257 != v201)
            {
              objc_enumerationMutation(actions);
            }

            if ([*(*(&v256 + 1) + 8 * k) actionType] == 4)
            {
              ++v200;
            }
          }

          v199 = [actions countByEnumeratingWithState:&v256 objects:v273 count:16];
        }

        while (v199);

        v6 = v248;
        if (v200 >= 2)
        {
          [v248 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"multiple_workouts"];
        }
      }

      else
      {
      }
    }
  }

  startDate = [v102 startDate];
  if (startDate)
  {
    v160 = startDate;
    endDate = [v102 endDate];

    if (endDate)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      startDate2 = [v102 startDate];
      endDate2 = [v102 endDate];
      v165 = [currentCalendar isDate:startDate2 inSameDayAsDate:endDate2];

      if (v165)
      {
        [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"day_summary"];
      }

      v102 = v253;
    }
  }

  clusterMetadata24 = [v102 clusterMetadata];
  phenotype20 = [clusterMetadata24 phenotype];
  v168 = [phenotype20 objectForKeyedSubscript:@"timeTag"];
  v169 = v102;
  if (v168)
  {
    v170 = v168;
    clusterMetadata25 = [v102 clusterMetadata];
    phenotype21 = [clusterMetadata25 phenotype];
    v173 = [phenotype21 objectForKeyedSubscript:@"timeString"];

    if (v173)
    {
      clusterMetadata26 = [v169 clusterMetadata];
      phenotype22 = [clusterMetadata26 phenotype];
      v176 = [phenotype22 objectForKeyedSubscript:@"timeString"];

      clusterMetadata27 = [v169 clusterMetadata];
      phenotype23 = [clusterMetadata27 phenotype];
      v179 = [phenotype23 objectForKeyedSubscript:@"timeTag"];

      v180 = [MOTime timeStringSingularToPluralForm:v179];
      v181 = MEMORY[0x277CCACA8];
      capitalizedString = [v179 capitalizedString];
      v182 = [v181 stringWithFormat:@"%@ %@", v176, capitalizedString];

      v184 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v182];
      [v6 setObject:v184 forKeyedSubscript:@"time"];

      if (v180)
      {
        v185 = MEMORY[0x277CCACA8];
        capitalizedString2 = [v180 capitalizedString];
        v186 = [v185 stringWithFormat:@"%@ %@", v176, capitalizedString2];

        v188 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v186];
        [v6 setObject:v188 forKeyedSubscript:@"times"];
      }

      v189 = obja;
      goto LABEL_131;
    }
  }

  else
  {
  }

  clusterMetadata28 = [v169 clusterMetadata];
  phenotype24 = [clusterMetadata28 phenotype];
  v192 = [phenotype24 objectForKeyedSubscript:@"timeTag"];

  clusterMetadata29 = [v169 clusterMetadata];
  phenotype25 = [clusterMetadata29 phenotype];
  v195 = phenotype25;
  if (v192)
  {
    v176 = [phenotype25 objectForKeyedSubscript:@"timeTag"];

    v179 = [MOTime timeStringSingularToPluralForm:v176];
    v196 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v176];
    [v6 setObject:v196 forKeyedSubscript:@"time"];

    v189 = obja;
    if (!v179)
    {
      v169 = v253;
      goto LABEL_132;
    }

    v180 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v179];
    [v6 setObject:v180 forKeyedSubscript:@"times"];
    v169 = v253;
    goto LABEL_131;
  }

  v203 = [phenotype25 objectForKeyedSubscript:@"timeString"];

  v169 = v253;
  v189 = obja;
  if (!v203)
  {
    goto LABEL_133;
  }

  clusterMetadata30 = [v253 clusterMetadata];
  phenotype26 = [clusterMetadata30 phenotype];
  v176 = [phenotype26 objectForKeyedSubscript:@"timeString"];

  v179 = [MOTime timeStringSingularToPluralForm:v176];
  v206 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v176];
  [v6 setObject:v206 forKeyedSubscript:@"time"];

  if (v179)
  {
    v180 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v179];
    [v6 setObject:v180 forKeyedSubscript:@"times"];
LABEL_131:
  }

LABEL_132:

LABEL_133:
  if ([v169 bundleSubType] == 1001)
  {
    v272[0] = @"reflection";
    v272[1] = @"moments";
    v272[2] = @"highlights";
    v207 = [MEMORY[0x277CBEA60] arrayWithObjects:v272 count:3];
    v208 = [v207 objectAtIndex:{arc4random_uniform(objc_msgSend(v207, "count"))}];
    [v6 setObject:v208 forKeyedSubscript:@"diversity_key"];

    v209 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random_uniform(7u)];
    [v6 setObject:v209 forKeyedSubscript:@"prompt_idx"];

    v210 = v246;
    goto LABEL_159;
  }

  v210 = v246;
  if ([v169 bundleSubType] == 1002)
  {
    v211 = [v6 objectForKeyedSubscript:@"with_family"];
    if (v211)
    {
      goto LABEL_138;
    }

    v211 = [v6 objectForKeyedSubscript:@"with_friends"];
    if (v211)
    {
      goto LABEL_138;
    }

    v242 = [v6 objectForKeyedSubscript:@"with_pets"];

    if (v242)
    {
      goto LABEL_139;
    }

    goto LABEL_166;
  }

  if ([v169 bundleSubType] == 1003)
  {
    v215 = [v6 objectForKeyedSubscript:@"prompt_type"];

    if (!v215)
    {
      goto LABEL_159;
    }

    v216 = [v6 objectForKeyedSubscript:@"prompt_type"];
    if ([v216 isEqualToString:@"workout"])
    {
      v217 = MEMORY[0x277CCABB0];
      v218 = 19;
    }

    else
    {
      if (![v216 isEqualToString:@"visit"])
      {
        if ([v216 isEqualToString:@"shopping"] || objc_msgSend(v216, "isEqualToString:", @"dining"))
        {
          [v6 setObject:&unk_284100A38 forKeyedSubscript:@"prompt_idx"];
        }

        goto LABEL_158;
      }

      v217 = MEMORY[0x277CCABB0];
      v218 = 4;
    }

    v223 = [v217 numberWithUnsignedInt:arc4random_uniform(v218)];
    [v6 setObject:v223 forKeyedSubscript:@"prompt_idx"];

LABEL_158:
    goto LABEL_159;
  }

  if ([v169 bundleSubType] == 1004)
  {
    v219 = [v6 objectForKeyedSubscript:@"at_home"];

    if (!v219)
    {
      v243 = [v6 objectForKeyedSubscript:@"at_restaurant"];

      if (v243)
      {
        v211 = [v6 objectForKeyedSubscript:@"with_contact"];
LABEL_138:

LABEL_139:
        v212 = MEMORY[0x277CCABB0];
        v213 = 3;
LABEL_140:
        v214 = [v212 numberWithUnsignedInt:arc4random_uniform(v213)];
        [v6 setObject:v214 forKeyedSubscript:@"prompt_idx"];

        goto LABEL_159;
      }

      v244 = [v6 objectForKeyedSubscript:@"at_store"];

      if (v244)
      {
        v212 = MEMORY[0x277CCABB0];
        v213 = 2;
        goto LABEL_140;
      }

      v245 = [v6 objectForKeyedSubscript:@"at_park"];

      if (!v245)
      {
        v212 = MEMORY[0x277CCABB0];
        v213 = 6;
        goto LABEL_140;
      }
    }

    v220 = [v6 objectForKeyedSubscript:@"with_contact"];

    if (!v220)
    {
LABEL_166:
      v212 = MEMORY[0x277CCABB0];
      v213 = 4;
      goto LABEL_140;
    }

    [v6 setObject:&unk_284100A38 forKeyedSubscript:@"prompt_idx"];
  }

LABEL_159:
  v224 = _mo_log_facility_get_os_log(MOLogFacilityThematicSummarization);
  if (os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
  {
    clusterMetadata31 = [v169 clusterMetadata];
    phenotype27 = [clusterMetadata31 phenotype];
    *buf = 138478083;
    v269 = phenotype27;
    v270 = 2112;
    v271 = v248;
    v6 = v248;
    _os_log_impl(&dword_22D8C5000, v224, OS_LOG_TYPE_INFO, "Built label metadata for thematic summary:cluster phenotype=%{private}@, metaData=%@", buf, 0x16u);
  }

  v227 = v6;
  v228 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __75__MOEventBundleMetaDataUtility_buildThematicSummaryMetaDataForEventBundle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 integerValue];
  if (v6 <= [v5 integerValue])
  {
    v8 = [v4 integerValue];
    v7 = v8 < [v5 integerValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (id)buildStateOfMindMetaDataForEventBundle:(id)bundle
{
  v57 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  +[MOEventBundleMetaDataUtility defineClassCollections];
  v4 = objc_opt_new();
  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    startDate = [bundleCopy startDate];
    endDate = [bundleCopy endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:time2 startDate:startDate endDate:endDate metaData:v4];
  }

  if ([bundleCopy bundleSubType] == 802)
  {
    v9 = @"momentary_emotion";
  }

  else
  {
    v9 = @"daily_mood";
  }

  [v4 setObject:v9 forKeyedSubscript:@"reflective_interval"];
  action = [bundleCopy action];
  actionSubtype = [action actionSubtype];

  v12 = actionSubtype - 1;
  if ((actionSubtype - 1) <= 6)
  {
    v13 = off_278773940[v12];
    [v4 setObject:off_278773908[v12] forKeyedSubscript:@"valence_classification_granular"];
    [v4 setObject:v13 forKeyedSubscript:@"valence_classification"];
  }

  action2 = [bundleCopy action];
  actionMetaData = [action2 actionMetaData];
  v16 = [actionMetaData objectForKeyedSubscript:@"MediaActionMetaDataAppName"];

  if (v16)
  {
    action3 = [bundleCopy action];
    actionMetaData2 = [action3 actionMetaData];
    v19 = [actionMetaData2 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
    [v4 setObject:v19 forKeyedSubscript:@"state_of_mind_app_name"];
  }

  metaDataForRank = [bundleCopy metaDataForRank];
  v21 = [metaDataForRank objectForKey:@"StateOfMindLabels"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
  [v4 setObject:v22 forKeyedSubscript:@"state_of_mind_label_count"];

  if ([v21 count])
  {
    v23 = [v21 objectAtIndexedSubscript:0];
    [v23 intValue];

    v24 = HKUILocalizedStringForStateOfMindLabel();
    lowercaseString = [v24 lowercaseString];
    v26 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString];
    [v4 setObject:v26 forKeyedSubscript:@"state_of_mind_label_1"];
  }

  if ([v21 count] >= 2)
  {
    v27 = [v21 objectAtIndexedSubscript:1];
    [v27 intValue];

    v28 = HKUILocalizedStringForStateOfMindLabel();
    lowercaseString2 = [v28 lowercaseString];
    v30 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString2];
    [v4 setObject:v30 forKeyedSubscript:@"state_of_mind_label_2"];
  }

  v31 = v4;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v21;
  v32 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v53;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v53 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v52 + 1) + 8 * i);
        action4 = [bundleCopy action];
        if ([action4 actionSubtype] == 2)
        {
          v38 = [noSavoringPromptLabels containsObject:v36];

          if (v38)
          {
            goto LABEL_27;
          }
        }

        else
        {
          action5 = [bundleCopy action];
          if ([action5 actionSubtype] == 3)
          {
            v40 = [noSavoringPromptLabels containsObject:v36];

            if (v40)
            {
              goto LABEL_27;
            }
          }

          else
          {
            action6 = [bundleCopy action];
            if ([action6 actionSubtype] == 4)
            {
              v42 = [noSavoringPromptLabels containsObject:v36];

              if ((v42 & 1) == 0)
              {
                goto LABEL_29;
              }

LABEL_27:
              [v31 setObject:@"Yes" forKeyedSubscript:@"no_savoring_prompt"];
              goto LABEL_29;
            }
          }
        }

LABEL_29:
        action7 = [bundleCopy action];
        if ([action7 actionSubtype] == 5)
        {
          v44 = [noReappraisalPromptLabels containsObject:v36];

          if (v44)
          {
            goto LABEL_37;
          }
        }

        else
        {
          action8 = [bundleCopy action];
          if ([action8 actionSubtype] == 6)
          {
            v46 = [noReappraisalPromptLabels containsObject:v36];

            if (v46)
            {
              goto LABEL_37;
            }
          }

          else
          {
            action9 = [bundleCopy action];
            if ([action9 actionSubtype] == 7)
            {
              v48 = [noReappraisalPromptLabels containsObject:v36];

              if ((v48 & 1) == 0)
              {
                continue;
              }

LABEL_37:
              [v31 setObject:@"Yes" forKeyedSubscript:@"no_reappraisal_prompt"];
              continue;
            }
          }
        }
      }

      v33 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v33);
  }

  v49 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (void)setMetaDataForAction:(id)action metaData:(id)data
{
  if (action)
  {
    dataCopy = data;
    actionCopy = action;
    actionName = [actionCopy actionName];
    v8 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName];
    [dataCopy setObject:v8 forKeyedSubscript:@"action"];

    v9 = objc_opt_class();
    actionName2 = [actionCopy actionName];

    v10 = [v9 keywordFromString:actionName2];
    [dataCopy setObject:v10 forKeyedSubscript:@"action_type"];
  }
}

+ (void)setMetaDataForDiningAction:(id)action metaData:(id)data startDate:(id)date endDate:(id)endDate
{
  actionCopy = action;
  dataCopy = data;
  dateCopy = date;
  endDateCopy = endDate;
  if (actionCopy)
  {
    actionName = [actionCopy actionName];
    v13 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName];
    [dataCopy setObject:v13 forKeyedSubscript:@"action"];

    v14 = objc_opt_class();
    actionName2 = [actionCopy actionName];
    v16 = [v14 keywordFromString:actionName2];
    [dataCopy setObject:v16 forKeyedSubscript:@"action_type"];

    if ([actionCopy actionType] == 10)
    {
      v17 = [MOTime mealtagFromStartDate:dateCopy endDate:endDateCopy];
      if (v17 - 2000 <= 2)
      {
        v18 = [MOTime timeStringFromTimeTag:v17];
        if (v18)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"meal_type", v18];
          v20 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v18];
          [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"meal_type" extendedKeyword:v19 value:v20 metaData:dataCopy];
        }
      }
    }
  }
}

+ (void)setMetaDataForActions:(id)actions metaData:(id)data
{
  v56 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  dataCopy = data;
  if (actionsCopy && [actionsCopy count])
  {
    v7 = objc_opt_new();
    v48 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = actionsCopy;
    obj = actionsCopy;
    v49 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v49)
    {
      v50 = 0;
      v47 = 0;
      v44 = 0;
      v46 = *v52;
      v8 = 1;
      v9 = v48;
      v43 = v7;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v52 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v51 + 1) + 8 * i);
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"action_", v8];
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", @"action_type", v8];
          if ([v11 actionType] == 4)
          {
            actionName = [v11 actionName];
            [MOEventBundleMetaDataUtility setActivityNameFromActionName:actionName metaData:dataCopy keyword:v12 keywordType:v13];
          }

          else
          {
            actionName2 = [v11 actionName];
            v16 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName2];
            [dataCopy setObject:v16 forKeyedSubscript:v12];

            v17 = objc_opt_class();
            actionName = [v11 actionName];
            v18 = [v17 keywordFromString:actionName];
            [dataCopy setObject:v18 forKeyedSubscript:v13];
          }

          if ([v11 actionType] == 4)
          {
            v19 = v50 + 1;
          }

          else
          {
            v19 = v50;
          }

          LODWORD(v50) = v19;
          if ([v11 actionType] == 2)
          {
            v20 = HIDWORD(v50) + 1;
          }

          else
          {
            v20 = HIDWORD(v50);
          }

          HIDWORD(v50) = v20;
          actionName3 = [v11 actionName];
          v22 = [v9 containsObject:actionName3];

          if ((v22 & 1) == 0)
          {
            v23 = dataCopy;
            actionName4 = [v11 actionName];
            [v9 addObject:actionName4];

            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"unique_action_", objc_msgSend(v9, "count")];
            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", @"unique_action_type", objc_msgSend(v9, "count")];
            if ([v11 actionType] == 4)
            {
              actionName5 = [v11 actionName];
              [MOEventBundleMetaDataUtility setActivityNameFromActionName:actionName5 metaData:dataCopy keyword:v25 keywordType:v26];

              ++v44;
            }

            else
            {
              actionName6 = [v11 actionName];
              v29 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:actionName6];
              [v23 setObject:v29 forKeyedSubscript:v25];

              v30 = objc_opt_class();
              actionName7 = [v11 actionName];
              v32 = [v30 keywordFromString:actionName7];
              [v23 setObject:v32 forKeyedSubscript:v26];

              dataCopy = v23;
            }

            v7 = v43;
          }

          v33 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(v11, "actionType")}];
          v34 = [v7 containsObject:v33];

          if ((v34 & 1) == 0)
          {
            ++v47;
            v35 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(v11, "actionType")}];
            [v7 addObject:v35];
          }

          v8 = (v8 + 1);

          v9 = v48;
        }

        v49 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v49);
    }

    else
    {
      v50 = 0;
      v47 = 0;
      v44 = 0;
      v9 = v48;
    }

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(obj, "count")}];
    [dataCopy setObject:v36 forKeyedSubscript:@"action_count"];

    v37 = [MEMORY[0x277CCABB0] numberWithInt:v50];
    [dataCopy setObject:v37 forKeyedSubscript:@"activity_count"];

    v38 = [MEMORY[0x277CCABB0] numberWithInt:v47];
    [dataCopy setObject:v38 forKeyedSubscript:@"unique_action_type_count"];

    v39 = [MEMORY[0x277CCABB0] numberWithInt:v44];
    [dataCopy setObject:v39 forKeyedSubscript:@"unique_activity_count"];

    v40 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v50)];
    [dataCopy setObject:v40 forKeyedSubscript:@"visit_count"];

    actionsCopy = v42;
  }

  v41 = *MEMORY[0x277D85DE8];
}

+ (void)setActivityNameFromActionName:(id)name metaData:(id)data keyword:(id)keyword keywordType:(id)type
{
  nameCopy = name;
  dataCopy = data;
  typeCopy = type;
  lowercaseString = [keyword lowercaseString];
  v13 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:lowercaseString];
  v27 = nameCopy;
  v14 = [MEMORY[0x277CCDBE8] _workoutActivityTypeFromString:v27];
  IsValid = _HKWorkoutActivityTypeIsValid();
  v16 = v27;
  if (IsValid)
  {
    v16 = HKUILocalizedWorkoutTypeName();
  }

  v17 = [MOEventBundleLabelLocalizer _Moments_LowercaseNounForKey:v16];

  v18 = 1;
  if (v14 > 44)
  {
    if (v14 <= 48)
    {
      if (v14 == 45)
      {
        v19 = v13;
        v25 = 0;
        v20 = @"surfing";
        goto LABEL_27;
      }

      if (v14 == 46)
      {
        v19 = v13;
        v25 = 0;
        v20 = @"swim";
        goto LABEL_27;
      }
    }

    else
    {
      switch(v14)
      {
        case '1':
          v19 = v13;
          v18 = 0;
          v20 = @"track and field";
          v21 = @"Track and Field";
LABEL_25:
          v25 = v21;
          goto LABEL_27;
        case '4':
          v19 = v13;
          v25 = 0;
          v20 = @"walk";
          goto LABEL_27;
        case '?':
          v19 = v13;
          v25 = 0;
          v20 = @"HIIT";
          goto LABEL_27;
      }
    }

LABEL_38:
    v25 = 0;
    goto LABEL_28;
  }

  if (v14 <= 23)
  {
    if (v14 == 1)
    {
      v25 = 0;
      v19 = v13;
      v20 = @"American football";
      goto LABEL_27;
    }

    if (v14 == 3)
    {
      v19 = v13;
      v25 = 0;
      v20 = @"Australian football";
      goto LABEL_27;
    }

    goto LABEL_38;
  }

  if (v14 == 24)
  {
    v19 = v13;
    v25 = 0;
    v20 = @"hike";
    goto LABEL_27;
  }

  if (v14 == 29)
  {
    v19 = v13;
    v18 = 0;
    v20 = @"mind and body workout";
    v21 = @"Mind and Body Workout";
    goto LABEL_25;
  }

  if (v14 != 37)
  {
    goto LABEL_38;
  }

  v19 = v13;
  v25 = 0;
  v20 = @"run";
LABEL_27:

  IsValid = 0;
  v17 = v20;
  v13 = v19;
LABEL_28:
  if (v14 > 0x4F || v14 == 33)
  {

    v17 = @"workout";
  }

  else if (IsValid)
  {
    [dataCopy setObject:v17 forKeyedSubscript:{lowercaseString, v25}];
    goto LABEL_35;
  }

  v22 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v17, v25];
  [dataCopy setObject:v22 forKeyedSubscript:lowercaseString];

  if ((v18 & 1) == 0)
  {
    v23 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v26];
    [dataCopy setObject:v23 forKeyedSubscript:v13];
  }

LABEL_35:
  v24 = [objc_opt_class() keywordFromString:v17];
  [dataCopy setObject:v24 forKeyedSubscript:typeCopy];
}

+ (void)setActivityNameForThematicSummaryFromActionName:(id)name metaData:(id)data keyword:(id)keyword keywordType:(id)type
{
  nameCopy = name;
  dataCopy = data;
  typeCopy = type;
  lowercaseString = [keyword lowercaseString];
  v13 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:lowercaseString];
  v24 = nameCopy;
  v14 = [MEMORY[0x277CCDBE8] _workoutActivityTypeFromString:v24];
  v15 = v24;
  if (v14 <= 0x4F)
  {
    v15 = v24;
    if (v14 != 33)
    {
      IsValid = _HKWorkoutActivityTypeIsValid();
      v17 = v24;
      if (IsValid)
      {
        v17 = HKUILocalizedWorkoutTypeName();
      }

      v15 = [MOEventBundleLabelLocalizer _Moments_LowercaseNounForKey:v17];

      if (v14 <= 48)
      {
        switch(v14)
        {
          case 1:
            v18 = 0;
            v19 = 1;
            v20 = @"American football";
            goto LABEL_23;
          case 3:
            v18 = 0;
            v19 = 1;
            v20 = @"Australian football";
            goto LABEL_23;
          case 29:
            v19 = 0;
            v18 = @"Mind and Body";
            v20 = @"mind and body";
            goto LABEL_23;
        }
      }

      else if (v14 > 63)
      {
        if (v14 == 64)
        {
          v19 = 0;
          v18 = @"Jump Rope";
          v20 = @"jump rope";
          goto LABEL_23;
        }

        if (v14 == 72)
        {
          v19 = 0;
          v18 = @"Tai Chi";
          v20 = @"tai chi";
          goto LABEL_23;
        }
      }

      else
      {
        if (v14 == 49)
        {
          v19 = 0;
          v18 = @"Track and Field";
          v20 = @"track and field";
          goto LABEL_23;
        }

        if (v14 == 63)
        {
          v18 = 0;
          v19 = 1;
          v20 = @"HIIT";
LABEL_23:

          v15 = v20;
          goto LABEL_24;
        }
      }

      if (IsValid)
      {
        [dataCopy setObject:v15 forKeyedSubscript:lowercaseString];
LABEL_26:
        v23 = [objc_opt_class() keywordFromString:v15];
        [dataCopy setObject:v23 forKeyedSubscript:typeCopy];

        goto LABEL_27;
      }

      v18 = 0;
      v19 = 1;
LABEL_24:
      v21 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v15];
      [dataCopy setObject:v21 forKeyedSubscript:lowercaseString];

      if ((v19 & 1) == 0)
      {
        v22 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v18];
        [dataCopy setObject:v22 forKeyedSubscript:v13];
      }

      goto LABEL_26;
    }
  }

LABEL_27:
}

+ (void)setMetaDataForActivityAction:(id)action metaData:(id)data
{
  actionCopy = action;
  dataCopy = data;
  if (actionCopy)
  {
    actionName = [actionCopy actionName];
    [MOEventBundleMetaDataUtility setActivityNameFromActionName:actionName metaData:dataCopy keyword:@"action" keywordType:@"action_type"];

    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(actionCopy, "actionSubtype")}];
    [dataCopy setObject:v7 forKeyedSubscript:@"workoutSubtype"];

    actionMetaData = [actionCopy actionMetaData];
    v9 = [actionMetaData objectForKeyedSubscript:@"MediaActionMetaDataAppName"];

    if (v9)
    {
      actionMetaData2 = [actionCopy actionMetaData];
      v11 = [actionMetaData2 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
      [dataCopy setObject:v11 forKeyedSubscript:@"workout_app_name"];
    }
  }
}

+ (void)setMetaDataForMediaAction:(id)action metaData:(id)data
{
  actionCopy = action;
  dataCopy = data;
  if (actionCopy && [actionCopy actionType] == 6)
  {
    actionName = [actionCopy actionName];
    [dataCopy setObject:actionName forKeyedSubscript:@"media"];
  }
}

+ (id)mediaKeywordWithType:(unint64_t)type
{
  if (type > 2)
  {
    switch(type)
    {
      case 3uLL:
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@_artist", @"media"];
        goto LABEL_14;
      case 4uLL:
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@_genre", @"media"];
        goto LABEL_14;
      case 5uLL:
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@_app", @"media"];
        goto LABEL_14;
    }

LABEL_10:
    v3 = @"media";
    goto LABEL_15;
  }

  if (!type)
  {
    goto LABEL_10;
  }

  if (type == 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_title", @"media"];
    goto LABEL_14;
  }

  if (type != 2)
  {
    goto LABEL_10;
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"%@_album", @"media"];
  v3 = LABEL_14:;
LABEL_15:

  return v3;
}

+ (void)setMetaDataForActivityConcurrentMediaAction:(id)action metaData:(id)data
{
  actionCopy = action;
  dataCopy = data;
  if (actionCopy)
  {
    if ([actionCopy actionType] == 6)
    {
      actionMetaData = [actionCopy actionMetaData];

      if (actionMetaData)
      {
        actionName = [actionCopy actionName];
        [dataCopy setObject:actionName forKeyedSubscript:@"media"];

        actionMetaData2 = [actionCopy actionMetaData];
        v9 = [actionMetaData2 objectForKeyedSubscript:@"MediaActionMetaDataMediaType"];
        [dataCopy setObject:v9 forKeyedSubscript:@"media_type"];

        actionMetaData3 = [actionCopy actionMetaData];
        v11 = [actionMetaData3 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];

        if (v11)
        {
          actionMetaData4 = [actionCopy actionMetaData];
          v13 = [actionMetaData4 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];

          v14 = [objc_opt_class() mediaKeywordWithType:{objc_msgSend(v13, "intValue")}];
          actionName2 = [actionCopy actionName];
          [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"media_name" extendedKeyword:v14 value:actionName2 metaData:dataCopy];
        }
      }
    }
  }
}

+ (void)setMetaDataWithKeyword:(id)keyword extendedKeyword:(id)extendedKeyword value:(id)value metaData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  keywordCopy = keyword;
  extendedKeywordCopy = extendedKeyword;
  valueCopy = value;
  dataCopy = data;
  if (keywordCopy && extendedKeywordCopy && valueCopy)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", keywordCopy, @"_string"];
    [dataCopy setObject:extendedKeywordCopy forKeyedSubscript:keywordCopy];
    [dataCopy setObject:valueCopy forKeyedSubscript:extendedKeywordCopy];
    [dataCopy setObject:valueCopy forKeyedSubscript:v13];
  }

  else
  {
    v13 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = keywordCopy;
      v17 = 2112;
      v18 = extendedKeywordCopy;
      v19 = 2048;
      v20 = [valueCopy length];
      _os_log_error_impl(&dword_22D8C5000, v13, OS_LOG_TYPE_ERROR, "build meta, keyword, %@, extendedKeyword, %@, value, %lu", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)setMetaDataForTime:(id)time startDate:(id)date endDate:(id)endDate metaData:(id)data
{
  v75 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  dateCopy = date;
  endDateCopy = endDate;
  dataCopy = data;
  timeZoneObject = [timeCopy timeZoneObject];
  v14 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v62 = timeZoneObject;
    v63 = 2112;
    v64 = dateCopy;
    v65 = 2112;
    v66 = endDateCopy;
    v67 = 2112;
    v68 = timeCopy;
    _os_log_impl(&dword_22D8C5000, v14, OS_LOG_TYPE_INFO, "build meta, time zone, %@, startDate, %@, endDate, %@, time, %@", buf, 0x2Au);
  }

  if (endDateCopy)
  {
    if ([endDateCopy isBeforeDate:dateCopy])
    {
      snapToTheDay = endDateCopy;
    }

    else
    {
      snapToTheDay = [endDateCopy snapToTheDay];
      if (![snapToTheDay isAfterDate:dateCopy])
      {
        goto LABEL_14;
      }

      v16 = snapToTheDay;

      if (v16)
      {
        if (![v16 isBeforeDate:dateCopy])
        {
          endDateCopy = v16;
          goto LABEL_14;
        }

        v17 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v62 = dateCopy;
          v63 = 2112;
          v64 = v16;
          _os_log_impl(&dword_22D8C5000, v17, OS_LOG_TYPE_INFO, "setMetaDataForTime, startDate, %@, endDate, %@, the timestamps are inverted after snapping.", buf, 0x16u);
        }
      }
    }

    endDateCopy = 0;
LABEL_14:
  }

  if (timeCopy)
  {
    timeString = [timeCopy timeString];

    if (timeString)
    {
      timeString2 = [timeCopy timeString];
      v20 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:timeString2];
      [dataCopy setObject:v20 forKeyedSubscript:@"time"];
    }
  }

  if (!dateCopy)
  {
    dateCopy = [timeCopy date];

    endDateCopy = 0;
  }

  if (!timeZoneObject)
  {
    v23 = endDateCopy;
    v21 = dateCopy;
LABEL_36:
    if (!v21)
    {
      v24 = 0;
      goto LABEL_68;
    }

    if (!v23)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  if (dateCopy)
  {
    v21 = [MOTime localTimeOfDate:dateCopy timeZone:timeZoneObject];
    v22 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v62 = timeZoneObject;
      v63 = 2112;
      v64 = dateCopy;
      v65 = 2112;
      v66 = v21;
      _os_log_impl(&dword_22D8C5000, v22, OS_LOG_TYPE_INFO, "build meta, time zone, %@, startDate, %@, localDate, %@", buf, 0x20u);
    }

    if (!endDateCopy)
    {
      v23 = 0;
      v24 = 0;
      if (!v21)
      {
        goto LABEL_68;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v23 = 0;
    if (!endDateCopy)
    {
      goto LABEL_68;
    }
  }

  v23 = [MOTime localTimeOfDate:endDateCopy timeZone:timeZoneObject];
  v25 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v62 = timeZoneObject;
    v63 = 2112;
    v64 = endDateCopy;
    v65 = 2112;
    v66 = v23;
    _os_log_impl(&dword_22D8C5000, v25, OS_LOG_TYPE_INFO, "build meta, time zone, %@, endDate, %@, localDate, %@", buf, 0x20u);
  }

  if (!v21 || !v23)
  {
    goto LABEL_36;
  }

  if ([v23 isBeforeDate:v21])
  {
    v26 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v62 = v21;
      v63 = 2112;
      v64 = v23;
      _os_log_impl(&dword_22D8C5000, v26, OS_LOG_TYPE_INFO, "setMetaDataForTime, startDate, %@, endDate, %@, the timestamps are inverted after time zone shifting.", buf, 0x16u);
    }

LABEL_41:

    v23 = 0;
    goto LABEL_42;
  }

LABEL_38:
  if ([v23 isBeforeDate:v21])
  {
    v26 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleMetaDataUtility setMetaDataForTime:startDate:endDate:metaData:];
    }

    goto LABEL_41;
  }

LABEL_42:
  v27 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v62 = timeZoneObject;
    v63 = 2112;
    v64 = v21;
    v65 = 2112;
    v66 = v23;
    _os_log_impl(&dword_22D8C5000, v27, OS_LOG_TYPE_INFO, "build meta after timezone shift, time zone, %@, startDate, %@, endDate, %@", buf, 0x20u);
  }

  v28 = [MOTime dateReferenceTagFromStartDate:v21 endDate:v23];
  if (timeCopy)
  {
    [timeCopy setDateReferenceTag:v28];
  }

  if (v28 >= 2)
  {
    v29 = [MOTime timeStringFromTimeTag:v28];
    [dataCopy setObject:v29 forKeyedSubscript:@"date_referece_time_tag"];
  }

  if ((v28 & 0xFFFFFFFFFFFFFFFELL) == 0x64)
  {
    v30 = [MOTime timeStringFromTimeTag:v28];
    v31 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v30];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"date_reference_", v30];
    [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"date_reference" extendedKeyword:v32 value:v31 metaData:dataCopy];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v34 = [date dateByAddingTimeInterval:-604800.0];

  v58 = v34;
  if ([v21 isAfterDate:v34])
  {
    [dataCopy setObject:&unk_284100A20 forKeyedSubscript:@"date_referece_recency"];
  }

  v60 = timeCopy;
  v56 = [MOTime typeOfDayTagFromStartDate:v21 endDate:v23 timeZone:0];
  if (v56 == 10001)
  {
    v35 = [MOTime timeStringFromTimeTag:10001];
    [dataCopy setObject:v35 forKeyedSubscript:@"typeOfDay"];
  }

  v59 = timeZoneObject;
  v36 = [MOTime dayOfWeekTagFromStartDate:v21 endDate:v23];
  v37 = v36 - 102;
  if (v36 - 102 <= 6)
  {
    v38 = [MOTime timeStringFromTimeTag:v36];
    v39 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v38];
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"date_reference_", v38];
    [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"date_reference_weekday" extendedKeyword:v40 value:v39 metaData:dataCopy];
  }

  v57 = v36;
  v41 = dataCopy;
  v42 = [MOTime timetagFromStartDate:v21 endDate:v23];
  if (v42 - 2 <= 6)
  {
    v43 = [MOTime timeStringFromTimeTag:v42];
    v44 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v43];
    [dataCopy setObject:v44 forKeyedSubscript:@"timeOfDay"];

    v45 = [dataCopy objectForKey:@"time"];

    if (!v45)
    {
      v46 = [v41 objectForKeyedSubscript:@"timeOfDay"];
      [v41 setObject:v46 forKeyedSubscript:@"time"];
    }

    if (v37 <= 6)
    {
      v47 = [MOTime timeStringFromTimeTag:v57];
      v48 = [MOTime timeStringFromTimeTag:v42];
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v47, v48];
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@_%@", @"date_reference_", v47, v48];
      [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"date_reference_weekday_timeofday" extendedKeyword:v50 value:v49 metaData:v41];
    }
  }

  v51 = [MOTime localizedDateStringFromDate:v21];
  [v41 setObject:v51 forKeyedSubscript:@"date_string"];

  if (v23 && ([v23 isSameDayWithDate:v21] & 1) == 0)
  {
    v52 = [MOTime localizedDateStringFromDate:v23];
    [v41 setObject:v52 forKeyedSubscript:@"end_date_string"];
  }

  v53 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v54 = [v41 objectForKeyedSubscript:@"date_string"];
    *buf = 138413826;
    v62 = v21;
    v63 = 2112;
    v64 = v23;
    v65 = 2048;
    v66 = v28;
    v67 = 2048;
    v68 = v56;
    v69 = 2048;
    v70 = v57;
    v71 = 2048;
    v72 = v42;
    v73 = 2112;
    v74 = v54;
    _os_log_impl(&dword_22D8C5000, v53, OS_LOG_TYPE_INFO, "build meta, startDate, %@, endDate, %@, dateTag, %lu, typeOfDay, %lu, dayOfWeek, %lu, timeOfDay, %lu, dateString, %@", buf, 0x48u);
  }

  v24 = v21;
  dataCopy = v41;
  timeZoneObject = v59;
  timeCopy = v60;
LABEL_68:

  v55 = *MEMORY[0x277D85DE8];
}

+ (void)setMetaDataForPlace:(id)place metaData:(id)data
{
  placeCopy = place;
  dataCopy = data;
  placeName = [placeCopy placeName];
  if (placeName)
  {
    v7 = placeName;
    placeType = [placeCopy placeType];

    if (placeType)
    {
      if ([placeCopy placeUserType] && (objc_msgSend(placeCopy, "placeUserType") == 1 || objc_msgSend(placeCopy, "placeUserType") == 2))
      {
        placeName2 = [placeCopy placeName];
        lowercaseString = [placeName2 lowercaseString];
        v11 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString];
        [dataCopy setObject:v11 forKeyedSubscript:@"place"];

        placeName3 = [placeCopy placeName];
        v13 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:placeName3];
        [dataCopy setObject:v13 forKeyedSubscript:@"Place"];
      }

      else
      {
        placeName4 = [placeCopy placeName];
        [dataCopy setObject:placeName4 forKeyedSubscript:@"place"];

        placeName3 = [placeCopy placeName];
        [dataCopy setObject:placeName3 forKeyedSubscript:@"Place"];
      }

      enclosingArea = [placeCopy enclosingArea];

      if (enclosingArea)
      {
        if ([placeCopy placeType] != 101 && objc_msgSend(placeCopy, "placeType") != 102)
        {
          enclosingArea2 = [placeCopy enclosingArea];
          [dataCopy setObject:enclosingArea2 forKeyedSubscript:@"city"];

          placeName5 = [placeCopy placeName];
          enclosingArea3 = [placeCopy enclosingArea];
          v19 = [placeName5 containsString:enclosingArea3];

          if (v19)
          {
            [dataCopy setObject:@"Yes" forKeyedSubscript:@"place_name_overlap_with_city"];
          }
        }
      }

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(placeCopy, "placeType")}];
      [dataCopy setObject:v20 forKeyedSubscript:@"place_type"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(placeCopy, "placeUserType")}];
      [dataCopy setObject:v21 forKeyedSubscript:@"place_user_type"];

      v22 = +[MOEventRoutine stringOfPlaceUserType:](MOEventRoutine, "stringOfPlaceUserType:", [placeCopy placeUserType]);
      v23 = v22;
      if (v22)
      {
        lowercaseString2 = [v22 lowercaseString];
        [dataCopy setObject:lowercaseString2 forKeyedSubscript:@"place_user_type_tag"];
      }

      if ([placeCopy proposition] == 4)
      {
        v25 = [dataCopy objectForKeyedSubscript:@"flight"];
        v26 = [v25 isEqual:@"flight"];

        if ((v26 & 1) == 0)
        {
          [dataCopy setObject:&unk_284100A20 forKeyedSubscript:@"vicinity"];
        }
      }

      if ([placeCopy locationMode] == 2)
      {
        [dataCopy setObject:&unk_284100A20 forKeyedSubscript:@"trip"];
      }

      if ([placeCopy placeType] == 3 && (objc_msgSend(placeCopy, "placeNameConfidence"), v27 >= 0.9) || objc_msgSend(placeCopy, "placeType") == 2 && (objc_msgSend(placeCopy, "placeNameConfidence"), v28 >= 0.9) || objc_msgSend(placeCopy, "placeUserType") && objc_msgSend(placeCopy, "placeUserType") < 0x64)
      {
        v29 = @"high";
      }

      else if ([placeCopy placeType] == 3 && (objc_msgSend(placeCopy, "placeNameConfidence"), v30 >= 0.75) || objc_msgSend(placeCopy, "placeType") == 2 && (objc_msgSend(placeCopy, "placeNameConfidence"), v31 >= 0.5))
      {
        v29 = @"medium";
      }

      else
      {
        v29 = @"low";
      }

      [dataCopy setObject:v29 forKeyedSubscript:@"confidence"];
    }
  }
}

+ (void)setMetaDataForActivityPlace:(id)place metaData:(id)data
{
  placeCopy = place;
  dataCopy = data;
  placeName = [placeCopy placeName];
  if (placeName && [placeCopy placeType])
  {
    placeUserType = [placeCopy placeUserType];

    if (placeUserType != 2)
    {
      if ([placeCopy placeUserType] && objc_msgSend(placeCopy, "placeUserType") == 1)
      {
        placeName2 = [placeCopy placeName];
        lowercaseString = [placeName2 lowercaseString];
        v10 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString];
        [dataCopy setObject:v10 forKeyedSubscript:@"place"];

        placeName3 = [placeCopy placeName];
        v12 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:placeName3];
        [dataCopy setObject:v12 forKeyedSubscript:@"Place"];
      }

      else
      {
        placeName4 = [placeCopy placeName];
        [dataCopy setObject:placeName4 forKeyedSubscript:@"place"];

        placeName3 = [placeCopy placeName];
        [dataCopy setObject:placeName3 forKeyedSubscript:@"Place"];
      }

      enclosingArea = [placeCopy enclosingArea];

      if (enclosingArea)
      {
        if ([placeCopy placeType] != 101 && objc_msgSend(placeCopy, "placeType") != 102)
        {
          enclosingArea2 = [placeCopy enclosingArea];
          [dataCopy setObject:enclosingArea2 forKeyedSubscript:@"city"];

          placeName5 = [placeCopy placeName];
          enclosingArea3 = [placeCopy enclosingArea];
          v18 = [placeName5 containsString:enclosingArea3];

          if (v18)
          {
            [dataCopy setObject:@"Yes" forKeyedSubscript:@"place_name_overlap_with_city"];
          }
        }
      }

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(placeCopy, "placeType")}];
      [dataCopy setObject:v19 forKeyedSubscript:@"place_type"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(placeCopy, "placeUserType")}];
      [dataCopy setObject:v20 forKeyedSubscript:@"place_user_type"];

      if ([placeCopy proposition] == 4)
      {
        v21 = [dataCopy objectForKeyedSubscript:@"flight"];
        v22 = [v21 isEqual:@"flight"];

        if ((v22 & 1) == 0)
        {
          [dataCopy setObject:&unk_284100A20 forKeyedSubscript:@"vicinity"];
        }
      }
    }
  }

  else
  {
  }
}

+ (void)setMetaDataForPersons:(id)persons suggestionId:(id)id metaData:(id)data sortBycomparePersons:(BOOL)bycomparePersons
{
  bycomparePersonsCopy = bycomparePersons;
  v81 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  idCopy = id;
  dataCopy = data;
  if (personsCopy && [personsCopy count])
  {
    v60 = personsCopy;
    v61 = idCopy;
    if (bycomparePersonsCopy)
    {
      v59 = [MEMORY[0x277CBEB98] setWithArray:personsCopy];
      allObjects = [v59 allObjects];
      v11 = [allObjects sortedArrayUsingSelector:sel_comparePersons_];
      v12 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22D8C5000, v12, OS_LOG_TYPE_INFO, "[setMetaDataForPersons] After Sorting setMetaDataForPersons", buf, 2u);
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v72 objects:v80 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v73;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v73 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v72 + 1) + 8 * i);
            v19 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v79 = v18;
              _os_log_impl(&dword_22D8C5000, v19, OS_LOG_TYPE_INFO, " Person %@", buf, 0xCu);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v72 objects:v80 count:16];
        }

        while (v15);
      }

      v63 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isMePerson == NO"];
      v20 = [v13 filteredArrayUsingPredicate:?];
      v57 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isMePerson == YES"];
      v21 = [v13 filteredArrayUsingPredicate:?];
      if ([v21 count])
      {
        firstObject = [v21 firstObject];
        name = [firstObject name];
        [dataCopy setObject:name forKeyedSubscript:@"me_person"];

        firstObject2 = [v21 firstObject];
        LODWORD(name) = [firstObject2 mePersonIdentified];

        if (name)
        {
          [dataCopy setObject:@"Yes" forKeyedSubscript:@"me_person_identified"];
        }

        if ([v21 count] >= 2)
        {
          v25 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [MOEventBundleMetaDataUtility setMetaDataForPersons:v21 suggestionId:v25 metaData:? sortBycomparePersons:?];
          }
        }
      }

      v56 = v21;
      v55 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isPHPersonTypeImportant == YES"];
      v54 = [v20 filteredArrayUsingPredicate:?];
      v26 = [v54 mutableCopy];
      v27 = [v61 hash];
      [v26 shuffleWithSeed:v27];
      v28 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isPHPersonTypeImportant == NO"];
      v29 = v20;
      v30 = [v20 filteredArrayUsingPredicate:v28];
      v31 = [v30 mutableCopy];
      [v31 shuffleWithSeed:v27];
      v32 = [v26 arrayByAddingObjectsFromArray:v31];
      v33 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
      v34 = allObjects;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22D8C5000, v33, OS_LOG_TYPE_INFO, "all shuffed persons by importance except me Person", buf, 2u);
      }

      v35 = v59;
    }

    else
    {
      v35 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isMePerson == NO"];
      v32 = [personsCopy filteredArrayUsingPredicate:v35];
      v34 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22D8C5000, v34, OS_LOG_TYPE_INFO, "[setMetaDataForPersons] Using input sorting order after filtering me person", buf, 2u);
      }
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v36 = v32;
    v37 = [v36 countByEnumeratingWithState:&v68 objects:v77 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v69;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v69 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v68 + 1) + 8 * j);
          v42 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v79 = v41;
            _os_log_impl(&dword_22D8C5000, v42, OS_LOG_TYPE_INFO, " Person %@", buf, 0xCu);
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v68 objects:v77 count:16];
      }

      while (v38);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v43 = v36;
    v44 = [v43 countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (v44)
    {
      v45 = v44;
      LODWORD(v46) = 0;
      v47 = *v65;
      while (2)
      {
        v48 = 0;
        v46 = v46;
        v49 = (v46 + 1);
        do
        {
          if (*v65 != v47)
          {
            objc_enumerationMutation(v43);
          }

          if (++v46 > 3)
          {
            [dataCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"with_more_than_three_persons"];
            goto LABEL_48;
          }

          v50 = *(*(&v64 + 1) + 8 * v48);
          if ([v50 mePersonIdentified])
          {
            [dataCopy setObject:@"Yes" forKeyedSubscript:@"me_person_identified"];
          }

          v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"person_", v49];
          name2 = [v50 name];
          [dataCopy setObject:name2 forKeyedSubscript:v51];

          ++v48;
          v49 = (v49 + 1);
        }

        while (v45 != v48);
        v45 = [v43 countByEnumeratingWithState:&v64 objects:v76 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }
    }

LABEL_48:

    personsCopy = v60;
    idCopy = v61;
  }

  v53 = *MEMORY[0x277D85DE8];
}

+ (void)setMetaDataForPlaces:(id)places metaData:(id)data
{
  v77 = *MEMORY[0x277D85DE8];
  placesCopy = places;
  dataCopy = data;
  if (!placesCopy || ![placesCopy count])
  {
    v53 = 0;
    v66 = 0;
    v54 = 0;
    goto LABEL_54;
  }

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v61 = placesCopy;
  obj = placesCopy;
  v69 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (!v69)
  {
    v63 = 0;
    v66 = 0;
    v62 = 0;
    goto LABEL_53;
  }

  v63 = 0;
  v66 = 0;
  v62 = 0;
  v68 = *v73;
  v9 = 1;
  v64 = v7;
  do
  {
    for (i = 0; i != v69; ++i)
    {
      if (*v73 != v68)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v72 + 1) + 8 * i);
      v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"place_", v9];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"Place_", v9];
      placeName = [v11 placeName];

      v70 = v12;
      if (placeName)
      {
        if ([v11 placeUserType] && objc_msgSend(v11, "placeUserType") == 1)
        {
          placeName2 = [v11 placeName];
          lowercaseString = [placeName2 lowercaseString];
          v16 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:lowercaseString];
          [dataCopy setObject:v16 forKeyedSubscript:v71];

          v7 = v64;
          placeName3 = [v11 placeName];
          v18 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:placeName3];
          [dataCopy setObject:v18 forKeyedSubscript:v12];
        }

        else
        {
          placeName4 = [v11 placeName];
          [dataCopy setObject:placeName4 forKeyedSubscript:v71];

          placeName3 = [v11 placeName];
          [dataCopy setObject:placeName3 forKeyedSubscript:v12];
        }
      }

      enclosingArea = [v11 enclosingArea];

      if (enclosingArea && [v11 placeType] != 101 && objc_msgSend(v11, "placeType") != 102)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", @"city", v9];
        enclosingArea2 = [v11 enclosingArea];
        [dataCopy setObject:enclosingArea2 forKeyedSubscript:v21];

        enclosingArea3 = [v11 enclosingArea];
        v24 = [v8 containsObject:enclosingArea3];

        if ((v24 & 1) == 0)
        {
          ++v63;
          enclosingArea4 = [v11 enclosingArea];
          [v8 addObject:enclosingArea4];

          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"unique_city_", objc_msgSend(v8, "count")];
          enclosingArea5 = [v11 enclosingArea];
          [dataCopy setObject:enclosingArea5 forKeyedSubscript:v26];
        }

        v7 = v64;
      }

      if ([v11 proposition] == 4)
      {
        v28 = [dataCopy objectForKeyedSubscript:@"flight"];
        v29 = [v28 isEqual:@"flight"];

        if ((v29 & 1) == 0 && v9 == 1)
        {
          [dataCopy setObject:&unk_284100A20 forKeyedSubscript:@"vicinity"];
        }
      }

      placeName5 = [v11 placeName];
      if (!placeName5)
      {
        goto LABEL_27;
      }

      v31 = placeName5;
      v32 = v8;
      placeName6 = [v11 placeName];
      v34 = v7;
      v35 = [v7 containsObject:placeName6];

      if (v35)
      {
        v7 = v34;
        v8 = v32;
LABEL_27:
        v36 = v70;
        goto LABEL_48;
      }

      placeName7 = [v11 placeName];
      [v34 addObject:placeName7];

      v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"unique_place_", objc_msgSend(v34, "count")];
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"Unique_place_", objc_msgSend(v34, "count")];
      v7 = v34;
      if ([v11 placeUserType] && objc_msgSend(v11, "placeUserType") == 1)
      {
        placeName8 = [v11 placeName];
        [placeName8 lowercaseString];
        v41 = v40 = dataCopy;
        v42 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v41];
        [v40 setObject:v42 forKeyedSubscript:v67];

        dataCopy = v40;
        v7 = v64;

        placeName9 = [v11 placeName];
        v44 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:placeName9];
        [dataCopy setObject:v44 forKeyedSubscript:v38];
      }

      else
      {
        placeName10 = [v11 placeName];
        [dataCopy setObject:placeName10 forKeyedSubscript:v67];

        placeName9 = [v11 placeName];
        [dataCopy setObject:placeName9 forKeyedSubscript:v38];
      }

      v8 = v32;
      if ([v11 proposition] == 4)
      {
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"vicinity_", objc_msgSend(v7, "count")];
        [dataCopy setObject:&unk_284100A20 forKeyedSubscript:v46];
      }

      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"confidence_", objc_msgSend(v7, "count")];
      v36 = v70;
      if ([v11 placeType] == 3 && (objc_msgSend(v11, "placeNameConfidence"), v48 >= 0.9) || objc_msgSend(v11, "placeType") == 2 && (objc_msgSend(v11, "placeNameConfidence"), v49 >= 0.9) || objc_msgSend(v11, "placeUserType") && objc_msgSend(v11, "placeUserType") < 0x64)
      {
        v50 = @"high";
      }

      else if ([v11 placeType] == 3 && (objc_msgSend(v11, "placeNameConfidence"), v51 >= 0.75) || objc_msgSend(v11, "placeType") == 2 && (objc_msgSend(v11, "placeNameConfidence"), v52 >= 0.5))
      {
        v50 = @"medium";
      }

      else
      {
        v62 = 1;
        v50 = @"low";
      }

      ++v66;
      [dataCopy setObject:v50 forKeyedSubscript:v47];

LABEL_48:
      v9 = (v9 + 1);
    }

    v69 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
  }

  while (v69);
LABEL_53:

  placesCopy = v61;
  v53 = v63;
  v54 = v62;
LABEL_54:
  v55 = [MEMORY[0x277CCABB0] numberWithBool:v54 & 1];
  [dataCopy setObject:v55 forKeyedSubscript:@"include_low_confidence_place_name"];

  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(placesCopy, "count")}];
  [dataCopy setObject:v56 forKeyedSubscript:@"place_count"];

  v57 = [MEMORY[0x277CCABB0] numberWithInt:v66];
  [dataCopy setObject:v57 forKeyedSubscript:@"unique_place_count"];

  v58 = [MEMORY[0x277CCABB0] numberWithInt:v53];
  [dataCopy setObject:v58 forKeyedSubscript:@"unique_city_count"];

  if ([placesCopy count] >= 2)
  {
    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(placesCopy, "count") - 1}];
    [dataCopy setObject:v59 forKeyedSubscript:@"place_count_minus_one"];
  }

  v60 = *MEMORY[0x277D85DE8];
}

+ (void)setMetaDataForPhotos:(id)photos metaData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  photosCopy = photos;
  dataCopy = data;
  if (photosCopy && [photosCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = photosCopy;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v13 + 1) + 8 * i) type] == 2)
          {
            [dataCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"photo_attached"];
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)andStringFromArray:(id)array propertyPath:(id)path maxCount:(unint64_t)count
{
  arrayCopy = array;
  pathCopy = path;
  v9 = [arrayCopy count];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = [arrayCopy objectAtIndex:v12];
    v14 = [v13 valueForKeyPath:pathCopy];
    v15 = v14;
    if (!v11)
    {
      v11 = [MEMORY[0x277CCAB68] stringWithString:v14];
      goto LABEL_9;
    }

    if (v10 != 1)
    {
      break;
    }

    [v11 appendFormat:@" and %@", v14];
LABEL_9:

    ++v12;
    if (!--v10)
    {
      goto LABEL_13;
    }
  }

  if (v12 < count - 1)
  {
    [v11 appendFormat:@", %@", v14];
    goto LABEL_9;
  }

  [v11 appendFormat:@", %@ and more", v14];

LABEL_13:
  v16 = [v11 copy];

  return v16;
}

+ (void)setMetaDataForHoliday:(id)holiday metaData:(id)data eventBundle:(id)bundle
{
  holidayCopy = holiday;
  dataCopy = data;
  bundleCopy = bundle;
  rankingDictionary = [bundleCopy rankingDictionary];
  v10 = [rankingDictionary objectForKeyedSubscript:@"useHolidayLabel"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    bundleSubType = [bundleCopy bundleSubType];
    v13 = bundleSubType == 204;
    if ([bundleCopy bundleSubType] == 201)
    {
      v14 = MEMORY[0x277CCDBE8];
      action = [bundleCopy action];
      actionName = [action actionName];
      v17 = [v14 _workoutActivityTypeFromString:actionName];

      v13 = v17 == 52 || bundleSubType == 204;
    }

    v19 = [MOMetaDataCurationUtility selectHolidayFromPhotoTraits:holidayCopy];
    v20 = v19;
    if (v19 && !v13)
    {
      name = [v19 name];
      [dataCopy setObject:name forKeyedSubscript:@"holiday_name"];
    }

    if (v20)
    {
      if (v13)
      {
        holidayIdentifier = [v20 holidayIdentifier];
        v23 = [holidayIdentifier isEqualToString:@"Halloween"];

        if (v23)
        {
          name2 = [v20 name];
          [dataCopy setObject:name2 forKeyedSubscript:@"holiday_name"];
        }
      }
    }
  }
}

+ (void)setMetaDataForBirthday:(id)birthday metaData:(id)data eventBundle:(id)bundle
{
  birthdayCopy = birthday;
  dataCopy = data;
  bundleCopy = bundle;
  rankingDictionary = [bundleCopy rankingDictionary];
  v10 = [rankingDictionary objectForKeyedSubscript:@"useBirthdayLabel"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v12 = [MOMetaDataCurationUtility selectBirthdayFromPhotoTraits:birthdayCopy];
    if (v12)
    {
      v13 = [MOMetaDataCurationUtility getPersonFromBirthdayPhotoTrait:v12 eventBundle:bundleCopy];
      v14 = v13;
      if (v13)
      {
        name = [v13 name];
        v16 = [name copy];
        [dataCopy setObject:v16 forKeyedSubscript:@"birthday_person_name"];
      }
    }
  }
}

+ (id)combinedPlaceTypeLabelMetadataForThematicSummary:(id)summary
{
  summaryCopy = summary;
  if ([summaryCopy isEqualToString:@"Home"])
  {
    v4 = @"home";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:@"Work"])
  {
    v4 = @"work";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:@"School"])
  {
    v4 = @"school";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:@"Gym"])
  {
    v4 = @"gym";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E7F8]])
  {
    v4 = @"amusement parks";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E800]])
  {
    v4 = @"aquariums";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E810]])
  {
    v4 = @"bakeries";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E820]])
  {
    v4 = @"baseball fields";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E828]])
  {
    v4 = @"basketball courts";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E830]])
  {
    v4 = @"beaches";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E838]])
  {
    v4 = @"beauty stores";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E840]])
  {
    v4 = @"bowling alleys";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E848]])
  {
    v4 = @"breweries";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E850]])
  {
    v4 = @"cafes";
    goto LABEL_85;
  }

  v5 = *MEMORY[0x277D0E858];
  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E858]])
  {
LABEL_30:
    v4 = @"campgrounds";
    goto LABEL_85;
  }

  v6 = *MEMORY[0x277D0E868];
  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E868]])
  {
LABEL_32:
    v4 = @"castles";
    goto LABEL_85;
  }

  v7 = *MEMORY[0x277D0E870];
  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E870]])
  {
LABEL_34:
    v4 = @"convention centers";
    goto LABEL_85;
  }

  v8 = *MEMORY[0x277D0E878];
  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E878]])
  {
    goto LABEL_36;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E890]])
  {
    v4 = @"fitness centers";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E888]])
  {
    v4 = @"fishing spots";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E898]])
  {
    v4 = @"food markets";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E8B8]])
  {
    v4 = @"golf courses";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E8B0]])
  {
    v4 = @"go kart";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E8C0]])
  {
    v4 = @"hiking trails";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E8D0]])
  {
    v4 = @"hotels";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E8D8]])
  {
    v4 = @"kayaking";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E8F0]])
  {
    v4 = @"libraries";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E8F8]])
  {
    v4 = @"marinas";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E900]])
  {
    v4 = @"mini golf";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E908]])
  {
    v4 = @"movie theaters";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E910]])
  {
    v4 = @"museums";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E918]])
  {
    v4 = @"music venues";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E928]])
  {
    v4 = @"national parks";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E930]])
  {
    v4 = @"nightlife";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E938]])
  {
    v4 = @"parks";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E948]])
  {
    v4 = @"playgrounds";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E968]])
  {
    v4 = @"restaurants";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E970]])
  {
    v4 = @"rock climbing";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E9A8]])
  {
    v4 = @"stadiums";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E9D0]])
  {
    v4 = @"theaters";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E9E8]])
  {
    v4 = @"wineries";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E9F0]])
  {
    v4 = @"zoos";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:v5])
  {
    goto LABEL_30;
  }

  if ([summaryCopy isEqualToString:v6])
  {
    goto LABEL_32;
  }

  if ([summaryCopy isEqualToString:v7])
  {
    goto LABEL_34;
  }

  if ([summaryCopy isEqualToString:v8])
  {
LABEL_36:
    v4 = @"fairgrounds";
    goto LABEL_85;
  }

  if ([summaryCopy isEqualToString:*MEMORY[0x277D0E8A0]])
  {
    v4 = @"fortresses";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E8E0]])
  {
    v4 = @"landmarks";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E920]])
  {
    v4 = @"national monuments";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E940]])
  {
    v4 = @"planetariums";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E960]])
  {
    v4 = @"RV parks";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E980]])
  {
    v4 = @"skate parks";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E978]])
  {
    v4 = @"schools";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E988]])
  {
    v4 = @"skating";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E990]])
  {
    v4 = @"ski resorts";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E998]])
  {
    v4 = @"soccer fields";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E9A0]])
  {
    v4 = @"spas";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E9B0]])
  {
    v4 = @"stores";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E9B8]])
  {
    v4 = @"surfing spots";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E9C0]])
  {
    v4 = @"swimming pools";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E9C8]])
  {
    v4 = @"tennis courts";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E9D8]])
  {
    v4 = @"universities";
  }

  else if ([summaryCopy isEqualToString:*MEMORY[0x277D0E9E0]])
  {
    v4 = @"volleyball courts";
  }

  else
  {
    v4 = 0;
  }

LABEL_85:

  return v4;
}

+ (id)placeTypePhotoTraitLabelMetadataForThematicSummary:(id)summary
{
  summaryCopy = summary;
  if ([summaryCopy isEqualToString:@"amusementpark"])
  {
    v4 = @"amusement park";
  }

  else
  {
    v4 = summaryCopy;
  }

  return v4;
}

+ (id)activityPhotoTraitLabelMetadataForThematicSummary:(id)summary AtHome:(BOOL)home
{
  homeCopy = home;
  summaryCopy = summary;
  if ([summaryCopy isEqualToString:@"eating"])
  {
    if (homeCopy)
    {
      v6 = @"dining";
    }

    else
    {
      v6 = @"eating out";
    }
  }

  else
  {
    v6 = summaryCopy;
  }

  return v6;
}

+ (void)setMetaDataForInvite:(id)invite metaData:(id)data
{
  dataCopy = data;
  v5 = MEMORY[0x277CCAC30];
  inviteCopy = invite;
  v7 = [v5 predicateWithFormat:@"type == %lu", 17];
  resources = [inviteCopy resources];

  v9 = [resources filteredArrayUsingPredicate:v7];

  if ([v9 count] == 1)
  {
    firstObject = [v9 firstObject];
    name = [firstObject name];
    v12 = [name length];

    if (v12)
    {
      name2 = [firstObject name];
      v14 = [name2 copy];
      [dataCopy setObject:v14 forKeyedSubscript:@"invite_title"];
    }
  }
}

+ (void)buildEvergreenMetaDataForEventBundle:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)buildEvergreenMetaDataForEventBundle:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 name];
  OUTLINED_FUNCTION_1_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)setMetaDataForTime:startDate:endDate:metaData:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  v4 = v0;
  _os_log_error_impl(&dword_22D8C5000, v1, OS_LOG_TYPE_ERROR, "setMetaDataForTime, startDate, %@, endDate, %@, the timestamps are inverted at the end", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)setMetaDataForPersons:(uint64_t)a1 suggestionId:(NSObject *)a2 metaData:sortBycomparePersons:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "More than one person found : %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end