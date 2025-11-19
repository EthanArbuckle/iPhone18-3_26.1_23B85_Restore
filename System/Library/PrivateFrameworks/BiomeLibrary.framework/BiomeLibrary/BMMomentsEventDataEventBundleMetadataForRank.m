@interface BMMomentsEventDataEventBundleMetadataForRank
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMomentsEventDataEventBundleMetadataForRank)initWithDailyAggregateCallDuration:(id)a3 callDuration:(id)a4 burstyInteractionCount:(id)a5 burstyOutgoingInteractionCount:(id)a6 multipleInteractionTypes:(id)a7 contactLocationWork:(id)a8 isFamilyContact:(id)a9 isCoworkerContact:(id)a10 isRepetitiveContact:(id)a11 isGroupConversation:(id)a12 peopleCountWeightedSum:(id)a13 peopleCountWeightedAverage:(id)a14 peopleCountMax:(id)a15 peopleDensityWeightedSum:(id)a16 peopleDensityWeightedAverage:(id)a17 peopleDensityMax:(id)a18 peopleDensityWeightedConfidenceSum:(id)a19 peopleDensityWeightedConfidenceAverage:(id)a20 mediaTotalPlayTime:(id)a21 mediaLength:(id)a22 mediaActionIsRepeat:(id)a23 timeAtHomeDuration:(id)a24 photosAtHomeCurationScore:(id)a25 workoutDuration:(id)a26 motionActivityWalkSpan:(id)a27 visitDuration:(id)a28 poiCategoryInterestingness:(id)a29 familiarityIndex:(id)a30 stateOfMindDomains:(id)a31 stateOfMindLabels:(id)a32 stateOfMindReflectiveIntervals:(id)a33 stateOfMindValenceClassifications:(id)a34 stateOfMindValenceValues:(id)a35 stateOfMindLoggedIn3pApp:(id)a36 stateOfMindLoggedInJournalApp:(id)a37;
- (BMMomentsEventDataEventBundleMetadataForRank)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_stateOfMindDomainsJSONArray;
- (id)_stateOfMindLabelsJSONArray;
- (id)_stateOfMindReflectiveIntervalsJSONArray;
- (id)_stateOfMindValenceClassificationsJSONArray;
- (id)_stateOfMindValenceValuesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMomentsEventDataEventBundleMetadataForRank

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMMomentsEventDataEventBundleMetadataForRank hasDailyAggregateCallDuration](self, "hasDailyAggregateCallDuration") || [v5 hasDailyAggregateCallDuration])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasDailyAggregateCallDuration])
      {
        goto LABEL_173;
      }

      if (![v5 hasDailyAggregateCallDuration])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self dailyAggregateCallDuration];
      v7 = v6;
      [v5 dailyAggregateCallDuration];
      if (v7 != v8)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasCallDuration](self, "hasCallDuration") || [v5 hasCallDuration])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasCallDuration])
      {
        goto LABEL_173;
      }

      if (![v5 hasCallDuration])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self callDuration];
      v10 = v9;
      [v5 callDuration];
      if (v10 != v11)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasBurstyInteractionCount](self, "hasBurstyInteractionCount") || [v5 hasBurstyInteractionCount])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasBurstyInteractionCount])
      {
        goto LABEL_173;
      }

      if (![v5 hasBurstyInteractionCount])
      {
        goto LABEL_173;
      }

      v12 = [(BMMomentsEventDataEventBundleMetadataForRank *)self burstyInteractionCount];
      if (v12 != [v5 burstyInteractionCount])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasBurstyOutgoingInteractionCount](self, "hasBurstyOutgoingInteractionCount") || [v5 hasBurstyOutgoingInteractionCount])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasBurstyOutgoingInteractionCount])
      {
        goto LABEL_173;
      }

      if (![v5 hasBurstyOutgoingInteractionCount])
      {
        goto LABEL_173;
      }

      v13 = [(BMMomentsEventDataEventBundleMetadataForRank *)self burstyOutgoingInteractionCount];
      if (v13 != [v5 burstyOutgoingInteractionCount])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasMultipleInteractionTypes](self, "hasMultipleInteractionTypes") || [v5 hasMultipleInteractionTypes])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMultipleInteractionTypes])
      {
        goto LABEL_173;
      }

      if (![v5 hasMultipleInteractionTypes])
      {
        goto LABEL_173;
      }

      v14 = [(BMMomentsEventDataEventBundleMetadataForRank *)self multipleInteractionTypes];
      if (v14 != [v5 multipleInteractionTypes])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasContactLocationWork](self, "hasContactLocationWork") || [v5 hasContactLocationWork])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasContactLocationWork])
      {
        goto LABEL_173;
      }

      if (![v5 hasContactLocationWork])
      {
        goto LABEL_173;
      }

      v15 = [(BMMomentsEventDataEventBundleMetadataForRank *)self contactLocationWork];
      if (v15 != [v5 contactLocationWork])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasIsFamilyContact](self, "hasIsFamilyContact") || [v5 hasIsFamilyContact])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsFamilyContact])
      {
        goto LABEL_173;
      }

      if (![v5 hasIsFamilyContact])
      {
        goto LABEL_173;
      }

      v16 = [(BMMomentsEventDataEventBundleMetadataForRank *)self isFamilyContact];
      if (v16 != [v5 isFamilyContact])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasIsCoworkerContact](self, "hasIsCoworkerContact") || [v5 hasIsCoworkerContact])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsCoworkerContact])
      {
        goto LABEL_173;
      }

      if (![v5 hasIsCoworkerContact])
      {
        goto LABEL_173;
      }

      v17 = [(BMMomentsEventDataEventBundleMetadataForRank *)self isCoworkerContact];
      if (v17 != [v5 isCoworkerContact])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasIsRepetitiveContact](self, "hasIsRepetitiveContact") || [v5 hasIsRepetitiveContact])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsRepetitiveContact])
      {
        goto LABEL_173;
      }

      if (![v5 hasIsRepetitiveContact])
      {
        goto LABEL_173;
      }

      v18 = [(BMMomentsEventDataEventBundleMetadataForRank *)self isRepetitiveContact];
      if (v18 != [v5 isRepetitiveContact])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasIsGroupConversation](self, "hasIsGroupConversation") || [v5 hasIsGroupConversation])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsGroupConversation])
      {
        goto LABEL_173;
      }

      if (![v5 hasIsGroupConversation])
      {
        goto LABEL_173;
      }

      v19 = [(BMMomentsEventDataEventBundleMetadataForRank *)self isGroupConversation];
      if (v19 != [v5 isGroupConversation])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleCountWeightedSum](self, "hasPeopleCountWeightedSum") || [v5 hasPeopleCountWeightedSum])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleCountWeightedSum])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleCountWeightedSum])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedSum];
      v21 = v20;
      [v5 peopleCountWeightedSum];
      if (v21 != v22)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleCountWeightedAverage](self, "hasPeopleCountWeightedAverage") || [v5 hasPeopleCountWeightedAverage])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleCountWeightedAverage])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleCountWeightedAverage])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedAverage];
      v24 = v23;
      [v5 peopleCountWeightedAverage];
      if (v24 != v25)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleCountMax](self, "hasPeopleCountMax") || [v5 hasPeopleCountMax])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleCountMax])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleCountMax])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountMax];
      v27 = v26;
      [v5 peopleCountMax];
      if (v27 != v28)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleDensityWeightedSum](self, "hasPeopleDensityWeightedSum") || [v5 hasPeopleDensityWeightedSum])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedSum])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleDensityWeightedSum])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedSum];
      v30 = v29;
      [v5 peopleDensityWeightedSum];
      if (v30 != v31)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleDensityWeightedAverage](self, "hasPeopleDensityWeightedAverage") || [v5 hasPeopleDensityWeightedAverage])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedAverage])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleDensityWeightedAverage])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedAverage];
      v33 = v32;
      [v5 peopleDensityWeightedAverage];
      if (v33 != v34)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleDensityMax](self, "hasPeopleDensityMax") || [v5 hasPeopleDensityMax])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityMax])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleDensityMax])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityMax];
      v36 = v35;
      [v5 peopleDensityMax];
      if (v36 != v37)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleDensityWeightedConfidenceSum](self, "hasPeopleDensityWeightedConfidenceSum") || [v5 hasPeopleDensityWeightedConfidenceSum])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedConfidenceSum])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleDensityWeightedConfidenceSum])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceSum];
      v39 = v38;
      [v5 peopleDensityWeightedConfidenceSum];
      if (v39 != v40)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleDensityWeightedConfidenceAverage](self, "hasPeopleDensityWeightedConfidenceAverage") || [v5 hasPeopleDensityWeightedConfidenceAverage])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedConfidenceAverage])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleDensityWeightedConfidenceAverage])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceAverage];
      v42 = v41;
      [v5 peopleDensityWeightedConfidenceAverage];
      if (v42 != v43)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasMediaTotalPlayTime](self, "hasMediaTotalPlayTime") || [v5 hasMediaTotalPlayTime])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMediaTotalPlayTime])
      {
        goto LABEL_173;
      }

      if (![v5 hasMediaTotalPlayTime])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaTotalPlayTime];
      v45 = v44;
      [v5 mediaTotalPlayTime];
      if (v45 != v46)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasMediaLength](self, "hasMediaLength") || [v5 hasMediaLength])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMediaLength])
      {
        goto LABEL_173;
      }

      if (![v5 hasMediaLength])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaLength];
      v48 = v47;
      [v5 mediaLength];
      if (v48 != v49)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasMediaActionIsRepeat](self, "hasMediaActionIsRepeat") || [v5 hasMediaActionIsRepeat])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMediaActionIsRepeat])
      {
        goto LABEL_173;
      }

      if (![v5 hasMediaActionIsRepeat])
      {
        goto LABEL_173;
      }

      v50 = [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaActionIsRepeat];
      if (v50 != [v5 mediaActionIsRepeat])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasTimeAtHomeDuration](self, "hasTimeAtHomeDuration") || [v5 hasTimeAtHomeDuration])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasTimeAtHomeDuration])
      {
        goto LABEL_173;
      }

      if (![v5 hasTimeAtHomeDuration])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self timeAtHomeDuration];
      v52 = v51;
      [v5 timeAtHomeDuration];
      if (v52 != v53)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPhotosAtHomeCurationScore](self, "hasPhotosAtHomeCurationScore") || [v5 hasPhotosAtHomeCurationScore])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPhotosAtHomeCurationScore])
      {
        goto LABEL_173;
      }

      if (![v5 hasPhotosAtHomeCurationScore])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self photosAtHomeCurationScore];
      v55 = v54;
      [v5 photosAtHomeCurationScore];
      if (v55 != v56)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasWorkoutDuration](self, "hasWorkoutDuration") || [v5 hasWorkoutDuration])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasWorkoutDuration])
      {
        goto LABEL_173;
      }

      if (![v5 hasWorkoutDuration])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self workoutDuration];
      v58 = v57;
      [v5 workoutDuration];
      if (v58 != v59)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasMotionActivityWalkSpan](self, "hasMotionActivityWalkSpan") || [v5 hasMotionActivityWalkSpan])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMotionActivityWalkSpan])
      {
        goto LABEL_173;
      }

      if (![v5 hasMotionActivityWalkSpan])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self motionActivityWalkSpan];
      v61 = v60;
      [v5 motionActivityWalkSpan];
      if (v61 != v62)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasVisitDuration](self, "hasVisitDuration") || [v5 hasVisitDuration])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasVisitDuration])
      {
        goto LABEL_173;
      }

      if (![v5 hasVisitDuration])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self visitDuration];
      v64 = v63;
      [v5 visitDuration];
      if (v64 != v65)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPoiCategoryInterestingness](self, "hasPoiCategoryInterestingness") || [v5 hasPoiCategoryInterestingness])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPoiCategoryInterestingness])
      {
        goto LABEL_173;
      }

      if (![v5 hasPoiCategoryInterestingness])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self poiCategoryInterestingness];
      v67 = v66;
      [v5 poiCategoryInterestingness];
      if (v67 != v68)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasFamiliarityIndex](self, "hasFamiliarityIndex") || [v5 hasFamiliarityIndex])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasFamiliarityIndex])
      {
        goto LABEL_173;
      }

      if (![v5 hasFamiliarityIndex])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self familiarityIndex];
      v70 = v69;
      [v5 familiarityIndex];
      if (v70 != v71)
      {
        goto LABEL_173;
      }
    }

    v72 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindDomains];
    v73 = [v5 stateOfMindDomains];
    v74 = v73;
    if (v72 == v73)
    {
    }

    else
    {
      v75 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindDomains];
      v76 = [v5 stateOfMindDomains];
      v77 = [v75 isEqual:v76];

      if (!v77)
      {
        goto LABEL_173;
      }
    }

    v79 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindLabels];
    v80 = [v5 stateOfMindLabels];
    v81 = v80;
    if (v79 == v80)
    {
    }

    else
    {
      v82 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindLabels];
      v83 = [v5 stateOfMindLabels];
      v84 = [v82 isEqual:v83];

      if (!v84)
      {
        goto LABEL_173;
      }
    }

    v85 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindReflectiveIntervals];
    v86 = [v5 stateOfMindReflectiveIntervals];
    v87 = v86;
    if (v85 == v86)
    {
    }

    else
    {
      v88 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindReflectiveIntervals];
      v89 = [v5 stateOfMindReflectiveIntervals];
      v90 = [v88 isEqual:v89];

      if (!v90)
      {
        goto LABEL_173;
      }
    }

    v91 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceClassifications];
    v92 = [v5 stateOfMindValenceClassifications];
    v93 = v92;
    if (v91 == v92)
    {
    }

    else
    {
      v94 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceClassifications];
      v95 = [v5 stateOfMindValenceClassifications];
      v96 = [v94 isEqual:v95];

      if (!v96)
      {
        goto LABEL_173;
      }
    }

    v97 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceValues];
    v98 = [v5 stateOfMindValenceValues];
    v99 = v98;
    if (v97 == v98)
    {
    }

    else
    {
      v100 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceValues];
      v101 = [v5 stateOfMindValenceValues];
      v102 = [v100 isEqual:v101];

      if (!v102)
      {
        goto LABEL_173;
      }
    }

    if (!-[BMMomentsEventDataEventBundleMetadataForRank hasStateOfMindLoggedIn3pApp](self, "hasStateOfMindLoggedIn3pApp") && ![v5 hasStateOfMindLoggedIn3pApp] || -[BMMomentsEventDataEventBundleMetadataForRank hasStateOfMindLoggedIn3pApp](self, "hasStateOfMindLoggedIn3pApp") && objc_msgSend(v5, "hasStateOfMindLoggedIn3pApp") && (v103 = -[BMMomentsEventDataEventBundleMetadataForRank stateOfMindLoggedIn3pApp](self, "stateOfMindLoggedIn3pApp"), v103 == objc_msgSend(v5, "stateOfMindLoggedIn3pApp")))
    {
      if (!-[BMMomentsEventDataEventBundleMetadataForRank hasStateOfMindLoggedInJournalApp](self, "hasStateOfMindLoggedInJournalApp") && ![v5 hasStateOfMindLoggedInJournalApp])
      {
        LOBYTE(v78) = 1;
        goto LABEL_174;
      }

      if (-[BMMomentsEventDataEventBundleMetadataForRank hasStateOfMindLoggedInJournalApp](self, "hasStateOfMindLoggedInJournalApp") && [v5 hasStateOfMindLoggedInJournalApp])
      {
        v104 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindLoggedInJournalApp];
        v78 = v104 ^ [v5 stateOfMindLoggedInJournalApp] ^ 1;
LABEL_174:

        goto LABEL_175;
      }
    }

LABEL_173:
    LOBYTE(v78) = 0;
    goto LABEL_174;
  }

  LOBYTE(v78) = 0;
LABEL_175:

  return v78;
}

