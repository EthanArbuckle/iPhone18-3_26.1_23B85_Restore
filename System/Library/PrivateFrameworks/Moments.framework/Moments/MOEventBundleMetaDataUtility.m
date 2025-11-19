@interface MOEventBundleMetaDataUtility
+ (id)activityPhotoTraitLabelMetadataForThematicSummary:(id)a3 AtHome:(BOOL)a4;
+ (id)andStringFromArray:(id)a3 propertyPath:(id)a4 maxCount:(unint64_t)a5;
+ (id)buildActivityMetaDataForEventBundle:(id)a3;
+ (id)buildClusteringMetaDataForEventBundle:(id)a3;
+ (id)buildEvergreenMetaDataForEventBundle:(id)a3;
+ (id)buildMediaPlayMetaDataForEventBundle:(id)a3;
+ (id)buildMetaDataForEventBundle:(id)a3;
+ (id)buildOutingMetaDataForEventBundle:(id)a3;
+ (id)buildPhotoMemoryMetaDataForEventBundle:(id)a3;
+ (id)buildSharedContentMetaDataForEventBundle:(id)a3;
+ (id)buildSignificantContactMetaDataForEventBundle:(id)a3;
+ (id)buildStateOfMindMetaDataForEventBundle:(id)a3;
+ (id)buildThematicSummaryMetaDataForEventBundle:(id)a3;
+ (id)buildTimeAtHomeMetaDataForEventBundle:(id)a3;
+ (id)buildTimeContextMetaDataForEventBundle:(id)a3;
+ (id)buildTimeContextTransitMetaDataForEventBundle:(id)a3;
+ (id)buildTrendMetaDataForEventBundle:(id)a3;
+ (id)buildTripMetaDataForEventBundle:(id)a3;
+ (id)combinedPlaceTypeLabelMetadataForThematicSummary:(id)a3;
+ (id)mediaKeywordWithType:(unint64_t)a3;
+ (id)placeTypePhotoTraitLabelMetadataForThematicSummary:(id)a3;
+ (void)appendDefaultMetaData:(id)a3;
+ (void)defineClassCollections;
+ (void)setActivityNameForThematicSummaryFromActionName:(id)a3 metaData:(id)a4 keyword:(id)a5 keywordType:(id)a6;
+ (void)setActivityNameFromActionName:(id)a3 metaData:(id)a4 keyword:(id)a5 keywordType:(id)a6;
+ (void)setMetaDataForAction:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForActions:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForActivityAction:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForActivityConcurrentMediaAction:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForActivityPlace:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForBirthday:(id)a3 metaData:(id)a4 eventBundle:(id)a5;
+ (void)setMetaDataForDiningAction:(id)a3 metaData:(id)a4 startDate:(id)a5 endDate:(id)a6;
+ (void)setMetaDataForHoliday:(id)a3 metaData:(id)a4 eventBundle:(id)a5;
+ (void)setMetaDataForInvite:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForMediaAction:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForPersons:(id)a3 suggestionId:(id)a4 metaData:(id)a5 sortBycomparePersons:(BOOL)a6;
+ (void)setMetaDataForPhotos:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForPlace:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForPlaces:(id)a3 metaData:(id)a4;
+ (void)setMetaDataForTime:(id)a3 startDate:(id)a4 endDate:(id)a5 metaData:(id)a6;
+ (void)setMetaDataWithKeyword:(id)a3 extendedKeyword:(id)a4 value:(id)a5 metaData:(id)a6;
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

+ (id)buildMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = 0;
  switch([v3 interfaceType])
  {
    case 1:
      v5 = [MOEventBundleMetaDataUtility buildActivityMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 2:
      v5 = [MOEventBundleMetaDataUtility buildOutingMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 4:
      v5 = [MOEventBundleMetaDataUtility buildSignificantContactMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 5:
      v5 = [MOEventBundleMetaDataUtility buildMediaPlayMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 6:
      v5 = [MOEventBundleMetaDataUtility buildSharedContentMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 7:
      v5 = [MOEventBundleMetaDataUtility buildTimeAtHomeMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 9:
      v5 = [MOEventBundleMetaDataUtility buildTrendMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 10:
      v5 = [MOEventBundleMetaDataUtility buildPhotoMemoryMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 11:
      v5 = [MOEventBundleMetaDataUtility buildEvergreenMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 12:
      if ([v3 bundleSubType] == 205 || objc_msgSend(v3, "bundleSubType") == 206)
      {
        v5 = [MOEventBundleMetaDataUtility buildTimeContextTransitMetaDataForEventBundle:v3];
      }

      else
      {
        v5 = [MOEventBundleMetaDataUtility buildTimeContextMetaDataForEventBundle:v3];
      }

      goto LABEL_18;
    case 13:
      v5 = [MOEventBundleMetaDataUtility buildTripMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 14:
      v5 = [MOEventBundleMetaDataUtility buildStateOfMindMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 15:
      v5 = [MOEventBundleMetaDataUtility buildClusteringMetaDataForEventBundle:v3];
      goto LABEL_18;
    case 16:
      v5 = [MOEventBundleMetaDataUtility buildThematicSummaryMetaDataForEventBundle:v3];
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

+ (void)appendDefaultMetaData:(id)a3
{
  v4 = a3;
  v3 = +[MOEventBundleLabelLocalizer preferredLocalization];
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:@"language"];
  }
}

+ (id)buildActivityMetaDataForEventBundle:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 action];

  if (v5)
  {
    v6 = [v3 action];
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:v6 metaData:v4];
  }

  v7 = [v3 concurrentMediaAction];

  if (v7)
  {
    v8 = [v3 concurrentMediaAction];
    [MOEventBundleMetaDataUtility setMetaDataForActivityConcurrentMediaAction:v8 metaData:v4];
  }

  v9 = [v3 places];
  if (v9)
  {
    v10 = v9;
    if ([v3 bundleSubType] == 204 || objc_msgSend(v3, "bundleSubType") == 207)
    {

LABEL_9:
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = [v3 places];
      v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v31 + 1) + 8 * i);
            v17 = [v16 placeName];

            if (v17)
            {
              [MOEventBundleMetaDataUtility setMetaDataForActivityPlace:v16 metaData:v4];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v13);
      }

      goto LABEL_22;
    }

    v18 = [v3 bundleSubType];

    if (v18 == 208)
    {
      goto LABEL_9;
    }
  }

  v19 = [v3 place];

  if (v19)
  {
    v20 = [v3 place];
    [MOEventBundleMetaDataUtility setMetaDataForActivityPlace:v20 metaData:v4];
  }

LABEL_22:
  v21 = [v3 time];

  if (v21)
  {
    v22 = [v3 time];
    v23 = [v3 startDate];
    v24 = [v3 endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:v22 startDate:v23 endDate:v24 metaData:v4];
  }

  v25 = [v3 persons];

  if (v25)
  {
    v26 = [v3 persons];
    v27 = [v3 suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:v26 suggestionId:v27 metaData:v4];
  }

  v28 = [v3 photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForHoliday:v28 metaData:v4 eventBundle:v3];

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildOutingMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 actions];
  if (v5)
  {
    v6 = [v3 actions];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu", @"actionType", 2];
      v9 = [v3 actions];
      v10 = [v9 filteredArrayUsingPredicate:v8];

      if ([v10 count])
      {
        v11 = [v10 firstObject];
        v5 = [v11 actionName];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v12 = [v3 action];
  if (v12)
  {
    v13 = v12;
    v14 = [v3 action];
    if ([v14 actionType] == 9)
    {
    }

    else
    {
      v15 = [v3 action];
      v16 = [v15 actionType];

      if (v16 != 10)
      {
        goto LABEL_13;
      }
    }

    v17 = [v3 action];
    v18 = [v17 actionName];

    v5 = v18;
  }

LABEL_13:
  if (v5)
  {
    v19 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v5];
    [v4 setObject:v19 forKeyedSubscript:@"action"];

    v20 = [objc_opt_class() keywordFromString:v5];
    [v4 setObject:v20 forKeyedSubscript:@"action_type"];
  }

  v21 = [v3 action];
  if (v21)
  {
    v22 = v21;
    v23 = [v3 action];
    v24 = [v23 actionType];

    if (v24 == 11)
    {
      [v4 setObject:@"flight" forKeyedSubscript:@"flight"];
    }
  }

  if ([v3 isSensitive])
  {
    [v4 setObject:@"sensitive" forKeyedSubscript:@"sensitive"];
  }

  v25 = [v3 action];
  v26 = [v3 startDate];
  v27 = [v3 endDate];
  [MOEventBundleMetaDataUtility setMetaDataForDiningAction:v25 metaData:v4 startDate:v26 endDate:v27];

  v28 = [v3 place];
  [MOEventBundleMetaDataUtility setMetaDataForPlace:v28 metaData:v4];

  v29 = [v3 persons];
  v30 = [v3 suggestionID];
  [MOEventBundleMetaDataUtility setMetaDataForPersons:v29 suggestionId:v30 metaData:v4];

  v31 = [v3 time];
  v32 = [v3 startDate];
  v33 = [v3 endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:v31 startDate:v32 endDate:v33 metaData:v4];

  v34 = [v3 photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForHoliday:v34 metaData:v4 eventBundle:v3];

  v35 = [v3 photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForBirthday:v35 metaData:v4 eventBundle:v3];

  [MOEventBundleMetaDataUtility setMetaDataForInvite:v3 metaData:v4];

  return v4;
}

+ (id)buildSharedContentMetaDataForEventBundle:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 alloc];
  v12 = @"default_label";
  v6 = [v4 action];

  v7 = [v6 actionName];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 initWithDictionary:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)buildTimeAtHomeMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 action];
  v6 = [v5 actionName];
  [v4 setObject:v6 forKeyedSubscript:@"default_label"];

  v7 = [v3 action];
  v8 = [v7 actionName];
  v9 = [v8 isEqualToString:@"Hosting at Home"];

  if (v9)
  {
    v10 = &unk_284100A20;
  }

  else
  {
    v10 = &unk_284100A38;
  }

  [v4 setObject:v10 forKeyedSubscript:@"home_activity"];
  v11 = [v3 persons];

  if (v11)
  {
    v12 = [v3 persons];
    v13 = [v3 suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:v12 suggestionId:v13 metaData:v4];
  }

  v14 = [v3 resources];
  [MOEventBundleMetaDataUtility setMetaDataForPhotos:v14 metaData:v4];

  v15 = [v3 time];
  v16 = [v3 startDate];
  v17 = [v3 endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:v15 startDate:v16 endDate:v17 metaData:v4];

  v18 = [v3 photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForHoliday:v18 metaData:v4 eventBundle:v3];

  v19 = [v3 photoTraits];
  [MOEventBundleMetaDataUtility setMetaDataForBirthday:v19 metaData:v4 eventBundle:v3];

  [MOEventBundleMetaDataUtility setMetaDataForInvite:v3 metaData:v4];

  return v4;
}

