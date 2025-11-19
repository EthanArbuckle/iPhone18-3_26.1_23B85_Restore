@interface BMMomentsEventDataEventBundle
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMomentsEventDataEventBundle)initWithBundleIdentifier:(void *)a3 bundleStartDate:(void *)a4 bundleEndDate:(void *)a5 bundleCreationDate:(void *)a6 bundleExpirationDate:(void *)a7 bundleInterfaceType:(int)a8 bundleSourceHealthExists:(id)a9 bundleSourcePhotoExists:(id)a10 bundleSourceProactiveExists:(id)a11 bundleSourceRoutineExists:(id)a12 bundlePromptLanguageFormat:(id)a13 bundlePromptToneID:(id)a14 bundlePromptParametersAvailability:(id)a15 bundlePlaceType:(int)a16 bundlePlaceUserType:(int)a17 bundleBaseEventCateory:(int)a18 bundleEventIDs:(id)a19 bundleActionType:(id)a20 backgroundActions:(id)a21 bundleIsFamilyIncluded:(id)a22 bundleTimeTag:(int)a23 isBundleResourceTypeUnknown:(id)a24 isBundleResourceTypeValueIncluded:(id)a25 isBundleResourceTypePhotoAssetsIncluded:(id)a26 isBundleResourceTypeMediaIncluded:(id)a27 isBundleResourceTypeWebLinkIncluded:(id)a28 isBundleResourceTypeInterenceTagIncluded:(id)a29 bundlEngagement:(int)a30 bundleVersion:(id)a31 rankingVersion:(id)a32 suggestionType:(int)a33 suggestionTimestamp:(id)a34 suggestionClientIdentifier:(id)a35 suggestionViewContainerName:(id)a36 suggestionViewVisibleTime:(id)a37 appEntryEventType:(int)a38 appEntryEventClientIdentifier:(id)a39 appEntryEventTimestamp:(id)a40 appEntryEventStartTime:(id)a41 appEntryEventEndTime:(id)a42 appEntryEventTotalCharacters:(id)a43 appEntryEventAddedCharacters:(id)a44 clientActivityEventType:(int)a45 clientActivityEventClientIdentifier:(id)a46 clientActivityEventTimestamp:(id)a47 suggestionIdentifier:(id)a48 photoSourceType:(int)a49 photoLibraryType:(int)a50 bundleSourcePostAnalyticsExists:(id)a51 bundleSourcePDExists:(id)a52 bundleSourceMotionExists:(id)a53 bundleSourceBooksExists:(id)a54 bundleSourceScreenTimeExists:(id)a55 gaPRArray:(id)a56 bundlePCount:(id)a57 ranking:(int)a58 labelConfidenceScore:(int)a59 timeCorrelationScore:(int)a60 callDuration:(int)a61 interactionCount:(int)a62 interactionType:(int)a63 callPlace:distanceFromHome:homeAvailability:workAvailability:bundleVisitMapItemSource:bundleVisitPlaceType:bundleVisitPlaceLabelGranularity:bundleIncludesAnomalousEvent:isFiltered:bundleSuperType:bundleSubType:isAggregatedAndSuppressed:summarizationGranularity:includedInSummaryBundleOnly:subBundleIDs:subSuggestionIDs:firstCreationDate:resources:persons:mainPlace:otherPlaces:photoTraits:clusterMetadata:outlierMetadata:bundleGoodnessScore:distinctnessScore:richnessScore:engagementScore:heuristicsScore:metadataForRank:;
- (BMMomentsEventDataEventBundle)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
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
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (uint64_t)initWithBundleIdentifier:(uint64_t)a3 bundleStartDate:(uint64_t)a4 bundleEndDate:(uint64_t)a5 bundleCreationDate:(uint64_t)a6 bundleExpirationDate:(uint64_t)a7 bundleInterfaceType:(unsigned int)a8 bundleSourceHealthExists:(id)a9 bundleSourcePhotoExists:(uint64_t)a10 bundleSourceProactiveExists:(id)a11 bundleSourceRoutineExists:(uint64_t)a12 bundlePromptLanguageFormat:(id)a13 bundlePromptToneID:(uint64_t)a14 bundlePromptParametersAvailability:(id)a15 bundlePlaceType:(uint64_t)a16 bundlePlaceUserType:(int)a17 bundleBaseEventCateory:(id)a18 bundleEventIDs:(uint64_t)a19 bundleActionType:(id)a20 backgroundActions:(id)a21 bundleIsFamilyIncluded:(int)a22 bundleTimeTag:(id)a23 isBundleResourceTypeUnknown:(uint64_t)a24 isBundleResourceTypeValueIncluded:(id)a25 isBundleResourceTypePhotoAssetsIncluded:(uint64_t)a26 isBundleResourceTypeMediaIncluded:(id)a27 isBundleResourceTypeWebLinkIncluded:(id)a28 isBundleResourceTypeInterenceTagIncluded:(int)a29 bundlEngagement:(id)a30 bundleVersion:(id)a31 rankingVersion:(int)a32 suggestionType:(id)a33 suggestionTimestamp:(uint64_t)a34 suggestionClientIdentifier:(id)a35 suggestionViewContainerName:(id)a36 suggestionViewVisibleTime:(int)a37 appEntryEventType:(id)a38 appEntryEventClientIdentifier:(uint64_t)a39 appEntryEventTimestamp:(uint64_t)a40 appEntryEventStartTime:(uint64_t)a41 appEntryEventEndTime:(id)a42 appEntryEventTotalCharacters:(id)a43 appEntryEventAddedCharacters:(int)a44 clientActivityEventType:(id)a45 clientActivityEventClientIdentifier:(uint64_t)a46 clientActivityEventTimestamp:(id)a47 suggestionIdentifier:(uint64_t)a48 photoSourceType:(id)a49 photoLibraryType:(uint64_t)a50 bundleSourcePostAnalyticsExists:(id)a51 bundleSourcePDExists:(uint64_t)a52 bundleSourceMotionExists:(id)a53 bundleSourceBooksExists:(uint64_t)a54 bundleSourceScreenTimeExists:(id)a55 gaPRArray:(uint64_t)a56 bundlePCount:(uint64_t)a57 ranking:(uint64_t)a58 labelConfidenceScore:(uint64_t)a59 timeCorrelationScore:(uint64_t)a60 callDuration:(uint64_t)a61 interactionCount:(uint64_t)a62 interactionType:callPlace:distanceFromHome:homeAvailability:workAvailability:bundleVisitMapItemSource:bundleVisitPlaceType:bundleVisitPlaceLabelGranularity:bundleIncludesAnomalousEvent:;
- (void)writeTo:(id)a3;
@end