- (id)jsonDictionary
{
  v153[35] = *MEMORY[0x1E69E9840];
  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasDailyAggregateCallDuration]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self dailyAggregateCallDuration], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self dailyAggregateCallDuration];
    v4 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self dailyAggregateCallDuration];
    v5 = [v4 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasCallDuration]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self callDuration], fabs(v6) == INFINITY))
  {
    v8 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self callDuration];
    v7 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self callDuration];
    v8 = [v7 numberWithDouble:?];
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasBurstyInteractionCount])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundleMetadataForRank burstyInteractionCount](self, "burstyInteractionCount")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasBurstyOutgoingInteractionCount])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundleMetadataForRank burstyOutgoingInteractionCount](self, "burstyOutgoingInteractionCount")}];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasMultipleInteractionTypes])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank multipleInteractionTypes](self, "multipleInteractionTypes")}];
  }

  else
  {
    v11 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasContactLocationWork])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank contactLocationWork](self, "contactLocationWork")}];
  }

  else
  {
    v12 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsFamilyContact])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isFamilyContact](self, "isFamilyContact")}];
  }

  else
  {
    v13 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsCoworkerContact])
  {
    v151 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isCoworkerContact](self, "isCoworkerContact")}];
  }

  else
  {
    v151 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsRepetitiveContact])
  {
    v150 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isRepetitiveContact](self, "isRepetitiveContact")}];
  }

  else
  {
    v150 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsGroupConversation])
  {
    v149 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isGroupConversation](self, "isGroupConversation")}];
  }

  else
  {
    v149 = 0;
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleCountWeightedSum]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedSum], fabs(v14) == INFINITY))
  {
    v148 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedSum];
    v15 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedSum];
    v148 = [v15 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleCountWeightedAverage]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedAverage], fabs(v16) == INFINITY))
  {
    v147 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedAverage];
    v17 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedAverage];
    v147 = [v17 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleCountMax]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountMax], fabs(v18) == INFINITY))
  {
    v146 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountMax];
    v19 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountMax];
    v146 = [v19 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedSum]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedSum], fabs(v20) == INFINITY))
  {
    v145 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedSum];
    v21 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedSum];
    v145 = [v21 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedAverage]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedAverage], fabs(v22) == INFINITY))
  {
    v144 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedAverage];
    v23 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedAverage];
    v144 = [v23 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityMax]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityMax], fabs(v24) == INFINITY))
  {
    v143 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityMax];
    v25 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityMax];
    v143 = [v25 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedConfidenceSum]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceSum], fabs(v26) == INFINITY))
  {
    v142 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceSum];
    v27 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceSum];
    v142 = [v27 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedConfidenceAverage]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceAverage], fabs(v28) == INFINITY))
  {
    v141 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceAverage];
    v29 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceAverage];
    v141 = [v29 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMediaTotalPlayTime]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self mediaTotalPlayTime], fabs(v30) == INFINITY))
  {
    v140 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaTotalPlayTime];
    v31 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaTotalPlayTime];
    v140 = [v31 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMediaLength]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self mediaLength], fabs(v32) == INFINITY))
  {
    v139 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaLength];
    v33 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaLength];
    v139 = [v33 numberWithDouble:?];
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasMediaActionIsRepeat])
  {
    v138 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank mediaActionIsRepeat](self, "mediaActionIsRepeat")}];
  }

  else
  {
    v138 = 0;
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasTimeAtHomeDuration]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self timeAtHomeDuration], fabs(v34) == INFINITY))
  {
    v137 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self timeAtHomeDuration];
    v35 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self timeAtHomeDuration];
    v137 = [v35 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPhotosAtHomeCurationScore]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self photosAtHomeCurationScore], fabs(v36) == INFINITY))
  {
    v136 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self photosAtHomeCurationScore];
    v37 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self photosAtHomeCurationScore];
    v136 = [v37 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasWorkoutDuration]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self workoutDuration], fabs(v38) == INFINITY))
  {
    v135 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self workoutDuration];
    v39 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self workoutDuration];
    v135 = [v39 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMotionActivityWalkSpan]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self motionActivityWalkSpan], fabs(v40) == INFINITY))
  {
    v134 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self motionActivityWalkSpan];
    v41 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self motionActivityWalkSpan];
    v134 = [v41 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasVisitDuration]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self visitDuration], fabs(v42) == INFINITY))
  {
    v133 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self visitDuration];
    v43 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self visitDuration];
    v133 = [v43 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPoiCategoryInterestingness]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self poiCategoryInterestingness], fabs(v44) == INFINITY))
  {
    v132 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self poiCategoryInterestingness];
    v45 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self poiCategoryInterestingness];
    v132 = [v45 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasFamiliarityIndex]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self familiarityIndex], fabs(v46) == INFINITY))
  {
    v131 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self familiarityIndex];
    v47 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self familiarityIndex];
    v131 = [v47 numberWithDouble:?];
  }

  v130 = [(BMMomentsEventDataEventBundleMetadataForRank *)self _stateOfMindDomainsJSONArray];
  v129 = [(BMMomentsEventDataEventBundleMetadataForRank *)self _stateOfMindLabelsJSONArray];
  v128 = [(BMMomentsEventDataEventBundleMetadataForRank *)self _stateOfMindReflectiveIntervalsJSONArray];
  v127 = [(BMMomentsEventDataEventBundleMetadataForRank *)self _stateOfMindValenceClassificationsJSONArray];
  v126 = [(BMMomentsEventDataEventBundleMetadataForRank *)self _stateOfMindValenceValuesJSONArray];
  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasStateOfMindLoggedIn3pApp])
  {
    v125 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank stateOfMindLoggedIn3pApp](self, "stateOfMindLoggedIn3pApp")}];
  }

  else
  {
    v125 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasStateOfMindLoggedInJournalApp])
  {
    v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank stateOfMindLoggedInJournalApp](self, "stateOfMindLoggedInJournalApp")}];
  }

  else
  {
    v48 = 0;
  }

  v152[0] = @"dailyAggregateCallDuration";
  v49 = v5;
  if (!v5)
  {
    v49 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = v49;
  v153[0] = v49;
  v152[1] = @"callDuration";
  v50 = v8;
  if (!v8)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = v50;
  v153[1] = v50;
  v152[2] = @"burstyInteractionCount";
  v51 = v9;
  if (!v9)
  {
    v51 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = v51;
  v153[2] = v51;
  v152[3] = @"burstyOutgoingInteractionCount";
  v52 = v10;
  if (!v10)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = v52;
  v153[3] = v52;
  v152[4] = @"multipleInteractionTypes";
  v53 = v11;
  if (!v11)
  {
    v53 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = v53;
  v153[4] = v53;
  v152[5] = @"contactLocationWork";
  v54 = v12;
  if (!v12)
  {
    v54 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = v54;
  v153[5] = v54;
  v152[6] = @"isFamilyContact";
  v55 = v13;
  if (!v13)
  {
    v55 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = v55;
  v153[6] = v55;
  v152[7] = @"isCoworkerContact";
  v56 = v151;
  if (!v151)
  {
    v56 = [MEMORY[0x1E695DFB0] null];
  }

  v153[7] = v56;
  v152[8] = @"isRepetitiveContact";
  v57 = v150;
  if (!v150)
  {
    v57 = [MEMORY[0x1E695DFB0] null];
  }

  v116 = v12;
  v153[8] = v57;
  v152[9] = @"isGroupConversation";
  v58 = v149;
  if (!v149)
  {
    v58 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = v11;
  v107 = v58;
  v153[9] = v58;
  v152[10] = @"peopleCountWeightedSum";
  v60 = v148;
  if (!v148)
  {
    v60 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v8;
  v118 = v60;
  v153[10] = v60;
  v152[11] = @"peopleCountWeightedAverage";
  v62 = v147;
  if (!v147)
  {
    v62 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v5;
  v117 = v62;
  v153[11] = v62;
  v152[12] = @"peopleCountMax";
  v64 = v146;
  if (!v146)
  {
    v64 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v64;
  v153[12] = v64;
  v152[13] = @"peopleDensityWeightedSum";
  v66 = v145;
  if (!v145)
  {
    v66 = [MEMORY[0x1E695DFB0] null];
  }

  v106 = v66;
  v153[13] = v66;
  v152[14] = @"peopleDensityWeightedAverage";
  v67 = v144;
  if (!v144)
  {
    v67 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = v67;
  v153[14] = v67;
  v152[15] = @"peopleDensityMax";
  v68 = v143;
  if (!v143)
  {
    v68 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = v68;
  v153[15] = v68;
  v152[16] = @"peopleDensityWeightedConfidenceSum";
  v69 = v142;
  if (!v142)
  {
    v69 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = v69;
  v153[16] = v69;
  v152[17] = @"peopleDensityWeightedConfidenceAverage";
  v70 = v141;
  if (!v141)
  {
    v70 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = v70;
  v153[17] = v70;
  v152[18] = @"mediaTotalPlayTime";
  v71 = v140;
  if (!v140)
  {
    v71 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = v71;
  v153[18] = v71;
  v152[19] = @"mediaLength";
  v72 = v139;
  if (!v139)
  {
    v72 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = v72;
  v153[19] = v72;
  v152[20] = @"mediaActionIsRepeat";
  v73 = v138;
  if (!v138)
  {
    v73 = [MEMORY[0x1E695DFB0] null];
  }

  v99 = v73;
  v153[20] = v73;
  v152[21] = @"timeAtHomeDuration";
  v74 = v137;
  if (!v137)
  {
    v74 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = v74;
  v153[21] = v74;
  v152[22] = @"photosAtHomeCurationScore";
  v75 = v136;
  if (!v136)
  {
    v75 = [MEMORY[0x1E695DFB0] null];
  }

  v97 = v75;
  v153[22] = v75;
  v152[23] = @"workoutDuration";
  v76 = v135;
  if (!v135)
  {
    v76 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = v76;
  v153[23] = v76;
  v152[24] = @"motionActivityWalkSpan";
  v77 = v134;
  if (!v134)
  {
    v77 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = v77;
  v153[24] = v77;
  v152[25] = @"visitDuration";
  v78 = v133;
  if (!v133)
  {
    v78 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = v78;
  v153[25] = v78;
  v152[26] = @"poiCategoryInterestingness";
  v79 = v132;
  if (!v132)
  {
    v79 = [MEMORY[0x1E695DFB0] null];
  }

  v121 = v10;
  v93 = v79;
  v153[26] = v79;
  v152[27] = @"familiarityIndex";
  v80 = v131;
  if (!v131)
  {
    v80 = [MEMORY[0x1E695DFB0] null];
  }

  v120 = v13;
  v92 = v80;
  v153[27] = v80;
  v152[28] = @"stateOfMindDomains";
  v81 = v130;
  if (!v130)
  {
    v81 = [MEMORY[0x1E695DFB0] null];
  }

  v122 = v9;
  v123 = v63;
  v91 = v81;
  v153[28] = v81;
  v152[29] = @"stateOfMindLabels";
  v82 = v129;
  if (!v129)
  {
    v82 = [MEMORY[0x1E695DFB0] null];
  }

  v119 = v61;
  v153[29] = v82;
  v152[30] = @"stateOfMindReflectiveIntervals";
  v83 = v128;
  if (!v128)
  {
    v83 = [MEMORY[0x1E695DFB0] null];
  }

  v124 = v48;
  v153[30] = v83;
  v152[31] = @"stateOfMindValenceClassifications";
  v84 = v127;
  if (!v127)
  {
    v84 = [MEMORY[0x1E695DFB0] null];
  }

  v153[31] = v84;
  v152[32] = @"stateOfMindValenceValues";
  v85 = v126;
  if (!v126)
  {
    v85 = [MEMORY[0x1E695DFB0] null];
  }

  v153[32] = v85;
  v152[33] = @"stateOfMindLoggedIn3pApp";
  v86 = v125;
  if (!v125)
  {
    v86 = [MEMORY[0x1E695DFB0] null];
  }

  v153[33] = v86;
  v152[34] = @"stateOfMindLoggedInJournalApp";
  v87 = v124;
  if (!v124)
  {
    v87 = [MEMORY[0x1E695DFB0] null];
  }

  v153[34] = v87;
  v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v153 forKeys:v152 count:35];
  if (!v124)
  {
  }

  v88 = v65;
  if (!v125)
  {

    v88 = v65;
  }

  if (!v126)
  {

    v88 = v65;
  }

  if (!v127)
  {

    v88 = v65;
  }

  if (!v128)
  {

    v88 = v65;
  }

  if (!v129)
  {

    v88 = v65;
  }

  if (!v130)
  {

    v88 = v65;
  }

  if (!v131)
  {

    v88 = v65;
  }

  if (!v132)
  {

    v88 = v65;
  }

  if (!v133)
  {

    v88 = v65;
  }

  if (!v134)
  {

    v88 = v65;
  }

  if (!v135)
  {

    v88 = v65;
  }

  if (!v136)
  {

    v88 = v65;
  }

  if (!v137)
  {

    v88 = v65;
  }

  if (!v138)
  {

    v88 = v65;
  }

  if (!v139)
  {

    v88 = v65;
  }

  if (!v140)
  {

    v88 = v65;
  }

  if (!v141)
  {

    v88 = v65;
  }

  if (!v142)
  {

    v88 = v65;
  }

  if (!v143)
  {

    v88 = v65;
  }

  if (!v144)
  {

    v88 = v65;
  }

  if (!v145)
  {

    v88 = v65;
  }

  if (!v146)
  {
  }

  if (!v147)
  {
  }

  if (!v148)
  {
  }

  if (!v149)
  {
  }

  if (!v150)
  {
  }

  if (v151)
  {
    if (v120)
    {
      goto LABEL_236;
    }
  }

  else
  {

    if (v120)
    {
LABEL_236:
      if (v116)
      {
        goto LABEL_237;
      }

      goto LABEL_247;
    }
  }

  if (v116)
  {
LABEL_237:
    if (v59)
    {
      goto LABEL_238;
    }

    goto LABEL_248;
  }

LABEL_247:

  if (v59)
  {
LABEL_238:
    if (v121)
    {
      goto LABEL_239;
    }

    goto LABEL_249;
  }

LABEL_248:

  if (v121)
  {
LABEL_239:
    if (v122)
    {
      goto LABEL_240;
    }

    goto LABEL_250;
  }

LABEL_249:

  if (v122)
  {
LABEL_240:
    if (v119)
    {
      goto LABEL_241;
    }

LABEL_251:

    if (v123)
    {
      goto LABEL_242;
    }

    goto LABEL_252;
  }

LABEL_250:

  if (!v119)
  {
    goto LABEL_251;
  }

LABEL_241:
  if (v123)
  {
    goto LABEL_242;
  }

LABEL_252:

LABEL_242:
  v89 = *MEMORY[0x1E69E9840];

  return v115;
}

- (id)_stateOfMindValenceValuesJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceValues];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          v11 = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:v11];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_stateOfMindValenceClassificationsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceClassifications];
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

- (id)_stateOfMindReflectiveIntervalsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindReflectiveIntervals];
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

- (id)_stateOfMindLabelsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindLabels];
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

- (id)_stateOfMindDomainsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindDomains];
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

- (BMMomentsEventDataEventBundleMetadataForRank)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v545[1] = *MEMORY[0x1E69E9840];
  v430 = a3;
  v6 = [v430 objectForKeyedSubscript:@"dailyAggregateCallDuration"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_4:
    v8 = [v430 objectForKeyedSubscript:@"callDuration"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
LABEL_7:
      v10 = [v430 objectForKeyedSubscript:@"burstyInteractionCount"];
      v429 = v7;
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = v6;
        v12 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v6;
        v12 = v10;
LABEL_10:
        v13 = [v430 objectForKeyedSubscript:@"burstyOutgoingInteractionCount"];
        v428 = v12;
        v427 = v8;
        v421 = v11;
        v426 = a4;
        if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v424 = v13;
          v425 = 0;
LABEL_13:
          v14 = [v430 objectForKeyedSubscript:@"multipleInteractionTypes"];
          v6 = v11;
          v422 = v9;
          if (!v14)
          {
            v15 = 0;
            v7 = v429;
            goto LABEL_27;
          }

          objc_opt_class();
          v7 = v429;
          if (objc_opt_isKindOfClass())
          {
            v15 = 0;
LABEL_27:
            v16 = [v430 objectForKeyedSubscript:@"contactLocationWork"];
            v423 = v16;
            if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!a4)
                {
                  v74 = 0;
                  v419 = 0;
                  v56 = v425;
LABEL_408:
                  v59 = v424;
                  goto LABEL_409;
                }

                v76 = objc_alloc(MEMORY[0x1E696ABC0]);
                v413 = self;
                v77 = v14;
                v78 = *MEMORY[0x1E698F240];
                v534 = *MEMORY[0x1E696A578];
                v418 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contactLocationWork"];
                v535 = v418;
                v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v535 forKeys:&v534 count:1];
                v6 = v421;
                v79 = v78;
                v14 = v77;
                self = v413;
                v7 = v429;
                v80 = [v76 initWithDomain:v79 code:2 userInfo:v18];
                v74 = 0;
                v419 = 0;
                *v426 = v80;
                v56 = v425;
                goto LABEL_407;
              }

              v417 = v17;
            }

            else
            {
              v417 = 0;
            }

            v18 = [v430 objectForKeyedSubscript:@"isFamilyContact"];
            v415 = v15;
            v410 = v10;
            v414 = v18;
            if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v418 = 0;
              goto LABEL_33;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v418 = v18;
LABEL_33:
              v19 = [v430 objectForKeyedSubscript:@"isCoworkerContact"];
              v416 = v19;
              if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v21 = 0;
                goto LABEL_36;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = v20;
LABEL_36:
                v22 = [v430 objectForKeyedSubscript:@"isRepetitiveContact"];
                v407 = v21;
                v409 = v22;
                if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v24 = 0;
                  goto LABEL_39;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v24 = v23;
LABEL_39:
                  v25 = [v430 objectForKeyedSubscript:@"isGroupConversation"];
                  v411 = self;
                  v404 = v24;
                  v408 = v25;
                  if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v27 = 0;
                    goto LABEL_42;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v27 = v26;
LABEL_42:
                    v28 = [v430 objectForKeyedSubscript:@"peopleCountWeightedSum"];
                    v405 = v28;
                    if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v406 = 0;
LABEL_45:
                      v30 = [v430 objectForKeyedSubscript:@"peopleCountWeightedAverage"];
                      v403 = v30;
                      if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (!v426)
                          {
                            v401 = 0;
                            v419 = 0;
                            v56 = v425;
                            v132 = v405;
                            self = v411;
                            v74 = v417;
LABEL_402:

                            goto LABEL_403;
                          }

                          v141 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v142 = v14;
                          v143 = *MEMORY[0x1E698F240];
                          v522 = *MEMORY[0x1E696A578];
                          v399 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleCountWeightedAverage"];
                          v523 = v399;
                          v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v523 forKeys:&v522 count:1];
                          v145 = v141;
                          v6 = v421;
                          v146 = v143;
                          v14 = v142;
                          v74 = v417;
                          v400 = v144;
                          v401 = 0;
                          v419 = 0;
                          *v426 = [v145 initWithDomain:v146 code:2 userInfo:?];
                          v56 = v425;
                          v132 = v405;
                          goto LABEL_400;
                        }

                        v401 = v31;
                      }

                      else
                      {
                        v401 = 0;
                      }

                      v32 = [v430 objectForKeyedSubscript:@"peopleCountMax"];
                      v400 = v32;
                      if (v32 && (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (!v426)
                          {
                            v399 = 0;
                            v419 = 0;
                            v56 = v425;
                            v132 = v405;
                            v74 = v417;
LABEL_400:

                            goto LABEL_401;
                          }

                          v147 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v148 = v14;
                          v149 = *MEMORY[0x1E698F240];
                          v520 = *MEMORY[0x1E696A578];
                          v397 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleCountMax"];
                          v521 = v397;
                          v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v521 forKeys:&v520 count:1];
                          v151 = v147;
                          v6 = v421;
                          v152 = v149;
                          v14 = v148;
                          v153 = v150;
                          v74 = v417;
                          v399 = 0;
                          v419 = 0;
                          *v426 = [v151 initWithDomain:v152 code:2 userInfo:v150];
                          v56 = v425;
                          v132 = v405;
                          goto LABEL_399;
                        }

                        v399 = v33;
                      }

                      else
                      {
                        v399 = 0;
                      }

                      v34 = [v430 objectForKeyedSubscript:@"peopleDensityWeightedSum"];
                      v402 = v34;
                      v398 = v27;
                      if (!v34)
                      {
                        goto LABEL_94;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v34 = 0;
                        goto LABEL_94;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v34 = v34;
LABEL_94:
                        v98 = [v430 objectForKeyedSubscript:@"peopleDensityWeightedAverage"];
                        v397 = v34;
                        if (!v98 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v99 = 0;
                          goto LABEL_97;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v99 = v98;
LABEL_97:
                          v100 = [v430 objectForKeyedSubscript:@"peopleDensityMax"];
                          v394 = v99;
                          v395 = v100;
                          if (!v100 || (v101 = v100, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v396 = 0;
                            goto LABEL_100;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v396 = v101;
LABEL_100:
                            v102 = [v430 objectForKeyedSubscript:@"peopleDensityWeightedConfidenceSum"];
                            v392 = v102;
                            if (!v102 || (v103 = v102, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v393 = 0;
                              goto LABEL_103;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v393 = v103;
LABEL_103:
                              v104 = [v430 objectForKeyedSubscript:@"peopleDensityWeightedConfidenceAverage"];
                              v391 = v104;
                              if (!v104 || (v105 = v104, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v390 = 0;
                                goto LABEL_106;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v390 = v105;
LABEL_106:
                                v106 = [v430 objectForKeyedSubscript:@"mediaTotalPlayTime"];
                                v388 = v106;
                                if (!v106 || (v107 = v106, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v389 = 0;
                                  goto LABEL_109;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v389 = v107;
LABEL_109:
                                  v108 = [v430 objectForKeyedSubscript:@"mediaLength"];
                                  v386 = v108;
                                  if (!v108 || (v109 = v108, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v387 = 0;
                                    goto LABEL_112;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v387 = v109;
LABEL_112:
                                    v110 = [v430 objectForKeyedSubscript:@"mediaActionIsRepeat"];
                                    v384 = v110;
                                    if (!v110 || (v111 = v110, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v385 = 0;
                                      goto LABEL_115;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v385 = v111;
LABEL_115:
                                      v112 = [v430 objectForKeyedSubscript:@"timeAtHomeDuration"];
                                      v382 = v112;
                                      if (!v112 || (v113 = v112, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v383 = 0;
                                        goto LABEL_118;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v383 = v113;
LABEL_118:
                                        v114 = [v430 objectForKeyedSubscript:@"photosAtHomeCurationScore"];
                                        v380 = v114;
                                        if (!v114 || (v115 = v114, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v381 = 0;
                                          goto LABEL_121;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v381 = v115;
LABEL_121:
                                          v116 = [v430 objectForKeyedSubscript:@"workoutDuration"];
                                          v378 = v116;
                                          if (!v116 || (v117 = v116, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v379 = 0;
LABEL_124:
                                            v118 = [v430 objectForKeyedSubscript:@"motionActivityWalkSpan"];
                                            v373 = v118;
                                            if (v118 && (v119 = v118, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                            {
                                              objc_opt_class();
                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                              {
                                                if (v426)
                                                {
                                                  v237 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v238 = v14;
                                                  v239 = *MEMORY[0x1E698F240];
                                                  v496 = *MEMORY[0x1E696A578];
                                                  v240 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"motionActivityWalkSpan"];
                                                  v497 = v240;
                                                  v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v497 forKeys:&v496 count:1];
                                                  v242 = v237;
                                                  v243 = v240;
                                                  v6 = v421;
                                                  v244 = v239;
                                                  v14 = v238;
                                                  v99 = v394;
                                                  v18 = v414;
                                                  v371 = v241;
                                                  v377 = 0;
                                                  v419 = 0;
                                                  *v426 = [v242 initWithDomain:v244 code:2 userInfo:?];
                                                  v56 = v425;
                                                  v132 = v405;
                                                  v153 = v402;
                                                  goto LABEL_386;
                                                }

                                                v377 = 0;
                                                v419 = 0;
                                                v56 = v425;
                                                v132 = v405;
                                                v153 = v402;
                                                v18 = v414;
                                                goto LABEL_387;
                                              }

                                              v377 = v119;
                                            }

                                            else
                                            {
                                              v377 = 0;
                                            }

                                            v120 = [v430 objectForKeyedSubscript:@"visitDuration"];
                                            v371 = v120;
                                            if (v120 && (v121 = v120, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                            {
                                              objc_opt_class();
                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                              {
                                                if (!v426)
                                                {
                                                  v243 = 0;
                                                  v419 = 0;
                                                  v56 = v425;
                                                  v132 = v405;
                                                  v153 = v402;
                                                  v18 = v414;
                                                  goto LABEL_386;
                                                }

                                                v245 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v246 = v14;
                                                v247 = *MEMORY[0x1E698F240];
                                                v494 = *MEMORY[0x1E696A578];
                                                v248 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"visitDuration"];
                                                v495 = v248;
                                                v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v495 forKeys:&v494 count:1];
                                                v249 = v245;
                                                v123 = v248;
                                                v6 = v421;
                                                v250 = v247;
                                                v14 = v246;
                                                v99 = v394;
                                                v24 = v404;
                                                v370 = 0;
                                                v419 = 0;
                                                *v426 = [v249 initWithDomain:v250 code:2 userInfo:v122];
                                                goto LABEL_273;
                                              }

                                              v370 = v121;
                                            }

                                            else
                                            {
                                              v370 = 0;
                                            }

                                            v122 = [v430 objectForKeyedSubscript:@"poiCategoryInterestingness"];
                                            if (!v122 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v123 = 0;
LABEL_133:
                                              v124 = [v430 objectForKeyedSubscript:@"familiarityIndex"];
                                              v366 = v122;
                                              v368 = v124;
                                              if (v124 && (v125 = v124, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                              {
                                                objc_opt_class();
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  if (v426)
                                                  {
                                                    v257 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v258 = v14;
                                                    v259 = *MEMORY[0x1E698F240];
                                                    v490 = *MEMORY[0x1E696A578];
                                                    v369 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"familiarityIndex"];
                                                    v491 = v369;
                                                    v260 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v491 forKeys:&v490 count:1];
                                                    v261 = v257;
                                                    v6 = v421;
                                                    v262 = v259;
                                                    v14 = v258;
                                                    v99 = v394;
                                                    v24 = v404;
                                                    v365 = v260;
                                                    v367 = 0;
                                                    v419 = 0;
                                                    *v426 = [v261 initWithDomain:v262 code:2 userInfo:?];
                                                    v56 = v425;
                                                    v132 = v405;
                                                    v153 = v402;

                                                    goto LABEL_383;
                                                  }

                                                  v367 = 0;
                                                  v419 = 0;
                                                  v56 = v425;
                                                  v132 = v405;
                                                  v153 = v402;
                                                  v24 = v404;
                                                  goto LABEL_384;
                                                }

                                                v362 = v123;
                                                v367 = v125;
                                              }

                                              else
                                              {
                                                v362 = v123;
                                                v367 = 0;
                                              }

                                              v126 = [v430 objectForKeyedSubscript:@"stateOfMindDomains"];
                                              v127 = [MEMORY[0x1E695DFB0] null];
                                              v128 = [v126 isEqual:v127];

                                              v24 = v404;
                                              if (v128)
                                              {
                                              }

                                              else if (v126)
                                              {
                                                objc_opt_class();
                                                v369 = v126;
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  if (!v426)
                                                  {
                                                    v419 = 0;
                                                    v56 = v425;
                                                    v132 = v405;
                                                    v153 = v402;
                                                    v6 = v421;
                                                    v123 = v362;
                                                    goto LABEL_383;
                                                  }

                                                  v276 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v277 = *MEMORY[0x1E698F240];
                                                  v488 = *MEMORY[0x1E696A578];
                                                  v364 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"stateOfMindDomains"];
                                                  v489 = v364;
                                                  obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v489 forKeys:&v488 count:1];
                                                  v419 = 0;
                                                  *v426 = [v276 initWithDomain:v277 code:2 userInfo:?];
                                                  v56 = v425;
                                                  v132 = v405;
                                                  v153 = v402;
                                                  v6 = v421;
                                                  goto LABEL_277;
                                                }

                                                v207 = v126;
LABEL_204:
                                                v208 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v207, "count")}];
                                                v447 = 0u;
                                                v448 = 0u;
                                                v449 = 0u;
                                                v450 = 0u;
                                                v209 = v207;
                                                v210 = [v209 countByEnumeratingWithState:&v447 objects:v487 count:16];
                                                v153 = v402;
                                                v369 = v209;
                                                v364 = v208;
                                                if (!v210)
                                                {
                                                  goto LABEL_216;
                                                }

                                                v211 = v210;
                                                v212 = *v448;
                                                v375 = v98;
                                                while (1)
                                                {
                                                  for (i = 0; i != v211; ++i)
                                                  {
                                                    if (*v448 != v212)
                                                    {
                                                      objc_enumerationMutation(v209);
                                                    }

                                                    v214 = *(*(&v447 + 1) + 8 * i);
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v233 = v426;
                                                      if (v426)
                                                      {
                                                        v234 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v235 = *MEMORY[0x1E698F240];
                                                        v485 = *MEMORY[0x1E696A578];
                                                        v374 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"stateOfMindDomains"];
                                                        v486 = v374;
                                                        v363 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v486 forKeys:&v485 count:1];
                                                        v236 = [v234 initWithDomain:v235 code:2 userInfo:?];
                                                        v56 = v425;
                                                        v24 = v404;
                                                        v132 = v405;
LABEL_244:
                                                        v99 = v394;
                                                        v122 = v366;
                                                        v419 = 0;
                                                        *v233 = v236;
                                                        obj = v369;
                                                        v6 = v421;
                                                        v98 = v375;
                                                        goto LABEL_245;
                                                      }

                                                      v419 = 0;
                                                      obj = v209;
                                                      v56 = v425;
                                                      v24 = v404;
                                                      v132 = v405;
LABEL_276:
                                                      v6 = v421;
                                                      v98 = v375;
                                                      v99 = v394;
LABEL_277:
                                                      v122 = v366;
                                                      v123 = v362;
                                                      goto LABEL_382;
                                                    }

                                                    objc_opt_class();
                                                    v215 = v14;
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v216 = v214;
                                                    }

                                                    else
                                                    {
                                                      objc_opt_class();
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        v233 = v426;
                                                        if (v426)
                                                        {
                                                          v263 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v264 = *MEMORY[0x1E698F240];
                                                          v483 = *MEMORY[0x1E696A578];
                                                          v374 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"stateOfMindDomains"];
                                                          v484 = v374;
                                                          v363 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v484 forKeys:&v483 count:1];
                                                          v236 = [v263 initWithDomain:v264 code:2 userInfo:?];
                                                          v56 = v425;
                                                          v14 = v215;
                                                          v24 = v404;
                                                          v132 = v405;
                                                          v153 = v402;
                                                          goto LABEL_244;
                                                        }

                                                        v419 = 0;
                                                        obj = v209;
                                                        v56 = v425;
                                                        v24 = v404;
                                                        v132 = v405;
                                                        v153 = v402;
                                                        goto LABEL_276;
                                                      }

                                                      v217 = v214;
                                                      v216 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataStateOfMindDomainFromString(v217)];
                                                    }

                                                    [v208 addObject:v216];
                                                    v14 = v215;
                                                    v153 = v402;
                                                  }

                                                  v211 = [v209 countByEnumeratingWithState:&v447 objects:v487 count:16];
                                                  if (!v211)
                                                  {
LABEL_216:

                                                    v218 = [v430 objectForKeyedSubscript:@"stateOfMindLabels"];
                                                    v219 = [MEMORY[0x1E695DFB0] null];
                                                    v220 = [v218 isEqual:v219];

                                                    v99 = v394;
                                                    if (v220)
                                                    {

                                                      v218 = 0;
                                                      v24 = v404;
                                                      v132 = v405;
                                                    }

                                                    else
                                                    {
                                                      v132 = v405;
                                                      if (v218)
                                                      {
                                                        objc_opt_class();
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          obj = v218;
                                                          if (!v426)
                                                          {
                                                            v419 = 0;
                                                            v56 = v425;
                                                            v132 = v405;
                                                            v6 = v421;
                                                            v122 = v366;
                                                            v123 = v362;
                                                            v24 = v404;
                                                            goto LABEL_382;
                                                          }

                                                          v299 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v300 = *MEMORY[0x1E698F240];
                                                          v481 = *MEMORY[0x1E696A578];
                                                          v374 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"stateOfMindLabels"];
                                                          v482 = v374;
                                                          v363 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v482 forKeys:&v481 count:1];
                                                          v419 = 0;
                                                          *v426 = [v299 initWithDomain:v300 code:2 userInfo:?];
                                                          v56 = v425;
                                                          v132 = v405;
                                                          goto LABEL_304;
                                                        }
                                                      }

                                                      v24 = v404;
                                                    }

                                                    v374 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v218, "count")}];
                                                    v443 = 0u;
                                                    v444 = 0u;
                                                    v445 = 0u;
                                                    v446 = 0u;
                                                    obj = v218;
                                                    v265 = [obj countByEnumeratingWithState:&v443 objects:v480 count:16];
                                                    if (!v265)
                                                    {
                                                      goto LABEL_261;
                                                    }

                                                    v266 = v265;
                                                    v420 = *v444;
                                                    v376 = v98;
LABEL_251:
                                                    v267 = 0;
                                                    while (1)
                                                    {
                                                      if (*v444 != v420)
                                                      {
                                                        objc_enumerationMutation(obj);
                                                      }

                                                      v268 = *(*(&v443 + 1) + 8 * v267);
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        break;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v269 = v417;
                                                        v270 = v14;
                                                        v271 = v268;
                                                      }

                                                      else
                                                      {
                                                        objc_opt_class();
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          v278 = v426;
                                                          if (v426)
                                                          {
                                                            v284 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v356 = v14;
                                                            v285 = *MEMORY[0x1E698F240];
                                                            v476 = *MEMORY[0x1E696A578];
                                                            v359 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"stateOfMindLabels"];
                                                            v477 = v359;
                                                            v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v477 forKeys:&v476 count:1];
                                                            v282 = v284;
                                                            v283 = v285;
                                                            v14 = v356;
                                                            goto LABEL_281;
                                                          }

                                                          goto LABEL_283;
                                                        }

                                                        v269 = v417;
                                                        v270 = v14;
                                                        v272 = v268;
                                                        v271 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataStateOfMindLabelFromString(v272)];
                                                      }

                                                      v417 = v269;

                                                      [v374 addObject:v271];
                                                      ++v267;
                                                      v14 = v270;
                                                      v132 = v405;
                                                      v153 = v402;
                                                      v98 = v376;
                                                      v99 = v394;
                                                      if (v266 == v267)
                                                      {
                                                        v266 = [obj countByEnumeratingWithState:&v443 objects:v480 count:16];
                                                        if (!v266)
                                                        {
LABEL_261:

                                                          v273 = [v430 objectForKeyedSubscript:@"stateOfMindReflectiveIntervals"];
                                                          v274 = [MEMORY[0x1E695DFB0] null];
                                                          v275 = [v273 isEqual:v274];

                                                          if (v275)
                                                          {

                                                            goto LABEL_287;
                                                          }

                                                          if (!v273)
                                                          {
LABEL_287:
                                                            v286 = 0;
                                                            goto LABEL_288;
                                                          }

                                                          objc_opt_class();
                                                          v363 = v273;
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v286 = v273;
LABEL_288:
                                                            v287 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v286, "count")}];
                                                            v439 = 0u;
                                                            v440 = 0u;
                                                            v441 = 0u;
                                                            v442 = 0u;
                                                            v363 = v286;
                                                            v288 = [v363 countByEnumeratingWithState:&v439 objects:v473 count:16];
                                                            v359 = v287;
                                                            if (!v288)
                                                            {
                                                              goto LABEL_300;
                                                            }

                                                            v289 = v288;
                                                            v290 = *v440;
                                                            while (1)
                                                            {
                                                              v291 = 0;
                                                              do
                                                              {
                                                                if (*v440 != v290)
                                                                {
                                                                  objc_enumerationMutation(v363);
                                                                }

                                                                v292 = *(*(&v439 + 1) + 8 * v291);
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  if (!v426)
                                                                  {
                                                                    v419 = 0;
                                                                    v360 = v363;
                                                                    v56 = v425;
                                                                    v24 = v404;
                                                                    v132 = v405;
                                                                    v6 = v421;
                                                                    goto LABEL_374;
                                                                  }

                                                                  v301 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v302 = *MEMORY[0x1E698F240];
                                                                  v471 = *MEMORY[0x1E696A578];
                                                                  v361 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"stateOfMindReflectiveIntervals"];
                                                                  v472 = v361;
                                                                  v358 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v472 forKeys:&v471 count:1];
                                                                  v303 = [v301 initWithDomain:v302 code:2 userInfo:?];
                                                                  v56 = v425;
                                                                  v24 = v404;
                                                                  v132 = v405;
LABEL_310:
                                                                  v122 = v366;
                                                                  v419 = 0;
                                                                  *v426 = v303;
                                                                  v360 = v363;
                                                                  v6 = v421;
                                                                  goto LABEL_371;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v293 = v14;
                                                                  v294 = v292;
                                                                }

                                                                else
                                                                {
                                                                  objc_opt_class();
                                                                  v293 = v14;
                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                  {
                                                                    if (!v426)
                                                                    {
                                                                      v419 = 0;
                                                                      v360 = v363;
                                                                      v56 = v425;
                                                                      v24 = v404;
                                                                      v132 = v405;
                                                                      v153 = v402;
                                                                      v6 = v421;
                                                                      goto LABEL_373;
                                                                    }

                                                                    v304 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v305 = *MEMORY[0x1E698F240];
                                                                    v469 = *MEMORY[0x1E696A578];
                                                                    v361 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"stateOfMindReflectiveIntervals"];
                                                                    v470 = v361;
                                                                    v358 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v470 forKeys:&v469 count:1];
                                                                    v303 = [v304 initWithDomain:v305 code:2 userInfo:?];
                                                                    v56 = v425;
                                                                    v14 = v293;
                                                                    v24 = v404;
                                                                    v132 = v405;
                                                                    v153 = v402;
                                                                    v99 = v394;
                                                                    goto LABEL_310;
                                                                  }

                                                                  v295 = v292;
                                                                  v294 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataStateOfMindReflectiveIntervalFromString(v295)];
                                                                }

                                                                [v287 addObject:v294];
                                                                ++v291;
                                                                v14 = v293;
                                                                v153 = v402;
                                                                v99 = v394;
                                                              }

                                                              while (v289 != v291);
                                                              v289 = [v363 countByEnumeratingWithState:&v439 objects:v473 count:16];
                                                              if (!v289)
                                                              {
LABEL_300:

                                                                v296 = [v430 objectForKeyedSubscript:@"stateOfMindValenceClassifications"];
                                                                v297 = [MEMORY[0x1E695DFB0] null];
                                                                v298 = [v296 isEqual:v297];

                                                                if (v298)
                                                                {

                                                                  v296 = 0;
LABEL_314:
                                                                  v361 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v296, "count")}];
                                                                  v435 = 0u;
                                                                  v436 = 0u;
                                                                  v437 = 0u;
                                                                  v438 = 0u;
                                                                  v306 = v296;
                                                                  v307 = [v306 countByEnumeratingWithState:&v435 objects:v466 count:16];
                                                                  v360 = v306;
                                                                  if (!v307)
                                                                  {
                                                                    goto LABEL_326;
                                                                  }

                                                                  v308 = v307;
                                                                  v309 = *v436;
                                                                  while (1)
                                                                  {
                                                                    for (j = 0; j != v308; ++j)
                                                                    {
                                                                      if (*v436 != v309)
                                                                      {
                                                                        objc_enumerationMutation(v306);
                                                                      }

                                                                      v311 = *(*(&v435 + 1) + 8 * j);
                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        if (!v426)
                                                                        {
                                                                          v419 = 0;
                                                                          v358 = v306;
                                                                          v56 = v425;
                                                                          v24 = v404;
                                                                          v132 = v405;
                                                                          v6 = v421;
                                                                          goto LABEL_370;
                                                                        }

                                                                        v320 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v321 = *MEMORY[0x1E698F240];
                                                                        v464 = *MEMORY[0x1E696A578];
                                                                        v322 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"stateOfMindValenceClassifications"];
                                                                        v465 = v322;
                                                                        v355 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v465 forKeys:&v464 count:1];
                                                                        v323 = [v320 initWithDomain:v321 code:2 userInfo:?];