+ (id)buildSignificantContactMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 persons];
    if (v6)
    {
      v7 = v6;
      v8 = [v3 summarizationGranularity];

      if (v8 != 2)
      {
        v9 = objc_opt_new();
        v10 = [v3 action];
        v11 = [v3 persons];
        v12 = [v11 firstObject];
        v13 = [v12 name];

        v14 = [v10 actionName];
        v15 = v14;
        if (v13)
        {
          v16 = [v14 stringByAppendingString:v13];

          v15 = v16;
        }

        [v9 setObject:v15 forKeyedSubscript:@"default_label"];
        v17 = [v10 actionName];
        v18 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v17];
        [v9 setObject:v18 forKeyedSubscript:@"header"];

        [v9 setObject:v13 forKeyedSubscript:@"title"];
        v19 = [v10 actionName];
        v20 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v19];
        [v9 setObject:v20 forKeyedSubscript:@"action"];

        v21 = objc_opt_class();
        v22 = [v10 actionName];
        v23 = [v21 keywordFromString:v22];
        [v9 setObject:v23 forKeyedSubscript:@"action_type"];

        v24 = [v3 persons];
        v25 = [v3 suggestionID];
        [MOEventBundleMetaDataUtility setMetaDataForPersons:v24 suggestionId:v25 metaData:v9];

        v26 = [v3 time];
        v27 = [v3 startDate];
        v28 = [v3 endDate];
        [MOEventBundleMetaDataUtility setMetaDataForTime:v26 startDate:v27 endDate:v28 metaData:v9];

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if ([v3 summarizationGranularity] != 2 || (objc_msgSend(v3, "isAggregatedAndSuppressed") & 1) != 0)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v9 = objc_opt_new();
  [v9 setObject:@"contact_summary" forKeyedSubscript:@"summary_type"];
  v29 = [v3 persons];
  v30 = [v3 suggestionID];
  [MOEventBundleMetaDataUtility setMetaDataForPersons:v29 suggestionId:v30 metaData:v9];

  v10 = [v3 time];
  v13 = [v3 startDate];
  v15 = [v3 endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:v10 startDate:v13 endDate:v15 metaData:v9];
LABEL_12:

LABEL_13:

  return v9;
}