@implementation BMMomentsEventDataEventBundle

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMomentsEventDataEventBundle *)self bundleIdentifier];
    v7 = [v5 bundleIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMomentsEventDataEventBundle *)self bundleIdentifier];
      v10 = [v5 bundleIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_312;
      }
    }

    v13 = [(BMMomentsEventDataEventBundle *)self bundleStartDate];
    v14 = [v5 bundleStartDate];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMMomentsEventDataEventBundle *)self bundleStartDate];
      v17 = [v5 bundleStartDate];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_312;
      }
    }

    v19 = [(BMMomentsEventDataEventBundle *)self bundleEndDate];
    v20 = [v5 bundleEndDate];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMMomentsEventDataEventBundle *)self bundleEndDate];
      v23 = [v5 bundleEndDate];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_312;
      }
    }

    v25 = [(BMMomentsEventDataEventBundle *)self bundleCreationDate];
    v26 = [v5 bundleCreationDate];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMMomentsEventDataEventBundle *)self bundleCreationDate];
      v29 = [v5 bundleCreationDate];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_312;
      }
    }

    v31 = [(BMMomentsEventDataEventBundle *)self bundleExpirationDate];
    v32 = [v5 bundleExpirationDate];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMMomentsEventDataEventBundle *)self bundleExpirationDate];
      v35 = [v5 bundleExpirationDate];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_312;
      }
    }

    v37 = [(BMMomentsEventDataEventBundle *)self bundleInterfaceType];
    if (v37 != [v5 bundleInterfaceType])
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

      v38 = [(BMMomentsEventDataEventBundle *)self bundleSourceHealthExists];
      if (v38 != [v5 bundleSourceHealthExists])
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

      v39 = [(BMMomentsEventDataEventBundle *)self bundleSourcePhotoExists];
      if (v39 != [v5 bundleSourcePhotoExists])
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

      v40 = [(BMMomentsEventDataEventBundle *)self bundleSourceProactiveExists];
      if (v40 != [v5 bundleSourceProactiveExists])
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

      v41 = [(BMMomentsEventDataEventBundle *)self bundleSourceRoutineExists];
      if (v41 != [v5 bundleSourceRoutineExists])
      {
        goto LABEL_312;
      }
    }

    v42 = [(BMMomentsEventDataEventBundle *)self bundlePromptLanguageFormat];
    v43 = [v5 bundlePromptLanguageFormat];
    v44 = v43;
    if (v42 == v43)
    {
    }

    else
    {
      v45 = [(BMMomentsEventDataEventBundle *)self bundlePromptLanguageFormat];
      v46 = [v5 bundlePromptLanguageFormat];
      v47 = [v45 isEqual:v46];

      if (!v47)
      {
        goto LABEL_312;
      }
    }

    v48 = [(BMMomentsEventDataEventBundle *)self bundlePromptToneID];
    v49 = [v5 bundlePromptToneID];
    v50 = v49;
    if (v48 == v49)
    {
    }

    else
    {
      v51 = [(BMMomentsEventDataEventBundle *)self bundlePromptToneID];
      v52 = [v5 bundlePromptToneID];
      v53 = [v51 isEqual:v52];

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

      v54 = [(BMMomentsEventDataEventBundle *)self bundlePromptParametersAvailability];
      if (v54 != [v5 bundlePromptParametersAvailability])
      {
        goto LABEL_312;
      }
    }

    v55 = [(BMMomentsEventDataEventBundle *)self bundlePlaceType];
    if (v55 != [v5 bundlePlaceType])
    {
      goto LABEL_312;
    }

    v56 = [(BMMomentsEventDataEventBundle *)self bundlePlaceUserType];
    if (v56 != [v5 bundlePlaceUserType])
    {
      goto LABEL_312;
    }

    v57 = [(BMMomentsEventDataEventBundle *)self bundleBaseEventCateory];
    if (v57 != [v5 bundleBaseEventCateory])
    {
      goto LABEL_312;
    }

    v58 = [(BMMomentsEventDataEventBundle *)self bundleEventIDs];
    v59 = [v5 bundleEventIDs];
    v60 = v59;
    if (v58 == v59)
    {
    }

    else
    {
      v61 = [(BMMomentsEventDataEventBundle *)self bundleEventIDs];
      v62 = [v5 bundleEventIDs];
      v63 = [v61 isEqual:v62];

      if (!v63)
      {
        goto LABEL_312;
      }
    }

    v64 = [(BMMomentsEventDataEventBundle *)self bundleActionType];
    v65 = [v5 bundleActionType];
    v66 = v65;
    if (v64 == v65)
    {
    }

    else
    {
      v67 = [(BMMomentsEventDataEventBundle *)self bundleActionType];
      v68 = [v5 bundleActionType];
      v69 = [v67 isEqual:v68];

      if (!v69)
      {
        goto LABEL_312;
      }
    }

    v70 = [(BMMomentsEventDataEventBundle *)self backgroundActions];
    v71 = [v5 backgroundActions];
    v72 = v71;
    if (v70 == v71)
    {
    }

    else
    {
      v73 = [(BMMomentsEventDataEventBundle *)self backgroundActions];
      v74 = [v5 backgroundActions];
      v75 = [v73 isEqual:v74];

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

      v76 = [(BMMomentsEventDataEventBundle *)self bundleIsFamilyIncluded];
      if (v76 != [v5 bundleIsFamilyIncluded])
      {
        goto LABEL_312;
      }
    }

    v77 = [(BMMomentsEventDataEventBundle *)self bundleTimeTag];
    if (v77 != [v5 bundleTimeTag])
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

      v78 = [(BMMomentsEventDataEventBundle *)self isBundleResourceTypeUnknown];
      if (v78 != [v5 isBundleResourceTypeUnknown])
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

      v79 = [(BMMomentsEventDataEventBundle *)self isBundleResourceTypeValueIncluded];
      if (v79 != [v5 isBundleResourceTypeValueIncluded])
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

      v80 = [(BMMomentsEventDataEventBundle *)self isBundleResourceTypePhotoAssetsIncluded];
      if (v80 != [v5 isBundleResourceTypePhotoAssetsIncluded])
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

      v81 = [(BMMomentsEventDataEventBundle *)self isBundleResourceTypeMediaIncluded];
      if (v81 != [v5 isBundleResourceTypeMediaIncluded])
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

      v82 = [(BMMomentsEventDataEventBundle *)self isBundleResourceTypeWebLinkIncluded];
      if (v82 != [v5 isBundleResourceTypeWebLinkIncluded])
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

      v83 = [(BMMomentsEventDataEventBundle *)self isBundleResourceTypeInterenceTagIncluded];
      if (v83 != [v5 isBundleResourceTypeInterenceTagIncluded])
      {
        goto LABEL_312;
      }
    }

    v84 = [(BMMomentsEventDataEventBundle *)self bundlEngagement];
    if (v84 != [v5 bundlEngagement])
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

    v91 = [(BMMomentsEventDataEventBundle *)self suggestionType];
    if (v91 != [v5 suggestionType])
    {
      goto LABEL_312;
    }

    v92 = [(BMMomentsEventDataEventBundle *)self suggestionTimestamp];
    v93 = [v5 suggestionTimestamp];
    v94 = v93;
    if (v92 == v93)
    {
    }

    else
    {
      v95 = [(BMMomentsEventDataEventBundle *)self suggestionTimestamp];
      v96 = [v5 suggestionTimestamp];
      v97 = [v95 isEqual:v96];

      if (!v97)
      {
        goto LABEL_312;
      }
    }

    v98 = [(BMMomentsEventDataEventBundle *)self suggestionClientIdentifier];
    v99 = [v5 suggestionClientIdentifier];
    v100 = v99;
    if (v98 == v99)
    {
    }

    else
    {
      v101 = [(BMMomentsEventDataEventBundle *)self suggestionClientIdentifier];
      v102 = [v5 suggestionClientIdentifier];
      v103 = [v101 isEqual:v102];

      if (!v103)
      {
        goto LABEL_312;
      }
    }

    v104 = [(BMMomentsEventDataEventBundle *)self suggestionViewContainerName];
    v105 = [v5 suggestionViewContainerName];
    v106 = v105;
    if (v104 == v105)
    {
    }

    else
    {
      v107 = [(BMMomentsEventDataEventBundle *)self suggestionViewContainerName];
      v108 = [v5 suggestionViewContainerName];
      v109 = [v107 isEqual:v108];

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

    v113 = [(BMMomentsEventDataEventBundle *)self appEntryEventType];
    if (v113 != [v5 appEntryEventType])
    {
      goto LABEL_312;
    }

    v114 = [(BMMomentsEventDataEventBundle *)self appEntryEventClientIdentifier];
    v115 = [v5 appEntryEventClientIdentifier];
    v116 = v115;
    if (v114 == v115)
    {
    }

    else
    {
      v117 = [(BMMomentsEventDataEventBundle *)self appEntryEventClientIdentifier];
      v118 = [v5 appEntryEventClientIdentifier];
      v119 = [v117 isEqual:v118];

      if (!v119)
      {
        goto LABEL_312;
      }
    }

    v120 = [(BMMomentsEventDataEventBundle *)self appEntryEventTimestamp];
    v121 = [v5 appEntryEventTimestamp];
    v122 = v121;
    if (v120 == v121)
    {
    }

    else
    {
      v123 = [(BMMomentsEventDataEventBundle *)self appEntryEventTimestamp];
      v124 = [v5 appEntryEventTimestamp];
      v125 = [v123 isEqual:v124];

      if (!v125)
      {
        goto LABEL_312;
      }
    }

    v126 = [(BMMomentsEventDataEventBundle *)self appEntryEventStartTime];
    v127 = [v5 appEntryEventStartTime];
    v128 = v127;
    if (v126 == v127)
    {
    }

    else
    {
      v129 = [(BMMomentsEventDataEventBundle *)self appEntryEventStartTime];
      v130 = [v5 appEntryEventStartTime];
      v131 = [v129 isEqual:v130];

      if (!v131)
      {
        goto LABEL_312;
      }
    }

    v132 = [(BMMomentsEventDataEventBundle *)self appEntryEventEndTime];
    v133 = [v5 appEntryEventEndTime];
    v134 = v133;
    if (v132 == v133)
    {
    }

    else
    {
      v135 = [(BMMomentsEventDataEventBundle *)self appEntryEventEndTime];
      v136 = [v5 appEntryEventEndTime];
      v137 = [v135 isEqual:v136];

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

      v138 = [(BMMomentsEventDataEventBundle *)self appEntryEventTotalCharacters];
      if (v138 != [v5 appEntryEventTotalCharacters])
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

      v139 = [(BMMomentsEventDataEventBundle *)self appEntryEventAddedCharacters];
      if (v139 != [v5 appEntryEventAddedCharacters])
      {
        goto LABEL_312;
      }
    }

    v140 = [(BMMomentsEventDataEventBundle *)self clientActivityEventType];
    if (v140 != [v5 clientActivityEventType])
    {
      goto LABEL_312;
    }

    v141 = [(BMMomentsEventDataEventBundle *)self clientActivityEventClientIdentifier];
    v142 = [v5 clientActivityEventClientIdentifier];
    v143 = v142;
    if (v141 == v142)
    {
    }

    else
    {
      v144 = [(BMMomentsEventDataEventBundle *)self clientActivityEventClientIdentifier];
      v145 = [v5 clientActivityEventClientIdentifier];
      v146 = [v144 isEqual:v145];

      if (!v146)
      {
        goto LABEL_312;
      }
    }

    v147 = [(BMMomentsEventDataEventBundle *)self clientActivityEventTimestamp];
    v148 = [v5 clientActivityEventTimestamp];
    v149 = v148;
    if (v147 == v148)
    {
    }

    else
    {
      v150 = [(BMMomentsEventDataEventBundle *)self clientActivityEventTimestamp];
      v151 = [v5 clientActivityEventTimestamp];
      v152 = [v150 isEqual:v151];

      if (!v152)
      {
        goto LABEL_312;
      }
    }

    v153 = [(BMMomentsEventDataEventBundle *)self suggestionIdentifier];
    v154 = [v5 suggestionIdentifier];
    v155 = v154;
    if (v153 == v154)
    {
    }

    else
    {
      v156 = [(BMMomentsEventDataEventBundle *)self suggestionIdentifier];
      v157 = [v5 suggestionIdentifier];
      v158 = [v156 isEqual:v157];

      if (!v158)
      {
        goto LABEL_312;
      }
    }

    v159 = [(BMMomentsEventDataEventBundle *)self photoSourceType];
    if (v159 != [v5 photoSourceType])
    {
      goto LABEL_312;
    }

    v160 = [(BMMomentsEventDataEventBundle *)self photoLibraryType];
    if (v160 != [v5 photoLibraryType])
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

      v161 = [(BMMomentsEventDataEventBundle *)self bundleSourcePostAnalyticsExists];
      if (v161 != [v5 bundleSourcePostAnalyticsExists])
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

      v162 = [(BMMomentsEventDataEventBundle *)self bundleSourcePDExists];
      if (v162 != [v5 bundleSourcePDExists])
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

      v163 = [(BMMomentsEventDataEventBundle *)self bundleSourceMotionExists];
      if (v163 != [v5 bundleSourceMotionExists])
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

      v164 = [(BMMomentsEventDataEventBundle *)self bundleSourceBooksExists];
      if (v164 != [v5 bundleSourceBooksExists])
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

      v165 = [(BMMomentsEventDataEventBundle *)self bundleSourceScreenTimeExists];
      if (v165 != [v5 bundleSourceScreenTimeExists])
      {
        goto LABEL_312;
      }
    }

    v166 = [(BMMomentsEventDataEventBundle *)self gaPRArray];
    v167 = [v5 gaPRArray];
    v168 = v167;
    if (v166 == v167)
    {
    }

    else
    {
      v169 = [(BMMomentsEventDataEventBundle *)self gaPRArray];
      v170 = [v5 gaPRArray];
      v171 = [v169 isEqual:v170];

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

      v172 = [(BMMomentsEventDataEventBundle *)self bundlePCount];
      if (v172 != [v5 bundlePCount])
      {
        goto LABEL_312;
      }
    }

    v173 = [(BMMomentsEventDataEventBundle *)self ranking];
    if (v173 != [v5 ranking])
    {
      goto LABEL_312;
    }

    v174 = [(BMMomentsEventDataEventBundle *)self labelConfidenceScore];
    if (v174 != [v5 labelConfidenceScore])
    {
      goto LABEL_312;
    }

    v175 = [(BMMomentsEventDataEventBundle *)self timeCorrelationScore];
    if (v175 != [v5 timeCorrelationScore])
    {
      goto LABEL_312;
    }

    v176 = [(BMMomentsEventDataEventBundle *)self callDuration];
    if (v176 != [v5 callDuration])
    {
      goto LABEL_312;
    }

    v177 = [(BMMomentsEventDataEventBundle *)self interactionCount];
    if (v177 != [v5 interactionCount])
    {
      goto LABEL_312;
    }

    v178 = [(BMMomentsEventDataEventBundle *)self interactionType];
    if (v178 != [v5 interactionType])
    {
      goto LABEL_312;
    }

    v179 = [(BMMomentsEventDataEventBundle *)self callPlace];
    if (v179 != [v5 callPlace])
    {
      goto LABEL_312;
    }

    v180 = [(BMMomentsEventDataEventBundle *)self distanceFromHome];
    if (v180 != [v5 distanceFromHome])
    {
      goto LABEL_312;
    }

    v181 = [(BMMomentsEventDataEventBundle *)self homeAvailability];
    if (v181 != [v5 homeAvailability])
    {
      goto LABEL_312;
    }

    v182 = [(BMMomentsEventDataEventBundle *)self workAvailability];
    if (v182 != [v5 workAvailability])
    {
      goto LABEL_312;
    }

    v183 = [(BMMomentsEventDataEventBundle *)self bundleVisitMapItemSource];
    if (v183 != [v5 bundleVisitMapItemSource])
    {
      goto LABEL_312;
    }

    v184 = [(BMMomentsEventDataEventBundle *)self bundleVisitPlaceType];
    if (v184 != [v5 bundleVisitPlaceType])
    {
      goto LABEL_312;
    }

    v185 = [(BMMomentsEventDataEventBundle *)self bundleVisitPlaceLabelGranularity];
    if (v185 != [v5 bundleVisitPlaceLabelGranularity])
    {
      goto LABEL_312;
    }

    v186 = [(BMMomentsEventDataEventBundle *)self bundleIncludesAnomalousEvent];
    if (v186 != [v5 bundleIncludesAnomalousEvent])
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

      v187 = [(BMMomentsEventDataEventBundle *)self isFiltered];
      if (v187 != [v5 isFiltered])
      {
        goto LABEL_312;
      }
    }

    v188 = [(BMMomentsEventDataEventBundle *)self bundleSuperType];
    if (v188 != [v5 bundleSuperType])
    {
      goto LABEL_312;
    }

    v189 = [(BMMomentsEventDataEventBundle *)self bundleSubType];
    if (v189 != [v5 bundleSubType])
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

      v190 = [(BMMomentsEventDataEventBundle *)self isAggregatedAndSuppressed];
      if (v190 != [v5 isAggregatedAndSuppressed])
      {
        goto LABEL_312;
      }
    }

    v191 = [(BMMomentsEventDataEventBundle *)self summarizationGranularity];
    if (v191 != [v5 summarizationGranularity])
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

      v192 = [(BMMomentsEventDataEventBundle *)self includedInSummaryBundleOnly];
      if (v192 != [v5 includedInSummaryBundleOnly])
      {
        goto LABEL_312;
      }
    }

    v193 = [(BMMomentsEventDataEventBundle *)self subBundleIDs];
    v194 = [v5 subBundleIDs];
    v195 = v194;
    if (v193 == v194)
    {
    }

    else
    {
      v196 = [(BMMomentsEventDataEventBundle *)self subBundleIDs];
      v197 = [v5 subBundleIDs];
      v198 = [v196 isEqual:v197];

      if (!v198)
      {
        goto LABEL_312;
      }
    }

    v199 = [(BMMomentsEventDataEventBundle *)self subSuggestionIDs];
    v200 = [v5 subSuggestionIDs];
    v201 = v200;
    if (v199 == v200)
    {
    }

    else
    {
      v202 = [(BMMomentsEventDataEventBundle *)self subSuggestionIDs];
      v203 = [v5 subSuggestionIDs];
      v204 = [v202 isEqual:v203];

      if (!v204)
      {
        goto LABEL_312;
      }
    }

    v205 = [(BMMomentsEventDataEventBundle *)self firstCreationDate];
    v206 = [v5 firstCreationDate];
    v207 = v206;
    if (v205 == v206)
    {
    }

    else
    {
      v208 = [(BMMomentsEventDataEventBundle *)self firstCreationDate];
      v209 = [v5 firstCreationDate];
      v210 = [v208 isEqual:v209];

      if (!v210)
      {
        goto LABEL_312;
      }
    }

    v211 = [(BMMomentsEventDataEventBundle *)self resources];
    v212 = [v5 resources];
    v213 = v212;
    if (v211 == v212)
    {
    }

    else
    {
      v214 = [(BMMomentsEventDataEventBundle *)self resources];
      v215 = [v5 resources];
      v216 = [v214 isEqual:v215];

      if (!v216)
      {
        goto LABEL_312;
      }
    }

    v217 = [(BMMomentsEventDataEventBundle *)self persons];
    v218 = [v5 persons];
    v219 = v218;
    if (v217 == v218)
    {
    }

    else
    {
      v220 = [(BMMomentsEventDataEventBundle *)self persons];
      v221 = [v5 persons];
      v222 = [v220 isEqual:v221];

      if (!v222)
      {
        goto LABEL_312;
      }
    }

    v223 = [(BMMomentsEventDataEventBundle *)self mainPlace];
    v224 = [v5 mainPlace];
    v225 = v224;
    if (v223 == v224)
    {
    }

    else
    {
      v226 = [(BMMomentsEventDataEventBundle *)self mainPlace];
      v227 = [v5 mainPlace];
      v228 = [v226 isEqual:v227];

      if (!v228)
      {
        goto LABEL_312;
      }
    }

    v229 = [(BMMomentsEventDataEventBundle *)self otherPlaces];
    v230 = [v5 otherPlaces];
    v231 = v230;
    if (v229 == v230)
    {
    }

    else
    {
      v232 = [(BMMomentsEventDataEventBundle *)self otherPlaces];
      v233 = [v5 otherPlaces];
      v234 = [v232 isEqual:v233];

      if (!v234)
      {
        goto LABEL_312;
      }
    }

    v235 = [(BMMomentsEventDataEventBundle *)self photoTraits];
    v236 = [v5 photoTraits];
    v237 = v236;
    if (v235 == v236)
    {
    }

    else
    {
      v238 = [(BMMomentsEventDataEventBundle *)self photoTraits];
      v239 = [v5 photoTraits];
      v240 = [v238 isEqual:v239];

      if (!v240)
      {
        goto LABEL_312;
      }
    }

    v241 = [(BMMomentsEventDataEventBundle *)self clusterMetadata];
    v242 = [v5 clusterMetadata];
    v243 = v242;
    if (v241 == v242)
    {
    }

    else
    {
      v244 = [(BMMomentsEventDataEventBundle *)self clusterMetadata];
      v245 = [v5 clusterMetadata];
      v246 = [v244 isEqual:v245];

      if (!v246)
      {
        goto LABEL_312;
      }
    }

    v247 = [(BMMomentsEventDataEventBundle *)self outlierMetadata];
    v248 = [v5 outlierMetadata];
    v249 = v248;
    if (v247 == v248)
    {
    }

    else
    {
      v250 = [(BMMomentsEventDataEventBundle *)self outlierMetadata];
      v251 = [v5 outlierMetadata];
      v252 = [v250 isEqual:v251];

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
              v268 = [(BMMomentsEventDataEventBundle *)self metadataForRank];
              v269 = [v5 metadataForRank];
              if (v268 == v269)
              {
                v12 = 1;
              }

              else
              {
                v270 = [(BMMomentsEventDataEventBundle *)self metadataForRank];
                v271 = [v5 metadataForRank];
                v12 = [v270 isEqual:v271];
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
  v3 = [(BMMomentsEventDataEventBundle *)self bundleIdentifier];
  v4 = [(BMMomentsEventDataEventBundle *)self bundleStartDate];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMMomentsEventDataEventBundle *)self bundleStartDate];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMMomentsEventDataEventBundle *)self bundleEndDate];
  if (v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [(BMMomentsEventDataEventBundle *)self bundleEndDate];
    [v10 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(BMMomentsEventDataEventBundle *)self bundleCreationDate];
  if (v12)
  {
    v13 = MEMORY[0x1E696AD98];
    v14 = [(BMMomentsEventDataEventBundle *)self bundleCreationDate];
    [v14 timeIntervalSince1970];
    v15 = [v13 numberWithDouble:?];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(BMMomentsEventDataEventBundle *)self bundleExpirationDate];
  if (v16)
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [(BMMomentsEventDataEventBundle *)self bundleExpirationDate];
    [v18 timeIntervalSince1970];
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

  v323 = [(BMMomentsEventDataEventBundle *)self bundlePromptLanguageFormat];
  v322 = [(BMMomentsEventDataEventBundle *)self bundlePromptToneID];
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
  v317 = [(BMMomentsEventDataEventBundle *)self _bundleEventIDsJSONArray];
  v20 = [(BMMomentsEventDataEventBundle *)self bundleActionType];
  v316 = [v20 jsonDictionary];

  v315 = [(BMMomentsEventDataEventBundle *)self _backgroundActionsJSONArray];
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
  v25 = [(BMMomentsEventDataEventBundle *)self suggestionTimestamp];
  if (v25)
  {
    v26 = MEMORY[0x1E696AD98];
    v27 = [(BMMomentsEventDataEventBundle *)self suggestionTimestamp];
    [v27 timeIntervalSince1970];
    v302 = [v26 numberWithDouble:?];
  }

  else
  {
    v302 = 0;
  }

  v301 = [(BMMomentsEventDataEventBundle *)self suggestionClientIdentifier];
  v300 = [(BMMomentsEventDataEventBundle *)self suggestionViewContainerName];
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
  v297 = [(BMMomentsEventDataEventBundle *)self appEntryEventClientIdentifier];
  v30 = [(BMMomentsEventDataEventBundle *)self appEntryEventTimestamp];
  if (v30)
  {
    v31 = MEMORY[0x1E696AD98];
    v32 = [(BMMomentsEventDataEventBundle *)self appEntryEventTimestamp];
    [v32 timeIntervalSince1970];
    v296 = [v31 numberWithDouble:?];
  }

  else
  {
    v296 = 0;
  }

  v33 = [(BMMomentsEventDataEventBundle *)self appEntryEventStartTime];
  if (v33)
  {
    v34 = MEMORY[0x1E696AD98];
    v35 = [(BMMomentsEventDataEventBundle *)self appEntryEventStartTime];
    [v35 timeIntervalSince1970];
    v295 = [v34 numberWithDouble:?];
  }

  else
  {
    v295 = 0;
  }

  v36 = [(BMMomentsEventDataEventBundle *)self appEntryEventEndTime];
  if (v36)
  {
    v37 = MEMORY[0x1E696AD98];
    v38 = [(BMMomentsEventDataEventBundle *)self appEntryEventEndTime];
    [v38 timeIntervalSince1970];
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
  v290 = [(BMMomentsEventDataEventBundle *)self clientActivityEventClientIdentifier];
  v39 = [(BMMomentsEventDataEventBundle *)self clientActivityEventTimestamp];
  if (v39)
  {
    v40 = MEMORY[0x1E696AD98];
    v41 = [(BMMomentsEventDataEventBundle *)self clientActivityEventTimestamp];
    [v41 timeIntervalSince1970];
    v289 = [v40 numberWithDouble:?];
  }

  else
  {
    v289 = 0;
  }

  v288 = [(BMMomentsEventDataEventBundle *)self suggestionIdentifier];
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

  v280 = [(BMMomentsEventDataEventBundle *)self _gaPRArrayJSONArray];
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

  v258 = [(BMMomentsEventDataEventBundle *)self _subBundleIDsJSONArray];
  v257 = [(BMMomentsEventDataEventBundle *)self _subSuggestionIDsJSONArray];
  v42 = [(BMMomentsEventDataEventBundle *)self firstCreationDate];
  if (v42)
  {
    v43 = MEMORY[0x1E696AD98];
    v44 = [(BMMomentsEventDataEventBundle *)self firstCreationDate];
    [v44 timeIntervalSince1970];
    v256 = [v43 numberWithDouble:?];
  }

  else
  {
    v256 = 0;
  }

  v255 = [(BMMomentsEventDataEventBundle *)self _resourcesJSONArray];
  v254 = [(BMMomentsEventDataEventBundle *)self _personsJSONArray];
  v45 = [(BMMomentsEventDataEventBundle *)self mainPlace];
  v253 = [v45 jsonDictionary];

  v252 = [(BMMomentsEventDataEventBundle *)self _otherPlacesJSONArray];
  v251 = [(BMMomentsEventDataEventBundle *)self _photoTraitsJSONArray];
  v46 = [(BMMomentsEventDataEventBundle *)self clusterMetadata];
  v250 = [v46 jsonDictionary];

  v47 = [(BMMomentsEventDataEventBundle *)self outlierMetadata];
  v249 = [v47 jsonDictionary];

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

  v58 = [(BMMomentsEventDataEventBundle *)self metadataForRank];
  v243 = [v58 jsonDictionary];

  v329[0] = @"bundleIdentifier";
  v59 = v3;
  if (!v3)
  {
    v59 = [MEMORY[0x1E695DFB0] null];
  }

  v233 = v59;
  v330[0] = v59;
  v329[1] = @"bundleStartDate";
  v60 = v7;
  if (!v7)
  {
    v60 = [MEMORY[0x1E695DFB0] null];
  }

  v232 = v60;
  v330[1] = v60;
  v329[2] = @"bundleEndDate";
  v61 = v11;
  if (!v11)
  {
    v61 = [MEMORY[0x1E695DFB0] null];
  }

  v231 = v61;
  v330[2] = v61;
  v329[3] = @"bundleCreationDate";
  v62 = v15;
  if (!v15)
  {
    v62 = [MEMORY[0x1E695DFB0] null];
  }

  v230 = v62;
  v330[3] = v62;
  v329[4] = @"bundleExpirationDate";
  v63 = v19;
  if (!v19)
  {
    v63 = [MEMORY[0x1E695DFB0] null];
  }

  v229 = v63;
  v330[4] = v63;
  v329[5] = @"bundleInterfaceType";
  v64 = v328;
  if (!v328)
  {
    v64 = [MEMORY[0x1E695DFB0] null];
  }

  v330[5] = v64;
  v329[6] = @"bundleSourceHealthExists";
  v65 = v327;
  if (!v327)
  {
    v65 = [MEMORY[0x1E695DFB0] null];
  }

  v330[6] = v65;
  v329[7] = @"bundleSourcePhotoExists";
  v66 = v326;
  if (!v326)
  {
    v66 = [MEMORY[0x1E695DFB0] null];
  }

  v330[7] = v66;
  v329[8] = @"bundleSourceProactiveExists";
  v67 = v325;
  if (!v325)
  {
    v67 = [MEMORY[0x1E695DFB0] null];
  }

  v330[8] = v67;
  v329[9] = @"bundleSourceRoutineExists";
  v68 = v324;
  if (!v324)
  {
    v68 = [MEMORY[0x1E695DFB0] null];
  }

  v238 = v68;
  v330[9] = v68;
  v329[10] = @"bundlePromptLanguageFormat";
  v69 = v323;
  if (!v323)
  {
    v69 = [MEMORY[0x1E695DFB0] null];
  }

  v237 = v69;
  v330[10] = v69;
  v329[11] = @"bundlePromptToneID";
  v70 = v322;
  if (!v322)
  {
    v70 = [MEMORY[0x1E695DFB0] null];
  }

  v236 = v70;
  v330[11] = v70;
  v329[12] = @"bundlePromptParametersAvailability";
  v71 = v321;
  if (!v321)
  {
    v71 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = v3;
  v235 = v71;
  v330[12] = v71;
  v329[13] = @"bundlePlaceType";
  v73 = v320;
  if (!v320)
  {
    v73 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v73;
  v330[13] = v73;
  v329[14] = @"bundlePlaceUserType";
  v75 = v319;
  if (!v319)
  {
    v75 = [MEMORY[0x1E695DFB0] null];
  }

  v225 = v75;
  v330[14] = v75;
  v329[15] = @"bundleBaseEventCateory";
  v76 = v318;
  if (!v318)
  {
    v76 = [MEMORY[0x1E695DFB0] null];
  }

  v224 = v76;
  v330[15] = v76;
  v329[16] = @"bundleEventIDs";
  v77 = v317;
  if (!v317)
  {
    v77 = [MEMORY[0x1E695DFB0] null];
  }

  v223 = v77;
  v330[16] = v77;
  v329[17] = @"bundleActionType";
  v78 = v316;
  if (!v316)
  {
    v78 = [MEMORY[0x1E695DFB0] null];
  }

  v222 = v78;
  v330[17] = v78;
  v329[18] = @"backgroundActions";
  v79 = v315;
  if (!v315)
  {
    v79 = [MEMORY[0x1E695DFB0] null];
  }

  v221 = v79;
  v330[18] = v79;
  v329[19] = @"bundleIsFamilyIncluded";
  v80 = v314;
  if (!v314)
  {
    v80 = [MEMORY[0x1E695DFB0] null];
  }

  v220 = v80;
  v330[19] = v80;
  v329[20] = @"bundleTimeTag";
  v81 = v313;
  if (!v313)
  {
    v81 = [MEMORY[0x1E695DFB0] null];
  }

  v219 = v81;
  v330[20] = v81;
  v329[21] = @"isBundleResourceTypeUnknown";
  v82 = v312;
  if (!v312)
  {
    v82 = [MEMORY[0x1E695DFB0] null];
  }

  v218 = v82;
  v330[21] = v82;
  v329[22] = @"isBundleResourceTypeValueIncluded";
  v83 = v311;
  if (!v311)
  {
    v83 = [MEMORY[0x1E695DFB0] null];
  }

  v217 = v83;
  v330[22] = v83;
  v329[23] = @"isBundleResourceTypePhotoAssetsIncluded";
  v84 = v310;
  if (!v310)
  {
    v84 = [MEMORY[0x1E695DFB0] null];
  }

  v216 = v84;
  v330[23] = v84;
  v329[24] = @"isBundleResourceTypeMediaIncluded";
  v85 = v309;
  if (!v309)
  {
    v85 = [MEMORY[0x1E695DFB0] null];
  }

  v215 = v85;
  v330[24] = v85;
  v329[25] = @"isBundleResourceTypeWebLinkIncluded";
  v86 = v308;
  if (!v308)
  {
    v86 = [MEMORY[0x1E695DFB0] null];
  }

  v214 = v86;
  v330[25] = v86;
  v329[26] = @"isBundleResourceTypeInterenceTagIncluded";
  v87 = v307;
  if (!v307)
  {
    v87 = [MEMORY[0x1E695DFB0] null];
  }

  v213 = v87;
  v330[26] = v87;
  v329[27] = @"bundlEngagement";
  v88 = v306;
  if (!v306)
  {
    v88 = [MEMORY[0x1E695DFB0] null];
  }

  v212 = v88;
  v330[27] = v88;
  v329[28] = @"bundleVersion";
  v89 = v305;
  if (!v305)
  {
    v89 = [MEMORY[0x1E695DFB0] null];
  }

  v211 = v89;
  v330[28] = v89;
  v329[29] = @"rankingVersion";
  v90 = v304;
  if (!v304)
  {
    v90 = [MEMORY[0x1E695DFB0] null];
  }

  v210 = v90;
  v330[29] = v90;
  v329[30] = @"suggestionType";
  v91 = v303;
  if (!v303)
  {
    v91 = [MEMORY[0x1E695DFB0] null];
  }

  v209 = v91;
  v330[30] = v91;
  v329[31] = @"suggestionTimestamp";
  v92 = v302;
  if (!v302)
  {
    v92 = [MEMORY[0x1E695DFB0] null];
  }

  v208 = v92;
  v330[31] = v92;
  v329[32] = @"suggestionClientIdentifier";
  v93 = v301;
  if (!v301)
  {
    v93 = [MEMORY[0x1E695DFB0] null];
  }

  v207 = v93;
  v330[32] = v93;
  v329[33] = @"suggestionViewContainerName";
  v94 = v300;
  if (!v300)
  {
    v94 = [MEMORY[0x1E695DFB0] null];
  }

  v206 = v94;
  v330[33] = v94;
  v329[34] = @"suggestionViewVisibleTime";
  v95 = v299;
  if (!v299)
  {
    v95 = [MEMORY[0x1E695DFB0] null];
  }

  v205 = v95;
  v330[34] = v95;
  v329[35] = @"appEntryEventType";
  v96 = v298;
  if (!v298)
  {
    v96 = [MEMORY[0x1E695DFB0] null];
  }

  v204 = v96;
  v330[35] = v96;
  v329[36] = @"appEntryEventClientIdentifier";
  v97 = v297;
  if (!v297)
  {
    v97 = [MEMORY[0x1E695DFB0] null];
  }

  v203 = v97;
  v330[36] = v97;
  v329[37] = @"appEntryEventTimestamp";
  v98 = v296;
  if (!v296)
  {
    v98 = [MEMORY[0x1E695DFB0] null];
  }

  v202 = v98;
  v330[37] = v98;
  v329[38] = @"appEntryEventStartTime";
  v99 = v295;
  if (!v295)
  {
    v99 = [MEMORY[0x1E695DFB0] null];
  }

  v201 = v99;
  v330[38] = v99;
  v329[39] = @"appEntryEventEndTime";
  v100 = v294;
  if (!v294)
  {
    v100 = [MEMORY[0x1E695DFB0] null];
  }

  v200 = v100;
  v330[39] = v100;
  v329[40] = @"appEntryEventTotalCharacters";
  v101 = v293;
  if (!v293)
  {
    v101 = [MEMORY[0x1E695DFB0] null];
  }

  v199 = v101;
  v330[40] = v101;
  v329[41] = @"appEntryEventAddedCharacters";
  v102 = v292;
  if (!v292)
  {
    v102 = [MEMORY[0x1E695DFB0] null];
  }

  v198 = v102;
  v330[41] = v102;
  v329[42] = @"clientActivityEventType";
  v103 = v291;
  if (!v291)
  {
    v103 = [MEMORY[0x1E695DFB0] null];
  }

  v197 = v103;
  v330[42] = v103;
  v329[43] = @"clientActivityEventClientIdentifier";
  v104 = v290;
  if (!v290)
  {
    v104 = [MEMORY[0x1E695DFB0] null];
  }

  v196 = v104;
  v330[43] = v104;
  v329[44] = @"clientActivityEventTimestamp";
  v105 = v289;
  if (!v289)
  {
    v105 = [MEMORY[0x1E695DFB0] null];
  }

  v195 = v105;
  v330[44] = v105;
  v329[45] = @"suggestionIdentifier";
  v106 = v288;
  if (!v288)
  {
    v106 = [MEMORY[0x1E695DFB0] null];
  }

  v194 = v106;
  v330[45] = v106;
  v329[46] = @"photoSourceType";
  v107 = v287;
  if (!v287)
  {
    v107 = [MEMORY[0x1E695DFB0] null];
  }

  v193 = v107;
  v330[46] = v107;
  v329[47] = @"photoLibraryType";
  v108 = v286;
  if (!v286)
  {
    v108 = [MEMORY[0x1E695DFB0] null];
  }

  v192 = v108;
  v330[47] = v108;
  v329[48] = @"bundleSourcePostAnalyticsExists";
  v109 = v285;
  if (!v285)
  {
    v109 = [MEMORY[0x1E695DFB0] null];
  }

  v191 = v109;
  v330[48] = v109;
  v329[49] = @"bundleSourcePDExists";
  v110 = v284;
  if (!v284)
  {
    v110 = [MEMORY[0x1E695DFB0] null];
  }

  v190 = v110;
  v330[49] = v110;
  v329[50] = @"bundleSourceMotionExists";
  v111 = v283;
  if (!v283)
  {
    v111 = [MEMORY[0x1E695DFB0] null];
  }

  v189 = v111;
  v330[50] = v111;
  v329[51] = @"bundleSourceBooksExists";
  v112 = v282;
  if (!v282)
  {
    v112 = [MEMORY[0x1E695DFB0] null];
  }

  v188 = v112;
  v330[51] = v112;
  v329[52] = @"bundleSourceScreenTimeExists";
  v113 = v281;
  if (!v281)
  {
    v113 = [MEMORY[0x1E695DFB0] null];
  }

  v187 = v113;
  v330[52] = v113;
  v329[53] = @"gaPRArray";
  v114 = v280;
  if (!v280)
  {
    v114 = [MEMORY[0x1E695DFB0] null];
  }

  v186 = v114;
  v330[53] = v114;
  v329[54] = @"bundlePCount";
  v115 = v279;
  if (!v279)
  {
    v115 = [MEMORY[0x1E695DFB0] null];
  }

  v185 = v115;
  v330[54] = v115;
  v329[55] = @"ranking";
  v116 = v278;
  if (!v278)
  {
    v116 = [MEMORY[0x1E695DFB0] null];
  }

  v184 = v116;
  v330[55] = v116;
  v329[56] = @"labelConfidenceScore";
  v117 = v277;
  if (!v277)
  {
    v117 = [MEMORY[0x1E695DFB0] null];
  }

  v183 = v117;
  v330[56] = v117;
  v329[57] = @"timeCorrelationScore";
  v118 = v276;
  if (!v276)
  {
    v118 = [MEMORY[0x1E695DFB0] null];
  }

  v182 = v118;
  v330[57] = v118;
  v329[58] = @"callDuration";
  v119 = v275;
  if (!v275)
  {
    v119 = [MEMORY[0x1E695DFB0] null];
  }

  v181 = v119;
  v330[58] = v119;
  v329[59] = @"interactionCount";
  v120 = v274;
  if (!v274)
  {
    v120 = [MEMORY[0x1E695DFB0] null];
  }

  v180 = v120;
  v330[59] = v120;
  v329[60] = @"interactionType";
  v121 = v273;
  if (!v273)
  {
    v121 = [MEMORY[0x1E695DFB0] null];
  }

  v179 = v121;
  v330[60] = v121;
  v329[61] = @"callPlace";
  v122 = v272;
  if (!v272)
  {
    v122 = [MEMORY[0x1E695DFB0] null];
  }

  v178 = v122;
  v330[61] = v122;
  v329[62] = @"distanceFromHome";
  v123 = v271;
  if (!v271)
  {
    v123 = [MEMORY[0x1E695DFB0] null];
  }

  v177 = v123;
  v330[62] = v123;
  v329[63] = @"homeAvailability";
  v124 = v270;
  if (!v270)
  {
    v124 = [MEMORY[0x1E695DFB0] null];
  }

  v176 = v124;
  v330[63] = v124;
  v329[64] = @"workAvailability";
  v125 = v269;
  if (!v269)
  {
    v125 = [MEMORY[0x1E695DFB0] null];
  }

  v175 = v125;
  v330[64] = v125;
  v329[65] = @"bundleVisitMapItemSource";
  v126 = v268;
  if (!v268)
  {
    v126 = [MEMORY[0x1E695DFB0] null];
  }

  v174 = v126;
  v330[65] = v126;
  v329[66] = @"bundleVisitPlaceType";
  v127 = v267;
  if (!v267)
  {
    v127 = [MEMORY[0x1E695DFB0] null];
  }

  v173 = v127;
  v330[66] = v127;
  v329[67] = @"bundleVisitPlaceLabelGranularity";
  v128 = v266;
  if (!v266)
  {
    v128 = [MEMORY[0x1E695DFB0] null];
  }

  v172 = v128;
  v330[67] = v128;
  v329[68] = @"bundleIncludesAnomalousEvent";
  v129 = v265;
  if (!v265)
  {
    v129 = [MEMORY[0x1E695DFB0] null];
  }

  v171 = v129;
  v330[68] = v129;
  v329[69] = @"isFiltered";
  v130 = v264;
  if (!v264)
  {
    v130 = [MEMORY[0x1E695DFB0] null];
  }

  v170 = v130;
  v330[69] = v130;
  v329[70] = @"bundleSuperType";
  v131 = v263;
  if (!v263)
  {
    v131 = [MEMORY[0x1E695DFB0] null];
  }

  v169 = v131;
  v330[70] = v131;
  v329[71] = @"bundleSubType";
  v132 = v262;
  if (!v262)
  {
    v132 = [MEMORY[0x1E695DFB0] null];
  }

  v168 = v132;
  v330[71] = v132;
  v329[72] = @"isAggregatedAndSuppressed";
  v133 = v261;
  if (!v261)
  {
    v133 = [MEMORY[0x1E695DFB0] null];
  }

  v167 = v133;
  v330[72] = v133;
  v329[73] = @"summarizationGranularity";
  v134 = v260;
  if (!v260)
  {
    v134 = [MEMORY[0x1E695DFB0] null];
  }

  v166 = v134;
  v330[73] = v134;
  v329[74] = @"includedInSummaryBundleOnly";
  v135 = v259;
  if (!v259)
  {
    v135 = [MEMORY[0x1E695DFB0] null];
  }

  v165 = v135;
  v330[74] = v135;
  v329[75] = @"subBundleIDs";
  v136 = v258;
  if (!v258)
  {
    v136 = [MEMORY[0x1E695DFB0] null];
  }

  v164 = v136;
  v330[75] = v136;
  v329[76] = @"subSuggestionIDs";
  v137 = v257;
  if (!v257)
  {
    v137 = [MEMORY[0x1E695DFB0] null];
  }

  v163 = v137;
  v330[76] = v137;
  v329[77] = @"firstCreationDate";
  v138 = v256;
  if (!v256)
  {
    v138 = [MEMORY[0x1E695DFB0] null];
  }

  v162 = v138;
  v330[77] = v138;
  v329[78] = @"resources";
  v139 = v255;
  if (!v255)
  {
    v139 = [MEMORY[0x1E695DFB0] null];
  }

  v161 = v139;
  v330[78] = v139;
  v329[79] = @"persons";
  v140 = v254;
  if (!v254)
  {
    v140 = [MEMORY[0x1E695DFB0] null];
  }

  v160 = v140;
  v330[79] = v140;
  v329[80] = @"mainPlace";
  v141 = v253;
  if (!v253)
  {
    v141 = [MEMORY[0x1E695DFB0] null];
  }

  v239 = v19;
  v159 = v141;
  v330[80] = v141;
  v329[81] = @"otherPlaces";
  v142 = v252;
  if (!v252)
  {
    v142 = [MEMORY[0x1E695DFB0] null];
  }

  v240 = v15;
  v158 = v142;
  v330[81] = v142;
  v329[82] = @"photoTraits";
  v143 = v251;
  if (!v251)
  {
    v143 = [MEMORY[0x1E695DFB0] null];
  }

  v242 = v7;
  v157 = v143;
  v330[82] = v143;
  v329[83] = @"clusterMetadata";
  v144 = v250;
  if (!v250)
  {
    v144 = [MEMORY[0x1E695DFB0] null];
  }

  v241 = v11;
  v156 = v144;
  v330[83] = v144;
  v329[84] = @"outlierMetadata";
  v145 = v249;
  if (!v249)
  {
    v145 = [MEMORY[0x1E695DFB0] null];
  }

  v227 = v65;
  v330[84] = v145;
  v329[85] = @"bundleGoodnessScore";
  v146 = v248;
  if (!v248)
  {
    v146 = [MEMORY[0x1E695DFB0] null];
  }

  v228 = v64;
  v330[85] = v146;
  v329[86] = @"distinctnessScore";
  v147 = v247;
  if (!v247)
  {
    v147 = [MEMORY[0x1E695DFB0] null];
  }

  v226 = v66;
  v330[86] = v147;
  v329[87] = @"richnessScore";
  v148 = v246;
  if (!v246)
  {
    v148 = [MEMORY[0x1E695DFB0] null];
  }

  v149 = v67;
  v330[87] = v148;
  v329[88] = @"engagementScore";
  v150 = v245;
  if (!v245)
  {
    v150 = [MEMORY[0x1E695DFB0] null];
  }

  v330[88] = v150;
  v329[89] = @"heuristicsScore";
  v151 = v244;
  if (!v244)
  {
    v151 = [MEMORY[0x1E695DFB0] null];
  }

  v330[89] = v151;
  v329[90] = @"metadataForRank";
  v152 = v243;
  if (!v243)
  {
    v152 = [MEMORY[0x1E695DFB0] null];
  }

  v330[90] = v152;
  v234 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v330 forKeys:v329 count:91];
  if (!v243)
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

  if (!v249)
  {

    v153 = v74;
  }

  if (!v250)
  {

    v153 = v74;
  }

  if (!v251)
  {

    v153 = v74;
  }

  if (!v252)
  {

    v153 = v74;
  }

  if (!v253)
  {

    v153 = v74;
  }

  if (!v254)
  {

    v153 = v74;
  }

  if (!v255)
  {

    v153 = v74;
  }

  if (!v256)
  {

    v153 = v74;
  }

  if (!v257)
  {

    v153 = v74;
  }

  if (!v258)
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

  if (!v280)
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

  if (!v288)
  {

    v153 = v74;
  }

  if (!v289)
  {

    v153 = v74;
  }

  if (!v290)
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

  if (!v297)
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

  if (!v300)
  {

    v153 = v74;
  }

  if (!v301)
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

  if (!v315)
  {

    v153 = v74;
  }

  if (!v316)
  {

    v153 = v74;
  }

  if (!v317)
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

  if (!v322)
  {
  }

  if (!v323)
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
  v4 = [(BMMomentsEventDataEventBundle *)self photoTraits];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(BMMomentsEventDataEventBundle *)self otherPlaces];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(BMMomentsEventDataEventBundle *)self persons];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(BMMomentsEventDataEventBundle *)self resources];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(BMMomentsEventDataEventBundle *)self subSuggestionIDs];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(BMMomentsEventDataEventBundle *)self subBundleIDs];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(BMMomentsEventDataEventBundle *)self gaPRArray];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(BMMomentsEventDataEventBundle *)self backgroundActions];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(BMMomentsEventDataEventBundle *)self bundleEventIDs];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMomentsEventDataEventBundle)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v1161[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"bundleIdentifier"];
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
    v9 = [v6 objectForKeyedSubscript:@"bundleStartDate"];
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
      v19 = [v6 objectForKeyedSubscript:@"bundleEndDate"];
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
        v24 = [v6 objectForKeyedSubscript:@"bundleCreationDate"];
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
          v29 = [v6 objectForKeyedSubscript:@"bundleExpirationDate"];
          v886 = v29;
          v870 = self;
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
            v34 = [v6 objectForKeyedSubscript:@"bundleInterfaceType"];
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
              v39 = [v6 objectForKeyedSubscript:@"bundleSourceHealthExists"];
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
                v40 = [v6 objectForKeyedSubscript:@"bundleSourcePhotoExists"];
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
                  v42 = [v6 objectForKeyedSubscript:@"bundleSourceProactiveExists"];
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
                    v44 = [v6 objectForKeyedSubscript:@"bundleSourceRoutineExists"];
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
                      v46 = [v6 objectForKeyedSubscript:@"bundlePromptLanguageFormat"];
                      v854 = v10;
                      v860 = v46;
                      v856 = a4;
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
                        v48 = [v6 objectForKeyedSubscript:@"bundlePromptToneID"];
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
                          v50 = [v6 objectForKeyedSubscript:@"bundlePromptParametersAvailability"];
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
                            v52 = [v6 objectForKeyedSubscript:@"bundlePlaceType"];
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
                              v125 = [v6 objectForKeyedSubscript:@"bundlePlaceUserType"];
                              v848 = v125;
                              if (!v125 || (v126 = v125, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v849 = 0;
LABEL_135:
                                v140 = [v6 objectForKeyedSubscript:@"bundleBaseEventCateory"];
                                v846 = v6;
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
                                      if (v856)
                                      {
                                        v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v196 = *MEMORY[0x1E698F240];
                                        v1130 = *MEMORY[0x1E696A578];
                                        v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleBaseEventCateory"];
                                        v1131 = v143;
                                        v881 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1131 forKeys:&v1130 count:1];
                                        v845 = 0;
                                        v873 = 0;
                                        *v856 = [v195 initWithDomain:v196 code:2 userInfo:?];
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

                                v143 = [v6 objectForKeyedSubscript:@"bundleEventIDs"];
                                v144 = [MEMORY[0x1E695DFB0] null];
                                v145 = [v143 isEqual:v144];

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
                                      if (v856)
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
                                        *v856 = [v165 initWithDomain:v169 code:2 userInfo:v168];
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
                                            if (v856)
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
                                              *v856 = [v160 initWithDomain:v161 code:2 userInfo:?];
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
                                            if (v856)
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
                                        v6 = v846;
                                        v29 = v886;
                                        v98 = v858;
                                      }

                                      while (v147);
                                    }

                                    v143 = obj;

                                    v152 = [v6 objectForKeyedSubscript:@"bundleActionType"];
                                    v841 = v152;
                                    if (!v152 || (v153 = v152, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v840 = 0;
LABEL_163:
                                      v36 = v844;
                                      v154 = [v6 objectForKeyedSubscript:@"backgroundActions"];
                                      v155 = [MEMORY[0x1E695DFB0] null];
                                      v156 = [v154 isEqual:v155];

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
                                          if (v856)
                                          {
                                            v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v211 = *MEMORY[0x1E698F240];
                                            v1119 = *MEMORY[0x1E696A578];
                                            v842 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"backgroundActions"];
                                            v1120 = v842;
                                            v212 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1120 forKeys:&v1119 count:1];
                                            v873 = 0;
                                            *v856 = [v210 initWithDomain:v211 code:2 userInfo:v212];
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
                                            v201 = v856;
                                            if (v856)
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
                                            v201 = v856;
                                            if (!v856)
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
                                            if (v856)
                                            {
                                              v209 = v179;
                                              *v856 = v839;
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

                                          v180 = [v6 objectForKeyedSubscript:@"bundleIsFamilyIncluded"];
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
                                            if (v856)
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
                                              *v856 = [v216 initWithDomain:v217 code:2 userInfo:?];
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
                                            v6 = v846;
LABEL_1112:

LABEL_1113:
                                            a4 = v866;
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
                                          v214 = [v6 objectForKeyedSubscript:@"bundleTimeTag"];
                                          v831 = v214;
                                          if (!v214 || (v215 = v214, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v839 = 0;
LABEL_248:
                                            v221 = [v6 objectForKeyedSubscript:@"isBundleResourceTypeUnknown"];
                                            v830 = v221;
                                            if (!v221 || (v222 = v221, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v829 = 0;
LABEL_251:
                                              v223 = [v6 objectForKeyedSubscript:@"isBundleResourceTypeValueIncluded"];
                                              v828 = v223;
                                              if (!v223 || (v224 = v223, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v827 = 0;
LABEL_254:
                                                v225 = [v6 objectForKeyedSubscript:@"isBundleResourceTypePhotoAssetsIncluded"];
                                                v826 = v225;
                                                if (!v225 || (v226 = v225, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v825 = 0;
LABEL_257:
                                                  v227 = [v6 objectForKeyedSubscript:@"isBundleResourceTypeMediaIncluded"];
                                                  v824 = v227;
                                                  if (!v227 || (v228 = v227, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v823 = 0;
LABEL_260:
                                                    v229 = [v6 objectForKeyedSubscript:@"isBundleResourceTypeWebLinkIncluded"];
                                                    v822 = v229;
                                                    if (!v229 || (v230 = v229, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v821 = 0;
LABEL_263:
                                                      v231 = [v6 objectForKeyedSubscript:@"isBundleResourceTypeInterenceTagIncluded"];
                                                      v820 = v231;
                                                      if (!v231 || (v232 = v231, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v819 = 0;
LABEL_266:
                                                        v233 = [v6 objectForKeyedSubscript:@"bundlEngagement"];
                                                        v818 = v233;
                                                        if (!v233 || (v234 = v233, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v817 = 0;
LABEL_303:
                                                          v267 = [v6 objectForKeyedSubscript:@"bundleVersion"];
                                                          v815 = v267;
                                                          if (!v267 || (v268 = v267, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v816 = 0;
LABEL_306:
                                                            v269 = [v6 objectForKeyedSubscript:@"rankingVersion"];
                                                            v813 = v269;
                                                            if (!v269 || (v270 = v269, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v814 = 0;
LABEL_309:
                                                              v271 = [v6 objectForKeyedSubscript:@"suggestionType"];
                                                              v812 = v271;
                                                              if (!v271 || (v272 = v271, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v808 = 0;
LABEL_329:
                                                                v286 = [v6 objectForKeyedSubscript:@"suggestionTimestamp"];
                                                                v811 = v286;
                                                                if (!v286 || (v287 = v286, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v810 = 0;
LABEL_339:
                                                                  v294 = [v6 objectForKeyedSubscript:@"suggestionClientIdentifier"];
                                                                  v809 = v294;
                                                                  if (!v294 || (v295 = v294, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v807 = 0;
LABEL_342:
                                                                    v296 = [v6 objectForKeyedSubscript:@"suggestionViewContainerName"];
                                                                    v806 = v296;
                                                                    if (!v296 || (v297 = v296, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v805 = 0;
LABEL_345:
                                                                      v298 = [v6 objectForKeyedSubscript:@"suggestionViewVisibleTime"];
                                                                      v804 = v298;
                                                                      if (!v298 || (v299 = v298, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v803 = 0;
LABEL_348:
                                                                        v300 = [v6 objectForKeyedSubscript:@"appEntryEventType"];
                                                                        v802 = v300;
                                                                        if (!v300 || (v301 = v300, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v801 = 0;
LABEL_375:
                                                                          v322 = [v6 objectForKeyedSubscript:@"appEntryEventClientIdentifier"];
                                                                          v800 = v322;
                                                                          if (!v322 || (v323 = v322, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v799 = 0;
LABEL_378:
                                                                            v324 = [v6 objectForKeyedSubscript:@"appEntryEventTimestamp"];
                                                                            v798 = v324;
                                                                            v844 = v36;
                                                                            if (!v324 || (v325 = v324, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v797 = 0;
LABEL_398:
                                                                              v338 = [v6 objectForKeyedSubscript:@"appEntryEventStartTime"];
                                                                              v796 = v338;
                                                                              if (!v338 || (v339 = v338, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v795 = 0;
LABEL_401:
                                                                                v340 = [v6 objectForKeyedSubscript:@"appEntryEventEndTime"];
                                                                                v794 = v340;
                                                                                if (!v340 || (v341 = v340, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                {
                                                                                  v792 = 0;
LABEL_404:
                                                                                  v342 = [v6 objectForKeyedSubscript:@"appEntryEventTotalCharacters"];
                                                                                  v793 = v342;
                                                                                  if (v342 && (v343 = v342, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      v791 = v343;
                                                                                      goto LABEL_407;
                                                                                    }

                                                                                    if (!v856)
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
                                                                                    *v856 = [v356 initWithDomain:v357 code:2 userInfo:?];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v791 = 0;
LABEL_407:
                                                                                    v344 = [v6 objectForKeyedSubscript:@"appEntryEventAddedCharacters"];
                                                                                    v790 = v344;
                                                                                    if (!v344 || (v345 = v344, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                    {
                                                                                      v789 = 0;
LABEL_410:
                                                                                      v346 = [v6 objectForKeyedSubscript:@"clientActivityEventType"];
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
                                                                                            if (v856)
                                                                                            {
                                                                                              v404 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                              v405 = *MEMORY[0x1E698F240];
                                                                                              v1066 = *MEMORY[0x1E696A578];
                                                                                              v785 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"clientActivityEventType"];
                                                                                              v1067 = v785;
                                                                                              v786 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1067 forKeys:&v1066 count:1];
                                                                                              v787 = 0;
                                                                                              v873 = 0;
                                                                                              *v856 = [v404 initWithDomain:v405 code:2 userInfo:?];
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

                                                                                      v363 = [v6 objectForKeyedSubscript:@"clientActivityEventClientIdentifier"];
                                                                                      v786 = v363;
                                                                                      if (v363 && (v364 = v363, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                        {
                                                                                          if (v856)
                                                                                          {
                                                                                            v373 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v374 = *MEMORY[0x1E698F240];
                                                                                            v1064 = *MEMORY[0x1E696A578];
                                                                                            v783 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientActivityEventClientIdentifier"];
                                                                                            v1065 = v783;
                                                                                            v784 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1065 forKeys:&v1064 count:1];
                                                                                            v785 = 0;
                                                                                            v873 = 0;
                                                                                            *v856 = [v373 initWithDomain:v374 code:2 userInfo:?];
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

                                                                                      v365 = [v6 objectForKeyedSubscript:@"clientActivityEventTimestamp"];
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
                                                                                              if (v856)
                                                                                              {
                                                                                                v433 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                v434 = *MEMORY[0x1E698F240];
                                                                                                v1062 = *MEMORY[0x1E696A578];
                                                                                                v777 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"clientActivityEventTimestamp"];
                                                                                                v1063 = v777;
                                                                                                v779 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1063 forKeys:&v1062 count:1];
                                                                                                v783 = 0;
                                                                                                v873 = 0;
                                                                                                *v856 = [v433 initWithDomain:v434 code:2 userInfo:?];
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

                                                                                          v6 = v846;
                                                                                          v143 = obj;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v783 = 0;
                                                                                      }

                                                                                      v367 = [v6 objectForKeyedSubscript:@"suggestionIdentifier"];
                                                                                      v779 = v367;
                                                                                      if (v367 && (v368 = v367, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                        {
                                                                                          if (v856)
                                                                                          {
                                                                                            v380 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v381 = *MEMORY[0x1E698F240];
                                                                                            v1060 = *MEMORY[0x1E696A578];
                                                                                            v775 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionIdentifier"];
                                                                                            v1061 = v775;
                                                                                            v782 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1061 forKeys:&v1060 count:1];
                                                                                            v777 = 0;
                                                                                            v873 = 0;
                                                                                            *v856 = [v380 initWithDomain:v381 code:2 userInfo:?];
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

                                                                                      v782 = [v6 objectForKeyedSubscript:@"photoSourceType"];
                                                                                      if (!v782 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                      {
                                                                                        v775 = 0;
LABEL_485:
                                                                                        v776 = [v6 objectForKeyedSubscript:@"photoLibraryType"];
                                                                                        if (!v776 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                        {
                                                                                          v773 = 0;
LABEL_493:
                                                                                          v774 = [v6 objectForKeyedSubscript:@"bundleSourcePostAnalyticsExists"];
                                                                                          if (!v774 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                          {
                                                                                            v772 = 0;
LABEL_496:
                                                                                            v771 = [v6 objectForKeyedSubscript:@"bundleSourcePDExists"];
                                                                                            if (!v771 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                            {
                                                                                              v769 = 0;
LABEL_499:
                                                                                              v770 = [v6 objectForKeyedSubscript:@"bundleSourceMotionExists"];
                                                                                              if (!v770 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                              {
                                                                                                v768 = 0;
LABEL_502:
                                                                                                v767 = [v6 objectForKeyedSubscript:@"bundleSourceBooksExists"];
                                                                                                if (!v767 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                {
                                                                                                  v766 = 0;
LABEL_505:
                                                                                                  v765 = [v6 objectForKeyedSubscript:@"bundleSourceScreenTimeExists"];
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
                                                                                                    v385 = [v6 objectForKeyedSubscript:@"gaPRArray"];
                                                                                                    v386 = [MEMORY[0x1E695DFB0] null];
                                                                                                    v387 = [v385 isEqual:v386];

                                                                                                    v388 = v6;
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
                                                                                                        if (v856)
                                                                                                        {
                                                                                                          v431 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v432 = *MEMORY[0x1E698F240];
                                                                                                          v1044 = *MEMORY[0x1E696A578];
                                                                                                          v780 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"gaPRArray"];
                                                                                                          v1045 = v780;
                                                                                                          v400 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1045 forKeys:&v1044 count:1];
                                                                                                          v873 = 0;
                                                                                                          *v856 = [v431 initWithDomain:v432 code:2 userInfo:v400];
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
                                                                                                            if (v856)
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
                                                                                                            if (!v856)
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
                                                                                                            *v856 = [v427 initWithDomain:v428 code:2 userInfo:?];
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
                                                                                                            if (v856)
                                                                                                            {
                                                                                                              *v856 = v399;
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

                                                                                                    v763 = [v6 objectForKeyedSubscript:@"bundlePCount"];
                                                                                                    if (v763 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        if (v856)
                                                                                                        {
                                                                                                          v435 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v436 = *MEMORY[0x1E698F240];
                                                                                                          v1037 = *MEMORY[0x1E696A578];
                                                                                                          v762 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundlePCount"];
                                                                                                          v1038 = v762;
                                                                                                          v761 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1038 forKeys:&v1037 count:1];
                                                                                                          v400 = 0;
                                                                                                          v873 = 0;
                                                                                                          *v856 = [v435 initWithDomain:v436 code:2 userInfo:?];

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

                                                                                                    v760 = [v6 objectForKeyedSubscript:@"ranking"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v446 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v447 = *MEMORY[0x1E698F240];
                                                                                                            v1035 = *MEMORY[0x1E696A578];
                                                                                                            v752 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ranking"];
                                                                                                            v1036 = v752;
                                                                                                            v759 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1036 forKeys:&v1035 count:1];
                                                                                                            v762 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v446 initWithDomain:v447 code:2 userInfo:?];
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

                                                                                                    v759 = [v6 objectForKeyedSubscript:@"labelConfidenceScore"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v449 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v450 = *MEMORY[0x1E698F240];
                                                                                                            v1033 = *MEMORY[0x1E696A578];
                                                                                                            v750 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"labelConfidenceScore"];
                                                                                                            v1034 = v750;
                                                                                                            v758 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1034 forKeys:&v1033 count:1];
                                                                                                            v752 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v449 initWithDomain:v450 code:2 userInfo:?];
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

                                                                                                    v758 = [v6 objectForKeyedSubscript:@"timeCorrelationScore"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v452 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v453 = *MEMORY[0x1E698F240];
                                                                                                            v1031 = *MEMORY[0x1E696A578];
                                                                                                            v747 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"timeCorrelationScore"];
                                                                                                            v1032 = v747;
                                                                                                            v757 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1032 forKeys:&v1031 count:1];
                                                                                                            v750 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v452 initWithDomain:v453 code:2 userInfo:?];
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

                                                                                                    v757 = [v6 objectForKeyedSubscript:@"callDuration"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v455 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v456 = *MEMORY[0x1E698F240];
                                                                                                            v1029 = *MEMORY[0x1E696A578];
                                                                                                            v745 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"callDuration"];
                                                                                                            v1030 = v745;
                                                                                                            v756 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1030 forKeys:&v1029 count:1];
                                                                                                            v747 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v455 initWithDomain:v456 code:2 userInfo:?];
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

                                                                                                    v756 = [v6 objectForKeyedSubscript:@"interactionCount"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v458 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v459 = *MEMORY[0x1E698F240];
                                                                                                            v1027 = *MEMORY[0x1E696A578];
                                                                                                            v741 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"interactionCount"];
                                                                                                            v1028 = v741;
                                                                                                            v755 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1028 forKeys:&v1027 count:1];
                                                                                                            v745 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v458 initWithDomain:v459 code:2 userInfo:?];
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

                                                                                                    v755 = [v6 objectForKeyedSubscript:@"interactionType"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v461 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v462 = *MEMORY[0x1E698F240];
                                                                                                            v1025 = *MEMORY[0x1E696A578];
                                                                                                            v739 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"interactionType"];
                                                                                                            v1026 = v739;
                                                                                                            v754 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1026 forKeys:&v1025 count:1];
                                                                                                            v741 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v461 initWithDomain:v462 code:2 userInfo:?];
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

                                                                                                    v754 = [v6 objectForKeyedSubscript:@"callPlace"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v465 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v466 = *MEMORY[0x1E698F240];
                                                                                                            v1023 = *MEMORY[0x1E696A578];
                                                                                                            v737 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"callPlace"];
                                                                                                            v1024 = v737;
                                                                                                            v753 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1024 forKeys:&v1023 count:1];
                                                                                                            v739 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v465 initWithDomain:v466 code:2 userInfo:?];
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

                                                                                                    v753 = [v6 objectForKeyedSubscript:@"distanceFromHome"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v467 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v468 = *MEMORY[0x1E698F240];
                                                                                                            v1021 = *MEMORY[0x1E696A578];
                                                                                                            v736 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"distanceFromHome"];
                                                                                                            v1022 = v736;
                                                                                                            v751 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1022 forKeys:&v1021 count:1];
                                                                                                            v737 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v467 initWithDomain:v468 code:2 userInfo:?];
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

                                                                                                    v751 = [v6 objectForKeyedSubscript:@"homeAvailability"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v470 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v471 = *MEMORY[0x1E698F240];
                                                                                                            v1019 = *MEMORY[0x1E696A578];
                                                                                                            v733 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"homeAvailability"];
                                                                                                            v1020 = v733;
                                                                                                            v749 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1020 forKeys:&v1019 count:1];
                                                                                                            v736 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v470 initWithDomain:v471 code:2 userInfo:?];
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

                                                                                                    v749 = [v6 objectForKeyedSubscript:@"workAvailability"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v473 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v474 = *MEMORY[0x1E698F240];
                                                                                                            v1017 = *MEMORY[0x1E696A578];
                                                                                                            v732 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"workAvailability"];
                                                                                                            v1018 = v732;
                                                                                                            v746 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1018 forKeys:&v1017 count:1];
                                                                                                            v733 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v473 initWithDomain:v474 code:2 userInfo:?];
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

                                                                                                    v746 = [v6 objectForKeyedSubscript:@"bundleVisitMapItemSource"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v477 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v478 = *MEMORY[0x1E698F240];
                                                                                                            v1015 = *MEMORY[0x1E696A578];
                                                                                                            v730 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleVisitMapItemSource"];
                                                                                                            v1016 = v730;
                                                                                                            v744 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1016 forKeys:&v1015 count:1];
                                                                                                            v732 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v477 initWithDomain:v478 code:2 userInfo:?];
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

                                                                                                    v744 = [v6 objectForKeyedSubscript:@"bundleVisitPlaceType"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v479 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v480 = *MEMORY[0x1E698F240];
                                                                                                            v1013 = *MEMORY[0x1E696A578];
                                                                                                            v729 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleVisitPlaceType"];
                                                                                                            v1014 = v729;
                                                                                                            v740 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1014 forKeys:&v1013 count:1];
                                                                                                            v730 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v479 initWithDomain:v480 code:2 userInfo:?];
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

                                                                                                    v740 = [v6 objectForKeyedSubscript:@"bundleVisitPlaceLabelGranularity"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v501 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v502 = *MEMORY[0x1E698F240];
                                                                                                            v1011 = *MEMORY[0x1E696A578];
                                                                                                            v726 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleVisitPlaceLabelGranularity"];
                                                                                                            v1012 = v726;
                                                                                                            v738 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1012 forKeys:&v1011 count:1];
                                                                                                            v729 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v501 initWithDomain:v502 code:2 userInfo:?];
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

                                                                                                    v738 = [v6 objectForKeyedSubscript:@"bundleIncludesAnomalousEvent"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v505 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v506 = *MEMORY[0x1E698F240];
                                                                                                            v1009 = *MEMORY[0x1E696A578];
                                                                                                            v723 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleIncludesAnomalousEvent"];
                                                                                                            v1010 = v723;
                                                                                                            v735 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1010 forKeys:&v1009 count:1];
                                                                                                            v726 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v505 initWithDomain:v506 code:2 userInfo:?];
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

                                                                                                    v735 = [v6 objectForKeyedSubscript:@"isFiltered"];
                                                                                                    if (v735 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        if (v856)
                                                                                                        {
                                                                                                          v463 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v464 = *MEMORY[0x1E698F240];
                                                                                                          v1007 = *MEMORY[0x1E696A578];
                                                                                                          v722 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFiltered"];
                                                                                                          v1008 = v722;
                                                                                                          v734 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1008 forKeys:&v1007 count:1];
                                                                                                          v723 = 0;
                                                                                                          v873 = 0;
                                                                                                          *v856 = [v463 initWithDomain:v464 code:2 userInfo:?];
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

                                                                                                    v734 = [v6 objectForKeyedSubscript:@"bundleSuperType"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v515 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v516 = *MEMORY[0x1E698F240];
                                                                                                            v1005 = *MEMORY[0x1E696A578];
                                                                                                            v719 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleSuperType"];
                                                                                                            v1006 = v719;
                                                                                                            v731 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1006 forKeys:&v1005 count:1];
                                                                                                            v722 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v515 initWithDomain:v516 code:2 userInfo:?];
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

                                                                                                    v731 = [v6 objectForKeyedSubscript:@"bundleSubType"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v517 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v518 = *MEMORY[0x1E698F240];
                                                                                                            v1003 = *MEMORY[0x1E696A578];
                                                                                                            v718 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleSubType"];
                                                                                                            v1004 = v718;
                                                                                                            v728 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1004 forKeys:&v1003 count:1];
                                                                                                            v719 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v517 initWithDomain:v518 code:2 userInfo:?];
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

                                                                                                    v728 = [v6 objectForKeyedSubscript:@"isAggregatedAndSuppressed"];
                                                                                                    if (v728 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        if (v856)
                                                                                                        {
                                                                                                          v475 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v476 = *MEMORY[0x1E698F240];
                                                                                                          v1001 = *MEMORY[0x1E696A578];
                                                                                                          v717 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isAggregatedAndSuppressed"];
                                                                                                          v1002 = v717;
                                                                                                          v727 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1002 forKeys:&v1001 count:1];
                                                                                                          v718 = 0;
                                                                                                          v873 = 0;
                                                                                                          *v856 = [v475 initWithDomain:v476 code:2 userInfo:?];
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

                                                                                                    v727 = [v6 objectForKeyedSubscript:@"summarizationGranularity"];
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
                                                                                                          if (v856)
                                                                                                          {
                                                                                                            v519 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v520 = *MEMORY[0x1E698F240];
                                                                                                            v999 = *MEMORY[0x1E696A578];
                                                                                                            v716 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"summarizationGranularity"];
                                                                                                            v1000 = v716;
                                                                                                            v721 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1000 forKeys:&v999 count:1];
                                                                                                            v717 = 0;
                                                                                                            v873 = 0;
                                                                                                            *v856 = [v519 initWithDomain:v520 code:2 userInfo:?];
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

                                                                                                    v721 = [v6 objectForKeyedSubscript:@"includedInSummaryBundleOnly"];
                                                                                                    if (v721 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        if (v856)
                                                                                                        {
                                                                                                          v503 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v504 = *MEMORY[0x1E698F240];
                                                                                                          v997 = *MEMORY[0x1E696A578];
                                                                                                          v748 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"includedInSummaryBundleOnly"];
                                                                                                          v998 = v748;
                                                                                                          v743 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v998 forKeys:&v997 count:1];
                                                                                                          v716 = 0;
                                                                                                          v873 = 0;
                                                                                                          *v856 = [v503 initWithDomain:v504 code:2 userInfo:?];

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

                                                                                                    v482 = [v6 objectForKeyedSubscript:@"subBundleIDs"];
                                                                                                    v483 = [MEMORY[0x1E695DFB0] null];
                                                                                                    v748 = v482;
                                                                                                    LODWORD(v482) = [v482 isEqual:v483];

                                                                                                    if (v482)
                                                                                                    {

                                                                                                      goto LABEL_794;
                                                                                                    }

                                                                                                    if (v748)
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        if (v856)
                                                                                                        {
                                                                                                          v484 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v485 = *MEMORY[0x1E698F240];
                                                                                                          v995 = *MEMORY[0x1E696A578];
                                                                                                          v742 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"subBundleIDs"];
                                                                                                          v996 = v742;
                                                                                                          v724 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v996 forKeys:&v995 count:1];
                                                                                                          v873 = 0;
                                                                                                          *v856 = [v484 initWithDomain:v485 code:2 userInfo:?];

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
                                                                                                          if (v856)
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
                                                                                                            *v856 = [v497 initWithDomain:v498 code:2 userInfo:?];
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
                                                                                                          if (v856)
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
                                                                                                        v493 = [MEMORY[0x1E695DFB0] null];
                                                                                                        v725 = v492;
                                                                                                        LODWORD(v492) = [v492 isEqual:v493];

                                                                                                        if (v492)
                                                                                                        {

                                                                                                          goto LABEL_827;
                                                                                                        }

                                                                                                        if (v725)
                                                                                                        {
                                                                                                          objc_opt_class();
                                                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                          {
                                                                                                            if (v856)
                                                                                                            {
                                                                                                              v507 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                              v508 = *MEMORY[0x1E698F240];
                                                                                                              v988 = *MEMORY[0x1E696A578];
                                                                                                              v720 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"subSuggestionIDs"];
                                                                                                              v989 = v720;
                                                                                                              v713 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v989 forKeys:&v988 count:1];
                                                                                                              v873 = 0;
                                                                                                              *v856 = [v507 initWithDomain:v508 code:2 userInfo:?];

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
                                                                                                                if (v856)
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
                                                                                                                  *v856 = [v524 initWithDomain:v525 code:2 userInfo:?];
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
                                                                                                                if (v856)
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
                                                                                                            if (v856)
                                                                                                            {
                                                                                                              v572 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                              v573 = *MEMORY[0x1E698F240];
                                                                                                              v981 = *MEMORY[0x1E696A578];
                                                                                                              v711 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"firstCreationDate"];
                                                                                                              v982 = v711;
                                                                                                              v709 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v982 forKeys:&v981 count:1];
                                                                                                              v714 = 0;
                                                                                                              v873 = 0;
                                                                                                              *v856 = [v572 initWithDomain:v573 code:2 userInfo:?];

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
                                                                                                        v532 = [MEMORY[0x1E695DFB0] null];
                                                                                                        v711 = v531;
                                                                                                        LODWORD(v531) = [v531 isEqual:v532];

                                                                                                        if (v531)
                                                                                                        {

                                                                                                          goto LABEL_882;
                                                                                                        }

                                                                                                        if (v711)
                                                                                                        {
                                                                                                          objc_opt_class();
                                                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                          {
                                                                                                            if (v856)
                                                                                                            {
                                                                                                              v533 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                              v534 = *MEMORY[0x1E698F240];
                                                                                                              v979 = *MEMORY[0x1E696A578];
                                                                                                              v708 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"resources"];
                                                                                                              v980 = v708;
                                                                                                              v703 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v980 forKeys:&v979 count:1];
                                                                                                              v873 = 0;
                                                                                                              *v856 = [v533 initWithDomain:v534 code:2 userInfo:?];

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
                                                                                                              if (v856)
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
                                                                                                              if (!v856)
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
                                                                                                              *v856 = [v548 initWithDomain:v549 code:2 userInfo:?];
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
                                                                                                              if (v856)
                                                                                                              {
                                                                                                                *v856 = v706;
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
                                                                                                            v544 = [MEMORY[0x1E695DFB0] null];
                                                                                                            v704 = v543;
                                                                                                            LODWORD(v543) = [v543 isEqual:v544];

                                                                                                            if (v543)
                                                                                                            {

                                                                                                              goto LABEL_908;
                                                                                                            }

                                                                                                            if (v704)
                                                                                                            {
                                                                                                              objc_opt_class();
                                                                                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                              {
                                                                                                                if (v856)
                                                                                                                {
                                                                                                                  v552 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                  v553 = *MEMORY[0x1E698F240];
                                                                                                                  v972 = *MEMORY[0x1E696A578];
                                                                                                                  v715 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"persons"];
                                                                                                                  v973 = v715;
                                                                                                                  v707 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v973 forKeys:&v972 count:1];
                                                                                                                  v873 = 0;
                                                                                                                  *v856 = [v552 initWithDomain:v553 code:2 userInfo:?];

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
                                                                                                                    if (v856)
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
                                                                                                                    if (!v856)
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
                                                                                                                    *v856 = [v567 initWithDomain:v568 code:2 userInfo:?];
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
                                                                                                                    if (v856)
                                                                                                                    {
                                                                                                                      *v856 = v701;
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
                                                                                                                if (v856)
                                                                                                                {
                                                                                                                  v589 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                  v590 = *MEMORY[0x1E698F240];
                                                                                                                  v965 = *MEMORY[0x1E696A578];
                                                                                                                  v702 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"mainPlace"];
                                                                                                                  v966 = v702;
                                                                                                                  v701 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v966 forKeys:&v965 count:1];
                                                                                                                  v873 = 0;
                                                                                                                  *v856 = [v589 initWithDomain:v590 code:2 userInfo:?];
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
                                                                                                                if (v856)
                                                                                                                {
                                                                                                                  v588 = v588;
                                                                                                                  *v856 = v588;
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
                                                                                                            v563 = [MEMORY[0x1E695DFB0] null];
                                                                                                            v701 = v562;
                                                                                                            LODWORD(v562) = [v562 isEqual:v563];

                                                                                                            if (v562)
                                                                                                            {

                                                                                                              goto LABEL_945;
                                                                                                            }

                                                                                                            if (v701)
                                                                                                            {
                                                                                                              objc_opt_class();
                                                                                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                              {
                                                                                                                if (v856)
                                                                                                                {
                                                                                                                  v574 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                  v575 = *MEMORY[0x1E698F240];
                                                                                                                  v963 = *MEMORY[0x1E696A578];
                                                                                                                  v699 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"otherPlaces"];
                                                                                                                  v964 = v699;
                                                                                                                  v696 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v964 forKeys:&v963 count:1];
                                                                                                                  v873 = 0;
                                                                                                                  *v856 = [v574 initWithDomain:v575 code:2 userInfo:?];

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
                                                                                                                  if (v856)
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
                                                                                                                  if (!v856)
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
                                                                                                                  *v856 = [v594 initWithDomain:v595 code:2 userInfo:?];
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
                                                                                                                  if (v856)
                                                                                                                  {
                                                                                                                    *v856 = v698;
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
                                                                                                                v585 = [MEMORY[0x1E695DFB0] null];
                                                                                                                v697 = v584;
                                                                                                                LODWORD(v584) = [v584 isEqual:v585];

                                                                                                                if (v584)
                                                                                                                {

                                                                                                                  goto LABEL_980;
                                                                                                                }

                                                                                                                if (v697)
                                                                                                                {
                                                                                                                  objc_opt_class();
                                                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                                  {
                                                                                                                    if (v856)
                                                                                                                    {
                                                                                                                      v598 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                      v599 = *MEMORY[0x1E698F240];
                                                                                                                      v956 = *MEMORY[0x1E696A578];
                                                                                                                      v700 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"photoTraits"];
                                                                                                                      v957 = v700;
                                                                                                                      v698 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v957 forKeys:&v956 count:1];
                                                                                                                      v873 = 0;
                                                                                                                      *v856 = [v598 initWithDomain:v599 code:2 userInfo:?];
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
                                                                                                                    if (v856)
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

                                                                                                                        if (v856)
                                                                                                                        {
                                                                                                                          v623 = v623;
                                                                                                                          *v856 = v623;
                                                                                                                        }

                                                                                                                        v873 = 0;
                                                                                                                        v698 = v621;
                                                                                                                        goto LABEL_1029;
                                                                                                                      }

                                                                                                                      if (v856)
                                                                                                                      {
                                                                                                                        v627 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                        v628 = *MEMORY[0x1E698F240];
                                                                                                                        v949 = *MEMORY[0x1E696A578];
                                                                                                                        v695 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"clusterMetadata"];
                                                                                                                        v950 = v695;
                                                                                                                        v606 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v950 forKeys:&v949 count:1];
                                                                                                                        v873 = 0;
                                                                                                                        *v856 = [v627 initWithDomain:v628 code:2 userInfo:?];
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

                                                                                                                          if (v856)
                                                                                                                          {
                                                                                                                            v626 = v626;
                                                                                                                            *v856 = v626;
                                                                                                                          }

                                                                                                                          v873 = 0;
                                                                                                                          goto LABEL_1022;
                                                                                                                        }

                                                                                                                        if (v856)
                                                                                                                        {
                                                                                                                          v629 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                          v630 = *MEMORY[0x1E698F240];
                                                                                                                          v947 = *MEMORY[0x1E696A578];
                                                                                                                          v691 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"outlierMetadata"];
                                                                                                                          v948 = v691;
                                                                                                                          v693 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v948 forKeys:&v947 count:1];
                                                                                                                          v873 = 0;
                                                                                                                          *v856 = [v629 initWithDomain:v630 code:2 userInfo:?];
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

                                                                                                                          if (v856)
                                                                                                                          {
                                                                                                                            v631 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                            v632 = *MEMORY[0x1E698F240];
                                                                                                                            v945 = *MEMORY[0x1E696A578];
                                                                                                                            v689 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleGoodnessScore"];
                                                                                                                            v946 = v689;
                                                                                                                            v692 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v946 forKeys:&v945 count:1];
                                                                                                                            v693 = 0;
                                                                                                                            v873 = 0;
                                                                                                                            *v856 = [v631 initWithDomain:v632 code:2 userInfo:?];
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

                                                                                                                            if (v856)
                                                                                                                            {
                                                                                                                              v636 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                              v637 = *MEMORY[0x1E698F240];
                                                                                                                              v943 = *MEMORY[0x1E696A578];
                                                                                                                              v687 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"distinctnessScore"];
                                                                                                                              v944 = v687;
                                                                                                                              v690 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v944 forKeys:&v943 count:1];
                                                                                                                              v689 = 0;
                                                                                                                              v873 = 0;
                                                                                                                              *v856 = [v636 initWithDomain:v637 code:2 userInfo:?];
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

                                                                                                                              if (v856)
                                                                                                                              {
                                                                                                                                v638 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                                v639 = *MEMORY[0x1E698F240];
                                                                                                                                v941 = *MEMORY[0x1E696A578];
                                                                                                                                v685 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"richnessScore"];
                                                                                                                                v942 = v685;
                                                                                                                                v688 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v942 forKeys:&v941 count:1];
                                                                                                                                v687 = 0;
                                                                                                                                v873 = 0;
                                                                                                                                *v856 = [v638 initWithDomain:v639 code:2 userInfo:?];
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

                                                                                                                                if (v856)
                                                                                                                                {
                                                                                                                                  v640 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                                  v641 = *MEMORY[0x1E698F240];
                                                                                                                                  v939 = *MEMORY[0x1E696A578];
                                                                                                                                  v683 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"engagementScore"];
                                                                                                                                  v940 = v683;
                                                                                                                                  v686 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v940 forKeys:&v939 count:1];
                                                                                                                                  v685 = 0;
                                                                                                                                  v873 = 0;
                                                                                                                                  *v856 = [v640 initWithDomain:v641 code:2 userInfo:?];
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

                                                                                                                                  if (v856)
                                                                                                                                  {
                                                                                                                                    v642 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                                    v643 = *MEMORY[0x1E698F240];
                                                                                                                                    v937 = *MEMORY[0x1E696A578];
                                                                                                                                    v684 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"heuristicsScore"];
                                                                                                                                    v938 = v684;
                                                                                                                                    v607 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v938 forKeys:&v937 count:1];
                                                                                                                                    v683 = 0;
                                                                                                                                    v873 = 0;
                                                                                                                                    *v856 = [v642 initWithDomain:v643 code:2 userInfo:?];
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
                                                                                                                                      if (v856)
                                                                                                                                      {
                                                                                                                                        v635 = v635;
                                                                                                                                        *v856 = v635;
                                                                                                                                      }

                                                                                                                                      v873 = 0;
                                                                                                                                      v684 = v633;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {

LABEL_1014:
                                                                                                                                      v608 = [v844 intValue];
                                                                                                                                      v874 = [v851 intValue];
                                                                                                                                      v857 = [v849 intValue];
                                                                                                                                      v682 = [v845 intValue];
                                                                                                                                      v681 = [v839 intValue];
                                                                                                                                      v680 = [v817 intValue];
                                                                                                                                      v679 = [v808 intValue];
                                                                                                                                      v678 = [v801 intValue];
                                                                                                                                      v677 = [v787 intValue];
                                                                                                                                      v676 = [v775 intValue];
                                                                                                                                      v675 = [v773 intValue];
                                                                                                                                      v674 = [v762 intValue];
                                                                                                                                      v673 = [v752 intValue];
                                                                                                                                      v672 = [v750 intValue];
                                                                                                                                      v671 = [v747 intValue];
                                                                                                                                      v670 = [v745 intValue];
                                                                                                                                      v669 = [v741 intValue];
                                                                                                                                      v668 = [v739 intValue];
                                                                                                                                      v667 = [v737 intValue];
                                                                                                                                      v666 = [v736 intValue];
                                                                                                                                      v665 = [v733 intValue];
                                                                                                                                      v664 = [v732 intValue];
                                                                                                                                      v609 = [v730 intValue];
                                                                                                                                      v610 = [v729 intValue];
                                                                                                                                      v611 = [v726 intValue];
                                                                                                                                      [v722 intValue];
                                                                                                                                      [v719 intValue];
                                                                                                                                      [v717 intValue];
                                                                                                                                      LODWORD(v663) = v677;
                                                                                                                                      LODWORD(v662) = v678;
                                                                                                                                      LODWORD(v661) = v679;
                                                                                                                                      LODWORD(v660) = v680;
                                                                                                                                      LODWORD(v659) = v681;
                                                                                                                                      LODWORD(v658) = v682;
                                                                                                                                      v870 = objc_retainAutoreleasedReturnValue( -[BMMomentsEventDataEventBundle initWithBundleIdentifier:bundleStartDate:bundleEndDate:bundleCreationDate:bundleExpirationDate:bundleInterfaceType:bundleSourceHealthExists:bundleSourcePhotoExists:bundleSourceProactiveExists:bundleSourceRoutineExists:bundlePromptLanguageFormat:bundlePromptToneID:bundlePromptParametersAvailability:bundlePlaceType:bundlePlaceUserType:bundleBaseEventCateory:bundleEventIDs:bundleActionType:backgroundActions:bundleIsFamilyIncluded:bundleTimeTag:isBundleResourceTypeUnknown:isBundleResourceTypeValueIncluded:isBundleResourceTypePhotoAssetsIncluded:isBundleResourceTypeMediaIncluded:isBundleResourceTypeWebLinkIncluded:isBundleResourceTypeInterenceTagIncluded:bundlEngagement:bundleVersion:rankingVersion:suggestionType:suggestionTimestamp:suggestionClientIdentifier:suggestionViewContainerName:suggestionViewVisibleTime:appEntryEventType:appEntryEventClientIdentifier:appEntryEventTimestamp:appEntryEventStartTime:appEntryEventEndTime:appEntryEventTotalCharacters:appEntryEventAddedCharacters:clientActivityEventType:clientActivityEventClientIdentifier:clientActivityEventTimestamp:suggestionIdentifier:photoSourceType:photoLibraryType:bundleSourcePostAnalyticsExists:bundleSourcePDExists:bundleSourceMotionExists:bundleSourceBooksExists:bundleSourceScreenTimeExists:gaPRArray:bundlePCount:ranking:labelConfidenceScore:timeCorrelationScore:callDuration:interactionCount:interactionType:callPlace:distanceFromHome:homeAvailability:workAvailability:bundleVisitMapItemSource:bundleVisitPlaceType:bundleVisitPlaceLabelGranularity:bundleIncludesAnomalousEvent:isFiltered:bundleSuperType:bundleSubType:isAggregatedAndSuppressed:summarizationGranularity:includedInSummaryBundleOnly:subBundleIDs:subSuggestionIDs:firstCreationDate:resources:persons:mainPlace:otherPlaces:photoTraits:clusterMetadata:outlierMetadata:bundleGoodnessScore:distinctnessScore:richnessScore:engagementScore:heuristicsScore:metadataForRank:]( v870,  "initWithBundleIdentifier:bundleStartDate:bundleEndDate:bundleCreationDate:bundleExpirationDate:bundleInterfaceType:bundleSourceHealthExists:bundleSourcePhotoExists:bundleSourceProactiveExists:bundleSourceRoutineExists:bundlePromptLanguageFormat:bundlePromptToneID:bundlePromptParametersAvailability:bundlePlaceType:bundlePlaceUserType:bundleBaseEventCateory:bundleEventIDs:bundleActionType:backgroundActions:bundleIsFamilyIncluded:bundleTimeTag:isBundleResourceTypeUnknown:isBundleResourceTypeValueIncluded:isBundleResourceTypePhotoAssetsIncluded:isBundleResourceTypeMediaIncluded:isBundleResourceTypeWebLinkIncluded:isBundleResourceTypeInterenceTagIncluded:bundlEngagement:bundleVersion:rankingVersion:suggestionType:suggestionTimestamp:suggestionClientIdentifier:suggestionViewContainerName:suggestionViewVisibleTime:appEntryEventType:appEntryEventClientIdentifier:appEntryEventTimestamp:appEntryEventStartTime:appEntryEventEndTime:appEntryEventTotalCharacters:appEntryEventAddedCharacters:clientActivityEventType:clientActivityEventClientIdentifier:clientActivityEventTimestamp:suggestionIdentifier:photoSourceType:photoLibraryType:bundleSourcePostAnalyticsExists:bundleSourcePDExists:bundleSourceMotionExists:bundleSourceBooksExists:bundleSourceScreenTimeExists:gaPRArray:bundlePCount:ranking:labelConfidenceScore:timeCorrelationScore:callDuration:interactionCount:interactionType:callPlace:distanceFromHome:homeAvailability:workAvailability:bundleVisitMapItemSource:bundleVisitPlaceType:bundleVisitPlaceLabelGranularity:bundleIncludesAnomalousEvent:isFiltered:bundleSuperType:bundleSubType:isAggregatedAndSuppressed:summarizationGranularity:includedInSummaryBundleOnly:subBundleIDs:subSuggestionIDs:firstCreationDate:resources:persons:mainPlace:otherPlaces:photoTraits:clusterMetadata:outlierMetadata:bundleGoodnessScore:distinctnessScore:richnessScore:engagementScore:heuristicsScore:metadataForRank:",  v885,  v854,  v875,  v871,  v869,  v608,  v866,  v867,  v864,  v861,  v859,  v855,  v853,  __PAIR64__(v857, v874),  v658,  v881,  v840,  v842,  v837,  v659,  v829,  v827,  v825,  v823,  v821,  v819,  v660,  v816,  v814,  v661,  v810,  v807,  v805,  v803,  v662,  v799,  v797,  v795,  v792,  v791,  v789,  v663,  v785,  v783,  v777,  __PAIR64__(v675, v676),
                                                                                                                                                 v772,
                                                                                                                                                 v769,
                                                                                                                                                 v768,
                                                                                                                                                 v766,
                                                                                                                                                 v764,
                                                                                                                                                 v780,
                                                                                                                                                 v400,
                                                                                                                                                 __PAIR64__(v673, v674),
                                                                                                                                                 __PAIR64__(v671, v672),
                                                                                                                                                 __PAIR64__(v669, v670),
                                                                                                                                                 __PAIR64__(v667, v668),
                                                                                                                                                 __PAIR64__(v665, v666),
                                                                                                                                                 __PAIR64__(v609, v664),
                                                                                                                                                 __PAIR64__(v611, v610),
                                                                                                                                                 v723));
                                                                                                                                      v873 = v870;
                                                                                                                                    }

LABEL_1015:
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    if (v856)
                                                                                                                                    {
                                                                                                                                      v644 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                                      v645 = *MEMORY[0x1E698F240];
                                                                                                                                      v935 = *MEMORY[0x1E696A578];
                                                                                                                                      v607 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadataForRank"];
                                                                                                                                      v936 = v607;
                                                                                                                                      v646 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v936 forKeys:&v935 count:1];
                                                                                                                                      *v856 = [v644 initWithDomain:v645 code:2 userInfo:v646];

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

                                                                                                                if (v856)
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
                                                                                                                  *v856 = [v615 initWithDomain:v616 code:2 userInfo:?];
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

                                                                                                  if (v856)
                                                                                                  {
                                                                                                    v422 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                    v423 = *MEMORY[0x1E698F240];
                                                                                                    v1046 = *MEMORY[0x1E696A578];
                                                                                                    v778 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleSourceScreenTimeExists"];
                                                                                                    v1047 = v778;
                                                                                                    v781 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1047 forKeys:&v1046 count:1];
                                                                                                    v764 = 0;
                                                                                                    v873 = 0;
                                                                                                    *v856 = [v422 initWithDomain:v423 code:2 userInfo:?];
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

                                                                                                if (v856)
                                                                                                {
                                                                                                  v416 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                  v417 = *MEMORY[0x1E698F240];
                                                                                                  v1048 = *MEMORY[0x1E696A578];
                                                                                                  v764 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleSourceBooksExists"];
                                                                                                  v1049 = v764;
                                                                                                  v765 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1049 forKeys:&v1048 count:1];
                                                                                                  v766 = 0;
                                                                                                  v873 = 0;
                                                                                                  *v856 = [v416 initWithDomain:v417 code:2 userInfo:?];
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

                                                                                              if (v856)
                                                                                              {
                                                                                                v410 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                v411 = *MEMORY[0x1E698F240];
                                                                                                v1050 = *MEMORY[0x1E696A578];
                                                                                                v766 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleSourceMotionExists"];
                                                                                                v1051 = v766;
                                                                                                v767 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1051 forKeys:&v1050 count:1];
                                                                                                v768 = 0;
                                                                                                v873 = 0;
                                                                                                *v856 = [v410 initWithDomain:v411 code:2 userInfo:?];
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
                                                                                            if (v856)
                                                                                            {
                                                                                              v406 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                              v407 = *MEMORY[0x1E698F240];
                                                                                              v1052 = *MEMORY[0x1E696A578];
                                                                                              v768 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleSourcePDExists"];
                                                                                              v1053 = v768;
                                                                                              v770 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1053 forKeys:&v1052 count:1];
                                                                                              v769 = 0;
                                                                                              v873 = 0;
                                                                                              *v856 = [v406 initWithDomain:v407 code:2 userInfo:?];
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
                                                                                          if (v856)
                                                                                          {
                                                                                            v402 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v403 = *MEMORY[0x1E698F240];
                                                                                            v1054 = *MEMORY[0x1E696A578];
                                                                                            v769 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleSourcePostAnalyticsExists"];
                                                                                            v1055 = v769;
                                                                                            v771 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1055 forKeys:&v1054 count:1];
                                                                                            v772 = 0;
                                                                                            v873 = 0;
                                                                                            *v856 = [v402 initWithDomain:v403 code:2 userInfo:?];
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

                                                                                          v6 = v846;
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

                                                                                        if (v856)
                                                                                        {
                                                                                          v420 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v421 = *MEMORY[0x1E698F240];
                                                                                          v1056 = *MEMORY[0x1E696A578];
                                                                                          v772 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"photoLibraryType"];
                                                                                          v1057 = v772;
                                                                                          v774 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1057 forKeys:&v1056 count:1];
                                                                                          v773 = 0;
                                                                                          v873 = 0;
                                                                                          *v856 = [v420 initWithDomain:v421 code:2 userInfo:?];
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
                                                                                          if (!v856)
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
                                                                                          *v856 = [v418 initWithDomain:v419 code:2 userInfo:?];
                                                                                          goto LABEL_608;
                                                                                        }

                                                                                        v372 = v782;
                                                                                        v382 = v782;
                                                                                        v775 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPhotoSourceTypeFromString(v382)];
                                                                                      }

                                                                                      v6 = v846;
                                                                                      v39 = v835;
                                                                                      goto LABEL_485;
                                                                                    }

                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      v789 = v345;
                                                                                      goto LABEL_410;
                                                                                    }

                                                                                    if (v856)
                                                                                    {
                                                                                      v358 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                      v359 = *MEMORY[0x1E698F240];
                                                                                      v1068 = *MEMORY[0x1E696A578];
                                                                                      v787 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appEntryEventAddedCharacters"];
                                                                                      v1069 = v787;
                                                                                      v788 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1069 forKeys:&v1068 count:1];
                                                                                      v789 = 0;
                                                                                      v873 = 0;
                                                                                      *v856 = [v358 initWithDomain:v359 code:2 userInfo:?];
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
                                                                                  v6 = v846;
                                                                                  v39 = v836;
                                                                                  v143 = obj;
                                                                                  goto LABEL_404;
                                                                                }

                                                                                if (v856)
                                                                                {
                                                                                  v414 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v415 = *MEMORY[0x1E698F240];
                                                                                  v1072 = *MEMORY[0x1E696A578];
                                                                                  v791 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"appEntryEventEndTime"];
                                                                                  v1073 = v791;
                                                                                  v793 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1073 forKeys:&v1072 count:1];
                                                                                  v792 = 0;
                                                                                  v873 = 0;
                                                                                  *v856 = [v414 initWithDomain:v415 code:2 userInfo:?];
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
                                                                                v6 = v846;
                                                                                v39 = v836;
                                                                                v143 = obj;
                                                                                goto LABEL_401;
                                                                              }

                                                                              if (v856)
                                                                              {
                                                                                v412 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v413 = *MEMORY[0x1E698F240];
                                                                                v1074 = *MEMORY[0x1E696A578];
                                                                                v792 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"appEntryEventStartTime"];
                                                                                v1075 = v792;
                                                                                v794 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1075 forKeys:&v1074 count:1];
                                                                                v795 = 0;
                                                                                v873 = 0;
                                                                                *v856 = [v412 initWithDomain:v413 code:2 userInfo:?];
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
                                                                                  v6 = v846;
                                                                                  v143 = obj;
                                                                                  goto LABEL_398;
                                                                                }

                                                                                if (!v856)
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
                                                                                *v856 = [v408 initWithDomain:v409 code:2 userInfo:?];
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

                                                                          if (v856)
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
                                                                            *v856 = [v336 initWithDomain:v334 code:2 userInfo:?];
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

                                                                        if (v856)
                                                                        {
                                                                          v360 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v361 = *MEMORY[0x1E698F240];
                                                                          v1080 = *MEMORY[0x1E696A578];
                                                                          v799 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"appEntryEventType"];
                                                                          v1081 = v799;
                                                                          v800 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1081 forKeys:&v1080 count:1];
                                                                          v801 = 0;
                                                                          v873 = 0;
                                                                          *v856 = [v360 initWithDomain:v361 code:2 userInfo:?];
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

                                                                      if (v856)
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
                                                                        *v856 = [v317 initWithDomain:v315 code:2 userInfo:?];
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

                                                                    if (v856)
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
                                                                      *v856 = [v313 initWithDomain:v311 code:2 userInfo:?];
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

                                                                  if (v856)
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
                                                                    *v856 = [v305 initWithDomain:v303 code:2 userInfo:?];
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

                                                                if (v856)
                                                                {
                                                                  v375 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v376 = *MEMORY[0x1E698F240];
                                                                  v1088 = *MEMORY[0x1E696A578];
                                                                  v807 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"suggestionTimestamp"];
                                                                  v1089 = v807;
                                                                  v809 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1089 forKeys:&v1088 count:1];
                                                                  v810 = 0;
                                                                  v873 = 0;
                                                                  *v856 = [v375 initWithDomain:v376 code:2 userInfo:?];
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

                                                              if (v856)
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
                                                                *v856 = v332;
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

                                                            if (v856)
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
                                                              *v856 = [v282 initWithDomain:v283 code:2 userInfo:?];
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

                                                          if (v856)
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
                                                            *v856 = [v276 initWithDomain:v274 code:2 userInfo:v275];
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

                                                        if (v856)
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
                                                          *v856 = [v309 initWithDomain:v307 code:2 userInfo:v308];
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

                                                      if (v856)
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
                                                        *v856 = [v264 initWithDomain:v265 code:2 userInfo:?];
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

                                                    if (v856)
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
                                                      *v856 = [v259 initWithDomain:v260 code:2 userInfo:?];
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

                                                  if (v856)
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
                                                    *v856 = [v251 initWithDomain:v249 code:2 userInfo:?];
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

                                                if (v856)
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
                                                  *v856 = [v247 initWithDomain:v245 code:2 userInfo:?];
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

                                              if (v856)
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
                                                *v856 = [v243 initWithDomain:v241 code:2 userInfo:?];
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

                                            if (v856)
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
                                              *v856 = [v238 initWithDomain:v239 code:2 userInfo:?];
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
                                              if (!v856)
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
                                              *v856 = [v255 initWithDomain:v253 code:2 userInfo:v254];
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
                                      if (v856)
                                      {
                                        v184 = v184;
                                        *v856 = v184;
                                      }

                                      v873 = 0;
                                      v841 = v182;
                                    }

                                    else
                                    {
                                      if (!v856)
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
                                      *v856 = [v200 initWithDomain:v198 code:2 userInfo:?];
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

                              if (v856)
                              {
                                v190 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v191 = *MEMORY[0x1E698F240];
                                v1132 = *MEMORY[0x1E696A578];
                                v834 = v39;
                                v192 = v6;
                                v193 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v656 = objc_opt_class();
                                v194 = v193;
                                v6 = v192;
                                v39 = v834;
                                a4 = v866;
                                v845 = [v194 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v656, @"bundlePlaceUserType"];
                                v1133 = v845;
                                v847 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1133 forKeys:&v1132 count:1];
                                v849 = 0;
                                v873 = 0;
                                *v856 = [v190 initWithDomain:v191 code:2 userInfo:?];
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
                              a4 = v866;
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

                            if (v856)
                            {
                              v185 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v186 = *MEMORY[0x1E698F240];
                              v1134 = *MEMORY[0x1E696A578];
                              v833 = v39;
                              v187 = v6;
                              v188 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v655 = objc_opt_class();
                              v189 = v188;
                              v6 = v187;
                              v39 = v833;
                              a4 = v866;
                              v849 = [v189 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v655, @"bundlePlaceType"];
                              v1135 = v849;
                              v848 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1135 forKeys:&v1134 count:1];
                              v851 = 0;
                              v873 = 0;
                              *v856 = [v185 initWithDomain:v186 code:2 userInfo:?];
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
                            a4 = v866;
LABEL_1116:

                            goto LABEL_1117;
                          }

                          if (v856)
                          {
                            v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v108 = *MEMORY[0x1E698F240];
                            v1136 = *MEMORY[0x1E696A578];
                            v109 = v39;
                            v110 = v6;
                            v111 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v654 = objc_opt_class();
                            v112 = v111;
                            v6 = v110;
                            v39 = v109;
                            a4 = v866;
                            v851 = [v112 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v654, @"bundlePromptParametersAvailability"];
                            v1137 = v851;
                            v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1137 forKeys:&v1136 count:1];
                            v114 = v107;
                            v29 = v886;
                            v850 = v113;
                            v853 = 0;
                            v873 = 0;
                            *v856 = [v114 initWithDomain:v108 code:2 userInfo:?];
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
                          a4 = v866;
LABEL_1117:

                          goto LABEL_1118;
                        }

                        if (v856)
                        {
                          v100 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v880 = *MEMORY[0x1E698F240];
                          v1138 = *MEMORY[0x1E696A578];
                          v101 = v39;
                          v102 = v6;
                          v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v98 = v858;
                          v653 = objc_opt_class();
                          v104 = v103;
                          v6 = v102;
                          v39 = v101;
                          a4 = v866;
                          v853 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v653, @"bundlePromptToneID"];
                          v1139 = v853;
                          v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1139 forKeys:&v1138 count:1];
                          v106 = v100;
                          v29 = v886;
                          v852 = v105;
                          v855 = 0;
                          v873 = 0;
                          *v856 = [v106 initWithDomain:v880 code:2 userInfo:?];
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
                        a4 = v866;
LABEL_1118:

                        v10 = v854;
                        goto LABEL_1119;
                      }

                      if (a4)
                      {
                        v92 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v93 = *MEMORY[0x1E698F240];
                        v1140 = *MEMORY[0x1E696A578];
                        v94 = v39;
                        v95 = v6;
                        v96 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v652 = objc_opt_class();
                        v97 = v96;
                        v6 = v95;
                        v39 = v94;
                        a4 = v866;
                        v855 = [v97 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v652, @"bundlePromptLanguageFormat"];
                        v1141 = v855;
                        v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1141 forKeys:&v1140 count:1];
                        v99 = v92;
                        v29 = v886;
                        v859 = 0;
                        v873 = 0;
                        *v856 = [v99 initWithDomain:v93 code:2 userInfo:v98];
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
                      a4 = v866;
LABEL_1119:

                      goto LABEL_1120;
                    }

                    if (a4)
                    {
                      v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v879 = *MEMORY[0x1E698F240];
                      v1142 = *MEMORY[0x1E696A578];
                      v79 = a4;
                      v80 = v39;
                      v81 = v6;
                      v82 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v650 = objc_opt_class();
                      v83 = v82;
                      v6 = v81;
                      v39 = v80;
                      a4 = v866;
                      v859 = [v83 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v650, @"bundleSourceRoutineExists"];
                      v1143 = v859;
                      v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1143 forKeys:&v1142 count:1];
                      v85 = v78;
                      v29 = v886;
                      v860 = v84;
                      v861 = 0;
                      v873 = 0;
                      *v79 = [v85 initWithDomain:v879 code:2 userInfo:?];
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
                    a4 = v866;
LABEL_1120:

                    goto LABEL_1121;
                  }

                  if (a4)
                  {
                    v70 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v878 = *MEMORY[0x1E698F240];
                    v1144 = *MEMORY[0x1E696A578];
                    v71 = a4;
                    v72 = v39;
                    v73 = v6;
                    v74 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v649 = objc_opt_class();
                    v75 = v74;
                    v6 = v73;
                    v39 = v72;
                    a4 = v866;
                    v861 = [v75 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v649, @"bundleSourceProactiveExists"];
                    v1145 = v861;
                    v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1145 forKeys:&v1144 count:1];
                    v77 = v70;
                    v29 = v886;
                    v862 = v76;
                    v864 = 0;
                    v873 = 0;
                    *v71 = [v77 initWithDomain:v878 code:2 userInfo:?];
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
                  a4 = v866;
LABEL_1121:

                  goto LABEL_1122;
                }

                if (a4)
                {
                  v62 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v877 = *MEMORY[0x1E698F240];
                  v1146 = *MEMORY[0x1E696A578];
                  v63 = a4;
                  v64 = v39;
                  v65 = v6;
                  v66 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v648 = objc_opt_class();
                  v67 = v66;
                  v6 = v65;
                  v39 = v64;
                  a4 = v866;
                  v864 = [v67 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v648, @"bundleSourcePhotoExists"];
                  v1147 = v864;
                  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1147 forKeys:&v1146 count:1];
                  v69 = v62;
                  v29 = v886;
                  v865 = v68;
                  v867 = 0;
                  v873 = 0;
                  *v63 = [v69 initWithDomain:v877 code:2 userInfo:?];
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
                a4 = v866;
LABEL_1122:

                goto LABEL_1123;
              }

              if (a4)
              {
                v876 = objc_alloc(MEMORY[0x1E696ABC0]);
                v54 = *MEMORY[0x1E698F240];
                v1148 = *MEMORY[0x1E696A578];
                v55 = a4;
                v56 = v6;
                v57 = objc_alloc(MEMORY[0x1E696AEC0]);
                v647 = objc_opt_class();
                v58 = v57;
                v6 = v56;
                v867 = [v58 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v647, @"bundleSourceHealthExists"];
                v1149 = v867;
                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1149 forKeys:&v1148 count:1];
                v868 = v29 = v886;
                a4 = 0;
                v873 = 0;
                *v55 = [v876 initWithDomain:v54 code:2 userInfo:?];
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

            if (a4)
            {
              v86 = objc_alloc(MEMORY[0x1E696ABC0]);
              v87 = *MEMORY[0x1E698F240];
              v1150 = *MEMORY[0x1E696A578];
              v88 = v6;
              v89 = objc_alloc(MEMORY[0x1E696AEC0]);
              v651 = objc_opt_class();
              v90 = v89;
              v6 = v88;
              v91 = [v90 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v651, @"bundleInterfaceType"];
              v1151 = v91;
              v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1151 forKeys:&v1150 count:1];
              v36 = 0;
              v873 = 0;
              *a4 = [v86 initWithDomain:v87 code:2 userInfo:v39];
              a4 = v91;
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

            self = v870;
            goto LABEL_1125;
          }

          if (a4)
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
            *a4 = v138;
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

        if (a4)
        {
          v128 = objc_alloc(MEMORY[0x1E696ABC0]);
          v129 = self;
          v130 = *MEMORY[0x1E698F240];
          v1154 = *MEMORY[0x1E696A578];
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"bundleCreationDate"];
          v1155 = v61;
          v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1155 forKeys:&v1154 count:1];
          v132 = v128;
          v29 = v131;
          v133 = v130;
          self = v129;
          v9 = v882;
          v60 = 0;
          v873 = 0;
          *a4 = [v132 initWithDomain:v133 code:2 userInfo:v131];
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

      if (a4)
      {
        v887 = objc_alloc(MEMORY[0x1E696ABC0]);
        v120 = self;
        v121 = *MEMORY[0x1E698F240];
        v1156 = *MEMORY[0x1E696A578];
        v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"bundleEndDate"];
        v1157 = v60;
        v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1157 forKeys:&v1156 count:1];
        v123 = v121;
        self = v120;
        v884 = v122;
        v59 = 0;
        v17 = 0;
        *a4 = [v887 initWithDomain:v123 code:2 userInfo:?];
        goto LABEL_209;
      }

      v59 = 0;
      v17 = 0;
LABEL_207:
      v16 = v885;
LABEL_1127:

      goto LABEL_1128;
    }

    if (a4)
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
      *a4 = v119;
      goto LABEL_207;
    }

    v10 = 0;
    v17 = 0;
    v16 = v885;
LABEL_1128:

    v8 = v888;
    goto LABEL_1129;
  }

  if (a4)
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
    *a4 = v15;
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v175 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    [(BMMomentsEventDataAction *)self->_bundleActionType writeTo:v4];
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
        [v29 writeTo:v4];
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
        [v64 writeTo:v4];
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
        [v104 writeTo:v4];
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
        [v110 writeTo:v4];
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
    [(BMMomentsEventDataEventBundlePlace *)self->_mainPlace writeTo:v4];
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
        [v116 writeTo:v4];
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
    [(BMMomentsEventDataEventBundleClusterMetadata *)self->_clusterMetadata writeTo:v4, v129];
    PBDataWriterRecallMark();
  }

  if (self->_outlierMetadata)
  {
    v161 = 0;
    PBDataWriterPlaceMark();
    [(BMMomentsEventDataEventBundleOutlierMetadata *)self->_outlierMetadata writeTo:v4];
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
    [(BMMomentsEventDataEventBundleMetadataForRank *)self->_metadataForRank writeTo:v4];
    PBDataWriterRecallMark();
  }

  v128 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BMMomentsEventDataEventBundle;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMMomentsEventDataEventBundleReadFrom(v5, v4))
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
  v104 = [(BMMomentsEventDataEventBundle *)self bundleIdentifier];
  v103 = [(BMMomentsEventDataEventBundle *)self bundleStartDate];
  v102 = [(BMMomentsEventDataEventBundle *)self bundleEndDate];
  v101 = [(BMMomentsEventDataEventBundle *)self bundleCreationDate];
  v100 = [(BMMomentsEventDataEventBundle *)self bundleExpirationDate];
  v99 = BMMomentsEventDataBundleInterfaceTypeAsString([(BMMomentsEventDataEventBundle *)self bundleInterfaceType]);
  v98 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceHealthExists](self, "bundleSourceHealthExists")}];
  v97 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourcePhotoExists](self, "bundleSourcePhotoExists")}];
  v96 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceProactiveExists](self, "bundleSourceProactiveExists")}];
  v95 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceRoutineExists](self, "bundleSourceRoutineExists")}];
  v94 = [(BMMomentsEventDataEventBundle *)self bundlePromptLanguageFormat];
  v93 = [(BMMomentsEventDataEventBundle *)self bundlePromptToneID];
  v92 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundlePromptParametersAvailability](self, "bundlePromptParametersAvailability")}];
  v91 = BMMomentsEventDataPlaceInferencePlaceTypeAsString([(BMMomentsEventDataEventBundle *)self bundlePlaceType]);
  v90 = BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeAsString([(BMMomentsEventDataEventBundle *)self bundlePlaceUserType]);
  v89 = BMMomentsEventDataEventCategoryTypeAsString([(BMMomentsEventDataEventBundle *)self bundleBaseEventCateory]);
  v88 = [(BMMomentsEventDataEventBundle *)self bundleEventIDs];
  v87 = [(BMMomentsEventDataEventBundle *)self bundleActionType];
  v86 = [(BMMomentsEventDataEventBundle *)self backgroundActions];
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
  v73 = [(BMMomentsEventDataEventBundle *)self suggestionTimestamp];
  v72 = [(BMMomentsEventDataEventBundle *)self suggestionClientIdentifier];
  v71 = [(BMMomentsEventDataEventBundle *)self suggestionViewContainerName];
  v5 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundle *)self suggestionViewVisibleTime];
  v70 = [v5 numberWithDouble:?];
  v69 = BMMomentsEventDataAppEntryEventTypeAsString([(BMMomentsEventDataEventBundle *)self appEntryEventType]);
  v68 = [(BMMomentsEventDataEventBundle *)self appEntryEventClientIdentifier];
  v67 = [(BMMomentsEventDataEventBundle *)self appEntryEventTimestamp];
  v66 = [(BMMomentsEventDataEventBundle *)self appEntryEventStartTime];
  v65 = [(BMMomentsEventDataEventBundle *)self appEntryEventEndTime];
  v64 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle appEntryEventTotalCharacters](self, "appEntryEventTotalCharacters")}];
  v63 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundle appEntryEventAddedCharacters](self, "appEntryEventAddedCharacters")}];
  v62 = BMMomentsEventDataClientActivityEventTypeAsString([(BMMomentsEventDataEventBundle *)self clientActivityEventType]);
  v61 = [(BMMomentsEventDataEventBundle *)self clientActivityEventClientIdentifier];
  v60 = [(BMMomentsEventDataEventBundle *)self clientActivityEventTimestamp];
  v59 = [(BMMomentsEventDataEventBundle *)self suggestionIdentifier];
  v58 = BMMomentsEventDataPhotoSourceTypeAsString([(BMMomentsEventDataEventBundle *)self photoSourceType]);
  v57 = BMMomentsEventDataPhotoLibraryTypeAsString([(BMMomentsEventDataEventBundle *)self photoLibraryType]);
  v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourcePostAnalyticsExists](self, "bundleSourcePostAnalyticsExists")}];
  v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourcePDExists](self, "bundleSourcePDExists")}];
  v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceMotionExists](self, "bundleSourceMotionExists")}];
  v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceBooksExists](self, "bundleSourceBooksExists")}];
  v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundle bundleSourceScreenTimeExists](self, "bundleSourceScreenTimeExists")}];
  v51 = [(BMMomentsEventDataEventBundle *)self gaPRArray];
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
  v33 = [(BMMomentsEventDataEventBundle *)self subBundleIDs];
  v32 = [(BMMomentsEventDataEventBundle *)self subSuggestionIDs];
  v31 = [(BMMomentsEventDataEventBundle *)self firstCreationDate];
  v17 = [(BMMomentsEventDataEventBundle *)self resources];
  v30 = [(BMMomentsEventDataEventBundle *)self persons];
  v29 = [(BMMomentsEventDataEventBundle *)self mainPlace];
  v22 = [(BMMomentsEventDataEventBundle *)self otherPlaces];
  v21 = [(BMMomentsEventDataEventBundle *)self photoTraits];
  v20 = [(BMMomentsEventDataEventBundle *)self clusterMetadata];
  v19 = [(BMMomentsEventDataEventBundle *)self outlierMetadata];
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
  v16 = [(BMMomentsEventDataEventBundle *)self metadataForRank];
  v28 = [v27 initWithFormat:@"BMMomentsEventDataEventBundle with bundleIdentifier: %@, bundleStartDate: %@, bundleEndDate: %@, bundleCreationDate: %@, bundleExpirationDate: %@, bundleInterfaceType: %@, bundleSourceHealthExists: %@, bundleSourcePhotoExists: %@, bundleSourceProactiveExists: %@, bundleSourceRoutineExists: %@, bundlePromptLanguageFormat: %@, bundlePromptToneID: %@, bundlePromptParametersAvailability: %@, bundlePlaceType: %@, bundlePlaceUserType: %@, bundleBaseEventCateory: %@, bundleEventIDs: %@, bundleActionType: %@, backgroundActions: %@, bundleIsFamilyIncluded: %@, bundleTimeTag: %@, isBundleResourceTypeUnknown: %@, isBundleResourceTypeValueIncluded: %@, isBundleResourceTypePhotoAssetsIncluded: %@, isBundleResourceTypeMediaIncluded: %@, isBundleResourceTypeWebLinkIncluded: %@, isBundleResourceTypeInterenceTagIncluded: %@, bundlEngagement: %@, bundleVersion: %@, rankingVersion: %@, suggestionType: %@, suggestionTimestamp: %@, suggestionClientIdentifier: %@, suggestionViewContainerName: %@, suggestionViewVisibleTime: %@, appEntryEventType: %@, appEntryEventClientIdentifier: %@, appEntryEventTimestamp: %@, appEntryEventStartTime: %@, appEntryEventEndTime: %@, appEntryEventTotalCharacters: %@, appEntryEventAddedCharacters: %@, clientActivityEventType: %@, clientActivityEventClientIdentifier: %@, clientActivityEventTimestamp: %@, suggestionIdentifier: %@, photoSourceType: %@, photoLibraryType: %@, bundleSourcePostAnalyticsExists: %@, bundleSourcePDExists: %@, bundleSourceMotionExists: %@, bundleSourceBooksExists: %@, bundleSourceScreenTimeExists: %@, gaPRArray: %@, bundlePCount: %@, ranking: %@, labelConfidenceScore: %@, timeCorrelationScore: %@, callDuration: %@, interactionCount: %@, interactionType: %@, callPlace: %@, distanceFromHome: %@, homeAvailability: %@, workAvailability: %@, bundleVisitMapItemSource: %@, bundleVisitPlaceType: %@, bundleVisitPlaceLabelGranularity: %@, bundleIncludesAnomalousEvent: %@, isFiltered: %@, bundleSuperType: %@, bundleSubType: %@, isAggregatedAndSuppressed: %@, summarizationGranularity: %@, includedInSummaryBundleOnly: %@, subBundleIDs: %@, subSuggestionIDs: %@, firstCreationDate: %@, resources: %@, persons: %@, mainPlace: %@, otherPlaces: %@, photoTraits: %@, clusterMetadata: %@, outlierMetadata: %@, bundleGoodnessScore: %@, distinctnessScore: %@, richnessScore: %@, engagementScore: %@, heuristicsScore: %@, metadataForRank: %@", v104, v103, v102, v101, v100, v99, v98, v97, v96, v95, v94, v93, v92, v91, v90, v89, v88, v87, v86, v85, v84, v83, v82, v81, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v53, v52, v51, v46, v49, v50, v42, v48, v47];

  return v28;
}