LABEL_337:
                                                                        v419 = 0;
                                                                        *v426 = v323;
                                                                        v358 = v306;
                                                                        v56 = v425;
                                                                        v6 = v421;
                                                                        goto LABEL_378;
                                                                      }

                                                                      objc_opt_class();
                                                                      v312 = v14;
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v313 = v311;
                                                                      }

                                                                      else
                                                                      {
                                                                        objc_opt_class();
                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                        {
                                                                          if (v426)
                                                                          {
                                                                            v324 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v325 = *MEMORY[0x1E698F240];
                                                                            v462 = *MEMORY[0x1E696A578];
                                                                            v322 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"stateOfMindValenceClassifications"];
                                                                            v463 = v322;
                                                                            v355 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v463 forKeys:&v462 count:1];
                                                                            v323 = [v324 initWithDomain:v325 code:2 userInfo:?];
                                                                            goto LABEL_337;
                                                                          }

                                                                          v419 = 0;
                                                                          v358 = v306;
                                                                          v6 = v421;
                                                                          v56 = v425;
LABEL_369:
                                                                          v24 = v404;
                                                                          v132 = v405;
                                                                          v153 = v402;
                                                                          goto LABEL_370;
                                                                        }

                                                                        v314 = v311;
                                                                        v313 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataStateOfMindValenceClassificationFromString(v314)];
                                                                      }

                                                                      [v361 addObject:v313];
                                                                      v14 = v312;
                                                                      v153 = v402;
                                                                    }

                                                                    v308 = [v306 countByEnumeratingWithState:&v435 objects:v466 count:16];
                                                                    if (!v308)
                                                                    {
LABEL_326:
                                                                      v357 = v14;

                                                                      v315 = [v430 objectForKeyedSubscript:?];
                                                                      v316 = [MEMORY[0x1E695DFB0] null];
                                                                      v317 = [v315 isEqual:v316];

                                                                      if (v317)
                                                                      {

                                                                        v315 = 0;
LABEL_340:
                                                                        v322 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v315, "count")}];
                                                                        v431 = 0u;
                                                                        v432 = 0u;
                                                                        v433 = 0u;
                                                                        v434 = 0u;
                                                                        v326 = v315;
                                                                        v327 = [v326 countByEnumeratingWithState:&v431 objects:v459 count:16];
                                                                        v358 = v326;
                                                                        if (!v327)
                                                                        {
                                                                          goto LABEL_349;
                                                                        }

                                                                        v328 = v327;
                                                                        v329 = *v432;