+ (id)buildMediaPlayMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v6 = [v3 resources];
  if (!v6)
  {

    goto LABEL_19;
  }

  v7 = v6;
  v8 = [v3 summarizationGranularity];

  if (v8 == 2)
  {
LABEL_19:
    if ([v3 summarizationGranularity] != 2 || (objc_msgSend(v3, "isAggregatedAndSuppressed") & 1) != 0)
    {
      v9 = 0;
      goto LABEL_35;
    }

    v41 = objc_autoreleasePoolPush();
    v9 = objc_opt_new();
    v53 = [v3 resources];
    v10 = [v53 firstObject];

    [v9 setObject:@"media_summary" forKeyedSubscript:@"summary_type"];
    v54 = MEMORY[0x277CCABB0];
    v55 = [v3 resources];
    v56 = [v54 numberWithUnsignedInteger:{objc_msgSend(v55, "count")}];
    [v9 setObject:v56 forKeyedSubscript:@"media_event_count"];

    v57 = [v3 resources];
    v58 = [v57 firstObject];
    v59 = [v58 getDictionary];
    v12 = [v59 objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

    if (([v12 isEqual:MOMediaPlayMetaDataKeyPlayerMediaTypeSongAlbum] & 1) != 0 || (objc_msgSend(v12, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist) & 1) != 0 || objc_msgSend(v12, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum))
    {
      v60 = MEMORY[0x277CCABB0];
      v61 = [v3 events];
      v62 = [v60 numberWithUnsignedInteger:{objc_msgSend(v61, "count")}];
      [v9 setObject:v62 forKeyedSubscript:@"media_event_count"];
    }

    v63 = [v3 resources];
    v64 = [v63 firstObject];
    v65 = [v64 getDictionary];
    v66 = [v65 objectForKeyedSubscript:@"media_type"];
    [v9 setObject:v66 forKeyedSubscript:@"media_type"];

    v67 = [v3 action];
    v68 = [v67 actionName];
    if (([v68 isEqualToString:@"songs_on_repeat"] & 1) == 0)
    {
      v69 = [v3 action];
      v70 = [v69 actionName];
      if (([v70 isEqualToString:@"song_on_repeat"] & 1) == 0)
      {
        v79 = [v3 action];
        [v79 actionName];
        v88 = v12;
        v81 = v80 = v41;
        v86 = [v81 isEqualToString:@"media_on_repeat"];

        v41 = v80;
        v12 = v88;

        if ((v86 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

LABEL_30:
    v71 = [v3 action];
    v72 = [v71 actionName];
    [v9 setObject:v72 forKeyedSubscript:@"media_on_repeat"];

LABEL_31:
    v73 = [v3 action];
    v74 = [v73 actionName];
    v75 = [v74 isEqualToString:@"media_on_repeat_third_party"];

    if (v75)
    {
      v76 = [v3 action];
      v77 = [v76 actionName];
      [v9 setObject:v77 forKeyedSubscript:@"media_on_repeat_third_party"];
    }

    v52 = [v10 getDictionary];
    v17 = [v52 objectForKeyedSubscript:@"third_party_dominate_value"];
    [v9 setObject:v17 forKeyedSubscript:@"third_party_dominate_value"];
    goto LABEL_34;
  }

  v84 = objc_autoreleasePoolPush();
  v9 = objc_opt_new();
  v10 = [v3 action];
  v11 = [v3 resources];
  v12 = [v11 firstObject];

  v13 = [v12 getDictionary];
  v87 = [v13 objectForKeyedSubscript:@"media_album"];

  v14 = MEMORY[0x277CCACA8];
  v15 = [v10 actionName];
  v16 = [v12 name];
  v17 = [v14 stringWithFormat:@"%@: %@", v15, v16];

  [v9 setObject:v17 forKeyedSubscript:@"default_label"];
  v18 = [v10 actionName];
  v19 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v18];
  [v9 setObject:v19 forKeyedSubscript:@"header"];

  v20 = MEMORY[0x277CCACA8];
  v21 = [v12 name];
  v22 = [v20 stringWithFormat:@"%@", v21];
  [v9 setObject:v22 forKeyedSubscript:@"title"];

  v23 = MEMORY[0x277CCABB0];
  v24 = [v3 resources];
  v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
  [v9 setObject:v25 forKeyedSubscript:@"media_event_count"];

  v26 = [v12 getDictionary];
  v27 = [v26 objectForKeyedSubscript:@"MOMediaPlayMetaDataKeyPlayerMediaTypeKey"];

  v85 = v27;
  if (([v27 isEqual:MOMediaPlayMetaDataKeyPlayerMediaTypeSongAlbum] & 1) != 0 || (objc_msgSend(v27, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypePodcastArtist) & 1) != 0 || objc_msgSend(v27, "isEqual:", MOMediaPlayMetaDataKeyPlayerMediaTypeThirdPartyMediaAlbum))
  {
    v28 = MEMORY[0x277CCABB0];
    v29 = [v3 events];
    v30 = [v28 numberWithUnsignedInteger:{objc_msgSend(v29, "count")}];
    [v9 setObject:v30 forKeyedSubscript:@"media_event_count"];
  }

  v31 = [v12 getDictionary];
  v32 = [v31 objectForKeyedSubscript:@"media_type"];
  [v9 setObject:v32 forKeyedSubscript:@"media_type"];

  [v9 setObject:v87 forKeyedSubscript:@"media_album"];
  v33 = [v3 time];
  v34 = [v3 startDate];
  v35 = [v3 endDate];
  [MOEventBundleMetaDataUtility setMetaDataForTime:v33 startDate:v34 endDate:v35 metaData:v9];

  v36 = [v10 actionName];
  if (([v36 isEqualToString:@"songs_on_repeat"] & 1) == 0)
  {
    v37 = [v10 actionName];
    if (![v37 isEqualToString:@"song_on_repeat"])
    {
      v82 = [v10 actionName];
      v83 = [v82 isEqualToString:@"media_on_repeat"];

      if ((v83 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

LABEL_12:
  v38 = [v10 actionName];
  [v9 setObject:v38 forKeyedSubscript:@"media_on_repeat"];

LABEL_13:
  v39 = [v10 actionName];
  v40 = [v39 isEqualToString:@"media_on_repeat_third_party"];

  v41 = v84;
  if (v40)
  {
    v42 = [v10 actionName];
    [v9 setObject:v42 forKeyedSubscript:@"media_on_repeat_third_party"];
  }

  v43 = [v10 actionName];
  v44 = [v43 isEqualToString:@"played_media_sessions"];

  if (v44)
  {
    v45 = [v10 actionName];
    [v9 setObject:v45 forKeyedSubscript:@"played_media_sessions"];
  }

  v46 = [v10 actionName];
  [v9 setObject:v46 forKeyedSubscript:@"action"];

  v47 = objc_opt_class();
  v48 = [v10 actionName];
  v49 = [v47 keywordFromString:v48];
  [v9 setObject:v49 forKeyedSubscript:@"action_type"];

  v50 = [v12 getDictionary];
  v51 = [v50 objectForKeyedSubscript:@"third_party_dominate_value"];
  [v9 setObject:v51 forKeyedSubscript:@"third_party_dominate_value"];

  v52 = v87;
LABEL_34:

  objc_autoreleasePoolPop(v41);
LABEL_35:

  return v9;
}

+ (id)buildPhotoMemoryMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  if (v4)
  {
    v5 = [v3 resources];

    if (v5)
    {
      v4 = objc_opt_new();
      v6 = [v3 action];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"Memories from Photos"];
      v8 = [v6 actionName];
      v9 = [v8 length];

      if (v9 >= 2)
      {
        [v4 setObject:v7 forKeyedSubscript:@"default_label"];
        v10 = [v6 actionName];
        [v4 setObject:v10 forKeyedSubscript:@"title"];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)buildTrendMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 events];
  v6 = [v5 firstObject];
  v7 = [v6 category];

  if (v7 == 10)
  {
    v8 = [v3 action];
    v9 = [v3 persons];
    v10 = [v9 firstObject];
    v11 = [v10 name];

    v12 = [v8 actionName];
    v13 = [v12 stringByAppendingString:v11];

    [v4 setObject:v13 forKeyedSubscript:@"default_label"];
    v14 = [v8 actionName];
    v15 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v14];
    [v4 setObject:v15 forKeyedSubscript:@"header"];

    [v4 setObject:v11 forKeyedSubscript:@"title"];
    v16 = [v8 actionName];
    v17 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v16];
    [v4 setObject:v17 forKeyedSubscript:@"action"];

    v18 = objc_opt_class();
    v19 = [v8 actionName];
    v20 = [v18 keywordFromString:v19];
    [v4 setObject:v20 forKeyedSubscript:@"action_type"];

    v21 = [v3 persons];
    v22 = [v3 suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:v21 suggestionId:v22 metaData:v4];
  }

  return v4;
}

+ (id)buildEvergreenMetaDataForEventBundle:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = [a3 resources];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        if ([v8 type] == 9)
        {
          v27 = v3;
          v9 = objc_opt_new();
          v10 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:@"EVERGREEN_LABEL"];
          [v9 setObject:v10 forKeyedSubscript:@"default_label"];

          v11 = MEMORY[0x277CCACA8];
          v12 = [v8 name];
          v13 = [v11 stringWithFormat:@"%@_%@", @"evergreen_type", v12];

          v14 = [v8 name];
          v28 = v9;
          [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"evergreen_type" extendedKeyword:v13 value:v14 metaData:v9];

          v15 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [MOEventBundleMetaDataUtility buildEvergreenMetaDataForEventBundle:v8];
          }

          v16 = [v8 promptCount];
          if (v16)
          {
            for (j = 0; j != v16; ++j)
            {
              v18 = [v8 promptIndexes];
              v19 = [v18 objectAtIndex:j];

              if (v19)
              {
                v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"evergreen_slot_", j];
                [v28 setObject:v19 forKeyedSubscript:v20];
                v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", @"evergreen_index", objc_msgSend(v19, "intValue")];
                v22 = [v19 stringValue];
                [MOEventBundleMetaDataUtility setMetaDataWithKeyword:v20 extendedKeyword:v21 value:v22 metaData:v28];
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

          v3 = v27;
          goto LABEL_22;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
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

+ (id)buildTimeContextMetaDataForEventBundle:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 action];
  v6 = [v5 actionType];

  v7 = [v3 action];
  if (v6 == 4)
  {
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:v7 metaData:v4];
  }

  else
  {
    [MOEventBundleMetaDataUtility setMetaDataForAction:v7 metaData:v4];
  }

  v8 = [v3 actions];

  if (v8)
  {
    v9 = [v3 actions];
    [MOEventBundleMetaDataUtility setMetaDataForActions:v9 metaData:v4];
  }

  v10 = [v3 place];

  if (v10)
  {
    v11 = [v3 place];
    [MOEventBundleMetaDataUtility setMetaDataForPlace:v11 metaData:v4];
  }

  v12 = [v3 places];

  if (v12)
  {
    v13 = [v3 places];
    [MOEventBundleMetaDataUtility setMetaDataForPlaces:v13 metaData:v4];
  }

  v14 = [v3 time];

  if (v14)
  {
    v15 = [v3 time];
    v16 = [v3 startDate];
    v17 = [v3 endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:v15 startDate:v16 endDate:v17 metaData:v4];
  }

  v18 = [v3 persons];

  if (v18)
  {
    v19 = [v3 persons];
    v20 = [v3 suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:v19 suggestionId:v20 metaData:v4];
  }

  v21 = [v3 action];
  if ([v21 actionType] != 4)
  {
    goto LABEL_17;
  }

  v22 = [v3 concurrentMediaAction];

  if (v22)
  {
    v21 = [v3 concurrentMediaAction];
    [MOEventBundleMetaDataUtility setMetaDataForActivityConcurrentMediaAction:v21 metaData:v4];
LABEL_17:
  }

  if ([v3 bundleSubType] == 202 && objc_msgSend(v3, "summarizationGranularity") == 2 && (objc_msgSend(v3, "isAggregatedAndSuppressed") & 1) == 0)
  {
    [v4 setObject:@"workout_summary" forKeyedSubscript:@"summary_type"];
  }

  v23 = _mo_log_facility_get_os_log(MOLogFacilitySummarization);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [v3 startDate];
    v25 = [v4 allKeys];
    v28 = 138412546;
    v29 = v24;
    v30 = 2112;
    v31 = v25;
    _os_log_impl(&dword_22D8C5000, v23, OS_LOG_TYPE_INFO, "build meta for time context bundle, bundle startDate, %@, metaData, %@", &v28, 0x16u);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildTimeContextTransitMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 action];

  if (v5)
  {
    v6 = [v3 action];
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:v6 metaData:v4];
  }

  v7 = [v3 places];

  if (v7)
  {
    v8 = [v3 places];
    [MOEventBundleMetaDataUtility setMetaDataForPlaces:v8 metaData:v4];
  }

  v9 = [v3 time];

  if (v9)
  {
    v10 = [v3 time];
    v11 = [v3 startDate];
    v12 = [v3 endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:v10 startDate:v11 endDate:v12 metaData:v4];
  }

  [v4 setObject:@"transit_summary" forKeyedSubscript:@"summary_type"];
  v13 = [v3 places];
  v14 = [v13 firstObject];

  if (([v14 placeType] == 2 || objc_msgSend(v14, "placeType") == 3) && objc_msgSend(v14, "placeType") != 4 && objc_msgSend(v14, "placeType") != 5 && objc_msgSend(v14, "proposition") != 4)
  {
    [v4 setObject:@"YES" forKeyedSubscript:@"destination_format"];
  }

  return v4;
}

+ (id)buildTripMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 action];
  v6 = [v5 actionType];

  if (v6 == 2)
  {
    v7 = [v3 action];
    [MOEventBundleMetaDataUtility setMetaDataForAction:v7 metaData:v4];
  }

  if ([v3 isSensitive])
  {
    [v4 setObject:@"sensitive" forKeyedSubscript:@"sensitive"];
  }

  v8 = [v3 place];

  if (v8)
  {
    v9 = [v3 place];
    [MOEventBundleMetaDataUtility setMetaDataForPlace:v9 metaData:v4];

    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"placeType", &unk_284100618];
    v11 = [v3 places];
    v12 = [v11 filteredArrayUsingPredicate:v10];

    v13 = [v3 place];
    [v13 placeNameConfidence];
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

  v23 = [v3 time];

  if (v23)
  {
    v24 = [v3 time];
    v25 = [v3 startDate];
    v26 = [v3 endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:v24 startDate:v25 endDate:v26 metaData:v4];
  }

  v27 = [v3 persons];

  if (v27)
  {
    v28 = [v3 persons];
    v29 = [v3 suggestionID];
    [MOEventBundleMetaDataUtility setMetaDataForPersons:v28 suggestionId:v29 metaData:v4];
  }

  return v4;
}

+ (id)buildClusteringMetaDataForEventBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 getSubTypeString];
  [v4 setObject:v5 forKeyedSubscript:@"cluster_subtype"];

  v6 = [v3 action];
  v7 = [v6 actionType];

  v8 = [v3 action];
  if (v7 == 4)
  {
    [MOEventBundleMetaDataUtility setMetaDataForActivityAction:v8 metaData:v4];
  }

  else
  {
    [MOEventBundleMetaDataUtility setMetaDataForAction:v8 metaData:v4];
  }

  v9 = [v3 place];

  if (v9)
  {
    v10 = [v3 place];
    [MOEventBundleMetaDataUtility setMetaDataForPlace:v10 metaData:v4];
  }

  v11 = [v3 time];

  if (v11)
  {
    v12 = [v3 time];
    v13 = [v3 startDate];
    v14 = [v3 endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:v12 startDate:v13 endDate:v14 metaData:v4];
  }

  return v4;
}