- (BMMomentsEventDataEventBundle)initWithBundleIdentifier:(void *)a3 bundleStartDate:(void *)a4 bundleEndDate:(void *)a5 bundleCreationDate:(void *)a6 bundleExpirationDate:(void *)a7 bundleInterfaceType:(int)a8 bundleSourceHealthExists:(id)a9 bundleSourcePhotoExists:(id)a10 bundleSourceProactiveExists:(id)a11 bundleSourceRoutineExists:(id)a12 bundlePromptLanguageFormat:(id)a13 bundlePromptToneID:(id)a14 bundlePromptParametersAvailability:(id)a15 bundlePlaceType:(int)a16 bundlePlaceUserType:(int)a17 bundleBaseEventCateory:(int)a18 bundleEventIDs:(id)a19 bundleActionType:(id)a20 backgroundActions:(id)a21 bundleIsFamilyIncluded:(id)a22 bundleTimeTag:(int)a23 isBundleResourceTypeUnknown:(id)a24 isBundleResourceTypeValueIncluded:(id)a25 isBundleResourceTypePhotoAssetsIncluded:(id)a26 isBundleResourceTypeMediaIncluded:(id)a27 isBundleResourceTypeWebLinkIncluded:(id)a28 isBundleResourceTypeInterenceTagIncluded:(id)a29 bundlEngagement:(int)a30 bundleVersion:(id)a31 rankingVersion:(id)a32 suggestionType:(int)a33 suggestionTimestamp:(id)a34 suggestionClientIdentifier:(id)a35 suggestionViewContainerName:(id)a36 suggestionViewVisibleTime:(id)a37 appEntryEventType:(int)a38 appEntryEventClientIdentifier:(id)a39 appEntryEventTimestamp:(id)a40 appEntryEventStartTime:(id)a41 appEntryEventEndTime:(id)a42 appEntryEventTotalCharacters:(id)a43 appEntryEventAddedCharacters:(id)a44 clientActivityEventType:(int)a45 clientActivityEventClientIdentifier:(id)a46 clientActivityEventTimestamp:(id)a47 suggestionIdentifier:(id)a48 photoSourceType:(int)a49 photoLibraryType:(int)a50 bundleSourcePostAnalyticsExists:(id)a51 bundleSourcePDExists:(id)a52 bundleSourceMotionExists:(id)a53 bundleSourceBooksExists:(id)a54 bundleSourceScreenTimeExists:(id)a55 gaPRArray:(id)a56 bundlePCount:(id)a57 ranking:(int)a58 labelConfidenceScore:(int)a59 timeCorrelationScore:(int)a60 callDuration:(int)a61 interactionCount:(int)a62 interactionType:(int)a63 callPlace:distanceFromHome:homeAvailability:workAvailability:bundleVisitMapItemSource:bundleVisitPlaceType:bundleVisitPlaceLabelGranularity:bundleIncludesAnomalousEvent:isFiltered:bundleSuperType:bundleSubType:isAggregatedAndSuppressed:summarizationGranularity:includedInSummaryBundleOnly:subBundleIDs:subSuggestionIDs:firstCreationDate:resources:persons:mainPlace:otherPlaces:photoTraits:clusterMetadata:outlierMetadata:bundleGoodnessScore:distinctnessScore:richnessScore:engagementScore:heuristicsScore:metadataForRank:
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
  v140 = a3;
  v191 = a4;
  v190 = a5;
  v189 = a6;
  v187 = a7;
  v84 = a9;
  v85 = a10;
  v86 = a11;
  v185 = a12;
  v139 = a13;
  v138 = a14;
  v184 = a15;
  v87 = v85;
  v88 = a19;
  v137 = a20;
  v136 = a21;
  v183 = a22;
  v182 = a24;
  v181 = a25;
  v180 = a26;
  v178 = a27;
  v177 = a28;
  v176 = a29;
  v175 = a31;
  v174 = a32;
  v173 = a34;
  v135 = a35;
  v134 = a36;
  v172 = a37;
  v133 = a39;
  v171 = a40;
  v170 = a41;
  v169 = a42;
  v168 = a43;
  v166 = a44;
  v132 = a46;
  v162 = a47;
  v131 = a48;
  v160 = a51;
  v159 = a52;
  v158 = a53;
  v157 = a54;
  v156 = a55;
  v130 = a56;
  v155 = a57;
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
  v192.receiver = a1;
  v192.super_class = BMMomentsEventDataEventBundle;
  v89 = [(BMEventBase *)&v192 init];

  if (v89)
  {
    v89->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v89->_bundleIdentifier, a3);
    if (v191)
    {
      v89->_hasRaw_bundleStartDate = 1;
      [v191 timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_bundleStartDate = 0;
      v90 = -1.0;
    }

    v89->_raw_bundleStartDate = v90;
    if (v190)
    {
      v89->_hasRaw_bundleEndDate = 1;
      [v190 timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_bundleEndDate = 0;
      v91 = -1.0;
    }

    v89->_raw_bundleEndDate = v91;
    if (v189)
    {
      v89->_hasRaw_bundleCreationDate = 1;
      [v189 timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_bundleCreationDate = 0;
      v92 = -1.0;
    }

    v89->_raw_bundleCreationDate = v92;
    if (v187)
    {
      v89->_hasRaw_bundleExpirationDate = 1;
      [v187 timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_bundleExpirationDate = 0;
      v93 = -1.0;
    }

    v89->_raw_bundleExpirationDate = v93;
    v89->_bundleInterfaceType = a8;
    if (v84)
    {
      v89->_hasBundleSourceHealthExists = 1;
      v89->_bundleSourceHealthExists = [v84 BOOLValue];
    }

    else
    {
      v89->_hasBundleSourceHealthExists = 0;
      v89->_bundleSourceHealthExists = 0;
    }

    if (v85)
    {
      v89->_hasBundleSourcePhotoExists = 1;
      v89->_bundleSourcePhotoExists = [v85 BOOLValue];
    }

    else
    {
      v89->_hasBundleSourcePhotoExists = 0;
      v89->_bundleSourcePhotoExists = 0;
    }

    if (v86)
    {
      v89->_hasBundleSourceProactiveExists = 1;
      v89->_bundleSourceProactiveExists = [v86 BOOLValue];
    }

    else
    {
      v89->_hasBundleSourceProactiveExists = 0;
      v89->_bundleSourceProactiveExists = 0;
    }

    if (v185)
    {
      v89->_hasBundleSourceRoutineExists = 1;
      v89->_bundleSourceRoutineExists = [v185 BOOLValue];
    }

    else
    {
      v89->_hasBundleSourceRoutineExists = 0;
      v89->_bundleSourceRoutineExists = 0;
    }

    objc_storeStrong(&v89->_bundlePromptLanguageFormat, a13);
    objc_storeStrong(&v89->_bundlePromptToneID, a14);
    if (v184)
    {
      v89->_hasBundlePromptParametersAvailability = 1;
      v89->_bundlePromptParametersAvailability = [v184 BOOLValue];
    }

    else
    {
      v89->_hasBundlePromptParametersAvailability = 0;
      v89->_bundlePromptParametersAvailability = 0;
    }

    v89->_bundlePlaceType = a16;
    v89->_bundlePlaceUserType = a17;
    v89->_bundleBaseEventCateory = a18;
    objc_storeStrong(&v89->_bundleEventIDs, a19);
    objc_storeStrong(&v89->_bundleActionType, a20);
    objc_storeStrong(&v89->_backgroundActions, a21);
    if (v183)
    {
      v89->_hasBundleIsFamilyIncluded = 1;
      v89->_bundleIsFamilyIncluded = [v183 BOOLValue];
    }

    else
    {
      v89->_hasBundleIsFamilyIncluded = 0;
      v89->_bundleIsFamilyIncluded = 0;
    }

    v89->_bundleTimeTag = a23;
    if (v182)
    {
      v89->_hasIsBundleResourceTypeUnknown = 1;
      v89->_isBundleResourceTypeUnknown = [v182 BOOLValue];
    }

    else
    {
      v89->_hasIsBundleResourceTypeUnknown = 0;
      v89->_isBundleResourceTypeUnknown = 0;
    }

    if (v181)
    {
      v89->_hasIsBundleResourceTypeValueIncluded = 1;
      v89->_isBundleResourceTypeValueIncluded = [v181 BOOLValue];
    }

    else
    {
      v89->_hasIsBundleResourceTypeValueIncluded = 0;
      v89->_isBundleResourceTypeValueIncluded = 0;
    }

    if (v180)
    {
      v89->_hasIsBundleResourceTypePhotoAssetsIncluded = 1;
      v89->_isBundleResourceTypePhotoAssetsIncluded = [v180 BOOLValue];
    }

    else
    {
      v89->_hasIsBundleResourceTypePhotoAssetsIncluded = 0;
      v89->_isBundleResourceTypePhotoAssetsIncluded = 0;
    }

    if (v178)
    {
      v89->_hasIsBundleResourceTypeMediaIncluded = 1;
      v89->_isBundleResourceTypeMediaIncluded = [v178 BOOLValue];
    }

    else
    {
      v89->_hasIsBundleResourceTypeMediaIncluded = 0;
      v89->_isBundleResourceTypeMediaIncluded = 0;
    }

    if (v177)
    {
      v89->_hasIsBundleResourceTypeWebLinkIncluded = 1;
      v89->_isBundleResourceTypeWebLinkIncluded = [v177 BOOLValue];
    }

    else
    {
      v89->_hasIsBundleResourceTypeWebLinkIncluded = 0;
      v89->_isBundleResourceTypeWebLinkIncluded = 0;
    }

    if (v176)
    {
      v89->_hasIsBundleResourceTypeInterenceTagIncluded = 1;
      v89->_isBundleResourceTypeInterenceTagIncluded = [v176 BOOLValue];
    }

    else
    {
      v89->_hasIsBundleResourceTypeInterenceTagIncluded = 0;
      v89->_isBundleResourceTypeInterenceTagIncluded = 0;
    }

    v89->_bundlEngagement = a30;
    if (v175)
    {
      v89->_hasBundleVersion = 1;
      [v175 doubleValue];
    }

    else
    {
      v89->_hasBundleVersion = 0;
      v94 = -1.0;
    }

    v89->_bundleVersion = v94;
    if (v174)
    {
      v89->_hasRankingVersion = 1;
      [v174 doubleValue];
    }

    else
    {
      v89->_hasRankingVersion = 0;
      v95 = -1.0;
    }

    v89->_rankingVersion = v95;
    v89->_suggestionType = a33;
    if (v173)
    {
      v89->_hasRaw_suggestionTimestamp = 1;
      [v173 timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_suggestionTimestamp = 0;
      v96 = -1.0;
    }

    v89->_raw_suggestionTimestamp = v96;
    objc_storeStrong(&v89->_suggestionClientIdentifier, a35);
    objc_storeStrong(&v89->_suggestionViewContainerName, a36);
    if (v172)
    {
      v89->_hasSuggestionViewVisibleTime = 1;
      [v172 floatValue];
      v98 = v97;
    }

    else
    {
      v89->_hasSuggestionViewVisibleTime = 0;
      v98 = -1.0;
    }

    v89->_suggestionViewVisibleTime = v98;
    v89->_appEntryEventType = a38;
    objc_storeStrong(&v89->_appEntryEventClientIdentifier, a39);
    if (v171)
    {
      v89->_hasRaw_appEntryEventTimestamp = 1;
      [v171 timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_appEntryEventTimestamp = 0;
      v99 = -1.0;
    }

    v89->_raw_appEntryEventTimestamp = v99;
    if (v170)
    {
      v89->_hasRaw_appEntryEventStartTime = 1;
      [v170 timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_appEntryEventStartTime = 0;
      v100 = -1.0;
    }

    v89->_raw_appEntryEventStartTime = v100;
    if (v169)
    {
      v89->_hasRaw_appEntryEventEndTime = 1;
      [v169 timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_appEntryEventEndTime = 0;
      v101 = -1.0;
    }

    v89->_raw_appEntryEventEndTime = v101;
    if (v168)
    {
      v89->_hasAppEntryEventTotalCharacters = 1;
      v102 = [v168 intValue];
    }

    else
    {
      v89->_hasAppEntryEventTotalCharacters = 0;
      v102 = -1;
    }

    v89->_appEntryEventTotalCharacters = v102;
    if (v166)
    {
      v89->_hasAppEntryEventAddedCharacters = 1;
      v103 = [v166 intValue];
    }

    else
    {
      v89->_hasAppEntryEventAddedCharacters = 0;
      v103 = -1;
    }

    v89->_appEntryEventAddedCharacters = v103;
    v89->_clientActivityEventType = a45;
    objc_storeStrong(&v89->_clientActivityEventClientIdentifier, a46);
    if (v162)
    {
      v89->_hasRaw_clientActivityEventTimestamp = 1;
      [v162 timeIntervalSince1970];
    }

    else
    {
      v89->_hasRaw_clientActivityEventTimestamp = 0;
      v104 = -1.0;
    }

    v89->_raw_clientActivityEventTimestamp = v104;
    objc_storeStrong(&v89->_suggestionIdentifier, a48);
    v89->_photoSourceType = a49;
    v89->_photoLibraryType = a50;
    if (v160)
    {
      v89->_hasBundleSourcePostAnalyticsExists = 1;
      v89->_bundleSourcePostAnalyticsExists = [v160 BOOLValue];
    }

    else
    {
      v89->_hasBundleSourcePostAnalyticsExists = 0;
      v89->_bundleSourcePostAnalyticsExists = 0;
    }

    if (v159)
    {
      v89->_hasBundleSourcePDExists = 1;
      v89->_bundleSourcePDExists = [v159 BOOLValue];
    }

    else
    {
      v89->_hasBundleSourcePDExists = 0;
      v89->_bundleSourcePDExists = 0;
    }

    if (v158)
    {
      v89->_hasBundleSourceMotionExists = 1;
      v89->_bundleSourceMotionExists = [v158 BOOLValue];
    }

    else
    {
      v89->_hasBundleSourceMotionExists = 0;
      v89->_bundleSourceMotionExists = 0;
    }

    if (v157)
    {
      v89->_hasBundleSourceBooksExists = 1;
      v89->_bundleSourceBooksExists = [v157 BOOLValue];
    }

    else
    {
      v89->_hasBundleSourceBooksExists = 0;
      v89->_bundleSourceBooksExists = 0;
    }

    if (v156)
    {
      v89->_hasBundleSourceScreenTimeExists = 1;
      v89->_bundleSourceScreenTimeExists = [v156 BOOLValue];
    }

    else
    {
      v89->_hasBundleSourceScreenTimeExists = 0;
      v89->_bundleSourceScreenTimeExists = 0;
    }

    objc_storeStrong(&v89->_gaPRArray, a56);
    if (v155)
    {
      v89->_hasBundlePCount = 1;
      v105 = [v155 intValue];
    }

    else
    {
      v89->_hasBundlePCount = 0;
      v105 = -1;
    }

    v106 = a74;
    v107 = a73;
    v89->_bundlePCount = v105;
    v89->_ranking = a58;
    v89->_labelConfidenceScore = a59;
    v89->_timeCorrelationScore = a60;
    v89->_callDuration = a61;
    v89->_interactionCount = a62;
    v89->_interactionType = a63;
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
      v108 = [v154 BOOLValue];
      v107 = a73;
      v106 = a74;
      v89->_isFiltered = v108;
    }

    else
    {
      v89->_hasIsFiltered = 0;
      v89->_isFiltered = 0;
    }

    v87 = v85;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMMomentsEventDataEventBundle alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[57] = 0;
    }
  }

  return v4;
}

- (uint64_t)initWithBundleIdentifier:(uint64_t)a3 bundleStartDate:(uint64_t)a4 bundleEndDate:(uint64_t)a5 bundleCreationDate:(uint64_t)a6 bundleExpirationDate:(uint64_t)a7 bundleInterfaceType:(unsigned int)a8 bundleSourceHealthExists:(id)a9 bundleSourcePhotoExists:(uint64_t)a10 bundleSourceProactiveExists:(id)a11 bundleSourceRoutineExists:(uint64_t)a12 bundlePromptLanguageFormat:(id)a13 bundlePromptToneID:(uint64_t)a14 bundlePromptParametersAvailability:(id)a15 bundlePlaceType:(uint64_t)a16 bundlePlaceUserType:(int)a17 bundleBaseEventCateory:(id)a18 bundleEventIDs:(uint64_t)a19 bundleActionType:(id)a20 backgroundActions:(id)a21 bundleIsFamilyIncluded:(int)a22 bundleTimeTag:(id)a23 isBundleResourceTypeUnknown:(uint64_t)a24 isBundleResourceTypeValueIncluded:(id)a25 isBundleResourceTypePhotoAssetsIncluded:(uint64_t)a26 isBundleResourceTypeMediaIncluded:(id)a27 isBundleResourceTypeWebLinkIncluded:(id)a28 isBundleResourceTypeInterenceTagIncluded:(int)a29 bundlEngagement:(id)a30 bundleVersion:(id)a31 rankingVersion:(int)a32 suggestionType:(id)a33 suggestionTimestamp:(uint64_t)a34 suggestionClientIdentifier:(id)a35 suggestionViewContainerName:(id)a36 suggestionViewVisibleTime:(int)a37 appEntryEventType:(id)a38 appEntryEventClientIdentifier:(uint64_t)a39 appEntryEventTimestamp:(uint64_t)a40 appEntryEventStartTime:(uint64_t)a41 appEntryEventEndTime:(id)a42 appEntryEventTotalCharacters:(id)a43 appEntryEventAddedCharacters:(int)a44 clientActivityEventType:(id)a45 clientActivityEventClientIdentifier:(uint64_t)a46 clientActivityEventTimestamp:(id)a47 suggestionIdentifier:(uint64_t)a48 photoSourceType:(id)a49 photoLibraryType:(uint64_t)a50 bundleSourcePostAnalyticsExists:(id)a51 bundleSourcePDExists:(uint64_t)a52 bundleSourceMotionExists:(id)a53 bundleSourceBooksExists:(uint64_t)a54 bundleSourceScreenTimeExists:(id)a55 gaPRArray:(uint64_t)a56 bundlePCount:(uint64_t)a57 ranking:(uint64_t)a58 labelConfidenceScore:(uint64_t)a59 timeCorrelationScore:(uint64_t)a60 callDuration:(uint64_t)a61 interactionCount:(uint64_t)a62 interactionType:callPlace:distanceFromHome:homeAvailability:workAvailability:bundleVisitMapItemSource:bundleVisitPlaceType:bundleVisitPlaceLabelGranularity:bundleIncludesAnomalousEvent:
{
  v86 = a8;
  v85 = a7;
  LODWORD(v68) = a44;
  LODWORD(v67) = a37;
  LODWORD(v66) = a32;
  LODWORD(v65) = a29;
  LODWORD(v64) = a22;
  LODWORD(v63) = a17;
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
  return [a1 initWithBundleIdentifier:a3 bundleStartDate:a4 bundleEndDate:a5 bundleCreationDate:a6 bundleExpirationDate:a7 bundleInterfaceType:a8 bundleSourceHealthExists:a9 bundleSourcePhotoExists:a10 bundleSourceProactiveExists:a11 bundleSourceRoutineExists:a12 bundlePromptLanguageFormat:a13 bundlePromptToneID:a14 bundlePromptParametersAvailability:a15 bundlePlaceType:a16 bundlePlaceUserType:v63 bundleBaseEventCateory:a18 bundleEventIDs:a19 bundleActionType:a20 backgroundActions:a21 bundleIsFamilyIncluded:v64 bundleTimeTag:a23 isBundleResourceTypeUnknown:a24 isBundleResourceTypeValueIncluded:a25 isBundleResourceTypePhotoAssetsIncluded:a26 isBundleResourceTypeMediaIncluded:a27 isBundleResourceTypeWebLinkIncluded:a28 isBundleResourceTypeInterenceTagIncluded:v65 bundlEngagement:a30 bundleVersion:a31 rankingVersion:v66 suggestionType:a33 suggestionTimestamp:a34 suggestionClientIdentifier:a35 suggestionViewContainerName:a36 suggestionViewVisibleTime:v67 appEntryEventType:a38 appEntryEventClientIdentifier:a39 appEntryEventTimestamp:a40 appEntryEventStartTime:a41 appEntryEventEndTime:a42 appEntryEventTotalCharacters:a43 appEntryEventAddedCharacters:v68 clientActivityEventType:a45 clientActivityEventClientIdentifier:a46 clientActivityEventTimestamp:a47 suggestionIdentifier:a48 photoSourceType:a49 photoLibraryType:a50 bundleSourcePostAnalyticsExists:a51 bundleSourcePDExists:a52 bundleSourceMotionExists:a53 bundleSourceBooksExists:a54 bundleSourceScreenTimeExists:a55 gaPRArray:a56 bundlePCount:a57 ranking:a58 labelConfidenceScore:a59 timeCorrelationScore:a60 callDuration:a61 interactionCount:a62 interactionType:0 callPlace:? distanceFromHome:? homeAvailability:? workAvailability:? bundleVisitMapItemSource:? bundleVisitPlaceType:? bundleVisitPlaceLabelGranularity:? bundleIncludesAnomalousEvent:? isFiltered:? bundleSuperType:? bundleSubType:? isAggregatedAndSuppressed:? summarizationGranularity:? includedInSummaryBundleOnly:? subBundleIDs:? subSuggestionIDs:? firstCreationDate:? resources:? persons:? mainPlace:? otherPlaces:? photoTraits:? clusterMetadata:? outlierMetadata:? bundleGoodnessScore:? distinctnessScore:? richnessScore:? engagementScore:? heuristicsScore:? metadataForRank:?];
}

@end