LABEL_342:
                                                                        v330 = 0;
                                                                        while (1)
                                                                        {
                                                                          if (*v432 != v329)
                                                                          {
                                                                            objc_enumerationMutation(v326);
                                                                          }

                                                                          v331 = *(*(&v431 + 1) + 8 * v330);
                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            break;
                                                                          }

                                                                          objc_opt_class();
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            if (v426)
                                                                            {
                                                                              v342 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v343 = *MEMORY[0x1E698F240];
                                                                              v455 = *MEMORY[0x1E696A578];
                                                                              v333 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stateOfMindValenceValues"];
                                                                              v456 = v333;
                                                                              v335 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v456 forKeys:&v455 count:1];
                                                                              v340 = v342;
                                                                              v341 = v343;
                                                                              goto LABEL_364;
                                                                            }

                                                                            goto LABEL_367;
                                                                          }

                                                                          v332 = v331;
                                                                          [v322 addObject:v332];

                                                                          if (v328 == ++v330)
                                                                          {
                                                                            v328 = [v326 countByEnumeratingWithState:&v431 objects:v459 count:16];
                                                                            if (v328)
                                                                            {
                                                                              goto LABEL_342;
                                                                            }

LABEL_349:

                                                                            v333 = [v430 objectForKeyedSubscript:@"stateOfMindLoggedIn3pApp"];
                                                                            if (v333 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                            {
                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v355 = v333;
                                                                                goto LABEL_352;
                                                                              }

                                                                              if (v426)
                                                                              {
                                                                                v348 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v349 = *MEMORY[0x1E698F240];
                                                                                v453 = *MEMORY[0x1E696A578];
                                                                                v335 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stateOfMindLoggedIn3pApp"];
                                                                                v454 = v335;
                                                                                v334 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v454 forKeys:&v453 count:1];
                                                                                v355 = 0;
                                                                                v419 = 0;
                                                                                *v426 = [v348 initWithDomain:v349 code:2 userInfo:v334];
                                                                                goto LABEL_356;
                                                                              }

                                                                              v355 = 0;
                                                                              v419 = 0;
                                                                            }

                                                                            else
                                                                            {
                                                                              v355 = 0;
LABEL_352:
                                                                              v334 = [v430 objectForKeyedSubscript:@"stateOfMindLoggedInJournalApp"];
                                                                              if (!v334 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v335 = 0;
                                                                                goto LABEL_355;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v335 = v334;
LABEL_355:
                                                                                v411 = [(BMMomentsEventDataEventBundleMetadataForRank *)v411 initWithDailyAggregateCallDuration:v429 callDuration:v422 burstyInteractionCount:v428 burstyOutgoingInteractionCount:v425 multipleInteractionTypes:v415 contactLocationWork:v417 isFamilyContact:v418 isCoworkerContact:v407 isRepetitiveContact:v404 isGroupConversation:v398 peopleCountWeightedSum:v406 peopleCountWeightedAverage:v401 peopleCountMax:v399 peopleDensityWeightedSum:v397 peopleDensityWeightedAverage:v394 peopleDensityMax:v396 peopleDensityWeightedConfidenceSum:v393 peopleDensityWeightedConfidenceAverage:v390 mediaTotalPlayTime:v389 mediaLength:v387 mediaActionIsRepeat:v385 timeAtHomeDuration:v383 photosAtHomeCurationScore:v381 workoutDuration:v379 motionActivityWalkSpan:v377 visitDuration:v370 poiCategoryInterestingness:v362 familiarityIndex:v367 stateOfMindDomains:v364 stateOfMindLabels:v374 stateOfMindReflectiveIntervals:v287 stateOfMindValenceClassifications:v361 stateOfMindValenceValues:v322 stateOfMindLoggedIn3pApp:v355 stateOfMindLoggedInJournalApp:v335];
                                                                                v419 = v411;
                                                                              }

                                                                              else
                                                                              {
                                                                                if (v426)
                                                                                {
                                                                                  v350 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v351 = *MEMORY[0x1E698F240];
                                                                                  v451 = *MEMORY[0x1E696A578];
                                                                                  v352 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stateOfMindLoggedInJournalApp"];
                                                                                  v452 = v352;
                                                                                  v353 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v452 forKeys:&v451 count:1];
                                                                                  *v426 = [v350 initWithDomain:v351 code:2 userInfo:v353];
                                                                                }

                                                                                v335 = 0;
                                                                                v419 = 0;
                                                                              }

LABEL_356:

LABEL_365:
                                                                            }

LABEL_377:
                                                                            v6 = v421;
                                                                            v56 = v425;
                                                                            v14 = v357;
LABEL_378:
                                                                            v99 = v394;
                                                                            v122 = v366;
                                                                            v123 = v362;

                                                                            v24 = v404;
                                                                            v132 = v405;
                                                                            v153 = v402;
LABEL_379:

LABEL_380:
LABEL_381:

LABEL_382:
LABEL_383:

LABEL_384:
LABEL_385:

                                                                            v18 = v414;
                                                                            v243 = v370;
LABEL_386:

LABEL_387:
                                                                            v74 = v417;
LABEL_388:

                                                                            goto LABEL_389;
                                                                          }
                                                                        }

                                                                        if (v426)
                                                                        {
                                                                          v338 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v339 = *MEMORY[0x1E698F240];
                                                                          v457 = *MEMORY[0x1E696A578];
                                                                          v333 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"stateOfMindValenceValues"];
                                                                          v458 = v333;
                                                                          v335 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v458 forKeys:&v457 count:1];
                                                                          v340 = v338;
                                                                          v341 = v339;
LABEL_364:
                                                                          v419 = 0;
                                                                          *v426 = [v340 initWithDomain:v341 code:2 userInfo:v335];
                                                                          v355 = v358;
                                                                          goto LABEL_365;
                                                                        }

LABEL_367:
                                                                        v419 = 0;
                                                                        v355 = v326;
                                                                        goto LABEL_377;
                                                                      }

                                                                      v358 = v315;
                                                                      if (!v315)
                                                                      {
                                                                        goto LABEL_340;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        goto LABEL_340;
                                                                      }

                                                                      if (v426)
                                                                      {
                                                                        v344 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v345 = *MEMORY[0x1E698F240];
                                                                        v460 = *MEMORY[0x1E696A578];
                                                                        v322 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"stateOfMindValenceValues"];
                                                                        v461 = v322;
                                                                        v355 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v461 forKeys:&v460 count:1];
                                                                        v419 = 0;
                                                                        *v426 = [v344 initWithDomain:v345 code:2 userInfo:?];
                                                                        goto LABEL_377;
                                                                      }

                                                                      v419 = 0;
                                                                      v6 = v421;
                                                                      v56 = v425;
                                                                      v24 = v404;
                                                                      v132 = v405;
                                                                      v153 = v402;
LABEL_370:
                                                                      v99 = v394;
                                                                      v122 = v366;
LABEL_371:
                                                                      v123 = v362;
                                                                      goto LABEL_379;
                                                                    }
                                                                  }
                                                                }

                                                                if (!v296 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v153 = v402;
                                                                  goto LABEL_314;
                                                                }

                                                                v360 = v296;
                                                                v6 = v421;
                                                                if (v426)
                                                                {
                                                                  v336 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v337 = *MEMORY[0x1E698F240];
                                                                  v467 = *MEMORY[0x1E696A578];
                                                                  v361 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"stateOfMindValenceClassifications"];
                                                                  v468 = v361;
                                                                  v358 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v468 forKeys:&v467 count:1];
                                                                  v419 = 0;
                                                                  *v426 = [v336 initWithDomain:v337 code:2 userInfo:?];
                                                                  v56 = v425;
                                                                  goto LABEL_369;
                                                                }

                                                                v419 = 0;
                                                                v56 = v425;
                                                                v24 = v404;
                                                                v132 = v405;
                                                                v153 = v402;
LABEL_373:
                                                                v99 = v394;
LABEL_374:
                                                                v122 = v366;
LABEL_282:
                                                                v123 = v362;
                                                                goto LABEL_380;
                                                              }
                                                            }
                                                          }

                                                          if (v426)
                                                          {
                                                            v318 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v319 = *MEMORY[0x1E698F240];
                                                            v474 = *MEMORY[0x1E696A578];
                                                            v359 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"stateOfMindReflectiveIntervals"];
                                                            v475 = v359;
                                                            v360 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v475 forKeys:&v474 count:1];
                                                            v419 = 0;
                                                            *v426 = [v318 initWithDomain:v319 code:2 userInfo:?];
                                                            v56 = v425;
                                                            v6 = v421;
                                                            v122 = v366;
                                                            v123 = v362;
                                                            v24 = v404;
                                                            goto LABEL_380;
                                                          }

                                                          v419 = 0;
                                                          v56 = v425;
LABEL_304:
                                                          v6 = v421;
                                                          v122 = v366;
                                                          v123 = v362;
                                                          v24 = v404;
                                                          goto LABEL_381;
                                                        }

                                                        goto LABEL_251;
                                                      }
                                                    }

                                                    v278 = v426;
                                                    if (v426)
                                                    {
                                                      v279 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v280 = *MEMORY[0x1E698F240];
                                                      v478 = *MEMORY[0x1E696A578];
                                                      v359 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"stateOfMindLabels"];
                                                      v479 = v359;
                                                      v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v479 forKeys:&v478 count:1];
                                                      v282 = v279;
                                                      v283 = v280;
LABEL_281:
                                                      v360 = v281;
                                                      v56 = v425;
                                                      v122 = v366;
                                                      v419 = 0;
                                                      *v278 = [v282 initWithDomain:v283 code:2 userInfo:?];
                                                      v363 = obj;
                                                      v6 = v421;
                                                      v98 = v376;
                                                      goto LABEL_282;
                                                    }

LABEL_283:
                                                    v419 = 0;
                                                    v363 = obj;
                                                    v56 = v425;
                                                    v6 = v421;
                                                    v98 = v376;
                                                    v122 = v366;
LABEL_245:
                                                    v123 = v362;
                                                    goto LABEL_381;
                                                  }
                                                }
                                              }

                                              v207 = 0;
                                              goto LABEL_204;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v123 = v122;
                                              goto LABEL_133;
                                            }

                                            if (v426)
                                            {
                                              v251 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v252 = v14;
                                              v253 = *MEMORY[0x1E698F240];
                                              v492 = *MEMORY[0x1E696A578];
                                              v367 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"poiCategoryInterestingness"];
                                              v493 = v367;
                                              v254 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v493 forKeys:&v492 count:1];
                                              v6 = v421;
                                              v255 = v253;
                                              v14 = v252;
                                              v99 = v394;
                                              v368 = v254;
                                              v256 = [v251 initWithDomain:v255 code:2 userInfo:?];
                                              v123 = 0;
                                              v419 = 0;
                                              *v426 = v256;
                                              v56 = v425;
                                              v132 = v405;
                                              v153 = v402;
                                              goto LABEL_384;
                                            }

                                            v123 = 0;
                                            v419 = 0;