+ (id)buildThematicSummaryMetaDataForEventBundle:(id)a3
{
  v276 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 getSubTypeString];
  [v6 setObject:v7 forKeyedSubscript:@"thematic_summary_subtype"];

  v8 = [v5 subBundleIDs];
  v253 = v5;
  if ([v8 count] < 3)
  {
    goto LABEL_10;
  }

  v9 = [v5 clusterMetadata];
  v10 = [v9 phenotype];
  v11 = [v10 objectForKeyedSubscript:@"timeTag"];
  if (!v11)
  {
    v254 = [v5 clusterMetadata];
    v3 = [v254 phenotype];
    v4 = [v3 objectForKeyedSubscript:@"timeString"];
    if (!v4)
    {
      v14 = 0;
LABEL_7:

      goto LABEL_8;
    }
  }

  v12 = [v5 clusterMetadata];
  v13 = [v12 weekOfYearHistogram];
  v14 = [v13 count] > 2;

  v5 = v253;
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_8:

  if (!v14)
  {
    goto LABEL_11;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v6 setObject:v8 forKeyedSubscript:@"is_routine"];
LABEL_10:

LABEL_11:
  v15 = [v5 clusterMetadata];
  v16 = [v15 phenotype];
  v17 = [v16 objectForKeyedSubscript:@"holiday"];
  if (v17)
  {
    v18 = v17;
    v19 = [v5 clusterMetadata];
    v20 = [v19 phenotype];
    v21 = [v20 objectForKeyedSubscript:@"holiday"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = v253;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }

    v15 = [v253 clusterMetadata];
    v16 = [v15 phenotype];
    v23 = [v16 objectForKeyedSubscript:@"holiday"];
    [v6 setObject:v23 forKeyedSubscript:@"holiday_name"];
  }

LABEL_15:
  v24 = [v5 clusterMetadata];
  v25 = [v24 phenotype];
  v26 = [v25 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
  v27 = 0x277CCA000uLL;
  objc_opt_class();
  v28 = objc_opt_isKindOfClass();

  if (v28)
  {
    v29 = [v5 clusterMetadata];
    v30 = [v29 phenotype];
    v31 = [v30 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
    [v6 setObject:v31 forKeyedSubscript:@"photo_trait_subject"];
  }

  v32 = [v5 clusterMetadata];
  v33 = [v32 phenotype];
  v34 = [v33 objectForKeyedSubscript:@"withFamily"];

  if (v34)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"with_family"];
  }

  v35 = [v5 clusterMetadata];
  v36 = [v35 phenotype];
  v37 = [v36 objectForKeyedSubscript:@"withFriend"];

  if (v37)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"with_friends"];
  }

  v38 = [v5 clusterMetadata];
  v39 = [v38 phenotype];
  v40 = [v39 objectForKeyedSubscript:@"withMyPet"];

  if (v40)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"with_pets"];
  }

  v41 = [v5 clusterMetadata];
  v42 = [v41 phenotypePersonUUIDs];
  v43 = [v42 count];

  v248 = v6;
  if (v43)
  {
    v44 = [v5 clusterMetadata];
    v45 = [v44 phenotype];
    v46 = [v45 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

    if (v46)
    {
      v47 = objc_opt_new();
      v48 = [v5 clusterMetadata];
      v49 = [v48 contactNamesHistogram];
      v50 = [v49 keysSortedByValueUsingComparator:&__block_literal_global_600];

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
            v53 = [v5 persons];
            v54 = [v53 countByEnumeratingWithState:&v260 objects:v274 count:16];
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
                    objc_enumerationMutation(v53);
                  }

                  v58 = *(*(&v260 + 1) + 8 * j);
                  v59 = [v58 name];
                  v60 = [v59 isEqualToString:v52];

                  if (v60)
                  {
                    [v47 addObject:v58];
                  }
                }

                v55 = [v53 countByEnumeratingWithState:&v260 objects:v274 count:16];
              }

              while (v55);
            }

            v5 = v253;
          }

          v255 = [obj countByEnumeratingWithState:&v264 objects:v275 count:16];
        }

        while (v255);
      }

      v61 = v47;
      v62 = [v5 suggestionID];
      v6 = v248;
      [MOEventBundleMetaDataUtility setMetaDataForPersons:v61 suggestionId:v62 metaData:v248 sortBycomparePersons:0];

      v27 = 0x277CCA000;
    }

    else
    {
      v63 = MEMORY[0x277CCAC30];
      v64 = [v5 clusterMetadata];
      v65 = [v64 phenotypePersonUUIDs];
      v66 = [v63 predicateWithFormat:@"contactIdentifier IN %@", v65];

      v67 = [v5 persons];
      v61 = [v67 filteredArrayUsingPredicate:v66];

      v68 = [v5 suggestionID];
      [MOEventBundleMetaDataUtility setMetaDataForPersons:v61 suggestionId:v68 metaData:v6 sortBycomparePersons:1];
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"with_contact"];
  }

  v69 = [v5 clusterMetadata];
  v70 = [v69 phenotype];
  v71 = [v70 objectForKeyedSubscript:@"placeName"];

  v72 = [v5 clusterMetadata];
  v73 = [v72 phenotype];
  v74 = [v73 objectForKeyedSubscript:@"combinedPlaceType"];

  v75 = [v5 clusterMetadata];
  v76 = [v75 phenotype];
  v77 = [v76 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];

  v78 = [v5 clusterMetadata];
  v79 = [v78 phenotype];
  v252 = [v79 objectForKeyedSubscript:@"enclosingAreaName"];

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
    v85 = [v71 lowercaseString];
    v86 = [v85 isEqualToString:@"home"];

    if (v86)
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"at_home"];
      [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"not_home"];
    }
  }

  if ([v74 length])
  {
    v87 = [v74 lowercaseString];
    v88 = [v87 isEqualToString:@"home"];

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
    v94 = v93;
LABEL_70:

    goto LABEL_71;
  }

  v117 = [v5 places];
  v118 = [v117 count];

  if (v118 >= 2)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"multiple_places"];
    v119 = [v6 objectForKeyedSubscript:@"place"];

    if (!v119)
    {
      v94 = [v5 places];
      v120 = [v94 firstObject];
      v121 = [v120 placeName];
      [v6 setObject:v121 forKeyedSubscript:@"place"];

      goto LABEL_70;
    }
  }

LABEL_71:
  v247 = v74;
  v95 = [v5 clusterMetadata];
  v96 = [v95 phenotype];
  v97 = [v96 objectForKeyedSubscript:@"secondLevelActivityType"];

  v98 = [v5 clusterMetadata];
  v99 = [v98 phenotype];
  v100 = v99;
  v246 = v77;
  if (v97)
  {
    v101 = [v99 objectForKeyedSubscript:@"secondLevelActivityType"];

    v102 = v253;
    if ([v101 isEqualToString:@"eating out"])
    {
      v103 = [v6 objectForKeyedSubscript:@"at_home"];

      if (v103)
      {
        v104 = [@"dining" lowercaseString];
        v105 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v104];
        [v6 setObject:v105 forKeyedSubscript:@"action"];

        v106 = objc_opt_class();
        v107 = [@"dining" lowercaseString];
        v108 = [v106 keywordFromString:v107];
        [v6 setObject:v108 forKeyedSubscript:@"action_type"];

        v109 = @"prompt_type";
        v110 = v6;
        v111 = @"dining";
      }

      else
      {
        v122 = [@"eating out" lowercaseString];
        v123 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v122];
        [v6 setObject:v123 forKeyedSubscript:@"action"];

        v124 = objc_opt_class();
        v125 = [@"eating out" lowercaseString];
        v126 = [v124 keywordFromString:v125];
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
      v127 = [@"shopping" lowercaseString];
      v128 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v127];
      [v6 setObject:v128 forKeyedSubscript:@"action"];

      v129 = objc_opt_class();
      v130 = [@"shopping" lowercaseString];
      v131 = [v129 keywordFromString:v130];
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

    v136 = [v253 action];
    v137 = [v136 actionType];

    if (v137 != 4)
    {
      v221 = [v253 action];
      v222 = [v221 actionName];
      if ([v222 isEqualToString:@"Time at Home"])
      {
      }

      else
      {
        v230 = [v253 action];
        v231 = [v230 actionName];
        v232 = [v231 isEqualToString:@"visit"];

        if ((v232 & 1) == 0)
        {
          v233 = [v253 action];
          v234 = [v233 actionName];
          v235 = [v234 lowercaseString];
          v236 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v235];
          [v6 setObject:v236 forKeyedSubscript:@"action"];

          v237 = objc_opt_class();
          v238 = [v253 action];
          v239 = [v238 actionName];
          v240 = [v239 lowercaseString];
          v241 = [v237 keywordFromString:v240];
          [v6 setObject:v241 forKeyedSubscript:@"action_type"];
        }
      }

      v27 = 0x277CCA000;
      goto LABEL_96;
    }

    v138 = [v253 action];
    v139 = [v138 actionName];
    [MOEventBundleMetaDataUtility setActivityNameForThematicSummaryFromActionName:v139 metaData:v6 keyword:@"action" keywordType:@"action_type"];

