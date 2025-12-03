@interface BMMomentsEventDataEventBundle
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEventDataEventBundle)initWithBundleIdentifier:(void *)identifier bundleStartDate:(void *)date bundleEndDate:(void *)endDate bundleCreationDate:(void *)creationDate bundleExpirationDate:(void *)expirationDate bundleInterfaceType:(int)type bundleSourceHealthExists:(id)exists bundleSourcePhotoExists:(id)self0 bundleSourceProactiveExists:(id)self1 bundleSourceRoutineExists:(id)self2 bundlePromptLanguageFormat:(id)self3 bundlePromptToneID:(id)self4 bundlePromptParametersAvailability:(id)self5 bundlePlaceType:(int)self6 bundlePlaceUserType:(int)self7 bundleBaseEventCateory:(int)self8 bundleEventIDs:(id)self9 bundleActionType:(id)actionType backgroundActions:(id)actions bundleIsFamilyIncluded:(id)included bundleTimeTag:(int)tag isBundleResourceTypeUnknown:(id)unknown isBundleResourceTypeValueIncluded:(id)valueIncluded isBundleResourceTypePhotoAssetsIncluded:(id)assetsIncluded isBundleResourceTypeMediaIncluded:(id)mediaIncluded isBundleResourceTypeWebLinkIncluded:(id)linkIncluded isBundleResourceTypeInterenceTagIncluded:(id)tagIncluded bundlEngagement:(int)identifier0 bundleVersion:(id)identifier1 rankingVersion:(id)identifier2 suggestionType:(int)identifier3 suggestionTimestamp:(id)identifier4 suggestionClientIdentifier:(id)identifier5 suggestionViewContainerName:(id)identifier6 suggestionViewVisibleTime:(id)identifier7 appEntryEventType:(int)identifier8 appEntryEventClientIdentifier:(id)identifier9 appEntryEventTimestamp:(id)date0 appEntryEventStartTime:(id)date1 appEntryEventEndTime:(id)date2 appEntryEventTotalCharacters:(id)date3 appEntryEventAddedCharacters:(id)date4 clientActivityEventType:(int)date5 clientActivityEventClientIdentifier:(id)date6 clientActivityEventTimestamp:(id)date7 suggestionIdentifier:(id)date8 photoSourceType:(int)date9 photoLibraryType:(int)endDate0 bundleSourcePostAnalyticsExists:(id)endDate1 bundleSourcePDExists:(id)endDate2 bundleSourceMotionExists:(id)endDate3 bundleSourceBooksExists:(id)endDate4 bundleSourceScreenTimeExists:(id)endDate5 gaPRArray:(id)endDate6 bundlePCount:(id)endDate7 ranking:(int)endDate8 labelConfidenceScore:(int)endDate9 timeCorrelationScore:(int)creationDate0 callDuration:(int)creationDate1 interactionCount:(int)creationDate2 interactionType:(int)creationDate3 callPlace:distanceFromHome:homeAvailability:workAvailability:bundleVisitMapItemSource:bundleVisitPlaceType:bundleVisitPlaceLabelGranularity:bundleIncludesAnomalousEvent:isFiltered:bundleSuperType:bundleSubType:isAggregatedAndSuppressed:summarizationGranularity:includedInSummaryBundleOnly:subBundleIDs:subSuggestionIDs:firstCreationDate:resources:persons:mainPlace:otherPlaces:photoTraits:clusterMetadata:outlierMetadata:bundleGoodnessScore:distinctnessScore:richnessScore:engagementScore:heuristicsScore:metadataForRank:;
- (BMMomentsEventDataEventBundle)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)appEntryEventEndTime;
- (NSDate)appEntryEventStartTime;
- (NSDate)appEntryEventTimestamp;
- (NSDate)bundleCreationDate;
- (NSDate)bundleEndDate;
- (NSDate)bundleExpirationDate;
- (NSDate)bundleStartDate;
- (NSDate)clientActivityEventTimestamp;
- (NSDate)firstCreationDate;
- (NSDate)suggestionTimestamp;
- (NSString)description;
- (id)_backgroundActionsJSONArray;
- (id)_bundleEventIDsJSONArray;
- (id)_gaPRArrayJSONArray;
- (id)_otherPlacesJSONArray;
- (id)_personsJSONArray;
- (id)_photoTraitsJSONArray;
- (id)_resourcesJSONArray;
- (id)_subBundleIDsJSONArray;
- (id)_subSuggestionIDsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (uint64_t)initWithBundleIdentifier:(uint64_t)identifier bundleStartDate:(uint64_t)date bundleEndDate:(uint64_t)endDate bundleCreationDate:(uint64_t)creationDate bundleExpirationDate:(uint64_t)expirationDate bundleInterfaceType:(unsigned int)type bundleSourceHealthExists:(id)exists bundleSourcePhotoExists:(uint64_t)self0 bundleSourceProactiveExists:(id)self1 bundleSourceRoutineExists:(uint64_t)self2 bundlePromptLanguageFormat:(id)self3 bundlePromptToneID:(uint64_t)self4 bundlePromptParametersAvailability:(id)self5 bundlePlaceType:(uint64_t)self6 bundlePlaceUserType:(int)self7 bundleBaseEventCateory:(id)self8 bundleEventIDs:(uint64_t)self9 bundleActionType:(id)actionType backgroundActions:(id)actions bundleIsFamilyIncluded:(int)included bundleTimeTag:(id)tag isBundleResourceTypeUnknown:(uint64_t)unknown isBundleResourceTypeValueIncluded:(id)valueIncluded isBundleResourceTypePhotoAssetsIncluded:(uint64_t)assetsIncluded isBundleResourceTypeMediaIncluded:(id)mediaIncluded isBundleResourceTypeWebLinkIncluded:(id)linkIncluded isBundleResourceTypeInterenceTagIncluded:(int)tagIncluded bundlEngagement:(id)identifier0 bundleVersion:(id)identifier1 rankingVersion:(int)identifier2 suggestionType:(id)identifier3 suggestionTimestamp:(uint64_t)identifier4 suggestionClientIdentifier:(id)identifier5 suggestionViewContainerName:(id)identifier6 suggestionViewVisibleTime:(int)identifier7 appEntryEventType:(id)identifier8 appEntryEventClientIdentifier:(uint64_t)identifier9 appEntryEventTimestamp:(uint64_t)date0 appEntryEventStartTime:(uint64_t)date1 appEntryEventEndTime:(id)date2 appEntryEventTotalCharacters:(id)date3 appEntryEventAddedCharacters:(int)date4 clientActivityEventType:(id)date5 clientActivityEventClientIdentifier:(uint64_t)date6 clientActivityEventTimestamp:(id)date7 suggestionIdentifier:(uint64_t)date8 photoSourceType:(id)date9 photoLibraryType:(uint64_t)endDate0 bundleSourcePostAnalyticsExists:(id)endDate1 bundleSourcePDExists:(uint64_t)endDate2 bundleSourceMotionExists:(id)endDate3 bundleSourceBooksExists:(uint64_t)endDate4 bundleSourceScreenTimeExists:(id)endDate5 gaPRArray:(uint64_t)endDate6 bundlePCount:(uint64_t)endDate7 ranking:(uint64_t)endDate8 labelConfidenceScore:(uint64_t)endDate9 timeCorrelationScore:(uint64_t)creationDate0 callDuration:(uint64_t)creationDate1 interactionCount:(uint64_t)creationDate2 interactionType:callPlace:distanceFromHome:homeAvailability:workAvailability:bundleVisitMapItemSource:bundleVisitPlaceType:bundleVisitPlaceLabelGranularity:bundleIncludesAnomalousEvent:;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEventDataEventBundle

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleIdentifier = [(BMMomentsEventDataEventBundle *)self bundleIdentifier];
    bundleIdentifier2 = [v5 bundleIdentifier];
    v8 = bundleIdentifier2;
    if (bundleIdentifier == bundleIdentifier2)
    {
    }

    else
    {
      bundleIdentifier3 = [(BMMomentsEventDataEventBundle *)self bundleIdentifier];
      bundleIdentifier4 = [v5 bundleIdentifier];
      v11 = [bundleIdentifier3 isEqual:bundleIdentifier4];

      if (!v11)
      {
        goto LABEL_312;
      }
    }

    bundleStartDate = [(BMMomentsEventDataEventBundle *)self bundleStartDate];
    bundleStartDate2 = [v5 bundleStartDate];
    v15 = bundleStartDate2;
    if (bundleStartDate == bundleStartDate2)
    {
    }

    else
    {
      bundleStartDate3 = [(BMMomentsEventDataEventBundle *)self bundleStartDate];
      bundleStartDate4 = [v5 bundleStartDate];
      v18 = [bundleStartDate3 isEqual:bundleStartDate4];

      if (!v18)
      {
        goto LABEL_312;
      }
    }

    bundleEndDate = [(BMMomentsEventDataEventBundle *)self bundleEndDate];
    bundleEndDate2 = [v5 bundleEndDate];
    v21 = bundleEndDate2;
    if (bundleEndDate == bundleEndDate2)
    {
    }

    else
    {
      bundleEndDate3 = [(BMMomentsEventDataEventBundle *)self bundleEndDate];
      bundleEndDate4 = [v5 bundleEndDate];
      v24 = [bundleEndDate3 isEqual:bundleEndDate4];

      if (!v24)
      {
        goto LABEL_312;
      }
    }

    bundleCreationDate = [(BMMomentsEventDataEventBundle *)self bundleCreationDate];
    bundleCreationDate2 = [v5 bundleCreationDate];
    v27 = bundleCreationDate2;
    if (bundleCreationDate == bundleCreationDate2)
    {
    }

    else
    {
      bundleCreationDate3 = [(BMMomentsEventDataEventBundle *)self bundleCreationDate];
      bundleCreationDate4 = [v5 bundleCreationDate];
      v30 = [bundleCreationDate3 isEqual:bundleCreationDate4];

      if (!v30)
      {
        goto LABEL_312;
      }
    }

    bundleExpirationDate = [(BMMomentsEventDataEventBundle *)self bundleExpirationDate];
    bundleExpirationDate2 = [v5 bundleExpirationDate];
    v33 = bundleExpirationDate2;
    if (bundleExpirationDate == bundleExpirationDate2)
    {
    }

    else
    {
      bundleExpirationDate3 = [(BMMomentsEventDataEventBundle *)self bundleExpirationDate];
      bundleExpirationDate4 = [v5 bundleExpirationDate];
      v36 = [bundleExpirationDate3 isEqual:bundleExpirationDate4];

      if (!v36)
      {
        goto LABEL_312;
      }
    }

    bundleInterfaceType = [(BMMomentsEventDataEventBundle *)self bundleInterfaceType];
    if (bundleInterfaceType != [v5 bundleInterfaceType])
    {
      goto LABEL_312;
    }

    if (-[BMMomentsEventDataEventBundle hasBundleSourceHealthExists](self, "hasBundleSourceHealthExists") || [v5 hasBundleSourceHealthExists])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundleSourceHealthExists])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundleSourceHealthExists])
      {
        goto LABEL_312;
      }

      bundleSourceHealthExists = [(BMMomentsEventDataEventBundle *)self bundleSourceHealthExists];
      if (bundleSourceHealthExists != [v5 bundleSourceHealthExists])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasBundleSourcePhotoExists](self, "hasBundleSourcePhotoExists") || [v5 hasBundleSourcePhotoExists])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundleSourcePhotoExists])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundleSourcePhotoExists])
      {
        goto LABEL_312;
      }

      bundleSourcePhotoExists = [(BMMomentsEventDataEventBundle *)self bundleSourcePhotoExists];
      if (bundleSourcePhotoExists != [v5 bundleSourcePhotoExists])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasBundleSourceProactiveExists](self, "hasBundleSourceProactiveExists") || [v5 hasBundleSourceProactiveExists])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundleSourceProactiveExists])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundleSourceProactiveExists])
      {
        goto LABEL_312;
      }

      bundleSourceProactiveExists = [(BMMomentsEventDataEventBundle *)self bundleSourceProactiveExists];
      if (bundleSourceProactiveExists != [v5 bundleSourceProactiveExists])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasBundleSourceRoutineExists](self, "hasBundleSourceRoutineExists") || [v5 hasBundleSourceRoutineExists])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundleSourceRoutineExists])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundleSourceRoutineExists])
      {
        goto LABEL_312;
      }

      bundleSourceRoutineExists = [(BMMomentsEventDataEventBundle *)self bundleSourceRoutineExists];
      if (bundleSourceRoutineExists != [v5 bundleSourceRoutineExists])
      {
        goto LABEL_312;
      }
    }

    bundlePromptLanguageFormat = [(BMMomentsEventDataEventBundle *)self bundlePromptLanguageFormat];
    bundlePromptLanguageFormat2 = [v5 bundlePromptLanguageFormat];
    v44 = bundlePromptLanguageFormat2;
    if (bundlePromptLanguageFormat == bundlePromptLanguageFormat2)
    {
    }

    else
    {
      bundlePromptLanguageFormat3 = [(BMMomentsEventDataEventBundle *)self bundlePromptLanguageFormat];
      bundlePromptLanguageFormat4 = [v5 bundlePromptLanguageFormat];
      v47 = [bundlePromptLanguageFormat3 isEqual:bundlePromptLanguageFormat4];

      if (!v47)
      {
        goto LABEL_312;
      }
    }

    bundlePromptToneID = [(BMMomentsEventDataEventBundle *)self bundlePromptToneID];
    bundlePromptToneID2 = [v5 bundlePromptToneID];
    v50 = bundlePromptToneID2;
    if (bundlePromptToneID == bundlePromptToneID2)
    {
    }

    else
    {
      bundlePromptToneID3 = [(BMMomentsEventDataEventBundle *)self bundlePromptToneID];
      bundlePromptToneID4 = [v5 bundlePromptToneID];
      v53 = [bundlePromptToneID3 isEqual:bundlePromptToneID4];

      if (!v53)
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasBundlePromptParametersAvailability](self, "hasBundlePromptParametersAvailability") || [v5 hasBundlePromptParametersAvailability])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundlePromptParametersAvailability])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundlePromptParametersAvailability])
      {
        goto LABEL_312;
      }

      bundlePromptParametersAvailability = [(BMMomentsEventDataEventBundle *)self bundlePromptParametersAvailability];
      if (bundlePromptParametersAvailability != [v5 bundlePromptParametersAvailability])
      {
        goto LABEL_312;
      }
    }

    bundlePlaceType = [(BMMomentsEventDataEventBundle *)self bundlePlaceType];
    if (bundlePlaceType != [v5 bundlePlaceType])
    {
      goto LABEL_312;
    }

    bundlePlaceUserType = [(BMMomentsEventDataEventBundle *)self bundlePlaceUserType];
    if (bundlePlaceUserType != [v5 bundlePlaceUserType])
    {
      goto LABEL_312;
    }

    bundleBaseEventCateory = [(BMMomentsEventDataEventBundle *)self bundleBaseEventCateory];
    if (bundleBaseEventCateory != [v5 bundleBaseEventCateory])
    {
      goto LABEL_312;
    }

    bundleEventIDs = [(BMMomentsEventDataEventBundle *)self bundleEventIDs];
    bundleEventIDs2 = [v5 bundleEventIDs];
    v60 = bundleEventIDs2;
    if (bundleEventIDs == bundleEventIDs2)
    {
    }

    else
    {
      bundleEventIDs3 = [(BMMomentsEventDataEventBundle *)self bundleEventIDs];
      bundleEventIDs4 = [v5 bundleEventIDs];
      v63 = [bundleEventIDs3 isEqual:bundleEventIDs4];

      if (!v63)
      {
        goto LABEL_312;
      }
    }

    bundleActionType = [(BMMomentsEventDataEventBundle *)self bundleActionType];
    bundleActionType2 = [v5 bundleActionType];
    v66 = bundleActionType2;
    if (bundleActionType == bundleActionType2)
    {
    }

    else
    {
      bundleActionType3 = [(BMMomentsEventDataEventBundle *)self bundleActionType];
      bundleActionType4 = [v5 bundleActionType];
      v69 = [bundleActionType3 isEqual:bundleActionType4];

      if (!v69)
      {
        goto LABEL_312;
      }
    }

    backgroundActions = [(BMMomentsEventDataEventBundle *)self backgroundActions];
    backgroundActions2 = [v5 backgroundActions];
    v72 = backgroundActions2;
    if (backgroundActions == backgroundActions2)
    {
    }

    else
    {
      backgroundActions3 = [(BMMomentsEventDataEventBundle *)self backgroundActions];
      backgroundActions4 = [v5 backgroundActions];
      v75 = [backgroundActions3 isEqual:backgroundActions4];

      if (!v75)
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasBundleIsFamilyIncluded](self, "hasBundleIsFamilyIncluded") || [v5 hasBundleIsFamilyIncluded])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundleIsFamilyIncluded])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundleIsFamilyIncluded])
      {
        goto LABEL_312;
      }

      bundleIsFamilyIncluded = [(BMMomentsEventDataEventBundle *)self bundleIsFamilyIncluded];
      if (bundleIsFamilyIncluded != [v5 bundleIsFamilyIncluded])
      {
        goto LABEL_312;
      }
    }

    bundleTimeTag = [(BMMomentsEventDataEventBundle *)self bundleTimeTag];
    if (bundleTimeTag != [v5 bundleTimeTag])
    {
      goto LABEL_312;
    }

    if (-[BMMomentsEventDataEventBundle hasIsBundleResourceTypeUnknown](self, "hasIsBundleResourceTypeUnknown") || [v5 hasIsBundleResourceTypeUnknown])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasIsBundleResourceTypeUnknown])
      {
        goto LABEL_312;
      }

      if (![v5 hasIsBundleResourceTypeUnknown])
      {
        goto LABEL_312;
      }

      isBundleResourceTypeUnknown = [(BMMomentsEventDataEventBundle *)self isBundleResourceTypeUnknown];
      if (isBundleResourceTypeUnknown != [v5 isBundleResourceTypeUnknown])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasIsBundleResourceTypeValueIncluded](self, "hasIsBundleResourceTypeValueIncluded") || [v5 hasIsBundleResourceTypeValueIncluded])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasIsBundleResourceTypeValueIncluded])
      {
        goto LABEL_312;
      }

      if (![v5 hasIsBundleResourceTypeValueIncluded])
      {
        goto LABEL_312;
      }

      isBundleResourceTypeValueIncluded = [(BMMomentsEventDataEventBundle *)self isBundleResourceTypeValueIncluded];
      if (isBundleResourceTypeValueIncluded != [v5 isBundleResourceTypeValueIncluded])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasIsBundleResourceTypePhotoAssetsIncluded](self, "hasIsBundleResourceTypePhotoAssetsIncluded") || [v5 hasIsBundleResourceTypePhotoAssetsIncluded])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasIsBundleResourceTypePhotoAssetsIncluded])
      {
        goto LABEL_312;
      }

      if (![v5 hasIsBundleResourceTypePhotoAssetsIncluded])
      {
        goto LABEL_312;
      }

      isBundleResourceTypePhotoAssetsIncluded = [(BMMomentsEventDataEventBundle *)self isBundleResourceTypePhotoAssetsIncluded];
      if (isBundleResourceTypePhotoAssetsIncluded != [v5 isBundleResourceTypePhotoAssetsIncluded])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasIsBundleResourceTypeMediaIncluded](self, "hasIsBundleResourceTypeMediaIncluded") || [v5 hasIsBundleResourceTypeMediaIncluded])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasIsBundleResourceTypeMediaIncluded])
      {
        goto LABEL_312;
      }

      if (![v5 hasIsBundleResourceTypeMediaIncluded])
      {
        goto LABEL_312;
      }

      isBundleResourceTypeMediaIncluded = [(BMMomentsEventDataEventBundle *)self isBundleResourceTypeMediaIncluded];
      if (isBundleResourceTypeMediaIncluded != [v5 isBundleResourceTypeMediaIncluded])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasIsBundleResourceTypeWebLinkIncluded](self, "hasIsBundleResourceTypeWebLinkIncluded") || [v5 hasIsBundleResourceTypeWebLinkIncluded])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasIsBundleResourceTypeWebLinkIncluded])
      {
        goto LABEL_312;
      }

      if (![v5 hasIsBundleResourceTypeWebLinkIncluded])
      {
        goto LABEL_312;
      }

      isBundleResourceTypeWebLinkIncluded = [(BMMomentsEventDataEventBundle *)self isBundleResourceTypeWebLinkIncluded];
      if (isBundleResourceTypeWebLinkIncluded != [v5 isBundleResourceTypeWebLinkIncluded])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasIsBundleResourceTypeInterenceTagIncluded](self, "hasIsBundleResourceTypeInterenceTagIncluded") || [v5 hasIsBundleResourceTypeInterenceTagIncluded])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasIsBundleResourceTypeInterenceTagIncluded])
      {
        goto LABEL_312;
      }

      if (![v5 hasIsBundleResourceTypeInterenceTagIncluded])
      {
        goto LABEL_312;
      }

      isBundleResourceTypeInterenceTagIncluded = [(BMMomentsEventDataEventBundle *)self isBundleResourceTypeInterenceTagIncluded];
      if (isBundleResourceTypeInterenceTagIncluded != [v5 isBundleResourceTypeInterenceTagIncluded])
      {
        goto LABEL_312;
      }
    }

    bundlEngagement = [(BMMomentsEventDataEventBundle *)self bundlEngagement];
    if (bundlEngagement != [v5 bundlEngagement])
    {
      goto LABEL_312;
    }

    if (-[BMMomentsEventDataEventBundle hasBundleVersion](self, "hasBundleVersion") || [v5 hasBundleVersion])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundleVersion])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundleVersion])
      {
        goto LABEL_312;
      }

      [(BMMomentsEventDataEventBundle *)self bundleVersion];
      v86 = v85;
      [v5 bundleVersion];
      if (v86 != v87)
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasRankingVersion](self, "hasRankingVersion") || [v5 hasRankingVersion])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasRankingVersion])
      {
        goto LABEL_312;
      }

      if (![v5 hasRankingVersion])
      {
        goto LABEL_312;
      }

      [(BMMomentsEventDataEventBundle *)self rankingVersion];
      v89 = v88;
      [v5 rankingVersion];
      if (v89 != v90)
      {
        goto LABEL_312;
      }
    }

    suggestionType = [(BMMomentsEventDataEventBundle *)self suggestionType];
    if (suggestionType != [v5 suggestionType])
    {
      goto LABEL_312;
    }

    suggestionTimestamp = [(BMMomentsEventDataEventBundle *)self suggestionTimestamp];
    suggestionTimestamp2 = [v5 suggestionTimestamp];
    v94 = suggestionTimestamp2;
    if (suggestionTimestamp == suggestionTimestamp2)
    {
    }

    else
    {
      suggestionTimestamp3 = [(BMMomentsEventDataEventBundle *)self suggestionTimestamp];
      suggestionTimestamp4 = [v5 suggestionTimestamp];
      v97 = [suggestionTimestamp3 isEqual:suggestionTimestamp4];

      if (!v97)
      {
        goto LABEL_312;
      }
    }

    suggestionClientIdentifier = [(BMMomentsEventDataEventBundle *)self suggestionClientIdentifier];
    suggestionClientIdentifier2 = [v5 suggestionClientIdentifier];
    v100 = suggestionClientIdentifier2;
    if (suggestionClientIdentifier == suggestionClientIdentifier2)
    {
    }

    else
    {
      suggestionClientIdentifier3 = [(BMMomentsEventDataEventBundle *)self suggestionClientIdentifier];
      suggestionClientIdentifier4 = [v5 suggestionClientIdentifier];
      v103 = [suggestionClientIdentifier3 isEqual:suggestionClientIdentifier4];

      if (!v103)
      {
        goto LABEL_312;
      }
    }

    suggestionViewContainerName = [(BMMomentsEventDataEventBundle *)self suggestionViewContainerName];
    suggestionViewContainerName2 = [v5 suggestionViewContainerName];
    v106 = suggestionViewContainerName2;
    if (suggestionViewContainerName == suggestionViewContainerName2)
    {
    }

    else
    {
      suggestionViewContainerName3 = [(BMMomentsEventDataEventBundle *)self suggestionViewContainerName];
      suggestionViewContainerName4 = [v5 suggestionViewContainerName];
      v109 = [suggestionViewContainerName3 isEqual:suggestionViewContainerName4];

      if (!v109)
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasSuggestionViewVisibleTime](self, "hasSuggestionViewVisibleTime") || [v5 hasSuggestionViewVisibleTime])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasSuggestionViewVisibleTime])
      {
        goto LABEL_312;
      }

      if (![v5 hasSuggestionViewVisibleTime])
      {
        goto LABEL_312;
      }

      [(BMMomentsEventDataEventBundle *)self suggestionViewVisibleTime];
      v111 = v110;
      [v5 suggestionViewVisibleTime];
      if (v111 != v112)
      {
        goto LABEL_312;
      }
    }

    appEntryEventType = [(BMMomentsEventDataEventBundle *)self appEntryEventType];
    if (appEntryEventType != [v5 appEntryEventType])
    {
      goto LABEL_312;
    }

    appEntryEventClientIdentifier = [(BMMomentsEventDataEventBundle *)self appEntryEventClientIdentifier];
    appEntryEventClientIdentifier2 = [v5 appEntryEventClientIdentifier];
    v116 = appEntryEventClientIdentifier2;
    if (appEntryEventClientIdentifier == appEntryEventClientIdentifier2)
    {
    }

    else
    {
      appEntryEventClientIdentifier3 = [(BMMomentsEventDataEventBundle *)self appEntryEventClientIdentifier];
      appEntryEventClientIdentifier4 = [v5 appEntryEventClientIdentifier];
      v119 = [appEntryEventClientIdentifier3 isEqual:appEntryEventClientIdentifier4];

      if (!v119)
      {
        goto LABEL_312;
      }
    }

    appEntryEventTimestamp = [(BMMomentsEventDataEventBundle *)self appEntryEventTimestamp];
    appEntryEventTimestamp2 = [v5 appEntryEventTimestamp];
    v122 = appEntryEventTimestamp2;
    if (appEntryEventTimestamp == appEntryEventTimestamp2)
    {
    }

    else
    {
      appEntryEventTimestamp3 = [(BMMomentsEventDataEventBundle *)self appEntryEventTimestamp];
      appEntryEventTimestamp4 = [v5 appEntryEventTimestamp];
      v125 = [appEntryEventTimestamp3 isEqual:appEntryEventTimestamp4];

      if (!v125)
      {
        goto LABEL_312;
      }
    }

    appEntryEventStartTime = [(BMMomentsEventDataEventBundle *)self appEntryEventStartTime];
    appEntryEventStartTime2 = [v5 appEntryEventStartTime];
    v128 = appEntryEventStartTime2;
    if (appEntryEventStartTime == appEntryEventStartTime2)
    {
    }

    else
    {
      appEntryEventStartTime3 = [(BMMomentsEventDataEventBundle *)self appEntryEventStartTime];
      appEntryEventStartTime4 = [v5 appEntryEventStartTime];
      v131 = [appEntryEventStartTime3 isEqual:appEntryEventStartTime4];

      if (!v131)
      {
        goto LABEL_312;
      }
    }

    appEntryEventEndTime = [(BMMomentsEventDataEventBundle *)self appEntryEventEndTime];
    appEntryEventEndTime2 = [v5 appEntryEventEndTime];
    v134 = appEntryEventEndTime2;
    if (appEntryEventEndTime == appEntryEventEndTime2)
    {
    }

    else
    {
      appEntryEventEndTime3 = [(BMMomentsEventDataEventBundle *)self appEntryEventEndTime];
      appEntryEventEndTime4 = [v5 appEntryEventEndTime];
      v137 = [appEntryEventEndTime3 isEqual:appEntryEventEndTime4];

      if (!v137)
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasAppEntryEventTotalCharacters](self, "hasAppEntryEventTotalCharacters") || [v5 hasAppEntryEventTotalCharacters])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasAppEntryEventTotalCharacters])
      {
        goto LABEL_312;
      }

      if (![v5 hasAppEntryEventTotalCharacters])
      {
        goto LABEL_312;
      }

      appEntryEventTotalCharacters = [(BMMomentsEventDataEventBundle *)self appEntryEventTotalCharacters];
      if (appEntryEventTotalCharacters != [v5 appEntryEventTotalCharacters])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasAppEntryEventAddedCharacters](self, "hasAppEntryEventAddedCharacters") || [v5 hasAppEntryEventAddedCharacters])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasAppEntryEventAddedCharacters])
      {
        goto LABEL_312;
      }

      if (![v5 hasAppEntryEventAddedCharacters])
      {
        goto LABEL_312;
      }

      appEntryEventAddedCharacters = [(BMMomentsEventDataEventBundle *)self appEntryEventAddedCharacters];
      if (appEntryEventAddedCharacters != [v5 appEntryEventAddedCharacters])
      {
        goto LABEL_312;
      }
    }

    clientActivityEventType = [(BMMomentsEventDataEventBundle *)self clientActivityEventType];
    if (clientActivityEventType != [v5 clientActivityEventType])
    {
      goto LABEL_312;
    }

    clientActivityEventClientIdentifier = [(BMMomentsEventDataEventBundle *)self clientActivityEventClientIdentifier];
    clientActivityEventClientIdentifier2 = [v5 clientActivityEventClientIdentifier];
    v143 = clientActivityEventClientIdentifier2;
    if (clientActivityEventClientIdentifier == clientActivityEventClientIdentifier2)
    {
    }

    else
    {
      clientActivityEventClientIdentifier3 = [(BMMomentsEventDataEventBundle *)self clientActivityEventClientIdentifier];
      clientActivityEventClientIdentifier4 = [v5 clientActivityEventClientIdentifier];
      v146 = [clientActivityEventClientIdentifier3 isEqual:clientActivityEventClientIdentifier4];

      if (!v146)
      {
        goto LABEL_312;
      }
    }

    clientActivityEventTimestamp = [(BMMomentsEventDataEventBundle *)self clientActivityEventTimestamp];
    clientActivityEventTimestamp2 = [v5 clientActivityEventTimestamp];
    v149 = clientActivityEventTimestamp2;
    if (clientActivityEventTimestamp == clientActivityEventTimestamp2)
    {
    }

    else
    {
      clientActivityEventTimestamp3 = [(BMMomentsEventDataEventBundle *)self clientActivityEventTimestamp];
      clientActivityEventTimestamp4 = [v5 clientActivityEventTimestamp];
      v152 = [clientActivityEventTimestamp3 isEqual:clientActivityEventTimestamp4];

      if (!v152)
      {
        goto LABEL_312;
      }
    }

    suggestionIdentifier = [(BMMomentsEventDataEventBundle *)self suggestionIdentifier];
    suggestionIdentifier2 = [v5 suggestionIdentifier];
    v155 = suggestionIdentifier2;
    if (suggestionIdentifier == suggestionIdentifier2)
    {
    }

    else
    {
      suggestionIdentifier3 = [(BMMomentsEventDataEventBundle *)self suggestionIdentifier];
      suggestionIdentifier4 = [v5 suggestionIdentifier];
      v158 = [suggestionIdentifier3 isEqual:suggestionIdentifier4];

      if (!v158)
      {
        goto LABEL_312;
      }
    }

    photoSourceType = [(BMMomentsEventDataEventBundle *)self photoSourceType];
    if (photoSourceType != [v5 photoSourceType])
    {
      goto LABEL_312;
    }

    photoLibraryType = [(BMMomentsEventDataEventBundle *)self photoLibraryType];
    if (photoLibraryType != [v5 photoLibraryType])
    {
      goto LABEL_312;
    }

    if (-[BMMomentsEventDataEventBundle hasBundleSourcePostAnalyticsExists](self, "hasBundleSourcePostAnalyticsExists") || [v5 hasBundleSourcePostAnalyticsExists])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundleSourcePostAnalyticsExists])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundleSourcePostAnalyticsExists])
      {
        goto LABEL_312;
      }

      bundleSourcePostAnalyticsExists = [(BMMomentsEventDataEventBundle *)self bundleSourcePostAnalyticsExists];
      if (bundleSourcePostAnalyticsExists != [v5 bundleSourcePostAnalyticsExists])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasBundleSourcePDExists](self, "hasBundleSourcePDExists") || [v5 hasBundleSourcePDExists])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundleSourcePDExists])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundleSourcePDExists])
      {
        goto LABEL_312;
      }

      bundleSourcePDExists = [(BMMomentsEventDataEventBundle *)self bundleSourcePDExists];
      if (bundleSourcePDExists != [v5 bundleSourcePDExists])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasBundleSourceMotionExists](self, "hasBundleSourceMotionExists") || [v5 hasBundleSourceMotionExists])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundleSourceMotionExists])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundleSourceMotionExists])
      {
        goto LABEL_312;
      }

      bundleSourceMotionExists = [(BMMomentsEventDataEventBundle *)self bundleSourceMotionExists];
      if (bundleSourceMotionExists != [v5 bundleSourceMotionExists])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasBundleSourceBooksExists](self, "hasBundleSourceBooksExists") || [v5 hasBundleSourceBooksExists])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundleSourceBooksExists])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundleSourceBooksExists])
      {
        goto LABEL_312;
      }

      bundleSourceBooksExists = [(BMMomentsEventDataEventBundle *)self bundleSourceBooksExists];
      if (bundleSourceBooksExists != [v5 bundleSourceBooksExists])
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasBundleSourceScreenTimeExists](self, "hasBundleSourceScreenTimeExists") || [v5 hasBundleSourceScreenTimeExists])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundleSourceScreenTimeExists])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundleSourceScreenTimeExists])
      {
        goto LABEL_312;
      }

      bundleSourceScreenTimeExists = [(BMMomentsEventDataEventBundle *)self bundleSourceScreenTimeExists];
      if (bundleSourceScreenTimeExists != [v5 bundleSourceScreenTimeExists])
      {
        goto LABEL_312;
      }
    }

    gaPRArray = [(BMMomentsEventDataEventBundle *)self gaPRArray];
    gaPRArray2 = [v5 gaPRArray];
    v168 = gaPRArray2;
    if (gaPRArray == gaPRArray2)
    {
    }

    else
    {
      gaPRArray3 = [(BMMomentsEventDataEventBundle *)self gaPRArray];
      gaPRArray4 = [v5 gaPRArray];
      v171 = [gaPRArray3 isEqual:gaPRArray4];

      if (!v171)
      {
        goto LABEL_312;
      }
    }

    if (-[BMMomentsEventDataEventBundle hasBundlePCount](self, "hasBundlePCount") || [v5 hasBundlePCount])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasBundlePCount])
      {
        goto LABEL_312;
      }

      if (![v5 hasBundlePCount])
      {
        goto LABEL_312;
      }

      bundlePCount = [(BMMomentsEventDataEventBundle *)self bundlePCount];
      if (bundlePCount != [v5 bundlePCount])
      {
        goto LABEL_312;
      }
    }

    ranking = [(BMMomentsEventDataEventBundle *)self ranking];
    if (ranking != [v5 ranking])
    {
      goto LABEL_312;
    }

    labelConfidenceScore = [(BMMomentsEventDataEventBundle *)self labelConfidenceScore];
    if (labelConfidenceScore != [v5 labelConfidenceScore])
    {
      goto LABEL_312;
    }

    timeCorrelationScore = [(BMMomentsEventDataEventBundle *)self timeCorrelationScore];
    if (timeCorrelationScore != [v5 timeCorrelationScore])
    {
      goto LABEL_312;
    }

    callDuration = [(BMMomentsEventDataEventBundle *)self callDuration];
    if (callDuration != [v5 callDuration])
    {
      goto LABEL_312;
    }

    interactionCount = [(BMMomentsEventDataEventBundle *)self interactionCount];
    if (interactionCount != [v5 interactionCount])
    {
      goto LABEL_312;
    }

    interactionType = [(BMMomentsEventDataEventBundle *)self interactionType];
    if (interactionType != [v5 interactionType])
    {
      goto LABEL_312;
    }

    callPlace = [(BMMomentsEventDataEventBundle *)self callPlace];
    if (callPlace != [v5 callPlace])
    {
      goto LABEL_312;
    }

    distanceFromHome = [(BMMomentsEventDataEventBundle *)self distanceFromHome];
    if (distanceFromHome != [v5 distanceFromHome])
    {
      goto LABEL_312;
    }

    homeAvailability = [(BMMomentsEventDataEventBundle *)self homeAvailability];
    if (homeAvailability != [v5 homeAvailability])
    {
      goto LABEL_312;
    }

    workAvailability = [(BMMomentsEventDataEventBundle *)self workAvailability];
    if (workAvailability != [v5 workAvailability])
    {
      goto LABEL_312;
    }

    bundleVisitMapItemSource = [(BMMomentsEventDataEventBundle *)self bundleVisitMapItemSource];
    if (bundleVisitMapItemSource != [v5 bundleVisitMapItemSource])
    {
      goto LABEL_312;
    }

    bundleVisitPlaceType = [(BMMomentsEventDataEventBundle *)self bundleVisitPlaceType];
    if (bundleVisitPlaceType != [v5 bundleVisitPlaceType])
    {
      goto LABEL_312;
    }

    bundleVisitPlaceLabelGranularity = [(BMMomentsEventDataEventBundle *)self bundleVisitPlaceLabelGranularity];
    if (bundleVisitPlaceLabelGranularity != [v5 bundleVisitPlaceLabelGranularity])
    {
      goto LABEL_312;
    }

    bundleIncludesAnomalousEvent = [(BMMomentsEventDataEventBundle *)self bundleIncludesAnomalousEvent];
    if (bundleIncludesAnomalousEvent != [v5 bundleIncludesAnomalousEvent])
    {
      goto LABEL_312;
    }

    if (-[BMMomentsEventDataEventBundle hasIsFiltered](self, "hasIsFiltered") || [v5 hasIsFiltered])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasIsFiltered])
      {
        goto LABEL_312;
      }

      if (![v5 hasIsFiltered])
      {
        goto LABEL_312;
      }

      isFiltered = [(BMMomentsEventDataEventBundle *)self isFiltered];
      if (isFiltered != [v5 isFiltered])
      {
        goto LABEL_312;
      }
    }

    bundleSuperType = [(BMMomentsEventDataEventBundle *)self bundleSuperType];
    if (bundleSuperType != [v5 bundleSuperType])
    {
      goto LABEL_312;
    }

    bundleSubType = [(BMMomentsEventDataEventBundle *)self bundleSubType];
    if (bundleSubType != [v5 bundleSubType])
    {
      goto LABEL_312;
    }

    if (-[BMMomentsEventDataEventBundle hasIsAggregatedAndSuppressed](self, "hasIsAggregatedAndSuppressed") || [v5 hasIsAggregatedAndSuppressed])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasIsAggregatedAndSuppressed])
      {
        goto LABEL_312;
      }

      if (![v5 hasIsAggregatedAndSuppressed])
      {
        goto LABEL_312;
      }

      isAggregatedAndSuppressed = [(BMMomentsEventDataEventBundle *)self isAggregatedAndSuppressed];
      if (isAggregatedAndSuppressed != [v5 isAggregatedAndSuppressed])
      {
        goto LABEL_312;
      }
    }

    summarizationGranularity = [(BMMomentsEventDataEventBundle *)self summarizationGranularity];
    if (summarizationGranularity != [v5 summarizationGranularity])
    {
      goto LABEL_312;
    }

    if (-[BMMomentsEventDataEventBundle hasIncludedInSummaryBundleOnly](self, "hasIncludedInSummaryBundleOnly") || [v5 hasIncludedInSummaryBundleOnly])
    {
      if (![(BMMomentsEventDataEventBundle *)self hasIncludedInSummaryBundleOnly])
      {
        goto LABEL_312;
      }

      if (![v5 hasIncludedInSummaryBundleOnly])
      {
        goto LABEL_312;
      }

      includedInSummaryBundleOnly = [(BMMomentsEventDataEventBundle *)self includedInSummaryBundleOnly];
      if (includedInSummaryBundleOnly != [v5 includedInSummaryBundleOnly])
      {
        goto LABEL_312;
      }
    }

    subBundleIDs = [(BMMomentsEventDataEventBundle *)self subBundleIDs];
    subBundleIDs2 = [v5 subBundleIDs];
    v195 = subBundleIDs2;
    if (subBundleIDs == subBundleIDs2)
    {
    }

    else
    {
      subBundleIDs3 = [(BMMomentsEventDataEventBundle *)self subBundleIDs];
      subBundleIDs4 = [v5 subBundleIDs];
      v198 = [subBundleIDs3 isEqual:subBundleIDs4];

      if (!v198)
      {
        goto LABEL_312;
      }
    }

    subSuggestionIDs = [(BMMomentsEventDataEventBundle *)self subSuggestionIDs];
    subSuggestionIDs2 = [v5 subSuggestionIDs];
    v201 = subSuggestionIDs2;
    if (subSuggestionIDs == subSuggestionIDs2)
    {
    }

    else
    {
      subSuggestionIDs3 = [(BMMomentsEventDataEventBundle *)self subSuggestionIDs];
      subSuggestionIDs4 = [v5 subSuggestionIDs];
      v204 = [subSuggestionIDs3 isEqual:subSuggestionIDs4];

      if (!v204)
      {
        goto LABEL_312;
      }
    }

    firstCreationDate = [(BMMomentsEventDataEventBundle *)self firstCreationDate];
    firstCreationDate2 = [v5 firstCreationDate];
    v207 = firstCreationDate2;
    if (firstCreationDate == firstCreationDate2)
    {
    }

    else
    {
      firstCreationDate3 = [(BMMomentsEventDataEventBundle *)self firstCreationDate];
      firstCreationDate4 = [v5 firstCreationDate];
      v210 = [firstCreationDate3 isEqual:firstCreationDate4];

      if (!v210)
      {
        goto LABEL_312;
      }
    }

    resources = [(BMMomentsEventDataEventBundle *)self resources];
    resources2 = [v5 resources];
    v213 = resources2;
    if (resources == resources2)
    {
    }

    else
    {
      resources3 = [(BMMomentsEventDataEventBundle *)self resources];
      resources4 = [v5 resources];
      v216 = [resources3 isEqual:resources4];

      if (!v216)
      {
        goto LABEL_312;
      }
    }

    persons = [(BMMomentsEventDataEventBundle *)self persons];
    persons2 = [v5 persons];
    v219 = persons2;
    if (persons == persons2)
    {
    }

    else
    {
      persons3 = [(BMMomentsEventDataEventBundle *)self persons];
      persons4 = [v5 persons];
      v222 = [persons3 isEqual:persons4];

      if (!v222)
      {
        goto LABEL_312;
      }
    }

    mainPlace = [(BMMomentsEventDataEventBundle *)self mainPlace];
    mainPlace2 = [v5 mainPlace];
    v225 = mainPlace2;
    if (mainPlace == mainPlace2)
    {
    }

    else
    {
      mainPlace3 = [(BMMomentsEventDataEventBundle *)self mainPlace];
      mainPlace4 = [v5 mainPlace];
      v228 = [mainPlace3 isEqual:mainPlace4];

      if (!v228)
      {
        goto LABEL_312;
      }
    }

    otherPlaces = [(BMMomentsEventDataEventBundle *)self otherPlaces];
    otherPlaces2 = [v5 otherPlaces];
    v231 = otherPlaces2;
    if (otherPlaces == otherPlaces2)
    {
    }

    else
    {
      otherPlaces3 = [(BMMomentsEventDataEventBundle *)self otherPlaces];
      otherPlaces4 = [v5 otherPlaces];
      v234 = [otherPlaces3 isEqual:otherPlaces4];

      if (!v234)
      {
        goto LABEL_312;
      }
    }

    photoTraits = [(BMMomentsEventDataEventBundle *)self photoTraits];
    photoTraits2 = [v5 photoTraits];
    v237 = photoTraits2;
    if (photoTraits == photoTraits2)
    {
    }

    else
    {
      photoTraits3 = [(BMMomentsEventDataEventBundle *)self photoTraits];
      photoTraits4 = [v5 photoTraits];
      v240 = [photoTraits3 isEqual:photoTraits4];

      if (!v240)
      {
        goto LABEL_312;
      }
    }

    clusterMetadata = [(BMMomentsEventDataEventBundle *)self clusterMetadata];
    clusterMetadata2 = [v5 clusterMetadata];
    v243 = clusterMetadata2;
    if (clusterMetadata == clusterMetadata2)
    {
    }

    else
    {
      clusterMetadata3 = [(BMMomentsEventDataEventBundle *)self clusterMetadata];
      clusterMetadata4 = [v5 clusterMetadata];
      v246 = [clusterMetadata3 isEqual:clusterMetadata4];

      if (!v246)
      {
        goto LABEL_312;
      }
    }

    outlierMetadata = [(BMMomentsEventDataEventBundle *)self outlierMetadata];
    outlierMetadata2 = [v5 outlierMetadata];
    v249 = outlierMetadata2;
    if (outlierMetadata == outlierMetadata2)
    {
    }

    else
    {
      outlierMetadata3 = [(BMMomentsEventDataEventBundle *)self outlierMetadata];
      outlierMetadata4 = [v5 outlierMetadata];
      v252 = [outlierMetadata3 isEqual:outlierMetadata4];

      if (!v252)
      {
        goto LABEL_312;
      }
    }

    if (!-[BMMomentsEventDataEventBundle hasBundleGoodnessScore](self, "hasBundleGoodnessScore") && ![v5 hasBundleGoodnessScore] || -[BMMomentsEventDataEventBundle hasBundleGoodnessScore](self, "hasBundleGoodnessScore") && objc_msgSend(v5, "hasBundleGoodnessScore") && (-[BMMomentsEventDataEventBundle bundleGoodnessScore](self, "bundleGoodnessScore"), v254 = v253, objc_msgSend(v5, "bundleGoodnessScore"), v254 == v255))
    {
      if (!-[BMMomentsEventDataEventBundle hasDistinctnessScore](self, "hasDistinctnessScore") && ![v5 hasDistinctnessScore] || -[BMMomentsEventDataEventBundle hasDistinctnessScore](self, "hasDistinctnessScore") && objc_msgSend(v5, "hasDistinctnessScore") && (-[BMMomentsEventDataEventBundle distinctnessScore](self, "distinctnessScore"), v257 = v256, objc_msgSend(v5, "distinctnessScore"), v257 == v258))
      {
        if (!-[BMMomentsEventDataEventBundle hasRichnessScore](self, "hasRichnessScore") && ![v5 hasRichnessScore] || -[BMMomentsEventDataEventBundle hasRichnessScore](self, "hasRichnessScore") && objc_msgSend(v5, "hasRichnessScore") && (-[BMMomentsEventDataEventBundle richnessScore](self, "richnessScore"), v260 = v259, objc_msgSend(v5, "richnessScore"), v260 == v261))
        {
          if (!-[BMMomentsEventDataEventBundle hasEngagementScore](self, "hasEngagementScore") && ![v5 hasEngagementScore] || -[BMMomentsEventDataEventBundle hasEngagementScore](self, "hasEngagementScore") && objc_msgSend(v5, "hasEngagementScore") && (-[BMMomentsEventDataEventBundle engagementScore](self, "engagementScore"), v263 = v262, objc_msgSend(v5, "engagementScore"), v263 == v264))
          {
            if (!-[BMMomentsEventDataEventBundle hasHeuristicsScore](self, "hasHeuristicsScore") && ![v5 hasHeuristicsScore] || -[BMMomentsEventDataEventBundle hasHeuristicsScore](self, "hasHeuristicsScore") && objc_msgSend(v5, "hasHeuristicsScore") && (-[BMMomentsEventDataEventBundle heuristicsScore](self, "heuristicsScore"), v266 = v265, objc_msgSend(v5, "heuristicsScore"), v266 == v267))
            {
              metadataForRank = [(BMMomentsEventDataEventBundle *)self metadataForRank];
              metadataForRank2 = [v5 metadataForRank];
              if (metadataForRank == metadataForRank2)
              {
                v12 = 1;
              }

              else
              {
                metadataForRank3 = [(BMMomentsEventDataEventBundle *)self metadataForRank];
                metadataForRank4 = [v5 metadataForRank];
                v12 = [metadataForRank3 isEqual:metadataForRank4];
              }

              goto LABEL_313;
            }
          }
        }
      }
    }

LABEL_312:
    v12 = 0;
LABEL_313:

    goto LABEL_314;
  }

  v12 = 0;
LABEL_314:

  return v12;
}

- (NSDate)firstCreationDate
{
  if (self->_hasRaw_firstCreationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_firstCreationDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)clientActivityEventTimestamp
{
  if (self->_hasRaw_clientActivityEventTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_clientActivityEventTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)appEntryEventEndTime
{
  if (self->_hasRaw_appEntryEventEndTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_appEntryEventEndTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)appEntryEventStartTime
{
  if (self->_hasRaw_appEntryEventStartTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_appEntryEventStartTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)appEntryEventTimestamp
{
  if (self->_hasRaw_appEntryEventTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_appEntryEventTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)suggestionTimestamp
{
  if (self->_hasRaw_suggestionTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_suggestionTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)bundleExpirationDate
{
  if (self->_hasRaw_bundleExpirationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_bundleExpirationDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)bundleCreationDate
{
  if (self->_hasRaw_bundleCreationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_bundleCreationDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)bundleEndDate
{
  if (self->_hasRaw_bundleEndDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_bundleEndDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)bundleStartDate
{
  if (self->_hasRaw_bundleStartDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_bundleStartDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v330[91] = *MEMORY[0x1E69E9840];
  bundleIdentifier = [(BMMomentsEventDataEventBundle *)self bundleIdentifier];
  bundleStartDate = [(BMMomentsEventDataEventBundle *)self bundleStartDate];
  if (bundleStartDate)
  {
    v5 = MEMORY[0x1E696AD98];
    bundleStartDate2 = [(BMMomentsEventDataEventBundle *)self bundleStartDate];
    [bundleStartDate2 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  bundleEndDate = [(BMMomentsEventDataEventBundle *)self bundleEndDate];
  if (bundleEndDate)
  {
    v9 = MEMORY[0x1E696AD98];
    bundleEndDate2 = [(BMMomentsEventDataEventBundle *)self bundleEndDate];
    [bundleEndDate2 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  bundleCreationDate = [(BMMomentsEventDataEventBundle *)self bundleCreationDate];
  if (bundleCreationDate)
  {
    v13 = MEMORY[0x1E696AD98];
    bundleCreationDate2 = [(BMMomentsEventDataEventBundle *)self bundleCreationDate];
    [bundleCreationDate2 timeIntervalSince1970];
    v15 = [v13 numberWithDouble:?];
  }

  else
  {
    v15 = 0;
  }

  bundleExpirationDate = [(BMMomentsEventDataEventBundle *)self bundleExpirationDate];
  if (bundleExpirationDate)
  {
    v17 = MEMORY[0x1E696AD98];
    bundleExpirationDate2 = [(BMMomentsEventDataEventBundle *)self bundleExpirationDate];
    [bundleExpirationDate2 timeIntervalSince1970];
    v19 = [v17 numberWithDouble:?];
  }

  else
  {
    v19 = 0;
  }

  v328 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundleInterfaceType](self, "bundleInterfaceType")}];
  if ([(BMMomentsEventDataEventBundle *)self hasBundleSourceHealthExists])
  {
    v327 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceHealthExists](self, "bundleSourceHealthExists")}];
  }

  else
  {
    v327 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasBundleSourcePhotoExists])
  {
    v326 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourcePhotoExists](self, "bundleSourcePhotoExists")}];
  }

  else
  {
    v326 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasBundleSourceProactiveExists])
  {
    v325 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceProactiveExists](self, "bundleSourceProactiveExists")}];
  }

  else
  {
    v325 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasBundleSourceRoutineExists])
  {
    v324 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceRoutineExists](self, "bundleSourceRoutineExists")}];
  }

  else
  {
    v324 = 0;
  }

  bundlePromptLanguageFormat = [(BMMomentsEventDataEventBundle *)self bundlePromptLanguageFormat];
  bundlePromptToneID = [(BMMomentsEventDataEventBundle *)self bundlePromptToneID];
  if ([(BMMomentsEventDataEventBundle *)self hasBundlePromptParametersAvailability])
  {
    v321 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundlePromptParametersAvailability](self, "bundlePromptParametersAvailability")}];
  }

  else
  {
    v321 = 0;
  }

  v320 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundlePlaceType](self, "bundlePlaceType")}];
  v319 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundlePlaceUserType](self, "bundlePlaceUserType")}];
  v318 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundleBaseEventCateory](self, "bundleBaseEventCateory")}];
  _bundleEventIDsJSONArray = [(BMMomentsEventDataEventBundle *)self _bundleEventIDsJSONArray];
  bundleActionType = [(BMMomentsEventDataEventBundle *)self bundleActionType];
  jsonDictionary = [bundleActionType jsonDictionary];

  _backgroundActionsJSONArray = [(BMMomentsEventDataEventBundle *)self _backgroundActionsJSONArray];
  if ([(BMMomentsEventDataEventBundle *)self hasBundleIsFamilyIncluded])
  {
    v314 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleIsFamilyIncluded](self, "bundleIsFamilyIncluded")}];
  }

  else
  {
    v314 = 0;
  }

  v313 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundleTimeTag](self, "bundleTimeTag")}];
  if ([(BMMomentsEventDataEventBundle *)self hasIsBundleResourceTypeUnknown])
  {
    v312 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isBundleResourceTypeUnknown](self, "isBundleResourceTypeUnknown")}];
  }

  else
  {
    v312 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasIsBundleResourceTypeValueIncluded])
  {
    v311 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isBundleResourceTypeValueIncluded](self, "isBundleResourceTypeValueIncluded")}];
  }

  else
  {
    v311 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasIsBundleResourceTypePhotoAssetsIncluded])
  {
    v310 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isBundleResourceTypePhotoAssetsIncluded](self, "isBundleResourceTypePhotoAssetsIncluded")}];
  }

  else
  {
    v310 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasIsBundleResourceTypeMediaIncluded])
  {
    v309 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isBundleResourceTypeMediaIncluded](self, "isBundleResourceTypeMediaIncluded")}];
  }

  else
  {
    v309 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasIsBundleResourceTypeWebLinkIncluded])
  {
    v308 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isBundleResourceTypeWebLinkIncluded](self, "isBundleResourceTypeWebLinkIncluded")}];
  }

  else
  {
    v308 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasIsBundleResourceTypeInterenceTagIncluded])
  {
    v307 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isBundleResourceTypeInterenceTagIncluded](self, "isBundleResourceTypeInterenceTagIncluded")}];
  }

  else
  {
    v307 = 0;
  }

  v306 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundlEngagement](self, "bundlEngagement")}];
  if (![(BMMomentsEventDataEventBundle *)self hasBundleVersion]|| ([(BMMomentsEventDataEventBundle *)self bundleVersion], fabs(v21) == INFINITY))
  {
    v305 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundle *)self bundleVersion];
    v22 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundle *)self bundleVersion];
    v305 = [v22 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundle *)self hasRankingVersion]|| ([(BMMomentsEventDataEventBundle *)self rankingVersion], fabs(v23) == INFINITY))
  {
    v304 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundle *)self rankingVersion];
    v24 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundle *)self rankingVersion];
    v304 = [v24 numberWithDouble:?];
  }

  v303 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle suggestionType](self, "suggestionType")}];
  suggestionTimestamp = [(BMMomentsEventDataEventBundle *)self suggestionTimestamp];
  if (suggestionTimestamp)
  {
    v26 = MEMORY[0x1E696AD98];
    suggestionTimestamp2 = [(BMMomentsEventDataEventBundle *)self suggestionTimestamp];
    [suggestionTimestamp2 timeIntervalSince1970];
    v302 = [v26 numberWithDouble:?];
  }

  else
  {
    v302 = 0;
  }

  suggestionClientIdentifier = [(BMMomentsEventDataEventBundle *)self suggestionClientIdentifier];
  suggestionViewContainerName = [(BMMomentsEventDataEventBundle *)self suggestionViewContainerName];
  if (![(BMMomentsEventDataEventBundle *)self hasSuggestionViewVisibleTime]|| ([(BMMomentsEventDataEventBundle *)self suggestionViewVisibleTime], fabs(v28) == INFINITY))
  {
    v299 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundle *)self suggestionViewVisibleTime];
    v29 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundle *)self suggestionViewVisibleTime];
    v299 = [v29 numberWithDouble:?];
  }

  v298 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle appEntryEventType](self, "appEntryEventType")}];
  appEntryEventClientIdentifier = [(BMMomentsEventDataEventBundle *)self appEntryEventClientIdentifier];
  appEntryEventTimestamp = [(BMMomentsEventDataEventBundle *)self appEntryEventTimestamp];
  if (appEntryEventTimestamp)
  {
    v31 = MEMORY[0x1E696AD98];
    appEntryEventTimestamp2 = [(BMMomentsEventDataEventBundle *)self appEntryEventTimestamp];
    [appEntryEventTimestamp2 timeIntervalSince1970];
    v296 = [v31 numberWithDouble:?];
  }

  else
  {
    v296 = 0;
  }

  appEntryEventStartTime = [(BMMomentsEventDataEventBundle *)self appEntryEventStartTime];
  if (appEntryEventStartTime)
  {
    v34 = MEMORY[0x1E696AD98];
    appEntryEventStartTime2 = [(BMMomentsEventDataEventBundle *)self appEntryEventStartTime];
    [appEntryEventStartTime2 timeIntervalSince1970];
    v295 = [v34 numberWithDouble:?];
  }

  else
  {
    v295 = 0;
  }

  appEntryEventEndTime = [(BMMomentsEventDataEventBundle *)self appEntryEventEndTime];
  if (appEntryEventEndTime)
  {
    v37 = MEMORY[0x1E696AD98];
    appEntryEventEndTime2 = [(BMMomentsEventDataEventBundle *)self appEntryEventEndTime];
    [appEntryEventEndTime2 timeIntervalSince1970];
    v294 = [v37 numberWithDouble:?];
  }

  else
  {
    v294 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasAppEntryEventTotalCharacters])
  {
    v293 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle appEntryEventTotalCharacters](self, "appEntryEventTotalCharacters")}];
  }

  else
  {
    v293 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasAppEntryEventAddedCharacters])
  {
    v292 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle appEntryEventAddedCharacters](self, "appEntryEventAddedCharacters")}];
  }

  else
  {
    v292 = 0;
  }

  v291 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle clientActivityEventType](self, "clientActivityEventType")}];
  clientActivityEventClientIdentifier = [(BMMomentsEventDataEventBundle *)self clientActivityEventClientIdentifier];
  clientActivityEventTimestamp = [(BMMomentsEventDataEventBundle *)self clientActivityEventTimestamp];
  if (clientActivityEventTimestamp)
  {
    v40 = MEMORY[0x1E696AD98];
    clientActivityEventTimestamp2 = [(BMMomentsEventDataEventBundle *)self clientActivityEventTimestamp];
    [clientActivityEventTimestamp2 timeIntervalSince1970];
    v289 = [v40 numberWithDouble:?];
  }

  else
  {
    v289 = 0;
  }

  suggestionIdentifier = [(BMMomentsEventDataEventBundle *)self suggestionIdentifier];
  v287 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle photoSourceType](self, "photoSourceType")}];
  v286 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle photoLibraryType](self, "photoLibraryType")}];
  if ([(BMMomentsEventDataEventBundle *)self hasBundleSourcePostAnalyticsExists])
  {
    v285 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourcePostAnalyticsExists](self, "bundleSourcePostAnalyticsExists")}];
  }

  else
  {
    v285 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasBundleSourcePDExists])
  {
    v284 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourcePDExists](self, "bundleSourcePDExists")}];
  }

  else
  {
    v284 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasBundleSourceMotionExists])
  {
    v283 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceMotionExists](self, "bundleSourceMotionExists")}];
  }

  else
  {
    v283 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasBundleSourceBooksExists])
  {
    v282 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceBooksExists](self, "bundleSourceBooksExists")}];
  }

  else
  {
    v282 = 0;
  }

  if ([(BMMomentsEventDataEventBundle *)self hasBundleSourceScreenTimeExists])
  {
    v281 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceScreenTimeExists](self, "bundleSourceScreenTimeExists")}];
  }

  else
  {
    v281 = 0;
  }

  _gaPRArrayJSONArray = [(BMMomentsEventDataEventBundle *)self _gaPRArrayJSONArray];
  if ([(BMMomentsEventDataEventBundle *)self hasBundlePCount])
  {
    v279 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundlePCount](self, "bundlePCount")}];
  }

  else
  {
    v279 = 0;
  }

  v278 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle ranking](self, "ranking")}];
  v277 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle labelConfidenceScore](self, "labelConfidenceScore")}];
  v276 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle timeCorrelationScore](self, "timeCorrelationScore")}];
  v275 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle callDuration](self, "callDuration")}];
  v274 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle interactionCount](self, "interactionCount")}];
  v273 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle interactionType](self, "interactionType")}];
  v272 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle callPlace](self, "callPlace")}];
  v271 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle distanceFromHome](self, "distanceFromHome")}];
  v270 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle homeAvailability](self, "homeAvailability")}];
  v269 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle workAvailability](self, "workAvailability")}];
  v268 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundleVisitMapItemSource](self, "bundleVisitMapItemSource")}];
  v267 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundleVisitPlaceType](self, "bundleVisitPlaceType")}];
  v266 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundleVisitPlaceLabelGranularity](self, "bundleVisitPlaceLabelGranularity")}];
  v265 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundleIncludesAnomalousEvent](self, "bundleIncludesAnomalousEvent")}];
  if ([(BMMomentsEventDataEventBundle *)self hasIsFiltered])
  {
    v264 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isFiltered](self, "isFiltered")}];
  }

  else
  {
    v264 = 0;
  }

  v263 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundleSuperType](self, "bundleSuperType")}];
  v262 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundleSubType](self, "bundleSubType")}];
  if ([(BMMomentsEventDataEventBundle *)self hasIsAggregatedAndSuppressed])
  {
    v261 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isAggregatedAndSuppressed](self, "isAggregatedAndSuppressed")}];
  }

  else
  {
    v261 = 0;
  }

  v260 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle summarizationGranularity](self, "summarizationGranularity")}];
  if ([(BMMomentsEventDataEventBundle *)self hasIncludedInSummaryBundleOnly])
  {
    v259 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle includedInSummaryBundleOnly](self, "includedInSummaryBundleOnly")}];
  }

  else
  {
    v259 = 0;
  }

  _subBundleIDsJSONArray = [(BMMomentsEventDataEventBundle *)self _subBundleIDsJSONArray];
  _subSuggestionIDsJSONArray = [(BMMomentsEventDataEventBundle *)self _subSuggestionIDsJSONArray];
  firstCreationDate = [(BMMomentsEventDataEventBundle *)self firstCreationDate];
  if (firstCreationDate)
  {
    v43 = MEMORY[0x1E696AD98];
    firstCreationDate2 = [(BMMomentsEventDataEventBundle *)self firstCreationDate];
    [firstCreationDate2 timeIntervalSince1970];
    v256 = [v43 numberWithDouble:?];
  }

  else
  {
    v256 = 0;
  }

  _resourcesJSONArray = [(BMMomentsEventDataEventBundle *)self _resourcesJSONArray];
  _personsJSONArray = [(BMMomentsEventDataEventBundle *)self _personsJSONArray];
  mainPlace = [(BMMomentsEventDataEventBundle *)self mainPlace];
  jsonDictionary2 = [mainPlace jsonDictionary];

  _otherPlacesJSONArray = [(BMMomentsEventDataEventBundle *)self _otherPlacesJSONArray];
  _photoTraitsJSONArray = [(BMMomentsEventDataEventBundle *)self _photoTraitsJSONArray];
  clusterMetadata = [(BMMomentsEventDataEventBundle *)self clusterMetadata];
  jsonDictionary3 = [clusterMetadata jsonDictionary];

  outlierMetadata = [(BMMomentsEventDataEventBundle *)self outlierMetadata];
  jsonDictionary4 = [outlierMetadata jsonDictionary];

  if (![(BMMomentsEventDataEventBundle *)self hasBundleGoodnessScore]|| ([(BMMomentsEventDataEventBundle *)self bundleGoodnessScore], fabs(v48) == INFINITY))
  {
    v248 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundle *)self bundleGoodnessScore];
    v49 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundle *)self bundleGoodnessScore];
    v248 = [v49 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundle *)self hasDistinctnessScore]|| ([(BMMomentsEventDataEventBundle *)self distinctnessScore], fabs(v50) == INFINITY))
  {
    v247 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundle *)self distinctnessScore];
    v51 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundle *)self distinctnessScore];
    v247 = [v51 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundle *)self hasRichnessScore]|| ([(BMMomentsEventDataEventBundle *)self richnessScore], fabs(v52) == INFINITY))
  {
    v246 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundle *)self richnessScore];
    v53 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundle *)self richnessScore];
    v246 = [v53 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundle *)self hasEngagementScore]|| ([(BMMomentsEventDataEventBundle *)self engagementScore], fabs(v54) == INFINITY))
  {
    v245 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundle *)self engagementScore];
    v55 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundle *)self engagementScore];
    v245 = [v55 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundle *)self hasHeuristicsScore]|| ([(BMMomentsEventDataEventBundle *)self heuristicsScore], fabs(v56) == INFINITY))
  {
    v244 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundle *)self heuristicsScore];
    v57 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundle *)self heuristicsScore];
    v244 = [v57 numberWithDouble:?];
  }

  metadataForRank = [(BMMomentsEventDataEventBundle *)self metadataForRank];
  jsonDictionary5 = [metadataForRank jsonDictionary];

  v329[0] = @"bundleIdentifier";
  null = bundleIdentifier;
  if (!bundleIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v233 = null;
  v330[0] = null;
  v329[1] = @"bundleStartDate";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v232 = null2;
  v330[1] = null2;
  v329[2] = @"bundleEndDate";
  null3 = v11;
  if (!v11)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v231 = null3;
  v330[2] = null3;
  v329[3] = @"bundleCreationDate";
  null4 = v15;
  if (!v15)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v230 = null4;
  v330[3] = null4;
  v329[4] = @"bundleExpirationDate";
  null5 = v19;
  if (!v19)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v229 = null5;
  v330[4] = null5;
  v329[5] = @"bundleInterfaceType";
  null6 = v328;
  if (!v328)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v330[5] = null6;
  v329[6] = @"bundleSourceHealthExists";
  null7 = v327;
  if (!v327)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v330[6] = null7;
  v329[7] = @"bundleSourcePhotoExists";
  null8 = v326;
  if (!v326)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v330[7] = null8;
  v329[8] = @"bundleSourceProactiveExists";
  null9 = v325;
  if (!v325)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v330[8] = null9;
  v329[9] = @"bundleSourceRoutineExists";
  null10 = v324;
  if (!v324)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v238 = null10;
  v330[9] = null10;
  v329[10] = @"bundlePromptLanguageFormat";
  null11 = bundlePromptLanguageFormat;
  if (!bundlePromptLanguageFormat)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v237 = null11;
  v330[10] = null11;
  v329[11] = @"bundlePromptToneID";
  null12 = bundlePromptToneID;
  if (!bundlePromptToneID)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v236 = null12;
  v330[11] = null12;
  v329[12] = @"bundlePromptParametersAvailability";
  null13 = v321;
  if (!v321)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = bundleIdentifier;
  v235 = null13;
  v330[12] = null13;
  v329[13] = @"bundlePlaceType";
  null14 = v320;
  if (!v320)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null14;
  v330[13] = null14;
  v329[14] = @"bundlePlaceUserType";
  null15 = v319;
  if (!v319)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v225 = null15;
  v330[14] = null15;
  v329[15] = @"bundleBaseEventCateory";
  null16 = v318;
  if (!v318)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v224 = null16;
  v330[15] = null16;
  v329[16] = @"bundleEventIDs";
  null17 = _bundleEventIDsJSONArray;
  if (!_bundleEventIDsJSONArray)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v223 = null17;
  v330[16] = null17;
  v329[17] = @"bundleActionType";
  null18 = jsonDictionary;
  if (!jsonDictionary)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v222 = null18;
  v330[17] = null18;
  v329[18] = @"backgroundActions";
  null19 = _backgroundActionsJSONArray;
  if (!_backgroundActionsJSONArray)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v221 = null19;
  v330[18] = null19;
  v329[19] = @"bundleIsFamilyIncluded";
  null20 = v314;
  if (!v314)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v220 = null20;
  v330[19] = null20;
  v329[20] = @"bundleTimeTag";
  null21 = v313;
  if (!v313)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v219 = null21;
  v330[20] = null21;
  v329[21] = @"isBundleResourceTypeUnknown";
  null22 = v312;
  if (!v312)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v218 = null22;
  v330[21] = null22;
  v329[22] = @"isBundleResourceTypeValueIncluded";
  null23 = v311;
  if (!v311)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v217 = null23;
  v330[22] = null23;
  v329[23] = @"isBundleResourceTypePhotoAssetsIncluded";
  null24 = v310;
  if (!v310)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v216 = null24;
  v330[23] = null24;
  v329[24] = @"isBundleResourceTypeMediaIncluded";
  null25 = v309;
  if (!v309)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v215 = null25;
  v330[24] = null25;
  v329[25] = @"isBundleResourceTypeWebLinkIncluded";
  null26 = v308;
  if (!v308)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v214 = null26;
  v330[25] = null26;
  v329[26] = @"isBundleResourceTypeInterenceTagIncluded";
  null27 = v307;
  if (!v307)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v213 = null27;
  v330[26] = null27;
  v329[27] = @"bundlEngagement";
  null28 = v306;
  if (!v306)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v212 = null28;
  v330[27] = null28;
  v329[28] = @"bundleVersion";
  null29 = v305;
  if (!v305)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v211 = null29;
  v330[28] = null29;
  v329[29] = @"rankingVersion";
  null30 = v304;
  if (!v304)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v210 = null30;
  v330[29] = null30;
  v329[30] = @"suggestionType";
  null31 = v303;
  if (!v303)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v209 = null31;
  v330[30] = null31;
  v329[31] = @"suggestionTimestamp";
  null32 = v302;
  if (!v302)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v208 = null32;
  v330[31] = null32;
  v329[32] = @"suggestionClientIdentifier";
  null33 = suggestionClientIdentifier;
  if (!suggestionClientIdentifier)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v207 = null33;
  v330[32] = null33;
  v329[33] = @"suggestionViewContainerName";
  null34 = suggestionViewContainerName;
  if (!suggestionViewContainerName)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v206 = null34;
  v330[33] = null34;
  v329[34] = @"suggestionViewVisibleTime";
  null35 = v299;
  if (!v299)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v205 = null35;
  v330[34] = null35;
  v329[35] = @"appEntryEventType";
  null36 = v298;
  if (!v298)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v204 = null36;
  v330[35] = null36;
  v329[36] = @"appEntryEventClientIdentifier";
  null37 = appEntryEventClientIdentifier;
  if (!appEntryEventClientIdentifier)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v203 = null37;
  v330[36] = null37;
  v329[37] = @"appEntryEventTimestamp";
  null38 = v296;
  if (!v296)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v202 = null38;
  v330[37] = null38;
  v329[38] = @"appEntryEventStartTime";
  null39 = v295;
  if (!v295)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v201 = null39;
  v330[38] = null39;
  v329[39] = @"appEntryEventEndTime";
  null40 = v294;
  if (!v294)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v200 = null40;
  v330[39] = null40;
  v329[40] = @"appEntryEventTotalCharacters";
  null41 = v293;
  if (!v293)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v199 = null41;
  v330[40] = null41;
  v329[41] = @"appEntryEventAddedCharacters";
  null42 = v292;
  if (!v292)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v198 = null42;
  v330[41] = null42;
  v329[42] = @"clientActivityEventType";
  null43 = v291;
  if (!v291)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v197 = null43;
  v330[42] = null43;
  v329[43] = @"clientActivityEventClientIdentifier";
  null44 = clientActivityEventClientIdentifier;
  if (!clientActivityEventClientIdentifier)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v196 = null44;
  v330[43] = null44;
  v329[44] = @"clientActivityEventTimestamp";
  null45 = v289;
  if (!v289)
  {
    null45 = [MEMORY[0x1E695DFB0] null];
  }

  v195 = null45;
  v330[44] = null45;
  v329[45] = @"suggestionIdentifier";
  null46 = suggestionIdentifier;
  if (!suggestionIdentifier)
  {
    null46 = [MEMORY[0x1E695DFB0] null];
  }

  v194 = null46;
  v330[45] = null46;
  v329[46] = @"photoSourceType";
  null47 = v287;
  if (!v287)
  {
    null47 = [MEMORY[0x1E695DFB0] null];
  }

  v193 = null47;
  v330[46] = null47;
  v329[47] = @"photoLibraryType";
  null48 = v286;
  if (!v286)
  {
    null48 = [MEMORY[0x1E695DFB0] null];
  }

  v192 = null48;
  v330[47] = null48;
  v329[48] = @"bundleSourcePostAnalyticsExists";
  null49 = v285;
  if (!v285)
  {
    null49 = [MEMORY[0x1E695DFB0] null];
  }

  v191 = null49;
  v330[48] = null49;
  v329[49] = @"bundleSourcePDExists";
  null50 = v284;
  if (!v284)
  {
    null50 = [MEMORY[0x1E695DFB0] null];
  }

  v190 = null50;
  v330[49] = null50;
  v329[50] = @"bundleSourceMotionExists";
  null51 = v283;
  if (!v283)
  {
    null51 = [MEMORY[0x1E695DFB0] null];
  }

  v189 = null51;
  v330[50] = null51;
  v329[51] = @"bundleSourceBooksExists";
  null52 = v282;
  if (!v282)
  {
    null52 = [MEMORY[0x1E695DFB0] null];
  }

  v188 = null52;
  v330[51] = null52;
  v329[52] = @"bundleSourceScreenTimeExists";
  null53 = v281;
  if (!v281)
  {
    null53 = [MEMORY[0x1E695DFB0] null];
  }

  v187 = null53;
  v330[52] = null53;
  v329[53] = @"gaPRArray";
  null54 = _gaPRArrayJSONArray;
  if (!_gaPRArrayJSONArray)
  {
    null54 = [MEMORY[0x1E695DFB0] null];
  }

  v186 = null54;
  v330[53] = null54;
  v329[54] = @"bundlePCount";
  null55 = v279;
  if (!v279)
  {
    null55 = [MEMORY[0x1E695DFB0] null];
  }

  v185 = null55;
  v330[54] = null55;
  v329[55] = @"ranking";
  null56 = v278;
  if (!v278)
  {
    null56 = [MEMORY[0x1E695DFB0] null];
  }

  v184 = null56;
  v330[55] = null56;
  v329[56] = @"labelConfidenceScore";
  null57 = v277;
  if (!v277)
  {
    null57 = [MEMORY[0x1E695DFB0] null];
  }

  v183 = null57;
  v330[56] = null57;
  v329[57] = @"timeCorrelationScore";
  null58 = v276;
  if (!v276)
  {
    null58 = [MEMORY[0x1E695DFB0] null];
  }

  v182 = null58;
  v330[57] = null58;
  v329[58] = @"callDuration";
  null59 = v275;
  if (!v275)
  {
    null59 = [MEMORY[0x1E695DFB0] null];
  }

  v181 = null59;
  v330[58] = null59;
  v329[59] = @"interactionCount";
  null60 = v274;
  if (!v274)
  {
    null60 = [MEMORY[0x1E695DFB0] null];
  }

  v180 = null60;
  v330[59] = null60;
  v329[60] = @"interactionType";
  null61 = v273;
  if (!v273)
  {
    null61 = [MEMORY[0x1E695DFB0] null];
  }

  v179 = null61;
  v330[60] = null61;
  v329[61] = @"callPlace";
  null62 = v272;
  if (!v272)
  {
    null62 = [MEMORY[0x1E695DFB0] null];
  }

  v178 = null62;
  v330[61] = null62;
  v329[62] = @"distanceFromHome";
  null63 = v271;
  if (!v271)
  {
    null63 = [MEMORY[0x1E695DFB0] null];
  }

  v177 = null63;
  v330[62] = null63;
  v329[63] = @"homeAvailability";
  null64 = v270;
  if (!v270)
  {
    null64 = [MEMORY[0x1E695DFB0] null];
  }

  v176 = null64;
  v330[63] = null64;
  v329[64] = @"workAvailability";
  null65 = v269;
  if (!v269)
  {
    null65 = [MEMORY[0x1E695DFB0] null];
  }

  v175 = null65;
  v330[64] = null65;
  v329[65] = @"bundleVisitMapItemSource";
  null66 = v268;
  if (!v268)
  {
    null66 = [MEMORY[0x1E695DFB0] null];
  }

  v174 = null66;
  v330[65] = null66;
  v329[66] = @"bundleVisitPlaceType";
  null67 = v267;
  if (!v267)
  {
    null67 = [MEMORY[0x1E695DFB0] null];
  }

  v173 = null67;
  v330[66] = null67;
  v329[67] = @"bundleVisitPlaceLabelGranularity";
  null68 = v266;
  if (!v266)
  {
    null68 = [MEMORY[0x1E695DFB0] null];
  }

  v172 = null68;
  v330[67] = null68;
  v329[68] = @"bundleIncludesAnomalousEvent";
  null69 = v265;
  if (!v265)
  {
    null69 = [MEMORY[0x1E695DFB0] null];
  }

  v171 = null69;
  v330[68] = null69;
  v329[69] = @"isFiltered";
  null70 = v264;
  if (!v264)
  {
    null70 = [MEMORY[0x1E695DFB0] null];
  }

  v170 = null70;
  v330[69] = null70;
  v329[70] = @"bundleSuperType";
  null71 = v263;
  if (!v263)
  {
    null71 = [MEMORY[0x1E695DFB0] null];
  }

  v169 = null71;
  v330[70] = null71;
  v329[71] = @"bundleSubType";
  null72 = v262;
  if (!v262)
  {
    null72 = [MEMORY[0x1E695DFB0] null];
  }

  v168 = null72;
  v330[71] = null72;
  v329[72] = @"isAggregatedAndSuppressed";
  null73 = v261;
  if (!v261)
  {
    null73 = [MEMORY[0x1E695DFB0] null];
  }

  v167 = null73;
  v330[72] = null73;
  v329[73] = @"summarizationGranularity";
  null74 = v260;
  if (!v260)
  {
    null74 = [MEMORY[0x1E695DFB0] null];
  }

  v166 = null74;
  v330[73] = null74;
  v329[74] = @"includedInSummaryBundleOnly";
  null75 = v259;
  if (!v259)
  {
    null75 = [MEMORY[0x1E695DFB0] null];
  }

  v165 = null75;
  v330[74] = null75;
  v329[75] = @"subBundleIDs";
  null76 = _subBundleIDsJSONArray;
  if (!_subBundleIDsJSONArray)
  {
    null76 = [MEMORY[0x1E695DFB0] null];
  }

  v164 = null76;
  v330[75] = null76;
  v329[76] = @"subSuggestionIDs";
  null77 = _subSuggestionIDsJSONArray;
  if (!_subSuggestionIDsJSONArray)
  {
    null77 = [MEMORY[0x1E695DFB0] null];
  }

  v163 = null77;
  v330[76] = null77;
  v329[77] = @"firstCreationDate";
  null78 = v256;
  if (!v256)
  {
    null78 = [MEMORY[0x1E695DFB0] null];
  }

  v162 = null78;
  v330[77] = null78;
  v329[78] = @"resources";
  null79 = _resourcesJSONArray;
  if (!_resourcesJSONArray)
  {
    null79 = [MEMORY[0x1E695DFB0] null];
  }

  v161 = null79;
  v330[78] = null79;
  v329[79] = @"persons";
  null80 = _personsJSONArray;
  if (!_personsJSONArray)
  {
    null80 = [MEMORY[0x1E695DFB0] null];
  }

  v160 = null80;
  v330[79] = null80;
  v329[80] = @"mainPlace";
  null81 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null81 = [MEMORY[0x1E695DFB0] null];
  }

  v239 = v19;
  v159 = null81;
  v330[80] = null81;
  v329[81] = @"otherPlaces";
  null82 = _otherPlacesJSONArray;
  if (!_otherPlacesJSONArray)
  {
    null82 = [MEMORY[0x1E695DFB0] null];
  }

  v240 = v15;
  v158 = null82;
  v330[81] = null82;
  v329[82] = @"photoTraits";
  null83 = _photoTraitsJSONArray;
  if (!_photoTraitsJSONArray)
  {
    null83 = [MEMORY[0x1E695DFB0] null];
  }

  v242 = v7;
  v157 = null83;
  v330[82] = null83;
  v329[83] = @"clusterMetadata";
  null84 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null84 = [MEMORY[0x1E695DFB0] null];
  }

  v241 = v11;
  v156 = null84;
  v330[83] = null84;
  v329[84] = @"outlierMetadata";
  null85 = jsonDictionary4;
  if (!jsonDictionary4)
  {
    null85 = [MEMORY[0x1E695DFB0] null];
  }

  v227 = null7;
  v330[84] = null85;
  v329[85] = @"bundleGoodnessScore";
  null86 = v248;
  if (!v248)
  {
    null86 = [MEMORY[0x1E695DFB0] null];
  }

  v228 = null6;
  v330[85] = null86;
  v329[86] = @"distinctnessScore";
  null87 = v247;
  if (!v247)
  {
    null87 = [MEMORY[0x1E695DFB0] null];
  }

  v226 = null8;
  v330[86] = null87;
  v329[87] = @"richnessScore";
  null88 = v246;
  if (!v246)
  {
    null88 = [MEMORY[0x1E695DFB0] null];
  }

  v149 = null9;
  v330[87] = null88;
  v329[88] = @"engagementScore";
  null89 = v245;
  if (!v245)
  {
    null89 = [MEMORY[0x1E695DFB0] null];
  }

  v330[88] = null89;
  v329[89] = @"heuristicsScore";
  null90 = v244;
  if (!v244)
  {
    null90 = [MEMORY[0x1E695DFB0] null];
  }

  v330[89] = null90;
  v329[90] = @"metadataForRank";
  null91 = jsonDictionary5;
  if (!jsonDictionary5)
  {
    null91 = [MEMORY[0x1E695DFB0] null];
  }

  v330[90] = null91;
  v234 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v330 forKeys:v329 count:91];
  if (!jsonDictionary5)
  {
  }

  v153 = v74;
  if (!v244)
  {

    v153 = v74;
  }

  if (!v245)
  {

    v153 = v74;
  }

  if (!v246)
  {

    v153 = v74;
  }

  if (!v247)
  {

    v153 = v74;
  }

  if (!v248)
  {

    v153 = v74;
  }

  if (!jsonDictionary4)
  {

    v153 = v74;
  }

  if (!jsonDictionary3)
  {

    v153 = v74;
  }

  if (!_photoTraitsJSONArray)
  {

    v153 = v74;
  }

  if (!_otherPlacesJSONArray)
  {

    v153 = v74;
  }

  if (!jsonDictionary2)
  {

    v153 = v74;
  }

  if (!_personsJSONArray)
  {

    v153 = v74;
  }

  if (!_resourcesJSONArray)
  {

    v153 = v74;
  }

  if (!v256)
  {

    v153 = v74;
  }

  if (!_subSuggestionIDsJSONArray)
  {

    v153 = v74;
  }

  if (!_subBundleIDsJSONArray)
  {

    v153 = v74;
  }

  if (!v259)
  {

    v153 = v74;
  }

  if (!v260)
  {

    v153 = v74;
  }

  if (!v261)
  {

    v153 = v74;
  }

  if (!v262)
  {

    v153 = v74;
  }

  if (!v263)
  {

    v153 = v74;
  }

  if (!v264)
  {

    v153 = v74;
  }

  if (!v265)
  {

    v153 = v74;
  }

  if (!v266)
  {

    v153 = v74;
  }

  if (!v267)
  {

    v153 = v74;
  }

  if (!v268)
  {

    v153 = v74;
  }

  if (!v269)
  {

    v153 = v74;
  }

  if (!v270)
  {

    v153 = v74;
  }

  if (!v271)
  {

    v153 = v74;
  }

  if (!v272)
  {

    v153 = v74;
  }

  if (!v273)
  {

    v153 = v74;
  }

  if (!v274)
  {

    v153 = v74;
  }

  if (!v275)
  {

    v153 = v74;
  }

  if (!v276)
  {

    v153 = v74;
  }

  if (!v277)
  {

    v153 = v74;
  }

  if (!v278)
  {

    v153 = v74;
  }

  if (!v279)
  {

    v153 = v74;
  }

  if (!_gaPRArrayJSONArray)
  {

    v153 = v74;
  }

  if (!v281)
  {

    v153 = v74;
  }

  if (!v282)
  {

    v153 = v74;
  }

  if (!v283)
  {

    v153 = v74;
  }

  if (!v284)
  {

    v153 = v74;
  }

  if (!v285)
  {

    v153 = v74;
  }

  if (!v286)
  {

    v153 = v74;
  }

  if (!v287)
  {

    v153 = v74;
  }

  if (!suggestionIdentifier)
  {

    v153 = v74;
  }

  if (!v289)
  {

    v153 = v74;
  }

  if (!clientActivityEventClientIdentifier)
  {

    v153 = v74;
  }

  if (!v291)
  {

    v153 = v74;
  }

  if (!v292)
  {

    v153 = v74;
  }

  if (!v293)
  {

    v153 = v74;
  }

  if (!v294)
  {

    v153 = v74;
  }

  if (!v295)
  {

    v153 = v74;
  }

  if (!v296)
  {

    v153 = v74;
  }

  if (!appEntryEventClientIdentifier)
  {

    v153 = v74;
  }

  if (!v298)
  {

    v153 = v74;
  }

  if (!v299)
  {

    v153 = v74;
  }

  if (!suggestionViewContainerName)
  {

    v153 = v74;
  }

  if (!suggestionClientIdentifier)
  {

    v153 = v74;
  }

  if (!v302)
  {

    v153 = v74;
  }

  if (!v303)
  {

    v153 = v74;
  }

  if (!v304)
  {

    v153 = v74;
  }

  if (!v305)
  {

    v153 = v74;
  }

  if (!v306)
  {

    v153 = v74;
  }

  if (!v307)
  {

    v153 = v74;
  }

  if (!v308)
  {

    v153 = v74;
  }

  if (!v309)
  {

    v153 = v74;
  }

  if (!v310)
  {

    v153 = v74;
  }

  if (!v311)
  {

    v153 = v74;
  }

  if (!v312)
  {

    v153 = v74;
  }

  if (!v313)
  {

    v153 = v74;
  }

  if (!v314)
  {

    v153 = v74;
  }

  if (!_backgroundActionsJSONArray)
  {

    v153 = v74;
  }

  if (!jsonDictionary)
  {

    v153 = v74;
  }

  if (!_bundleEventIDsJSONArray)
  {

    v153 = v74;
  }

  if (!v318)
  {

    v153 = v74;
  }

  if (!v319)
  {

    v153 = v74;
  }

  if (!v320)
  {
  }

  if (!v321)
  {
  }

  if (!bundlePromptToneID)
  {
  }

  if (!bundlePromptLanguageFormat)
  {
  }

  if (!v324)
  {
  }

  if (!v325)
  {
  }

  if (!v326)
  {
  }

  if (!v327)
  {
  }

  if (v328)
  {
    if (v239)
    {
      goto LABEL_486;
    }
  }

  else
  {

    if (v239)
    {
LABEL_486:
      if (v240)
      {
        goto LABEL_487;
      }

      goto LABEL_495;
    }
  }

  if (v240)
  {
LABEL_487:
    if (v241)
    {
      goto LABEL_488;
    }

    goto LABEL_496;
  }

LABEL_495:

  if (v241)
  {
LABEL_488:
    if (v242)
    {
      goto LABEL_489;
    }

LABEL_497:

    if (v72)
    {
      goto LABEL_490;
    }

    goto LABEL_498;
  }

LABEL_496:

  if (!v242)
  {
    goto LABEL_497;
  }

LABEL_489:
  if (v72)
  {
    goto LABEL_490;
  }

LABEL_498:

LABEL_490:
  v154 = *MEMORY[0x1E69E9840];

  return v234;
}

- (id)_photoTraitsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  photoTraits = [(BMMomentsEventDataEventBundle *)self photoTraits];
  v5 = [photoTraits countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(photoTraits);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [photoTraits countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_otherPlacesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  otherPlaces = [(BMMomentsEventDataEventBundle *)self otherPlaces];
  v5 = [otherPlaces countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(otherPlaces);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [otherPlaces countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_personsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  persons = [(BMMomentsEventDataEventBundle *)self persons];
  v5 = [persons countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(persons);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [persons countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_resourcesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  resources = [(BMMomentsEventDataEventBundle *)self resources];
  v5 = [resources countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(resources);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [resources countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_subSuggestionIDsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subSuggestionIDs = [(BMMomentsEventDataEventBundle *)self subSuggestionIDs];
  v5 = [subSuggestionIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(subSuggestionIDs);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [subSuggestionIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_subBundleIDsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subBundleIDs = [(BMMomentsEventDataEventBundle *)self subBundleIDs];
  v5 = [subBundleIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(subBundleIDs);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [subBundleIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_gaPRArrayJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  gaPRArray = [(BMMomentsEventDataEventBundle *)self gaPRArray];
  v5 = [gaPRArray countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(gaPRArray);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [gaPRArray countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_backgroundActionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  backgroundActions = [(BMMomentsEventDataEventBundle *)self backgroundActions];
  v5 = [backgroundActions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(backgroundActions);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [backgroundActions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_bundleEventIDsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  bundleEventIDs = [(BMMomentsEventDataEventBundle *)self bundleEventIDs];
  v5 = [bundleEventIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(bundleEventIDs);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [bundleEventIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMomentsEventDataEventBundle)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v1161[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
  v888 = v7;
  if (!v7 || (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v885 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v885 = v8;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"bundleStartDate"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      v12 = objc_alloc(MEMORY[0x1E695DF00]);
      [v11 doubleValue];
      v10 = [v12 initWithTimeIntervalSince1970:?];
LABEL_15:

      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v18 = v9;
      v10 = [v11 dateFromString:v18];

      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
LABEL_16:
      v19 = [dictionaryCopy objectForKeyedSubscript:@"bundleEndDate"];
      v883 = v19;
      if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v875 = 0;
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
        v22 = objc_alloc(MEMORY[0x1E695DF00]);
        [v21 doubleValue];
        v875 = [v22 initWithTimeIntervalSince1970:?];
LABEL_23:

        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v23 = v20;
        v875 = [v21 dateFromString:v23];

        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v875 = v20;
LABEL_24:
        v24 = [dictionaryCopy objectForKeyedSubscript:@"bundleCreationDate"];
        v882 = v9;
        v884 = v24;
        if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v871 = 0;
          goto LABEL_32;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
          v27 = objc_alloc(MEMORY[0x1E695DF00]);
          [v26 doubleValue];
          v871 = [v27 initWithTimeIntervalSince1970:?];
LABEL_31:

          goto LABEL_32;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v28 = v25;
          v871 = [v26 dateFromString:v28];

          goto LABEL_31;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v871 = v25;
LABEL_32:
          v29 = [dictionaryCopy objectForKeyedSubscript:@"bundleExpirationDate"];
          v886 = v29;
          selfCopy = self;
          if (!v29 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v869 = 0;
            goto LABEL_40;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v29;
            v31 = objc_alloc(MEMORY[0x1E695DF00]);
            [v30 doubleValue];
            v32 = v31;
            v29 = v886;
            v869 = [v32 initWithTimeIntervalSince1970:?];
LABEL_39:

            goto LABEL_40;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v33 = v29;
            v869 = [v30 dateFromString:v33];

            v29 = v886;
            goto LABEL_39;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v869 = v29;
LABEL_40:
            v34 = [dictionaryCopy objectForKeyedSubscript:@"bundleInterfaceType"];
            v872 = v34;
            if (!v34 || (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v36 = 0;
              goto LABEL_48;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = v35;
LABEL_47:

              v29 = v886;
LABEL_48:
              v39 = [dictionaryCopy objectForKeyedSubscript:@"bundleSourceHealthExists"];
              if (!v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v866 = 0;
                goto LABEL_51;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v866 = v39;
LABEL_51:
                v40 = [dictionaryCopy objectForKeyedSubscript:@"bundleSourcePhotoExists"];
                v868 = v40;
                if (!v40 || (v41 = v40, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v867 = 0;
                  goto LABEL_54;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v867 = v41;
LABEL_54:
                  v42 = [dictionaryCopy objectForKeyedSubscript:@"bundleSourceProactiveExists"];
                  v865 = v42;
                  if (!v42 || (v43 = v42, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v864 = 0;
                    goto LABEL_57;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v864 = v43;
LABEL_57:
                    v44 = [dictionaryCopy objectForKeyedSubscript:@"bundleSourceRoutineExists"];
                    v862 = v44;
                    if (!v44 || (v45 = v44, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v861 = 0;
                      goto LABEL_60;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v861 = v45;
LABEL_60:
                      v46 = [dictionaryCopy objectForKeyedSubscript:@"bundlePromptLanguageFormat"];
                      v854 = v10;
                      v860 = v46;
                      errorCopy = error;
                      if (!v46 || (v47 = v46, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v859 = 0;
                        goto LABEL_63;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v859 = v47;
LABEL_63:
                        v48 = [dictionaryCopy objectForKeyedSubscript:@"bundlePromptToneID"];
                        v858 = v48;
                        if (!v48 || (v49 = v48, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v855 = 0;
                          goto LABEL_66;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v855 = v49;
LABEL_66:
                          v50 = [dictionaryCopy objectForKeyedSubscript:@"bundlePromptParametersAvailability"];
                          v852 = v50;
                          if (!v50 || (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v853 = 0;
                            goto LABEL_69;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v853 = v51;
LABEL_69:
                            v52 = [dictionaryCopy objectForKeyedSubscript:@"bundlePlaceType"];
                            v850 = v52;
                            if (!v52 || (v53 = v52, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v851 = 0;
                              goto LABEL_123;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v851 = v53;
LABEL_122:

LABEL_123:
                              v125 = [dictionaryCopy objectForKeyedSubscript:@"bundlePlaceUserType"];
                              v848 = v125;
                              if (!v125 || (v126 = v125, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v849 = 0;
LABEL_135:
                                v140 = [dictionaryCopy objectForKeyedSubscript:@"bundleBaseEventCateory"];
                                v846 = dictionaryCopy;
                                v847 = v140;
                                if (v140 && (v141 = v140, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v845 = v141;
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (errorCopy)
                                      {
                                        v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v196 = *MEMORY[0x1E698F240];
                                        v1130 = *MEMORY[0x1E696A578];
                                        v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleBaseEventCateory"];
                                        v1131 = v143;
                                        v881 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1131 forKeys:&v1130 count:1];
                                        v845 = 0;
                                        v873 = 0;
                                        *errorCopy = [v195 initWithDomain:v196 code:2 userInfo:?];
                                        v59 = v875;
                                        v60 = v871;
                                        v29 = v886;
                                        v61 = v869;
                                        v98 = v858;
                                        v16 = v885;
                                        goto LABEL_1111;
                                      }

                                      v845 = 0;
                                      v873 = 0;
                                      v59 = v875;
                                      v60 = v871;
                                      v29 = v886;
                                      v61 = v869;
                                      v98 = v858;
                                      v16 = v885;
                                      goto LABEL_1113;
                                    }

                                    v142 = v141;
                                    v845 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataEventCategoryTypeFromString(v142)];
                                  }
                                }

                                else
                                {
                                  v845 = 0;
                                }

                                v143 = [dictionaryCopy objectForKeyedSubscript:@"bundleEventIDs"];
                                null = [MEMORY[0x1E695DFB0] null];
                                v145 = [v143 isEqual:null];

                                v98 = v858;
                                if (v145)
                                {
                                  v844 = v36;

                                  v143 = 0;
                                }

                                else
                                {
                                  if (v143)
                                  {
                                    objc_opt_class();
                                    v29 = v886;
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (errorCopy)
                                      {
                                        v165 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v166 = *MEMORY[0x1E698F240];
                                        v1128 = *MEMORY[0x1E696A578];
                                        v881 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"bundleEventIDs"];
                                        v1129 = v881;
                                        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1129 forKeys:&v1128 count:1];
                                        v168 = v167 = v36;
                                        v169 = v166;
                                        v29 = v886;
                                        v873 = 0;
                                        *errorCopy = [v165 initWithDomain:v169 code:2 userInfo:v168];
                                        v164 = v168;
                                        v36 = v167;
                                        v59 = v875;
                                        v60 = v871;
                                        v61 = v869;
                                        v16 = v885;
                                        goto LABEL_1110;
                                      }

                                      v873 = 0;
                                      v59 = v875;
                                      v60 = v871;
                                      v61 = v869;
                                      v16 = v885;
                                      goto LABEL_1112;
                                    }

                                    v844 = v36;
LABEL_151:
                                    v881 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v143, "count")}];
                                    v931 = 0u;
                                    v932 = 0u;
                                    v933 = 0u;
                                    v934 = 0u;
                                    obj = v143;
                                    v146 = [obj countByEnumeratingWithState:&v931 objects:v1127 count:16];
                                    if (v146)
                                    {
                                      v147 = v146;
                                      v148 = *v932;
                                      do
                                      {
                                        for (i = 0; i != v147; ++i)
                                        {
                                          if (*v932 != v148)
                                          {
                                            objc_enumerationMutation(obj);
                                          }

                                          v150 = *(*(&v931 + 1) + 8 * i);
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            if (errorCopy)
                                            {
                                              v157 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v158 = *MEMORY[0x1E698F240];
                                              v1125 = *MEMORY[0x1E696A578];
                                              v840 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"bundleEventIDs"];
                                              v1126 = v840;
                                              v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1126 forKeys:&v1125 count:1];
                                              v160 = v157;
                                              v161 = v158;
LABEL_169:
                                              v843 = v159;
                                              v59 = v875;
                                              v60 = v871;
                                              v61 = v869;
                                              v873 = 0;
                                              *errorCopy = [v160 initWithDomain:v161 code:2 userInfo:?];
                                              v143 = obj;
                                              v841 = obj;
                                              v16 = v885;
                                              v29 = v886;
                                              v36 = v844;
                                              v98 = v858;
                                              goto LABEL_1109;
                                            }

LABEL_170:
                                            v873 = 0;
                                            v143 = obj;
                                            v164 = obj;
                                            v16 = v885;
                                            v59 = v875;
                                            v60 = v871;
                                            v29 = v886;
                                            v61 = v869;
                                            v36 = v844;
                                            v98 = v858;
                                            goto LABEL_1110;
                                          }

                                          objc_opt_class();
                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                          {
                                            if (errorCopy)
                                            {
                                              v162 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v163 = *MEMORY[0x1E698F240];
                                              v1123 = *MEMORY[0x1E696A578];
                                              v840 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleEventIDs"];
                                              v1124 = v840;
                                              v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1124 forKeys:&v1123 count:1];
                                              v160 = v162;
                                              v161 = v163;
                                              goto LABEL_169;
                                            }

                                            goto LABEL_170;
                                          }

                                          v151 = v150;
                                          [v881 addObject:v151];
                                        }

                                        v147 = [obj countByEnumeratingWithState:&v931 objects:v1127 count:16];
                                        dictionaryCopy = v846;
                                        v29 = v886;
                                        v98 = v858;
                                      }

                                      while (v147);
                                    }

                                    v143 = obj;

                                    v152 = [dictionaryCopy objectForKeyedSubscript:@"bundleActionType"];
                                    v841 = v152;
                                    if (!v152 || (v153 = v152, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v840 = 0;
LABEL_163:
                                      v36 = v844;
                                      v154 = [dictionaryCopy objectForKeyedSubscript:@"backgroundActions"];
                                      null2 = [MEMORY[0x1E695DFB0] null];
                                      v156 = [v154 isEqual:null2];

                                      if (v156)
                                      {

                                        v154 = 0;
                                      }

                                      else if (v154)
                                      {
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          v843 = v154;
                                          if (errorCopy)
                                          {
                                            v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v211 = *MEMORY[0x1E698F240];
                                            v1119 = *MEMORY[0x1E696A578];
                                            v842 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"backgroundActions"];
                                            v1120 = v842;
                                            v212 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1120 forKeys:&v1119 count:1];
                                            v873 = 0;
                                            *errorCopy = [v210 initWithDomain:v211 code:2 userInfo:v212];
                                            v213 = v212;
                                            v36 = v844;
                                            v16 = v885;
                                            v59 = v875;
                                            v60 = v871;
                                            v29 = v886;
                                            v61 = v869;
                                            goto LABEL_1108;
                                          }

                                          v873 = 0;
                                          v16 = v885;
                                          v59 = v875;
                                          v60 = v871;
                                          v29 = v886;
                                          v61 = v869;
                                          goto LABEL_1109;
                                        }
                                      }

                                      v842 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v154, "count")}];
                                      v926 = 0u;
                                      v927 = 0u;
                                      v928 = 0u;
                                      v929 = 0u;
                                      v170 = v154;
                                      v171 = [v170 countByEnumeratingWithState:&v926 objects:v1118 count:16];
                                      v843 = v170;
                                      if (!v171)
                                      {
                                        goto LABEL_189;
                                      }

                                      v172 = v171;
                                      v173 = *v927;
                                      while (1)
                                      {
                                        for (j = 0; j != v172; ++j)
                                        {
                                          if (*v927 != v173)
                                          {
                                            objc_enumerationMutation(v843);
                                          }

                                          v175 = *(*(&v926 + 1) + 8 * j);
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v201 = errorCopy;
                                            if (errorCopy)
                                            {
                                              v202 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v203 = *MEMORY[0x1E698F240];
                                              v1116 = *MEMORY[0x1E696A578];
                                              v838 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"backgroundActions"];
                                              v1117 = v838;
                                              v204 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1117 forKeys:&v1116 count:1];
                                              v205 = v202;
                                              v206 = v203;
                                              goto LABEL_220;
                                            }

LABEL_229:
                                            v873 = 0;
                                            v213 = v843;
                                            v16 = v885;
                                            v59 = v875;
                                            v60 = v871;
                                            v29 = v886;
                                            v61 = v869;
                                            v98 = v858;
                                            v143 = obj;
                                            v36 = v844;
                                            goto LABEL_1108;
                                          }

                                          objc_opt_class();
                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                          {
                                            v201 = errorCopy;
                                            if (!errorCopy)
                                            {
                                              goto LABEL_229;
                                            }

                                            v207 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v208 = *MEMORY[0x1E698F240];
                                            v1114 = *MEMORY[0x1E696A578];
                                            v838 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"backgroundActions"];
                                            v1115 = v838;
                                            v204 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1115 forKeys:&v1114 count:1];
                                            v205 = v207;
                                            v206 = v208;
LABEL_220:
                                            v839 = v204;
                                            v873 = 0;
                                            *v201 = [v205 initWithDomain:v206 code:2 userInfo:?];
LABEL_224:
                                            v837 = v843;
                                            v16 = v885;
                                            v59 = v875;
                                            v60 = v871;
                                            v29 = v886;
                                            v61 = v869;
                                            v98 = v858;
                                            v143 = obj;
                                            v36 = v844;
                                            goto LABEL_1106;
                                          }

                                          v176 = v175;
                                          v177 = [BMMomentsEventDataAction alloc];
                                          v925 = 0;
                                          v178 = [(BMMomentsEventDataAction *)v177 initWithJSONDictionary:v176 error:&v925];
                                          v179 = v925;
                                          if (v179)
                                          {
                                            v838 = v176;
                                            v839 = v179;
                                            if (errorCopy)
                                            {
                                              v209 = v179;
                                              *errorCopy = v839;
                                            }

                                            v873 = 0;
                                            goto LABEL_224;
                                          }

                                          [v842 addObject:v178];
                                        }

                                        v170 = v843;
                                        v172 = [v843 countByEnumeratingWithState:&v926 objects:v1118 count:16];
                                        if (!v172)
                                        {
LABEL_189:

                                          v180 = [dictionaryCopy objectForKeyedSubscript:@"bundleIsFamilyIncluded"];
                                          v838 = v180;
                                          if (v180)
                                          {
                                            v181 = v180;
                                            objc_opt_class();
                                            v98 = v858;
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v837 = 0;
                                              v29 = v886;
                                              goto LABEL_232;
                                            }

                                            objc_opt_class();
                                            v143 = obj;
                                            v36 = v844;
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v837 = v181;
                                              v29 = v886;
                                              goto LABEL_233;
                                            }

                                            v16 = v885;
                                            if (errorCopy)
                                            {
                                              v216 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v217 = *MEMORY[0x1E698F240];
                                              v1112 = *MEMORY[0x1E696A578];
                                              v218 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v657 = objc_opt_class();
                                              v219 = v218;
                                              v16 = v885;
                                              v839 = [v219 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v657, @"bundleIsFamilyIncluded"];
                                              v1113 = v839;
                                              [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1113 forKeys:&v1112 count:1];
                                              v832 = v98 = v858;
                                              v837 = 0;
                                              v873 = 0;
                                              *errorCopy = [v216 initWithDomain:v217 code:2 userInfo:?];
                                              v59 = v875;
                                              v60 = v871;
                                              v29 = v886;
                                              v61 = v869;

                                              goto LABEL_1106;
                                            }

                                            v837 = 0;
                                            v873 = 0;
                                            v59 = v875;
                                            v60 = v871;
                                            v29 = v886;
                                            v61 = v869;
LABEL_1107:

                                            v213 = v837;
LABEL_1108:

LABEL_1109:
                                            v164 = v841;
LABEL_1110:

LABEL_1111:
                                            dictionaryCopy = v846;
LABEL_1112:

LABEL_1113:
                                            error = v866;
LABEL_1114:

                                            goto LABEL_1115;
                                          }

                                          v837 = 0;
                                          v29 = v886;
                                          v98 = v858;
LABEL_232:
                                          v143 = obj;
                                          v36 = v844;
LABEL_233:
                                          v214 = [dictionaryCopy objectForKeyedSubscript:@"bundleTimeTag"];
                                          v831 = v214;
                                          if (!v214 || (v215 = v214, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v839 = 0;
LABEL_248:
                                            v221 = [dictionaryCopy objectForKeyedSubscript:@"isBundleResourceTypeUnknown"];
                                            v830 = v221;
                                            if (!v221 || (v222 = v221, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v829 = 0;
LABEL_251:
                                              v223 = [dictionaryCopy objectForKeyedSubscript:@"isBundleResourceTypeValueIncluded"];
                                              v828 = v223;
                                              if (!v223 || (v224 = v223, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v827 = 0;
LABEL_254:
                                                v225 = [dictionaryCopy objectForKeyedSubscript:@"isBundleResourceTypePhotoAssetsIncluded"];
                                                v826 = v225;
                                                if (!v225 || (v226 = v225, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v825 = 0;
LABEL_257:
                                                  v227 = [dictionaryCopy objectForKeyedSubscript:@"isBundleResourceTypeMediaIncluded"];
                                                  v824 = v227;
                                                  if (!v227 || (v228 = v227, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v823 = 0;
LABEL_260:
                                                    v229 = [dictionaryCopy objectForKeyedSubscript:@"isBundleResourceTypeWebLinkIncluded"];
                                                    v822 = v229;
                                                    if (!v229 || (v230 = v229, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v821 = 0;
LABEL_263:
                                                      v231 = [dictionaryCopy objectForKeyedSubscript:@"isBundleResourceTypeInterenceTagIncluded"];
                                                      v820 = v231;
                                                      if (!v231 || (v232 = v231, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v819 = 0;
LABEL_266:
                                                        v233 = [dictionaryCopy objectForKeyedSubscript:@"bundlEngagement"];
                                                        v818 = v233;
                                                        if (!v233 || (v234 = v233, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v817 = 0;
LABEL_303:
                                                          v267 = [dictionaryCopy objectForKeyedSubscript:@"bundleVersion"];
                                                          v815 = v267;
                                                          if (!v267 || (v268 = v267, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v816 = 0;
LABEL_306:
                                                            v269 = [dictionaryCopy objectForKeyedSubscript:@"rankingVersion"];
                                                            v813 = v269;
                                                            if (!v269 || (v270 = v269, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v814 = 0;
LABEL_309:
                                                              v271 = [dictionaryCopy objectForKeyedSubscript:@"suggestionType"];
                                                              v812 = v271;
                                                              if (!v271 || (v272 = v271, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v808 = 0;
LABEL_329:
                                                                v286 = [dictionaryCopy objectForKeyedSubscript:@"suggestionTimestamp"];
                                                                v811 = v286;
                                                                if (!v286 || (v287 = v286, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v810 = 0;
LABEL_339:
                                                                  v294 = [dictionaryCopy objectForKeyedSubscript:@"suggestionClientIdentifier"];
                                                                  v809 = v294;
                                                                  if (!v294 || (v295 = v294, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v807 = 0;
LABEL_342:
                                                                    v296 = [dictionaryCopy objectForKeyedSubscript:@"suggestionViewContainerName"];
                                                                    v806 = v296;
                                                                    if (!v296 || (v297 = v296, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v805 = 0;
LABEL_345:
                                                                      v298 = [dictionaryCopy objectForKeyedSubscript:@"suggestionViewVisibleTime"];
                                                                      v804 = v298;
                                                                      if (!v298 || (v299 = v298, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v803 = 0;
LABEL_348:
                                                                        v300 = [dictionaryCopy objectForKeyedSubscript:@"appEntryEventType"];
                                                                        v802 = v300;
                                                                        if (!v300 || (v301 = v300, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v801 = 0;
LABEL_375:
                                                                          v322 = [dictionaryCopy objectForKeyedSubscript:@"appEntryEventClientIdentifier"];
                                                                          v800 = v322;
                                                                          if (!v322 || (v323 = v322, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v799 = 0;
LABEL_378:
                                                                            v324 = [dictionaryCopy objectForKeyedSubscript:@"appEntryEventTimestamp"];
                                                                            v798 = v324;
                                                                            v844 = v36;
                                                                            if (!v324 || (v325 = v324, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v797 = 0;
LABEL_398:
                                                                              v338 = [dictionaryCopy objectForKeyedSubscript:@"appEntryEventStartTime"];
                                                                              v796 = v338;
                                                                              if (!v338 || (v339 = v338, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v795 = 0;
LABEL_401:
                                                                                v340 = [dictionaryCopy objectForKeyedSubscript:@"appEntryEventEndTime"];
                                                                                v794 = v340;
                                                                                if (!v340 || (v341 = v340, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                {
                                                                                  v792 = 0;
LABEL_404:
                                                                                  v342 = [dictionaryCopy objectForKeyedSubscript:@"appEntryEventTotalCharacters"];
                                                                                  v793 = v342;
                                                                                  if (v342 && (v343 = v342, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      v791 = v343;
                                                                                      goto LABEL_407;
                                                                                    }

                                                                                    if (!errorCopy)
                                                                                    {
                                                                                      v791 = 0;
                                                                                      v873 = 0;
                                                                                      v59 = v875;
                                                                                      v60 = v871;
                                                                                      v29 = v886;
                                                                                      v61 = v869;
                                                                                      v98 = v858;
                                                                                      v284 = v808;
                                                                                      v16 = v885;
                                                                                      goto LABEL_1085;
                                                                                    }

                                                                                    v356 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                    v357 = *MEMORY[0x1E698F240];
                                                                                    v1070 = *MEMORY[0x1E696A578];
                                                                                    v789 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appEntryEventTotalCharacters"];
                                                                                    v1071 = v789;
                                                                                    v790 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1071 forKeys:&v1070 count:1];
                                                                                    v791 = 0;
                                                                                    v873 = 0;
                                                                                    *errorCopy = [v356 initWithDomain:v357 code:2 userInfo:?];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v791 = 0;
LABEL_407:
                                                                                    v344 = [dictionaryCopy objectForKeyedSubscript:@"appEntryEventAddedCharacters"];
                                                                                    v790 = v344;
                                                                                    if (!v344 || (v345 = v344, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                    {
                                                                                      v789 = 0;
LABEL_410:
                                                                                      v346 = [dictionaryCopy objectForKeyedSubscript:@"clientActivityEventType"];
                                                                                      v788 = v346;
                                                                                      if (v346 && (v347 = v346, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          v787 = v347;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          objc_opt_class();
                                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                          {
                                                                                            if (errorCopy)
                                                                                            {
                                                                                              v404 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                              v405 = *MEMORY[0x1E698F240];
                                                                                              v1066 = *MEMORY[0x1E696A578];
                                                                                              v785 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"clientActivityEventType"];
                                                                                              v1067 = v785;
                                                                                              v786 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1067 forKeys:&v1066 count:1];
                                                                                              v787 = 0;
                                                                                              v873 = 0;
                                                                                              *errorCopy = [v404 initWithDomain:v405 code:2 userInfo:?];
                                                                                              v16 = v885;
                                                                                              v59 = v875;
                                                                                              v60 = v871;
                                                                                              v29 = v886;
                                                                                              v61 = v869;
                                                                                              v98 = v858;
                                                                                              v143 = obj;
                                                                                              v284 = v808;
                                                                                              goto LABEL_1082;
                                                                                            }

                                                                                            v787 = 0;
                                                                                            v873 = 0;
                                                                                            v16 = v885;
                                                                                            v59 = v875;
                                                                                            v60 = v871;
                                                                                            v29 = v886;
                                                                                            v61 = v869;
                                                                                            v98 = v858;
                                                                                            v143 = obj;
                                                                                            v284 = v808;
                                                                                            goto LABEL_1083;
                                                                                          }

                                                                                          v347 = v788;
                                                                                          v362 = v788;
                                                                                          v787 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataClientActivityEventTypeFromString(v362)];

                                                                                          v143 = obj;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v787 = 0;
                                                                                      }

                                                                                      v363 = [dictionaryCopy objectForKeyedSubscript:@"clientActivityEventClientIdentifier"];
                                                                                      v786 = v363;
                                                                                      if (v363 && (v364 = v363, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                        {
                                                                                          if (errorCopy)
                                                                                          {
                                                                                            v373 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v374 = *MEMORY[0x1E698F240];
                                                                                            v1064 = *MEMORY[0x1E696A578];
                                                                                            v783 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientActivityEventClientIdentifier"];
                                                                                            v1065 = v783;
                                                                                            v784 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1065 forKeys:&v1064 count:1];
                                                                                            v785 = 0;
                                                                                            v873 = 0;
                                                                                            *errorCopy = [v373 initWithDomain:v374 code:2 userInfo:?];
                                                                                            v59 = v875;
                                                                                            v60 = v871;
                                                                                            v29 = v886;
                                                                                            v61 = v869;
                                                                                            v98 = v858;
                                                                                            v284 = v808;
                                                                                            v16 = v885;
                                                                                            goto LABEL_1081;
                                                                                          }

                                                                                          v785 = 0;
                                                                                          v873 = 0;
                                                                                          v59 = v875;
                                                                                          v60 = v871;
                                                                                          v29 = v886;
                                                                                          v61 = v869;
                                                                                          v98 = v858;
                                                                                          v284 = v808;
                                                                                          v16 = v885;
                                                                                          goto LABEL_1082;
                                                                                        }

                                                                                        v785 = v364;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v785 = 0;
                                                                                      }

                                                                                      v365 = [dictionaryCopy objectForKeyedSubscript:@"clientActivityEventTimestamp"];
                                                                                      v835 = v39;
                                                                                      v784 = v365;
                                                                                      if (v365 && (v366 = v365, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          v369 = v366;
                                                                                          v370 = objc_alloc(MEMORY[0x1E695DF00]);
                                                                                          [v369 doubleValue];
                                                                                          v783 = [v370 initWithTimeIntervalSince1970:?];
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            v377 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                                                                            v378 = v366;
                                                                                            v783 = [v377 dateFromString:v378];
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            objc_opt_class();
                                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                            {
                                                                                              if (errorCopy)
                                                                                              {
                                                                                                v433 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                v434 = *MEMORY[0x1E698F240];
                                                                                                v1062 = *MEMORY[0x1E696A578];
                                                                                                v777 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"clientActivityEventTimestamp"];
                                                                                                v1063 = v777;
                                                                                                v779 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1063 forKeys:&v1062 count:1];
                                                                                                v783 = 0;
                                                                                                v873 = 0;
                                                                                                *errorCopy = [v433 initWithDomain:v434 code:2 userInfo:?];
                                                                                                v16 = v885;
                                                                                                v59 = v875;
                                                                                                v60 = v871;
                                                                                                v29 = v886;
                                                                                                v61 = v869;
                                                                                                v98 = v858;
                                                                                                v143 = obj;
                                                                                                v284 = v808;
                                                                                                goto LABEL_1080;
                                                                                              }

                                                                                              v783 = 0;
                                                                                              v873 = 0;
                                                                                              v16 = v885;
                                                                                              v59 = v875;
                                                                                              v60 = v871;
                                                                                              v29 = v886;
                                                                                              v61 = v869;
                                                                                              v98 = v858;
                                                                                              v143 = obj;
                                                                                              v284 = v808;
                                                                                              goto LABEL_1081;
                                                                                            }

                                                                                            v783 = v784;
                                                                                          }

                                                                                          dictionaryCopy = v846;
                                                                                          v143 = obj;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v783 = 0;
                                                                                      }

                                                                                      v367 = [dictionaryCopy objectForKeyedSubscript:@"suggestionIdentifier"];
                                                                                      v779 = v367;
                                                                                      if (v367 && (v368 = v367, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                        {
                                                                                          if (errorCopy)
                                                                                          {
                                                                                            v380 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v381 = *MEMORY[0x1E698F240];
                                                                                            v1060 = *MEMORY[0x1E696A578];
                                                                                            v775 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionIdentifier"];
                                                                                            v1061 = v775;
                                                                                            v782 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1061 forKeys:&v1060 count:1];
                                                                                            v777 = 0;
                                                                                            v873 = 0;
                                                                                            *errorCopy = [v380 initWithDomain:v381 code:2 userInfo:?];
                                                                                            v59 = v875;
                                                                                            v60 = v871;
                                                                                            v29 = v886;
                                                                                            v61 = v869;
                                                                                            v98 = v858;
                                                                                            v284 = v808;
                                                                                            v16 = v885;
                                                                                            goto LABEL_1079;
                                                                                          }

                                                                                          v777 = 0;
                                                                                          v873 = 0;
                                                                                          v59 = v875;
                                                                                          v60 = v871;
                                                                                          v29 = v886;
                                                                                          v61 = v869;
                                                                                          v98 = v858;
                                                                                          v284 = v808;
                                                                                          v16 = v885;
                                                                                          goto LABEL_1080;
                                                                                        }

                                                                                        v777 = v368;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v777 = 0;
                                                                                      }

                                                                                      v782 = [dictionaryCopy objectForKeyedSubscript:@"photoSourceType"];
                                                                                      if (!v782 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                      {
                                                                                        v775 = 0;
LABEL_485:
                                                                                        v776 = [dictionaryCopy objectForKeyedSubscript:@"photoLibraryType"];
                                                                                        if (!v776 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                        {
                                                                                          v773 = 0;
LABEL_493:
                                                                                          v774 = [dictionaryCopy objectForKeyedSubscript:@"bundleSourcePostAnalyticsExists"];
                                                                                          if (!v774 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                          {
                                                                                            v772 = 0;
LABEL_496:
                                                                                            v771 = [dictionaryCopy objectForKeyedSubscript:@"bundleSourcePDExists"];
                                                                                            if (!v771 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                            {
                                                                                              v769 = 0;
LABEL_499:
                                                                                              v770 = [dictionaryCopy objectForKeyedSubscript:@"bundleSourceMotionExists"];
                                                                                              if (!v770 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                              {
                                                                                                v768 = 0;
LABEL_502:
                                                                                                v767 = [dictionaryCopy objectForKeyedSubscript:@"bundleSourceBooksExists"];
                                                                                                if (!v767 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                {
                                                                                                  v766 = 0;
LABEL_505:
                                                                                                  v765 = [dictionaryCopy objectForKeyedSubscript:@"bundleSourceScreenTimeExists"];
                                                                                                  if (!v765 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                  {
                                                                                                    v764 = 0;
                                                                                                    goto LABEL_508;
                                                                                                  }

                                                                                                  objc_opt_class();
                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                  {
                                                                                                    v764 = v765;
LABEL_508:
                                                                                                    v385 = [dictionaryCopy objectForKeyedSubscript:@"gaPRArray"];
                                                                                                    null3 = [MEMORY[0x1E695DFB0] null];
                                                                                                    v387 = [v385 isEqual:null3];

                                                                                                    v388 = dictionaryCopy;
                                                                                                    if (v387)
                                                                                                    {

                                                                                                      goto LABEL_519;
                                                                                                    }

                                                                                                    v778 = v385;
                                                                                                    if (v385)
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        if (errorCopy)
                                                                                                        {
                                                                                                          v431 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v432 = *MEMORY[0x1E698F240];
                                                                                                          v1044 = *MEMORY[0x1E696A578];
                                                                                                          v780 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"gaPRArray"];
                                                                                                          v1045 = v780;
                                                                                                          v400 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1045 forKeys:&v1044 count:1];
                                                                                                          v873 = 0;
                                                                                                          *errorCopy = [v431 initWithDomain:v432 code:2 userInfo:v400];
                                                                                                          goto LABEL_1070;
                                                                                                        }

                                                                                                        v873 = 0;
                                                                                                        v59 = v875;
                                                                                                        v60 = v871;
                                                                                                        v29 = v886;
                                                                                                        v61 = v869;
                                                                                                        v39 = v835;
                                                                                                        v98 = v858;
                                                                                                        v143 = obj;
                                                                                                        v284 = v808;
                                                                                                        goto LABEL_1072;
                                                                                                      }

                                                                                                      v390 = v385;
                                                                                                    }

                                                                                                    else
                                                                                                    {
LABEL_519:
                                                                                                      v390 = 0;
                                                                                                    }

                                                                                                    v780 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v390, "count")}];
                                                                                                    v921 = 0u;
                                                                                                    v922 = 0u;
                                                                                                    v923 = 0u;
                                                                                                    v924 = 0u;
                                                                                                    v778 = v390;
                                                                                                    v391 = [v778 countByEnumeratingWithState:&v921 objects:v1043 count:16];
                                                                                                    if (v391)
                                                                                                    {
                                                                                                      v392 = v391;
                                                                                                      v393 = *v922;
                                                                                                      do
                                                                                                      {
                                                                                                        for (k = 0; k != v392; ++k)
                                                                                                        {
                                                                                                          if (*v922 != v393)
                                                                                                          {
                                                                                                            objc_enumerationMutation(v778);
                                                                                                          }

                                                                                                          v395 = *(*(&v921 + 1) + 8 * k);
                                                                                                          objc_opt_class();
                                                                                                          if (objc_opt_isKindOfClass())
                                                                                                          {
                                                                                                            if (errorCopy)
                                                                                                            {
                                                                                                              v424 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                              v425 = *MEMORY[0x1E698F240];
                                                                                                              v1041 = *MEMORY[0x1E696A578];
                                                                                                              v763 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"gaPRArray"];
                                                                                                              v1042 = v763;
                                                                                                              v426 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1042 forKeys:&v1041 count:1];
                                                                                                              v427 = v424;
                                                                                                              v428 = v425;
                                                                                                              goto LABEL_578;
                                                                                                            }

LABEL_587:
                                                                                                            v873 = 0;
                                                                                                            v400 = v778;
LABEL_1070:
                                                                                                            v59 = v875;
                                                                                                            v60 = v871;
                                                                                                            v61 = v869;
                                                                                                            v98 = v858;
                                                                                                            v143 = obj;
                                                                                                            v284 = v808;

                                                                                                            v29 = v886;
                                                                                                            v39 = v835;

LABEL_1072:
                                                                                                            v16 = v885;
LABEL_1073:

LABEL_1074:
LABEL_1075:

LABEL_1076:
LABEL_1077:

LABEL_1078:
LABEL_1079:

LABEL_1080:
LABEL_1081:

LABEL_1082:
LABEL_1083:

LABEL_1084:
LABEL_1085:

LABEL_1086:
LABEL_1087:

LABEL_1088:
LABEL_1089:

LABEL_1090:
LABEL_1091:

LABEL_1092:
LABEL_1093:

LABEL_1094:
LABEL_1095:

                                                                                                            v277 = v813;
                                                                                                            v36 = v844;
LABEL_1096:

LABEL_1097:
LABEL_1098:

LABEL_1099:
LABEL_1100:

LABEL_1101:
LABEL_1102:

LABEL_1103:
LABEL_1104:

LABEL_1105:
LABEL_1106:

                                                                                                            goto LABEL_1107;
                                                                                                          }

                                                                                                          objc_opt_class();
                                                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                          {
                                                                                                            if (!errorCopy)
                                                                                                            {
                                                                                                              goto LABEL_587;
                                                                                                            }

                                                                                                            v429 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v430 = *MEMORY[0x1E698F240];
                                                                                                            v1039 = *MEMORY[0x1E696A578];
                                                                                                            v763 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"gaPRArray"];
                                                                                                            v1040 = v763;
                                                                                                            v426 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1040 forKeys:&v1039 count:1];
                                                                                                            v427 = v429;
                                                                                                            v428 = v430;
LABEL_578:
                                                                                                            v762 = v426;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v427 initWithDomain:v428 code:2 userInfo:?];
LABEL_582:
                                                                                                            v400 = v778;
                                                                                                            goto LABEL_1068;
                                                                                                          }

                                                                                                          v396 = v395;
                                                                                                          v397 = [BMMomentsEventDataPR alloc];
                                                                                                          v920 = 0;
                                                                                                          v398 = [(BMMomentsEventDataPR *)v397 initWithJSONDictionary:v396 error:&v920];
                                                                                                          v399 = v920;
                                                                                                          if (v399)
                                                                                                          {
                                                                                                            v762 = v399;
                                                                                                            v763 = v396;
                                                                                                            if (errorCopy)
                                                                                                            {
                                                                                                              *errorCopy = v399;
                                                                                                            }

                                                                                                            v873 = 0;
                                                                                                            goto LABEL_582;
                                                                                                          }

                                                                                                          [v780 addObject:v398];
                                                                                                        }

                                                                                                        v392 = [v778 countByEnumeratingWithState:&v921 objects:v1043 count:16];
                                                                                                      }

                                                                                                      while (v392);
                                                                                                    }

                                                                                                    v763 = [dictionaryCopy objectForKeyedSubscript:@"bundlePCount"];
                                                                                                    if (v763 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        if (errorCopy)
                                                                                                        {
                                                                                                          v435 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v436 = *MEMORY[0x1E698F240];
                                                                                                          v1037 = *MEMORY[0x1E696A578];
                                                                                                          v762 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundlePCount"];
                                                                                                          v1038 = v762;
                                                                                                          v761 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1038 forKeys:&v1037 count:1];
                                                                                                          v400 = 0;
                                                                                                          v873 = 0;
                                                                                                          *errorCopy = [v435 initWithDomain:v436 code:2 userInfo:?];

                                                                                                          goto LABEL_1068;
                                                                                                        }

                                                                                                        v400 = 0;
                                                                                                        v873 = 0;
LABEL_1069:

                                                                                                        goto LABEL_1070;
                                                                                                      }

                                                                                                      v400 = v763;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v400 = 0;
                                                                                                    }

                                                                                                    v760 = [dictionaryCopy objectForKeyedSubscript:@"ranking"];
                                                                                                    if (v760 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v762 = v760;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v446 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v447 = *MEMORY[0x1E698F240];
                                                                                                            v1035 = *MEMORY[0x1E696A578];
                                                                                                            v752 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ranking"];
                                                                                                            v1036 = v752;
                                                                                                            v759 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1036 forKeys:&v1035 count:1];
                                                                                                            v762 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v446 initWithDomain:v447 code:2 userInfo:?];
                                                                                                            goto LABEL_1066;
                                                                                                          }

                                                                                                          v762 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1067;
                                                                                                        }

                                                                                                        v437 = v760;
                                                                                                        v762 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataRankingTypeFromString(v437)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v762 = 0;
                                                                                                    }

                                                                                                    v759 = [dictionaryCopy objectForKeyedSubscript:@"labelConfidenceScore"];
                                                                                                    if (v759 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v752 = v759;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v449 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v450 = *MEMORY[0x1E698F240];
                                                                                                            v1033 = *MEMORY[0x1E696A578];
                                                                                                            v750 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"labelConfidenceScore"];
                                                                                                            v1034 = v750;
                                                                                                            v758 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1034 forKeys:&v1033 count:1];
                                                                                                            v752 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v449 initWithDomain:v450 code:2 userInfo:?];
                                                                                                            goto LABEL_1065;
                                                                                                          }

                                                                                                          v752 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1066;
                                                                                                        }

                                                                                                        v438 = v759;
                                                                                                        v752 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataLabelConfidenceScoreTypeFromString(v438)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v752 = 0;
                                                                                                    }

                                                                                                    v758 = [dictionaryCopy objectForKeyedSubscript:@"timeCorrelationScore"];
                                                                                                    if (v758 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v750 = v758;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v452 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v453 = *MEMORY[0x1E698F240];
                                                                                                            v1031 = *MEMORY[0x1E696A578];
                                                                                                            v747 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"timeCorrelationScore"];
                                                                                                            v1032 = v747;
                                                                                                            v757 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1032 forKeys:&v1031 count:1];
                                                                                                            v750 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v452 initWithDomain:v453 code:2 userInfo:?];
                                                                                                            goto LABEL_1064;
                                                                                                          }

                                                                                                          v750 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1065;
                                                                                                        }

                                                                                                        v439 = v758;
                                                                                                        v750 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataTimeCorrelationScoreTypeFromString(v439)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v750 = 0;
                                                                                                    }

                                                                                                    v757 = [dictionaryCopy objectForKeyedSubscript:@"callDuration"];
                                                                                                    if (v757 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v747 = v757;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v455 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v456 = *MEMORY[0x1E698F240];
                                                                                                            v1029 = *MEMORY[0x1E696A578];
                                                                                                            v745 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"callDuration"];
                                                                                                            v1030 = v745;
                                                                                                            v756 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1030 forKeys:&v1029 count:1];
                                                                                                            v747 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v455 initWithDomain:v456 code:2 userInfo:?];
                                                                                                            goto LABEL_1063;
                                                                                                          }

                                                                                                          v747 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1064;
                                                                                                        }

                                                                                                        v440 = v757;
                                                                                                        v747 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataCallDurationTypesFromString(v440)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v747 = 0;
                                                                                                    }

                                                                                                    v756 = [dictionaryCopy objectForKeyedSubscript:@"interactionCount"];
                                                                                                    if (v756 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v745 = v756;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v458 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v459 = *MEMORY[0x1E698F240];
                                                                                                            v1027 = *MEMORY[0x1E696A578];
                                                                                                            v741 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"interactionCount"];
                                                                                                            v1028 = v741;
                                                                                                            v755 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1028 forKeys:&v1027 count:1];
                                                                                                            v745 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v458 initWithDomain:v459 code:2 userInfo:?];
                                                                                                            goto LABEL_1062;
                                                                                                          }

                                                                                                          v745 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1063;
                                                                                                        }

                                                                                                        v441 = v756;
                                                                                                        v745 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataInteractionCountTypesFromString(v441)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v745 = 0;
                                                                                                    }

                                                                                                    v755 = [dictionaryCopy objectForKeyedSubscript:@"interactionType"];
                                                                                                    if (v755 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v741 = v755;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v461 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v462 = *MEMORY[0x1E698F240];
                                                                                                            v1025 = *MEMORY[0x1E696A578];
                                                                                                            v739 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"interactionType"];
                                                                                                            v1026 = v739;
                                                                                                            v754 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1026 forKeys:&v1025 count:1];
                                                                                                            v741 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v461 initWithDomain:v462 code:2 userInfo:?];
                                                                                                            goto LABEL_1061;
                                                                                                          }

                                                                                                          v741 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1062;
                                                                                                        }

                                                                                                        v442 = v755;
                                                                                                        v741 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataBundleInteractionTypesFromString(v442)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v741 = 0;
                                                                                                    }

                                                                                                    v754 = [dictionaryCopy objectForKeyedSubscript:@"callPlace"];
                                                                                                    if (v754 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v739 = v754;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v465 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v466 = *MEMORY[0x1E698F240];
                                                                                                            v1023 = *MEMORY[0x1E696A578];
                                                                                                            v737 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"callPlace"];
                                                                                                            v1024 = v737;
                                                                                                            v753 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1024 forKeys:&v1023 count:1];
                                                                                                            v739 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v465 initWithDomain:v466 code:2 userInfo:?];
                                                                                                            goto LABEL_1060;
                                                                                                          }

                                                                                                          v739 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1061;
                                                                                                        }

                                                                                                        v443 = v754;
                                                                                                        v739 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataCallPlaceTypeFromString(v443)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v739 = 0;
                                                                                                    }

                                                                                                    v753 = [dictionaryCopy objectForKeyedSubscript:@"distanceFromHome"];
                                                                                                    if (v753 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v737 = v753;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v467 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v468 = *MEMORY[0x1E698F240];
                                                                                                            v1021 = *MEMORY[0x1E696A578];
                                                                                                            v736 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"distanceFromHome"];
                                                                                                            v1022 = v736;
                                                                                                            v751 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1022 forKeys:&v1021 count:1];
                                                                                                            v737 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v467 initWithDomain:v468 code:2 userInfo:?];
                                                                                                            goto LABEL_1059;
                                                                                                          }

                                                                                                          v737 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1060;
                                                                                                        }

                                                                                                        v444 = v753;
                                                                                                        v737 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataDistanceFromHomeTypeFromString(v444)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v737 = 0;
                                                                                                    }

                                                                                                    v751 = [dictionaryCopy objectForKeyedSubscript:@"homeAvailability"];
                                                                                                    if (v751 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v736 = v751;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v470 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v471 = *MEMORY[0x1E698F240];
                                                                                                            v1019 = *MEMORY[0x1E696A578];
                                                                                                            v733 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"homeAvailability"];
                                                                                                            v1020 = v733;
                                                                                                            v749 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1020 forKeys:&v1019 count:1];
                                                                                                            v736 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v470 initWithDomain:v471 code:2 userInfo:?];
                                                                                                            goto LABEL_1058;
                                                                                                          }

                                                                                                          v736 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1059;
                                                                                                        }

                                                                                                        v445 = v751;
                                                                                                        v736 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataAvailabilityTypeFromString(v445)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v736 = 0;
                                                                                                    }

                                                                                                    v749 = [dictionaryCopy objectForKeyedSubscript:@"workAvailability"];
                                                                                                    if (v749 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v733 = v749;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v473 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v474 = *MEMORY[0x1E698F240];
                                                                                                            v1017 = *MEMORY[0x1E696A578];
                                                                                                            v732 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"workAvailability"];
                                                                                                            v1018 = v732;
                                                                                                            v746 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1018 forKeys:&v1017 count:1];
                                                                                                            v733 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v473 initWithDomain:v474 code:2 userInfo:?];
                                                                                                            goto LABEL_1057;
                                                                                                          }

                                                                                                          v733 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1058;
                                                                                                        }

                                                                                                        v448 = v749;
                                                                                                        v733 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataAvailabilityTypeFromString(v448)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v733 = 0;
                                                                                                    }

                                                                                                    v746 = [dictionaryCopy objectForKeyedSubscript:@"bundleVisitMapItemSource"];
                                                                                                    if (v746 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v732 = v746;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v477 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v478 = *MEMORY[0x1E698F240];
                                                                                                            v1015 = *MEMORY[0x1E696A578];
                                                                                                            v730 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleVisitMapItemSource"];
                                                                                                            v1016 = v730;
                                                                                                            v744 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1016 forKeys:&v1015 count:1];
                                                                                                            v732 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v477 initWithDomain:v478 code:2 userInfo:?];
                                                                                                            goto LABEL_1056;
                                                                                                          }

                                                                                                          v732 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1057;
                                                                                                        }

                                                                                                        v451 = v746;
                                                                                                        v732 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataMapItemSourceTypeFromString(v451)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v732 = 0;
                                                                                                    }

                                                                                                    v744 = [dictionaryCopy objectForKeyedSubscript:@"bundleVisitPlaceType"];
                                                                                                    if (v744 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v730 = v744;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v479 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v480 = *MEMORY[0x1E698F240];
                                                                                                            v1013 = *MEMORY[0x1E696A578];
                                                                                                            v729 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleVisitPlaceType"];
                                                                                                            v1014 = v729;
                                                                                                            v740 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1014 forKeys:&v1013 count:1];
                                                                                                            v730 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v479 initWithDomain:v480 code:2 userInfo:?];
                                                                                                            goto LABEL_1055;
                                                                                                          }

                                                                                                          v730 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1056;
                                                                                                        }

                                                                                                        v454 = v744;
                                                                                                        v730 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataVisitPlaceTypesFromString(v454)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v730 = 0;
                                                                                                    }

                                                                                                    v740 = [dictionaryCopy objectForKeyedSubscript:@"bundleVisitPlaceLabelGranularity"];
                                                                                                    if (v740 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v729 = v740;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v501 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v502 = *MEMORY[0x1E698F240];
                                                                                                            v1011 = *MEMORY[0x1E696A578];
                                                                                                            v726 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleVisitPlaceLabelGranularity"];
                                                                                                            v1012 = v726;
                                                                                                            v738 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1012 forKeys:&v1011 count:1];
                                                                                                            v729 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v501 initWithDomain:v502 code:2 userInfo:?];
                                                                                                            goto LABEL_1054;
                                                                                                          }

                                                                                                          v729 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1055;
                                                                                                        }

                                                                                                        v457 = v740;
                                                                                                        v729 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPlaceInferenceGranularityTypeFromString(v457)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v729 = 0;
                                                                                                    }

                                                                                                    v738 = [dictionaryCopy objectForKeyedSubscript:@"bundleIncludesAnomalousEvent"];
                                                                                                    if (v738 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v726 = v738;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v505 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v506 = *MEMORY[0x1E698F240];
                                                                                                            v1009 = *MEMORY[0x1E696A578];
                                                                                                            v723 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleIncludesAnomalousEvent"];
                                                                                                            v1010 = v723;
                                                                                                            v735 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1010 forKeys:&v1009 count:1];
                                                                                                            v726 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v505 initWithDomain:v506 code:2 userInfo:?];
                                                                                                            goto LABEL_1053;
                                                                                                          }

                                                                                                          v726 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1054;
                                                                                                        }

                                                                                                        v460 = v738;
                                                                                                        v726 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataAnomalousTypeFromString(v460)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v726 = 0;
                                                                                                    }

                                                                                                    v735 = [dictionaryCopy objectForKeyedSubscript:@"isFiltered"];
                                                                                                    if (v735 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        if (errorCopy)
                                                                                                        {
                                                                                                          v463 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v464 = *MEMORY[0x1E698F240];
                                                                                                          v1007 = *MEMORY[0x1E696A578];
                                                                                                          v722 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFiltered"];
                                                                                                          v1008 = v722;
                                                                                                          v734 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1008 forKeys:&v1007 count:1];
                                                                                                          v723 = 0;
                                                                                                          v873 = 0;
                                                                                                          *errorCopy = [v463 initWithDomain:v464 code:2 userInfo:?];
                                                                                                          goto LABEL_1052;
                                                                                                        }

                                                                                                        v723 = 0;
                                                                                                        v873 = 0;
                                                                                                        goto LABEL_1053;
                                                                                                      }

                                                                                                      v723 = v735;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v723 = 0;
                                                                                                    }

                                                                                                    v734 = [dictionaryCopy objectForKeyedSubscript:@"bundleSuperType"];
                                                                                                    if (v734 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v722 = v734;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v515 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v516 = *MEMORY[0x1E698F240];
                                                                                                            v1005 = *MEMORY[0x1E696A578];
                                                                                                            v719 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleSuperType"];
                                                                                                            v1006 = v719;
                                                                                                            v731 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1006 forKeys:&v1005 count:1];
                                                                                                            v722 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v515 initWithDomain:v516 code:2 userInfo:?];
                                                                                                            goto LABEL_1051;
                                                                                                          }

                                                                                                          v722 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1052;
                                                                                                        }

                                                                                                        v469 = v734;
                                                                                                        v722 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataEventBundleBundleSuperTypeFromString(v469)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v722 = 0;
                                                                                                    }

                                                                                                    v731 = [dictionaryCopy objectForKeyedSubscript:@"bundleSubType"];
                                                                                                    if (v731 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v719 = v731;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v517 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v518 = *MEMORY[0x1E698F240];
                                                                                                            v1003 = *MEMORY[0x1E696A578];
                                                                                                            v718 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleSubType"];
                                                                                                            v1004 = v718;
                                                                                                            v728 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1004 forKeys:&v1003 count:1];
                                                                                                            v719 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v517 initWithDomain:v518 code:2 userInfo:?];
                                                                                                            goto LABEL_1050;
                                                                                                          }

                                                                                                          v719 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1051;
                                                                                                        }

                                                                                                        v472 = v731;
                                                                                                        v719 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataEventBundleBundleSubTypeFromString(v472)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v719 = 0;
                                                                                                    }

                                                                                                    v728 = [dictionaryCopy objectForKeyedSubscript:@"isAggregatedAndSuppressed"];
                                                                                                    if (v728 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        if (errorCopy)
                                                                                                        {
                                                                                                          v475 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v476 = *MEMORY[0x1E698F240];
                                                                                                          v1001 = *MEMORY[0x1E696A578];
                                                                                                          v717 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isAggregatedAndSuppressed"];
                                                                                                          v1002 = v717;
                                                                                                          v727 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1002 forKeys:&v1001 count:1];
                                                                                                          v718 = 0;
                                                                                                          v873 = 0;
                                                                                                          *errorCopy = [v475 initWithDomain:v476 code:2 userInfo:?];
                                                                                                          goto LABEL_1049;
                                                                                                        }

                                                                                                        v718 = 0;
                                                                                                        v873 = 0;
                                                                                                        goto LABEL_1050;
                                                                                                      }

                                                                                                      v718 = v728;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v718 = 0;
                                                                                                    }

                                                                                                    v727 = [dictionaryCopy objectForKeyedSubscript:@"summarizationGranularity"];
                                                                                                    if (v727 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v717 = v727;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v519 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v520 = *MEMORY[0x1E698F240];
                                                                                                            v999 = *MEMORY[0x1E696A578];
                                                                                                            v716 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"summarizationGranularity"];
                                                                                                            v1000 = v716;
                                                                                                            v721 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1000 forKeys:&v999 count:1];
                                                                                                            v717 = 0;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v519 initWithDomain:v520 code:2 userInfo:?];
                                                                                                            goto LABEL_1048;
                                                                                                          }

                                                                                                          v717 = 0;
                                                                                                          v873 = 0;
                                                                                                          goto LABEL_1049;
                                                                                                        }

                                                                                                        v481 = v727;
                                                                                                        v717 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataEventBundleSummarizationGranularityFromString(v481)];
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v717 = 0;
                                                                                                    }

                                                                                                    v721 = [dictionaryCopy objectForKeyedSubscript:@"includedInSummaryBundleOnly"];
                                                                                                    if (v721 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        if (errorCopy)
                                                                                                        {
                                                                                                          v503 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v504 = *MEMORY[0x1E698F240];
                                                                                                          v997 = *MEMORY[0x1E696A578];
                                                                                                          v748 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"includedInSummaryBundleOnly"];
                                                                                                          v998 = v748;
                                                                                                          v743 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v998 forKeys:&v997 count:1];
                                                                                                          v716 = 0;
                                                                                                          v873 = 0;
                                                                                                          *errorCopy = [v503 initWithDomain:v504 code:2 userInfo:?];

                                                                                                          goto LABEL_1047;
                                                                                                        }

                                                                                                        v716 = 0;
                                                                                                        v873 = 0;
                                                                                                        goto LABEL_1048;
                                                                                                      }

                                                                                                      v716 = v721;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v716 = 0;
                                                                                                    }

                                                                                                    v482 = [dictionaryCopy objectForKeyedSubscript:@"subBundleIDs"];
                                                                                                    null4 = [MEMORY[0x1E695DFB0] null];
                                                                                                    v748 = v482;
                                                                                                    LODWORD(v482) = [v482 isEqual:null4];

                                                                                                    if (v482)
                                                                                                    {

                                                                                                      goto LABEL_794;
                                                                                                    }

                                                                                                    if (v748)
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        if (errorCopy)
                                                                                                        {
                                                                                                          v484 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v485 = *MEMORY[0x1E698F240];
                                                                                                          v995 = *MEMORY[0x1E696A578];
                                                                                                          v742 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"subBundleIDs"];
                                                                                                          v996 = v742;
                                                                                                          v724 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v996 forKeys:&v995 count:1];
                                                                                                          v873 = 0;
                                                                                                          *errorCopy = [v484 initWithDomain:v485 code:2 userInfo:?];

                                                                                                          goto LABEL_1046;
                                                                                                        }

                                                                                                        v873 = 0;
                                                                                                        goto LABEL_1047;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
LABEL_794:
                                                                                                      v748 = 0;
                                                                                                    }

                                                                                                    v742 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v748, "count")}];
                                                                                                    v916 = 0u;
                                                                                                    v917 = 0u;
                                                                                                    v918 = 0u;
                                                                                                    v919 = 0u;
                                                                                                    v748 = v748;
                                                                                                    v486 = [v748 countByEnumeratingWithState:&v916 objects:v994 count:16];
                                                                                                    if (!v486)
                                                                                                    {
                                                                                                      goto LABEL_804;
                                                                                                    }

                                                                                                    v487 = v486;
                                                                                                    v488 = *v917;
                                                                                                    while (1)
                                                                                                    {
                                                                                                      for (m = 0; m != v487; ++m)
                                                                                                      {
                                                                                                        if (*v917 != v488)
                                                                                                        {
                                                                                                          objc_enumerationMutation(v748);
                                                                                                        }

                                                                                                        v490 = *(*(&v916 + 1) + 8 * m);
                                                                                                        objc_opt_class();
                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v494 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v495 = *MEMORY[0x1E698F240];
                                                                                                            v992 = *MEMORY[0x1E696A578];
                                                                                                            v720 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"subBundleIDs"];
                                                                                                            v993 = v720;
                                                                                                            v496 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v993 forKeys:&v992 count:1];
                                                                                                            v497 = v494;
                                                                                                            v498 = v495;
LABEL_812:
                                                                                                            v712 = v496;
                                                                                                            v873 = 0;
                                                                                                            *errorCopy = [v497 initWithDomain:v498 code:2 userInfo:?];
                                                                                                            v725 = v748;

                                                                                                            goto LABEL_1044;
                                                                                                          }

LABEL_815:
                                                                                                          v873 = 0;

                                                                                                          goto LABEL_1046;
                                                                                                        }

                                                                                                        objc_opt_class();
                                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                        {
                                                                                                          if (errorCopy)
                                                                                                          {
                                                                                                            v499 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v500 = *MEMORY[0x1E698F240];
                                                                                                            v990 = *MEMORY[0x1E696A578];
                                                                                                            v720 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subBundleIDs"];
                                                                                                            v991 = v720;
                                                                                                            v496 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v991 forKeys:&v990 count:1];
                                                                                                            v497 = v499;
                                                                                                            v498 = v500;
                                                                                                            goto LABEL_812;
                                                                                                          }

                                                                                                          goto LABEL_815;
                                                                                                        }

                                                                                                        v491 = v490;
                                                                                                        [v742 addObject:v491];
                                                                                                      }

                                                                                                      v487 = [v748 countByEnumeratingWithState:&v916 objects:v994 count:16];
                                                                                                      if (!v487)
                                                                                                      {
LABEL_804:

                                                                                                        v492 = [v388 objectForKeyedSubscript:@"subSuggestionIDs"];
                                                                                                        null5 = [MEMORY[0x1E695DFB0] null];
                                                                                                        v725 = v492;
                                                                                                        LODWORD(v492) = [v492 isEqual:null5];

                                                                                                        if (v492)
                                                                                                        {

                                                                                                          goto LABEL_827;
                                                                                                        }

                                                                                                        if (v725)
                                                                                                        {
                                                                                                          objc_opt_class();
                                                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                          {
                                                                                                            if (errorCopy)
                                                                                                            {
                                                                                                              v507 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                              v508 = *MEMORY[0x1E698F240];
                                                                                                              v988 = *MEMORY[0x1E696A578];
                                                                                                              v720 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"subSuggestionIDs"];
                                                                                                              v989 = v720;
                                                                                                              v713 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v989 forKeys:&v988 count:1];
                                                                                                              v873 = 0;
                                                                                                              *errorCopy = [v507 initWithDomain:v508 code:2 userInfo:?];

                                                                                                              goto LABEL_1044;
                                                                                                            }

                                                                                                            v873 = 0;
                                                                                                            goto LABEL_1045;
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
LABEL_827:
                                                                                                          v725 = 0;
                                                                                                        }

                                                                                                        v720 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v725, "count")}];
                                                                                                        v912 = 0u;
                                                                                                        v913 = 0u;
                                                                                                        v914 = 0u;
                                                                                                        v915 = 0u;
                                                                                                        v725 = v725;
                                                                                                        v509 = [v725 countByEnumeratingWithState:&v912 objects:v987 count:16];
                                                                                                        if (v509)
                                                                                                        {
                                                                                                          v510 = v509;
                                                                                                          v511 = *v913;
                                                                                                          do
                                                                                                          {
                                                                                                            for (n = 0; n != v510; ++n)
                                                                                                            {
                                                                                                              if (*v913 != v511)
                                                                                                              {
                                                                                                                objc_enumerationMutation(v725);
                                                                                                              }

                                                                                                              v513 = *(*(&v912 + 1) + 8 * n);
                                                                                                              objc_opt_class();
                                                                                                              if (objc_opt_isKindOfClass())
                                                                                                              {
                                                                                                                if (errorCopy)
                                                                                                                {
                                                                                                                  v521 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                  v522 = *MEMORY[0x1E698F240];
                                                                                                                  v985 = *MEMORY[0x1E696A578];
                                                                                                                  v705 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"subSuggestionIDs"];
                                                                                                                  v986 = v705;
                                                                                                                  v523 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v986 forKeys:&v985 count:1];
                                                                                                                  v524 = v521;
                                                                                                                  v525 = v522;
LABEL_860:
                                                                                                                  v710 = v523;
                                                                                                                  v873 = 0;
                                                                                                                  *errorCopy = [v524 initWithDomain:v525 code:2 userInfo:?];
                                                                                                                  v714 = v725;

                                                                                                                  goto LABEL_1042;
                                                                                                                }

LABEL_865:
                                                                                                                v873 = 0;

                                                                                                                goto LABEL_1044;
                                                                                                              }

                                                                                                              objc_opt_class();
                                                                                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                              {
                                                                                                                if (errorCopy)
                                                                                                                {
                                                                                                                  v526 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                  v527 = *MEMORY[0x1E698F240];
                                                                                                                  v983 = *MEMORY[0x1E696A578];
                                                                                                                  v705 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subSuggestionIDs"];
                                                                                                                  v984 = v705;
                                                                                                                  v523 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v984 forKeys:&v983 count:1];
                                                                                                                  v524 = v526;
                                                                                                                  v525 = v527;
                                                                                                                  goto LABEL_860;
                                                                                                                }

                                                                                                                goto LABEL_865;
                                                                                                              }

                                                                                                              v514 = v513;
                                                                                                              [v720 addObject:v514];
                                                                                                            }

                                                                                                            v510 = [v725 countByEnumeratingWithState:&v912 objects:v987 count:16];
                                                                                                          }

                                                                                                          while (v510);
                                                                                                        }

                                                                                                        v705 = [v388 objectForKeyedSubscript:@"firstCreationDate"];
                                                                                                        if (!v705 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                        {
                                                                                                          v714 = 0;
                                                                                                          goto LABEL_876;
                                                                                                        }

                                                                                                        objc_opt_class();
                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                        {
                                                                                                          v528 = v705;
                                                                                                          v529 = objc_alloc(MEMORY[0x1E695DF00]);
                                                                                                          [v528 doubleValue];
                                                                                                          v714 = [v529 initWithTimeIntervalSince1970:?];
                                                                                                          goto LABEL_875;
                                                                                                        }

                                                                                                        objc_opt_class();
                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                        {
                                                                                                          v528 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                                                                                          v530 = v705;
                                                                                                          v714 = [v528 dateFromString:v530];

LABEL_875:
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          objc_opt_class();
                                                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                          {
                                                                                                            if (errorCopy)
                                                                                                            {
                                                                                                              v572 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                              v573 = *MEMORY[0x1E698F240];
                                                                                                              v981 = *MEMORY[0x1E696A578];
                                                                                                              v711 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"firstCreationDate"];
                                                                                                              v982 = v711;
                                                                                                              v709 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v982 forKeys:&v981 count:1];
                                                                                                              v714 = 0;
                                                                                                              v873 = 0;
                                                                                                              *errorCopy = [v572 initWithDomain:v573 code:2 userInfo:?];

                                                                                                              goto LABEL_1041;
                                                                                                            }

                                                                                                            v714 = 0;
                                                                                                            v873 = 0;
                                                                                                            goto LABEL_1042;
                                                                                                          }

                                                                                                          v714 = v705;
                                                                                                        }

LABEL_876:
                                                                                                        v531 = [v388 objectForKeyedSubscript:@"resources"];
                                                                                                        null6 = [MEMORY[0x1E695DFB0] null];
                                                                                                        v711 = v531;
                                                                                                        LODWORD(v531) = [v531 isEqual:null6];

                                                                                                        if (v531)
                                                                                                        {

                                                                                                          goto LABEL_882;
                                                                                                        }

                                                                                                        if (v711)
                                                                                                        {
                                                                                                          objc_opt_class();
                                                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                          {
                                                                                                            if (errorCopy)
                                                                                                            {
                                                                                                              v533 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                              v534 = *MEMORY[0x1E698F240];
                                                                                                              v979 = *MEMORY[0x1E696A578];
                                                                                                              v708 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"resources"];
                                                                                                              v980 = v708;
                                                                                                              v703 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v980 forKeys:&v979 count:1];
                                                                                                              v873 = 0;
                                                                                                              *errorCopy = [v533 initWithDomain:v534 code:2 userInfo:?];

                                                                                                              goto LABEL_1040;
                                                                                                            }

                                                                                                            v873 = 0;
                                                                                                            goto LABEL_1041;
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
LABEL_882:
                                                                                                          v711 = 0;
                                                                                                        }

                                                                                                        v708 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v711, "count")}];
                                                                                                        v908 = 0u;
                                                                                                        v909 = 0u;
                                                                                                        v910 = 0u;
                                                                                                        v911 = 0u;
                                                                                                        v711 = v711;
                                                                                                        v535 = [v711 countByEnumeratingWithState:&v908 objects:v978 count:16];
                                                                                                        if (!v535)
                                                                                                        {
                                                                                                          goto LABEL_893;
                                                                                                        }

                                                                                                        v536 = v535;
                                                                                                        v537 = *v909;
                                                                                                        while (1)
                                                                                                        {
                                                                                                          for (ii = 0; ii != v536; ++ii)
                                                                                                          {
                                                                                                            if (*v909 != v537)
                                                                                                            {
                                                                                                              objc_enumerationMutation(v711);
                                                                                                            }

                                                                                                            v539 = *(*(&v908 + 1) + 8 * ii);
                                                                                                            objc_opt_class();
                                                                                                            if (objc_opt_isKindOfClass())
                                                                                                            {
                                                                                                              if (errorCopy)
                                                                                                              {
                                                                                                                v545 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                v546 = *MEMORY[0x1E698F240];
                                                                                                                v976 = *MEMORY[0x1E696A578];
                                                                                                                v715 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"resources"];
                                                                                                                v977 = v715;
                                                                                                                v547 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v977 forKeys:&v976 count:1];
                                                                                                                v548 = v545;
                                                                                                                v549 = v546;
                                                                                                                goto LABEL_899;
                                                                                                              }

LABEL_924:
                                                                                                              v873 = 0;

                                                                                                              goto LABEL_1040;
                                                                                                            }

                                                                                                            objc_opt_class();
                                                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                            {
                                                                                                              if (!errorCopy)
                                                                                                              {
                                                                                                                goto LABEL_924;
                                                                                                              }

                                                                                                              v550 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                              v551 = *MEMORY[0x1E698F240];
                                                                                                              v974 = *MEMORY[0x1E696A578];
                                                                                                              v715 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"resources"];
                                                                                                              v975 = v715;
                                                                                                              v547 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v975 forKeys:&v974 count:1];
                                                                                                              v548 = v550;
                                                                                                              v549 = v551;
LABEL_899:
                                                                                                              v706 = v547;
                                                                                                              v873 = 0;
                                                                                                              *errorCopy = [v548 initWithDomain:v549 code:2 userInfo:?];
LABEL_903:
                                                                                                              v704 = v711;
                                                                                                              goto LABEL_1037;
                                                                                                            }

                                                                                                            v540 = v539;
                                                                                                            v541 = [BMMomentsEventDataEventBundleResource alloc];
                                                                                                            v907 = 0;
                                                                                                            v715 = v540;
                                                                                                            v542 = [(BMMomentsEventDataEventBundleResource *)v541 initWithJSONDictionary:v540 error:&v907];
                                                                                                            v706 = v907;
                                                                                                            if (v706)
                                                                                                            {
                                                                                                              if (errorCopy)
                                                                                                              {
                                                                                                                *errorCopy = v706;
                                                                                                              }

                                                                                                              v873 = 0;
                                                                                                              goto LABEL_903;
                                                                                                            }

                                                                                                            [v708 addObject:v542];
                                                                                                          }

                                                                                                          v536 = [v711 countByEnumeratingWithState:&v908 objects:v978 count:16];
                                                                                                          if (!v536)
                                                                                                          {
LABEL_893:

                                                                                                            v543 = [v388 objectForKeyedSubscript:@"persons"];
                                                                                                            null7 = [MEMORY[0x1E695DFB0] null];
                                                                                                            v704 = v543;
                                                                                                            LODWORD(v543) = [v543 isEqual:null7];

                                                                                                            if (v543)
                                                                                                            {

                                                                                                              goto LABEL_908;
                                                                                                            }

                                                                                                            if (v704)
                                                                                                            {
                                                                                                              objc_opt_class();
                                                                                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                              {
                                                                                                                if (errorCopy)
                                                                                                                {
                                                                                                                  v552 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                  v553 = *MEMORY[0x1E698F240];
                                                                                                                  v972 = *MEMORY[0x1E696A578];
                                                                                                                  v715 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"persons"];
                                                                                                                  v973 = v715;
                                                                                                                  v707 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v973 forKeys:&v972 count:1];
                                                                                                                  v873 = 0;
                                                                                                                  *errorCopy = [v552 initWithDomain:v553 code:2 userInfo:?];

                                                                                                                  goto LABEL_1038;
                                                                                                                }

                                                                                                                v873 = 0;
                                                                                                                goto LABEL_1039;
                                                                                                              }
                                                                                                            }

                                                                                                            else
                                                                                                            {
LABEL_908:
                                                                                                              v704 = 0;
                                                                                                            }

                                                                                                            v715 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v704, "count")}];
                                                                                                            v903 = 0u;
                                                                                                            v904 = 0u;
                                                                                                            v905 = 0u;
                                                                                                            v906 = 0u;
                                                                                                            v704 = v704;
                                                                                                            v554 = [v704 countByEnumeratingWithState:&v903 objects:v971 count:16];
                                                                                                            if (v554)
                                                                                                            {
                                                                                                              v555 = v554;
                                                                                                              v556 = *v904;
                                                                                                              do
                                                                                                              {
                                                                                                                for (jj = 0; jj != v555; ++jj)
                                                                                                                {
                                                                                                                  if (*v904 != v556)
                                                                                                                  {
                                                                                                                    objc_enumerationMutation(v704);
                                                                                                                  }

                                                                                                                  v558 = *(*(&v903 + 1) + 8 * jj);
                                                                                                                  objc_opt_class();
                                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                                  {
                                                                                                                    if (errorCopy)
                                                                                                                    {
                                                                                                                      v564 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                      v565 = *MEMORY[0x1E698F240];
                                                                                                                      v969 = *MEMORY[0x1E696A578];
                                                                                                                      v702 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"persons"];
                                                                                                                      v970 = v702;
                                                                                                                      v566 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v970 forKeys:&v969 count:1];
                                                                                                                      v567 = v564;
                                                                                                                      v568 = v565;
                                                                                                                      goto LABEL_932;
                                                                                                                    }

LABEL_938:
                                                                                                                    v873 = 0;

                                                                                                                    goto LABEL_1038;
                                                                                                                  }

                                                                                                                  objc_opt_class();
                                                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                                  {
                                                                                                                    if (!errorCopy)
                                                                                                                    {
                                                                                                                      goto LABEL_938;
                                                                                                                    }

                                                                                                                    v569 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                    v570 = *MEMORY[0x1E698F240];
                                                                                                                    v967 = *MEMORY[0x1E696A578];
                                                                                                                    v702 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"persons"];
                                                                                                                    v968 = v702;
                                                                                                                    v566 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v968 forKeys:&v967 count:1];
                                                                                                                    v567 = v569;
                                                                                                                    v568 = v570;
LABEL_932:
                                                                                                                    v701 = v566;
                                                                                                                    v873 = 0;
                                                                                                                    *errorCopy = [v567 initWithDomain:v568 code:2 userInfo:?];
LABEL_936:
                                                                                                                    v571 = v704;
LABEL_937:
                                                                                                                    v706 = v571;
                                                                                                                    goto LABEL_1036;
                                                                                                                  }

                                                                                                                  v559 = v558;
                                                                                                                  v560 = [BMMomentsEventDataEventBundlePerson alloc];
                                                                                                                  v902 = 0;
                                                                                                                  v702 = v559;
                                                                                                                  v561 = [(BMMomentsEventDataEventBundlePerson *)v560 initWithJSONDictionary:v559 error:&v902];
                                                                                                                  v701 = v902;
                                                                                                                  if (v701)
                                                                                                                  {
                                                                                                                    if (errorCopy)
                                                                                                                    {
                                                                                                                      *errorCopy = v701;
                                                                                                                    }

                                                                                                                    v873 = 0;
                                                                                                                    goto LABEL_936;
                                                                                                                  }

                                                                                                                  [v715 addObject:v561];
                                                                                                                }

                                                                                                                v555 = [v704 countByEnumeratingWithState:&v903 objects:v971 count:16];
                                                                                                              }

                                                                                                              while (v555);
                                                                                                            }

                                                                                                            v706 = [v388 objectForKeyedSubscript:@"mainPlace"];
                                                                                                            if (v706 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                            {
                                                                                                              objc_opt_class();
                                                                                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                              {
                                                                                                                if (errorCopy)
                                                                                                                {
                                                                                                                  v589 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                  v590 = *MEMORY[0x1E698F240];
                                                                                                                  v965 = *MEMORY[0x1E696A578];
                                                                                                                  v702 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"mainPlace"];
                                                                                                                  v966 = v702;
                                                                                                                  v701 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v966 forKeys:&v965 count:1];
                                                                                                                  v873 = 0;
                                                                                                                  *errorCopy = [v589 initWithDomain:v590 code:2 userInfo:?];
                                                                                                                  goto LABEL_1036;
                                                                                                                }

                                                                                                                v873 = 0;
                                                                                                                goto LABEL_1037;
                                                                                                              }

                                                                                                              v586 = v706;
                                                                                                              v587 = [BMMomentsEventDataEventBundlePlace alloc];
                                                                                                              v901 = 0;
                                                                                                              v701 = v586;
                                                                                                              v702 = [(BMMomentsEventDataEventBundlePlace *)v587 initWithJSONDictionary:v586 error:&v901];
                                                                                                              v588 = v901;
                                                                                                              if (v588)
                                                                                                              {
                                                                                                                if (errorCopy)
                                                                                                                {
                                                                                                                  v588 = v588;
                                                                                                                  *errorCopy = v588;
                                                                                                                }

                                                                                                                v873 = 0;
                                                                                                                v571 = v586;
                                                                                                                goto LABEL_937;
                                                                                                              }
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v702 = 0;
                                                                                                            }

                                                                                                            v562 = [v388 objectForKeyedSubscript:@"otherPlaces"];
                                                                                                            null8 = [MEMORY[0x1E695DFB0] null];
                                                                                                            v701 = v562;
                                                                                                            LODWORD(v562) = [v562 isEqual:null8];

                                                                                                            if (v562)
                                                                                                            {

                                                                                                              goto LABEL_945;
                                                                                                            }

                                                                                                            if (v701)
                                                                                                            {
                                                                                                              objc_opt_class();
                                                                                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                              {
                                                                                                                if (errorCopy)
                                                                                                                {
                                                                                                                  v574 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                  v575 = *MEMORY[0x1E698F240];
                                                                                                                  v963 = *MEMORY[0x1E696A578];
                                                                                                                  v699 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"otherPlaces"];
                                                                                                                  v964 = v699;
                                                                                                                  v696 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v964 forKeys:&v963 count:1];
                                                                                                                  v873 = 0;
                                                                                                                  *errorCopy = [v574 initWithDomain:v575 code:2 userInfo:?];

                                                                                                                  goto LABEL_1035;
                                                                                                                }

                                                                                                                v873 = 0;
                                                                                                                goto LABEL_1036;
                                                                                                              }
                                                                                                            }

                                                                                                            else
                                                                                                            {
LABEL_945:
                                                                                                              v701 = 0;
                                                                                                            }

                                                                                                            v699 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v701, "count")}];
                                                                                                            v897 = 0u;
                                                                                                            v898 = 0u;
                                                                                                            v899 = 0u;
                                                                                                            v900 = 0u;
                                                                                                            v701 = v701;
                                                                                                            v576 = [v701 countByEnumeratingWithState:&v897 objects:v962 count:16];
                                                                                                            if (!v576)
                                                                                                            {
                                                                                                              goto LABEL_956;
                                                                                                            }

                                                                                                            v577 = v576;
                                                                                                            v578 = *v898;
                                                                                                            while (1)
                                                                                                            {
                                                                                                              for (kk = 0; kk != v577; ++kk)
                                                                                                              {
                                                                                                                if (*v898 != v578)
                                                                                                                {
                                                                                                                  objc_enumerationMutation(v701);
                                                                                                                }

                                                                                                                v580 = *(*(&v897 + 1) + 8 * kk);
                                                                                                                objc_opt_class();
                                                                                                                if (objc_opt_isKindOfClass())
                                                                                                                {
                                                                                                                  if (errorCopy)
                                                                                                                  {
                                                                                                                    v591 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                    v592 = *MEMORY[0x1E698F240];
                                                                                                                    v960 = *MEMORY[0x1E696A578];
                                                                                                                    v700 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"otherPlaces"];
                                                                                                                    v961 = v700;
                                                                                                                    v593 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v961 forKeys:&v960 count:1];
                                                                                                                    v594 = v591;
                                                                                                                    v595 = v592;
                                                                                                                    goto LABEL_971;
                                                                                                                  }

LABEL_1023:
                                                                                                                  v873 = 0;

                                                                                                                  goto LABEL_1035;
                                                                                                                }

                                                                                                                objc_opt_class();
                                                                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                                {
                                                                                                                  if (!errorCopy)
                                                                                                                  {
                                                                                                                    goto LABEL_1023;
                                                                                                                  }

                                                                                                                  v596 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                  v597 = *MEMORY[0x1E698F240];
                                                                                                                  v958 = *MEMORY[0x1E696A578];
                                                                                                                  v700 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"otherPlaces"];
                                                                                                                  v959 = v700;
                                                                                                                  v593 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v959 forKeys:&v958 count:1];
                                                                                                                  v594 = v596;
                                                                                                                  v595 = v597;
LABEL_971:
                                                                                                                  v698 = v593;
                                                                                                                  v873 = 0;
                                                                                                                  *errorCopy = [v594 initWithDomain:v595 code:2 userInfo:?];
LABEL_975:
                                                                                                                  v697 = v701;
                                                                                                                  goto LABEL_1033;
                                                                                                                }

                                                                                                                v581 = v580;
                                                                                                                v582 = [BMMomentsEventDataEventBundlePlace alloc];
                                                                                                                v896 = 0;
                                                                                                                v700 = v581;
                                                                                                                v583 = [(BMMomentsEventDataEventBundlePlace *)v582 initWithJSONDictionary:v581 error:&v896];
                                                                                                                v698 = v896;
                                                                                                                if (v698)
                                                                                                                {
                                                                                                                  if (errorCopy)
                                                                                                                  {
                                                                                                                    *errorCopy = v698;
                                                                                                                  }

                                                                                                                  v873 = 0;
                                                                                                                  goto LABEL_975;
                                                                                                                }

                                                                                                                [v699 addObject:v583];
                                                                                                              }

                                                                                                              v577 = [v701 countByEnumeratingWithState:&v897 objects:v962 count:16];
                                                                                                              if (!v577)
                                                                                                              {
LABEL_956:

                                                                                                                v584 = [v388 objectForKeyedSubscript:@"photoTraits"];
                                                                                                                null9 = [MEMORY[0x1E695DFB0] null];
                                                                                                                v697 = v584;
                                                                                                                LODWORD(v584) = [v584 isEqual:null9];

                                                                                                                if (v584)
                                                                                                                {

                                                                                                                  goto LABEL_980;
                                                                                                                }

                                                                                                                if (v697)
                                                                                                                {
                                                                                                                  objc_opt_class();
                                                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                                  {
                                                                                                                    if (errorCopy)
                                                                                                                    {
                                                                                                                      v598 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                      v599 = *MEMORY[0x1E698F240];
                                                                                                                      v956 = *MEMORY[0x1E696A578];
                                                                                                                      v700 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"photoTraits"];
                                                                                                                      v957 = v700;
                                                                                                                      v698 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v957 forKeys:&v956 count:1];
                                                                                                                      v873 = 0;
                                                                                                                      *errorCopy = [v598 initWithDomain:v599 code:2 userInfo:?];
                                                                                                                      goto LABEL_1033;
                                                                                                                    }

                                                                                                                    v873 = 0;
                                                                                                                    goto LABEL_1034;
                                                                                                                  }
                                                                                                                }

                                                                                                                else
                                                                                                                {
LABEL_980:
                                                                                                                  v697 = 0;
                                                                                                                }

                                                                                                                v700 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v697, "count")}];
                                                                                                                v892 = 0u;
                                                                                                                v893 = 0u;
                                                                                                                v894 = 0u;
                                                                                                                v895 = 0u;
                                                                                                                v697 = v697;
                                                                                                                v600 = [v697 countByEnumeratingWithState:&v892 objects:v955 count:16];
                                                                                                                if (!v600)
                                                                                                                {
                                                                                                                  goto LABEL_990;
                                                                                                                }

                                                                                                                v601 = v600;
                                                                                                                v602 = *v893;
LABEL_983:
                                                                                                                v603 = 0;
                                                                                                                while (1)
                                                                                                                {
                                                                                                                  if (*v893 != v602)
                                                                                                                  {
                                                                                                                    objc_enumerationMutation(v697);
                                                                                                                  }

                                                                                                                  v604 = *(*(&v892 + 1) + 8 * v603);
                                                                                                                  objc_opt_class();
                                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                                  {
                                                                                                                    break;
                                                                                                                  }

                                                                                                                  objc_opt_class();
                                                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                                  {
                                                                                                                    if (errorCopy)
                                                                                                                    {
                                                                                                                      v617 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                      v618 = *MEMORY[0x1E698F240];
                                                                                                                      v951 = *MEMORY[0x1E696A578];
                                                                                                                      v695 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"photoTraits"];
                                                                                                                      v952 = v695;
                                                                                                                      v614 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v952 forKeys:&v951 count:1];
                                                                                                                      v615 = v617;
                                                                                                                      v616 = v618;
                                                                                                                      goto LABEL_1028;
                                                                                                                    }

                                                                                                                    goto LABEL_1032;
                                                                                                                  }

                                                                                                                  v605 = v604;
                                                                                                                  [v700 addObject:v605];

                                                                                                                  if (v601 == ++v603)
                                                                                                                  {
                                                                                                                    v601 = [v697 countByEnumeratingWithState:&v892 objects:v955 count:16];
                                                                                                                    if (v601)
                                                                                                                    {
                                                                                                                      goto LABEL_983;
                                                                                                                    }

LABEL_990:

                                                                                                                    v698 = [v388 objectForKeyedSubscript:@"clusterMetadata"];
                                                                                                                    if (v698 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                                    {
                                                                                                                      objc_opt_class();
                                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                                      {
                                                                                                                        v621 = v698;
                                                                                                                        v622 = [BMMomentsEventDataEventBundleClusterMetadata alloc];
                                                                                                                        v891 = 0;
                                                                                                                        v606 = v621;
                                                                                                                        v695 = [(BMMomentsEventDataEventBundleClusterMetadata *)v622 initWithJSONDictionary:v621 error:&v891];
                                                                                                                        v623 = v891;
                                                                                                                        if (!v623)
                                                                                                                        {

                                                                                                                          goto LABEL_993;
                                                                                                                        }

                                                                                                                        if (errorCopy)
                                                                                                                        {
                                                                                                                          v623 = v623;
                                                                                                                          *errorCopy = v623;
                                                                                                                        }

                                                                                                                        v873 = 0;
                                                                                                                        v698 = v621;
                                                                                                                        goto LABEL_1029;
                                                                                                                      }

                                                                                                                      if (errorCopy)
                                                                                                                      {
                                                                                                                        v627 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                        v628 = *MEMORY[0x1E698F240];
                                                                                                                        v949 = *MEMORY[0x1E696A578];
                                                                                                                        v695 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"clusterMetadata"];
                                                                                                                        v950 = v695;
                                                                                                                        v606 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v950 forKeys:&v949 count:1];
                                                                                                                        v873 = 0;
                                                                                                                        *errorCopy = [v627 initWithDomain:v628 code:2 userInfo:?];
                                                                                                                        goto LABEL_1029;
                                                                                                                      }

                                                                                                                      v873 = 0;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v695 = 0;
LABEL_993:
                                                                                                                      v606 = [v388 objectForKeyedSubscript:@"outlierMetadata"];
                                                                                                                      if (v606 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                                      {
                                                                                                                        objc_opt_class();
                                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                                        {
                                                                                                                          v624 = v606;
                                                                                                                          v625 = [BMMomentsEventDataEventBundleOutlierMetadata alloc];
                                                                                                                          v890 = 0;
                                                                                                                          v693 = v624;
                                                                                                                          v691 = [(BMMomentsEventDataEventBundleOutlierMetadata *)v625 initWithJSONDictionary:v624 error:&v890];
                                                                                                                          v626 = v890;
                                                                                                                          if (!v626)
                                                                                                                          {

                                                                                                                            goto LABEL_996;
                                                                                                                          }

                                                                                                                          if (errorCopy)
                                                                                                                          {
                                                                                                                            v626 = v626;
                                                                                                                            *errorCopy = v626;
                                                                                                                          }

                                                                                                                          v873 = 0;
                                                                                                                          goto LABEL_1022;
                                                                                                                        }

                                                                                                                        if (errorCopy)
                                                                                                                        {
                                                                                                                          v629 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                          v630 = *MEMORY[0x1E698F240];
                                                                                                                          v947 = *MEMORY[0x1E696A578];
                                                                                                                          v691 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"outlierMetadata"];
                                                                                                                          v948 = v691;
                                                                                                                          v693 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v948 forKeys:&v947 count:1];
                                                                                                                          v873 = 0;
                                                                                                                          *errorCopy = [v629 initWithDomain:v630 code:2 userInfo:?];
                                                                                                                          goto LABEL_1022;
                                                                                                                        }

                                                                                                                        v873 = 0;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v691 = 0;
LABEL_996:
                                                                                                                        v694 = [v388 objectForKeyedSubscript:@"bundleGoodnessScore"];
                                                                                                                        if (v694 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                                        {
                                                                                                                          objc_opt_class();
                                                                                                                          if (objc_opt_isKindOfClass())
                                                                                                                          {
                                                                                                                            v693 = v694;
                                                                                                                            goto LABEL_999;
                                                                                                                          }

                                                                                                                          if (errorCopy)
                                                                                                                          {
                                                                                                                            v631 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                            v632 = *MEMORY[0x1E698F240];
                                                                                                                            v945 = *MEMORY[0x1E696A578];
                                                                                                                            v689 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleGoodnessScore"];
                                                                                                                            v946 = v689;
                                                                                                                            v692 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v946 forKeys:&v945 count:1];
                                                                                                                            v693 = 0;
                                                                                                                            v873 = 0;
                                                                                                                            *errorCopy = [v631 initWithDomain:v632 code:2 userInfo:?];
                                                                                                                            goto LABEL_1020;
                                                                                                                          }

                                                                                                                          v693 = 0;
                                                                                                                          v873 = 0;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v693 = 0;
LABEL_999:
                                                                                                                          v692 = [v388 objectForKeyedSubscript:@"distinctnessScore"];
                                                                                                                          if (v692 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                                          {
                                                                                                                            objc_opt_class();
                                                                                                                            if (objc_opt_isKindOfClass())
                                                                                                                            {
                                                                                                                              v689 = v692;
                                                                                                                              goto LABEL_1002;
                                                                                                                            }

                                                                                                                            if (errorCopy)
                                                                                                                            {
                                                                                                                              v636 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                              v637 = *MEMORY[0x1E698F240];
                                                                                                                              v943 = *MEMORY[0x1E696A578];
                                                                                                                              v687 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"distinctnessScore"];
                                                                                                                              v944 = v687;
                                                                                                                              v690 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v944 forKeys:&v943 count:1];
                                                                                                                              v689 = 0;
                                                                                                                              v873 = 0;
                                                                                                                              *errorCopy = [v636 initWithDomain:v637 code:2 userInfo:?];
                                                                                                                              goto LABEL_1019;
                                                                                                                            }

                                                                                                                            v689 = 0;
                                                                                                                            v873 = 0;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v689 = 0;
LABEL_1002:
                                                                                                                            v690 = [v388 objectForKeyedSubscript:@"richnessScore"];
                                                                                                                            if (v690 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                                            {
                                                                                                                              objc_opt_class();
                                                                                                                              if (objc_opt_isKindOfClass())
                                                                                                                              {
                                                                                                                                v687 = v690;
                                                                                                                                goto LABEL_1005;
                                                                                                                              }

                                                                                                                              if (errorCopy)
                                                                                                                              {
                                                                                                                                v638 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                                v639 = *MEMORY[0x1E698F240];
                                                                                                                                v941 = *MEMORY[0x1E696A578];
                                                                                                                                v685 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"richnessScore"];
                                                                                                                                v942 = v685;
                                                                                                                                v688 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v942 forKeys:&v941 count:1];
                                                                                                                                v687 = 0;
                                                                                                                                v873 = 0;
                                                                                                                                *errorCopy = [v638 initWithDomain:v639 code:2 userInfo:?];
                                                                                                                                goto LABEL_1018;
                                                                                                                              }

                                                                                                                              v687 = 0;
                                                                                                                              v873 = 0;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v687 = 0;
LABEL_1005:
                                                                                                                              v688 = [v388 objectForKeyedSubscript:@"engagementScore"];
                                                                                                                              if (v688 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                                              {
                                                                                                                                objc_opt_class();
                                                                                                                                if (objc_opt_isKindOfClass())
                                                                                                                                {
                                                                                                                                  v685 = v688;
                                                                                                                                  goto LABEL_1008;
                                                                                                                                }

                                                                                                                                if (errorCopy)
                                                                                                                                {
                                                                                                                                  v640 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                                  v641 = *MEMORY[0x1E698F240];
                                                                                                                                  v939 = *MEMORY[0x1E696A578];
                                                                                                                                  v683 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"engagementScore"];
                                                                                                                                  v940 = v683;
                                                                                                                                  v686 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v940 forKeys:&v939 count:1];
                                                                                                                                  v685 = 0;
                                                                                                                                  v873 = 0;
                                                                                                                                  *errorCopy = [v640 initWithDomain:v641 code:2 userInfo:?];
                                                                                                                                  goto LABEL_1017;
                                                                                                                                }

                                                                                                                                v685 = 0;
                                                                                                                                v873 = 0;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v685 = 0;
LABEL_1008:
                                                                                                                                v686 = [v388 objectForKeyedSubscript:@"heuristicsScore"];
                                                                                                                                if (v686 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                                                {
                                                                                                                                  objc_opt_class();
                                                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                                                  {
                                                                                                                                    v683 = v686;
                                                                                                                                    goto LABEL_1011;
                                                                                                                                  }

                                                                                                                                  if (errorCopy)
                                                                                                                                  {
                                                                                                                                    v642 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                                    v643 = *MEMORY[0x1E698F240];
                                                                                                                                    v937 = *MEMORY[0x1E696A578];
                                                                                                                                    v684 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"heuristicsScore"];
                                                                                                                                    v938 = v684;
                                                                                                                                    v607 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v938 forKeys:&v937 count:1];
                                                                                                                                    v683 = 0;
                                                                                                                                    v873 = 0;
                                                                                                                                    *errorCopy = [v642 initWithDomain:v643 code:2 userInfo:?];
                                                                                                                                    goto LABEL_1015;
                                                                                                                                  }

                                                                                                                                  v683 = 0;
                                                                                                                                  v873 = 0;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v683 = 0;
LABEL_1011:
                                                                                                                                  v684 = [v388 objectForKeyedSubscript:@"metadataForRank"];
                                                                                                                                  if (!v684 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                                                  {
                                                                                                                                    v607 = 0;
                                                                                                                                    goto LABEL_1014;
                                                                                                                                  }

                                                                                                                                  objc_opt_class();
                                                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                                                  {
                                                                                                                                    v633 = v684;
                                                                                                                                    v634 = [BMMomentsEventDataEventBundleMetadataForRank alloc];
                                                                                                                                    v889 = 0;
                                                                                                                                    v607 = [(BMMomentsEventDataEventBundleMetadataForRank *)v634 initWithJSONDictionary:v633 error:&v889];
                                                                                                                                    v635 = v889;
                                                                                                                                    if (v635)
                                                                                                                                    {
                                                                                                                                      if (errorCopy)
                                                                                                                                      {
                                                                                                                                        v635 = v635;
                                                                                                                                        *errorCopy = v635;
                                                                                                                                      }

                                                                                                                                      v873 = 0;
                                                                                                                                      v684 = v633;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {

LABEL_1014:
                                                                                                                                      intValue = [v844 intValue];
                                                                                                                                      intValue2 = [v851 intValue];
                                                                                                                                      intValue3 = [v849 intValue];
                                                                                                                                      intValue4 = [v845 intValue];
                                                                                                                                      intValue5 = [v839 intValue];
                                                                                                                                      intValue6 = [v817 intValue];
                                                                                                                                      intValue7 = [v808 intValue];
                                                                                                                                      intValue8 = [v801 intValue];
                                                                                                                                      intValue9 = [v787 intValue];
                                                                                                                                      intValue10 = [v775 intValue];
                                                                                                                                      intValue11 = [v773 intValue];
                                                                                                                                      intValue12 = [v762 intValue];
                                                                                                                                      intValue13 = [v752 intValue];
                                                                                                                                      intValue14 = [v750 intValue];
                                                                                                                                      intValue15 = [v747 intValue];
                                                                                                                                      intValue16 = [v745 intValue];
                                                                                                                                      intValue17 = [v741 intValue];
                                                                                                                                      intValue18 = [v739 intValue];
                                                                                                                                      intValue19 = [v737 intValue];
                                                                                                                                      intValue20 = [v736 intValue];
                                                                                                                                      intValue21 = [v733 intValue];
                                                                                                                                      intValue22 = [v732 intValue];
                                                                                                                                      intValue23 = [v730 intValue];
                                                                                                                                      intValue24 = [v729 intValue];
                                                                                                                                      intValue25 = [v726 intValue];
                                                                                                                                      [v722 intValue];
                                                                                                                                      [v719 intValue];
                                                                                                                                      [v717 intValue];
                                                                                                                                      LODWORD(v663) = intValue9;
                                                                                                                                      LODWORD(v662) = intValue8;
                                                                                                                                      LODWORD(v661) = intValue7;
                                                                                                                                      LODWORD(v660) = intValue6;
                                                                                                                                      LODWORD(v659) = intValue5;
                                                                                                                                      LODWORD(v658) = intValue4;
                                                                                                                                      selfCopy = objc_retainAutoreleasedReturnValue( -[BMMomentsEventDataEventBundle initWithBundleIdentifier:bundleStartDate:bundleEndDate:bundleCreationDate:bundleExpirationDate:bundleInterfaceType:bundleSourceHealthExists:bundleSourcePhotoExists:bundleSourceProactiveExists:bundleSourceRoutineExists:bundlePromptLanguageFormat:bundlePromptToneID:bundlePromptParametersAvailability:bundlePlaceType:bundlePlaceUserType:bundleBaseEventCateory:bundleEventIDs:bundleActionType:backgroundActions:bundleIsFamilyIncluded:bundleTimeTag:isBundleResourceTypeUnknown:isBundleResourceTypeValueIncluded:isBundleResourceTypePhotoAssetsIncluded:isBundleResourceTypeMediaIncluded:isBundleResourceTypeWebLinkIncluded:isBundleResourceTypeInterenceTagIncluded:bundlEngagement:bundleVersion:rankingVersion:suggestionType:suggestionTimestamp:suggestionClientIdentifier:suggestionViewContainerName:suggestionViewVisibleTime:appEntryEventType:appEntryEventClientIdentifier:appEntryEventTimestamp:appEntryEventStartTime:appEntryEventEndTime:appEntryEventTotalCharacters:appEntryEventAddedCharacters:clientActivityEventType:clientActivityEventClientIdentifier:clientActivityEventTimestamp:suggestionIdentifier:photoSourceType:photoLibraryType:bundleSourcePostAnalyticsExists:bundleSourcePDExists:bundleSourceMotionExists:bundleSourceBooksExists:bundleSourceScreenTimeExists:gaPRArray:bundlePCount:ranking:labelConfidenceScore:timeCorrelationScore:callDuration:interactionCount:interactionType:callPlace:distanceFromHome:homeAvailability:workAvailability:bundleVisitMapItemSource:bundleVisitPlaceType:bundleVisitPlaceLabelGranularity:bundleIncludesAnomalousEvent:isFiltered:bundleSuperType:bundleSubType:isAggregatedAndSuppressed:summarizationGranularity:includedInSummaryBundleOnly:subBundleIDs:subSuggestionIDs:firstCreationDate:resources:persons:mainPlace:otherPlaces:photoTraits:clusterMetadata:outlierMetadata:bundleGoodnessScore:distinctnessScore:richnessScore:engagementScore:heuristicsScore:metadataForRank:]( selfCopy,  "initWithBundleIdentifier:bundleStartDate:bundleEndDate:bundleCreationDate:bundleExpirationDate:bundleInterfaceType:bundleSourceHealthExists:bundleSourcePhotoExists:bundleSourceProactiveExists:bundleSourceRoutineExists:bundlePromptLanguageFormat:bundlePromptToneID:bundlePromptParametersAvailability:bundlePlaceType:bundlePlaceUserType:bundleBaseEventCateory:bundleEventIDs:bundleActionType:backgroundActions:bundleIsFamilyIncluded:bundleTimeTag:isBundleResourceTypeUnknown:isBundleResourceTypeValueIncluded:isBundleResourceTypePhotoAssetsIncluded:isBundleResourceTypeMediaIncluded:isBundleResourceTypeWebLinkIncluded:isBundleResourceTypeInterenceTagIncluded:bundlEngagement:bundleVersion:rankingVersion:suggestionType:suggestionTimestamp:suggestionClientIdentifier:suggestionViewContainerName:suggestionViewVisibleTime:appEntryEventType:appEntryEventClientIdentifier:appEntryEventTimestamp:appEntryEventStartTime:appEntryEventEndTime:appEntryEventTotalCharacters:appEntryEventAddedCharacters:clientActivityEventType:clientActivityEventClientIdentifier:clientActivityEventTimestamp:suggestionIdentifier:photoSourceType:photoLibraryType:bundleSourcePostAnalyticsExists:bundleSourcePDExists:bundleSourceMotionExists:bundleSourceBooksExists:bundleSourceScreenTimeExists:gaPRArray:bundlePCount:ranking:labelConfidenceScore:timeCorrelationScore:callDuration:interactionCount:interactionType:callPlace:distanceFromHome:homeAvailability:workAvailability:bundleVisitMapItemSource:bundleVisitPlaceType:bundleVisitPlaceLabelGranularity:bundleIncludesAnomalousEvent:isFiltered:bundleSuperType:bundleSubType:isAggregatedAndSuppressed:summarizationGranularity:includedInSummaryBundleOnly:subBundleIDs:subSuggestionIDs:firstCreationDate:resources:persons:mainPlace:otherPlaces:photoTraits:clusterMetadata:outlierMetadata:bundleGoodnessScore:distinctnessScore:richnessScore:engagementScore:heuristicsScore:metadataForRank:",  v885,  v854,  v875,  v871,  v869,  intValue,  v866,  v867,  v864,  v861,  v859,  v855,  v853,  __PAIR64__(intValue3, intValue2),  v658,  v881,  v840,  v842,  v837,  v659,  v829,  v827,  v825,  v823,  v821,  v819,  v660,  v816,  v814,  v661,  v810,  v807,  v805,  v803,  v662,  v799,  v797,  v795,  v792,  v791,  v789,  v663,  v785,  v783,  v777,  __PAIR64__(intValue11, intValue10),
                                                                                                                                                 v772,
                                                                                                                                                 v769,
                                                                                                                                                 v768,
                                                                                                                                                 v766,
                                                                                                                                                 v764,
                                                                                                                                                 v780,
                                                                                                                                                 v400,
                                                                                                                                                 __PAIR64__(intValue13, intValue12),
                                                                                                                                                 __PAIR64__(intValue15, intValue14),
                                                                                                                                                 __PAIR64__(intValue17, intValue16),
                                                                                                                                                 __PAIR64__(intValue19, intValue18),
                                                                                                                                                 __PAIR64__(intValue21, intValue20),
                                                                                                                                                 __PAIR64__(intValue23, intValue22),
                                                                                                                                                 __PAIR64__(intValue25, intValue24),
                                                                                                                                                 v723));
                                                                                                                                      v873 = selfCopy;
                                                                                                                                    }

LABEL_1015:
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    if (errorCopy)
                                                                                                                                    {
                                                                                                                                      v644 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                                      v645 = *MEMORY[0x1E698F240];
                                                                                                                                      v935 = *MEMORY[0x1E696A578];
                                                                                                                                      v607 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadataForRank"];
                                                                                                                                      v936 = v607;
                                                                                                                                      v646 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v936 forKeys:&v935 count:1];
                                                                                                                                      *errorCopy = [v644 initWithDomain:v645 code:2 userInfo:v646];

                                                                                                                                      v873 = 0;
                                                                                                                                      goto LABEL_1015;
                                                                                                                                    }

                                                                                                                                    v873 = 0;
                                                                                                                                  }
                                                                                                                                }

LABEL_1017:
                                                                                                                              }

LABEL_1018:
                                                                                                                            }

LABEL_1019:
                                                                                                                          }

LABEL_1020:
                                                                                                                        }

LABEL_1022:
                                                                                                                      }

LABEL_1029:
                                                                                                                    }

LABEL_1033:

LABEL_1034:
LABEL_1035:

LABEL_1036:
LABEL_1037:

LABEL_1038:
LABEL_1039:

LABEL_1040:
LABEL_1041:

LABEL_1042:
LABEL_1044:

LABEL_1045:
LABEL_1046:

LABEL_1047:
LABEL_1048:

LABEL_1049:
LABEL_1050:

LABEL_1051:
LABEL_1052:

LABEL_1053:
LABEL_1054:

LABEL_1055:
LABEL_1056:

LABEL_1057:
LABEL_1058:

LABEL_1059:
LABEL_1060:

LABEL_1061:
LABEL_1062:

LABEL_1063:
LABEL_1064:

LABEL_1065:
LABEL_1066:

LABEL_1067:
LABEL_1068:

                                                                                                                    goto LABEL_1069;
                                                                                                                  }
                                                                                                                }

                                                                                                                if (errorCopy)
                                                                                                                {
                                                                                                                  v612 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                  v613 = *MEMORY[0x1E698F240];
                                                                                                                  v953 = *MEMORY[0x1E696A578];
                                                                                                                  v695 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"photoTraits"];
                                                                                                                  v954 = v695;
                                                                                                                  v614 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v954 forKeys:&v953 count:1];
                                                                                                                  v615 = v612;
                                                                                                                  v616 = v613;
LABEL_1028:
                                                                                                                  v606 = v614;
                                                                                                                  v873 = 0;
                                                                                                                  *errorCopy = [v615 initWithDomain:v616 code:2 userInfo:?];
                                                                                                                  v698 = v697;
                                                                                                                  goto LABEL_1029;
                                                                                                                }

LABEL_1032:
                                                                                                                v873 = 0;
                                                                                                                v698 = v697;
                                                                                                                goto LABEL_1033;
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }

                                                                                                  if (errorCopy)
                                                                                                  {
                                                                                                    v422 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                    v423 = *MEMORY[0x1E698F240];
                                                                                                    v1046 = *MEMORY[0x1E696A578];
                                                                                                    v778 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleSourceScreenTimeExists"];
                                                                                                    v1047 = v778;
                                                                                                    v781 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1047 forKeys:&v1046 count:1];
                                                                                                    v764 = 0;
                                                                                                    v873 = 0;
                                                                                                    *errorCopy = [v422 initWithDomain:v423 code:2 userInfo:?];
                                                                                                    v59 = v875;
                                                                                                    v60 = v871;
                                                                                                    v29 = v886;
                                                                                                    v61 = v869;
                                                                                                    v39 = v835;
                                                                                                    v98 = v858;
                                                                                                    v143 = obj;
                                                                                                    v284 = v808;

                                                                                                    goto LABEL_1072;
                                                                                                  }

                                                                                                  v764 = 0;
                                                                                                  v873 = 0;
LABEL_610:
                                                                                                  v16 = v885;
                                                                                                  v59 = v875;
                                                                                                  v60 = v871;
                                                                                                  v29 = v886;
                                                                                                  v61 = v869;
                                                                                                  v39 = v835;
                                                                                                  v98 = v858;
                                                                                                  v143 = obj;
                                                                                                  v284 = v808;
                                                                                                  goto LABEL_1073;
                                                                                                }

                                                                                                objc_opt_class();
                                                                                                if (objc_opt_isKindOfClass())
                                                                                                {
                                                                                                  v766 = v767;
                                                                                                  goto LABEL_505;
                                                                                                }

                                                                                                if (errorCopy)
                                                                                                {
                                                                                                  v416 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                  v417 = *MEMORY[0x1E698F240];
                                                                                                  v1048 = *MEMORY[0x1E696A578];
                                                                                                  v764 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleSourceBooksExists"];
                                                                                                  v1049 = v764;
                                                                                                  v765 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1049 forKeys:&v1048 count:1];
                                                                                                  v766 = 0;
                                                                                                  v873 = 0;
                                                                                                  *errorCopy = [v416 initWithDomain:v417 code:2 userInfo:?];
                                                                                                  goto LABEL_610;
                                                                                                }

                                                                                                v766 = 0;
                                                                                                v873 = 0;
                                                                                                v16 = v885;
LABEL_605:
                                                                                                v59 = v875;
                                                                                                v60 = v871;
                                                                                                v29 = v886;
                                                                                                v61 = v869;
                                                                                                v39 = v835;
                                                                                                v98 = v858;
                                                                                                v143 = obj;
                                                                                                v284 = v808;
                                                                                                goto LABEL_1074;
                                                                                              }

                                                                                              objc_opt_class();
                                                                                              if (objc_opt_isKindOfClass())
                                                                                              {
                                                                                                v768 = v770;
                                                                                                goto LABEL_502;
                                                                                              }

                                                                                              if (errorCopy)
                                                                                              {
                                                                                                v410 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                v411 = *MEMORY[0x1E698F240];
                                                                                                v1050 = *MEMORY[0x1E696A578];
                                                                                                v766 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleSourceMotionExists"];
                                                                                                v1051 = v766;
                                                                                                v767 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1051 forKeys:&v1050 count:1];
                                                                                                v768 = 0;
                                                                                                v873 = 0;
                                                                                                *errorCopy = [v410 initWithDomain:v411 code:2 userInfo:?];
                                                                                                v16 = v885;
                                                                                                goto LABEL_605;
                                                                                              }

                                                                                              v768 = 0;
                                                                                              v873 = 0;
                                                                                              v16 = v885;
                                                                                              v59 = v875;
                                                                                              v60 = v871;
                                                                                              v29 = v886;
                                                                                              v61 = v869;
                                                                                              v39 = v835;
LABEL_597:
                                                                                              v98 = v858;
                                                                                              v143 = obj;
                                                                                              v284 = v808;
                                                                                              goto LABEL_1075;
                                                                                            }

                                                                                            v389 = v39;
                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              v769 = v771;
                                                                                              goto LABEL_499;
                                                                                            }

                                                                                            v401 = v885;
                                                                                            if (errorCopy)
                                                                                            {
                                                                                              v406 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                              v407 = *MEMORY[0x1E698F240];
                                                                                              v1052 = *MEMORY[0x1E696A578];
                                                                                              v768 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleSourcePDExists"];
                                                                                              v1053 = v768;
                                                                                              v770 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1053 forKeys:&v1052 count:1];
                                                                                              v769 = 0;
                                                                                              v873 = 0;
                                                                                              *errorCopy = [v406 initWithDomain:v407 code:2 userInfo:?];
                                                                                              v16 = v885;
                                                                                              v59 = v875;
                                                                                              v60 = v871;
                                                                                              v29 = v886;
                                                                                              v61 = v869;
                                                                                              v39 = v389;
                                                                                              goto LABEL_597;
                                                                                            }

                                                                                            v769 = 0;
                                                                                            v873 = 0;
LABEL_592:
                                                                                            v16 = v401;
                                                                                            v59 = v875;
                                                                                            v60 = v871;
                                                                                            v29 = v886;
                                                                                            v61 = v869;
                                                                                            v39 = v389;
                                                                                            v98 = v858;
                                                                                            v143 = obj;
                                                                                            v284 = v808;
                                                                                            goto LABEL_1076;
                                                                                          }

                                                                                          v389 = v39;
                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            v772 = v774;
                                                                                            goto LABEL_496;
                                                                                          }

                                                                                          v401 = v885;
                                                                                          if (errorCopy)
                                                                                          {
                                                                                            v402 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v403 = *MEMORY[0x1E698F240];
                                                                                            v1054 = *MEMORY[0x1E696A578];
                                                                                            v769 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleSourcePostAnalyticsExists"];
                                                                                            v1055 = v769;
                                                                                            v771 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1055 forKeys:&v1054 count:1];
                                                                                            v772 = 0;
                                                                                            v873 = 0;
                                                                                            *errorCopy = [v402 initWithDomain:v403 code:2 userInfo:?];
                                                                                            goto LABEL_592;
                                                                                          }

                                                                                          v772 = 0;
                                                                                          v873 = 0;
                                                                                          v16 = v885;
                                                                                          v59 = v875;
                                                                                          v60 = v871;
                                                                                          v29 = v886;
                                                                                          v61 = v869;
LABEL_586:
                                                                                          v98 = v858;
                                                                                          v143 = obj;
                                                                                          v284 = v808;
                                                                                          goto LABEL_1077;
                                                                                        }

                                                                                        v371 = v885;
                                                                                        objc_opt_class();
                                                                                        v383 = v776;
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          v773 = v776;
LABEL_492:

                                                                                          dictionaryCopy = v846;
                                                                                          v39 = v835;
                                                                                          goto LABEL_493;
                                                                                        }

                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          v383 = v776;
                                                                                          v384 = v776;
                                                                                          v773 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPhotoLibraryTypeFromString(v384)];

                                                                                          goto LABEL_492;
                                                                                        }

                                                                                        if (errorCopy)
                                                                                        {
                                                                                          v420 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v421 = *MEMORY[0x1E698F240];
                                                                                          v1056 = *MEMORY[0x1E696A578];
                                                                                          v772 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"photoLibraryType"];
                                                                                          v1057 = v772;
                                                                                          v774 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1057 forKeys:&v1056 count:1];
                                                                                          v773 = 0;
                                                                                          v873 = 0;
                                                                                          *errorCopy = [v420 initWithDomain:v421 code:2 userInfo:?];
                                                                                          v16 = v885;
                                                                                          v59 = v875;
                                                                                          v60 = v871;
                                                                                          v29 = v886;
                                                                                          v61 = v869;
                                                                                          v39 = v835;
                                                                                          goto LABEL_586;
                                                                                        }

                                                                                        v773 = 0;
                                                                                        v873 = 0;
LABEL_608:
                                                                                        v16 = v371;
                                                                                        v59 = v875;
                                                                                        v60 = v871;
                                                                                        v29 = v886;
                                                                                        v61 = v869;
                                                                                        v39 = v835;
                                                                                        v98 = v858;
                                                                                        v143 = obj;
                                                                                        v284 = v808;
                                                                                        goto LABEL_1078;
                                                                                      }

                                                                                      v371 = v885;
                                                                                      objc_opt_class();
                                                                                      v372 = v782;
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        v775 = v782;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                        {
                                                                                          if (!errorCopy)
                                                                                          {
                                                                                            v775 = 0;
                                                                                            v873 = 0;
                                                                                            v16 = v885;
                                                                                            v59 = v875;
                                                                                            v60 = v871;
                                                                                            v29 = v886;
                                                                                            v61 = v869;
                                                                                            v39 = v835;
                                                                                            v98 = v858;
                                                                                            v143 = obj;
                                                                                            v284 = v808;
                                                                                            goto LABEL_1079;
                                                                                          }

                                                                                          v418 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v419 = *MEMORY[0x1E698F240];
                                                                                          v1058 = *MEMORY[0x1E696A578];
                                                                                          v773 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"photoSourceType"];
                                                                                          v1059 = v773;
                                                                                          v776 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1059 forKeys:&v1058 count:1];
                                                                                          v775 = 0;
                                                                                          v873 = 0;
                                                                                          *errorCopy = [v418 initWithDomain:v419 code:2 userInfo:?];
                                                                                          goto LABEL_608;
                                                                                        }

                                                                                        v372 = v782;
                                                                                        v382 = v782;
                                                                                        v775 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPhotoSourceTypeFromString(v382)];
                                                                                      }

                                                                                      dictionaryCopy = v846;
                                                                                      v39 = v835;
                                                                                      goto LABEL_485;
                                                                                    }

                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      v789 = v345;
                                                                                      goto LABEL_410;
                                                                                    }

                                                                                    if (errorCopy)
                                                                                    {
                                                                                      v358 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                      v359 = *MEMORY[0x1E698F240];
                                                                                      v1068 = *MEMORY[0x1E696A578];
                                                                                      v787 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appEntryEventAddedCharacters"];
                                                                                      v1069 = v787;
                                                                                      v788 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1069 forKeys:&v1068 count:1];
                                                                                      v789 = 0;
                                                                                      v873 = 0;
                                                                                      *errorCopy = [v358 initWithDomain:v359 code:2 userInfo:?];
                                                                                      v59 = v875;
                                                                                      v60 = v871;
                                                                                      v29 = v886;
                                                                                      v61 = v869;
                                                                                      v98 = v858;
                                                                                      v284 = v808;
                                                                                      v16 = v885;
                                                                                      goto LABEL_1083;
                                                                                    }

                                                                                    v789 = 0;
                                                                                    v873 = 0;
                                                                                  }

                                                                                  v59 = v875;
                                                                                  v60 = v871;
                                                                                  v29 = v886;
                                                                                  v61 = v869;
                                                                                  v98 = v858;
                                                                                  v284 = v808;
                                                                                  v16 = v885;
                                                                                  goto LABEL_1084;
                                                                                }

                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v350 = v341;
                                                                                  v351 = objc_alloc(MEMORY[0x1E695DF00]);
                                                                                  [v350 doubleValue];
                                                                                  v792 = [v351 initWithTimeIntervalSince1970:?];

                                                                                  goto LABEL_404;
                                                                                }

                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v354 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                                                                  v355 = v341;
                                                                                  v792 = [v354 dateFromString:v355];

                                                                                  goto LABEL_404;
                                                                                }

                                                                                v836 = v39;
                                                                                v379 = v885;
                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v792 = v794;
                                                                                  dictionaryCopy = v846;
                                                                                  v39 = v836;
                                                                                  v143 = obj;
                                                                                  goto LABEL_404;
                                                                                }

                                                                                if (errorCopy)
                                                                                {
                                                                                  v414 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v415 = *MEMORY[0x1E698F240];
                                                                                  v1072 = *MEMORY[0x1E696A578];
                                                                                  v791 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"appEntryEventEndTime"];
                                                                                  v1073 = v791;
                                                                                  v793 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1073 forKeys:&v1072 count:1];
                                                                                  v792 = 0;
                                                                                  v873 = 0;
                                                                                  *errorCopy = [v414 initWithDomain:v415 code:2 userInfo:?];
                                                                                  v16 = v885;
                                                                                  v59 = v875;
                                                                                  v60 = v871;
                                                                                  v29 = v886;
                                                                                  v61 = v869;
                                                                                  v39 = v836;
                                                                                  v98 = v858;
                                                                                  v143 = obj;
                                                                                  v284 = v808;
                                                                                  goto LABEL_1085;
                                                                                }

                                                                                v792 = 0;
                                                                                v873 = 0;
LABEL_601:
                                                                                v16 = v379;
                                                                                v59 = v875;
                                                                                v60 = v871;
                                                                                v29 = v886;
                                                                                v61 = v869;
                                                                                v39 = v836;
                                                                                v98 = v858;
                                                                                v143 = obj;
                                                                                v284 = v808;
                                                                                goto LABEL_1086;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v348 = v339;
                                                                                v349 = objc_alloc(MEMORY[0x1E695DF00]);
                                                                                [v348 doubleValue];
                                                                                v795 = [v349 initWithTimeIntervalSince1970:?];

                                                                                goto LABEL_401;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v352 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                                                                v353 = v339;
                                                                                v795 = [v352 dateFromString:v353];

                                                                                goto LABEL_401;
                                                                              }

                                                                              v836 = v39;
                                                                              v379 = v885;
                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v795 = v796;
                                                                                dictionaryCopy = v846;
                                                                                v39 = v836;
                                                                                v143 = obj;
                                                                                goto LABEL_401;
                                                                              }

                                                                              if (errorCopy)
                                                                              {
                                                                                v412 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v413 = *MEMORY[0x1E698F240];
                                                                                v1074 = *MEMORY[0x1E696A578];
                                                                                v792 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"appEntryEventStartTime"];
                                                                                v1075 = v792;
                                                                                v794 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1075 forKeys:&v1074 count:1];
                                                                                v795 = 0;
                                                                                v873 = 0;
                                                                                *errorCopy = [v412 initWithDomain:v413 code:2 userInfo:?];
                                                                                goto LABEL_601;
                                                                              }

                                                                              v795 = 0;
                                                                              v873 = 0;
                                                                              v16 = v885;
LABEL_599:
                                                                              v59 = v875;
                                                                              v60 = v871;
                                                                              v29 = v886;
                                                                              v61 = v869;
                                                                              v39 = v836;
                                                                              v98 = v858;
                                                                              v143 = obj;
                                                                              v284 = v808;
                                                                              goto LABEL_1087;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v326 = v325;
                                                                              v327 = objc_alloc(MEMORY[0x1E695DF00]);
                                                                              [v326 doubleValue];
                                                                              v797 = [v327 initWithTimeIntervalSince1970:?];
                                                                            }

                                                                            else
                                                                            {
                                                                              objc_opt_class();
                                                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                              {
                                                                                v836 = v39;
                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v797 = v798;
                                                                                  dictionaryCopy = v846;
                                                                                  v143 = obj;
                                                                                  goto LABEL_398;
                                                                                }

                                                                                if (!errorCopy)
                                                                                {
                                                                                  v797 = 0;
                                                                                  v873 = 0;
                                                                                  v16 = v885;
                                                                                  v59 = v875;
                                                                                  v60 = v871;
                                                                                  v29 = v886;
                                                                                  v61 = v869;
                                                                                  v98 = v858;
                                                                                  v143 = obj;
                                                                                  v284 = v808;
                                                                                  goto LABEL_1088;
                                                                                }

                                                                                v408 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v409 = *MEMORY[0x1E698F240];
                                                                                v1076 = *MEMORY[0x1E696A578];
                                                                                v795 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"appEntryEventTimestamp"];
                                                                                v1077 = v795;
                                                                                v796 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1077 forKeys:&v1076 count:1];
                                                                                v797 = 0;
                                                                                v873 = 0;
                                                                                *errorCopy = [v408 initWithDomain:v409 code:2 userInfo:?];
                                                                                v16 = v885;
                                                                                goto LABEL_599;
                                                                              }

                                                                              v326 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                                                              v337 = v325;
                                                                              v797 = [v326 dateFromString:v337];
                                                                            }

                                                                            goto LABEL_398;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v799 = v323;
                                                                            goto LABEL_378;
                                                                          }

                                                                          if (errorCopy)
                                                                          {
                                                                            v333 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v334 = *MEMORY[0x1E698F240];
                                                                            v1078 = *MEMORY[0x1E696A578];
                                                                            v797 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appEntryEventClientIdentifier"];
                                                                            v1079 = v797;
                                                                            v335 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1079 forKeys:&v1078 count:1];
                                                                            v336 = v333;
                                                                            v29 = v886;
                                                                            v798 = v335;
                                                                            v799 = 0;
                                                                            v873 = 0;
                                                                            *errorCopy = [v336 initWithDomain:v334 code:2 userInfo:?];
                                                                            v59 = v875;
                                                                            v60 = v871;
                                                                            v61 = v869;
                                                                            v98 = v858;
                                                                            v284 = v808;
                                                                            v16 = v885;
                                                                            goto LABEL_1088;
                                                                          }

                                                                          v799 = 0;
                                                                          v873 = 0;
                                                                          v59 = v875;
                                                                          v60 = v871;
LABEL_481:
                                                                          v61 = v869;
                                                                          v98 = v858;
                                                                          v284 = v808;
                                                                          v16 = v885;
                                                                          goto LABEL_1089;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v801 = v301;
LABEL_374:

                                                                          v29 = v886;
                                                                          goto LABEL_375;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v318 = v802;
                                                                          v319 = MEMORY[0x1E696AD98];
                                                                          v320 = BMMomentsEventDataAppEntryEventTypeFromString(v318);
                                                                          v321 = v319;
                                                                          v301 = v802;
                                                                          v801 = [v321 numberWithInt:v320];

                                                                          goto LABEL_374;
                                                                        }

                                                                        if (errorCopy)
                                                                        {
                                                                          v360 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v361 = *MEMORY[0x1E698F240];
                                                                          v1080 = *MEMORY[0x1E696A578];
                                                                          v799 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"appEntryEventType"];
                                                                          v1081 = v799;
                                                                          v800 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1081 forKeys:&v1080 count:1];
                                                                          v801 = 0;
                                                                          v873 = 0;
                                                                          *errorCopy = [v360 initWithDomain:v361 code:2 userInfo:?];
                                                                          v59 = v875;
                                                                          v60 = v871;
                                                                          v29 = v886;
                                                                          goto LABEL_481;
                                                                        }

                                                                        v801 = 0;
                                                                        v873 = 0;
                                                                        v59 = v875;
                                                                        v60 = v871;
                                                                        v29 = v886;
LABEL_555:
                                                                        v61 = v869;
                                                                        v98 = v858;
                                                                        v284 = v808;
                                                                        v16 = v885;
                                                                        goto LABEL_1090;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v803 = v299;
                                                                        goto LABEL_348;
                                                                      }

                                                                      if (errorCopy)
                                                                      {
                                                                        v314 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v315 = *MEMORY[0x1E698F240];
                                                                        v1082 = *MEMORY[0x1E696A578];
                                                                        v801 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"suggestionViewVisibleTime"];
                                                                        v1083 = v801;
                                                                        v316 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1083 forKeys:&v1082 count:1];
                                                                        v317 = v314;
                                                                        v29 = v886;
                                                                        v802 = v316;
                                                                        v803 = 0;
                                                                        v873 = 0;
                                                                        *errorCopy = [v317 initWithDomain:v315 code:2 userInfo:?];
                                                                        v59 = v875;
                                                                        v60 = v871;
                                                                        goto LABEL_555;
                                                                      }

                                                                      v803 = 0;
                                                                      v873 = 0;
LABEL_464:
                                                                      v59 = v875;
                                                                      v60 = v871;
                                                                      v61 = v869;
                                                                      v98 = v858;
                                                                      v284 = v808;
                                                                      v16 = v885;
                                                                      goto LABEL_1091;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v805 = v297;
                                                                      goto LABEL_345;
                                                                    }

                                                                    if (errorCopy)
                                                                    {
                                                                      v310 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v311 = *MEMORY[0x1E698F240];
                                                                      v1084 = *MEMORY[0x1E696A578];
                                                                      v803 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionViewContainerName"];
                                                                      v1085 = v803;
                                                                      v312 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1085 forKeys:&v1084 count:1];
                                                                      v313 = v310;
                                                                      v29 = v886;
                                                                      v804 = v312;
                                                                      v805 = 0;
                                                                      v873 = 0;
                                                                      *errorCopy = [v313 initWithDomain:v311 code:2 userInfo:?];
                                                                      goto LABEL_464;
                                                                    }

                                                                    v805 = 0;
                                                                    v873 = 0;
LABEL_435:
                                                                    v59 = v875;
                                                                    v60 = v871;
                                                                    v61 = v869;
                                                                    v98 = v858;
                                                                    v284 = v808;
                                                                    v16 = v885;
                                                                    goto LABEL_1092;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v807 = v295;
                                                                    goto LABEL_342;
                                                                  }

                                                                  if (errorCopy)
                                                                  {
                                                                    v302 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v303 = *MEMORY[0x1E698F240];
                                                                    v1086 = *MEMORY[0x1E696A578];
                                                                    v805 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionClientIdentifier"];
                                                                    v1087 = v805;
                                                                    v304 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1087 forKeys:&v1086 count:1];
                                                                    v305 = v302;
                                                                    v29 = v886;
                                                                    v806 = v304;
                                                                    v807 = 0;
                                                                    v873 = 0;
                                                                    *errorCopy = [v305 initWithDomain:v303 code:2 userInfo:?];
                                                                    goto LABEL_435;
                                                                  }

                                                                  v807 = 0;
                                                                  v873 = 0;
                                                                  v59 = v875;
                                                                  v60 = v871;
LABEL_467:
                                                                  v61 = v869;
                                                                  v98 = v858;
                                                                  v284 = v808;
                                                                  v16 = v885;
                                                                  goto LABEL_1093;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v288 = v287;
                                                                  v289 = objc_alloc(MEMORY[0x1E695DF00]);
                                                                  [v288 doubleValue];
                                                                  v290 = v289;
                                                                  v29 = v886;
                                                                  v810 = [v290 initWithTimeIntervalSince1970:?];
LABEL_338:

                                                                  goto LABEL_339;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v291 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                                                  v292 = v287;
                                                                  v288 = v291;
                                                                  v293 = v292;
                                                                  v810 = [v288 dateFromString:v293];

                                                                  v29 = v886;
                                                                  goto LABEL_338;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v810 = v287;
                                                                  goto LABEL_339;
                                                                }

                                                                if (errorCopy)
                                                                {
                                                                  v375 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v376 = *MEMORY[0x1E698F240];
                                                                  v1088 = *MEMORY[0x1E696A578];
                                                                  v807 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"suggestionTimestamp"];
                                                                  v1089 = v807;
                                                                  v809 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1089 forKeys:&v1088 count:1];
                                                                  v810 = 0;
                                                                  v873 = 0;
                                                                  *errorCopy = [v375 initWithDomain:v376 code:2 userInfo:?];
                                                                  v59 = v875;
                                                                  v60 = v871;
                                                                  v29 = v886;
                                                                  goto LABEL_467;
                                                                }

                                                                v810 = 0;
                                                                v873 = 0;
                                                                v59 = v875;
                                                                v60 = v871;
                                                                v29 = v886;
                                                                v61 = v869;
                                                                v98 = v858;
                                                                v284 = v808;
LABEL_564:
                                                                v16 = v885;
                                                                goto LABEL_1094;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v808 = v272;
LABEL_328:

                                                                v29 = v886;
                                                                goto LABEL_329;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v285 = v272;
                                                                v808 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataSuggestionTypeFromString(v285)];

                                                                goto LABEL_328;
                                                              }

                                                              if (errorCopy)
                                                              {
                                                                v328 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v329 = *MEMORY[0x1E698F240];
                                                                v1090 = *MEMORY[0x1E696A578];
                                                                v810 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"suggestionType"];
                                                                v1091 = v810;
                                                                v330 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1091 forKeys:&v1090 count:1];
                                                                v331 = v329;
                                                                v98 = v858;
                                                                v811 = v330;
                                                                v332 = [v328 initWithDomain:v331 code:2 userInfo:?];
                                                                v284 = 0;
                                                                v873 = 0;
                                                                *errorCopy = v332;
                                                                v59 = v875;
                                                                v60 = v871;
                                                                v29 = v886;
                                                                v61 = v869;
                                                                goto LABEL_564;
                                                              }

                                                              v284 = 0;
                                                              v873 = 0;
                                                              v59 = v875;
                                                              v60 = v871;
                                                              v29 = v886;
LABEL_479:
                                                              v61 = v869;
                                                              v16 = v885;
                                                              goto LABEL_1095;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v814 = v270;
                                                              goto LABEL_309;
                                                            }

                                                            if (errorCopy)
                                                            {
                                                              v278 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v279 = *MEMORY[0x1E698F240];
                                                              v1092 = *MEMORY[0x1E696A578];
                                                              v280 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rankingVersion"];
                                                              v1093 = v280;
                                                              v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1093 forKeys:&v1092 count:1];
                                                              v282 = v278;
                                                              v29 = v886;
                                                              v283 = v279;
                                                              v284 = v280;
                                                              v98 = v858;
                                                              v812 = v281;
                                                              v814 = 0;
                                                              v873 = 0;
                                                              *errorCopy = [v282 initWithDomain:v283 code:2 userInfo:?];
                                                              v59 = v875;
                                                              v60 = v871;
                                                              goto LABEL_479;
                                                            }

                                                            v814 = 0;
                                                            v873 = 0;
                                                            v59 = v875;
                                                            v60 = v871;
                                                            v61 = v869;
                                                            v277 = v813;
LABEL_394:
                                                            v16 = v885;
                                                            goto LABEL_1096;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v816 = v268;
                                                            goto LABEL_306;
                                                          }

                                                          if (errorCopy)
                                                          {
                                                            v273 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v274 = *MEMORY[0x1E698F240];
                                                            v1094 = *MEMORY[0x1E696A578];
                                                            v814 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleVersion"];
                                                            v1095 = v814;
                                                            v275 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1095 forKeys:&v1094 count:1];
                                                            v276 = v273;
                                                            v29 = v886;
                                                            v98 = v858;
                                                            v816 = 0;
                                                            v873 = 0;
                                                            *errorCopy = [v276 initWithDomain:v274 code:2 userInfo:v275];
                                                            v277 = v275;
                                                            v59 = v875;
                                                            v60 = v871;
                                                            v61 = v869;
                                                            goto LABEL_394;
                                                          }

                                                          v816 = 0;
                                                          v873 = 0;
                                                          v59 = v875;
                                                          v60 = v871;
LABEL_386:
                                                          v61 = v869;
                                                          v16 = v885;
                                                          goto LABEL_1097;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v817 = v234;
LABEL_302:

                                                          v29 = v886;
                                                          goto LABEL_303;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v266 = v234;
                                                          v817 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataBundleEngagementTypeFromString(v266)];

                                                          goto LABEL_302;
                                                        }

                                                        if (errorCopy)
                                                        {
                                                          v306 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v307 = *MEMORY[0x1E698F240];
                                                          v1096 = *MEMORY[0x1E696A578];
                                                          v816 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundlEngagement"];
                                                          v1097 = v816;
                                                          v308 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1097 forKeys:&v1096 count:1];
                                                          v309 = v306;
                                                          v98 = v858;
                                                          v815 = v308;
                                                          v817 = 0;
                                                          v873 = 0;
                                                          *errorCopy = [v309 initWithDomain:v307 code:2 userInfo:v308];
                                                          v59 = v875;
                                                          v60 = v871;
                                                          v29 = v886;
                                                          goto LABEL_386;
                                                        }

                                                        v817 = 0;
                                                        v873 = 0;
                                                        v59 = v875;
                                                        v60 = v871;
                                                        v29 = v886;
LABEL_433:
                                                        v61 = v869;
                                                        v16 = v885;
                                                        goto LABEL_1098;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v819 = v232;
                                                        goto LABEL_266;
                                                      }

                                                      if (errorCopy)
                                                      {
                                                        v261 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v262 = *MEMORY[0x1E698F240];
                                                        v1098 = *MEMORY[0x1E696A578];
                                                        v817 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBundleResourceTypeInterenceTagIncluded"];
                                                        v1099 = v817;
                                                        v263 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1099 forKeys:&v1098 count:1];
                                                        v264 = v261;
                                                        v29 = v886;
                                                        v265 = v262;
                                                        v98 = v858;
                                                        v818 = v263;
                                                        v819 = 0;
                                                        v873 = 0;
                                                        *errorCopy = [v264 initWithDomain:v265 code:2 userInfo:?];
                                                        v59 = v875;
                                                        v60 = v871;
                                                        goto LABEL_433;
                                                      }

                                                      v819 = 0;
                                                      v873 = 0;
LABEL_369:
                                                      v59 = v875;
                                                      v60 = v871;
                                                      v61 = v869;
                                                      v16 = v885;
                                                      goto LABEL_1099;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v821 = v230;
                                                      goto LABEL_263;
                                                    }

                                                    if (errorCopy)
                                                    {
                                                      v256 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v257 = *MEMORY[0x1E698F240];
                                                      v1100 = *MEMORY[0x1E696A578];
                                                      v819 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBundleResourceTypeWebLinkIncluded"];
                                                      v1101 = v819;
                                                      v258 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1101 forKeys:&v1100 count:1];
                                                      v259 = v256;
                                                      v29 = v886;
                                                      v260 = v257;
                                                      v98 = v858;
                                                      v820 = v258;
                                                      v821 = 0;
                                                      v873 = 0;
                                                      *errorCopy = [v259 initWithDomain:v260 code:2 userInfo:?];
                                                      goto LABEL_369;
                                                    }

                                                    v821 = 0;
                                                    v873 = 0;
LABEL_363:
                                                    v59 = v875;
                                                    v60 = v871;
                                                    v61 = v869;
                                                    v16 = v885;
                                                    goto LABEL_1100;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v823 = v228;
                                                    goto LABEL_260;
                                                  }

                                                  if (errorCopy)
                                                  {
                                                    v248 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v249 = *MEMORY[0x1E698F240];
                                                    v1102 = *MEMORY[0x1E696A578];
                                                    v821 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBundleResourceTypeMediaIncluded"];
                                                    v1103 = v821;
                                                    v250 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1103 forKeys:&v1102 count:1];
                                                    v251 = v248;
                                                    v29 = v886;
                                                    v98 = v858;
                                                    v822 = v250;
                                                    v823 = 0;
                                                    v873 = 0;
                                                    *errorCopy = [v251 initWithDomain:v249 code:2 userInfo:?];
                                                    goto LABEL_363;
                                                  }

                                                  v823 = 0;
                                                  v873 = 0;
LABEL_335:
                                                  v59 = v875;
                                                  v60 = v871;
                                                  v61 = v869;
                                                  v16 = v885;
                                                  goto LABEL_1101;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v825 = v226;
                                                  goto LABEL_257;
                                                }

                                                if (errorCopy)
                                                {
                                                  v244 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v245 = *MEMORY[0x1E698F240];
                                                  v1104 = *MEMORY[0x1E696A578];
                                                  v823 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBundleResourceTypePhotoAssetsIncluded"];
                                                  v1105 = v823;
                                                  v246 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1105 forKeys:&v1104 count:1];
                                                  v247 = v244;
                                                  v29 = v886;
                                                  v98 = v858;
                                                  v824 = v246;
                                                  v825 = 0;
                                                  v873 = 0;
                                                  *errorCopy = [v247 initWithDomain:v245 code:2 userInfo:?];
                                                  goto LABEL_335;
                                                }

                                                v825 = 0;
                                                v873 = 0;
LABEL_325:
                                                v59 = v875;
                                                v60 = v871;
                                                v61 = v869;
                                                v16 = v885;
                                                goto LABEL_1102;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v827 = v224;
                                                goto LABEL_254;
                                              }

                                              if (errorCopy)
                                              {
                                                v240 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v241 = *MEMORY[0x1E698F240];
                                                v1106 = *MEMORY[0x1E696A578];
                                                v825 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBundleResourceTypeValueIncluded"];
                                                v1107 = v825;
                                                v242 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1107 forKeys:&v1106 count:1];
                                                v243 = v240;
                                                v29 = v886;
                                                v98 = v858;
                                                v826 = v242;
                                                v827 = 0;
                                                v873 = 0;
                                                *errorCopy = [v243 initWithDomain:v241 code:2 userInfo:?];
                                                goto LABEL_325;
                                              }

                                              v827 = 0;
                                              v873 = 0;
LABEL_321:
                                              v59 = v875;
                                              v60 = v871;
                                              v61 = v869;
                                              v16 = v885;
                                              goto LABEL_1103;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v829 = v222;
                                              goto LABEL_251;
                                            }

                                            if (errorCopy)
                                            {
                                              v235 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v236 = *MEMORY[0x1E698F240];
                                              v1108 = *MEMORY[0x1E696A578];
                                              v827 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBundleResourceTypeUnknown"];
                                              v1109 = v827;
                                              v237 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1109 forKeys:&v1108 count:1];
                                              v238 = v235;
                                              v29 = v886;
                                              v239 = v236;
                                              v98 = v858;
                                              v828 = v237;
                                              v829 = 0;
                                              v873 = 0;
                                              *errorCopy = [v238 initWithDomain:v239 code:2 userInfo:?];
                                              goto LABEL_321;
                                            }

                                            v829 = 0;
                                            v873 = 0;
                                            v59 = v875;
                                            v60 = v871;
LABEL_299:
                                            v61 = v869;
                                            v16 = v885;
                                            goto LABEL_1104;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v839 = v215;
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                            {
                                              if (!errorCopy)
                                              {
                                                v839 = 0;
                                                v873 = 0;
                                                v59 = v875;
                                                v60 = v871;
                                                v29 = v886;
                                                v61 = v869;
                                                v16 = v885;
                                                goto LABEL_1105;
                                              }

                                              v252 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v253 = *MEMORY[0x1E698F240];
                                              v1110 = *MEMORY[0x1E696A578];
                                              v829 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleTimeTag"];
                                              v1111 = v829;
                                              v254 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1111 forKeys:&v1110 count:1];
                                              v255 = v252;
                                              v98 = v858;
                                              v830 = v254;
                                              v839 = 0;
                                              v873 = 0;
                                              *errorCopy = [v255 initWithDomain:v253 code:2 userInfo:v254];
                                              v59 = v875;
                                              v60 = v871;
                                              v29 = v886;
                                              goto LABEL_299;
                                            }

                                            v220 = v215;
                                            v839 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataTimeTagTypeFromString(v220)];
                                          }

                                          v29 = v886;
                                          goto LABEL_248;
                                        }
                                      }
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v182 = v153;
                                      v183 = [BMMomentsEventDataAction alloc];
                                      v930 = 0;
                                      v840 = [(BMMomentsEventDataAction *)v183 initWithJSONDictionary:v182 error:&v930];
                                      v184 = v930;
                                      if (!v184)
                                      {

                                        v98 = v858;
                                        goto LABEL_163;
                                      }

                                      v843 = v182;
                                      if (errorCopy)
                                      {
                                        v184 = v184;
                                        *errorCopy = v184;
                                      }

                                      v873 = 0;
                                      v841 = v182;
                                    }

                                    else
                                    {
                                      if (!errorCopy)
                                      {
                                        v873 = 0;
                                        v16 = v885;
                                        v59 = v875;
                                        v60 = v871;
                                        v61 = v869;
                                        v98 = v858;
                                        v164 = v841;
                                        v36 = v844;
                                        goto LABEL_1110;
                                      }

                                      v197 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v198 = *MEMORY[0x1E698F240];
                                      v1121 = *MEMORY[0x1E696A578];
                                      v840 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"bundleActionType"];
                                      v1122 = v840;
                                      v199 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1122 forKeys:&v1121 count:1];
                                      v200 = v197;
                                      v29 = v886;
                                      v843 = v199;
                                      v873 = 0;
                                      *errorCopy = [v200 initWithDomain:v198 code:2 userInfo:?];
                                    }

                                    v16 = v885;
                                    v59 = v875;
                                    v60 = v871;
                                    v61 = v869;
                                    v98 = v858;
                                    v36 = v844;
                                    goto LABEL_1109;
                                  }

                                  v844 = v36;
                                }

                                v29 = v886;
                                goto LABEL_151;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v127 = v126;
LABEL_134:
                                v849 = v127;

                                goto LABEL_135;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v139 = v126;
                                v127 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeFromString(v139)];

                                goto LABEL_134;
                              }

                              if (errorCopy)
                              {
                                v190 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v191 = *MEMORY[0x1E698F240];
                                v1132 = *MEMORY[0x1E696A578];
                                v834 = v39;
                                v192 = dictionaryCopy;
                                v193 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v656 = objc_opt_class();
                                v194 = v193;
                                dictionaryCopy = v192;
                                v39 = v834;
                                error = v866;
                                v845 = [v194 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v656, @"bundlePlaceUserType"];
                                v1133 = v845;
                                v847 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1133 forKeys:&v1132 count:1];
                                v849 = 0;
                                v873 = 0;
                                *errorCopy = [v190 initWithDomain:v191 code:2 userInfo:?];
                                v59 = v875;
                                v60 = v871;
                                v29 = v886;
                                v61 = v869;
                                v98 = v858;
                                v16 = v885;
                                goto LABEL_1114;
                              }

                              v849 = 0;
                              v873 = 0;
                              v59 = v875;
                              v60 = v871;
                              v29 = v886;
                              v61 = v869;
                              v98 = v858;
                              v16 = v885;
                              error = v866;
LABEL_1115:

                              goto LABEL_1116;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v124 = v53;
                              v851 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPlaceInferencePlaceTypeFromString(v124)];

                              goto LABEL_122;
                            }

                            if (errorCopy)
                            {
                              v185 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v186 = *MEMORY[0x1E698F240];
                              v1134 = *MEMORY[0x1E696A578];
                              v833 = v39;
                              v187 = dictionaryCopy;
                              v188 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v655 = objc_opt_class();
                              v189 = v188;
                              dictionaryCopy = v187;
                              v39 = v833;
                              error = v866;
                              v849 = [v189 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v655, @"bundlePlaceType"];
                              v1135 = v849;
                              v848 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1135 forKeys:&v1134 count:1];
                              v851 = 0;
                              v873 = 0;
                              *errorCopy = [v185 initWithDomain:v186 code:2 userInfo:?];
                              v59 = v875;
                              v60 = v871;
                              v29 = v886;
                              v61 = v869;
                              v98 = v858;
                              v16 = v885;
                              goto LABEL_1115;
                            }

                            v851 = 0;
                            v873 = 0;
                            v59 = v875;
                            v60 = v871;
                            v29 = v886;
                            v61 = v869;
                            v98 = v858;
                            v16 = v885;
                            error = v866;
LABEL_1116:

                            goto LABEL_1117;
                          }

                          if (errorCopy)
                          {
                            v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v108 = *MEMORY[0x1E698F240];
                            v1136 = *MEMORY[0x1E696A578];
                            v109 = v39;
                            v110 = dictionaryCopy;
                            v111 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v654 = objc_opt_class();
                            v112 = v111;
                            dictionaryCopy = v110;
                            v39 = v109;
                            error = v866;
                            v851 = [v112 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v654, @"bundlePromptParametersAvailability"];
                            v1137 = v851;
                            v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1137 forKeys:&v1136 count:1];
                            v114 = v107;
                            v29 = v886;
                            v850 = v113;
                            v853 = 0;
                            v873 = 0;
                            *errorCopy = [v114 initWithDomain:v108 code:2 userInfo:?];
                            v59 = v875;
                            v60 = v871;
                            v61 = v869;
                            v98 = v858;
                            v16 = v885;
                            goto LABEL_1116;
                          }

                          v853 = 0;
                          v873 = 0;
                          v59 = v875;
                          v60 = v871;
                          v61 = v869;
                          v98 = v858;
                          v16 = v885;
                          error = v866;
LABEL_1117:

                          goto LABEL_1118;
                        }

                        if (errorCopy)
                        {
                          v100 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v880 = *MEMORY[0x1E698F240];
                          v1138 = *MEMORY[0x1E696A578];
                          v101 = v39;
                          v102 = dictionaryCopy;
                          v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v98 = v858;
                          v653 = objc_opt_class();
                          v104 = v103;
                          dictionaryCopy = v102;
                          v39 = v101;
                          error = v866;
                          v853 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v653, @"bundlePromptToneID"];
                          v1139 = v853;
                          v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1139 forKeys:&v1138 count:1];
                          v106 = v100;
                          v29 = v886;
                          v852 = v105;
                          v855 = 0;
                          v873 = 0;
                          *errorCopy = [v106 initWithDomain:v880 code:2 userInfo:?];
                          v59 = v875;
                          v60 = v871;
                          v61 = v869;
                          v16 = v885;
                          goto LABEL_1117;
                        }

                        v855 = 0;
                        v873 = 0;
                        v59 = v875;
                        v60 = v871;
                        v61 = v869;
                        v98 = v858;
                        v16 = v885;
                        error = v866;
LABEL_1118:

                        v10 = v854;
                        goto LABEL_1119;
                      }

                      if (error)
                      {
                        v92 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v93 = *MEMORY[0x1E698F240];
                        v1140 = *MEMORY[0x1E696A578];
                        v94 = v39;
                        v95 = dictionaryCopy;
                        v96 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v652 = objc_opt_class();
                        v97 = v96;
                        dictionaryCopy = v95;
                        v39 = v94;
                        error = v866;
                        v855 = [v97 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v652, @"bundlePromptLanguageFormat"];
                        v1141 = v855;
                        v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1141 forKeys:&v1140 count:1];
                        v99 = v92;
                        v29 = v886;
                        v859 = 0;
                        v873 = 0;
                        *errorCopy = [v99 initWithDomain:v93 code:2 userInfo:v98];
                        v59 = v875;
                        v60 = v871;
                        v61 = v869;
                        v16 = v885;
                        goto LABEL_1118;
                      }

                      v859 = 0;
                      v873 = 0;
                      v59 = v875;
                      v60 = v871;
                      v61 = v869;
                      v16 = v885;
                      error = v866;
LABEL_1119:

                      goto LABEL_1120;
                    }

                    if (error)
                    {
                      v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v879 = *MEMORY[0x1E698F240];
                      v1142 = *MEMORY[0x1E696A578];
                      errorCopy2 = error;
                      v80 = v39;
                      v81 = dictionaryCopy;
                      v82 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v650 = objc_opt_class();
                      v83 = v82;
                      dictionaryCopy = v81;
                      v39 = v80;
                      error = v866;
                      v859 = [v83 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v650, @"bundleSourceRoutineExists"];
                      v1143 = v859;
                      v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1143 forKeys:&v1142 count:1];
                      v85 = v78;
                      v29 = v886;
                      v860 = v84;
                      v861 = 0;
                      v873 = 0;
                      *errorCopy2 = [v85 initWithDomain:v879 code:2 userInfo:?];
                      v59 = v875;
                      v60 = v871;
                      v61 = v869;
                      v16 = v885;
                      goto LABEL_1119;
                    }

                    v861 = 0;
                    v873 = 0;
                    v59 = v875;
                    v60 = v871;
                    v61 = v869;
                    v16 = v885;
                    error = v866;
LABEL_1120:

                    goto LABEL_1121;
                  }

                  if (error)
                  {
                    v70 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v878 = *MEMORY[0x1E698F240];
                    v1144 = *MEMORY[0x1E696A578];
                    errorCopy3 = error;
                    v72 = v39;
                    v73 = dictionaryCopy;
                    v74 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v649 = objc_opt_class();
                    v75 = v74;
                    dictionaryCopy = v73;
                    v39 = v72;
                    error = v866;
                    v861 = [v75 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v649, @"bundleSourceProactiveExists"];
                    v1145 = v861;
                    v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1145 forKeys:&v1144 count:1];
                    v77 = v70;
                    v29 = v886;
                    v862 = v76;
                    v864 = 0;
                    v873 = 0;
                    *errorCopy3 = [v77 initWithDomain:v878 code:2 userInfo:?];
                    v59 = v875;
                    v60 = v871;
                    v61 = v869;
                    v16 = v885;
                    goto LABEL_1120;
                  }

                  v864 = 0;
                  v873 = 0;
                  v59 = v875;
                  v60 = v871;
                  v61 = v869;
                  v16 = v885;
                  error = v866;
LABEL_1121:

                  goto LABEL_1122;
                }

                if (error)
                {
                  v62 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v877 = *MEMORY[0x1E698F240];
                  v1146 = *MEMORY[0x1E696A578];
                  errorCopy4 = error;
                  v64 = v39;
                  v65 = dictionaryCopy;
                  v66 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v648 = objc_opt_class();
                  v67 = v66;
                  dictionaryCopy = v65;
                  v39 = v64;
                  error = v866;
                  v864 = [v67 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v648, @"bundleSourcePhotoExists"];
                  v1147 = v864;
                  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1147 forKeys:&v1146 count:1];
                  v69 = v62;
                  v29 = v886;
                  v865 = v68;
                  v867 = 0;
                  v873 = 0;
                  *errorCopy4 = [v69 initWithDomain:v877 code:2 userInfo:?];
                  v59 = v875;
                  v60 = v871;
                  v61 = v869;
                  v16 = v885;
                  goto LABEL_1121;
                }

                v867 = 0;
                v873 = 0;
                v59 = v875;
                v60 = v871;
                v61 = v869;
                v16 = v885;
                error = v866;
LABEL_1122:

                goto LABEL_1123;
              }

              if (error)
              {
                v876 = objc_alloc(MEMORY[0x1E696ABC0]);
                v54 = *MEMORY[0x1E698F240];
                v1148 = *MEMORY[0x1E696A578];
                errorCopy5 = error;
                v56 = dictionaryCopy;
                v57 = objc_alloc(MEMORY[0x1E696AEC0]);
                v647 = objc_opt_class();
                v58 = v57;
                dictionaryCopy = v56;
                v867 = [v58 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v647, @"bundleSourceHealthExists"];
                v1149 = v867;
                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1149 forKeys:&v1148 count:1];
                v868 = v29 = v886;
                error = 0;
                v873 = 0;
                *errorCopy5 = [v876 initWithDomain:v54 code:2 userInfo:?];
                v59 = v875;
                v60 = v871;
                v61 = v869;
                v16 = v885;
                goto LABEL_1122;
              }

              v873 = 0;
              v59 = v875;
              v60 = v871;
LABEL_112:
              v61 = v869;
              v16 = v885;
LABEL_1123:

              v9 = v882;
              goto LABEL_1124;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = v35;
              v38 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataBundleInterfaceTypeFromString(v37)];

              v36 = v38;
              goto LABEL_47;
            }

            if (error)
            {
              v86 = objc_alloc(MEMORY[0x1E696ABC0]);
              v87 = *MEMORY[0x1E698F240];
              v1150 = *MEMORY[0x1E696A578];
              v88 = dictionaryCopy;
              v89 = objc_alloc(MEMORY[0x1E696AEC0]);
              v651 = objc_opt_class();
              v90 = v89;
              dictionaryCopy = v88;
              v91 = [v90 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v651, @"bundleInterfaceType"];
              v1151 = v91;
              v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1151 forKeys:&v1150 count:1];
              v36 = 0;
              v873 = 0;
              *error = [v86 initWithDomain:v87 code:2 userInfo:v39];
              error = v91;
              v59 = v875;
              v60 = v871;
              v29 = v886;
              goto LABEL_112;
            }

            v873 = 0;
            v59 = v875;
            v60 = v871;
            v29 = v886;
            v61 = v869;
            v36 = 0;
LABEL_175:
            v16 = v885;
LABEL_1124:

            self = selfCopy;
            goto LABEL_1125;
          }

          if (error)
          {
            v134 = objc_alloc(MEMORY[0x1E696ABC0]);
            v135 = *MEMORY[0x1E698F240];
            v1152 = *MEMORY[0x1E696A578];
            v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"bundleExpirationDate"];
            v1153 = v36;
            v136 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1153 forKeys:&v1152 count:1];
            v137 = v134;
            v29 = v886;
            v872 = v136;
            v138 = [v137 initWithDomain:v135 code:2 userInfo:?];
            v61 = 0;
            v873 = 0;
            *error = v138;
            v59 = v875;
            v60 = v871;
            goto LABEL_175;
          }

          v61 = 0;
          v873 = 0;
          v59 = v875;
          v60 = v871;
LABEL_211:
          v16 = v885;
LABEL_1125:

          v17 = v873;
          goto LABEL_1126;
        }

        if (error)
        {
          v128 = objc_alloc(MEMORY[0x1E696ABC0]);
          selfCopy2 = self;
          v130 = *MEMORY[0x1E698F240];
          v1154 = *MEMORY[0x1E696A578];
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"bundleCreationDate"];
          v1155 = v61;
          v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1155 forKeys:&v1154 count:1];
          v132 = v128;
          v29 = v131;
          v133 = v130;
          self = selfCopy2;
          v9 = v882;
          v60 = 0;
          v873 = 0;
          *error = [v132 initWithDomain:v133 code:2 userInfo:v131];
          v59 = v875;
          goto LABEL_211;
        }

        v60 = 0;
        v17 = 0;
        v59 = v875;
LABEL_209:
        v16 = v885;
LABEL_1126:

        v20 = v883;
        goto LABEL_1127;
      }

      if (error)
      {
        v887 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy3 = self;
        v121 = *MEMORY[0x1E698F240];
        v1156 = *MEMORY[0x1E696A578];
        v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"bundleEndDate"];
        v1157 = v60;
        v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1157 forKeys:&v1156 count:1];
        v123 = v121;
        self = selfCopy3;
        v884 = v122;
        v59 = 0;
        v17 = 0;
        *error = [v887 initWithDomain:v123 code:2 userInfo:?];
        goto LABEL_209;
      }

      v59 = 0;
      v17 = 0;
LABEL_207:
      v16 = v885;
LABEL_1127:

      goto LABEL_1128;
    }

    if (error)
    {
      v115 = objc_alloc(MEMORY[0x1E696ABC0]);
      v116 = *MEMORY[0x1E698F240];
      v1158 = *MEMORY[0x1E696A578];
      v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"bundleStartDate"];
      v1159 = v59;
      v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1159 forKeys:&v1158 count:1];
      v118 = v116;
      v20 = v117;
      v119 = [v115 initWithDomain:v118 code:2 userInfo:v117];
      v10 = 0;
      v17 = 0;
      *error = v119;
      goto LABEL_207;
    }

    v10 = 0;
    v17 = 0;
    v16 = v885;
LABEL_1128:

    v8 = v888;
    goto LABEL_1129;
  }

  if (error)
  {
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E698F240];
    v1160 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleIdentifier"];
    v1161[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v1161 forKeys:&v1160 count:1];
    v15 = [v13 initWithDomain:v14 code:2 userInfo:v9];
    v16 = 0;
    v17 = 0;
    *error = v15;
    goto LABEL_1128;
  }

  v16 = 0;
  v17 = 0;
LABEL_1129:

  v619 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventDataEventBundle *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v175 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_bundleStartDate)
  {
    raw_bundleStartDate = self->_raw_bundleStartDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_bundleEndDate)
  {
    raw_bundleEndDate = self->_raw_bundleEndDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_bundleCreationDate)
  {
    raw_bundleCreationDate = self->_raw_bundleCreationDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_bundleExpirationDate)
  {
    raw_bundleExpirationDate = self->_raw_bundleExpirationDate;
    PBDataWriterWriteDoubleField();
  }

  bundleInterfaceType = self->_bundleInterfaceType;
  PBDataWriterWriteUint32Field();
  if (self->_hasBundleSourceHealthExists)
  {
    bundleSourceHealthExists = self->_bundleSourceHealthExists;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasBundleSourcePhotoExists)
  {
    bundleSourcePhotoExists = self->_bundleSourcePhotoExists;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasBundleSourceProactiveExists)
  {
    bundleSourceProactiveExists = self->_bundleSourceProactiveExists;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasBundleSourceRoutineExists)
  {
    bundleSourceRoutineExists = self->_bundleSourceRoutineExists;
    PBDataWriterWriteBOOLField();
  }

  if (self->_bundlePromptLanguageFormat)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundlePromptToneID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasBundlePromptParametersAvailability)
  {
    bundlePromptParametersAvailability = self->_bundlePromptParametersAvailability;
    PBDataWriterWriteBOOLField();
  }

  bundlePlaceType = self->_bundlePlaceType;
  PBDataWriterWriteUint32Field();
  bundlePlaceUserType = self->_bundlePlaceUserType;
  PBDataWriterWriteUint32Field();
  bundleBaseEventCateory = self->_bundleBaseEventCateory;
  PBDataWriterWriteUint32Field();
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v18 = self->_bundleEventIDs;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v162 objects:v174 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v163;
    do
    {
      v22 = 0;
      do
      {
        if (*v163 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v162 + 1) + 8 * v22);
        PBDataWriterWriteStringField();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v162 objects:v174 count:16];
    }

    while (v20);
  }

  if (self->_bundleActionType)
  {
    v161 = 0;
    PBDataWriterPlaceMark();
    [(BMMomentsEventDataAction *)self->_bundleActionType writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v24 = self->_backgroundActions;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v157 objects:v173 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v158;
    do
    {
      v28 = 0;
      do
      {
        if (*v158 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v157 + 1) + 8 * v28);
        v161 = 0;
        PBDataWriterPlaceMark();
        [v29 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v157 objects:v173 count:16];
    }

    while (v26);
  }

  if (self->_hasBundleIsFamilyIncluded)
  {
    bundleIsFamilyIncluded = self->_bundleIsFamilyIncluded;
    PBDataWriterWriteBOOLField();
  }

  bundleTimeTag = self->_bundleTimeTag;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsBundleResourceTypeUnknown)
  {
    isBundleResourceTypeUnknown = self->_isBundleResourceTypeUnknown;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBundleResourceTypeValueIncluded)
  {
    isBundleResourceTypeValueIncluded = self->_isBundleResourceTypeValueIncluded;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBundleResourceTypePhotoAssetsIncluded)
  {
    isBundleResourceTypePhotoAssetsIncluded = self->_isBundleResourceTypePhotoAssetsIncluded;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBundleResourceTypeMediaIncluded)
  {
    isBundleResourceTypeMediaIncluded = self->_isBundleResourceTypeMediaIncluded;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBundleResourceTypeWebLinkIncluded)
  {
    isBundleResourceTypeWebLinkIncluded = self->_isBundleResourceTypeWebLinkIncluded;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBundleResourceTypeInterenceTagIncluded)
  {
    isBundleResourceTypeInterenceTagIncluded = self->_isBundleResourceTypeInterenceTagIncluded;
    PBDataWriterWriteBOOLField();
  }

  bundlEngagement = self->_bundlEngagement;
  PBDataWriterWriteUint32Field();
  if (self->_hasBundleVersion)
  {
    bundleVersion = self->_bundleVersion;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRankingVersion)
  {
    rankingVersion = self->_rankingVersion;
    PBDataWriterWriteDoubleField();
  }

  suggestionType = self->_suggestionType;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_suggestionTimestamp)
  {
    raw_suggestionTimestamp = self->_raw_suggestionTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_suggestionClientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_suggestionViewContainerName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasSuggestionViewVisibleTime)
  {
    suggestionViewVisibleTime = self->_suggestionViewVisibleTime;
    PBDataWriterWriteFloatField();
  }

  appEntryEventType = self->_appEntryEventType;
  PBDataWriterWriteUint32Field();
  if (self->_appEntryEventClientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_appEntryEventTimestamp)
  {
    raw_appEntryEventTimestamp = self->_raw_appEntryEventTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_appEntryEventStartTime)
  {
    raw_appEntryEventStartTime = self->_raw_appEntryEventStartTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_appEntryEventEndTime)
  {
    raw_appEntryEventEndTime = self->_raw_appEntryEventEndTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasAppEntryEventTotalCharacters)
  {
    appEntryEventTotalCharacters = self->_appEntryEventTotalCharacters;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAppEntryEventAddedCharacters)
  {
    appEntryEventAddedCharacters = self->_appEntryEventAddedCharacters;
    PBDataWriterWriteInt32Field();
  }

  clientActivityEventType = self->_clientActivityEventType;
  PBDataWriterWriteUint32Field();
  if (self->_clientActivityEventClientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_clientActivityEventTimestamp)
  {
    raw_clientActivityEventTimestamp = self->_raw_clientActivityEventTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_suggestionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  photoSourceType = self->_photoSourceType;
  PBDataWriterWriteUint32Field();
  photoLibraryType = self->_photoLibraryType;
  PBDataWriterWriteUint32Field();
  if (self->_hasBundleSourcePostAnalyticsExists)
  {
    bundleSourcePostAnalyticsExists = self->_bundleSourcePostAnalyticsExists;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasBundleSourcePDExists)
  {
    bundleSourcePDExists = self->_bundleSourcePDExists;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasBundleSourceMotionExists)
  {
    bundleSourceMotionExists = self->_bundleSourceMotionExists;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasBundleSourceBooksExists)
  {
    bundleSourceBooksExists = self->_bundleSourceBooksExists;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasBundleSourceScreenTimeExists)
  {
    bundleSourceScreenTimeExists = self->_bundleSourceScreenTimeExists;
    PBDataWriterWriteBOOLField();
  }

  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v59 = self->_gaPRArray;
  v60 = [(NSArray *)v59 countByEnumeratingWithState:&v153 objects:v172 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v154;
    do
    {
      v63 = 0;
      do
      {
        if (*v154 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v153 + 1) + 8 * v63);
        v161 = 0;
        PBDataWriterPlaceMark();
        [v64 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v63;
      }

      while (v61 != v63);
      v61 = [(NSArray *)v59 countByEnumeratingWithState:&v153 objects:v172 count:16];
    }

    while (v61);
  }

  if (self->_hasBundlePCount)
  {
    bundlePCount = self->_bundlePCount;
    PBDataWriterWriteInt32Field();
  }

  ranking = self->_ranking;
  PBDataWriterWriteUint32Field();
  labelConfidenceScore = self->_labelConfidenceScore;
  PBDataWriterWriteUint32Field();
  timeCorrelationScore = self->_timeCorrelationScore;
  PBDataWriterWriteUint32Field();
  callDuration = self->_callDuration;
  PBDataWriterWriteUint32Field();
  interactionCount = self->_interactionCount;
  PBDataWriterWriteUint32Field();
  interactionType = self->_interactionType;
  PBDataWriterWriteUint32Field();
  callPlace = self->_callPlace;
  PBDataWriterWriteUint32Field();
  distanceFromHome = self->_distanceFromHome;
  PBDataWriterWriteUint32Field();
  homeAvailability = self->_homeAvailability;
  PBDataWriterWriteUint32Field();
  workAvailability = self->_workAvailability;
  PBDataWriterWriteUint32Field();
  bundleVisitMapItemSource = self->_bundleVisitMapItemSource;
  PBDataWriterWriteUint32Field();
  bundleVisitPlaceType = self->_bundleVisitPlaceType;
  PBDataWriterWriteUint32Field();
  bundleVisitPlaceLabelGranularity = self->_bundleVisitPlaceLabelGranularity;
  PBDataWriterWriteUint32Field();
  bundleIncludesAnomalousEvent = self->_bundleIncludesAnomalousEvent;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsFiltered)
  {
    isFiltered = self->_isFiltered;
    PBDataWriterWriteBOOLField();
  }

  bundleSuperType = self->_bundleSuperType;
  PBDataWriterWriteUint32Field();
  bundleSubType = self->_bundleSubType;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsAggregatedAndSuppressed)
  {
    isAggregatedAndSuppressed = self->_isAggregatedAndSuppressed;
    PBDataWriterWriteBOOLField();
  }

  summarizationGranularity = self->_summarizationGranularity;
  PBDataWriterWriteUint32Field();
  if (self->_hasIncludedInSummaryBundleOnly)
  {
    includedInSummaryBundleOnly = self->_includedInSummaryBundleOnly;
    PBDataWriterWriteBOOLField();
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v86 = self->_subBundleIDs;
  v87 = [(NSArray *)v86 countByEnumeratingWithState:&v149 objects:v171 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v150;
    do
    {
      v90 = 0;
      do
      {
        if (*v150 != v89)
        {
          objc_enumerationMutation(v86);
        }

        v91 = *(*(&v149 + 1) + 8 * v90);
        PBDataWriterWriteStringField();
        ++v90;
      }

      while (v88 != v90);
      v88 = [(NSArray *)v86 countByEnumeratingWithState:&v149 objects:v171 count:16];
    }

    while (v88);
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v92 = self->_subSuggestionIDs;
  v93 = [(NSArray *)v92 countByEnumeratingWithState:&v145 objects:v170 count:16];
  if (v93)
  {
    v94 = v93;
    v95 = *v146;
    do
    {
      v96 = 0;
      do
      {
        if (*v146 != v95)
        {
          objc_enumerationMutation(v92);
        }

        v97 = *(*(&v145 + 1) + 8 * v96);
        PBDataWriterWriteStringField();
        ++v96;
      }

      while (v94 != v96);
      v94 = [(NSArray *)v92 countByEnumeratingWithState:&v145 objects:v170 count:16];
    }

    while (v94);
  }

  if (self->_hasRaw_firstCreationDate)
  {
    raw_firstCreationDate = self->_raw_firstCreationDate;
    PBDataWriterWriteDoubleField();
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v99 = self->_resources;
  v100 = [(NSArray *)v99 countByEnumeratingWithState:&v141 objects:v169 count:16];
  if (v100)
  {
    v101 = v100;
    v102 = *v142;
    do
    {
      v103 = 0;
      do
      {
        if (*v142 != v102)
        {
          objc_enumerationMutation(v99);
        }

        v104 = *(*(&v141 + 1) + 8 * v103);
        v161 = 0;
        PBDataWriterPlaceMark();
        [v104 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v103;
      }

      while (v101 != v103);
      v101 = [(NSArray *)v99 countByEnumeratingWithState:&v141 objects:v169 count:16];
    }

    while (v101);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v105 = self->_persons;
  v106 = [(NSArray *)v105 countByEnumeratingWithState:&v137 objects:v168 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v138;
    do
    {
      v109 = 0;
      do
      {
        if (*v138 != v108)
        {
          objc_enumerationMutation(v105);
        }

        v110 = *(*(&v137 + 1) + 8 * v109);
        v161 = 0;
        PBDataWriterPlaceMark();
        [v110 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v109;
      }

      while (v107 != v109);
      v107 = [(NSArray *)v105 countByEnumeratingWithState:&v137 objects:v168 count:16];
    }

    while (v107);
  }

  if (self->_mainPlace)
  {
    v161 = 0;
    PBDataWriterPlaceMark();
    [(BMMomentsEventDataEventBundlePlace *)self->_mainPlace writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v111 = self->_otherPlaces;
  v112 = [(NSArray *)v111 countByEnumeratingWithState:&v133 objects:v167 count:16];
  if (v112)
  {
    v113 = v112;
    v114 = *v134;
    do
    {
      v115 = 0;
      do
      {
        if (*v134 != v114)
        {
          objc_enumerationMutation(v111);
        }

        v116 = *(*(&v133 + 1) + 8 * v115);
        v161 = 0;
        PBDataWriterPlaceMark();
        [v116 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v115;
      }

      while (v113 != v115);
      v113 = [(NSArray *)v111 countByEnumeratingWithState:&v133 objects:v167 count:16];
    }

    while (v113);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v117 = self->_photoTraits;
  v118 = [(NSArray *)v117 countByEnumeratingWithState:&v129 objects:v166 count:16];
  if (v118)
  {
    v119 = v118;
    v120 = *v130;
    do
    {
      v121 = 0;
      do
      {
        if (*v130 != v120)
        {
          objc_enumerationMutation(v117);
        }

        v122 = *(*(&v129 + 1) + 8 * v121);
        PBDataWriterWriteStringField();
        ++v121;
      }

      while (v119 != v121);
      v119 = [(NSArray *)v117 countByEnumeratingWithState:&v129 objects:v166 count:16];
    }

    while (v119);
  }

  if (self->_clusterMetadata)
  {
    v161 = 0;
    PBDataWriterPlaceMark();
    [(BMMomentsEventDataEventBundleClusterMetadata *)self->_clusterMetadata writeTo:toCopy, v129];
    PBDataWriterRecallMark();
  }

  if (self->_outlierMetadata)
  {
    v161 = 0;
    PBDataWriterPlaceMark();
    [(BMMomentsEventDataEventBundleOutlierMetadata *)self->_outlierMetadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasBundleGoodnessScore)
  {
    bundleGoodnessScore = self->_bundleGoodnessScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasDistinctnessScore)
  {
    distinctnessScore = self->_distinctnessScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRichnessScore)
  {
    richnessScore = self->_richnessScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasEngagementScore)
  {
    engagementScore = self->_engagementScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasHeuristicsScore)
  {
    heuristicsScore = self->_heuristicsScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_metadataForRank)
  {
    v161 = 0;
    PBDataWriterPlaceMark();
    [(BMMomentsEventDataEventBundleMetadataForRank *)self->_metadataForRank writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v128 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v9.receiver = self;
  v9.super_class = BMMomentsEventDataEventBundle;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMMomentsEventDataEventBundleReadFrom(v5, fromCopy))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v27 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleIdentifier = [(BMMomentsEventDataEventBundle *)self bundleIdentifier];
  bundleStartDate = [(BMMomentsEventDataEventBundle *)self bundleStartDate];
  bundleEndDate = [(BMMomentsEventDataEventBundle *)self bundleEndDate];
  bundleCreationDate = [(BMMomentsEventDataEventBundle *)self bundleCreationDate];
  bundleExpirationDate = [(BMMomentsEventDataEventBundle *)self bundleExpirationDate];
  v99 = BMMomentsEventDataBundleInterfaceTypeAsString([(BMMomentsEventDataEventBundle *)self bundleInterfaceType]);
  v98 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceHealthExists](self, "bundleSourceHealthExists")}];
  v97 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourcePhotoExists](self, "bundleSourcePhotoExists")}];
  v96 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceProactiveExists](self, "bundleSourceProactiveExists")}];
  v95 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceRoutineExists](self, "bundleSourceRoutineExists")}];
  bundlePromptLanguageFormat = [(BMMomentsEventDataEventBundle *)self bundlePromptLanguageFormat];
  bundlePromptToneID = [(BMMomentsEventDataEventBundle *)self bundlePromptToneID];
  v92 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundlePromptParametersAvailability](self, "bundlePromptParametersAvailability")}];
  v91 = BMMomentsEventDataPlaceInferencePlaceTypeAsString([(BMMomentsEventDataEventBundle *)self bundlePlaceType]);
  v90 = BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeAsString([(BMMomentsEventDataEventBundle *)self bundlePlaceUserType]);
  v89 = BMMomentsEventDataEventCategoryTypeAsString([(BMMomentsEventDataEventBundle *)self bundleBaseEventCateory]);
  bundleEventIDs = [(BMMomentsEventDataEventBundle *)self bundleEventIDs];
  bundleActionType = [(BMMomentsEventDataEventBundle *)self bundleActionType];
  backgroundActions = [(BMMomentsEventDataEventBundle *)self backgroundActions];
  v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleIsFamilyIncluded](self, "bundleIsFamilyIncluded")}];
  v84 = BMMomentsEventDataTimeTagTypeAsString([(BMMomentsEventDataEventBundle *)self bundleTimeTag]);
  v83 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isBundleResourceTypeUnknown](self, "isBundleResourceTypeUnknown")}];
  v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isBundleResourceTypeValueIncluded](self, "isBundleResourceTypeValueIncluded")}];
  v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isBundleResourceTypePhotoAssetsIncluded](self, "isBundleResourceTypePhotoAssetsIncluded")}];
  v80 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isBundleResourceTypeMediaIncluded](self, "isBundleResourceTypeMediaIncluded")}];
  v79 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isBundleResourceTypeWebLinkIncluded](self, "isBundleResourceTypeWebLinkIncluded")}];
  v78 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isBundleResourceTypeInterenceTagIncluded](self, "isBundleResourceTypeInterenceTagIncluded")}];
  v77 = BMMomentsEventDataBundleEngagementTypeAsString([(BMMomentsEventDataEventBundle *)self bundlEngagement]);
  v3 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundle *)self bundleVersion];
  v76 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundle *)self rankingVersion];
  v75 = [v4 numberWithDouble:?];
  v74 = BMMomentsEventDataSuggestionTypeAsString([(BMMomentsEventDataEventBundle *)self suggestionType]);
  suggestionTimestamp = [(BMMomentsEventDataEventBundle *)self suggestionTimestamp];
  suggestionClientIdentifier = [(BMMomentsEventDataEventBundle *)self suggestionClientIdentifier];
  suggestionViewContainerName = [(BMMomentsEventDataEventBundle *)self suggestionViewContainerName];
  v5 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundle *)self suggestionViewVisibleTime];
  v70 = [v5 numberWithDouble:?];
  v69 = BMMomentsEventDataAppEntryEventTypeAsString([(BMMomentsEventDataEventBundle *)self appEntryEventType]);
  appEntryEventClientIdentifier = [(BMMomentsEventDataEventBundle *)self appEntryEventClientIdentifier];
  appEntryEventTimestamp = [(BMMomentsEventDataEventBundle *)self appEntryEventTimestamp];
  appEntryEventStartTime = [(BMMomentsEventDataEventBundle *)self appEntryEventStartTime];
  appEntryEventEndTime = [(BMMomentsEventDataEventBundle *)self appEntryEventEndTime];
  v64 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle appEntryEventTotalCharacters](self, "appEntryEventTotalCharacters")}];
  v63 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle appEntryEventAddedCharacters](self, "appEntryEventAddedCharacters")}];
  v62 = BMMomentsEventDataClientActivityEventTypeAsString([(BMMomentsEventDataEventBundle *)self clientActivityEventType]);
  clientActivityEventClientIdentifier = [(BMMomentsEventDataEventBundle *)self clientActivityEventClientIdentifier];
  clientActivityEventTimestamp = [(BMMomentsEventDataEventBundle *)self clientActivityEventTimestamp];
  suggestionIdentifier = [(BMMomentsEventDataEventBundle *)self suggestionIdentifier];
  v58 = BMMomentsEventDataPhotoSourceTypeAsString([(BMMomentsEventDataEventBundle *)self photoSourceType]);
  v57 = BMMomentsEventDataPhotoLibraryTypeAsString([(BMMomentsEventDataEventBundle *)self photoLibraryType]);
  v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourcePostAnalyticsExists](self, "bundleSourcePostAnalyticsExists")}];
  v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourcePDExists](self, "bundleSourcePDExists")}];
  v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceMotionExists](self, "bundleSourceMotionExists")}];
  v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceBooksExists](self, "bundleSourceBooksExists")}];
  v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceScreenTimeExists](self, "bundleSourceScreenTimeExists")}];
  gaPRArray = [(BMMomentsEventDataEventBundle *)self gaPRArray];
  v46 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle bundlePCount](self, "bundlePCount")}];
  v49 = BMMomentsEventDataRankingTypeAsString([(BMMomentsEventDataEventBundle *)self ranking]);
  v50 = BMMomentsEventDataLabelConfidenceScoreTypeAsString([(BMMomentsEventDataEventBundle *)self labelConfidenceScore]);
  v42 = BMMomentsEventDataTimeCorrelationScoreTypeAsString([(BMMomentsEventDataEventBundle *)self timeCorrelationScore]);
  v48 = BMMomentsEventDataCallDurationTypesAsString([(BMMomentsEventDataEventBundle *)self callDuration]);
  v47 = BMMomentsEventDataInteractionCountTypesAsString([(BMMomentsEventDataEventBundle *)self interactionCount]);
  v45 = BMMomentsEventDataBundleInteractionTypesAsString([(BMMomentsEventDataEventBundle *)self interactionType]);
  v26 = BMMomentsEventDataCallPlaceTypeAsString([(BMMomentsEventDataEventBundle *)self callPlace]);
  v44 = BMMomentsEventDataDistanceFromHomeTypeAsString([(BMMomentsEventDataEventBundle *)self distanceFromHome]);
  v25 = BMMomentsEventDataAvailabilityTypeAsString([(BMMomentsEventDataEventBundle *)self homeAvailability]);
  v43 = BMMomentsEventDataAvailabilityTypeAsString([(BMMomentsEventDataEventBundle *)self workAvailability]);
  v41 = BMMomentsEventDataMapItemSourceTypeAsString([(BMMomentsEventDataEventBundle *)self bundleVisitMapItemSource]);
  v40 = BMMomentsEventDataVisitPlaceTypesAsString([(BMMomentsEventDataEventBundle *)self bundleVisitPlaceType]);
  v24 = BMMomentsEventDataPlaceInferenceGranularityTypeAsString([(BMMomentsEventDataEventBundle *)self bundleVisitPlaceLabelGranularity]);
  v39 = BMMomentsEventDataAnomalousTypeAsString([(BMMomentsEventDataEventBundle *)self bundleIncludesAnomalousEvent]);
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isFiltered](self, "isFiltered")}];
  v37 = BMMomentsEventDataEventBundleBundleSuperTypeAsString([(BMMomentsEventDataEventBundle *)self bundleSuperType]);
  v23 = BMMomentsEventDataEventBundleBundleSubTypeAsString([(BMMomentsEventDataEventBundle *)self bundleSubType]);
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle isAggregatedAndSuppressed](self, "isAggregatedAndSuppressed")}];
  v35 = BMMomentsEventDataEventBundleSummarizationGranularityAsString([(BMMomentsEventDataEventBundle *)self summarizationGranularity]);
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle includedInSummaryBundleOnly](self, "includedInSummaryBundleOnly")}];
  subBundleIDs = [(BMMomentsEventDataEventBundle *)self subBundleIDs];
  subSuggestionIDs = [(BMMomentsEventDataEventBundle *)self subSuggestionIDs];
  firstCreationDate = [(BMMomentsEventDataEventBundle *)self firstCreationDate];
  resources = [(BMMomentsEventDataEventBundle *)self resources];
  persons = [(BMMomentsEventDataEventBundle *)self persons];
  mainPlace = [(BMMomentsEventDataEventBundle *)self mainPlace];
  otherPlaces = [(BMMomentsEventDataEventBundle *)self otherPlaces];
  photoTraits = [(BMMomentsEventDataEventBundle *)self photoTraits];
  clusterMetadata = [(BMMomentsEventDataEventBundle *)self clusterMetadata];
  outlierMetadata = [(BMMomentsEventDataEventBundle *)self outlierMetadata];
  v6 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundle *)self bundleGoodnessScore];
  v18 = [v6 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundle *)self distinctnessScore];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundle *)self richnessScore];
  v10 = [v9 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundle *)self engagementScore];
  v12 = [v11 numberWithDouble:?];
  v13 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundle *)self heuristicsScore];
  v14 = [v13 numberWithDouble:?];
  metadataForRank = [(BMMomentsEventDataEventBundle *)self metadataForRank];
  v28 = [v27 initWithFormat:@"BMMomentsEventDataEventBundle with bundleIdentifier: %@, bundleStartDate: %@, bundleEndDate: %@, bundleCreationDate: %@, bundleExpirationDate: %@, bundleInterfaceType: %@, bundleSourceHealthExists: %@, bundleSourcePhotoExists: %@, bundleSourceProactiveExists: %@, bundleSourceRoutineExists: %@, bundlePromptLanguageFormat: %@, bundlePromptToneID: %@, bundlePromptParametersAvailability: %@, bundlePlaceType: %@, bundlePlaceUserType: %@, bundleBaseEventCateory: %@, bundleEventIDs: %@, bundleActionType: %@, backgroundActions: %@, bundleIsFamilyIncluded: %@, bundleTimeTag: %@, isBundleResourceTypeUnknown: %@, isBundleResourceTypeValueIncluded: %@, isBundleResourceTypePhotoAssetsIncluded: %@, isBundleResourceTypeMediaIncluded: %@, isBundleResourceTypeWebLinkIncluded: %@, isBundleResourceTypeInterenceTagIncluded: %@, bundlEngagement: %@, bundleVersion: %@, rankingVersion: %@, suggestionType: %@, suggestionTimestamp: %@, suggestionClientIdentifier: %@, suggestionViewContainerName: %@, suggestionViewVisibleTime: %@, appEntryEventType: %@, appEntryEventClientIdentifier: %@, appEntryEventTimestamp: %@, appEntryEventStartTime: %@, appEntryEventEndTime: %@, appEntryEventTotalCharacters: %@, appEntryEventAddedCharacters: %@, clientActivityEventType: %@, clientActivityEventClientIdentifier: %@, clientActivityEventTimestamp: %@, suggestionIdentifier: %@, photoSourceType: %@, photoLibraryType: %@, bundleSourcePostAnalyticsExists: %@, bundleSourcePDExists: %@, bundleSourceMotionExists: %@, bundleSourceBooksExists: %@, bundleSourceScreenTimeExists: %@, gaPRArray: %@, bundlePCount: %@, ranking: %@, labelConfidenceScore: %@, timeCorrelationScore: %@, callDuration: %@, interactionCount: %@, interactionType: %@, callPlace: %@, distanceFromHome: %@, homeAvailability: %@, workAvailability: %@, bundleVisitMapItemSource: %@, bundleVisitPlaceType: %@, bundleVisitPlaceLabelGranularity: %@, bundleIncludesAnomalousEvent: %@, isFiltered: %@, bundleSuperType: %@, bundleSubType: %@, isAggregatedAndSuppressed: %@, summarizationGranularity: %@, includedInSummaryBundleOnly: %@, subBundleIDs: %@, subSuggestionIDs: %@, firstCreationDate: %@, resources: %@, persons: %@, mainPlace: %@, otherPlaces: %@, photoTraits: %@, clusterMetadata: %@, outlierMetadata: %@, bundleGoodnessScore: %@, distinctnessScore: %@, richnessScore: %@, engagementScore: %@, heuristicsScore: %@, metadataForRank: %@", bundleIdentifier, bundleStartDate, bundleEndDate, bundleCreationDate, bundleExpirationDate, v99, v98, v97, v96, v95, bundlePromptLanguageFormat, bundlePromptToneID, v92, v91, v90, v89, bundleEventIDs, bundleActionType, backgroundActions, v85, v84, v83, v82, v81, v80, v79, v78, v77, v76, v75, v74, suggestionTimestamp, suggestionClientIdentifier, suggestionViewContainerName, v70, v69, appEntryEventClientIdentifier, appEntryEventTimestamp, appEntryEventStartTime, appEntryEventEndTime, v64, v63, v62, clientActivityEventClientIdentifier, clientActivityEventTimestamp, suggestionIdentifier, v58, v57, v56, v55, v54, v53, v52, gaPRArray, v46, v49, v50, v42, v48, v47];

  return v28;
}

- (BMMomentsEventDataEventBundle)initWithBundleIdentifier:(void *)identifier bundleStartDate:(void *)date bundleEndDate:(void *)endDate bundleCreationDate:(void *)creationDate bundleExpirationDate:(void *)expirationDate bundleInterfaceType:(int)type bundleSourceHealthExists:(id)exists bundleSourcePhotoExists:(id)self0 bundleSourceProactiveExists:(id)self1 bundleSourceRoutineExists:(id)self2 bundlePromptLanguageFormat:(id)self3 bundlePromptToneID:(id)self4 bundlePromptParametersAvailability:(id)self5 bundlePlaceType:(int)self6 bundlePlaceUserType:(int)self7 bundleBaseEventCateory:(int)self8 bundleEventIDs:(id)self9 bundleActionType:(id)actionType backgroundActions:(id)actions bundleIsFamilyIncluded:(id)included bundleTimeTag:(int)tag isBundleResourceTypeUnknown:(id)unknown isBundleResourceTypeValueIncluded:(id)valueIncluded isBundleResourceTypePhotoAssetsIncluded:(id)assetsIncluded isBundleResourceTypeMediaIncluded:(id)mediaIncluded isBundleResourceTypeWebLinkIncluded:(id)linkIncluded isBundleResourceTypeInterenceTagIncluded:(id)tagIncluded bundlEngagement:(int)identifier0 bundleVersion:(id)identifier1 rankingVersion:(id)identifier2 suggestionType:(int)identifier3 suggestionTimestamp:(id)identifier4 suggestionClientIdentifier:(id)identifier5 suggestionViewContainerName:(id)identifier6 suggestionViewVisibleTime:(id)identifier7 appEntryEventType:(int)identifier8 appEntryEventClientIdentifier:(id)identifier9 appEntryEventTimestamp:(id)date0 appEntryEventStartTime:(id)date1 appEntryEventEndTime:(id)date2 appEntryEventTotalCharacters:(id)date3 appEntryEventAddedCharacters:(id)date4 clientActivityEventType:(int)date5 clientActivityEventClientIdentifier:(id)date6 clientActivityEventTimestamp:(id)date7 suggestionIdentifier:(id)date8 photoSourceType:(int)date9 photoLibraryType:(int)endDate0 bundleSourcePostAnalyticsExists:(id)endDate1 bundleSourcePDExists:(id)endDate2 bundleSourceMotionExists:(id)endDate3 bundleSourceBooksExists:(id)endDate4 bundleSourceScreenTimeExists:(id)endDate5 gaPRArray:(id)endDate6 bundlePCount:(id)endDate7 ranking:(int)endDate8 labelConfidenceScore:(int)endDate9 timeCorrelationScore:(int)creationDate0 callDuration:(int)creationDate1 interactionCount:(int)creationDate2 interactionType:(int)creationDate3 callPlace:distanceFromHome:homeAvailability:workAvailability:bundleVisitMapItemSource:bundleVisitPlaceType:bundleVisitPlaceLabelGranularity:bundleIncludesAnomalousEvent:isFiltered:bundleSuperType:bundleSubType:isAggregatedAndSuppressed:summarizationGranularity:includedInSummaryBundleOnly:subBundleIDs:subSuggestionIDs:firstCreationDate:resources:persons:mainPlace:otherPlaces:photoTraits:clusterMetadata:outlierMetadata:bundleGoodnessScore:distinctnessScore:richnessScore:engagementScore:heuristicsScore:metadataForRank:
{
  v179 = STACK[0x560];
  v167 = STACK[0x528];
  v165 = STACK[0x520];
  v164 = STACK[0x518];
  v161 = STACK[0x510];
  v141 = STACK[0x558];
  v143 = STACK[0x550];
  v145 = STACK[0x548];
  v147 = STACK[0x540];
  v163 = STACK[0x530];
  v149 = STACK[0x538];
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  creationDateCopy = creationDate;
  expirationDateCopy = expirationDate;
  existsCopy = exists;
  photoExistsCopy = photoExists;
  proactiveExistsCopy = proactiveExists;
  routineExistsCopy = routineExists;
  formatCopy = format;
  dCopy = d;
  availabilityCopy = availability;
  v87 = photoExistsCopy;
  dsCopy = ds;
  actionTypeCopy = actionType;
  actionsCopy = actions;
  includedCopy = included;
  unknownCopy = unknown;
  valueIncludedCopy = valueIncluded;
  assetsIncludedCopy = assetsIncluded;
  mediaIncludedCopy = mediaIncluded;
  linkIncludedCopy = linkIncluded;
  tagIncludedCopy = tagIncluded;
  versionCopy = version;
  rankingVersionCopy = rankingVersion;
  timestampCopy = timestamp;
  clientIdentifierCopy = clientIdentifier;
  nameCopy = name;
  timeCopy = time;
  eventClientIdentifierCopy = eventClientIdentifier;
  eventTimestampCopy = eventTimestamp;
  startTimeCopy = startTime;
  endTimeCopy = endTime;
  charactersCopy = characters;
  addedCharactersCopy = addedCharacters;
  activityEventClientIdentifierCopy = activityEventClientIdentifier;
  activityEventTimestampCopy = activityEventTimestamp;
  suggestionIdentifierCopy = suggestionIdentifier;
  analyticsExistsCopy = analyticsExists;
  dExistsCopy = dExists;
  motionExistsCopy = motionExists;
  booksExistsCopy = booksExists;
  timeExistsCopy = timeExists;
  arrayCopy = array;
  countCopy = count;
  v154 = a72;
  v153 = a75;
  v152 = a77;
  v129 = a78;
  v128 = a79;
  v151 = a80;
  v127 = a81;
  v126 = a82;
  v125 = v161;
  v124 = v164;
  v123 = v165;
  v122 = v167;
  v121 = v163;
  v150 = v149;
  v148 = v147;
  v146 = v145;
  v144 = v143;
  v142 = v141;
  v120 = v179;
  v192.receiver = self;
  v192.super_class = BMMomentsEventDataEventBundle;
  v89 = [(BMEventBase *)&v192 init];

  if (v89)
  {
    v89->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v89->_bundleIdentifier, identifier);
    if (dateCopy)
    {
      v89->_hasRaw_bundleStartDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_bundleStartDate = 0;
      v90 = -1.0;
    }

    v89->_raw_bundleStartDate = v90;
    if (endDateCopy)
    {
      v89->_hasRaw_bundleEndDate = 1;
      [endDateCopy timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_bundleEndDate = 0;
      v91 = -1.0;
    }

    v89->_raw_bundleEndDate = v91;
    if (creationDateCopy)
    {
      v89->_hasRaw_bundleCreationDate = 1;
      [creationDateCopy timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_bundleCreationDate = 0;
      v92 = -1.0;
    }

    v89->_raw_bundleCreationDate = v92;
    if (expirationDateCopy)
    {
      v89->_hasRaw_bundleExpirationDate = 1;
      [expirationDateCopy timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_bundleExpirationDate = 0;
      v93 = -1.0;
    }

    v89->_raw_bundleExpirationDate = v93;
    v89->_bundleInterfaceType = type;
    if (existsCopy)
    {
      v89->_hasBundleSourceHealthExists = 1;
      v89->_bundleSourceHealthExists = [existsCopy BOOLValue];
    }

    else
    {
      v89->_hasBundleSourceHealthExists = 0;
      v89->_bundleSourceHealthExists = 0;
    }

    if (photoExistsCopy)
    {
      v89->_hasBundleSourcePhotoExists = 1;
      v89->_bundleSourcePhotoExists = [photoExistsCopy BOOLValue];
    }

    else
    {
      v89->_hasBundleSourcePhotoExists = 0;
      v89->_bundleSourcePhotoExists = 0;
    }

    if (proactiveExistsCopy)
    {
      v89->_hasBundleSourceProactiveExists = 1;
      v89->_bundleSourceProactiveExists = [proactiveExistsCopy BOOLValue];
    }

    else
    {
      v89->_hasBundleSourceProactiveExists = 0;
      v89->_bundleSourceProactiveExists = 0;
    }

    if (routineExistsCopy)
    {
      v89->_hasBundleSourceRoutineExists = 1;
      v89->_bundleSourceRoutineExists = [routineExistsCopy BOOLValue];
    }

    else
    {
      v89->_hasBundleSourceRoutineExists = 0;
      v89->_bundleSourceRoutineExists = 0;
    }

    objc_storeStrong(&v89->_bundlePromptLanguageFormat, format);
    objc_storeStrong(&v89->_bundlePromptToneID, d);
    if (availabilityCopy)
    {
      v89->_hasBundlePromptParametersAvailability = 1;
      v89->_bundlePromptParametersAvailability = [availabilityCopy BOOLValue];
    }

    else
    {
      v89->_hasBundlePromptParametersAvailability = 0;
      v89->_bundlePromptParametersAvailability = 0;
    }

    v89->_bundlePlaceType = placeType;
    v89->_bundlePlaceUserType = userType;
    v89->_bundleBaseEventCateory = cateory;
    objc_storeStrong(&v89->_bundleEventIDs, ds);
    objc_storeStrong(&v89->_bundleActionType, actionType);
    objc_storeStrong(&v89->_backgroundActions, actions);
    if (includedCopy)
    {
      v89->_hasBundleIsFamilyIncluded = 1;
      v89->_bundleIsFamilyIncluded = [includedCopy BOOLValue];
    }

    else
    {
      v89->_hasBundleIsFamilyIncluded = 0;
      v89->_bundleIsFamilyIncluded = 0;
    }

    v89->_bundleTimeTag = tag;
    if (unknownCopy)
    {
      v89->_hasIsBundleResourceTypeUnknown = 1;
      v89->_isBundleResourceTypeUnknown = [unknownCopy BOOLValue];
    }

    else
    {
      v89->_hasIsBundleResourceTypeUnknown = 0;
      v89->_isBundleResourceTypeUnknown = 0;
    }

    if (valueIncludedCopy)
    {
      v89->_hasIsBundleResourceTypeValueIncluded = 1;
      v89->_isBundleResourceTypeValueIncluded = [valueIncludedCopy BOOLValue];
    }

    else
    {
      v89->_hasIsBundleResourceTypeValueIncluded = 0;
      v89->_isBundleResourceTypeValueIncluded = 0;
    }

    if (assetsIncludedCopy)
    {
      v89->_hasIsBundleResourceTypePhotoAssetsIncluded = 1;
      v89->_isBundleResourceTypePhotoAssetsIncluded = [assetsIncludedCopy BOOLValue];
    }

    else
    {
      v89->_hasIsBundleResourceTypePhotoAssetsIncluded = 0;
      v89->_isBundleResourceTypePhotoAssetsIncluded = 0;
    }

    if (mediaIncludedCopy)
    {
      v89->_hasIsBundleResourceTypeMediaIncluded = 1;
      v89->_isBundleResourceTypeMediaIncluded = [mediaIncludedCopy BOOLValue];
    }

    else
    {
      v89->_hasIsBundleResourceTypeMediaIncluded = 0;
      v89->_isBundleResourceTypeMediaIncluded = 0;
    }

    if (linkIncludedCopy)
    {
      v89->_hasIsBundleResourceTypeWebLinkIncluded = 1;
      v89->_isBundleResourceTypeWebLinkIncluded = [linkIncludedCopy BOOLValue];
    }

    else
    {
      v89->_hasIsBundleResourceTypeWebLinkIncluded = 0;
      v89->_isBundleResourceTypeWebLinkIncluded = 0;
    }

    if (tagIncludedCopy)
    {
      v89->_hasIsBundleResourceTypeInterenceTagIncluded = 1;
      v89->_isBundleResourceTypeInterenceTagIncluded = [tagIncludedCopy BOOLValue];
    }

    else
    {
      v89->_hasIsBundleResourceTypeInterenceTagIncluded = 0;
      v89->_isBundleResourceTypeInterenceTagIncluded = 0;
    }

    v89->_bundlEngagement = engagement;
    if (versionCopy)
    {
      v89->_hasBundleVersion = 1;
      [versionCopy doubleValue];
    }

    else
    {
      v89->_hasBundleVersion = 0;
      v94 = -1.0;
    }

    v89->_bundleVersion = v94;
    if (rankingVersionCopy)
    {
      v89->_hasRankingVersion = 1;
      [rankingVersionCopy doubleValue];
    }

    else
    {
      v89->_hasRankingVersion = 0;
      v95 = -1.0;
    }

    v89->_rankingVersion = v95;
    v89->_suggestionType = suggestionType;
    if (timestampCopy)
    {
      v89->_hasRaw_suggestionTimestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_suggestionTimestamp = 0;
      v96 = -1.0;
    }

    v89->_raw_suggestionTimestamp = v96;
    objc_storeStrong(&v89->_suggestionClientIdentifier, clientIdentifier);
    objc_storeStrong(&v89->_suggestionViewContainerName, name);
    if (timeCopy)
    {
      v89->_hasSuggestionViewVisibleTime = 1;
      [timeCopy floatValue];
      v98 = v97;
    }

    else
    {
      v89->_hasSuggestionViewVisibleTime = 0;
      v98 = -1.0;
    }

    v89->_suggestionViewVisibleTime = v98;
    v89->_appEntryEventType = eventType;
    objc_storeStrong(&v89->_appEntryEventClientIdentifier, eventClientIdentifier);
    if (eventTimestampCopy)
    {
      v89->_hasRaw_appEntryEventTimestamp = 1;
      [eventTimestampCopy timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_appEntryEventTimestamp = 0;
      v99 = -1.0;
    }

    v89->_raw_appEntryEventTimestamp = v99;
    if (startTimeCopy)
    {
      v89->_hasRaw_appEntryEventStartTime = 1;
      [startTimeCopy timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_appEntryEventStartTime = 0;
      v100 = -1.0;
    }

    v89->_raw_appEntryEventStartTime = v100;
    if (endTimeCopy)
    {
      v89->_hasRaw_appEntryEventEndTime = 1;
      [endTimeCopy timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_appEntryEventEndTime = 0;
      v101 = -1.0;
    }

    v89->_raw_appEntryEventEndTime = v101;
    if (charactersCopy)
    {
      v89->_hasAppEntryEventTotalCharacters = 1;
      intValue = [charactersCopy intValue];
    }

    else
    {
      v89->_hasAppEntryEventTotalCharacters = 0;
      intValue = -1;
    }

    v89->_appEntryEventTotalCharacters = intValue;
    if (addedCharactersCopy)
    {
      v89->_hasAppEntryEventAddedCharacters = 1;
      intValue2 = [addedCharactersCopy intValue];
    }

    else
    {
      v89->_hasAppEntryEventAddedCharacters = 0;
      intValue2 = -1;
    }

    v89->_appEntryEventAddedCharacters = intValue2;
    v89->_clientActivityEventType = activityEventType;
    objc_storeStrong(&v89->_clientActivityEventClientIdentifier, activityEventClientIdentifier);
    if (activityEventTimestampCopy)
    {
      v89->_hasRaw_clientActivityEventTimestamp = 1;
      [activityEventTimestampCopy timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_clientActivityEventTimestamp = 0;
      v104 = -1.0;
    }

    v89->_raw_clientActivityEventTimestamp = v104;
    objc_storeStrong(&v89->_suggestionIdentifier, suggestionIdentifier);
    v89->_photoSourceType = sourceType;
    v89->_photoLibraryType = libraryType;
    if (analyticsExistsCopy)
    {
      v89->_hasBundleSourcePostAnalyticsExists = 1;
      v89->_bundleSourcePostAnalyticsExists = [analyticsExistsCopy BOOLValue];
    }

    else
    {
      v89->_hasBundleSourcePostAnalyticsExists = 0;
      v89->_bundleSourcePostAnalyticsExists = 0;
    }

    if (dExistsCopy)
    {
      v89->_hasBundleSourcePDExists = 1;
      v89->_bundleSourcePDExists = [dExistsCopy BOOLValue];
    }

    else
    {
      v89->_hasBundleSourcePDExists = 0;
      v89->_bundleSourcePDExists = 0;
    }

    if (motionExistsCopy)
    {
      v89->_hasBundleSourceMotionExists = 1;
      v89->_bundleSourceMotionExists = [motionExistsCopy BOOLValue];
    }

    else
    {
      v89->_hasBundleSourceMotionExists = 0;
      v89->_bundleSourceMotionExists = 0;
    }

    if (booksExistsCopy)
    {
      v89->_hasBundleSourceBooksExists = 1;
      v89->_bundleSourceBooksExists = [booksExistsCopy BOOLValue];
    }

    else
    {
      v89->_hasBundleSourceBooksExists = 0;
      v89->_bundleSourceBooksExists = 0;
    }

    if (timeExistsCopy)
    {
      v89->_hasBundleSourceScreenTimeExists = 1;
      v89->_bundleSourceScreenTimeExists = [timeExistsCopy BOOLValue];
    }

    else
    {
      v89->_hasBundleSourceScreenTimeExists = 0;
      v89->_bundleSourceScreenTimeExists = 0;
    }

    objc_storeStrong(&v89->_gaPRArray, array);
    if (countCopy)
    {
      v89->_hasBundlePCount = 1;
      intValue3 = [countCopy intValue];
    }

    else
    {
      v89->_hasBundlePCount = 0;
      intValue3 = -1;
    }

    v106 = a74;
    v107 = a73;
    v89->_bundlePCount = intValue3;
    v89->_ranking = ranking;
    v89->_labelConfidenceScore = score;
    v89->_timeCorrelationScore = correlationScore;
    v89->_callDuration = duration;
    v89->_interactionCount = interactionCount;
    v89->_interactionType = interactionType;
    v89->_callPlace = a64;
    v89->_distanceFromHome = a65;
    v89->_homeAvailability = a66;
    v89->_workAvailability = a67;
    v89->_bundleVisitMapItemSource = a68;
    v89->_bundleVisitPlaceType = a69;
    v89->_bundleVisitPlaceLabelGranularity = a70;
    v89->_bundleIncludesAnomalousEvent = a71;
    if (v154)
    {
      v89->_hasIsFiltered = 1;
      bOOLValue = [v154 BOOLValue];
      v107 = a73;
      v106 = a74;
      v89->_isFiltered = bOOLValue;
    }

    else
    {
      v89->_hasIsFiltered = 0;
      v89->_isFiltered = 0;
    }

    v87 = photoExistsCopy;
    v89->_bundleSuperType = v107;
    v89->_bundleSubType = v106;
    if (v153)
    {
      v89->_hasIsAggregatedAndSuppressed = 1;
      v89->_isAggregatedAndSuppressed = [v153 BOOLValue];
    }

    else
    {
      v89->_hasIsAggregatedAndSuppressed = 0;
      v89->_isAggregatedAndSuppressed = 0;
    }

    v89->_summarizationGranularity = a76;
    if (v152)
    {
      v89->_hasIncludedInSummaryBundleOnly = 1;
      v89->_includedInSummaryBundleOnly = [v152 BOOLValue];
    }

    else
    {
      v89->_hasIncludedInSummaryBundleOnly = 0;
      v89->_includedInSummaryBundleOnly = 0;
    }

    objc_storeStrong(&v89->_subBundleIDs, a78);
    objc_storeStrong(&v89->_subSuggestionIDs, a79);
    if (v151)
    {
      v89->_hasRaw_firstCreationDate = 1;
      [v151 timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_firstCreationDate = 0;
      v109 = -1.0;
    }

    v89->_raw_firstCreationDate = v109;
    objc_storeStrong(&v89->_resources, a81);
    objc_storeStrong(&v89->_persons, a82);
    objc_storeStrong(&v89->_mainPlace, v161);
    objc_storeStrong(&v89->_otherPlaces, v164);
    objc_storeStrong(&v89->_photoTraits, v165);
    objc_storeStrong(&v89->_clusterMetadata, v167);
    objc_storeStrong(&v89->_outlierMetadata, v163);
    if (v150)
    {
      v89->_hasBundleGoodnessScore = 1;
      [v150 doubleValue];
    }

    else
    {
      v89->_hasBundleGoodnessScore = 0;
      v110 = -1.0;
    }

    v89->_bundleGoodnessScore = v110;
    if (v148)
    {
      v89->_hasDistinctnessScore = 1;
      [v148 doubleValue];
    }

    else
    {
      v89->_hasDistinctnessScore = 0;
      v111 = -1.0;
    }

    v89->_distinctnessScore = v111;
    if (v146)
    {
      v89->_hasRichnessScore = 1;
      [v146 doubleValue];
    }

    else
    {
      v89->_hasRichnessScore = 0;
      v112 = -1.0;
    }

    v89->_richnessScore = v112;
    if (v144)
    {
      v89->_hasEngagementScore = 1;
      [v144 doubleValue];
    }

    else
    {
      v89->_hasEngagementScore = 0;
      v113 = -1.0;
    }

    v89->_engagementScore = v113;
    if (v142)
    {
      v89->_hasHeuristicsScore = 1;
      [v142 doubleValue];
    }

    else
    {
      v89->_hasHeuristicsScore = 0;
      v114 = -1.0;
    }

    v89->_heuristicsScore = v114;
    objc_storeStrong(&v89->_metadataForRank, v179);
  }

  v115 = v89;

  return v115;
}

+ (id)protoFields
{
  v96[91] = *MEMORY[0x1E69E9840];
  v95 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleIdentifier" number:1 type:13 subMessageClass:0];
  v96[0] = v95;
  v94 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleStartDate" number:2 type:0 subMessageClass:0];
  v96[1] = v94;
  v93 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleEndDate" number:3 type:0 subMessageClass:0];
  v96[2] = v93;
  v92 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleCreationDate" number:4 type:0 subMessageClass:0];
  v96[3] = v92;
  v91 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleExpirationDate" number:5 type:0 subMessageClass:0];
  v96[4] = v91;
  v90 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleInterfaceType" number:6 type:4 subMessageClass:0];
  v96[5] = v90;
  v89 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSourceHealthExists" number:7 type:12 subMessageClass:0];
  v96[6] = v89;
  v88 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSourcePhotoExists" number:8 type:12 subMessageClass:0];
  v96[7] = v88;
  v87 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSourceProactiveExists" number:9 type:12 subMessageClass:0];
  v96[8] = v87;
  v86 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSourceRoutineExists" number:10 type:12 subMessageClass:0];
  v96[9] = v86;
  v85 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundlePromptLanguageFormat" number:11 type:13 subMessageClass:0];
  v96[10] = v85;
  v84 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundlePromptToneID" number:12 type:13 subMessageClass:0];
  v96[11] = v84;
  v83 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundlePromptParametersAvailability" number:13 type:12 subMessageClass:0];
  v96[12] = v83;
  v82 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundlePlaceType" number:14 type:4 subMessageClass:0];
  v96[13] = v82;
  v81 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundlePlaceUserType" number:15 type:4 subMessageClass:0];
  v96[14] = v81;
  v80 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleBaseEventCateory" number:16 type:4 subMessageClass:0];
  v96[15] = v80;
  v79 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleEventIDs" number:17 type:13 subMessageClass:0];
  v96[16] = v79;
  v78 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleActionType" number:18 type:14 subMessageClass:objc_opt_class()];
  v96[17] = v78;
  v77 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"backgroundActions" number:19 type:14 subMessageClass:objc_opt_class()];
  v96[18] = v77;
  v76 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleIsFamilyIncluded" number:20 type:12 subMessageClass:0];
  v96[19] = v76;
  v75 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleTimeTag" number:21 type:4 subMessageClass:0];
  v96[20] = v75;
  v74 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBundleResourceTypeUnknown" number:22 type:12 subMessageClass:0];
  v96[21] = v74;
  v73 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBundleResourceTypeValueIncluded" number:23 type:12 subMessageClass:0];
  v96[22] = v73;
  v72 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBundleResourceTypePhotoAssetsIncluded" number:24 type:12 subMessageClass:0];
  v96[23] = v72;
  v71 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBundleResourceTypeMediaIncluded" number:25 type:12 subMessageClass:0];
  v96[24] = v71;
  v70 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBundleResourceTypeWebLinkIncluded" number:26 type:12 subMessageClass:0];
  v96[25] = v70;
  v69 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBundleResourceTypeInterenceTagIncluded" number:27 type:12 subMessageClass:0];
  v96[26] = v69;
  v68 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundlEngagement" number:28 type:4 subMessageClass:0];
  v96[27] = v68;
  v67 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleVersion" number:29 type:0 subMessageClass:0];
  v96[28] = v67;
  v66 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rankingVersion" number:30 type:0 subMessageClass:0];
  v96[29] = v66;
  v65 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionType" number:31 type:4 subMessageClass:0];
  v96[30] = v65;
  v64 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionTimestamp" number:32 type:0 subMessageClass:0];
  v96[31] = v64;
  v63 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionClientIdentifier" number:33 type:13 subMessageClass:0];
  v96[32] = v63;
  v62 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionViewContainerName" number:34 type:13 subMessageClass:0];
  v96[33] = v62;
  v61 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionViewVisibleTime" number:35 type:1 subMessageClass:0];
  v96[34] = v61;
  v60 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appEntryEventType" number:36 type:4 subMessageClass:0];
  v96[35] = v60;
  v59 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appEntryEventClientIdentifier" number:37 type:13 subMessageClass:0];
  v96[36] = v59;
  v58 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appEntryEventTimestamp" number:38 type:0 subMessageClass:0];
  v96[37] = v58;
  v57 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appEntryEventStartTime" number:39 type:0 subMessageClass:0];
  v96[38] = v57;
  v56 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appEntryEventEndTime" number:40 type:0 subMessageClass:0];
  v96[39] = v56;
  v55 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appEntryEventTotalCharacters" number:41 type:2 subMessageClass:0];
  v96[40] = v55;
  v54 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appEntryEventAddedCharacters" number:42 type:2 subMessageClass:0];
  v96[41] = v54;
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientActivityEventType" number:43 type:4 subMessageClass:0];
  v96[42] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientActivityEventClientIdentifier" number:44 type:13 subMessageClass:0];
  v96[43] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientActivityEventTimestamp" number:45 type:0 subMessageClass:0];
  v96[44] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionIdentifier" number:46 type:13 subMessageClass:0];
  v96[45] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoSourceType" number:47 type:4 subMessageClass:0];
  v96[46] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoLibraryType" number:48 type:4 subMessageClass:0];
  v96[47] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSourcePostAnalyticsExists" number:49 type:12 subMessageClass:0];
  v96[48] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSourcePDExists" number:50 type:12 subMessageClass:0];
  v96[49] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSourceMotionExists" number:51 type:12 subMessageClass:0];
  v96[50] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSourceBooksExists" number:52 type:12 subMessageClass:0];
  v96[51] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSourceScreenTimeExists" number:53 type:12 subMessageClass:0];
  v96[52] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"gaPRArray" number:54 type:14 subMessageClass:objc_opt_class()];
  v96[53] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundlePCount" number:55 type:2 subMessageClass:0];
  v96[54] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ranking" number:56 type:4 subMessageClass:0];
  v96[55] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"labelConfidenceScore" number:57 type:4 subMessageClass:0];
  v96[56] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeCorrelationScore" number:58 type:4 subMessageClass:0];
  v96[57] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"callDuration" number:59 type:4 subMessageClass:0];
  v96[58] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionCount" number:60 type:4 subMessageClass:0];
  v96[59] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionType" number:61 type:4 subMessageClass:0];
  v96[60] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"callPlace" number:62 type:4 subMessageClass:0];
  v96[61] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distanceFromHome" number:63 type:4 subMessageClass:0];
  v96[62] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"homeAvailability" number:64 type:4 subMessageClass:0];
  v96[63] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"workAvailability" number:65 type:4 subMessageClass:0];
  v96[64] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleVisitMapItemSource" number:66 type:4 subMessageClass:0];
  v96[65] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleVisitPlaceType" number:67 type:4 subMessageClass:0];
  v96[66] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleVisitPlaceLabelGranularity" number:68 type:4 subMessageClass:0];
  v96[67] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleIncludesAnomalousEvent" number:69 type:4 subMessageClass:0];
  v96[68] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFiltered" number:70 type:12 subMessageClass:0];
  v96[69] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSuperType" number:71 type:4 subMessageClass:0];
  v96[70] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSubType" number:72 type:4 subMessageClass:0];
  v96[71] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAggregatedAndSuppressed" number:73 type:12 subMessageClass:0];
  v96[72] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"summarizationGranularity" number:74 type:4 subMessageClass:0];
  v96[73] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"includedInSummaryBundleOnly" number:75 type:12 subMessageClass:0];
  v96[74] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subBundleIDs" number:76 type:13 subMessageClass:0];
  v96[75] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subSuggestionIDs" number:77 type:13 subMessageClass:0];
  v96[76] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firstCreationDate" number:78 type:0 subMessageClass:0];
  v96[77] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resources" number:79 type:14 subMessageClass:objc_opt_class()];
  v96[78] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"persons" number:80 type:14 subMessageClass:objc_opt_class()];
  v96[79] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mainPlace" number:81 type:14 subMessageClass:objc_opt_class()];
  v96[80] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"otherPlaces" number:82 type:14 subMessageClass:objc_opt_class()];
  v96[81] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoTraits" number:83 type:13 subMessageClass:0];
  v96[82] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clusterMetadata" number:84 type:14 subMessageClass:objc_opt_class()];
  v96[83] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"outlierMetadata" number:85 type:14 subMessageClass:objc_opt_class()];
  v96[84] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleGoodnessScore" number:86 type:0 subMessageClass:0];
  v96[85] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distinctnessScore" number:87 type:0 subMessageClass:0];
  v96[86] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"richnessScore" number:88 type:0 subMessageClass:0];
  v96[87] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagementScore" number:89 type:0 subMessageClass:0];
  v96[88] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"heuristicsScore" number:90 type:0 subMessageClass:0];
  v96[89] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadataForRank" number:91 type:14 subMessageClass:objc_opt_class()];
  v96[90] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:91];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v96[91] = *MEMORY[0x1E69E9840];
  v95 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v94 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleStartDate" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v93 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleEndDate" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v92 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleCreationDate" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:2];
  v91 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleExpirationDate" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v90 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleInterfaceType" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v89 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSourceHealthExists" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v88 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSourcePhotoExists" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v87 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSourceProactiveExists" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v86 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSourceRoutineExists" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v85 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundlePromptLanguageFormat" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v84 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundlePromptToneID" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v83 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundlePromptParametersAvailability" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v82 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundlePlaceType" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:4 convertedType:0];
  v81 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundlePlaceUserType" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:4 convertedType:0];
  v80 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleBaseEventCateory" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:4 convertedType:0];
  v79 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bundleEventIDs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3950];
  v78 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bundleActionType_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3952];
  v77 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"backgroundActions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3954];
  v76 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleIsFamilyIncluded" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:12 convertedType:0];
  v75 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleTimeTag" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v74 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBundleResourceTypeUnknown" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:12 convertedType:0];
  v73 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBundleResourceTypeValueIncluded" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:12 convertedType:0];
  v72 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBundleResourceTypePhotoAssetsIncluded" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:12 convertedType:0];
  v71 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBundleResourceTypeMediaIncluded" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:12 convertedType:0];
  v70 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBundleResourceTypeWebLinkIncluded" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:12 convertedType:0];
  v69 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBundleResourceTypeInterenceTagIncluded" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:12 convertedType:0];
  v68 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundlEngagement" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:4 convertedType:0];
  v67 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleVersion" dataType:1 requestOnly:0 fieldNumber:29 protoDataType:0 convertedType:0];
  v66 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rankingVersion" dataType:1 requestOnly:0 fieldNumber:30 protoDataType:0 convertedType:0];
  v65 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionType" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:4 convertedType:0];
  v64 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionTimestamp" dataType:3 requestOnly:0 fieldNumber:32 protoDataType:0 convertedType:2];
  v63 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionClientIdentifier" dataType:2 requestOnly:0 fieldNumber:33 protoDataType:13 convertedType:0];
  v62 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionViewContainerName" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v59 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionViewVisibleTime" dataType:1 requestOnly:0 fieldNumber:35 protoDataType:1 convertedType:0];
  v61 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appEntryEventType" dataType:0 requestOnly:0 fieldNumber:36 protoDataType:4 convertedType:0];
  v60 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appEntryEventClientIdentifier" dataType:2 requestOnly:0 fieldNumber:37 protoDataType:13 convertedType:0];
  v58 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appEntryEventTimestamp" dataType:3 requestOnly:0 fieldNumber:38 protoDataType:0 convertedType:2];
  v57 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appEntryEventStartTime" dataType:3 requestOnly:0 fieldNumber:39 protoDataType:0 convertedType:2];
  v56 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appEntryEventEndTime" dataType:3 requestOnly:0 fieldNumber:40 protoDataType:0 convertedType:2];
  v55 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appEntryEventTotalCharacters" dataType:0 requestOnly:0 fieldNumber:41 protoDataType:2 convertedType:0];
  v54 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appEntryEventAddedCharacters" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:2 convertedType:0];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientActivityEventType" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:4 convertedType:0];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientActivityEventClientIdentifier" dataType:2 requestOnly:0 fieldNumber:44 protoDataType:13 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientActivityEventTimestamp" dataType:3 requestOnly:0 fieldNumber:45 protoDataType:0 convertedType:2];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionIdentifier" dataType:2 requestOnly:0 fieldNumber:46 protoDataType:13 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photoSourceType" dataType:0 requestOnly:0 fieldNumber:47 protoDataType:4 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photoLibraryType" dataType:0 requestOnly:0 fieldNumber:48 protoDataType:4 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSourcePostAnalyticsExists" dataType:0 requestOnly:0 fieldNumber:49 protoDataType:12 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSourcePDExists" dataType:0 requestOnly:0 fieldNumber:50 protoDataType:12 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSourceMotionExists" dataType:0 requestOnly:0 fieldNumber:51 protoDataType:12 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSourceBooksExists" dataType:0 requestOnly:0 fieldNumber:52 protoDataType:12 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSourceScreenTimeExists" dataType:0 requestOnly:0 fieldNumber:53 protoDataType:12 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"gaPRArray_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3956];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundlePCount" dataType:0 requestOnly:0 fieldNumber:55 protoDataType:2 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ranking" dataType:0 requestOnly:0 fieldNumber:56 protoDataType:4 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"labelConfidenceScore" dataType:0 requestOnly:0 fieldNumber:57 protoDataType:4 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeCorrelationScore" dataType:0 requestOnly:0 fieldNumber:58 protoDataType:4 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"callDuration" dataType:0 requestOnly:0 fieldNumber:59 protoDataType:4 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interactionCount" dataType:0 requestOnly:0 fieldNumber:60 protoDataType:4 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interactionType" dataType:0 requestOnly:0 fieldNumber:61 protoDataType:4 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"callPlace" dataType:0 requestOnly:0 fieldNumber:62 protoDataType:4 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distanceFromHome" dataType:0 requestOnly:0 fieldNumber:63 protoDataType:4 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"homeAvailability" dataType:0 requestOnly:0 fieldNumber:64 protoDataType:4 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"workAvailability" dataType:0 requestOnly:0 fieldNumber:65 protoDataType:4 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleVisitMapItemSource" dataType:0 requestOnly:0 fieldNumber:66 protoDataType:4 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleVisitPlaceType" dataType:0 requestOnly:0 fieldNumber:67 protoDataType:4 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleVisitPlaceLabelGranularity" dataType:0 requestOnly:0 fieldNumber:68 protoDataType:4 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleIncludesAnomalousEvent" dataType:0 requestOnly:0 fieldNumber:69 protoDataType:4 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFiltered" dataType:0 requestOnly:0 fieldNumber:70 protoDataType:12 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSuperType" dataType:0 requestOnly:0 fieldNumber:71 protoDataType:4 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleSubType" dataType:0 requestOnly:0 fieldNumber:72 protoDataType:4 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAggregatedAndSuppressed" dataType:0 requestOnly:0 fieldNumber:73 protoDataType:12 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"summarizationGranularity" dataType:0 requestOnly:0 fieldNumber:74 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"includedInSummaryBundleOnly" dataType:0 requestOnly:0 fieldNumber:75 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"subBundleIDs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3958];
  v19 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"subSuggestionIDs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3960];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firstCreationDate" dataType:3 requestOnly:0 fieldNumber:78 protoDataType:0 convertedType:2];
  v17 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"resources_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3962];
  v16 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"persons_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3964];
  v15 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"mainPlace_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3966];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"otherPlaces_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3968];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"photoTraits_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3970];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"clusterMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3972];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"outlierMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3974];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleGoodnessScore" dataType:1 requestOnly:0 fieldNumber:86 protoDataType:0 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distinctnessScore" dataType:1 requestOnly:0 fieldNumber:87 protoDataType:0 convertedType:0];
  v96[0] = v95;
  v96[1] = v94;
  v96[2] = v93;
  v96[3] = v92;
  v96[4] = v91;
  v96[5] = v90;
  v96[6] = v89;
  v96[7] = v88;
  v96[8] = v87;
  v96[9] = v86;
  v96[10] = v85;
  v96[11] = v84;
  v96[12] = v83;
  v96[13] = v82;
  v96[14] = v81;
  v96[15] = v80;
  v96[16] = v79;
  v96[17] = v78;
  v96[18] = v77;
  v96[19] = v76;
  v96[20] = v75;
  v96[21] = v74;
  v96[22] = v73;
  v96[23] = v72;
  v96[24] = v71;
  v96[25] = v70;
  v96[26] = v69;
  v96[27] = v68;
  v96[28] = v67;
  v96[29] = v66;
  v96[30] = v65;
  v96[31] = v64;
  v96[32] = v63;
  v96[33] = v62;
  v96[34] = v59;
  v96[35] = v61;
  v96[36] = v60;
  v96[37] = v58;
  v96[38] = v57;
  v96[39] = v56;
  v96[40] = v55;
  v96[41] = v54;
  v96[42] = v53;
  v96[43] = v52;
  v96[44] = v51;
  v96[45] = v50;
  v96[46] = v49;
  v96[47] = v48;
  v96[48] = v47;
  v96[49] = v46;
  v96[50] = v45;
  v96[51] = v44;
  v96[52] = v43;
  v96[53] = v42;
  v96[54] = v41;
  v96[55] = v40;
  v96[56] = v39;
  v96[57] = v38;
  v96[58] = v37;
  v96[59] = v36;
  v96[60] = v35;
  v96[61] = v34;
  v96[62] = v33;
  v96[63] = v32;
  v96[64] = v31;
  v96[65] = v30;
  v96[66] = v29;
  v96[67] = v28;
  v96[68] = v27;
  v96[69] = v26;
  v96[70] = v25;
  v96[71] = v24;
  v96[72] = v23;
  v96[73] = v22;
  v96[74] = v21;
  v96[75] = v20;
  v96[76] = v19;
  v96[77] = v18;
  v96[78] = v17;
  v96[79] = v16;
  v96[80] = v15;
  v96[81] = v14;
  v96[82] = v2;
  v96[83] = v3;
  v96[84] = v13;
  v96[85] = v4;
  v96[86] = v12;
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"richnessScore" dataType:1 requestOnly:0 fieldNumber:88 protoDataType:0 convertedType:0];
  v96[87] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagementScore" dataType:1 requestOnly:0 fieldNumber:89 protoDataType:0 convertedType:0];
  v96[88] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"heuristicsScore" dataType:1 requestOnly:0 fieldNumber:90 protoDataType:0 convertedType:0];
  v96[89] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"metadataForRank_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3976];
  v96[90] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:91];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 metadataForRank];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 outlierMetadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 clusterMetadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _photoTraitsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _otherPlacesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 mainPlace];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _personsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _resourcesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _subSuggestionIDsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _subBundleIDsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _gaPRArrayJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _backgroundActionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 bundleActionType];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __40__BMMomentsEventDataEventBundle_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _bundleEventIDsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMMomentsEventDataEventBundle alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[57] = 0;
    }
  }

  return v4;
}

- (uint64_t)initWithBundleIdentifier:(uint64_t)identifier bundleStartDate:(uint64_t)date bundleEndDate:(uint64_t)endDate bundleCreationDate:(uint64_t)creationDate bundleExpirationDate:(uint64_t)expirationDate bundleInterfaceType:(unsigned int)type bundleSourceHealthExists:(id)exists bundleSourcePhotoExists:(uint64_t)self0 bundleSourceProactiveExists:(id)self1 bundleSourceRoutineExists:(uint64_t)self2 bundlePromptLanguageFormat:(id)self3 bundlePromptToneID:(uint64_t)self4 bundlePromptParametersAvailability:(id)self5 bundlePlaceType:(uint64_t)self6 bundlePlaceUserType:(int)self7 bundleBaseEventCateory:(id)self8 bundleEventIDs:(uint64_t)self9 bundleActionType:(id)actionType backgroundActions:(id)actions bundleIsFamilyIncluded:(int)included bundleTimeTag:(id)tag isBundleResourceTypeUnknown:(uint64_t)unknown isBundleResourceTypeValueIncluded:(id)valueIncluded isBundleResourceTypePhotoAssetsIncluded:(uint64_t)assetsIncluded isBundleResourceTypeMediaIncluded:(id)mediaIncluded isBundleResourceTypeWebLinkIncluded:(id)linkIncluded isBundleResourceTypeInterenceTagIncluded:(int)tagIncluded bundlEngagement:(id)identifier0 bundleVersion:(id)identifier1 rankingVersion:(int)identifier2 suggestionType:(id)identifier3 suggestionTimestamp:(uint64_t)identifier4 suggestionClientIdentifier:(id)identifier5 suggestionViewContainerName:(id)identifier6 suggestionViewVisibleTime:(int)identifier7 appEntryEventType:(id)identifier8 appEntryEventClientIdentifier:(uint64_t)identifier9 appEntryEventTimestamp:(uint64_t)date0 appEntryEventStartTime:(uint64_t)date1 appEntryEventEndTime:(id)date2 appEntryEventTotalCharacters:(id)date3 appEntryEventAddedCharacters:(int)date4 clientActivityEventType:(id)date5 clientActivityEventClientIdentifier:(uint64_t)date6 clientActivityEventTimestamp:(id)date7 suggestionIdentifier:(uint64_t)date8 photoSourceType:(id)date9 photoLibraryType:(uint64_t)endDate0 bundleSourcePostAnalyticsExists:(id)endDate1 bundleSourcePDExists:(uint64_t)endDate2 bundleSourceMotionExists:(id)endDate3 bundleSourceBooksExists:(uint64_t)endDate4 bundleSourceScreenTimeExists:(id)endDate5 gaPRArray:(uint64_t)endDate6 bundlePCount:(uint64_t)endDate7 ranking:(uint64_t)endDate8 labelConfidenceScore:(uint64_t)endDate9 timeCorrelationScore:(uint64_t)creationDate0 callDuration:(uint64_t)creationDate1 interactionCount:(uint64_t)creationDate2 interactionType:callPlace:distanceFromHome:homeAvailability:workAvailability:bundleVisitMapItemSource:bundleVisitPlaceType:bundleVisitPlaceLabelGranularity:bundleIncludesAnomalousEvent:
{
  typeCopy = type;
  expirationDateCopy = expirationDate;
  LODWORD(v68) = addedCharacters;
  LODWORD(v67) = time;
  LODWORD(v66) = rankingVersion;
  LODWORD(v65) = tagIncluded;
  LODWORD(v64) = included;
  LODWORD(v63) = userType;
  v80 = MEMORY[0x1E695E0F0];
  v79 = MEMORY[0x1E695E0F0];
  v76 = MEMORY[0x1E695E0F0];
  v77 = MEMORY[0x1E695E0F0];
  v73 = MEMORY[0x1E695E0F0];
  v74 = MEMORY[0x1E695E0F0];
  v75 = 0;
  v78 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  return [self initWithBundleIdentifier:identifier bundleStartDate:date bundleEndDate:endDate bundleCreationDate:creationDate bundleExpirationDate:expirationDate bundleInterfaceType:type bundleSourceHealthExists:exists bundleSourcePhotoExists:photoExists bundleSourceProactiveExists:proactiveExists bundleSourceRoutineExists:routineExists bundlePromptLanguageFormat:format bundlePromptToneID:d bundlePromptParametersAvailability:availability bundlePlaceType:placeType bundlePlaceUserType:v63 bundleBaseEventCateory:cateory bundleEventIDs:ds bundleActionType:actionType backgroundActions:actions bundleIsFamilyIncluded:v64 bundleTimeTag:tag isBundleResourceTypeUnknown:unknown isBundleResourceTypeValueIncluded:valueIncluded isBundleResourceTypePhotoAssetsIncluded:assetsIncluded isBundleResourceTypeMediaIncluded:mediaIncluded isBundleResourceTypeWebLinkIncluded:linkIncluded isBundleResourceTypeInterenceTagIncluded:v65 bundlEngagement:engagement bundleVersion:version rankingVersion:v66 suggestionType:suggestionType suggestionTimestamp:timestamp suggestionClientIdentifier:clientIdentifier suggestionViewContainerName:name suggestionViewVisibleTime:v67 appEntryEventType:eventType appEntryEventClientIdentifier:eventClientIdentifier appEntryEventTimestamp:eventTimestamp appEntryEventStartTime:startTime appEntryEventEndTime:endTime appEntryEventTotalCharacters:characters appEntryEventAddedCharacters:v68 clientActivityEventType:activityEventType clientActivityEventClientIdentifier:activityEventClientIdentifier clientActivityEventTimestamp:activityEventTimestamp suggestionIdentifier:suggestionIdentifier photoSourceType:sourceType photoLibraryType:libraryType bundleSourcePostAnalyticsExists:analyticsExists bundleSourcePDExists:dExists bundleSourceMotionExists:motionExists bundleSourceBooksExists:booksExists bundleSourceScreenTimeExists:timeExists gaPRArray:array bundlePCount:count ranking:ranking labelConfidenceScore:score timeCorrelationScore:correlationScore callDuration:duration interactionCount:interactionCount interactionType:0 callPlace:? distanceFromHome:? homeAvailability:? workAvailability:? bundleVisitMapItemSource:? bundleVisitPlaceType:? bundleVisitPlaceLabelGranularity:? bundleIncludesAnomalousEvent:? isFiltered:? bundleSuperType:? bundleSubType:? isAggregatedAndSuppressed:? summarizationGranularity:? includedInSummaryBundleOnly:? subBundleIDs:? subSuggestionIDs:? firstCreationDate:? resources:? persons:? mainPlace:? otherPlaces:? photoTraits:? clusterMetadata:? outlierMetadata:? bundleGoodnessScore:? distinctnessScore:? richnessScore:? engagementScore:? heuristicsScore:? metadataForRank:?];
}

@end