LABEL_273:
                                            v56 = v425;
                                            v132 = v405;
                                            v153 = v402;
                                            goto LABEL_385;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v379 = v117;
                                            goto LABEL_124;
                                          }

                                          if (v426)
                                          {
                                            v227 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v228 = v14;
                                            v229 = *MEMORY[0x1E698F240];
                                            v498 = *MEMORY[0x1E696A578];
                                            v377 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"workoutDuration"];
                                            v499 = v377;
                                            v230 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v499 forKeys:&v498 count:1];
                                            v231 = v227;
                                            v6 = v421;
                                            v232 = v229;
                                            v14 = v228;
                                            v99 = v394;
                                            v74 = v417;
                                            v18 = v414;
                                            v373 = v230;
                                            v379 = 0;
                                            v419 = 0;
                                            *v426 = [v231 initWithDomain:v232 code:2 userInfo:?];
                                            v56 = v425;
                                            v132 = v405;
                                            v153 = v402;
                                            goto LABEL_388;
                                          }

                                          v379 = 0;
                                          v419 = 0;
                                          v56 = v425;
                                          v132 = v405;
                                          v153 = v402;
                                          v18 = v414;
                                          v74 = v417;
LABEL_389:

                                          goto LABEL_390;
                                        }

                                        if (v426)
                                        {
                                          v221 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v222 = v14;
                                          v223 = *MEMORY[0x1E698F240];
                                          v500 = *MEMORY[0x1E696A578];
                                          v379 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"photosAtHomeCurationScore"];
                                          v501 = v379;
                                          v224 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v501 forKeys:&v500 count:1];
                                          v225 = v221;
                                          v6 = v421;
                                          v226 = v223;
                                          v14 = v222;
                                          v99 = v394;
                                          v74 = v417;
                                          v18 = v414;
                                          v378 = v224;
                                          v381 = 0;
                                          v419 = 0;
                                          *v426 = [v225 initWithDomain:v226 code:2 userInfo:?];
                                          v56 = v425;
                                          v132 = v405;
                                          v153 = v402;
                                          goto LABEL_389;
                                        }

                                        v381 = 0;
                                        v419 = 0;
                                        v56 = v425;
                                        v132 = v405;
                                        v153 = v402;
                                        v18 = v414;
                                        v74 = v417;
LABEL_390:

                                        goto LABEL_391;
                                      }

                                      if (v426)
                                      {
                                        v201 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v202 = v14;
                                        v203 = *MEMORY[0x1E698F240];
                                        v502 = *MEMORY[0x1E696A578];
                                        v381 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeAtHomeDuration"];
                                        v503 = v381;
                                        v204 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v503 forKeys:&v502 count:1];
                                        v205 = v201;
                                        v6 = v421;
                                        v206 = v203;
                                        v14 = v202;
                                        v74 = v417;
                                        v18 = v414;
                                        v380 = v204;
                                        v383 = 0;
                                        v419 = 0;
                                        *v426 = [v205 initWithDomain:v206 code:2 userInfo:?];
                                        v56 = v425;
                                        v132 = v405;
                                        v153 = v402;
                                        goto LABEL_390;
                                      }

                                      v383 = 0;
                                      v419 = 0;
                                      v56 = v425;
                                      v132 = v405;
                                      v153 = v402;
                                      v18 = v414;
                                      v74 = v417;
LABEL_391:

                                      goto LABEL_392;
                                    }

                                    if (v426)
                                    {
                                      v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v196 = v14;
                                      v197 = *MEMORY[0x1E698F240];
                                      v504 = *MEMORY[0x1E696A578];
                                      v383 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mediaActionIsRepeat"];
                                      v505 = v383;
                                      v198 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v505 forKeys:&v504 count:1];
                                      v199 = v195;
                                      v6 = v421;
                                      v200 = v197;
                                      v14 = v196;
                                      v74 = v417;
                                      v18 = v414;
                                      v382 = v198;
                                      v385 = 0;
                                      v419 = 0;
                                      *v426 = [v199 initWithDomain:v200 code:2 userInfo:?];
                                      v56 = v425;
                                      v132 = v405;
                                      v153 = v402;
                                      goto LABEL_391;
                                    }

                                    v385 = 0;
                                    v419 = 0;
                                    v56 = v425;
                                    v132 = v405;
                                    v153 = v402;
                                    v18 = v414;
                                    v74 = v417;
LABEL_392:

                                    goto LABEL_393;
                                  }

                                  if (v426)
                                  {
                                    v189 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v190 = v14;
                                    v191 = *MEMORY[0x1E698F240];
                                    v506 = *MEMORY[0x1E696A578];
                                    v385 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mediaLength"];
                                    v507 = v385;
                                    v192 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v507 forKeys:&v506 count:1];
                                    v193 = v189;
                                    v6 = v421;
                                    v194 = v191;
                                    v14 = v190;
                                    v74 = v417;
                                    v18 = v414;
                                    v384 = v192;
                                    v387 = 0;
                                    v419 = 0;
                                    *v426 = [v193 initWithDomain:v194 code:2 userInfo:?];
                                    v56 = v425;
                                    v132 = v405;
                                    v153 = v402;
                                    goto LABEL_392;
                                  }

                                  v387 = 0;
                                  v419 = 0;
                                  v56 = v425;
                                  v132 = v405;
                                  v153 = v402;
                                  v18 = v414;
                                  v74 = v417;
LABEL_393:

                                  goto LABEL_394;
                                }

                                if (v426)
                                {
                                  v183 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v184 = v14;
                                  v185 = *MEMORY[0x1E698F240];
                                  v508 = *MEMORY[0x1E696A578];
                                  v387 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mediaTotalPlayTime"];
                                  v509 = v387;
                                  v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v509 forKeys:&v508 count:1];
                                  v187 = v183;
                                  v6 = v421;
                                  v188 = v185;
                                  v14 = v184;
                                  v74 = v417;
                                  v18 = v414;
                                  v386 = v186;
                                  v389 = 0;
                                  v419 = 0;
                                  *v426 = [v187 initWithDomain:v188 code:2 userInfo:?];
                                  v56 = v425;
                                  v132 = v405;
                                  v153 = v402;
                                  goto LABEL_393;
                                }

                                v389 = 0;
                                v419 = 0;
                                v56 = v425;
                                v132 = v405;
                                v153 = v402;
                                v18 = v414;
                                v74 = v417;
LABEL_394:

                                goto LABEL_395;
                              }

                              if (v426)
                              {
                                v177 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v178 = v14;
                                v179 = *MEMORY[0x1E698F240];
                                v510 = *MEMORY[0x1E696A578];
                                v389 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleDensityWeightedConfidenceAverage"];
                                v511 = v389;
                                v180 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v511 forKeys:&v510 count:1];
                                v181 = v177;
                                v6 = v421;
                                v182 = v179;
                                v14 = v178;
                                v74 = v417;
                                v18 = v414;
                                v388 = v180;
                                v390 = 0;
                                v419 = 0;
                                *v426 = [v181 initWithDomain:v182 code:2 userInfo:?];
                                v56 = v425;
                                v132 = v405;
                                v153 = v402;
                                goto LABEL_394;
                              }

                              v390 = 0;
                              v419 = 0;
                              v56 = v425;
                              v132 = v405;
                              v153 = v402;
                              v18 = v414;
                              v74 = v417;
LABEL_395:

                              goto LABEL_396;
                            }

                            if (v426)
                            {
                              v171 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v172 = v14;
                              v173 = *MEMORY[0x1E698F240];
                              v512 = *MEMORY[0x1E696A578];
                              v390 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleDensityWeightedConfidenceSum"];
                              v513 = v390;
                              v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v513 forKeys:&v512 count:1];
                              v175 = v171;
                              v6 = v421;
                              v176 = v173;
                              v14 = v172;
                              v74 = v417;
                              v18 = v414;
                              v391 = v174;
                              v393 = 0;
                              v419 = 0;
                              *v426 = [v175 initWithDomain:v176 code:2 userInfo:?];
                              v56 = v425;
                              v132 = v405;
                              v153 = v402;
                              goto LABEL_395;
                            }

                            v393 = 0;
                            v419 = 0;
                            v56 = v425;
                            v132 = v405;
                            v153 = v402;
                            v18 = v414;
                            v74 = v417;
LABEL_396:

                            goto LABEL_397;
                          }

                          if (v426)
                          {
                            v165 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v166 = v14;
                            v167 = *MEMORY[0x1E698F240];
                            v514 = *MEMORY[0x1E696A578];
                            v393 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleDensityMax"];
                            v515 = v393;
                            v168 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v515 forKeys:&v514 count:1];
                            v169 = v165;
                            v6 = v421;
                            v170 = v167;
                            v14 = v166;
                            v74 = v417;
                            v18 = v414;
                            v392 = v168;
                            v396 = 0;
                            v419 = 0;
                            *v426 = [v169 initWithDomain:v170 code:2 userInfo:?];
                            v56 = v425;
                            v132 = v405;
                            v153 = v402;
                            goto LABEL_396;
                          }

                          v396 = 0;
                          v419 = 0;
                          v56 = v425;
                          v132 = v405;
                          v153 = v402;
                          v18 = v414;
                          v74 = v417;
LABEL_397:

                          goto LABEL_398;
                        }

                        if (v426)
                        {
                          v159 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v160 = v14;
                          v161 = *MEMORY[0x1E698F240];
                          v516 = *MEMORY[0x1E696A578];
                          v396 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleDensityWeightedAverage"];
                          v517 = v396;
                          v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v517 forKeys:&v516 count:1];
                          v163 = v159;
                          v6 = v421;
                          v164 = v161;
                          v14 = v160;
                          v74 = v417;
                          v18 = v414;
                          v395 = v162;
                          v99 = 0;
                          v419 = 0;
                          *v426 = [v163 initWithDomain:v164 code:2 userInfo:?];
                          v56 = v425;
                          v132 = v405;
                          v153 = v402;
                          goto LABEL_397;
                        }

                        v99 = 0;
                        v419 = 0;
                        v56 = v425;
                        v132 = v405;
                        v153 = v402;
                        v18 = v414;
                        v74 = v417;
LABEL_398:

                        v10 = v410;
                        v27 = v398;
                        goto LABEL_399;
                      }

                      if (v426)
                      {
                        v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v155 = v14;
                        v156 = *MEMORY[0x1E698F240];
                        v518 = *MEMORY[0x1E696A578];
                        v153 = v402;
                        v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleDensityWeightedSum"];
                        v519 = v99;
                        v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v519 forKeys:&v518 count:1];
                        v157 = v154;
                        v6 = v421;
                        v158 = v156;
                        v14 = v155;
                        v74 = v417;
                        v18 = v414;
                        v397 = 0;
                        v419 = 0;
                        *v426 = [v157 initWithDomain:v158 code:2 userInfo:v98];
                        v56 = v425;
                        v132 = v405;
                        goto LABEL_398;
                      }

                      v397 = 0;
                      v419 = 0;
                      v56 = v425;
                      v132 = v405;
                      v153 = v34;
                      v18 = v414;
                      v74 = v417;
LABEL_399:

                      goto LABEL_400;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v406 = v29;
                      goto LABEL_45;
                    }

                    if (v426)
                    {
                      v135 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v136 = v14;
                      v137 = *MEMORY[0x1E698F240];
                      v524 = *MEMORY[0x1E696A578];
                      v401 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleCountWeightedSum"];
                      v525 = v401;
                      v138 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v525 forKeys:&v524 count:1];
                      v139 = v135;
                      v6 = v421;
                      v140 = v137;
                      v14 = v136;
                      v74 = v417;
                      v18 = v414;
                      v403 = v138;
                      v406 = 0;
                      v419 = 0;
                      *v426 = [v139 initWithDomain:v140 code:2 userInfo:?];
                      v132 = v405;
                      v56 = v425;
LABEL_401:
                      self = v411;
                      goto LABEL_402;
                    }

                    v406 = 0;
                    v419 = 0;
                    v56 = v425;
                    v132 = v405;
                    self = v411;
                    v74 = v417;
LABEL_403:

                    goto LABEL_404;
                  }

                  if (v426)
                  {
                    v129 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v130 = v14;
                    v131 = *MEMORY[0x1E698F240];
                    v526 = *MEMORY[0x1E696A578];
                    v406 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isGroupConversation"];
                    v527 = v406;
                    v132 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v527 forKeys:&v526 count:1];
                    v133 = v129;
                    v10 = v410;
                    v6 = v421;
                    v134 = v131;
                    v14 = v130;
                    v74 = v417;
                    v27 = 0;
                    v419 = 0;
                    *v426 = [v133 initWithDomain:v134 code:2 userInfo:v132];
                    v56 = v425;
                    self = v411;
                    goto LABEL_403;
                  }

                  v27 = 0;
                  v419 = 0;
                  v56 = v425;
                  v74 = v417;
LABEL_404:

                  v21 = v407;
                  goto LABEL_405;
                }

                if (v426)
                {
                  v92 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v93 = v14;
                  v94 = *MEMORY[0x1E698F240];
                  v528 = *MEMORY[0x1E696A578];
                  v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isRepetitiveContact"];
                  v529 = v27;
                  v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v529 forKeys:&v528 count:1];
                  v96 = v92;
                  v6 = v421;
                  v97 = v94;
                  v14 = v93;
                  v74 = v417;
                  v408 = v95;
                  v419 = 0;
                  *v426 = [v96 initWithDomain:v97 code:2 userInfo:?];
                  v24 = 0;
                  v56 = v425;
                  goto LABEL_404;
                }

                v419 = 0;
                v56 = v425;
                v24 = 0;
                v74 = v417;
LABEL_405:

                goto LABEL_406;
              }

              if (v426)
              {
                v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                v86 = v14;
                v87 = *MEMORY[0x1E698F240];
                v530 = *MEMORY[0x1E696A578];
                v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isCoworkerContact"];
                v531 = v88;
                v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v531 forKeys:&v530 count:1];
                v90 = v85;
                v6 = v421;
                v91 = v87;
                v14 = v86;
                v74 = v417;
                v409 = v89;
                v21 = 0;
                v419 = 0;
                *v426 = [v90 initWithDomain:v91 code:2 userInfo:?];
                v24 = v88;
                v56 = v425;
                goto LABEL_405;
              }

              v21 = 0;
              v419 = 0;
              v56 = v425;
              v74 = v417;
LABEL_406:

              v15 = v415;
              v7 = v429;
              goto LABEL_407;
            }

            if (v426)
            {
              v81 = objc_alloc(MEMORY[0x1E696ABC0]);
              v82 = *MEMORY[0x1E698F240];
              v532 = *MEMORY[0x1E696A578];
              v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFamilyContact"];
              v533 = v21;
              v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v533 forKeys:&v532 count:1];
              v84 = v81;
              v10 = v410;
              v6 = v421;
              v74 = v417;
              v416 = v83;
              v418 = 0;
              v419 = 0;
              *v426 = [v84 initWithDomain:v82 code:2 userInfo:?];
              v56 = v425;
              goto LABEL_406;
            }

            v418 = 0;
            v419 = 0;
            v56 = v425;
            v74 = v417;
LABEL_407:

            goto LABEL_408;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            goto LABEL_27;
          }

          if (a4)
          {
            v68 = objc_alloc(MEMORY[0x1E696ABC0]);
            v69 = self;
            v70 = *MEMORY[0x1E698F240];
            v536 = *MEMORY[0x1E696A578];
            v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"multipleInteractionTypes"];
            v537 = v71;
            v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v537 forKeys:&v536 count:1];
            v73 = v68;
            v59 = v424;
            v74 = v71;
            v6 = v421;
            v75 = v70;
            self = v69;
            v7 = v429;
            v423 = v72;
            v15 = 0;
            v419 = 0;
            *v426 = [v73 initWithDomain:v75 code:2 userInfo:v72];
            v56 = v425;
LABEL_409:

            v9 = v422;
            v38 = v419;
            goto LABEL_410;
          }

          v15 = 0;
          v38 = 0;
          v56 = v425;
          v59 = v424;
LABEL_410:

          v12 = v428;
          v8 = v427;
          goto LABEL_411;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v424 = v13;
          v425 = v13;
          goto LABEL_13;
        }

        if (a4)
        {
          v61 = v13;
          v62 = v9;
          v63 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = *MEMORY[0x1E698F240];
          v538 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"burstyOutgoingInteractionCount"];
          v539 = v15;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v539 forKeys:&v538 count:1];
          v66 = v63;
          v9 = v62;
          v6 = v11;
          v59 = v61;
          v7 = v429;
          v67 = v64;
          v14 = v65;
          v56 = 0;
          v38 = 0;
          *v426 = [v66 initWithDomain:v67 code:2 userInfo:v65];
          goto LABEL_410;
        }

        v56 = 0;
        v38 = 0;
        v59 = v13;
        v6 = v11;
        v7 = v429;
LABEL_411:

        goto LABEL_412;
      }

      if (a4)
      {
        v412 = self;
        v47 = a4;
        v48 = v9;
        v49 = v6;
        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = v8;
        v52 = *MEMORY[0x1E698F240];
        v540 = *MEMORY[0x1E696A578];
        v53 = v7;
        v54 = objc_alloc(MEMORY[0x1E696AEC0]);
        v354 = objc_opt_class();
        v55 = v54;
        v7 = v53;
        v56 = [v55 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v354, @"burstyInteractionCount"];
        v541 = v56;
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v541 forKeys:&v540 count:1];
        v6 = v49;
        v58 = v52;
        v8 = v51;
        v9 = v48;
        v59 = v57;
        v60 = [v50 initWithDomain:v58 code:2 userInfo:v57];
        v12 = 0;
        v38 = 0;
        *v47 = v60;
        self = v412;
        goto LABEL_411;
      }

      v12 = 0;
      v38 = 0;