LABEL_94:
    [v6 setObject:@"workouts" forKeyedSubscript:@"diversity_key"];
    v135 = @"prompt_type";
    v134 = @"workout";
    goto LABEL_95;
  }

  v112 = [v99 objectForKeyedSubscript:@"topLevelActivityType"];

  v102 = v253;
  if (!v112)
  {
    goto LABEL_97;
  }

  v113 = [v253 clusterMetadata];
  v114 = [v113 phenotype];
  v101 = [v114 objectForKeyedSubscript:@"topLevelActivityType"];

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
  v140 = [v102 clusterMetadata];
  v141 = [v140 phenotype];
  v142 = [v141 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
  v143 = *(v27 + 3240);
  objc_opt_class();
  v144 = objc_opt_isKindOfClass();

  if (v144)
  {
    v145 = [v102 clusterMetadata];
    v146 = [v145 phenotype];
    v147 = [v146 objectForKeyedSubscript:@"topLevelActivityType"];

    v148 = [v6 objectForKeyedSubscript:@"at_home"];
    v149 = [v148 BOOLValue];

    v150 = [objc_opt_class() activityPhotoTraitLabelMetadataForThematicSummary:v147 AtHome:v149];

    if ([v150 length])
    {
      v151 = [v150 lowercaseString];
      v152 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v151];
      [v6 setObject:v152 forKeyedSubscript:@"action"];

      v153 = objc_opt_class();
      v154 = [v150 lowercaseString];
      v155 = [v153 keywordFromString:v154];
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
      v197 = [v102 actions];
      v198 = [v197 countByEnumeratingWithState:&v256 objects:v273 count:16];
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
              objc_enumerationMutation(v197);
            }

            if ([*(*(&v256 + 1) + 8 * k) actionType] == 4)
            {
              ++v200;
            }
          }

          v199 = [v197 countByEnumeratingWithState:&v256 objects:v273 count:16];
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

  v159 = [v102 startDate];
  if (v159)
  {
    v160 = v159;
    v161 = [v102 endDate];

    if (v161)
    {
      v162 = [MEMORY[0x277CBEA80] currentCalendar];
      v163 = [v102 startDate];
      v164 = [v102 endDate];
      v165 = [v162 isDate:v163 inSameDayAsDate:v164];

      if (v165)
      {
        [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"day_summary"];
      }

      v102 = v253;
    }
  }

  v166 = [v102 clusterMetadata];
  v167 = [v166 phenotype];
  v168 = [v167 objectForKeyedSubscript:@"timeTag"];
  v169 = v102;
  if (v168)
  {
    v170 = v168;
    v171 = [v102 clusterMetadata];
    v172 = [v171 phenotype];
    v173 = [v172 objectForKeyedSubscript:@"timeString"];

    if (v173)
    {
      v174 = [v169 clusterMetadata];
      v175 = [v174 phenotype];
      v176 = [v175 objectForKeyedSubscript:@"timeString"];

      v177 = [v169 clusterMetadata];
      v178 = [v177 phenotype];
      v179 = [v178 objectForKeyedSubscript:@"timeTag"];

      v180 = [MOTime timeStringSingularToPluralForm:v179];
      v181 = MEMORY[0x277CCACA8];
      v182 = [v179 capitalizedString];
      v183 = [v181 stringWithFormat:@"%@ %@", v176, v182];

      v184 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v183];
      [v6 setObject:v184 forKeyedSubscript:@"time"];

      if (v180)
      {
        v185 = MEMORY[0x277CCACA8];
        v186 = [v180 capitalizedString];
        v187 = [v185 stringWithFormat:@"%@ %@", v176, v186];

        v188 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v187];
        [v6 setObject:v188 forKeyedSubscript:@"times"];
      }

      v189 = obja;
      goto LABEL_131;
    }
  }

  else
  {
  }

  v190 = [v169 clusterMetadata];
  v191 = [v190 phenotype];
  v192 = [v191 objectForKeyedSubscript:@"timeTag"];

  v193 = [v169 clusterMetadata];
  v194 = [v193 phenotype];
  v195 = v194;
  if (v192)
  {
    v176 = [v194 objectForKeyedSubscript:@"timeTag"];

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

  v203 = [v194 objectForKeyedSubscript:@"timeString"];

  v169 = v253;
  v189 = obja;
  if (!v203)
  {
    goto LABEL_133;
  }

  v204 = [v253 clusterMetadata];
  v205 = [v204 phenotype];
  v176 = [v205 objectForKeyedSubscript:@"timeString"];

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
    v225 = [v169 clusterMetadata];
    v226 = [v225 phenotype];
    *buf = 138478083;
    v269 = v226;
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

+ (id)buildStateOfMindMetaDataForEventBundle:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a3;
  +[MOEventBundleMetaDataUtility defineClassCollections];
  v4 = objc_opt_new();
  v5 = [v3 time];

  if (v5)
  {
    v6 = [v3 time];
    v7 = [v3 startDate];
    v8 = [v3 endDate];
    [MOEventBundleMetaDataUtility setMetaDataForTime:v6 startDate:v7 endDate:v8 metaData:v4];
  }

  if ([v3 bundleSubType] == 802)
  {
    v9 = @"momentary_emotion";
  }

  else
  {
    v9 = @"daily_mood";
  }

  [v4 setObject:v9 forKeyedSubscript:@"reflective_interval"];
  v10 = [v3 action];
  v11 = [v10 actionSubtype];

  v12 = v11 - 1;
  if ((v11 - 1) <= 6)
  {
    v13 = off_278773940[v12];
    [v4 setObject:off_278773908[v12] forKeyedSubscript:@"valence_classification_granular"];
    [v4 setObject:v13 forKeyedSubscript:@"valence_classification"];
  }

  v14 = [v3 action];
  v15 = [v14 actionMetaData];
  v16 = [v15 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];

  if (v16)
  {
    v17 = [v3 action];
    v18 = [v17 actionMetaData];
    v19 = [v18 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
    [v4 setObject:v19 forKeyedSubscript:@"state_of_mind_app_name"];
  }

  v20 = [v3 metaDataForRank];
  v21 = [v20 objectForKey:@"StateOfMindLabels"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
  [v4 setObject:v22 forKeyedSubscript:@"state_of_mind_label_count"];

  if ([v21 count])
  {
    v23 = [v21 objectAtIndexedSubscript:0];
    [v23 intValue];

    v24 = HKUILocalizedStringForStateOfMindLabel();
    v25 = [v24 lowercaseString];
    v26 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v25];
    [v4 setObject:v26 forKeyedSubscript:@"state_of_mind_label_1"];
  }

  if ([v21 count] >= 2)
  {
    v27 = [v21 objectAtIndexedSubscript:1];
    [v27 intValue];

    v28 = HKUILocalizedStringForStateOfMindLabel();
    v29 = [v28 lowercaseString];
    v30 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v29];
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
        v37 = [v3 action];
        if ([v37 actionSubtype] == 2)
        {
          v38 = [noSavoringPromptLabels containsObject:v36];

          if (v38)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v39 = [v3 action];
          if ([v39 actionSubtype] == 3)
          {
            v40 = [noSavoringPromptLabels containsObject:v36];

            if (v40)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v41 = [v3 action];
            if ([v41 actionSubtype] == 4)
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
        v43 = [v3 action];
        if ([v43 actionSubtype] == 5)
        {
          v44 = [noReappraisalPromptLabels containsObject:v36];

          if (v44)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v45 = [v3 action];
          if ([v45 actionSubtype] == 6)
          {
            v46 = [noReappraisalPromptLabels containsObject:v36];

            if (v46)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v47 = [v3 action];
            if ([v47 actionSubtype] == 7)
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

+ (void)setMetaDataForAction:(id)a3 metaData:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    v7 = [v6 actionName];
    v8 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v7];
    [v5 setObject:v8 forKeyedSubscript:@"action"];

    v9 = objc_opt_class();
    v11 = [v6 actionName];

    v10 = [v9 keywordFromString:v11];
    [v5 setObject:v10 forKeyedSubscript:@"action_type"];
  }
}

+ (void)setMetaDataForDiningAction:(id)a3 metaData:(id)a4 startDate:(id)a5 endDate:(id)a6
{
  v21 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (v21)
  {
    v12 = [v21 actionName];
    v13 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v12];
    [v9 setObject:v13 forKeyedSubscript:@"action"];

    v14 = objc_opt_class();
    v15 = [v21 actionName];
    v16 = [v14 keywordFromString:v15];
    [v9 setObject:v16 forKeyedSubscript:@"action_type"];

    if ([v21 actionType] == 10)
    {
      v17 = [MOTime mealtagFromStartDate:v10 endDate:v11];
      if (v17 - 2000 <= 2)
      {
        v18 = [MOTime timeStringFromTimeTag:v17];
        if (v18)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"meal_type", v18];
          v20 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v18];
          [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"meal_type" extendedKeyword:v19 value:v20 metaData:v9];
        }
      }
    }
  }
}

+ (void)setMetaDataForActions:(id)a3 metaData:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 count])
  {
    v7 = objc_opt_new();
    v48 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = v5;
    obj = v5;
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
            v14 = [v11 actionName];
            [MOEventBundleMetaDataUtility setActivityNameFromActionName:v14 metaData:v6 keyword:v12 keywordType:v13];
          }

          else
          {
            v15 = [v11 actionName];
            v16 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v15];
            [v6 setObject:v16 forKeyedSubscript:v12];

            v17 = objc_opt_class();
            v14 = [v11 actionName];
            v18 = [v17 keywordFromString:v14];
            [v6 setObject:v18 forKeyedSubscript:v13];
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
          v21 = [v11 actionName];
          v22 = [v9 containsObject:v21];

          if ((v22 & 1) == 0)
          {
            v23 = v6;
            v24 = [v11 actionName];
            [v9 addObject:v24];

            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"unique_action_", objc_msgSend(v9, "count")];
            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", @"unique_action_type", objc_msgSend(v9, "count")];
            if ([v11 actionType] == 4)
            {
              v27 = [v11 actionName];
              [MOEventBundleMetaDataUtility setActivityNameFromActionName:v27 metaData:v6 keyword:v25 keywordType:v26];

              ++v44;
            }

            else
            {
              v28 = [v11 actionName];
              v29 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v28];
              [v23 setObject:v29 forKeyedSubscript:v25];

              v30 = objc_opt_class();
              v31 = [v11 actionName];
              v32 = [v30 keywordFromString:v31];
              [v23 setObject:v32 forKeyedSubscript:v26];

              v6 = v23;
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
    [v6 setObject:v36 forKeyedSubscript:@"action_count"];

    v37 = [MEMORY[0x277CCABB0] numberWithInt:v50];
    [v6 setObject:v37 forKeyedSubscript:@"activity_count"];

    v38 = [MEMORY[0x277CCABB0] numberWithInt:v47];
    [v6 setObject:v38 forKeyedSubscript:@"unique_action_type_count"];

    v39 = [MEMORY[0x277CCABB0] numberWithInt:v44];
    [v6 setObject:v39 forKeyedSubscript:@"unique_activity_count"];

    v40 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v50)];
    [v6 setObject:v40 forKeyedSubscript:@"visit_count"];

    v5 = v42;
  }

  v41 = *MEMORY[0x277D85DE8];
}

+ (void)setActivityNameFromActionName:(id)a3 metaData:(id)a4 keyword:(id)a5 keywordType:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [a5 lowercaseString];
  v13 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:v12];
  v27 = v9;
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
    [v10 setObject:v17 forKeyedSubscript:{v12, v25}];
    goto LABEL_35;
  }

  v22 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v17, v25];
  [v10 setObject:v22 forKeyedSubscript:v12];

  if ((v18 & 1) == 0)
  {
    v23 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v26];
    [v10 setObject:v23 forKeyedSubscript:v13];
  }

LABEL_35:
  v24 = [objc_opt_class() keywordFromString:v17];
  [v10 setObject:v24 forKeyedSubscript:v11];
}

+ (void)setActivityNameForThematicSummaryFromActionName:(id)a3 metaData:(id)a4 keyword:(id)a5 keywordType:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [a5 lowercaseString];
  v13 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:v12];
  v24 = v9;
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
        [v10 setObject:v15 forKeyedSubscript:v12];
LABEL_26:
        v23 = [objc_opt_class() keywordFromString:v15];
        [v10 setObject:v23 forKeyedSubscript:v11];

        goto LABEL_27;
      }

      v18 = 0;
      v19 = 1;
LABEL_24:
      v21 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v15];
      [v10 setObject:v21 forKeyedSubscript:v12];

      if ((v19 & 1) == 0)
      {
        v22 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v18];
        [v10 setObject:v22 forKeyedSubscript:v13];
      }

      goto LABEL_26;
    }
  }

LABEL_27:
}

+ (void)setMetaDataForActivityAction:(id)a3 metaData:(id)a4
{
  v12 = a3;
  v5 = a4;
  if (v12)
  {
    v6 = [v12 actionName];
    [MOEventBundleMetaDataUtility setActivityNameFromActionName:v6 metaData:v5 keyword:@"action" keywordType:@"action_type"];

    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "actionSubtype")}];
    [v5 setObject:v7 forKeyedSubscript:@"workoutSubtype"];

    v8 = [v12 actionMetaData];
    v9 = [v8 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];

    if (v9)
    {
      v10 = [v12 actionMetaData];
      v11 = [v10 objectForKeyedSubscript:@"MediaActionMetaDataAppName"];
      [v5 setObject:v11 forKeyedSubscript:@"workout_app_name"];
    }
  }
}

+ (void)setMetaDataForMediaAction:(id)a3 metaData:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (v7 && [v7 actionType] == 6)
  {
    v6 = [v7 actionName];
    [v5 setObject:v6 forKeyedSubscript:@"media"];
  }
}

+ (id)mediaKeywordWithType:(unint64_t)a3
{
  if (a3 > 2)
  {
    switch(a3)
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

  if (!a3)
  {
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_title", @"media"];
    goto LABEL_14;
  }

  if (a3 != 2)
  {
    goto LABEL_10;
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"%@_album", @"media"];
  v3 = LABEL_14:;
LABEL_15:

  return v3;
}

+ (void)setMetaDataForActivityConcurrentMediaAction:(id)a3 metaData:(id)a4
{
  v16 = a3;
  v5 = a4;
  if (v16)
  {
    if ([v16 actionType] == 6)
    {
      v6 = [v16 actionMetaData];

      if (v6)
      {
        v7 = [v16 actionName];
        [v5 setObject:v7 forKeyedSubscript:@"media"];

        v8 = [v16 actionMetaData];
        v9 = [v8 objectForKeyedSubscript:@"MediaActionMetaDataMediaType"];
        [v5 setObject:v9 forKeyedSubscript:@"media_type"];

        v10 = [v16 actionMetaData];
        v11 = [v10 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];

        if (v11)
        {
          v12 = [v16 actionMetaData];
          v13 = [v12 objectForKeyedSubscript:@"MediaActionMetaDataMediaInfoType"];

          v14 = [objc_opt_class() mediaKeywordWithType:{objc_msgSend(v13, "intValue")}];
          v15 = [v16 actionName];
          [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"media_name" extendedKeyword:v14 value:v15 metaData:v5];
        }
      }
    }
  }
}

+ (void)setMetaDataWithKeyword:(id)a3 extendedKeyword:(id)a4 value:(id)a5 metaData:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9 && v10 && v11)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v9, @"_string"];
    [v12 setObject:v10 forKeyedSubscript:v9];
    [v12 setObject:v11 forKeyedSubscript:v10];
    [v12 setObject:v11 forKeyedSubscript:v13];
  }

  else
  {
    v13 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2048;
      v20 = [v11 length];
      _os_log_error_impl(&dword_22D8C5000, v13, OS_LOG_TYPE_ERROR, "build meta, keyword, %@, extendedKeyword, %@, value, %lu", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)setMetaDataForTime:(id)a3 startDate:(id)a4 endDate:(id)a5 metaData:(id)a6
{
  v75 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 timeZoneObject];
  v14 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v62 = v13;
    v63 = 2112;
    v64 = v10;
    v65 = 2112;
    v66 = v11;
    v67 = 2112;
    v68 = v9;
    _os_log_impl(&dword_22D8C5000, v14, OS_LOG_TYPE_INFO, "build meta, time zone, %@, startDate, %@, endDate, %@, time, %@", buf, 0x2Au);
  }

  if (v11)
  {
    if ([v11 isBeforeDate:v10])
    {
      v15 = v11;
    }

    else
    {
      v15 = [v11 snapToTheDay];
      if (![v15 isAfterDate:v10])
      {
        goto LABEL_14;
      }

      v16 = v15;

      if (v16)
      {
        if (![v16 isBeforeDate:v10])
        {
          v11 = v16;
          goto LABEL_14;
        }

        v17 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v62 = v10;
          v63 = 2112;
          v64 = v16;
          _os_log_impl(&dword_22D8C5000, v17, OS_LOG_TYPE_INFO, "setMetaDataForTime, startDate, %@, endDate, %@, the timestamps are inverted after snapping.", buf, 0x16u);
        }
      }
    }

    v11 = 0;
LABEL_14:
  }

  if (v9)
  {
    v18 = [v9 timeString];

    if (v18)
    {
      v19 = [v9 timeString];
      v20 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v19];
      [v12 setObject:v20 forKeyedSubscript:@"time"];
    }
  }

  if (!v10)
  {
    v10 = [v9 date];

    v11 = 0;
  }

  if (!v13)
  {
    v23 = v11;
    v21 = v10;
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

  if (v10)
  {
    v21 = [MOTime localTimeOfDate:v10 timeZone:v13];
    v22 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v62 = v13;
      v63 = 2112;
      v64 = v10;
      v65 = 2112;
      v66 = v21;
      _os_log_impl(&dword_22D8C5000, v22, OS_LOG_TYPE_INFO, "build meta, time zone, %@, startDate, %@, localDate, %@", buf, 0x20u);
    }

    if (!v11)
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
    if (!v11)
    {
      goto LABEL_68;
    }
  }

  v23 = [MOTime localTimeOfDate:v11 timeZone:v13];
  v25 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v62 = v13;
    v63 = 2112;
    v64 = v11;
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
    v62 = v13;
    v63 = 2112;
    v64 = v21;
    v65 = 2112;
    v66 = v23;
    _os_log_impl(&dword_22D8C5000, v27, OS_LOG_TYPE_INFO, "build meta after timezone shift, time zone, %@, startDate, %@, endDate, %@", buf, 0x20u);
  }

  v28 = [MOTime dateReferenceTagFromStartDate:v21 endDate:v23];
  if (v9)
  {
    [v9 setDateReferenceTag:v28];
  }

  if (v28 >= 2)
  {
    v29 = [MOTime timeStringFromTimeTag:v28];
    [v12 setObject:v29 forKeyedSubscript:@"date_referece_time_tag"];
  }

  if ((v28 & 0xFFFFFFFFFFFFFFFELL) == 0x64)
  {
    v30 = [MOTime timeStringFromTimeTag:v28];
    v31 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v30];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"date_reference_", v30];
    [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"date_reference" extendedKeyword:v32 value:v31 metaData:v12];
  }

  v33 = [MEMORY[0x277CBEAA8] date];
  v34 = [v33 dateByAddingTimeInterval:-604800.0];

  v58 = v34;
  if ([v21 isAfterDate:v34])
  {
    [v12 setObject:&unk_284100A20 forKeyedSubscript:@"date_referece_recency"];
  }

  v60 = v9;
  v56 = [MOTime typeOfDayTagFromStartDate:v21 endDate:v23 timeZone:0];
  if (v56 == 10001)
  {
    v35 = [MOTime timeStringFromTimeTag:10001];
    [v12 setObject:v35 forKeyedSubscript:@"typeOfDay"];
  }

  v59 = v13;
  v36 = [MOTime dayOfWeekTagFromStartDate:v21 endDate:v23];
  v37 = v36 - 102;
  if (v36 - 102 <= 6)
  {
    v38 = [MOTime timeStringFromTimeTag:v36];
    v39 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v38];
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"date_reference_", v38];
    [MOEventBundleMetaDataUtility setMetaDataWithKeyword:@"date_reference_weekday" extendedKeyword:v40 value:v39 metaData:v12];
  }

  v57 = v36;
  v41 = v12;
  v42 = [MOTime timetagFromStartDate:v21 endDate:v23];
  if (v42 - 2 <= 6)
  {
    v43 = [MOTime timeStringFromTimeTag:v42];
    v44 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v43];
    [v12 setObject:v44 forKeyedSubscript:@"timeOfDay"];

    v45 = [v12 objectForKey:@"time"];

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
  v12 = v41;
  v13 = v59;
  v9 = v60;