LABEL_412:

      goto LABEL_413;
    }

    if (a4)
    {
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40 = v6;
      v41 = v7;
      v42 = v40;
      v43 = v39;
      v44 = *MEMORY[0x1E698F240];
      v542 = *MEMORY[0x1E696A578];
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"callDuration"];
      v543 = v12;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v543 forKeys:&v542 count:1];
      v45 = v42;
      v7 = v41;
      v6 = v45;
      v46 = [v43 initWithDomain:v44 code:2 userInfo:v10];
      v9 = 0;
      v38 = 0;
      *a4 = v46;
      goto LABEL_412;
    }

    v9 = 0;
    v38 = 0;
LABEL_413:

    goto LABEL_414;
  }

  if (a4)
  {
    v35 = objc_alloc(MEMORY[0x1E696ABC0]);
    v36 = *MEMORY[0x1E698F240];
    v544 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dailyAggregateCallDuration"];
    v545[0] = v9;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v545 forKeys:&v544 count:1];
    v37 = [v35 initWithDomain:v36 code:2 userInfo:v8];
    v7 = 0;
    v38 = 0;
    *a4 = v37;
    goto LABEL_413;
  }

  v7 = 0;
  v38 = 0;
LABEL_414:

  v346 = *MEMORY[0x1E69E9840];
  return v38;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventDataEventBundleMetadataForRank *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasDailyAggregateCallDuration)
  {
    dailyAggregateCallDuration = self->_dailyAggregateCallDuration;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasCallDuration)
  {
    callDuration = self->_callDuration;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBurstyInteractionCount)
  {
    burstyInteractionCount = self->_burstyInteractionCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBurstyOutgoingInteractionCount)
  {
    burstyOutgoingInteractionCount = self->_burstyOutgoingInteractionCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasMultipleInteractionTypes)
  {
    multipleInteractionTypes = self->_multipleInteractionTypes;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContactLocationWork)
  {
    contactLocationWork = self->_contactLocationWork;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsFamilyContact)
  {
    isFamilyContact = self->_isFamilyContact;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCoworkerContact)
  {
    isCoworkerContact = self->_isCoworkerContact;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRepetitiveContact)
  {
    isRepetitiveContact = self->_isRepetitiveContact;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsGroupConversation)
  {
    isGroupConversation = self->_isGroupConversation;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasPeopleCountWeightedSum)
  {
    peopleCountWeightedSum = self->_peopleCountWeightedSum;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleCountWeightedAverage)
  {
    peopleCountWeightedAverage = self->_peopleCountWeightedAverage;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleCountMax)
  {
    peopleCountMax = self->_peopleCountMax;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleDensityWeightedSum)
  {
    peopleDensityWeightedSum = self->_peopleDensityWeightedSum;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleDensityWeightedAverage)
  {
    peopleDensityWeightedAverage = self->_peopleDensityWeightedAverage;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleDensityMax)
  {
    peopleDensityMax = self->_peopleDensityMax;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleDensityWeightedConfidenceSum)
  {
    peopleDensityWeightedConfidenceSum = self->_peopleDensityWeightedConfidenceSum;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleDensityWeightedConfidenceAverage)
  {
    peopleDensityWeightedConfidenceAverage = self->_peopleDensityWeightedConfidenceAverage;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMediaTotalPlayTime)
  {
    mediaTotalPlayTime = self->_mediaTotalPlayTime;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMediaLength)
  {
    mediaLength = self->_mediaLength;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMediaActionIsRepeat)
  {
    mediaActionIsRepeat = self->_mediaActionIsRepeat;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasTimeAtHomeDuration)
  {
    timeAtHomeDuration = self->_timeAtHomeDuration;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPhotosAtHomeCurationScore)
  {
    photosAtHomeCurationScore = self->_photosAtHomeCurationScore;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasWorkoutDuration)
  {
    workoutDuration = self->_workoutDuration;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMotionActivityWalkSpan)
  {
    motionActivityWalkSpan = self->_motionActivityWalkSpan;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasVisitDuration)
  {
    visitDuration = self->_visitDuration;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPoiCategoryInterestingness)
  {
    poiCategoryInterestingness = self->_poiCategoryInterestingness;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasFamiliarityIndex)
  {
    familiarityIndex = self->_familiarityIndex;
    PBDataWriterWriteFloatField();
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v33 = self->_stateOfMindDomains;
  v34 = [(NSArray *)v33 countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v78;
    do
    {
      v37 = 0;
      do
      {
        if (*v78 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v77 + 1) + 8 * v37) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v37;
      }

      while (v35 != v37);
      v35 = [(NSArray *)v33 countByEnumeratingWithState:&v77 objects:v85 count:16];
    }

    while (v35);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v38 = self->_stateOfMindLabels;
  v39 = [(NSArray *)v38 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v74;
    do
    {
      v42 = 0;
      do
      {
        if (*v74 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [*(*(&v73 + 1) + 8 * v42) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v42;
      }

      while (v40 != v42);
      v40 = [(NSArray *)v38 countByEnumeratingWithState:&v73 objects:v84 count:16];
    }

    while (v40);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v43 = self->_stateOfMindReflectiveIntervals;
  v44 = [(NSArray *)v43 countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v70;
    do
    {
      v47 = 0;
      do
      {
        if (*v70 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [*(*(&v69 + 1) + 8 * v47) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v47;
      }

      while (v45 != v47);
      v45 = [(NSArray *)v43 countByEnumeratingWithState:&v69 objects:v83 count:16];
    }

    while (v45);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v48 = self->_stateOfMindValenceClassifications;
  v49 = [(NSArray *)v48 countByEnumeratingWithState:&v65 objects:v82 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v66;
    do
    {
      v52 = 0;
      do
      {
        if (*v66 != v51)
        {
          objc_enumerationMutation(v48);
        }

        [*(*(&v65 + 1) + 8 * v52) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v52;
      }

      while (v50 != v52);
      v50 = [(NSArray *)v48 countByEnumeratingWithState:&v65 objects:v82 count:16];
    }

    while (v50);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v53 = self->_stateOfMindValenceValues;
  v54 = [(NSArray *)v53 countByEnumeratingWithState:&v61 objects:v81 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v62;
    do
    {
      v57 = 0;
      do
      {
        if (*v62 != v56)
        {
          objc_enumerationMutation(v53);
        }

        [*(*(&v61 + 1) + 8 * v57) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v57;
      }

      while (v55 != v57);
      v55 = [(NSArray *)v53 countByEnumeratingWithState:&v61 objects:v81 count:16];
    }

    while (v55);
  }

  if (self->_hasStateOfMindLoggedIn3pApp)
  {
    stateOfMindLoggedIn3pApp = self->_stateOfMindLoggedIn3pApp;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasStateOfMindLoggedInJournalApp)
  {
    stateOfMindLoggedInJournalApp = self->_stateOfMindLoggedInJournalApp;
    PBDataWriterWriteBOOLField();
  }

  v60 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v206.receiver = self;
  v206.super_class = BMMomentsEventDataEventBundleMetadataForRank;
  v5 = [(BMEventBase *)&v206 init];
  if (!v5)
  {
LABEL_306:
    v202 = v5;
    goto LABEL_307;
  }

  v205 = objc_opt_new();
  v204 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  while (2)
  {
    v9 = [v4 position];
    if (v9 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      goto LABEL_304;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v207) = 0;
      v13 = [v4 position] + 1;
      if (v13 >= [v4 position] && (v14 = objc_msgSend(v4, "position") + 1, v14 <= objc_msgSend(v4, "length")))
      {
        v15 = [v4 data];
        [v15 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v12 |= (LOBYTE(v207) & 0x7F) << v10;
      if ((LOBYTE(v207) & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v16 = v11++ >= 9;
      if (v16)
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    if ([v4 hasError])
    {
      v12 = 0;
    }

LABEL_16:
    if (([v4 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
LABEL_304:
      v191 = [v205 copy];
      stateOfMindDomains = v5->_stateOfMindDomains;
      v5->_stateOfMindDomains = v191;

      v193 = [v204 copy];
      stateOfMindLabels = v5->_stateOfMindLabels;
      v5->_stateOfMindLabels = v193;

      v195 = [v6 copy];
      stateOfMindReflectiveIntervals = v5->_stateOfMindReflectiveIntervals;
      v5->_stateOfMindReflectiveIntervals = v195;

      v197 = [v7 copy];
      stateOfMindValenceClassifications = v5->_stateOfMindValenceClassifications;
      v5->_stateOfMindValenceClassifications = v197;

      v199 = [v8 copy];
      stateOfMindValenceValues = v5->_stateOfMindValenceValues;
      v5->_stateOfMindValenceValues = v199;

      v201 = [v4 hasError];
      if (v201)
      {
        goto LABEL_305;
      }

      goto LABEL_306;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v5->_hasDailyAggregateCallDuration = 1;
        LODWORD(v207) = 0;
        v17 = [v4 position] + 4;
        if (v17 >= [v4 position] && (v18 = objc_msgSend(v4, "position") + 4, v18 <= objc_msgSend(v4, "length")))
        {
          v178 = [v4 data];
          [v178 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_dailyAggregateCallDuration = *&v207;
        continue;
      case 2u:
        v5->_hasCallDuration = 1;
        LODWORD(v207) = 0;
        v84 = [v4 position] + 4;
        if (v84 >= [v4 position] && (v85 = objc_msgSend(v4, "position") + 4, v85 <= objc_msgSend(v4, "length")))
        {
          v179 = [v4 data];
          [v179 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_callDuration = *&v207;
        continue;
      case 3u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v5->_hasBurstyInteractionCount = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v64 = [v4 position] + 1;
          if (v64 >= [v4 position] && (v65 = objc_msgSend(v4, "position") + 1, v65 <= objc_msgSend(v4, "length")))
          {
            v66 = [v4 data];
            [v66 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v63 |= (LOBYTE(v207) & 0x7F) << v61;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v16 = v62++ >= 9;
          if (v16)
          {
            v67 = 0;
            goto LABEL_227;
          }
        }

        if ([v4 hasError])
        {
          v67 = 0;
        }

        else
        {
          v67 = v63;
        }

LABEL_227:
        v5->_burstyInteractionCount = v67;
        continue;
      case 4u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v5->_hasBurstyOutgoingInteractionCount = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v73 = [v4 position] + 1;
          if (v73 >= [v4 position] && (v74 = objc_msgSend(v4, "position") + 1, v74 <= objc_msgSend(v4, "length")))
          {
            v75 = [v4 data];
            [v75 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v72 |= (LOBYTE(v207) & 0x7F) << v70;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v16 = v71++ >= 9;
          if (v16)
          {
            v76 = 0;
            goto LABEL_231;
          }
        }

        if ([v4 hasError])
        {
          v76 = 0;
        }

        else
        {
          v76 = v72;
        }

LABEL_231:
        v5->_burstyOutgoingInteractionCount = v76;
        continue;
      case 5u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v5->_hasMultipleInteractionTypes = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v44 = [v4 position] + 1;
          if (v44 >= [v4 position] && (v45 = objc_msgSend(v4, "position") + 1, v45 <= objc_msgSend(v4, "length")))
          {
            v46 = [v4 data];
            [v46 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v43 |= (LOBYTE(v207) & 0x7F) << v41;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v16 = v42++ >= 9;
          if (v16)
          {
            LOBYTE(v47) = 0;
            goto LABEL_221;
          }
        }

        v47 = (v43 != 0) & ~[v4 hasError];
LABEL_221:
        v5->_multipleInteractionTypes = v47;
        continue;
      case 6u:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        v5->_hasContactLocationWork = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v106 = [v4 position] + 1;
          if (v106 >= [v4 position] && (v107 = objc_msgSend(v4, "position") + 1, v107 <= objc_msgSend(v4, "length")))
          {
            v108 = [v4 data];
            [v108 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v105 |= (LOBYTE(v207) & 0x7F) << v103;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v16 = v104++ >= 9;
          if (v16)
          {
            LOBYTE(v109) = 0;
            goto LABEL_242;
          }
        }

        v109 = (v105 != 0) & ~[v4 hasError];
LABEL_242:
        v5->_contactLocationWork = v109;
        continue;
      case 7u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v5->_hasIsFamilyContact = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v117 = [v4 position] + 1;
          if (v117 >= [v4 position] && (v118 = objc_msgSend(v4, "position") + 1, v118 <= objc_msgSend(v4, "length")))
          {
            v119 = [v4 data];
            [v119 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v116 |= (LOBYTE(v207) & 0x7F) << v114;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v16 = v115++ >= 9;
          if (v16)
          {
            LOBYTE(v120) = 0;
            goto LABEL_244;
          }
        }

        v120 = (v116 != 0) & ~[v4 hasError];
LABEL_244:
        v5->_isFamilyContact = v120;
        continue;
      case 8u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v5->_hasIsCoworkerContact = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v80 = [v4 position] + 1;
          if (v80 >= [v4 position] && (v81 = objc_msgSend(v4, "position") + 1, v81 <= objc_msgSend(v4, "length")))
          {
            v82 = [v4 data];
            [v82 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v79 |= (LOBYTE(v207) & 0x7F) << v77;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v16 = v78++ >= 9;
          if (v16)
          {
            LOBYTE(v83) = 0;
            goto LABEL_233;
          }
        }

        v83 = (v79 != 0) & ~[v4 hasError];
LABEL_233:
        v5->_isCoworkerContact = v83;
        continue;
      case 9u:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v5->_hasIsRepetitiveContact = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v128 = [v4 position] + 1;
          if (v128 >= [v4 position] && (v129 = objc_msgSend(v4, "position") + 1, v129 <= objc_msgSend(v4, "length")))
          {
            v130 = [v4 data];
            [v130 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v127 |= (LOBYTE(v207) & 0x7F) << v125;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v16 = v126++ >= 9;
          if (v16)
          {
            LOBYTE(v131) = 0;
            goto LABEL_246;
          }
        }

        v131 = (v127 != 0) & ~[v4 hasError];
LABEL_246:
        v5->_isRepetitiveContact = v131;
        continue;
      case 0xAu:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v5->_hasIsGroupConversation = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v53 = [v4 position] + 1;
          if (v53 >= [v4 position] && (v54 = objc_msgSend(v4, "position") + 1, v54 <= objc_msgSend(v4, "length")))
          {
            v55 = [v4 data];
            [v55 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v52 |= (LOBYTE(v207) & 0x7F) << v50;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v16 = v51++ >= 9;
          if (v16)
          {
            LOBYTE(v56) = 0;
            goto LABEL_223;
          }
        }

        v56 = (v52 != 0) & ~[v4 hasError];
LABEL_223:
        v5->_isGroupConversation = v56;
        continue;
      case 0xBu:
        v5->_hasPeopleCountWeightedSum = 1;
        LODWORD(v207) = 0;
        v123 = [v4 position] + 4;
        if (v123 >= [v4 position] && (v124 = objc_msgSend(v4, "position") + 4, v124 <= objc_msgSend(v4, "length")))
        {
          v184 = [v4 data];
          [v184 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_peopleCountWeightedSum = *&v207;
        continue;
      case 0xCu:
        v5->_hasPeopleCountWeightedAverage = 1;
        LODWORD(v207) = 0;
        v39 = [v4 position] + 4;
        if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 4, v40 <= objc_msgSend(v4, "length")))
        {
          v173 = [v4 data];
          [v173 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_peopleCountWeightedAverage = *&v207;
        continue;
      case 0xDu:
        v5->_hasPeopleCountMax = 1;
        LODWORD(v207) = 0;
        v48 = [v4 position] + 4;
        if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 4, v49 <= objc_msgSend(v4, "length")))
        {
          v174 = [v4 data];
          [v174 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_peopleCountMax = *&v207;
        continue;
      case 0xEu:
        v5->_hasPeopleDensityWeightedSum = 1;
        LODWORD(v207) = 0;
        v112 = [v4 position] + 4;
        if (v112 >= [v4 position] && (v113 = objc_msgSend(v4, "position") + 4, v113 <= objc_msgSend(v4, "length")))
        {
          v182 = [v4 data];
          [v182 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_peopleDensityWeightedSum = *&v207;
        continue;
      case 0xFu:
        v5->_hasPeopleDensityWeightedAverage = 1;
        LODWORD(v207) = 0;
        v30 = [v4 position] + 4;
        if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 4, v31 <= objc_msgSend(v4, "length")))
        {
          v172 = [v4 data];
          [v172 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_peopleDensityWeightedAverage = *&v207;
        continue;
      case 0x10u:
        v5->_hasPeopleDensityMax = 1;
        LODWORD(v207) = 0;
        v68 = [v4 position] + 4;
        if (v68 >= [v4 position] && (v69 = objc_msgSend(v4, "position") + 4, v69 <= objc_msgSend(v4, "length")))
        {
          v177 = [v4 data];
          [v177 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_peopleDensityMax = *&v207;
        continue;
      case 0x11u:
        v5->_hasPeopleDensityWeightedConfidenceSum = 1;
        LODWORD(v207) = 0;
        v28 = [v4 position] + 4;
        if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 4, v29 <= objc_msgSend(v4, "length")))
        {
          v171 = [v4 data];
          [v171 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_peopleDensityWeightedConfidenceSum = *&v207;
        continue;
      case 0x12u:
        v5->_hasPeopleDensityWeightedConfidenceAverage = 1;
        LODWORD(v207) = 0;
        v94 = [v4 position] + 4;
        if (v94 >= [v4 position] && (v95 = objc_msgSend(v4, "position") + 4, v95 <= objc_msgSend(v4, "length")))
        {
          v180 = [v4 data];
          [v180 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_peopleDensityWeightedConfidenceAverage = *&v207;
        continue;
      case 0x13u:
        v5->_hasMediaTotalPlayTime = 1;
        LODWORD(v207) = 0;
        v121 = [v4 position] + 4;
        if (v121 >= [v4 position] && (v122 = objc_msgSend(v4, "position") + 4, v122 <= objc_msgSend(v4, "length")))
        {
          v183 = [v4 data];
          [v183 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_mediaTotalPlayTime = *&v207;
        continue;
      case 0x14u:
        v5->_hasMediaLength = 1;
        LODWORD(v207) = 0;
        v144 = [v4 position] + 4;
        if (v144 >= [v4 position] && (v145 = objc_msgSend(v4, "position") + 4, v145 <= objc_msgSend(v4, "length")))
        {
          v188 = [v4 data];
          [v188 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_mediaLength = *&v207;
        continue;
      case 0x15u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        v5->_hasMediaActionIsRepeat = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v99 = [v4 position] + 1;
          if (v99 >= [v4 position] && (v100 = objc_msgSend(v4, "position") + 1, v100 <= objc_msgSend(v4, "length")))
          {
            v101 = [v4 data];
            [v101 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v98 |= (LOBYTE(v207) & 0x7F) << v96;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v16 = v97++ >= 9;
          if (v16)
          {
            LOBYTE(v102) = 0;
            goto LABEL_240;
          }
        }

        v102 = (v98 != 0) & ~[v4 hasError];
LABEL_240:
        v5->_mediaActionIsRepeat = v102;
        continue;
      case 0x16u:
        v5->_hasTimeAtHomeDuration = 1;
        LODWORD(v207) = 0;
        v110 = [v4 position] + 4;
        if (v110 >= [v4 position] && (v111 = objc_msgSend(v4, "position") + 4, v111 <= objc_msgSend(v4, "length")))
        {
          v181 = [v4 data];
          [v181 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_timeAtHomeDuration = *&v207;
        continue;
      case 0x17u:
        v5->_hasPhotosAtHomeCurationScore = 1;
        LODWORD(v207) = 0;
        v142 = [v4 position] + 4;
        if (v142 >= [v4 position] && (v143 = objc_msgSend(v4, "position") + 4, v143 <= objc_msgSend(v4, "length")))
        {
          v187 = [v4 data];
          [v187 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_photosAtHomeCurationScore = *&v207;
        continue;
      case 0x18u:
        v5->_hasWorkoutDuration = 1;
        LODWORD(v207) = 0;
        v146 = [v4 position] + 4;
        if (v146 >= [v4 position] && (v147 = objc_msgSend(v4, "position") + 4, v147 <= objc_msgSend(v4, "length")))
        {
          v189 = [v4 data];
          [v189 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_workoutDuration = *&v207;
        continue;
      case 0x19u:
        v5->_hasMotionActivityWalkSpan = 1;
        LODWORD(v207) = 0;
        v59 = [v4 position] + 4;
        if (v59 >= [v4 position] && (v60 = objc_msgSend(v4, "position") + 4, v60 <= objc_msgSend(v4, "length")))
        {
          v176 = [v4 data];
          [v176 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_motionActivityWalkSpan = *&v207;
        continue;
      case 0x1Au:
        v5->_hasVisitDuration = 1;
        LODWORD(v207) = 0;
        v57 = [v4 position] + 4;
        if (v57 >= [v4 position] && (v58 = objc_msgSend(v4, "position") + 4, v58 <= objc_msgSend(v4, "length")))
        {
          v175 = [v4 data];
          [v175 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_visitDuration = *&v207;
        continue;
      case 0x1Bu:
        v5->_hasPoiCategoryInterestingness = 1;
        LODWORD(v207) = 0;
        v162 = [v4 position] + 4;
        if (v162 >= [v4 position] && (v163 = objc_msgSend(v4, "position") + 4, v163 <= objc_msgSend(v4, "length")))
        {
          v190 = [v4 data];
          [v190 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_poiCategoryInterestingness = *&v207;
        continue;
      case 0x1Cu:
        v5->_hasFamiliarityIndex = 1;
        LODWORD(v207) = 0;
        v19 = [v4 position] + 4;
        if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 4, v20 <= objc_msgSend(v4, "length")))
        {
          v170 = [v4 data];
          [v170 getBytes:&v207 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_familiarityIndex = *&v207;
        continue;
      case 0x1Du:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        v151 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v207) = 0;
          v152 = [v4 position] + 1;
          if (v152 >= [v4 position] && (v153 = objc_msgSend(v4, "position") + 1, v153 <= objc_msgSend(v4, "length")))
          {
            v154 = [v4 data];
            [v154 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v150 |= (LOBYTE(v207) & 0x7F) << v148;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v93 = v149++ > 8;
          if (v93)
          {
            goto LABEL_254;
          }
        }

        if (([v4 hasError] & 1) != 0 || v150 > 0x12)
        {
LABEL_254:
          v150 = 0;
        }

        v168 = [v151 numberWithUnsignedInt:v150];
        if (!v168)
        {
          goto LABEL_308;
        }

        v165 = v168;
        v166 = v205;
        goto LABEL_295;
      case 0x1Eu:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        v158 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v207) = 0;
          v159 = [v4 position] + 1;
          if (v159 >= [v4 position] && (v160 = objc_msgSend(v4, "position") + 1, v160 <= objc_msgSend(v4, "length")))
          {
            v161 = [v4 data];
            [v161 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v157 |= (LOBYTE(v207) & 0x7F) << v155;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v93 = v156++ > 8;
          if (v93)
          {
            goto LABEL_259;
          }
        }

        if (([v4 hasError] & 1) != 0 || v157 > 0x26)
        {
LABEL_259:
          v157 = 0;
        }

        v169 = [v158 numberWithUnsignedInt:v157];
        if (!v169)
        {
          goto LABEL_308;
        }

        v165 = v169;
        v166 = v204;
        goto LABEL_295;
      case 0x1Fu:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v135 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v207) = 0;
          v136 = [v4 position] + 1;
          if (v136 >= [v4 position] && (v137 = objc_msgSend(v4, "position") + 1, v137 <= objc_msgSend(v4, "length")))
          {
            v138 = [v4 data];
            [v138 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v134 |= (LOBYTE(v207) & 0x7F) << v132;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v93 = v133++ > 8;
          if (v93)
          {
            goto LABEL_249;
          }
        }

        if (([v4 hasError] & 1) != 0 || v134 > 2)
        {
LABEL_249:
          v134 = 0;
        }

        v167 = [v135 numberWithUnsignedInt:v134];
        if (!v167)
        {
          goto LABEL_308;
        }

        v165 = v167;
        v166 = v6;
        goto LABEL_295;
      case 0x20u:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v89 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v207) = 0;
          v90 = [v4 position] + 1;
          if (v90 >= [v4 position] && (v91 = objc_msgSend(v4, "position") + 1, v91 <= objc_msgSend(v4, "length")))
          {
            v92 = [v4 data];
            [v92 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v88 |= (LOBYTE(v207) & 0x7F) << v86;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v93 = v87++ > 8;
          if (v93)
          {
            goto LABEL_236;
          }
        }

        if (([v4 hasError] & 1) != 0 || v88 > 7)
        {
LABEL_236:
          v88 = 0;
        }

        v164 = [v89 numberWithUnsignedInt:v88];
        if (v164)
        {
          v165 = v164;
          v166 = v7;
LABEL_295:
          [v166 addObject:v165];

          continue;
        }

LABEL_308:

LABEL_305:
        v202 = 0;
LABEL_307:

        return v202;
      case 0x21u:
        v139 = MEMORY[0x1E696AD98];
        v207 = 0.0;
        v140 = [v4 position] + 8;
        if (v140 >= [v4 position] && (v141 = objc_msgSend(v4, "position") + 8, v141 <= objc_msgSend(v4, "length")))
        {
          v185 = [v4 data];
          [v185 getBytes:&v207 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v186 = [v139 numberWithDouble:v207];
        if (!v186)
        {
          goto LABEL_308;
        }

        v165 = v186;
        v166 = v8;
        goto LABEL_295;
      case 0x22u:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v5->_hasStateOfMindLoggedIn3pApp = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v35 = [v4 position] + 1;
          if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
          {
            v37 = [v4 data];
            [v37 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v34 |= (LOBYTE(v207) & 0x7F) << v32;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v16 = v33++ >= 9;
          if (v16)
          {
            LOBYTE(v38) = 0;
            goto LABEL_219;
          }
        }

        v38 = (v34 != 0) & ~[v4 hasError];
LABEL_219:
        v5->_stateOfMindLoggedIn3pApp = v38;
        continue;
      case 0x23u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v5->_hasStateOfMindLoggedInJournalApp = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v24 = [v4 position] + 1;
          if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 1, v25 <= objc_msgSend(v4, "length")))
          {
            v26 = [v4 data];
            [v26 getBytes:&v207 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v23 |= (LOBYTE(v207) & 0x7F) << v21;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v16 = v22++ >= 9;
          if (v16)
          {
            LOBYTE(v27) = 0;
            goto LABEL_217;
          }
        }

        v27 = (v23 != 0) & ~[v4 hasError];
LABEL_217:
        v5->_stateOfMindLoggedInJournalApp = v27;
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        goto LABEL_308;
    }
  }
}

- (NSString)description
{
  v110 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v4 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindDomains];
  v5 = [v4 countByEnumeratingWithState:&v102 objects:v109 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v103;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v103 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v102 + 1) + 8 * i);
        if ([v3 length] != 1)
        {
          [v3 appendString:{@", "}];
        }

        v10 = BMMomentsEventDataStateOfMindDomainAsString([v9 unsignedIntValue]);
        [v3 appendString:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v102 objects:v109 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v11 = objc_opt_new();
  [v11 appendString:@"["];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v12 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindLabels];
  v13 = [v12 countByEnumeratingWithState:&v98 objects:v108 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v99;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v99 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v98 + 1) + 8 * j);
        if ([v11 length] != 1)
        {
          [v11 appendString:{@", "}];
        }

        v18 = BMMomentsEventDataStateOfMindLabelAsString([v17 unsignedIntValue]);
        [v11 appendString:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v98 objects:v108 count:16];
    }

    while (v14);
  }

  [v11 appendString:@"]"];
  v19 = objc_opt_new();
  [v19 appendString:@"["];
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v20 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindReflectiveIntervals];
  v21 = [v20 countByEnumeratingWithState:&v94 objects:v107 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v95;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v95 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v94 + 1) + 8 * k);
        if ([v19 length] != 1)
        {
          [v19 appendString:{@", "}];
        }

        v26 = BMMomentsEventDataStateOfMindReflectiveIntervalAsString([v25 unsignedIntValue]);
        [v19 appendString:v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v94 objects:v107 count:16];
    }

    while (v22);
  }

  [v19 appendString:@"]"];
  v27 = objc_opt_new();
  [v27 appendString:@"["];
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v65 = self;
  v28 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceClassifications];
  v29 = [v28 countByEnumeratingWithState:&v90 objects:v106 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v91;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v91 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v90 + 1) + 8 * m);
        if ([v27 length] != 1)
        {
          [v27 appendString:{@", "}];
        }

        v34 = BMMomentsEventDataStateOfMindValenceClassificationAsString([v33 unsignedIntValue]);
        [v27 appendString:v34];
      }

      v30 = [v28 countByEnumeratingWithState:&v90 objects:v106 count:16];
    }

    while (v30);
  }

  [v27 appendString:@"]"];
  v64 = objc_alloc(MEMORY[0x1E696AEC0]);
  v35 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 dailyAggregateCallDuration];
  v88 = [v35 numberWithDouble:?];
  v36 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 callDuration];
  v87 = [v36 numberWithDouble:?];
  v89 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundleMetadataForRank burstyInteractionCount](v65, "burstyInteractionCount")}];
  v86 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundleMetadataForRank burstyOutgoingInteractionCount](v65, "burstyOutgoingInteractionCount")}];
  v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank multipleInteractionTypes](v65, "multipleInteractionTypes")}];
  v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank contactLocationWork](v65, "contactLocationWork")}];
  v83 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isFamilyContact](v65, "isFamilyContact")}];
  v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isCoworkerContact](v65, "isCoworkerContact")}];
  v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isRepetitiveContact](v65, "isRepetitiveContact")}];
  v80 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isGroupConversation](v65, "isGroupConversation")}];
  v37 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 peopleCountWeightedSum];
  v79 = [v37 numberWithDouble:?];
  v38 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 peopleCountWeightedAverage];
  v78 = [v38 numberWithDouble:?];
  v39 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 peopleCountMax];
  v77 = [v39 numberWithDouble:?];
  v40 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 peopleDensityWeightedSum];
  v76 = [v40 numberWithDouble:?];
  v41 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 peopleDensityWeightedAverage];
  v75 = [v41 numberWithDouble:?];
  v42 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 peopleDensityMax];
  v74 = [v42 numberWithDouble:?];
  v43 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 peopleDensityWeightedConfidenceSum];
  v73 = [v43 numberWithDouble:?];
  v44 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 peopleDensityWeightedConfidenceAverage];
  v72 = [v44 numberWithDouble:?];
  v45 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 mediaTotalPlayTime];
  v71 = [v45 numberWithDouble:?];
  v46 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 mediaLength];
  v70 = [v46 numberWithDouble:?];
  v69 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank mediaActionIsRepeat](v65, "mediaActionIsRepeat")}];
  v47 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 timeAtHomeDuration];
  v68 = [v47 numberWithDouble:?];
  v48 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 photosAtHomeCurationScore];
  v63 = [v48 numberWithDouble:?];
  v49 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 workoutDuration];
  v62 = [v49 numberWithDouble:?];
  v50 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 motionActivityWalkSpan];
  v61 = [v50 numberWithDouble:?];
  v51 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 visitDuration];
  v60 = [v51 numberWithDouble:?];
  v52 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 poiCategoryInterestingness];
  v67 = [v52 numberWithDouble:?];
  v53 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)v65 familiarityIndex];
  v58 = [v53 numberWithDouble:?];
  v59 = [(BMMomentsEventDataEventBundleMetadataForRank *)v65 stateOfMindValenceValues];
  v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank stateOfMindLoggedIn3pApp](v65, "stateOfMindLoggedIn3pApp")}];
  v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank stateOfMindLoggedInJournalApp](v65, "stateOfMindLoggedInJournalApp")}];
  v66 = [v64 initWithFormat:@"BMMomentsEventDataEventBundleMetadataForRank with dailyAggregateCallDuration: %@, callDuration: %@, burstyInteractionCount: %@, burstyOutgoingInteractionCount: %@, multipleInteractionTypes: %@, contactLocationWork: %@, isFamilyContact: %@, isCoworkerContact: %@, isRepetitiveContact: %@, isGroupConversation: %@, peopleCountWeightedSum: %@, peopleCountWeightedAverage: %@, peopleCountMax: %@, peopleDensityWeightedSum: %@, peopleDensityWeightedAverage: %@, peopleDensityMax: %@, peopleDensityWeightedConfidenceSum: %@, peopleDensityWeightedConfidenceAverage: %@, mediaTotalPlayTime: %@, mediaLength: %@, mediaActionIsRepeat: %@, timeAtHomeDuration: %@, photosAtHomeCurationScore: %@, workoutDuration: %@, motionActivityWalkSpan: %@, visitDuration: %@, poiCategoryInterestingness: %@, familiarityIndex: %@, stateOfMindDomains: %@, stateOfMindLabels: %@, stateOfMindReflectiveIntervals: %@, stateOfMindValenceClassifications: %@, stateOfMindValenceValues: %@, stateOfMindLoggedIn3pApp: %@, stateOfMindLoggedInJournalApp: %@", v88, v87, v89, v86, v85, v84, v83, v82, v81, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v63, v62, v61, v60, v67, v58, v3, v11, v19, v27, v59, v54, v55];

  v56 = *MEMORY[0x1E69E9840];

  return v66;
}