LABEL_68:

  v55 = *MEMORY[0x277D85DE8];
}

+ (void)setMetaDataForPlace:(id)a3 metaData:(id)a4
{
  v32 = a3;
  v5 = a4;
  v6 = [v32 placeName];
  if (v6)
  {
    v7 = v6;
    v8 = [v32 placeType];

    if (v8)
    {
      if ([v32 placeUserType] && (objc_msgSend(v32, "placeUserType") == 1 || objc_msgSend(v32, "placeUserType") == 2))
      {
        v9 = [v32 placeName];
        v10 = [v9 lowercaseString];
        v11 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v10];
        [v5 setObject:v11 forKeyedSubscript:@"place"];

        v12 = [v32 placeName];
        v13 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v12];
        [v5 setObject:v13 forKeyedSubscript:@"Place"];
      }

      else
      {
        v14 = [v32 placeName];
        [v5 setObject:v14 forKeyedSubscript:@"place"];

        v12 = [v32 placeName];
        [v5 setObject:v12 forKeyedSubscript:@"Place"];
      }

      v15 = [v32 enclosingArea];

      if (v15)
      {
        if ([v32 placeType] != 101 && objc_msgSend(v32, "placeType") != 102)
        {
          v16 = [v32 enclosingArea];
          [v5 setObject:v16 forKeyedSubscript:@"city"];

          v17 = [v32 placeName];
          v18 = [v32 enclosingArea];
          v19 = [v17 containsString:v18];

          if (v19)
          {
            [v5 setObject:@"Yes" forKeyedSubscript:@"place_name_overlap_with_city"];
          }
        }
      }

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "placeType")}];
      [v5 setObject:v20 forKeyedSubscript:@"place_type"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "placeUserType")}];
      [v5 setObject:v21 forKeyedSubscript:@"place_user_type"];

      v22 = +[MOEventRoutine stringOfPlaceUserType:](MOEventRoutine, "stringOfPlaceUserType:", [v32 placeUserType]);
      v23 = v22;
      if (v22)
      {
        v24 = [v22 lowercaseString];
        [v5 setObject:v24 forKeyedSubscript:@"place_user_type_tag"];
      }

      if ([v32 proposition] == 4)
      {
        v25 = [v5 objectForKeyedSubscript:@"flight"];
        v26 = [v25 isEqual:@"flight"];

        if ((v26 & 1) == 0)
        {
          [v5 setObject:&unk_284100A20 forKeyedSubscript:@"vicinity"];
        }
      }

      if ([v32 locationMode] == 2)
      {
        [v5 setObject:&unk_284100A20 forKeyedSubscript:@"trip"];
      }

      if ([v32 placeType] == 3 && (objc_msgSend(v32, "placeNameConfidence"), v27 >= 0.9) || objc_msgSend(v32, "placeType") == 2 && (objc_msgSend(v32, "placeNameConfidence"), v28 >= 0.9) || objc_msgSend(v32, "placeUserType") && objc_msgSend(v32, "placeUserType") < 0x64)
      {
        v29 = @"high";
      }

      else if ([v32 placeType] == 3 && (objc_msgSend(v32, "placeNameConfidence"), v30 >= 0.75) || objc_msgSend(v32, "placeType") == 2 && (objc_msgSend(v32, "placeNameConfidence"), v31 >= 0.5))
      {
        v29 = @"medium";
      }

      else
      {
        v29 = @"low";
      }

      [v5 setObject:v29 forKeyedSubscript:@"confidence"];
    }
  }
}

+ (void)setMetaDataForActivityPlace:(id)a3 metaData:(id)a4
{
  v23 = a3;
  v5 = a4;
  v6 = [v23 placeName];
  if (v6 && [v23 placeType])
  {
    v7 = [v23 placeUserType];

    if (v7 != 2)
    {
      if ([v23 placeUserType] && objc_msgSend(v23, "placeUserType") == 1)
      {
        v8 = [v23 placeName];
        v9 = [v8 lowercaseString];
        v10 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v9];
        [v5 setObject:v10 forKeyedSubscript:@"place"];

        v11 = [v23 placeName];
        v12 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v11];
        [v5 setObject:v12 forKeyedSubscript:@"Place"];
      }

      else
      {
        v13 = [v23 placeName];
        [v5 setObject:v13 forKeyedSubscript:@"place"];

        v11 = [v23 placeName];
        [v5 setObject:v11 forKeyedSubscript:@"Place"];
      }

      v14 = [v23 enclosingArea];

      if (v14)
      {
        if ([v23 placeType] != 101 && objc_msgSend(v23, "placeType") != 102)
        {
          v15 = [v23 enclosingArea];
          [v5 setObject:v15 forKeyedSubscript:@"city"];

          v16 = [v23 placeName];
          v17 = [v23 enclosingArea];
          v18 = [v16 containsString:v17];

          if (v18)
          {
            [v5 setObject:@"Yes" forKeyedSubscript:@"place_name_overlap_with_city"];
          }
        }
      }

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23, "placeType")}];
      [v5 setObject:v19 forKeyedSubscript:@"place_type"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23, "placeUserType")}];
      [v5 setObject:v20 forKeyedSubscript:@"place_user_type"];

      if ([v23 proposition] == 4)
      {
        v21 = [v5 objectForKeyedSubscript:@"flight"];
        v22 = [v21 isEqual:@"flight"];

        if ((v22 & 1) == 0)
        {
          [v5 setObject:&unk_284100A20 forKeyedSubscript:@"vicinity"];
        }
      }
    }
  }

  else
  {
  }
}

+ (void)setMetaDataForPersons:(id)a3 suggestionId:(id)a4 metaData:(id)a5 sortBycomparePersons:(BOOL)a6
{
  v6 = a6;
  v81 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v62 = a5;
  if (v9 && [v9 count])
  {
    v60 = v9;
    v61 = v10;
    if (v6)
    {
      v59 = [MEMORY[0x277CBEB98] setWithArray:v9];
      v58 = [v59 allObjects];
      v11 = [v58 sortedArrayUsingSelector:sel_comparePersons_];
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
        v22 = [v21 firstObject];
        v23 = [v22 name];
        [v62 setObject:v23 forKeyedSubscript:@"me_person"];

        v24 = [v21 firstObject];
        LODWORD(v23) = [v24 mePersonIdentified];

        if (v23)
        {
          [v62 setObject:@"Yes" forKeyedSubscript:@"me_person_identified"];
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
      v34 = v58;
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
      v32 = [v9 filteredArrayUsingPredicate:v35];
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
            [v62 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"with_more_than_three_persons"];
            goto LABEL_48;
          }

          v50 = *(*(&v64 + 1) + 8 * v48);
          if ([v50 mePersonIdentified])
          {
            [v62 setObject:@"Yes" forKeyedSubscript:@"me_person_identified"];
          }

          v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"person_", v49];
          v52 = [v50 name];
          [v62 setObject:v52 forKeyedSubscript:v51];

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

    v9 = v60;
    v10 = v61;
  }

  v53 = *MEMORY[0x277D85DE8];
}

+ (void)setMetaDataForPlaces:(id)a3 metaData:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5 || ![v5 count])
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
  v61 = v5;
  obj = v5;
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
      v13 = [v11 placeName];

      v70 = v12;
      if (v13)
      {
        if ([v11 placeUserType] && objc_msgSend(v11, "placeUserType") == 1)
        {
          v14 = [v11 placeName];
          v15 = [v14 lowercaseString];
          v16 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v15];
          [v6 setObject:v16 forKeyedSubscript:v71];

          v7 = v64;
          v17 = [v11 placeName];
          v18 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v17];
          [v6 setObject:v18 forKeyedSubscript:v12];
        }

        else
        {
          v19 = [v11 placeName];
          [v6 setObject:v19 forKeyedSubscript:v71];

          v17 = [v11 placeName];
          [v6 setObject:v17 forKeyedSubscript:v12];
        }
      }

      v20 = [v11 enclosingArea];

      if (v20 && [v11 placeType] != 101 && objc_msgSend(v11, "placeType") != 102)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", @"city", v9];
        v22 = [v11 enclosingArea];
        [v6 setObject:v22 forKeyedSubscript:v21];

        v23 = [v11 enclosingArea];
        v24 = [v8 containsObject:v23];

        if ((v24 & 1) == 0)
        {
          ++v63;
          v25 = [v11 enclosingArea];
          [v8 addObject:v25];

          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"unique_city_", objc_msgSend(v8, "count")];
          v27 = [v11 enclosingArea];
          [v6 setObject:v27 forKeyedSubscript:v26];
        }

        v7 = v64;
      }

      if ([v11 proposition] == 4)
      {
        v28 = [v6 objectForKeyedSubscript:@"flight"];
        v29 = [v28 isEqual:@"flight"];

        if ((v29 & 1) == 0 && v9 == 1)
        {
          [v6 setObject:&unk_284100A20 forKeyedSubscript:@"vicinity"];
        }
      }

      v30 = [v11 placeName];
      if (!v30)
      {
        goto LABEL_27;
      }

      v31 = v30;
      v32 = v8;
      v33 = [v11 placeName];
      v34 = v7;
      v35 = [v7 containsObject:v33];

      if (v35)
      {
        v7 = v34;
        v8 = v32;
LABEL_27:
        v36 = v70;
        goto LABEL_48;
      }

      v37 = [v11 placeName];
      [v34 addObject:v37];

      v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"unique_place_", objc_msgSend(v34, "count")];
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"Unique_place_", objc_msgSend(v34, "count")];
      v7 = v34;
      if ([v11 placeUserType] && objc_msgSend(v11, "placeUserType") == 1)
      {
        v39 = [v11 placeName];
        [v39 lowercaseString];
        v41 = v40 = v6;
        v42 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v41];
        [v40 setObject:v42 forKeyedSubscript:v67];

        v6 = v40;
        v7 = v64;

        v43 = [v11 placeName];
        v44 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v43];
        [v6 setObject:v44 forKeyedSubscript:v38];
      }

      else
      {
        v45 = [v11 placeName];
        [v6 setObject:v45 forKeyedSubscript:v67];

        v43 = [v11 placeName];
        [v6 setObject:v43 forKeyedSubscript:v38];
      }

      v8 = v32;
      if ([v11 proposition] == 4)
      {
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"vicinity_", objc_msgSend(v7, "count")];
        [v6 setObject:&unk_284100A20 forKeyedSubscript:v46];
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
      [v6 setObject:v50 forKeyedSubscript:v47];

LABEL_48:
      v9 = (v9 + 1);
    }

    v69 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
  }

  while (v69);
LABEL_53:

  v5 = v61;
  v53 = v63;
  v54 = v62;
LABEL_54:
  v55 = [MEMORY[0x277CCABB0] numberWithBool:v54 & 1];
  [v6 setObject:v55 forKeyedSubscript:@"include_low_confidence_place_name"];

  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  [v6 setObject:v56 forKeyedSubscript:@"place_count"];

  v57 = [MEMORY[0x277CCABB0] numberWithInt:v66];
  [v6 setObject:v57 forKeyedSubscript:@"unique_place_count"];

  v58 = [MEMORY[0x277CCABB0] numberWithInt:v53];
  [v6 setObject:v58 forKeyedSubscript:@"unique_city_count"];

  if ([v5 count] >= 2)
  {
    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count") - 1}];
    [v6 setObject:v59 forKeyedSubscript:@"place_count_minus_one"];
  }

  v60 = *MEMORY[0x277D85DE8];
}

+ (void)setMetaDataForPhotos:(id)a3 metaData:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
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
            [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"photo_attached"];
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

+ (id)andStringFromArray:(id)a3 propertyPath:(id)a4 maxCount:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 count];
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
    v13 = [v7 objectAtIndex:v12];
    v14 = [v13 valueForKeyPath:v8];
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

  if (v12 < a5 - 1)
  {
    [v11 appendFormat:@", %@", v14];
    goto LABEL_9;
  }

  [v11 appendFormat:@", %@ and more", v14];

LABEL_13:
  v16 = [v11 copy];

  return v16;
}

+ (void)setMetaDataForHoliday:(id)a3 metaData:(id)a4 eventBundle:(id)a5
{
  v25 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 rankingDictionary];
  v10 = [v9 objectForKeyedSubscript:@"useHolidayLabel"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [v8 bundleSubType];
    v13 = v12 == 204;
    if ([v8 bundleSubType] == 201)
    {
      v14 = MEMORY[0x277CCDBE8];
      v15 = [v8 action];
      v16 = [v15 actionName];
      v17 = [v14 _workoutActivityTypeFromString:v16];

      v13 = v17 == 52 || v12 == 204;
    }

    v19 = [MOMetaDataCurationUtility selectHolidayFromPhotoTraits:v25];
    v20 = v19;
    if (v19 && !v13)
    {
      v21 = [v19 name];
      [v7 setObject:v21 forKeyedSubscript:@"holiday_name"];
    }

    if (v20)
    {
      if (v13)
      {
        v22 = [v20 holidayIdentifier];
        v23 = [v22 isEqualToString:@"Halloween"];

        if (v23)
        {
          v24 = [v20 name];
          [v7 setObject:v24 forKeyedSubscript:@"holiday_name"];
        }
      }
    }
  }
}

+ (void)setMetaDataForBirthday:(id)a3 metaData:(id)a4 eventBundle:(id)a5
{
  v17 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 rankingDictionary];
  v10 = [v9 objectForKeyedSubscript:@"useBirthdayLabel"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [MOMetaDataCurationUtility selectBirthdayFromPhotoTraits:v17];
    if (v12)
    {
      v13 = [MOMetaDataCurationUtility getPersonFromBirthdayPhotoTrait:v12 eventBundle:v8];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 name];
        v16 = [v15 copy];
        [v7 setObject:v16 forKeyedSubscript:@"birthday_person_name"];
      }
    }
  }
}

+ (id)combinedPlaceTypeLabelMetadataForThematicSummary:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Home"])
  {
    v4 = @"home";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:@"Work"])
  {
    v4 = @"work";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:@"School"])
  {
    v4 = @"school";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:@"Gym"])
  {
    v4 = @"gym";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E7F8]])
  {
    v4 = @"amusement parks";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E800]])
  {
    v4 = @"aquariums";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E810]])
  {
    v4 = @"bakeries";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E820]])
  {
    v4 = @"baseball fields";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E828]])
  {
    v4 = @"basketball courts";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E830]])
  {
    v4 = @"beaches";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E838]])
  {
    v4 = @"beauty stores";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E840]])
  {
    v4 = @"bowling alleys";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E848]])
  {
    v4 = @"breweries";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E850]])
  {
    v4 = @"cafes";
    goto LABEL_85;
  }

  v5 = *MEMORY[0x277D0E858];
  if ([v3 isEqualToString:*MEMORY[0x277D0E858]])
  {
LABEL_30:
    v4 = @"campgrounds";
    goto LABEL_85;
  }

  v6 = *MEMORY[0x277D0E868];
  if ([v3 isEqualToString:*MEMORY[0x277D0E868]])
  {
LABEL_32:
    v4 = @"castles";
    goto LABEL_85;
  }

  v7 = *MEMORY[0x277D0E870];
  if ([v3 isEqualToString:*MEMORY[0x277D0E870]])
  {
LABEL_34:
    v4 = @"convention centers";
    goto LABEL_85;
  }

  v8 = *MEMORY[0x277D0E878];
  if ([v3 isEqualToString:*MEMORY[0x277D0E878]])
  {
    goto LABEL_36;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E890]])
  {
    v4 = @"fitness centers";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E888]])
  {
    v4 = @"fishing spots";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E898]])
  {
    v4 = @"food markets";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E8B8]])
  {
    v4 = @"golf courses";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E8B0]])
  {
    v4 = @"go kart";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E8C0]])
  {
    v4 = @"hiking trails";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E8D0]])
  {
    v4 = @"hotels";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E8D8]])
  {
    v4 = @"kayaking";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E8F0]])
  {
    v4 = @"libraries";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E8F8]])
  {
    v4 = @"marinas";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E900]])
  {
    v4 = @"mini golf";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E908]])
  {
    v4 = @"movie theaters";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E910]])
  {
    v4 = @"museums";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E918]])
  {
    v4 = @"music venues";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E928]])
  {
    v4 = @"national parks";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E930]])
  {
    v4 = @"nightlife";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E938]])
  {
    v4 = @"parks";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E948]])
  {
    v4 = @"playgrounds";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E968]])
  {
    v4 = @"restaurants";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E970]])
  {
    v4 = @"rock climbing";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E9A8]])
  {
    v4 = @"stadiums";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E9D0]])
  {
    v4 = @"theaters";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E9E8]])
  {
    v4 = @"wineries";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E9F0]])
  {
    v4 = @"zoos";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:v5])
  {
    goto LABEL_30;
  }

  if ([v3 isEqualToString:v6])
  {
    goto LABEL_32;
  }

  if ([v3 isEqualToString:v7])
  {
    goto LABEL_34;
  }

  if ([v3 isEqualToString:v8])
  {
LABEL_36:
    v4 = @"fairgrounds";
    goto LABEL_85;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0E8A0]])
  {
    v4 = @"fortresses";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E8E0]])
  {
    v4 = @"landmarks";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E920]])
  {
    v4 = @"national monuments";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E940]])
  {
    v4 = @"planetariums";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E960]])
  {
    v4 = @"RV parks";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E980]])
  {
    v4 = @"skate parks";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E978]])
  {
    v4 = @"schools";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E988]])
  {
    v4 = @"skating";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E990]])
  {
    v4 = @"ski resorts";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E998]])
  {
    v4 = @"soccer fields";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E9A0]])
  {
    v4 = @"spas";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E9B0]])
  {
    v4 = @"stores";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E9B8]])
  {
    v4 = @"surfing spots";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E9C0]])
  {
    v4 = @"swimming pools";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E9C8]])
  {
    v4 = @"tennis courts";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E9D8]])
  {
    v4 = @"universities";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D0E9E0]])
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

+ (id)placeTypePhotoTraitLabelMetadataForThematicSummary:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"amusementpark"])
  {
    v4 = @"amusement park";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)activityPhotoTraitLabelMetadataForThematicSummary:(id)a3 AtHome:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 isEqualToString:@"eating"])
  {
    if (v4)
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
    v6 = v5;
  }

  return v6;
}

+ (void)setMetaDataForInvite:(id)a3 metaData:(id)a4
{
  v15 = a4;
  v5 = MEMORY[0x277CCAC30];
  v6 = a3;
  v7 = [v5 predicateWithFormat:@"type == %lu", 17];
  v8 = [v6 resources];

  v9 = [v8 filteredArrayUsingPredicate:v7];

  if ([v9 count] == 1)
  {
    v10 = [v9 firstObject];
    v11 = [v10 name];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v10 name];
      v14 = [v13 copy];
      [v15 setObject:v14 forKeyedSubscript:@"invite_title"];
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