- (BMMomentsEventDataEventBundleMetadataForRank)initWithDailyAggregateCallDuration:(id)a3 callDuration:(id)a4 burstyInteractionCount:(id)a5 burstyOutgoingInteractionCount:(id)a6 multipleInteractionTypes:(id)a7 contactLocationWork:(id)a8 isFamilyContact:(id)a9 isCoworkerContact:(id)a10 isRepetitiveContact:(id)a11 isGroupConversation:(id)a12 peopleCountWeightedSum:(id)a13 peopleCountWeightedAverage:(id)a14 peopleCountMax:(id)a15 peopleDensityWeightedSum:(id)a16 peopleDensityWeightedAverage:(id)a17 peopleDensityMax:(id)a18 peopleDensityWeightedConfidenceSum:(id)a19 peopleDensityWeightedConfidenceAverage:(id)a20 mediaTotalPlayTime:(id)a21 mediaLength:(id)a22 mediaActionIsRepeat:(id)a23 timeAtHomeDuration:(id)a24 photosAtHomeCurationScore:(id)a25 workoutDuration:(id)a26 motionActivityWalkSpan:(id)a27 visitDuration:(id)a28 poiCategoryInterestingness:(id)a29 familiarityIndex:(id)a30 stateOfMindDomains:(id)a31 stateOfMindLabels:(id)a32 stateOfMindReflectiveIntervals:(id)a33 stateOfMindValenceClassifications:(id)a34 stateOfMindValenceValues:(id)a35 stateOfMindLoggedIn3pApp:(id)a36 stateOfMindLoggedInJournalApp:(id)a37
{
  v119 = a3;
  v118 = a4;
  v117 = a5;
  v116 = a6;
  v115 = a7;
  v114 = a8;
  v113 = a9;
  v112 = a10;
  v111 = a11;
  v110 = a12;
  v42 = a13;
  v43 = a14;
  v44 = a15;
  v45 = a16;
  v46 = a17;
  v47 = a18;
  v48 = a19;
  v49 = a20;
  v109 = a21;
  v108 = a22;
  v107 = a23;
  v106 = a24;
  v105 = a25;
  v104 = a26;
  v103 = a27;
  v102 = a28;
  v101 = a29;
  v100 = a30;
  v98 = a31;
  v97 = a32;
  v96 = a33;
  v95 = a34;
  v94 = a35;
  v99 = a36;
  v50 = a37;
  v120.receiver = self;
  v120.super_class = BMMomentsEventDataEventBundleMetadataForRank;
  v51 = [(BMEventBase *)&v120 init];
  if (v51)
  {
    v51->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v119)
    {
      v51->_hasDailyAggregateCallDuration = 1;
      [v119 floatValue];
      v53 = v52;
    }

    else
    {
      v51->_hasDailyAggregateCallDuration = 0;
      v53 = -1.0;
    }

    v51->_dailyAggregateCallDuration = v53;
    if (v118)
    {
      v51->_hasCallDuration = 1;
      [v118 floatValue];
      v55 = v54;
    }

    else
    {
      v51->_hasCallDuration = 0;
      v55 = -1.0;
    }

    v51->_callDuration = v55;
    if (v117)
    {
      v51->_hasBurstyInteractionCount = 1;
      v56 = [v117 intValue];
    }

    else
    {
      v51->_hasBurstyInteractionCount = 0;
      v56 = -1;
    }

    v51->_burstyInteractionCount = v56;
    if (v116)
    {
      v51->_hasBurstyOutgoingInteractionCount = 1;
      v57 = [v116 intValue];
    }

    else
    {
      v51->_hasBurstyOutgoingInteractionCount = 0;
      v57 = -1;
    }

    v51->_burstyOutgoingInteractionCount = v57;
    if (v115)
    {
      v51->_hasMultipleInteractionTypes = 1;
      v51->_multipleInteractionTypes = [v115 BOOLValue];
    }

    else
    {
      v51->_hasMultipleInteractionTypes = 0;
      v51->_multipleInteractionTypes = 0;
    }

    if (v114)
    {
      v51->_hasContactLocationWork = 1;
      v51->_contactLocationWork = [v114 BOOLValue];
    }

    else
    {
      v51->_hasContactLocationWork = 0;
      v51->_contactLocationWork = 0;
    }

    if (v113)
    {
      v51->_hasIsFamilyContact = 1;
      v51->_isFamilyContact = [v113 BOOLValue];
    }

    else
    {
      v51->_hasIsFamilyContact = 0;
      v51->_isFamilyContact = 0;
    }

    if (v112)
    {
      v51->_hasIsCoworkerContact = 1;
      v51->_isCoworkerContact = [v112 BOOLValue];
    }

    else
    {
      v51->_hasIsCoworkerContact = 0;
      v51->_isCoworkerContact = 0;
    }

    if (v111)
    {
      v51->_hasIsRepetitiveContact = 1;
      v51->_isRepetitiveContact = [v111 BOOLValue];
    }

    else
    {
      v51->_hasIsRepetitiveContact = 0;
      v51->_isRepetitiveContact = 0;
    }

    if (v110)
    {
      v51->_hasIsGroupConversation = 1;
      v51->_isGroupConversation = [v110 BOOLValue];
    }

    else
    {
      v51->_hasIsGroupConversation = 0;
      v51->_isGroupConversation = 0;
    }

    if (v42)
    {
      v51->_hasPeopleCountWeightedSum = 1;
      [v42 floatValue];
      v59 = v58;
    }

    else
    {
      v51->_hasPeopleCountWeightedSum = 0;
      v59 = -1.0;
    }

    v51->_peopleCountWeightedSum = v59;
    if (v43)
    {
      v51->_hasPeopleCountWeightedAverage = 1;
      [v43 floatValue];
      v61 = v60;
    }

    else
    {
      v51->_hasPeopleCountWeightedAverage = 0;
      v61 = -1.0;
    }

    v51->_peopleCountWeightedAverage = v61;
    if (v44)
    {
      v51->_hasPeopleCountMax = 1;
      [v44 floatValue];
      v63 = v62;
    }

    else
    {
      v51->_hasPeopleCountMax = 0;
      v63 = -1.0;
    }

    v51->_peopleCountMax = v63;
    if (v45)
    {
      v51->_hasPeopleDensityWeightedSum = 1;
      [v45 floatValue];
      v65 = v64;
    }

    else
    {
      v51->_hasPeopleDensityWeightedSum = 0;
      v65 = -1.0;
    }

    v51->_peopleDensityWeightedSum = v65;
    if (v46)
    {
      v51->_hasPeopleDensityWeightedAverage = 1;
      [v46 floatValue];
      v67 = v66;
    }

    else
    {
      v51->_hasPeopleDensityWeightedAverage = 0;
      v67 = -1.0;
    }

    v51->_peopleDensityWeightedAverage = v67;
    if (v47)
    {
      v51->_hasPeopleDensityMax = 1;
      [v47 floatValue];
      v69 = v68;
    }

    else
    {
      v51->_hasPeopleDensityMax = 0;
      v69 = -1.0;
    }

    v51->_peopleDensityMax = v69;
    if (v48)
    {
      v51->_hasPeopleDensityWeightedConfidenceSum = 1;
      [v48 floatValue];
      v71 = v70;
    }

    else
    {
      v51->_hasPeopleDensityWeightedConfidenceSum = 0;
      v71 = -1.0;
    }

    v51->_peopleDensityWeightedConfidenceSum = v71;
    if (v49)
    {
      v51->_hasPeopleDensityWeightedConfidenceAverage = 1;
      [v49 floatValue];
      v73 = v72;
    }

    else
    {
      v51->_hasPeopleDensityWeightedConfidenceAverage = 0;
      v73 = -1.0;
    }

    v51->_peopleDensityWeightedConfidenceAverage = v73;
    if (v109)
    {
      v51->_hasMediaTotalPlayTime = 1;
      [v109 floatValue];
      v75 = v74;
    }

    else
    {
      v51->_hasMediaTotalPlayTime = 0;
      v75 = -1.0;
    }

    v51->_mediaTotalPlayTime = v75;
    if (v108)
    {
      v51->_hasMediaLength = 1;
      [v108 floatValue];
      v77 = v76;
    }

    else
    {
      v51->_hasMediaLength = 0;
      v77 = -1.0;
    }

    v51->_mediaLength = v77;
    if (v107)
    {
      v51->_hasMediaActionIsRepeat = 1;
      v51->_mediaActionIsRepeat = [v107 BOOLValue];
    }

    else
    {
      v51->_hasMediaActionIsRepeat = 0;
      v51->_mediaActionIsRepeat = 0;
    }

    if (v106)
    {
      v51->_hasTimeAtHomeDuration = 1;
      [v106 floatValue];
      v79 = v78;
    }

    else
    {
      v51->_hasTimeAtHomeDuration = 0;
      v79 = -1.0;
    }

    v51->_timeAtHomeDuration = v79;
    if (v105)
    {
      v51->_hasPhotosAtHomeCurationScore = 1;
      [v105 floatValue];
      v81 = v80;
    }

    else
    {
      v51->_hasPhotosAtHomeCurationScore = 0;
      v81 = -1.0;
    }

    v51->_photosAtHomeCurationScore = v81;
    if (v104)
    {
      v51->_hasWorkoutDuration = 1;
      [v104 floatValue];
      v83 = v82;
    }

    else
    {
      v51->_hasWorkoutDuration = 0;
      v83 = -1.0;
    }

    v51->_workoutDuration = v83;
    if (v103)
    {
      v51->_hasMotionActivityWalkSpan = 1;
      [v103 floatValue];
      v85 = v84;
    }

    else
    {
      v51->_hasMotionActivityWalkSpan = 0;
      v85 = -1.0;
    }

    v51->_motionActivityWalkSpan = v85;
    if (v102)
    {
      v51->_hasVisitDuration = 1;
      [v102 floatValue];
      v87 = v86;
    }

    else
    {
      v51->_hasVisitDuration = 0;
      v87 = -1.0;
    }

    v51->_visitDuration = v87;
    if (v101)
    {
      v51->_hasPoiCategoryInterestingness = 1;
      [v101 floatValue];
      v89 = v88;
    }

    else
    {
      v51->_hasPoiCategoryInterestingness = 0;
      v89 = -1.0;
    }

    v51->_poiCategoryInterestingness = v89;
    if (v100)
    {
      v51->_hasFamiliarityIndex = 1;
      [v100 floatValue];
      v91 = v90;
    }

    else
    {
      v51->_hasFamiliarityIndex = 0;
      v91 = -1.0;
    }

    v51->_familiarityIndex = v91;
    objc_storeStrong(&v51->_stateOfMindDomains, a31);
    objc_storeStrong(&v51->_stateOfMindLabels, a32);
    objc_storeStrong(&v51->_stateOfMindReflectiveIntervals, a33);
    objc_storeStrong(&v51->_stateOfMindValenceClassifications, a34);
    objc_storeStrong(&v51->_stateOfMindValenceValues, a35);
    if (v99)
    {
      v51->_hasStateOfMindLoggedIn3pApp = 1;
      v51->_stateOfMindLoggedIn3pApp = [v99 BOOLValue];
    }

    else
    {
      v51->_hasStateOfMindLoggedIn3pApp = 0;
      v51->_stateOfMindLoggedIn3pApp = 0;
    }

    if (v50)
    {
      v51->_hasStateOfMindLoggedInJournalApp = 1;
      v51->_stateOfMindLoggedInJournalApp = [v50 BOOLValue];
    }

    else
    {
      v51->_hasStateOfMindLoggedInJournalApp = 0;
      v51->_stateOfMindLoggedInJournalApp = 0;
    }
  }

  return v51;
}

+ (id)protoFields
{
  v40[35] = *MEMORY[0x1E69E9840];
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dailyAggregateCallDuration" number:1 type:1 subMessageClass:0];
  v40[0] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"callDuration" number:2 type:1 subMessageClass:0];
  v40[1] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"burstyInteractionCount" number:3 type:2 subMessageClass:0];
  v40[2] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"burstyOutgoingInteractionCount" number:4 type:2 subMessageClass:0];
  v40[3] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"multipleInteractionTypes" number:5 type:12 subMessageClass:0];
  v40[4] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactLocationWork" number:6 type:12 subMessageClass:0];
  v40[5] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFamilyContact" number:7 type:12 subMessageClass:0];
  v40[6] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCoworkerContact" number:8 type:12 subMessageClass:0];
  v40[7] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRepetitiveContact" number:9 type:12 subMessageClass:0];
  v40[8] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isGroupConversation" number:10 type:12 subMessageClass:0];
  v40[9] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleCountWeightedSum" number:11 type:1 subMessageClass:0];
  v40[10] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleCountWeightedAverage" number:12 type:1 subMessageClass:0];
  v40[11] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleCountMax" number:13 type:1 subMessageClass:0];
  v40[12] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleDensityWeightedSum" number:14 type:1 subMessageClass:0];
  v40[13] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleDensityWeightedAverage" number:15 type:1 subMessageClass:0];
  v40[14] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleDensityMax" number:16 type:1 subMessageClass:0];
  v40[15] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleDensityWeightedConfidenceSum" number:17 type:1 subMessageClass:0];
  v40[16] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleDensityWeightedConfidenceAverage" number:18 type:1 subMessageClass:0];
  v40[17] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaTotalPlayTime" number:19 type:1 subMessageClass:0];
  v40[18] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaLength" number:20 type:1 subMessageClass:0];
  v40[19] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaActionIsRepeat" number:21 type:12 subMessageClass:0];
  v40[20] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeAtHomeDuration" number:22 type:1 subMessageClass:0];
  v40[21] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photosAtHomeCurationScore" number:23 type:1 subMessageClass:0];
  v40[22] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"workoutDuration" number:24 type:1 subMessageClass:0];
  v40[23] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"motionActivityWalkSpan" number:25 type:1 subMessageClass:0];
  v40[24] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visitDuration" number:26 type:1 subMessageClass:0];
  v40[25] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"poiCategoryInterestingness" number:27 type:1 subMessageClass:0];
  v40[26] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"familiarityIndex" number:28 type:1 subMessageClass:0];
  v40[27] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindDomains" number:29 type:4 subMessageClass:0];
  v40[28] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindLabels" number:30 type:4 subMessageClass:0];
  v40[29] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindReflectiveIntervals" number:31 type:4 subMessageClass:0];
  v40[30] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindValenceClassifications" number:32 type:4 subMessageClass:0];
  v40[31] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindValenceValues" number:33 type:0 subMessageClass:0];
  v40[32] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindLoggedIn3pApp" number:34 type:12 subMessageClass:0];
  v40[33] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindLoggedInJournalApp" number:35 type:12 subMessageClass:0];
  v40[34] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:35];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)columns
{
  v40[35] = *MEMORY[0x1E69E9840];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dailyAggregateCallDuration" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:1 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"callDuration" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:1 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"burstyInteractionCount" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"burstyOutgoingInteractionCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"multipleInteractionTypes" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contactLocationWork" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFamilyContact" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCoworkerContact" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRepetitiveContact" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isGroupConversation" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleCountWeightedSum" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:1 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleCountWeightedAverage" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:1 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleCountMax" dataType:1 requestOnly:0 fieldNumber:13 protoDataType:1 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleDensityWeightedSum" dataType:1 requestOnly:0 fieldNumber:14 protoDataType:1 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleDensityWeightedAverage" dataType:1 requestOnly:0 fieldNumber:15 protoDataType:1 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleDensityMax" dataType:1 requestOnly:0 fieldNumber:16 protoDataType:1 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleDensityWeightedConfidenceSum" dataType:1 requestOnly:0 fieldNumber:17 protoDataType:1 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleDensityWeightedConfidenceAverage" dataType:1 requestOnly:0 fieldNumber:18 protoDataType:1 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaTotalPlayTime" dataType:1 requestOnly:0 fieldNumber:19 protoDataType:1 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaLength" dataType:1 requestOnly:0 fieldNumber:20 protoDataType:1 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaActionIsRepeat" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeAtHomeDuration" dataType:1 requestOnly:0 fieldNumber:22 protoDataType:1 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photosAtHomeCurationScore" dataType:1 requestOnly:0 fieldNumber:23 protoDataType:1 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"workoutDuration" dataType:1 requestOnly:0 fieldNumber:24 protoDataType:1 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"motionActivityWalkSpan" dataType:1 requestOnly:0 fieldNumber:25 protoDataType:1 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visitDuration" dataType:1 requestOnly:0 fieldNumber:26 protoDataType:1 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"poiCategoryInterestingness" dataType:1 requestOnly:0 fieldNumber:27 protoDataType:1 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"familiarityIndex" dataType:1 requestOnly:0 fieldNumber:28 protoDataType:1 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"stateOfMindDomains_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3321];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"stateOfMindLabels_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3323];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"stateOfMindReflectiveIntervals_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3325];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"stateOfMindValenceClassifications_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3327];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"stateOfMindValenceValues_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3329];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stateOfMindLoggedIn3pApp" dataType:0 requestOnly:0 fieldNumber:34 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stateOfMindLoggedInJournalApp" dataType:0 requestOnly:0 fieldNumber:35 protoDataType:12 convertedType:0];
  v40[0] = v39;
  v40[1] = v38;
  v40[2] = v37;
  v40[3] = v36;
  v40[4] = v35;
  v40[5] = v34;
  v40[6] = v33;
  v40[7] = v32;
  v40[8] = v31;
  v40[9] = v30;
  v40[10] = v29;
  v40[11] = v28;
  v40[12] = v27;
  v40[13] = v26;
  v40[14] = v25;
  v40[15] = v24;
  v40[16] = v23;
  v40[17] = v22;
  v40[18] = v21;
  v40[19] = v19;
  v40[20] = v18;
  v40[21] = v17;
  v40[22] = v16;
  v40[23] = v15;
  v40[24] = v20;
  v40[25] = v2;
  v40[26] = v3;
  v40[27] = v4;
  v40[28] = v14;
  v40[29] = v13;
  v40[30] = v5;
  v40[31] = v6;
  v40[32] = v7;
  v40[33] = v12;
  v40[34] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:35];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

id __55__BMMomentsEventDataEventBundleMetadataForRank_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _stateOfMindValenceValuesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __55__BMMomentsEventDataEventBundleMetadataForRank_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _stateOfMindValenceClassificationsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __55__BMMomentsEventDataEventBundleMetadataForRank_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _stateOfMindReflectiveIntervalsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __55__BMMomentsEventDataEventBundleMetadataForRank_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _stateOfMindLabelsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __55__BMMomentsEventDataEventBundleMetadataForRank_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _stateOfMindDomainsJSONArray];
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

    v8 = [[BMMomentsEventDataEventBundleMetadataForRank alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[14] = 0;
    }
  }

  return v4;
}

@end