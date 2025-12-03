@interface BMCandidate
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMCandidate)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMCandidate)initWithPrivatizedIdentifier:(id)identifier feedbackDeprecated:(int)deprecated privatizedTransportBundleId:(id)id timeSinceLastOutgoingInteraction:(id)interaction timeSinceOutgoingInteractionNumber10:(id)number10 timeSinceLastIncomingInteraction:(id)incomingInteraction deprecatedField1:(id)field1 deprecatedField2:(id)self0 deprecatedField3:(id)self1 numberOfSharesWithConversation:(id)self2 numberOfSharesFromCurrentAppWithConversation:(id)self3 numberOfSharesOfTopDomainURLWithConversation:(id)self4 numberOfSharesOfDetectedPeopleWithConversation:(id)self5 numberOfSharesOfPeopleInPhotoWithConversation:(id)self6 numberOfOutgoingInteractionsWithConversation:(id)self7 numberOfIncomingInteractionsWithConversation:(id)self8 numberOfInteractionsDuringTimePeriodWithConversation:(id)self9 numberOfEngagedSuggestionsWithConversation:(id)suggestionsWithConversation numberOfEngagedSuggestionsFromCurrentAppWithConversation:(id)appWithConversation numberOfEngagedSuggestionsOfTopDomainURLWithConversation:(id)rLWithConversation numberOfEngagedSuggestionsOfDetectedPeopleWithConversation:(id)detectedPeopleWithConversation numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:(id)inPhotoWithConversation hasEverSharePlayedWithConversation:(id)playedWithConversation suggestedRank:(id)rank coreMLModelScore:(id)score foundInChunk:(id)chunk updatedInChunk:(id)inChunk numberOfSharesOfPeopleInPhotoIoUWithConversation:(id)identifier0 numberOfSharesOfPetsWithConversation:(id)identifier1 numberOfSharesOfPetsInCurrentPhotoWithConversation:(id)identifier2 numberOfSharesOfScenesInPhotoWithConversation:(id)identifier3 numberOfSharesOfDetectedScenesInPhotoWithConversation:(id)identifier4 numberOfTopicsSharedWithConversation:(id)identifier5 numberOfAppsSharedFromWithConversation:(id)identifier6 timeSinceLastPhotoShareWithConversation:(id)identifier7 hasSharedSensitiveContentWIthConversation:(id)identifier8 isInPhoneCallWithConversation:(id)identifier9 numberOfSharesFromAlbumPhotoBelongsToWithConversation:(id)deprecated0 isFirstPartyApp:(id)deprecated1 numberOfTimesSharedToTargetAppWithConversation:(id)deprecated2 timeSinceLastShareWithConversation:(id)deprecated3 timeSinceLastPhoneCallWithConversation:(id)deprecated4 numberOfDifferentFacesSharedWithConversation:(id)deprecated5 numberOfTotalSharesToTargetApp:(id)deprecated6;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMCandidate

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    privatizedIdentifier = [(BMCandidate *)self privatizedIdentifier];
    privatizedIdentifier2 = [v5 privatizedIdentifier];
    v8 = privatizedIdentifier2;
    if (privatizedIdentifier == privatizedIdentifier2)
    {
    }

    else
    {
      privatizedIdentifier3 = [(BMCandidate *)self privatizedIdentifier];
      privatizedIdentifier4 = [v5 privatizedIdentifier];
      v11 = [privatizedIdentifier3 isEqual:privatizedIdentifier4];

      if (!v11)
      {
        goto LABEL_179;
      }
    }

    feedbackDeprecated = [(BMCandidate *)self feedbackDeprecated];
    if (feedbackDeprecated == [v5 feedbackDeprecated])
    {
      privatizedTransportBundleId = [(BMCandidate *)self privatizedTransportBundleId];
      privatizedTransportBundleId2 = [v5 privatizedTransportBundleId];
      v16 = privatizedTransportBundleId2;
      if (privatizedTransportBundleId == privatizedTransportBundleId2)
      {
      }

      else
      {
        privatizedTransportBundleId3 = [(BMCandidate *)self privatizedTransportBundleId];
        privatizedTransportBundleId4 = [v5 privatizedTransportBundleId];
        v19 = [privatizedTransportBundleId3 isEqual:privatizedTransportBundleId4];

        if (!v19)
        {
          goto LABEL_179;
        }
      }

      timeSinceLastOutgoingInteraction = [(BMCandidate *)self timeSinceLastOutgoingInteraction];
      timeSinceLastOutgoingInteraction2 = [v5 timeSinceLastOutgoingInteraction];
      v22 = timeSinceLastOutgoingInteraction2;
      if (timeSinceLastOutgoingInteraction == timeSinceLastOutgoingInteraction2)
      {
      }

      else
      {
        timeSinceLastOutgoingInteraction3 = [(BMCandidate *)self timeSinceLastOutgoingInteraction];
        timeSinceLastOutgoingInteraction4 = [v5 timeSinceLastOutgoingInteraction];
        v25 = [timeSinceLastOutgoingInteraction3 isEqual:timeSinceLastOutgoingInteraction4];

        if (!v25)
        {
          goto LABEL_179;
        }
      }

      timeSinceOutgoingInteractionNumber10 = [(BMCandidate *)self timeSinceOutgoingInteractionNumber10];
      timeSinceOutgoingInteractionNumber102 = [v5 timeSinceOutgoingInteractionNumber10];
      v28 = timeSinceOutgoingInteractionNumber102;
      if (timeSinceOutgoingInteractionNumber10 == timeSinceOutgoingInteractionNumber102)
      {
      }

      else
      {
        timeSinceOutgoingInteractionNumber103 = [(BMCandidate *)self timeSinceOutgoingInteractionNumber10];
        timeSinceOutgoingInteractionNumber104 = [v5 timeSinceOutgoingInteractionNumber10];
        v31 = [timeSinceOutgoingInteractionNumber103 isEqual:timeSinceOutgoingInteractionNumber104];

        if (!v31)
        {
          goto LABEL_179;
        }
      }

      timeSinceLastIncomingInteraction = [(BMCandidate *)self timeSinceLastIncomingInteraction];
      timeSinceLastIncomingInteraction2 = [v5 timeSinceLastIncomingInteraction];
      v34 = timeSinceLastIncomingInteraction2;
      if (timeSinceLastIncomingInteraction == timeSinceLastIncomingInteraction2)
      {
      }

      else
      {
        timeSinceLastIncomingInteraction3 = [(BMCandidate *)self timeSinceLastIncomingInteraction];
        timeSinceLastIncomingInteraction4 = [v5 timeSinceLastIncomingInteraction];
        v37 = [timeSinceLastIncomingInteraction3 isEqual:timeSinceLastIncomingInteraction4];

        if (!v37)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasDeprecatedField1](self, "hasDeprecatedField1") || [v5 hasDeprecatedField1])
      {
        if (![(BMCandidate *)self hasDeprecatedField1])
        {
          goto LABEL_179;
        }

        if (![v5 hasDeprecatedField1])
        {
          goto LABEL_179;
        }

        [(BMCandidate *)self deprecatedField1];
        v39 = v38;
        [v5 deprecatedField1];
        if (v39 != v40)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasDeprecatedField2](self, "hasDeprecatedField2") || [v5 hasDeprecatedField2])
      {
        if (![(BMCandidate *)self hasDeprecatedField2])
        {
          goto LABEL_179;
        }

        if (![v5 hasDeprecatedField2])
        {
          goto LABEL_179;
        }

        [(BMCandidate *)self deprecatedField2];
        v42 = v41;
        [v5 deprecatedField2];
        if (v42 != v43)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasDeprecatedField3](self, "hasDeprecatedField3") || [v5 hasDeprecatedField3])
      {
        if (![(BMCandidate *)self hasDeprecatedField3])
        {
          goto LABEL_179;
        }

        if (![v5 hasDeprecatedField3])
        {
          goto LABEL_179;
        }

        [(BMCandidate *)self deprecatedField3];
        v45 = v44;
        [v5 deprecatedField3];
        if (v45 != v46)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesWithConversation = [(BMCandidate *)self numberOfSharesWithConversation];
      numberOfSharesWithConversation2 = [v5 numberOfSharesWithConversation];
      v49 = numberOfSharesWithConversation2;
      if (numberOfSharesWithConversation == numberOfSharesWithConversation2)
      {
      }

      else
      {
        numberOfSharesWithConversation3 = [(BMCandidate *)self numberOfSharesWithConversation];
        numberOfSharesWithConversation4 = [v5 numberOfSharesWithConversation];
        v52 = [numberOfSharesWithConversation3 isEqual:numberOfSharesWithConversation4];

        if (!v52)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesFromCurrentAppWithConversation = [(BMCandidate *)self numberOfSharesFromCurrentAppWithConversation];
      numberOfSharesFromCurrentAppWithConversation2 = [v5 numberOfSharesFromCurrentAppWithConversation];
      v55 = numberOfSharesFromCurrentAppWithConversation2;
      if (numberOfSharesFromCurrentAppWithConversation == numberOfSharesFromCurrentAppWithConversation2)
      {
      }

      else
      {
        numberOfSharesFromCurrentAppWithConversation3 = [(BMCandidate *)self numberOfSharesFromCurrentAppWithConversation];
        numberOfSharesFromCurrentAppWithConversation4 = [v5 numberOfSharesFromCurrentAppWithConversation];
        v58 = [numberOfSharesFromCurrentAppWithConversation3 isEqual:numberOfSharesFromCurrentAppWithConversation4];

        if (!v58)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfTopDomainURLWithConversation = [(BMCandidate *)self numberOfSharesOfTopDomainURLWithConversation];
      numberOfSharesOfTopDomainURLWithConversation2 = [v5 numberOfSharesOfTopDomainURLWithConversation];
      v61 = numberOfSharesOfTopDomainURLWithConversation2;
      if (numberOfSharesOfTopDomainURLWithConversation == numberOfSharesOfTopDomainURLWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfTopDomainURLWithConversation3 = [(BMCandidate *)self numberOfSharesOfTopDomainURLWithConversation];
        numberOfSharesOfTopDomainURLWithConversation4 = [v5 numberOfSharesOfTopDomainURLWithConversation];
        v64 = [numberOfSharesOfTopDomainURLWithConversation3 isEqual:numberOfSharesOfTopDomainURLWithConversation4];

        if (!v64)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfDetectedPeopleWithConversation = [(BMCandidate *)self numberOfSharesOfDetectedPeopleWithConversation];
      numberOfSharesOfDetectedPeopleWithConversation2 = [v5 numberOfSharesOfDetectedPeopleWithConversation];
      v67 = numberOfSharesOfDetectedPeopleWithConversation2;
      if (numberOfSharesOfDetectedPeopleWithConversation == numberOfSharesOfDetectedPeopleWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfDetectedPeopleWithConversation3 = [(BMCandidate *)self numberOfSharesOfDetectedPeopleWithConversation];
        numberOfSharesOfDetectedPeopleWithConversation4 = [v5 numberOfSharesOfDetectedPeopleWithConversation];
        v70 = [numberOfSharesOfDetectedPeopleWithConversation3 isEqual:numberOfSharesOfDetectedPeopleWithConversation4];

        if (!v70)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfPeopleInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoWithConversation];
      numberOfSharesOfPeopleInPhotoWithConversation2 = [v5 numberOfSharesOfPeopleInPhotoWithConversation];
      v73 = numberOfSharesOfPeopleInPhotoWithConversation2;
      if (numberOfSharesOfPeopleInPhotoWithConversation == numberOfSharesOfPeopleInPhotoWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfPeopleInPhotoWithConversation3 = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoWithConversation];
        numberOfSharesOfPeopleInPhotoWithConversation4 = [v5 numberOfSharesOfPeopleInPhotoWithConversation];
        v76 = [numberOfSharesOfPeopleInPhotoWithConversation3 isEqual:numberOfSharesOfPeopleInPhotoWithConversation4];

        if (!v76)
        {
          goto LABEL_179;
        }
      }

      numberOfOutgoingInteractionsWithConversation = [(BMCandidate *)self numberOfOutgoingInteractionsWithConversation];
      numberOfOutgoingInteractionsWithConversation2 = [v5 numberOfOutgoingInteractionsWithConversation];
      v79 = numberOfOutgoingInteractionsWithConversation2;
      if (numberOfOutgoingInteractionsWithConversation == numberOfOutgoingInteractionsWithConversation2)
      {
      }

      else
      {
        numberOfOutgoingInteractionsWithConversation3 = [(BMCandidate *)self numberOfOutgoingInteractionsWithConversation];
        numberOfOutgoingInteractionsWithConversation4 = [v5 numberOfOutgoingInteractionsWithConversation];
        v82 = [numberOfOutgoingInteractionsWithConversation3 isEqual:numberOfOutgoingInteractionsWithConversation4];

        if (!v82)
        {
          goto LABEL_179;
        }
      }

      numberOfIncomingInteractionsWithConversation = [(BMCandidate *)self numberOfIncomingInteractionsWithConversation];
      numberOfIncomingInteractionsWithConversation2 = [v5 numberOfIncomingInteractionsWithConversation];
      v85 = numberOfIncomingInteractionsWithConversation2;
      if (numberOfIncomingInteractionsWithConversation == numberOfIncomingInteractionsWithConversation2)
      {
      }

      else
      {
        numberOfIncomingInteractionsWithConversation3 = [(BMCandidate *)self numberOfIncomingInteractionsWithConversation];
        numberOfIncomingInteractionsWithConversation4 = [v5 numberOfIncomingInteractionsWithConversation];
        v88 = [numberOfIncomingInteractionsWithConversation3 isEqual:numberOfIncomingInteractionsWithConversation4];

        if (!v88)
        {
          goto LABEL_179;
        }
      }

      numberOfInteractionsDuringTimePeriodWithConversation = [(BMCandidate *)self numberOfInteractionsDuringTimePeriodWithConversation];
      numberOfInteractionsDuringTimePeriodWithConversation2 = [v5 numberOfInteractionsDuringTimePeriodWithConversation];
      v91 = numberOfInteractionsDuringTimePeriodWithConversation2;
      if (numberOfInteractionsDuringTimePeriodWithConversation == numberOfInteractionsDuringTimePeriodWithConversation2)
      {
      }

      else
      {
        numberOfInteractionsDuringTimePeriodWithConversation3 = [(BMCandidate *)self numberOfInteractionsDuringTimePeriodWithConversation];
        numberOfInteractionsDuringTimePeriodWithConversation4 = [v5 numberOfInteractionsDuringTimePeriodWithConversation];
        v94 = [numberOfInteractionsDuringTimePeriodWithConversation3 isEqual:numberOfInteractionsDuringTimePeriodWithConversation4];

        if (!v94)
        {
          goto LABEL_179;
        }
      }

      numberOfEngagedSuggestionsWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsWithConversation];
      numberOfEngagedSuggestionsWithConversation2 = [v5 numberOfEngagedSuggestionsWithConversation];
      v97 = numberOfEngagedSuggestionsWithConversation2;
      if (numberOfEngagedSuggestionsWithConversation == numberOfEngagedSuggestionsWithConversation2)
      {
      }

      else
      {
        numberOfEngagedSuggestionsWithConversation3 = [(BMCandidate *)self numberOfEngagedSuggestionsWithConversation];
        numberOfEngagedSuggestionsWithConversation4 = [v5 numberOfEngagedSuggestionsWithConversation];
        v100 = [numberOfEngagedSuggestionsWithConversation3 isEqual:numberOfEngagedSuggestionsWithConversation4];

        if (!v100)
        {
          goto LABEL_179;
        }
      }

      numberOfEngagedSuggestionsFromCurrentAppWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsFromCurrentAppWithConversation];
      numberOfEngagedSuggestionsFromCurrentAppWithConversation2 = [v5 numberOfEngagedSuggestionsFromCurrentAppWithConversation];
      v103 = numberOfEngagedSuggestionsFromCurrentAppWithConversation2;
      if (numberOfEngagedSuggestionsFromCurrentAppWithConversation == numberOfEngagedSuggestionsFromCurrentAppWithConversation2)
      {
      }

      else
      {
        numberOfEngagedSuggestionsFromCurrentAppWithConversation3 = [(BMCandidate *)self numberOfEngagedSuggestionsFromCurrentAppWithConversation];
        numberOfEngagedSuggestionsFromCurrentAppWithConversation4 = [v5 numberOfEngagedSuggestionsFromCurrentAppWithConversation];
        v106 = [numberOfEngagedSuggestionsFromCurrentAppWithConversation3 isEqual:numberOfEngagedSuggestionsFromCurrentAppWithConversation4];

        if (!v106)
        {
          goto LABEL_179;
        }
      }

      numberOfEngagedSuggestionsOfTopDomainURLWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
      numberOfEngagedSuggestionsOfTopDomainURLWithConversation2 = [v5 numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
      v109 = numberOfEngagedSuggestionsOfTopDomainURLWithConversation2;
      if (numberOfEngagedSuggestionsOfTopDomainURLWithConversation == numberOfEngagedSuggestionsOfTopDomainURLWithConversation2)
      {
      }

      else
      {
        numberOfEngagedSuggestionsOfTopDomainURLWithConversation3 = [(BMCandidate *)self numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
        numberOfEngagedSuggestionsOfTopDomainURLWithConversation4 = [v5 numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
        v112 = [numberOfEngagedSuggestionsOfTopDomainURLWithConversation3 isEqual:numberOfEngagedSuggestionsOfTopDomainURLWithConversation4];

        if (!v112)
        {
          goto LABEL_179;
        }
      }

      numberOfEngagedSuggestionsOfDetectedPeopleWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
      numberOfEngagedSuggestionsOfDetectedPeopleWithConversation2 = [v5 numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
      v115 = numberOfEngagedSuggestionsOfDetectedPeopleWithConversation2;
      if (numberOfEngagedSuggestionsOfDetectedPeopleWithConversation == numberOfEngagedSuggestionsOfDetectedPeopleWithConversation2)
      {
      }

      else
      {
        numberOfEngagedSuggestionsOfDetectedPeopleWithConversation3 = [(BMCandidate *)self numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
        numberOfEngagedSuggestionsOfDetectedPeopleWithConversation4 = [v5 numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
        v118 = [numberOfEngagedSuggestionsOfDetectedPeopleWithConversation3 isEqual:numberOfEngagedSuggestionsOfDetectedPeopleWithConversation4];

        if (!v118)
        {
          goto LABEL_179;
        }
      }

      numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
      numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation2 = [v5 numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
      v121 = numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation2;
      if (numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation == numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation2)
      {
      }

      else
      {
        numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation3 = [(BMCandidate *)self numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
        numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation4 = [v5 numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
        v124 = [numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation3 isEqual:numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation4];

        if (!v124)
        {
          goto LABEL_179;
        }
      }

      hasEverSharePlayedWithConversation = [(BMCandidate *)self hasEverSharePlayedWithConversation];
      hasEverSharePlayedWithConversation2 = [v5 hasEverSharePlayedWithConversation];
      v127 = hasEverSharePlayedWithConversation2;
      if (hasEverSharePlayedWithConversation == hasEverSharePlayedWithConversation2)
      {
      }

      else
      {
        hasEverSharePlayedWithConversation3 = [(BMCandidate *)self hasEverSharePlayedWithConversation];
        hasEverSharePlayedWithConversation4 = [v5 hasEverSharePlayedWithConversation];
        v130 = [hasEverSharePlayedWithConversation3 isEqual:hasEverSharePlayedWithConversation4];

        if (!v130)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasSuggestedRank](self, "hasSuggestedRank") || [v5 hasSuggestedRank])
      {
        if (![(BMCandidate *)self hasSuggestedRank])
        {
          goto LABEL_179;
        }

        if (![v5 hasSuggestedRank])
        {
          goto LABEL_179;
        }

        suggestedRank = [(BMCandidate *)self suggestedRank];
        if (suggestedRank != [v5 suggestedRank])
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasCoreMLModelScore](self, "hasCoreMLModelScore") || [v5 hasCoreMLModelScore])
      {
        if (![(BMCandidate *)self hasCoreMLModelScore])
        {
          goto LABEL_179;
        }

        if (![v5 hasCoreMLModelScore])
        {
          goto LABEL_179;
        }

        [(BMCandidate *)self coreMLModelScore];
        v133 = v132;
        [v5 coreMLModelScore];
        if (v133 != v134)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasFoundInChunk](self, "hasFoundInChunk") || [v5 hasFoundInChunk])
      {
        if (![(BMCandidate *)self hasFoundInChunk])
        {
          goto LABEL_179;
        }

        if (![v5 hasFoundInChunk])
        {
          goto LABEL_179;
        }

        foundInChunk = [(BMCandidate *)self foundInChunk];
        if (foundInChunk != [v5 foundInChunk])
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasUpdatedInChunk](self, "hasUpdatedInChunk") || [v5 hasUpdatedInChunk])
      {
        if (![(BMCandidate *)self hasUpdatedInChunk])
        {
          goto LABEL_179;
        }

        if (![v5 hasUpdatedInChunk])
        {
          goto LABEL_179;
        }

        updatedInChunk = [(BMCandidate *)self updatedInChunk];
        if (updatedInChunk != [v5 updatedInChunk])
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfPeopleInPhotoIoUWithConversation = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoIoUWithConversation];
      numberOfSharesOfPeopleInPhotoIoUWithConversation2 = [v5 numberOfSharesOfPeopleInPhotoIoUWithConversation];
      v139 = numberOfSharesOfPeopleInPhotoIoUWithConversation2;
      if (numberOfSharesOfPeopleInPhotoIoUWithConversation == numberOfSharesOfPeopleInPhotoIoUWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfPeopleInPhotoIoUWithConversation3 = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoIoUWithConversation];
        numberOfSharesOfPeopleInPhotoIoUWithConversation4 = [v5 numberOfSharesOfPeopleInPhotoIoUWithConversation];
        v142 = [numberOfSharesOfPeopleInPhotoIoUWithConversation3 isEqual:numberOfSharesOfPeopleInPhotoIoUWithConversation4];

        if (!v142)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfPetsWithConversation = [(BMCandidate *)self numberOfSharesOfPetsWithConversation];
      numberOfSharesOfPetsWithConversation2 = [v5 numberOfSharesOfPetsWithConversation];
      v145 = numberOfSharesOfPetsWithConversation2;
      if (numberOfSharesOfPetsWithConversation == numberOfSharesOfPetsWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfPetsWithConversation3 = [(BMCandidate *)self numberOfSharesOfPetsWithConversation];
        numberOfSharesOfPetsWithConversation4 = [v5 numberOfSharesOfPetsWithConversation];
        v148 = [numberOfSharesOfPetsWithConversation3 isEqual:numberOfSharesOfPetsWithConversation4];

        if (!v148)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfPetsInCurrentPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfPetsInCurrentPhotoWithConversation];
      numberOfSharesOfPetsInCurrentPhotoWithConversation2 = [v5 numberOfSharesOfPetsInCurrentPhotoWithConversation];
      v151 = numberOfSharesOfPetsInCurrentPhotoWithConversation2;
      if (numberOfSharesOfPetsInCurrentPhotoWithConversation == numberOfSharesOfPetsInCurrentPhotoWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfPetsInCurrentPhotoWithConversation3 = [(BMCandidate *)self numberOfSharesOfPetsInCurrentPhotoWithConversation];
        numberOfSharesOfPetsInCurrentPhotoWithConversation4 = [v5 numberOfSharesOfPetsInCurrentPhotoWithConversation];
        v154 = [numberOfSharesOfPetsInCurrentPhotoWithConversation3 isEqual:numberOfSharesOfPetsInCurrentPhotoWithConversation4];

        if (!v154)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfScenesInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfScenesInPhotoWithConversation];
      numberOfSharesOfScenesInPhotoWithConversation2 = [v5 numberOfSharesOfScenesInPhotoWithConversation];
      v157 = numberOfSharesOfScenesInPhotoWithConversation2;
      if (numberOfSharesOfScenesInPhotoWithConversation == numberOfSharesOfScenesInPhotoWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfScenesInPhotoWithConversation3 = [(BMCandidate *)self numberOfSharesOfScenesInPhotoWithConversation];
        numberOfSharesOfScenesInPhotoWithConversation4 = [v5 numberOfSharesOfScenesInPhotoWithConversation];
        v160 = [numberOfSharesOfScenesInPhotoWithConversation3 isEqual:numberOfSharesOfScenesInPhotoWithConversation4];

        if (!v160)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfDetectedScenesInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfDetectedScenesInPhotoWithConversation];
      numberOfSharesOfDetectedScenesInPhotoWithConversation2 = [v5 numberOfSharesOfDetectedScenesInPhotoWithConversation];
      v163 = numberOfSharesOfDetectedScenesInPhotoWithConversation2;
      if (numberOfSharesOfDetectedScenesInPhotoWithConversation == numberOfSharesOfDetectedScenesInPhotoWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfDetectedScenesInPhotoWithConversation3 = [(BMCandidate *)self numberOfSharesOfDetectedScenesInPhotoWithConversation];
        numberOfSharesOfDetectedScenesInPhotoWithConversation4 = [v5 numberOfSharesOfDetectedScenesInPhotoWithConversation];
        v166 = [numberOfSharesOfDetectedScenesInPhotoWithConversation3 isEqual:numberOfSharesOfDetectedScenesInPhotoWithConversation4];

        if (!v166)
        {
          goto LABEL_179;
        }
      }

      numberOfTopicsSharedWithConversation = [(BMCandidate *)self numberOfTopicsSharedWithConversation];
      numberOfTopicsSharedWithConversation2 = [v5 numberOfTopicsSharedWithConversation];
      v169 = numberOfTopicsSharedWithConversation2;
      if (numberOfTopicsSharedWithConversation == numberOfTopicsSharedWithConversation2)
      {
      }

      else
      {
        numberOfTopicsSharedWithConversation3 = [(BMCandidate *)self numberOfTopicsSharedWithConversation];
        numberOfTopicsSharedWithConversation4 = [v5 numberOfTopicsSharedWithConversation];
        v172 = [numberOfTopicsSharedWithConversation3 isEqual:numberOfTopicsSharedWithConversation4];

        if (!v172)
        {
          goto LABEL_179;
        }
      }

      numberOfAppsSharedFromWithConversation = [(BMCandidate *)self numberOfAppsSharedFromWithConversation];
      numberOfAppsSharedFromWithConversation2 = [v5 numberOfAppsSharedFromWithConversation];
      v175 = numberOfAppsSharedFromWithConversation2;
      if (numberOfAppsSharedFromWithConversation == numberOfAppsSharedFromWithConversation2)
      {
      }

      else
      {
        numberOfAppsSharedFromWithConversation3 = [(BMCandidate *)self numberOfAppsSharedFromWithConversation];
        numberOfAppsSharedFromWithConversation4 = [v5 numberOfAppsSharedFromWithConversation];
        v178 = [numberOfAppsSharedFromWithConversation3 isEqual:numberOfAppsSharedFromWithConversation4];

        if (!v178)
        {
          goto LABEL_179;
        }
      }

      timeSinceLastPhotoShareWithConversation = [(BMCandidate *)self timeSinceLastPhotoShareWithConversation];
      timeSinceLastPhotoShareWithConversation2 = [v5 timeSinceLastPhotoShareWithConversation];
      v181 = timeSinceLastPhotoShareWithConversation2;
      if (timeSinceLastPhotoShareWithConversation == timeSinceLastPhotoShareWithConversation2)
      {
      }

      else
      {
        timeSinceLastPhotoShareWithConversation3 = [(BMCandidate *)self timeSinceLastPhotoShareWithConversation];
        timeSinceLastPhotoShareWithConversation4 = [v5 timeSinceLastPhotoShareWithConversation];
        v184 = [timeSinceLastPhotoShareWithConversation3 isEqual:timeSinceLastPhotoShareWithConversation4];

        if (!v184)
        {
          goto LABEL_179;
        }
      }

      hasSharedSensitiveContentWIthConversation = [(BMCandidate *)self hasSharedSensitiveContentWIthConversation];
      hasSharedSensitiveContentWIthConversation2 = [v5 hasSharedSensitiveContentWIthConversation];
      v187 = hasSharedSensitiveContentWIthConversation2;
      if (hasSharedSensitiveContentWIthConversation == hasSharedSensitiveContentWIthConversation2)
      {
      }

      else
      {
        hasSharedSensitiveContentWIthConversation3 = [(BMCandidate *)self hasSharedSensitiveContentWIthConversation];
        hasSharedSensitiveContentWIthConversation4 = [v5 hasSharedSensitiveContentWIthConversation];
        v190 = [hasSharedSensitiveContentWIthConversation3 isEqual:hasSharedSensitiveContentWIthConversation4];

        if (!v190)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasIsInPhoneCallWithConversation](self, "hasIsInPhoneCallWithConversation") || [v5 hasIsInPhoneCallWithConversation])
      {
        if (![(BMCandidate *)self hasIsInPhoneCallWithConversation])
        {
          goto LABEL_179;
        }

        if (![v5 hasIsInPhoneCallWithConversation])
        {
          goto LABEL_179;
        }

        isInPhoneCallWithConversation = [(BMCandidate *)self isInPhoneCallWithConversation];
        if (isInPhoneCallWithConversation != [v5 isInPhoneCallWithConversation])
        {
          goto LABEL_179;
        }
      }

      numberOfSharesFromAlbumPhotoBelongsToWithConversation = [(BMCandidate *)self numberOfSharesFromAlbumPhotoBelongsToWithConversation];
      numberOfSharesFromAlbumPhotoBelongsToWithConversation2 = [v5 numberOfSharesFromAlbumPhotoBelongsToWithConversation];
      v194 = numberOfSharesFromAlbumPhotoBelongsToWithConversation2;
      if (numberOfSharesFromAlbumPhotoBelongsToWithConversation == numberOfSharesFromAlbumPhotoBelongsToWithConversation2)
      {
      }

      else
      {
        numberOfSharesFromAlbumPhotoBelongsToWithConversation3 = [(BMCandidate *)self numberOfSharesFromAlbumPhotoBelongsToWithConversation];
        numberOfSharesFromAlbumPhotoBelongsToWithConversation4 = [v5 numberOfSharesFromAlbumPhotoBelongsToWithConversation];
        v197 = [numberOfSharesFromAlbumPhotoBelongsToWithConversation3 isEqual:numberOfSharesFromAlbumPhotoBelongsToWithConversation4];

        if (!v197)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasIsFirstPartyApp](self, "hasIsFirstPartyApp") || [v5 hasIsFirstPartyApp])
      {
        if (![(BMCandidate *)self hasIsFirstPartyApp])
        {
          goto LABEL_179;
        }

        if (![v5 hasIsFirstPartyApp])
        {
          goto LABEL_179;
        }

        isFirstPartyApp = [(BMCandidate *)self isFirstPartyApp];
        if (isFirstPartyApp != [v5 isFirstPartyApp])
        {
          goto LABEL_179;
        }
      }

      numberOfTimesSharedToTargetAppWithConversation = [(BMCandidate *)self numberOfTimesSharedToTargetAppWithConversation];
      numberOfTimesSharedToTargetAppWithConversation2 = [v5 numberOfTimesSharedToTargetAppWithConversation];
      v201 = numberOfTimesSharedToTargetAppWithConversation2;
      if (numberOfTimesSharedToTargetAppWithConversation == numberOfTimesSharedToTargetAppWithConversation2)
      {
      }

      else
      {
        numberOfTimesSharedToTargetAppWithConversation3 = [(BMCandidate *)self numberOfTimesSharedToTargetAppWithConversation];
        numberOfTimesSharedToTargetAppWithConversation4 = [v5 numberOfTimesSharedToTargetAppWithConversation];
        v204 = [numberOfTimesSharedToTargetAppWithConversation3 isEqual:numberOfTimesSharedToTargetAppWithConversation4];

        if (!v204)
        {
          goto LABEL_179;
        }
      }

      timeSinceLastShareWithConversation = [(BMCandidate *)self timeSinceLastShareWithConversation];
      timeSinceLastShareWithConversation2 = [v5 timeSinceLastShareWithConversation];
      v207 = timeSinceLastShareWithConversation2;
      if (timeSinceLastShareWithConversation == timeSinceLastShareWithConversation2)
      {
      }

      else
      {
        timeSinceLastShareWithConversation3 = [(BMCandidate *)self timeSinceLastShareWithConversation];
        timeSinceLastShareWithConversation4 = [v5 timeSinceLastShareWithConversation];
        v210 = [timeSinceLastShareWithConversation3 isEqual:timeSinceLastShareWithConversation4];

        if (!v210)
        {
          goto LABEL_179;
        }
      }

      timeSinceLastPhoneCallWithConversation = [(BMCandidate *)self timeSinceLastPhoneCallWithConversation];
      timeSinceLastPhoneCallWithConversation2 = [v5 timeSinceLastPhoneCallWithConversation];
      v213 = timeSinceLastPhoneCallWithConversation2;
      if (timeSinceLastPhoneCallWithConversation == timeSinceLastPhoneCallWithConversation2)
      {
      }

      else
      {
        timeSinceLastPhoneCallWithConversation3 = [(BMCandidate *)self timeSinceLastPhoneCallWithConversation];
        timeSinceLastPhoneCallWithConversation4 = [v5 timeSinceLastPhoneCallWithConversation];
        v216 = [timeSinceLastPhoneCallWithConversation3 isEqual:timeSinceLastPhoneCallWithConversation4];

        if (!v216)
        {
          goto LABEL_179;
        }
      }

      numberOfDifferentFacesSharedWithConversation = [(BMCandidate *)self numberOfDifferentFacesSharedWithConversation];
      numberOfDifferentFacesSharedWithConversation2 = [v5 numberOfDifferentFacesSharedWithConversation];
      v219 = numberOfDifferentFacesSharedWithConversation2;
      if (numberOfDifferentFacesSharedWithConversation == numberOfDifferentFacesSharedWithConversation2)
      {
      }

      else
      {
        numberOfDifferentFacesSharedWithConversation3 = [(BMCandidate *)self numberOfDifferentFacesSharedWithConversation];
        numberOfDifferentFacesSharedWithConversation4 = [v5 numberOfDifferentFacesSharedWithConversation];
        v222 = [numberOfDifferentFacesSharedWithConversation3 isEqual:numberOfDifferentFacesSharedWithConversation4];

        if (!v222)
        {
          goto LABEL_179;
        }
      }

      numberOfTotalSharesToTargetApp = [(BMCandidate *)self numberOfTotalSharesToTargetApp];
      numberOfTotalSharesToTargetApp2 = [v5 numberOfTotalSharesToTargetApp];
      if (numberOfTotalSharesToTargetApp == numberOfTotalSharesToTargetApp2)
      {
        v12 = 1;
      }

      else
      {
        numberOfTotalSharesToTargetApp3 = [(BMCandidate *)self numberOfTotalSharesToTargetApp];
        numberOfTotalSharesToTargetApp4 = [v5 numberOfTotalSharesToTargetApp];
        v12 = [numberOfTotalSharesToTargetApp3 isEqual:numberOfTotalSharesToTargetApp4];
      }

      goto LABEL_180;
    }

LABEL_179:
    v12 = 0;
LABEL_180:

    goto LABEL_181;
  }

  v12 = 0;
LABEL_181:

  return v12;
}

- (id)jsonDictionary
{
  v185[44] = *MEMORY[0x1E69E9840];
  privatizedIdentifier = [(BMCandidate *)self privatizedIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate feedbackDeprecated](self, "feedbackDeprecated")}];
  privatizedTransportBundleId = [(BMCandidate *)self privatizedTransportBundleId];
  timeSinceLastOutgoingInteraction = [(BMCandidate *)self timeSinceLastOutgoingInteraction];
  jsonDictionary = [timeSinceLastOutgoingInteraction jsonDictionary];

  timeSinceOutgoingInteractionNumber10 = [(BMCandidate *)self timeSinceOutgoingInteractionNumber10];
  jsonDictionary2 = [timeSinceOutgoingInteractionNumber10 jsonDictionary];

  timeSinceLastIncomingInteraction = [(BMCandidate *)self timeSinceLastIncomingInteraction];
  jsonDictionary3 = [timeSinceLastIncomingInteraction jsonDictionary];

  if (![(BMCandidate *)self hasDeprecatedField1]|| ([(BMCandidate *)self deprecatedField1], fabs(v11) == INFINITY))
  {
    v13 = 0;
  }

  else
  {
    [(BMCandidate *)self deprecatedField1];
    v12 = MEMORY[0x1E696AD98];
    [(BMCandidate *)self deprecatedField1];
    v13 = [v12 numberWithDouble:?];
  }

  if (![(BMCandidate *)self hasDeprecatedField2]|| ([(BMCandidate *)self deprecatedField2], fabs(v14) == INFINITY))
  {
    v183 = 0;
  }

  else
  {
    [(BMCandidate *)self deprecatedField2];
    v15 = MEMORY[0x1E696AD98];
    [(BMCandidate *)self deprecatedField2];
    v183 = [v15 numberWithDouble:?];
  }

  if (![(BMCandidate *)self hasDeprecatedField3]|| ([(BMCandidate *)self deprecatedField3], fabs(v16) == INFINITY))
  {
    v182 = 0;
  }

  else
  {
    [(BMCandidate *)self deprecatedField3];
    v17 = MEMORY[0x1E696AD98];
    [(BMCandidate *)self deprecatedField3];
    v182 = [v17 numberWithDouble:?];
  }

  numberOfSharesWithConversation = [(BMCandidate *)self numberOfSharesWithConversation];
  jsonDictionary4 = [numberOfSharesWithConversation jsonDictionary];

  numberOfSharesFromCurrentAppWithConversation = [(BMCandidate *)self numberOfSharesFromCurrentAppWithConversation];
  jsonDictionary5 = [numberOfSharesFromCurrentAppWithConversation jsonDictionary];

  numberOfSharesOfTopDomainURLWithConversation = [(BMCandidate *)self numberOfSharesOfTopDomainURLWithConversation];
  jsonDictionary6 = [numberOfSharesOfTopDomainURLWithConversation jsonDictionary];

  numberOfSharesOfDetectedPeopleWithConversation = [(BMCandidate *)self numberOfSharesOfDetectedPeopleWithConversation];
  jsonDictionary7 = [numberOfSharesOfDetectedPeopleWithConversation jsonDictionary];

  numberOfSharesOfPeopleInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoWithConversation];
  jsonDictionary8 = [numberOfSharesOfPeopleInPhotoWithConversation jsonDictionary];

  numberOfOutgoingInteractionsWithConversation = [(BMCandidate *)self numberOfOutgoingInteractionsWithConversation];
  jsonDictionary9 = [numberOfOutgoingInteractionsWithConversation jsonDictionary];

  numberOfIncomingInteractionsWithConversation = [(BMCandidate *)self numberOfIncomingInteractionsWithConversation];
  jsonDictionary10 = [numberOfIncomingInteractionsWithConversation jsonDictionary];

  numberOfInteractionsDuringTimePeriodWithConversation = [(BMCandidate *)self numberOfInteractionsDuringTimePeriodWithConversation];
  jsonDictionary11 = [numberOfInteractionsDuringTimePeriodWithConversation jsonDictionary];

  numberOfEngagedSuggestionsWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsWithConversation];
  jsonDictionary12 = [numberOfEngagedSuggestionsWithConversation jsonDictionary];

  numberOfEngagedSuggestionsFromCurrentAppWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsFromCurrentAppWithConversation];
  jsonDictionary13 = [numberOfEngagedSuggestionsFromCurrentAppWithConversation jsonDictionary];

  numberOfEngagedSuggestionsOfTopDomainURLWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
  jsonDictionary14 = [numberOfEngagedSuggestionsOfTopDomainURLWithConversation jsonDictionary];

  numberOfEngagedSuggestionsOfDetectedPeopleWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
  jsonDictionary15 = [numberOfEngagedSuggestionsOfDetectedPeopleWithConversation jsonDictionary];

  numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
  jsonDictionary16 = [numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation jsonDictionary];

  hasEverSharePlayedWithConversation = [(BMCandidate *)self hasEverSharePlayedWithConversation];
  jsonDictionary17 = [hasEverSharePlayedWithConversation jsonDictionary];

  if ([(BMCandidate *)self hasSuggestedRank])
  {
    v167 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate suggestedRank](self, "suggestedRank")}];
  }

  else
  {
    v167 = 0;
  }

  if (![(BMCandidate *)self hasCoreMLModelScore]|| ([(BMCandidate *)self coreMLModelScore], fabs(v32) == INFINITY))
  {
    v166 = 0;
  }

  else
  {
    [(BMCandidate *)self coreMLModelScore];
    v33 = MEMORY[0x1E696AD98];
    [(BMCandidate *)self coreMLModelScore];
    v166 = [v33 numberWithDouble:?];
  }

  if ([(BMCandidate *)self hasFoundInChunk])
  {
    v165 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate foundInChunk](self, "foundInChunk")}];
  }

  else
  {
    v165 = 0;
  }

  if ([(BMCandidate *)self hasUpdatedInChunk])
  {
    v164 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate updatedInChunk](self, "updatedInChunk")}];
  }

  else
  {
    v164 = 0;
  }

  numberOfSharesOfPeopleInPhotoIoUWithConversation = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoIoUWithConversation];
  jsonDictionary18 = [numberOfSharesOfPeopleInPhotoIoUWithConversation jsonDictionary];

  numberOfSharesOfPetsWithConversation = [(BMCandidate *)self numberOfSharesOfPetsWithConversation];
  jsonDictionary19 = [numberOfSharesOfPetsWithConversation jsonDictionary];

  numberOfSharesOfPetsInCurrentPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfPetsInCurrentPhotoWithConversation];
  jsonDictionary20 = [numberOfSharesOfPetsInCurrentPhotoWithConversation jsonDictionary];

  numberOfSharesOfScenesInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfScenesInPhotoWithConversation];
  jsonDictionary21 = [numberOfSharesOfScenesInPhotoWithConversation jsonDictionary];

  numberOfSharesOfDetectedScenesInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfDetectedScenesInPhotoWithConversation];
  jsonDictionary22 = [numberOfSharesOfDetectedScenesInPhotoWithConversation jsonDictionary];

  numberOfTopicsSharedWithConversation = [(BMCandidate *)self numberOfTopicsSharedWithConversation];
  jsonDictionary23 = [numberOfTopicsSharedWithConversation jsonDictionary];

  numberOfAppsSharedFromWithConversation = [(BMCandidate *)self numberOfAppsSharedFromWithConversation];
  jsonDictionary24 = [numberOfAppsSharedFromWithConversation jsonDictionary];

  timeSinceLastPhotoShareWithConversation = [(BMCandidate *)self timeSinceLastPhotoShareWithConversation];
  jsonDictionary25 = [timeSinceLastPhotoShareWithConversation jsonDictionary];

  hasSharedSensitiveContentWIthConversation = [(BMCandidate *)self hasSharedSensitiveContentWIthConversation];
  jsonDictionary26 = [hasSharedSensitiveContentWIthConversation jsonDictionary];

  if ([(BMCandidate *)self hasIsInPhoneCallWithConversation])
  {
    v154 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCandidate isInPhoneCallWithConversation](self, "isInPhoneCallWithConversation")}];
  }

  else
  {
    v154 = 0;
  }

  numberOfSharesFromAlbumPhotoBelongsToWithConversation = [(BMCandidate *)self numberOfSharesFromAlbumPhotoBelongsToWithConversation];
  jsonDictionary27 = [numberOfSharesFromAlbumPhotoBelongsToWithConversation jsonDictionary];

  if ([(BMCandidate *)self hasIsFirstPartyApp])
  {
    v152 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCandidate isFirstPartyApp](self, "isFirstPartyApp")}];
  }

  else
  {
    v152 = 0;
  }

  numberOfTimesSharedToTargetAppWithConversation = [(BMCandidate *)self numberOfTimesSharedToTargetAppWithConversation];
  jsonDictionary28 = [numberOfTimesSharedToTargetAppWithConversation jsonDictionary];

  timeSinceLastShareWithConversation = [(BMCandidate *)self timeSinceLastShareWithConversation];
  jsonDictionary29 = [timeSinceLastShareWithConversation jsonDictionary];

  timeSinceLastPhoneCallWithConversation = [(BMCandidate *)self timeSinceLastPhoneCallWithConversation];
  jsonDictionary30 = [timeSinceLastPhoneCallWithConversation jsonDictionary];

  numberOfDifferentFacesSharedWithConversation = [(BMCandidate *)self numberOfDifferentFacesSharedWithConversation];
  jsonDictionary31 = [numberOfDifferentFacesSharedWithConversation jsonDictionary];

  numberOfTotalSharesToTargetApp = [(BMCandidate *)self numberOfTotalSharesToTargetApp];
  jsonDictionary32 = [numberOfTotalSharesToTargetApp jsonDictionary];

  v184[0] = @"privatizedIdentifier";
  null = privatizedIdentifier;
  if (!privatizedIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v140 = null;
  v185[0] = null;
  v184[1] = @"feedbackDeprecated";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v139 = null2;
  v185[1] = null2;
  v184[2] = @"privatizedTransportBundleId";
  null3 = privatizedTransportBundleId;
  if (!privatizedTransportBundleId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v138 = null3;
  v185[2] = null3;
  v184[3] = @"timeSinceLastOutgoingInteraction";
  null4 = jsonDictionary;
  if (!jsonDictionary)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v137 = null4;
  v185[3] = null4;
  v184[4] = @"timeSinceOutgoingInteractionNumber10";
  null5 = jsonDictionary2;
  v55 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = jsonDictionary;
  v136 = null5;
  v185[4] = null5;
  v184[5] = @"timeSinceLastIncomingInteraction";
  null6 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = privatizedIdentifier;
  v135 = null6;
  v185[5] = null6;
  v184[6] = @"deprecatedField1";
  null7 = v13;
  if (!v13)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v4;
  v134 = null7;
  v185[6] = null7;
  v184[7] = @"deprecatedField2";
  null8 = v183;
  if (!v183)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v185[7] = null8;
  v184[8] = @"deprecatedField3";
  null9 = v182;
  if (!v182)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v185[8] = null9;
  v184[9] = @"numberOfSharesWithConversation";
  null10 = jsonDictionary4;
  if (!jsonDictionary4)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v142 = null10;
  v185[9] = null10;
  v184[10] = @"numberOfSharesFromCurrentAppWithConversation";
  null11 = jsonDictionary5;
  if (!jsonDictionary5)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v132 = null11;
  v185[10] = null11;
  v184[11] = @"numberOfSharesOfTopDomainURLWithConversation";
  null12 = jsonDictionary6;
  if (!jsonDictionary6)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null12;
  v185[11] = null12;
  v184[12] = @"numberOfSharesOfDetectedPeopleWithConversation";
  null13 = jsonDictionary7;
  if (!jsonDictionary7)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v131 = null13;
  v185[12] = null13;
  v184[13] = @"numberOfSharesOfPeopleInPhotoWithConversation";
  null14 = jsonDictionary8;
  if (!jsonDictionary8)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v130 = null14;
  v185[13] = null14;
  v184[14] = @"numberOfOutgoingInteractionsWithConversation";
  null15 = jsonDictionary9;
  if (!jsonDictionary9)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v129 = null15;
  v185[14] = null15;
  v184[15] = @"numberOfIncomingInteractionsWithConversation";
  null16 = jsonDictionary10;
  if (!jsonDictionary10)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v128 = null16;
  v185[15] = null16;
  v184[16] = @"numberOfInteractionsDuringTimePeriodWithConversation";
  null17 = jsonDictionary11;
  if (!jsonDictionary11)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v127 = null17;
  v185[16] = null17;
  v184[17] = @"numberOfEngagedSuggestionsWithConversation";
  null18 = jsonDictionary12;
  if (!jsonDictionary12)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v126 = null18;
  v185[17] = null18;
  v184[18] = @"numberOfEngagedSuggestionsFromCurrentAppWithConversation";
  null19 = jsonDictionary13;
  if (!jsonDictionary13)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v125 = null19;
  v185[18] = null19;
  v184[19] = @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation";
  null20 = jsonDictionary14;
  if (!jsonDictionary14)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v124 = null20;
  v185[19] = null20;
  v184[20] = @"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation";
  null21 = jsonDictionary15;
  if (!jsonDictionary15)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v123 = null21;
  v185[20] = null21;
  v184[21] = @"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation";
  null22 = jsonDictionary16;
  if (!jsonDictionary16)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v122 = null22;
  v185[21] = null22;
  v184[22] = @"hasEverSharePlayedWithConversation";
  null23 = jsonDictionary17;
  if (!jsonDictionary17)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v121 = null23;
  v185[22] = null23;
  v184[23] = @"suggestedRank";
  null24 = v167;
  if (!v167)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v120 = null24;
  v185[23] = null24;
  v184[24] = @"coreMLModelScore";
  null25 = v166;
  if (!v166)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v119 = null25;
  v185[24] = null25;
  v184[25] = @"foundInChunk";
  null26 = v165;
  if (!v165)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v118 = null26;
  v185[25] = null26;
  v184[26] = @"updatedInChunk";
  null27 = v164;
  if (!v164)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v117 = null27;
  v185[26] = null27;
  v184[27] = @"numberOfSharesOfPeopleInPhotoIoUWithConversation";
  null28 = jsonDictionary18;
  if (!jsonDictionary18)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v116 = null28;
  v185[27] = null28;
  v184[28] = @"numberOfSharesOfPetsWithConversation";
  null29 = jsonDictionary19;
  if (!jsonDictionary19)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = null29;
  v185[28] = null29;
  v184[29] = @"numberOfSharesOfPetsInCurrentPhotoWithConversation";
  null30 = jsonDictionary20;
  if (!jsonDictionary20)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = null30;
  v185[29] = null30;
  v184[30] = @"numberOfSharesOfScenesInPhotoWithConversation";
  null31 = jsonDictionary21;
  if (!jsonDictionary21)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = null31;
  v185[30] = null31;
  v184[31] = @"numberOfSharesOfDetectedScenesInPhotoWithConversation";
  null32 = jsonDictionary22;
  if (!jsonDictionary22)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = null32;
  v185[31] = null32;
  v184[32] = @"numberOfTopicsSharedWithConversation";
  null33 = jsonDictionary23;
  if (!jsonDictionary23)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = null33;
  v185[32] = null33;
  v184[33] = @"numberOfAppsSharedFromWithConversation";
  null34 = jsonDictionary24;
  if (!jsonDictionary24)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = null34;
  v185[33] = null34;
  v184[34] = @"timeSinceLastPhotoShareWithConversation";
  null35 = jsonDictionary25;
  if (!jsonDictionary25)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = null35;
  v185[34] = null35;
  v184[35] = @"hasSharedSensitiveContentWIthConversation";
  null36 = jsonDictionary26;
  if (!jsonDictionary26)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v145 = privatizedTransportBundleId;
  v108 = null36;
  v185[35] = null36;
  v184[36] = @"isInPhoneCallWithConversation";
  null37 = v154;
  if (!v154)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v107 = null37;
  v185[36] = null37;
  v184[37] = @"numberOfSharesFromAlbumPhotoBelongsToWithConversation";
  null38 = jsonDictionary27;
  if (!jsonDictionary27)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v133 = null8;
  v106 = null38;
  v185[37] = null38;
  v184[38] = @"isFirstPartyApp";
  null39 = v152;
  if (!v152)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v146 = jsonDictionary32;
  v104 = null39;
  v185[38] = null39;
  v184[39] = @"numberOfTimesSharedToTargetAppWithConversation";
  null40 = jsonDictionary28;
  if (!jsonDictionary28)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v143 = v55;
  v144 = v13;
  v185[39] = null40;
  v184[40] = @"timeSinceLastShareWithConversation";
  null41 = jsonDictionary29;
  if (!jsonDictionary29)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = v58;
  v185[40] = null41;
  v184[41] = @"timeSinceLastPhoneCallWithConversation";
  null42 = jsonDictionary30;
  if (!jsonDictionary30)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = v60;
  v185[41] = null42;
  v184[42] = @"numberOfDifferentFacesSharedWithConversation";
  null43 = jsonDictionary31;
  if (!jsonDictionary31)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v185[42] = null43;
  v184[43] = @"numberOfTotalSharesToTargetApp";
  null44 = v146;
  if (!v146)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v185[43] = null44;
  v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v185 forKeys:v184 count:{44, v104}];
  if (!v146)
  {
  }

  v101 = v66;
  if (!jsonDictionary31)
  {

    v101 = v66;
  }

  if (!jsonDictionary30)
  {

    v101 = v66;
  }

  if (!jsonDictionary29)
  {

    v101 = v66;
  }

  if (!jsonDictionary28)
  {

    v101 = v66;
  }

  if (!v152)
  {

    v101 = v66;
  }

  if (!jsonDictionary27)
  {

    v101 = v66;
  }

  if (!v154)
  {

    v101 = v66;
  }

  if (!jsonDictionary26)
  {

    v101 = v66;
  }

  if (!jsonDictionary25)
  {

    v101 = v66;
  }

  if (!jsonDictionary24)
  {

    v101 = v66;
  }

  if (!jsonDictionary23)
  {

    v101 = v66;
  }

  if (!jsonDictionary22)
  {

    v101 = v66;
  }

  if (!jsonDictionary21)
  {

    v101 = v66;
  }

  if (!jsonDictionary20)
  {

    v101 = v66;
  }

  if (!jsonDictionary19)
  {

    v101 = v66;
  }

  if (!jsonDictionary18)
  {

    v101 = v66;
  }

  if (!v164)
  {

    v101 = v66;
  }

  if (!v165)
  {

    v101 = v66;
  }

  if (!v166)
  {

    v101 = v66;
  }

  if (!v167)
  {

    v101 = v66;
  }

  if (!jsonDictionary17)
  {

    v101 = v66;
  }

  if (!jsonDictionary16)
  {

    v101 = v66;
  }

  if (!jsonDictionary15)
  {

    v101 = v66;
  }

  if (!jsonDictionary14)
  {

    v101 = v66;
  }

  if (!jsonDictionary13)
  {

    v101 = v66;
  }

  if (!jsonDictionary12)
  {

    v101 = v66;
  }

  if (!jsonDictionary11)
  {

    v101 = v66;
  }

  if (!jsonDictionary10)
  {

    v101 = v66;
  }

  if (!jsonDictionary9)
  {

    v101 = v66;
  }

  if (!jsonDictionary8)
  {

    v101 = v66;
  }

  if (!jsonDictionary7)
  {

    v101 = v66;
  }

  if (!jsonDictionary6)
  {
  }

  if (!jsonDictionary5)
  {
  }

  if (!jsonDictionary4)
  {
  }

  if (!v182)
  {
  }

  if (v183)
  {
    if (v144)
    {
      goto LABEL_194;
    }
  }

  else
  {

    if (v144)
    {
LABEL_194:
      if (jsonDictionary3)
      {
        goto LABEL_195;
      }

      goto LABEL_205;
    }
  }

  if (jsonDictionary3)
  {
LABEL_195:
    if (v143)
    {
      goto LABEL_196;
    }

    goto LABEL_206;
  }

LABEL_205:

  if (v143)
  {
LABEL_196:
    if (v56)
    {
      goto LABEL_197;
    }

    goto LABEL_207;
  }

LABEL_206:

  if (v56)
  {
LABEL_197:
    if (v145)
    {
      goto LABEL_198;
    }

    goto LABEL_208;
  }

LABEL_207:

  if (v145)
  {
LABEL_198:
    if (v98)
    {
      goto LABEL_199;
    }

LABEL_209:

    if (v96)
    {
      goto LABEL_200;
    }

    goto LABEL_210;
  }

LABEL_208:

  if (!v98)
  {
    goto LABEL_209;
  }

LABEL_199:
  if (v96)
  {
    goto LABEL_200;
  }

LABEL_210:

LABEL_200:
  v102 = *MEMORY[0x1E69E9840];

  return v141;
}

- (BMCandidate)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v645[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"privatizedIdentifier"];
  v8 = 0x1E695D000uLL;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v525 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v525 = v7;
    v8 = 0x1E695D000;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"feedbackDeprecated"];
    if (!v9 || (v10 = *(v8 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
LABEL_15:

      v8 = 0x1E695D000uLL;
LABEL_16:
      v19 = [dictionaryCopy objectForKeyedSubscript:@"privatizedTransportBundleId"];
      v522 = v19;
      v524 = v9;
      if (!v19 || (v20 = *(v8 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v521 = 0;
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v521 = v19;
        v8 = 0x1E695D000;
LABEL_19:
        v21 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastOutgoingInteraction"];
        if (!v21 || (v22 = *(v8 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v519 = 0;
LABEL_22:
          v23 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceOutgoingInteractionNumber10"];
          selfCopy = self;
          if (v23 && (v24 = *(v8 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v475 = v11;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v16 = v525;
                v46 = v521;
LABEL_552:

                v40 = v21;
                v41 = v519;
                goto LABEL_553;
              }

              v500 = objc_alloc(MEMORY[0x1E696ABC0]);
              v498 = *MEMORY[0x1E698F240];
              v636 = *MEMORY[0x1E696A578];
              errorCopy = error;
              v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceOutgoingInteractionNumber10"];
              v637 = v58;
              v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v637 forKeys:&v636 count:1];
              error = 0;
              *errorCopy = [v500 initWithDomain:v498 code:2 userInfo:v59];
              v60 = v58;
              v26 = v59;
              v16 = v525;
              v46 = v521;
              v25 = v60;
              goto LABEL_551;
            }

            v26 = v23;
            v43 = [BMFeatureDouble alloc];
            v556 = 0;
            v44 = [(BMFeatureDouble *)v43 initWithJSONDictionary:v26 error:&v556];
            v45 = v556;
            if (v45)
            {
              v46 = v521;
              if (error)
              {
                v45 = v45;
                *error = v45;
              }

              error = 0;
              v16 = v525;
              v25 = v44;
              v11 = v475;
              goto LABEL_551;
            }

            v25 = v44;
            v11 = v475;
            v8 = 0x1E695D000;
          }

          else
          {
            v25 = 0;
          }

          v26 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastIncomingInteraction"];
          v517 = v7;
          if (!v26 || (v27 = *(v8 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v28 = 0;
            goto LABEL_28;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = v26;
            v52 = [BMFeatureDouble alloc];
            v555 = 0;
            v28 = [(BMFeatureDouble *)v52 initWithJSONDictionary:v51 error:&v555];
            v53 = v555;
            if (v53)
            {
              v497 = v51;
              v46 = v521;
              v16 = v525;
              if (error)
              {
                v53 = v53;
                *error = v53;
              }

              p_isa = 0;
              v54 = v28;
              v7 = v517;
              goto LABEL_550;
            }

LABEL_28:
            v29 = [dictionaryCopy objectForKeyedSubscript:@"deprecatedField1"];
            v471 = v29;
            if (v29 && (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v497 = 0;
                  p_isa = 0;
                  v46 = v521;
                  v54 = v28;
                  v7 = v517;
LABEL_549:

                  v16 = v525;
                  goto LABEL_550;
                }

                v503 = objc_alloc(MEMORY[0x1E696ABC0]);
                v452 = v26;
                v464 = v23;
                v127 = v25;
                v128 = v21;
                v129 = v28;
                v130 = *MEMORY[0x1E698F240];
                v632 = *MEMORY[0x1E696A578];
                errorCopy2 = error;
                v125 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"deprecatedField1"];
                v633 = v125;
                v132 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v633 forKeys:&v632 count:1];
                v133 = v130;
                v54 = v129;
                v21 = v128;
                v25 = v127;
                v23 = v464;
                v26 = v452;
                v470 = v132;
                v497 = 0;
                p_isa = 0;
                *errorCopy2 = [v503 initWithDomain:v133 code:2 userInfo:?];
                v46 = v521;
                goto LABEL_197;
              }

              v497 = v30;
            }

            else
            {
              v497 = 0;
            }

            v31 = [dictionaryCopy objectForKeyedSubscript:@"deprecatedField2"];
            v468 = v25;
            v470 = v31;
            if (!v31 || (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v33 = v26;
              v34 = v23;
              v35 = v21;
              v466 = 0;
              goto LABEL_34;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v26;
              v34 = v23;
              v35 = v21;
              v466 = v32;
LABEL_34:
              v36 = [dictionaryCopy objectForKeyedSubscript:@"deprecatedField3"];
              v467 = v28;
              v469 = v36;
              errorCopy3 = error;
              if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v461 = 0;
LABEL_37:
                v38 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesWithConversation"];
                v21 = v35;
                v474 = v11;
                v460 = v35;
                if (!v38)
                {
                  v457 = 0;
                  v458 = 0;
                  v23 = v34;
                  goto LABEL_71;
                }

                objc_opt_class();
                v23 = v34;
                if (objc_opt_isKindOfClass())
                {
                  v457 = v38;
                  v458 = 0;
LABEL_71:
                  v26 = v33;
                  v54 = v28;
                  v7 = v517;
                  goto LABEL_72;
                }

                v463 = v34;
                v502 = dictionaryCopy;
                objc_opt_class();
                v26 = v33;
                if (objc_opt_isKindOfClass())
                {
                  v121 = v38;
                  v122 = [BMFeatureDouble alloc];
                  v554 = 0;
                  v123 = [(BMFeatureDouble *)v122 initWithJSONDictionary:v121 error:&v554];
                  v124 = v554;
                  if (v124)
                  {
                    v46 = v521;
                    v125 = v466;
                    if (errorCopy3)
                    {
                      v124 = v124;
                      *errorCopy3 = v124;
                    }

                    p_isa = 0;
                    v7 = v517;
                    v23 = v463;
                    v54 = v467;
                    v126 = v123;
                    v21 = v460;
                    goto LABEL_545;
                  }

                  v457 = v38;

                  v7 = v517;
                  v23 = v463;
                  v54 = v467;
                  v458 = v123;
                  v21 = v460;
LABEL_72:
                  v64 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesFromCurrentAppWithConversation"];
                  v459 = v64;
                  if (v64 && (v65 = v64, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    v453 = v26;
                    v465 = v23;
                    v504 = dictionaryCopy;
                    v134 = v11;
                    v135 = v7;
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!errorCopy3)
                      {
                        p_isa = 0;
                        v11 = v134;
                        v46 = v521;
                        v21 = v460;
                        v23 = v465;
                        v54 = v467;
                        v125 = v466;
LABEL_544:

                        v121 = v457;
                        v126 = v458;
                        goto LABEL_545;
                      }

                      v171 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v172 = *MEMORY[0x1E698F240];
                      v624 = *MEMORY[0x1E696A578];
                      v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesFromCurrentAppWithConversation"];
                      v625 = v138;
                      v173 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v625 forKeys:&v624 count:1];
                      p_isa = 0;
                      *errorCopy3 = [v171 initWithDomain:v172 code:2 userInfo:v173];
                      v7 = v135;
                      v66 = v173;
                      v46 = v521;
                      v21 = v460;
                      v23 = v465;
                      v26 = v453;
                      v54 = v467;
                      v125 = v466;
                      goto LABEL_543;
                    }

                    v136 = v65;
                    v137 = [BMFeatureDouble alloc];
                    v553 = 0;
                    v138 = [(BMFeatureDouble *)v137 initWithJSONDictionary:v136 error:&v553];
                    v139 = v553;
                    if (v139)
                    {
                      v140 = v136;
                      v46 = v521;
                      v125 = v466;
                      if (errorCopy3)
                      {
                        v139 = v139;
                        *errorCopy3 = v139;
                      }

                      p_isa = 0;
                      v21 = v460;
                      dictionaryCopy = v504;
                      v23 = v465;
                      v66 = v140;
                      v54 = v467;
                      goto LABEL_543;
                    }

                    v450 = v138;

                    v21 = v460;
                    dictionaryCopy = v504;
                    v23 = v465;
                    v54 = v467;
                  }

                  else
                  {
                    v450 = 0;
                  }

                  v66 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfTopDomainURLWithConversation"];
                  if (!v66 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v67 = 0;
LABEL_78:
                    v68 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfDetectedPeopleWithConversation"];
                    if (!v68 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v462 = v23;
                      v446 = 0;
LABEL_81:
                      v69 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfPeopleInPhotoWithConversation"];
                      v447 = v69;
                      if (!v69 || (v70 = v69, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v443 = 0;
LABEL_84:
                        v71 = [dictionaryCopy objectForKeyedSubscript:@"numberOfOutgoingInteractionsWithConversation"];
                        v444 = v71;
                        if (!v71 || (v72 = v71, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v440 = 0;
LABEL_87:
                          v73 = [dictionaryCopy objectForKeyedSubscript:@"numberOfIncomingInteractionsWithConversation"];
                          v441 = v73;
                          if (!v73 || (v74 = v73, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v437 = 0;
LABEL_90:
                            v75 = [dictionaryCopy objectForKeyedSubscript:@"numberOfInteractionsDuringTimePeriodWithConversation"];
                            v438 = v75;
                            if (!v75 || (v76 = v75, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v432 = 0;
                              goto LABEL_93;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v198 = v76;
                              v199 = [BMFeatureDouble alloc];
                              v547 = 0;
                              v200 = [(BMFeatureDouble *)v199 initWithJSONDictionary:v198 error:&v547];
                              v201 = v547;
                              v432 = v200;
                              if (v201)
                              {
                                v433 = v198;
                                v46 = v521;
                                v125 = v466;
                                if (errorCopy3)
                                {
                                  v201 = v201;
                                  *errorCopy3 = v201;
                                }

                                p_isa = 0;
                                v138 = v450;
LABEL_283:
                                v23 = v462;
                                goto LABEL_537;
                              }

LABEL_93:
                              v77 = [dictionaryCopy objectForKeyedSubscript:@"numberOfEngagedSuggestionsWithConversation"];
                              v433 = v77;
                              if (!v77 || (v78 = v77, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v429 = 0;
LABEL_96:
                                v79 = [dictionaryCopy objectForKeyedSubscript:@"numberOfEngagedSuggestionsFromCurrentAppWithConversation"];
                                v430 = v79;
                                if (!v79 || (v80 = v79, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v425 = 0;
                                  goto LABEL_99;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v211 = v80;
                                  v212 = [BMFeatureDouble alloc];
                                  v545 = 0;
                                  v213 = [(BMFeatureDouble *)v212 initWithJSONDictionary:v211 error:&v545];
                                  v214 = v545;
                                  v425 = v213;
                                  if (v214)
                                  {
                                    v426 = v211;
                                    v46 = v521;
                                    v125 = v466;
                                    if (errorCopy3)
                                    {
                                      v214 = v214;
                                      *errorCopy3 = v214;
                                    }

                                    p_isa = 0;
                                    v138 = v450;
LABEL_298:
                                    v23 = v462;
                                    goto LABEL_535;
                                  }

LABEL_99:
                                  v81 = [dictionaryCopy objectForKeyedSubscript:@"numberOfEngagedSuggestionsOfTopDomainURLWithConversation"];
                                  v426 = v81;
                                  if (!v81 || (v82 = v81, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v422 = 0;
LABEL_102:
                                    v83 = [dictionaryCopy objectForKeyedSubscript:@"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation"];
                                    v423 = v83;
                                    if (!v83 || (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v419 = 0;
LABEL_105:
                                      v85 = [dictionaryCopy objectForKeyedSubscript:@"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation"];
                                      v23 = v462;
                                      v420 = v85;
                                      if (!v85 || (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v417 = 0;
LABEL_108:
                                        v87 = [dictionaryCopy objectForKeyedSubscript:@"hasEverSharePlayedWithConversation"];
                                        v418 = v87;
                                        if (!v87 || (v88 = v87, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v416 = 0;
                                          goto LABEL_111;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v242 = v88;
                                          v243 = [BMFeatureDouble alloc];
                                          v541 = 0;
                                          v416 = [(BMFeatureDouble *)v243 initWithJSONDictionary:v242 error:&v541];
                                          v244 = v541;
                                          if (v244)
                                          {
                                            v414 = v242;
                                            v46 = v521;
                                            v125 = v466;
                                            if (errorCopy3)
                                            {
                                              v244 = v244;
                                              *errorCopy3 = v244;
                                            }

                                            p_isa = 0;
                                            v138 = v450;
                                            v245 = v414;
                                            goto LABEL_531;
                                          }

LABEL_111:
                                          v89 = [dictionaryCopy objectForKeyedSubscript:@"suggestedRank"];
                                          v415 = v89;
                                          if (v89 && (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                          {
                                            objc_opt_class();
                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                            {
                                              if (!errorCopy3)
                                              {
                                                v245 = 0;
                                                p_isa = 0;
                                                v46 = v521;
                                                v125 = v466;
                                                v138 = v450;
LABEL_530:

                                                goto LABEL_531;
                                              }

                                              v262 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v263 = *MEMORY[0x1E698F240];
                                              v598 = *MEMORY[0x1E696A578];
                                              v412 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"suggestedRank"];
                                              v599 = v412;
                                              v264 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v599 forKeys:&v598 count:1];
                                              v265 = [v262 initWithDomain:v263 code:2 userInfo:v264];
                                              v245 = 0;
                                              p_isa = 0;
                                              *errorCopy3 = v265;
                                              v266 = v264;
                                              v46 = v521;
                                              v125 = v466;
                                              v138 = v450;
                                              goto LABEL_529;
                                            }

                                            v413 = v90;
                                          }

                                          else
                                          {
                                            v413 = 0;
                                          }

                                          v91 = [dictionaryCopy objectForKeyedSubscript:@"coreMLModelScore"];
                                          v411 = v91;
                                          if (!v91 || (v92 = v91, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v412 = 0;
                                            goto LABEL_117;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v412 = v92;
LABEL_117:
                                            v93 = [dictionaryCopy objectForKeyedSubscript:@"foundInChunk"];
                                            v410 = v93;
                                            if (!v93 || (v94 = v93, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v409 = 0;
                                              goto LABEL_120;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v409 = v94;
LABEL_120:
                                              v95 = [dictionaryCopy objectForKeyedSubscript:@"updatedInChunk"];
                                              v408 = v95;
                                              if (!v95 || (v96 = v95, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v407 = 0;
                                                goto LABEL_123;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v407 = v96;
LABEL_123:
                                                v97 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfPeopleInPhotoIoUWithConversation"];
                                                v405 = v97;
                                                if (!v97 || (v98 = v97, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v406 = 0;
LABEL_126:
                                                  v99 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfPetsWithConversation"];
                                                  v435 = v66;
                                                  v428 = v67;
                                                  v436 = v68;
                                                  v403 = v99;
                                                  if (v99 && (v100 = v99, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                  {
                                                    objc_opt_class();
                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                    {
                                                      v456 = v26;
                                                      v284 = dictionaryCopy;
                                                      if (!errorCopy3)
                                                      {
                                                        p_isa = 0;
                                                        v46 = v521;
                                                        v125 = v466;
                                                        v138 = v450;
LABEL_524:

                                                        v259 = v405;
                                                        goto LABEL_525;
                                                      }

                                                      v285 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v286 = *MEMORY[0x1E698F240];
                                                      v588 = *MEMORY[0x1E696A578];
                                                      v404 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfPetsWithConversation"];
                                                      v589 = v404;
                                                      v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v589 forKeys:&v588 count:1];
                                                      p_isa = 0;
                                                      *errorCopy3 = [v285 initWithDomain:v286 code:2 userInfo:v101];
                                                      goto LABEL_413;
                                                    }

                                                    v268 = v100;
                                                    v269 = [BMFeatureDouble alloc];
                                                    v539 = 0;
                                                    v270 = v268;
                                                    v404 = [(BMFeatureDouble *)v269 initWithJSONDictionary:v268 error:&v539];
                                                    v271 = v539;
                                                    if (v271)
                                                    {
                                                      if (errorCopy3)
                                                      {
                                                        v271 = v271;
                                                        *errorCopy3 = v271;
                                                      }

                                                      p_isa = 0;
                                                      v46 = v521;
                                                      v125 = v466;
                                                      v138 = v450;
                                                      v101 = v270;
                                                      goto LABEL_523;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v404 = 0;
                                                  }

                                                  v101 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfPetsInCurrentPhotoWithConversation"];
                                                  if (!v101 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v401 = 0;
LABEL_132:
                                                    v102 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfScenesInPhotoWithConversation"];
                                                    v398 = v101;
                                                    v402 = v102;
                                                    if (!v102 || (v103 = v102, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v399 = 0;
LABEL_135:
                                                      v104 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfDetectedScenesInPhotoWithConversation"];
                                                      v400 = v104;
                                                      if (!v104 || (v105 = v104, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v397 = 0;
                                                        goto LABEL_138;
                                                      }

                                                      v287 = dictionaryCopy;
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v288 = v105;
                                                        v289 = [BMFeatureDouble alloc];
                                                        v536 = 0;
                                                        v501 = v288;
                                                        v397 = [(BMFeatureDouble *)v289 initWithJSONDictionary:v288 error:&v536];
                                                        v290 = v536;
                                                        if (v290)
                                                        {
                                                          if (errorCopy3)
                                                          {
                                                            v290 = v290;
                                                            *errorCopy3 = v290;
                                                          }

                                                          p_isa = 0;
                                                          v46 = v521;
                                                          dictionaryCopy = v287;
                                                          goto LABEL_447;
                                                        }

                                                        dictionaryCopy = v287;
LABEL_138:
                                                        [dictionaryCopy objectForKeyedSubscript:@"numberOfTopicsSharedWithConversation"];
                                                        v501 = v451 = v26;
                                                        if (v501)
                                                        {
                                                          v106 = v443;
                                                          objc_opt_class();
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            v107 = dictionaryCopy;
                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v108 = v501;
                                                              v109 = [BMFeatureDouble alloc];
                                                              v535 = 0;
                                                              v396 = v108;
                                                              v395 = [(BMFeatureDouble *)v109 initWithJSONDictionary:v108 error:&v535];
                                                              v110 = v535;
                                                              if (v110)
                                                              {
                                                                if (errorCopy3)
                                                                {
                                                                  v110 = v110;
                                                                  *errorCopy3 = v110;
                                                                }

                                                                goto LABEL_423;
                                                              }

                                                              dictionaryCopy = v107;
                                                              v106 = v443;
LABEL_354:
                                                              [dictionaryCopy objectForKeyedSubscript:@"numberOfAppsSharedFromWithConversation"];
                                                              v396 = v443 = v106;
                                                              if (!v396 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v393 = 0;
                                                                v293 = v446;
                                                                v294 = v440;
                                                                v295 = v437;
                                                                v296 = v422;
                                                                v297 = v429;
                                                                v298 = v425;
                                                                goto LABEL_357;
                                                              }

                                                              v107 = dictionaryCopy;
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v308 = v396;
                                                                v309 = [BMFeatureDouble alloc];
                                                                v534 = 0;
                                                                v394 = v308;
                                                                v393 = [(BMFeatureDouble *)v309 initWithJSONDictionary:v308 error:&v534];
                                                                v310 = v534;
                                                                if (!v310)
                                                                {

                                                                  dictionaryCopy = v107;
                                                                  v293 = v446;
                                                                  v294 = v440;
                                                                  v295 = v437;
                                                                  v297 = v429;
                                                                  v298 = v425;
                                                                  v296 = v422;
LABEL_357:
                                                                  v422 = v296;
                                                                  v425 = v298;
                                                                  v429 = v297;
                                                                  v437 = v295;
                                                                  v440 = v294;
                                                                  v446 = v293;
                                                                  v394 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastPhotoShareWithConversation"];
                                                                  if (v394)
                                                                  {
                                                                    v299 = v474;
                                                                    v300 = v525;
                                                                    objc_opt_class();
                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                    {
                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v301 = v394;
                                                                        v302 = [BMFeatureDouble alloc];
                                                                        v533 = 0;
                                                                        v303 = v301;
                                                                        v392 = [(BMFeatureDouble *)v302 initWithJSONDictionary:v301 error:&v533];
                                                                        v304 = v533;
                                                                        if (v304)
                                                                        {
                                                                          if (errorCopy3)
                                                                          {
                                                                            v304 = v304;
                                                                            *errorCopy3 = v304;
                                                                          }

                                                                          goto LABEL_442;
                                                                        }

LABEL_379:
                                                                        v313 = [dictionaryCopy objectForKeyedSubscript:@"hasSharedSensitiveContentWIthConversation"];
                                                                        v525 = v300;
                                                                        if (v313 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                        {
                                                                          objc_opt_class();
                                                                          v303 = v313;
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            if (!errorCopy3)
                                                                            {
LABEL_442:
                                                                              p_isa = 0;
                                                                              goto LABEL_516;
                                                                            }

                                                                            v334 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v335 = *MEMORY[0x1E698F240];
                                                                            v574 = *MEMORY[0x1E696A578];
                                                                            v326 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"hasSharedSensitiveContentWIthConversation"];
                                                                            v575 = v326;
                                                                            v323 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v575 forKeys:&v574 count:1];
                                                                            p_isa = 0;
                                                                            *errorCopy3 = [v334 initWithDomain:v335 code:2 userInfo:v323];
LABEL_515:

                                                                            goto LABEL_516;
                                                                          }

                                                                          v323 = v313;
                                                                          v324 = [BMFeatureDouble alloc];
                                                                          v532 = 0;
                                                                          v390 = [(BMFeatureDouble *)v324 initWithJSONDictionary:v323 error:&v532];
                                                                          v325 = v532;
                                                                          if (v325)
                                                                          {
                                                                            if (errorCopy3)
                                                                            {
                                                                              v325 = v325;
                                                                              *errorCopy3 = v325;
                                                                            }

                                                                            p_isa = 0;
                                                                            v326 = v390;
                                                                            goto LABEL_515;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v303 = v313;
                                                                          v390 = 0;
                                                                        }

                                                                        v314 = dictionaryCopy;
                                                                        v391 = [dictionaryCopy objectForKeyedSubscript:@"isInPhoneCallWithConversation"];
                                                                        if (v391 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                        {
                                                                          objc_opt_class();
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            if (!errorCopy3)
                                                                            {
                                                                              v389 = 0;
                                                                              p_isa = 0;
LABEL_514:

                                                                              dictionaryCopy = v314;
                                                                              v323 = v389;
                                                                              v326 = v390;
                                                                              goto LABEL_515;
                                                                            }

                                                                            v339 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v340 = *MEMORY[0x1E698F240];
                                                                            v572 = *MEMORY[0x1E696A578];
                                                                            v331 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isInPhoneCallWithConversation"];
                                                                            v573 = v331;
                                                                            v387 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v573 forKeys:&v572 count:1];
                                                                            v389 = 0;
                                                                            p_isa = 0;
                                                                            *errorCopy3 = [v339 initWithDomain:v340 code:2 userInfo:?];

                                                                            goto LABEL_513;
                                                                          }

                                                                          v389 = v391;
                                                                        }

                                                                        else
                                                                        {
                                                                          v389 = 0;
                                                                        }

                                                                        v388 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesFromAlbumPhotoBelongsToWithConversation"];
                                                                        if (!v388 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v386 = 0;
LABEL_388:
                                                                          v315 = [dictionaryCopy objectForKeyedSubscript:@"isFirstPartyApp"];
                                                                          if (v315 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (!errorCopy3)
                                                                              {
                                                                                v385 = 0;
                                                                                p_isa = 0;
LABEL_511:

                                                                                v331 = v388;
                                                                                goto LABEL_512;
                                                                              }

                                                                              v347 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v348 = *MEMORY[0x1E698F240];
                                                                              v568 = *MEMORY[0x1E696A578];
                                                                              v336 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFirstPartyApp"];
                                                                              v569 = v336;
                                                                              v383 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v569 forKeys:&v568 count:1];
                                                                              v385 = 0;
                                                                              p_isa = 0;
                                                                              *errorCopy3 = [v347 initWithDomain:v348 code:2 userInfo:?];
                                                                              goto LABEL_509;
                                                                            }

                                                                            v385 = v315;
                                                                          }

                                                                          else
                                                                          {
                                                                            v385 = 0;
                                                                          }

                                                                          v316 = [dictionaryCopy objectForKeyedSubscript:@"numberOfTimesSharedToTargetAppWithConversation"];
                                                                          if (v316 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (!errorCopy3)
                                                                              {
                                                                                p_isa = 0;
LABEL_510:

                                                                                goto LABEL_511;
                                                                              }

                                                                              v491 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v352 = *MEMORY[0x1E698F240];
                                                                              v566 = *MEMORY[0x1E696A578];
                                                                              v383 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfTimesSharedToTargetAppWithConversation"];
                                                                              v567 = v383;
                                                                              v353 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v567 forKeys:&v566 count:1];
                                                                              *errorCopy3 = [v491 initWithDomain:v352 code:2 userInfo:v353];

                                                                              p_isa = 0;
                                                                              goto LABEL_508;
                                                                            }

                                                                            v336 = v316;
                                                                            v337 = [BMFeatureDouble alloc];
                                                                            v530 = 0;
                                                                            v383 = [(BMFeatureDouble *)v337 initWithJSONDictionary:v336 error:&v530];
                                                                            v338 = v530;
                                                                            if (v338)
                                                                            {
                                                                              if (errorCopy3)
                                                                              {
                                                                                v338 = v338;
                                                                                *errorCopy3 = v338;
                                                                              }

                                                                              p_isa = 0;
                                                                              goto LABEL_509;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v383 = 0;
                                                                          }

                                                                          v384 = [v314 objectForKeyedSubscript:@"timeSinceLastShareWithConversation"];
                                                                          if (v384 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (!errorCopy3)
                                                                              {
                                                                                p_isa = 0;
                                                                                goto LABEL_507;
                                                                              }

                                                                              v357 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v492 = *MEMORY[0x1E698F240];
                                                                              v564 = *MEMORY[0x1E696A578];
                                                                              v382 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceLastShareWithConversation"];
                                                                              v565 = v382;
                                                                              v358 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v565 forKeys:&v564 count:1];
                                                                              v359 = v357;
                                                                              v317 = v358;
                                                                              v360 = [v359 initWithDomain:v492 code:2 userInfo:?];
                                                                              p_isa = 0;
                                                                              *errorCopy3 = v360;
LABEL_506:

LABEL_507:
LABEL_508:
                                                                              v336 = v316;
LABEL_509:

                                                                              v316 = v336;
                                                                              goto LABEL_510;
                                                                            }

                                                                            v344 = v384;
                                                                            v345 = [BMFeatureDouble alloc];
                                                                            v529 = 0;
                                                                            v317 = v344;
                                                                            v382 = [(BMFeatureDouble *)v345 initWithJSONDictionary:v344 error:&v529];
                                                                            v346 = v529;
                                                                            if (v346)
                                                                            {
                                                                              if (errorCopy3)
                                                                              {
                                                                                v346 = v346;
                                                                                *errorCopy3 = v346;
                                                                              }

LABEL_493:
                                                                              p_isa = 0;
                                                                              goto LABEL_506;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v382 = 0;
                                                                          }

                                                                          v317 = [v314 objectForKeyedSubscript:@"timeSinceLastPhoneCallWithConversation"];
                                                                          if (!v317 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v381 = 0;
                                                                            goto LABEL_400;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v349 = v317;
                                                                            v350 = [BMFeatureDouble alloc];
                                                                            v528 = 0;
                                                                            v318 = v349;
                                                                            v381 = [(BMFeatureDouble *)v350 initWithJSONDictionary:v349 error:&v528];
                                                                            v351 = v528;
                                                                            if (v351)
                                                                            {
                                                                              if (errorCopy3)
                                                                              {
                                                                                v351 = v351;
                                                                                *errorCopy3 = v351;
                                                                              }

LABEL_497:
                                                                              p_isa = 0;
                                                                              goto LABEL_505;
                                                                            }

LABEL_400:
                                                                            v318 = [v314 objectForKeyedSubscript:@"numberOfDifferentFacesSharedWithConversation"];
                                                                            if (!v318 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v379 = 0;
                                                                              goto LABEL_403;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v354 = v318;
                                                                              v355 = [BMFeatureDouble alloc];
                                                                              v527 = 0;
                                                                              v319 = v354;
                                                                              v379 = [(BMFeatureDouble *)v355 initWithJSONDictionary:v354 error:&v527];
                                                                              v356 = v527;
                                                                              if (v356)
                                                                              {
                                                                                if (errorCopy3)
                                                                                {
                                                                                  v356 = v356;
                                                                                  *errorCopy3 = v356;
                                                                                }

                                                                                goto LABEL_558;
                                                                              }

LABEL_403:
                                                                              v319 = [v314 objectForKeyedSubscript:@"numberOfTotalSharesToTargetApp"];
                                                                              if (!v319 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v320 = 0;
LABEL_406:
                                                                                selfCopy = -[BMCandidate initWithPrivatizedIdentifier:feedbackDeprecated:privatizedTransportBundleId:timeSinceLastOutgoingInteraction:timeSinceOutgoingInteractionNumber10:timeSinceLastIncomingInteraction:deprecatedField1:deprecatedField2:deprecatedField3:numberOfSharesWithConversation:numberOfSharesFromCurrentAppWithConversation:numberOfSharesOfTopDomainURLWithConversation:numberOfSharesOfDetectedPeopleWithConversation:numberOfSharesOfPeopleInPhotoWithConversation:numberOfOutgoingInteractionsWithConversation:numberOfIncomingInteractionsWithConversation:numberOfInteractionsDuringTimePeriodWithConversation:numberOfEngagedSuggestionsWithConversation:numberOfEngagedSuggestionsFromCurrentAppWithConversation:numberOfEngagedSuggestionsOfTopDomainURLWithConversation:numberOfEngagedSuggestionsOfDetectedPeopleWithConversation:numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:hasEverSharePlayedWithConversation:suggestedRank:coreMLModelScore:foundInChunk:updatedInChunk:numberOfSharesOfPeopleInPhotoIoUWithConversation:numberOfSharesOfPetsWithConversation:numberOfSharesOfPetsInCurrentPhotoWithConversation:numberOfSharesOfScenesInPhotoWithConversation:numberOfSharesOfDetectedScenesInPhotoWithConversation:numberOfTopicsSharedWithConversation:numberOfAppsSharedFromWithConversation:timeSinceLastPhotoShareWithConversation:hasSharedSensitiveContentWIthConversation:isInPhoneCallWithConversation:numberOfSharesFromAlbumPhotoBelongsToWithConversation:isFirstPartyApp:numberOfTimesSharedToTargetAppWithConversation:timeSinceLastShareWithConversation:timeSinceLastPhoneCallWithConversation:numberOfDifferentFacesSharedWithConversation:numberOfTotalSharesToTargetApp:](selfCopy, "initWithPrivatizedIdentifier:feedbackDeprecated:privatizedTransportBundleId:timeSinceLastOutgoingInteraction:timeSinceOutgoingInteractionNumber10:timeSinceLastIncomingInteraction:deprecatedField1:deprecatedField2:deprecatedField3:numberOfSharesWithConversation:numberOfSharesFromCurrentAppWithConversation:numberOfSharesOfTopDomainURLWithConversation:numberOfSharesOfDetectedPeopleWithConversation:numberOfSharesOfPeopleInPhotoWithConversation:numberOfOutgoingInteractionsWithConversation:numberOfIncomingInteractionsWithConversation:numberOfInteractionsDuringTimePeriodWithConversation:numberOfEngagedSuggestionsWithConversation:numberOfEngagedSuggestionsFromCurrentAppWithConversation:numberOfEngagedSuggestionsOfTopDomainURLWithConversation:numberOfEngagedSuggestionsOfDetectedPeopleWithConversation:numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:hasEverSharePlayedWithConversation:suggestedRank:coreMLModelScore:foundInChunk:updatedInChunk:numberOfSharesOfPeopleInPhotoIoUWithConversation:numberOfSharesOfPetsWithConversation:numberOfSharesOfPetsInCurrentPhotoWithConversation:numberOfSharesOfScenesInPhotoWithConversation:numberOfSharesOfDetectedScenesInPhotoWithConversation:numberOfTopicsSharedWithConversation:numberOfAppsSharedFromWithConversation:timeSinceLastPhotoShareWithConversation:hasSharedSensitiveContentWIthConversation:isInPhoneCallWithConversation:numberOfSharesFromAlbumPhotoBelongsToWithConversation:isFirstPartyApp:numberOfTimesSharedToTargetAppWithConversation:timeSinceLastShareWithConversation:timeSinceLastPhoneCallWithConversation:numberOfDifferentFacesSharedWithConversation:numberOfTotalSharesToTargetApp:", v300, [v299 intValue], v521, v519, v468, v467, v497, v466, v461, v458, v450, v428, v446, v443, v440, v437, v432, v429, v425, v422, v419, v417, v416, v413, v412, v409, v407, v406, v404, v401, v399, v397, v395, v393, v392, v390, v389, v386, v385, v383, v382, v381, v379, v320);
                                                                                p_isa = &selfCopy->super.super.isa;
LABEL_503:

                                                                                goto LABEL_504;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v361 = v319;
                                                                                v362 = [BMFeatureDouble alloc];
                                                                                v526 = 0;
                                                                                v493 = v361;
                                                                                v320 = [(BMFeatureDouble *)v362 initWithJSONDictionary:v361 error:&v526];
                                                                                v363 = v526;
                                                                                if (!v363)
                                                                                {

                                                                                  goto LABEL_406;
                                                                                }

                                                                                if (errorCopy3)
                                                                                {
                                                                                  v363 = v363;
                                                                                  *errorCopy3 = v363;
                                                                                }

                                                                                v364 = v493;
LABEL_502:

                                                                                p_isa = 0;
                                                                                goto LABEL_503;
                                                                              }

                                                                              if (errorCopy3)
                                                                              {
                                                                                v496 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v378 = *MEMORY[0x1E698F240];
                                                                                v558 = *MEMORY[0x1E696A578];
                                                                                v320 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfTotalSharesToTargetApp"];
                                                                                v559 = v320;
                                                                                v376 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v559 forKeys:&v558 count:1];
                                                                                *errorCopy3 = [v496 initWithDomain:v378 code:2 userInfo:v376];
                                                                                v364 = v376;
                                                                                goto LABEL_502;
                                                                              }

LABEL_558:
                                                                              p_isa = 0;
                                                                              goto LABEL_504;
                                                                            }

                                                                            if (errorCopy3)
                                                                            {
                                                                              v495 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v377 = *MEMORY[0x1E698F240];
                                                                              v560 = *MEMORY[0x1E696A578];
                                                                              v379 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfDifferentFacesSharedWithConversation"];
                                                                              v561 = v379;
                                                                              v319 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v561 forKeys:&v560 count:1];
                                                                              v366 = [v495 initWithDomain:v377 code:2 userInfo:?];
                                                                              p_isa = 0;
                                                                              *errorCopy3 = v366;
LABEL_504:

                                                                              goto LABEL_505;
                                                                            }

                                                                            goto LABEL_497;
                                                                          }

                                                                          if (errorCopy3)
                                                                          {
                                                                            v494 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v380 = *MEMORY[0x1E698F240];
                                                                            v562 = *MEMORY[0x1E696A578];
                                                                            v381 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceLastPhoneCallWithConversation"];
                                                                            v563 = v381;
                                                                            v318 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v563 forKeys:&v562 count:1];
                                                                            v365 = [v494 initWithDomain:v380 code:2 userInfo:?];
                                                                            p_isa = 0;
                                                                            *errorCopy3 = v365;
LABEL_505:

                                                                            goto LABEL_506;
                                                                          }

                                                                          goto LABEL_493;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v331 = v388;
                                                                          v332 = [BMFeatureDouble alloc];
                                                                          v531 = 0;
                                                                          v386 = [(BMFeatureDouble *)v332 initWithJSONDictionary:v331 error:&v531];
                                                                          v333 = v531;
                                                                          if (!v333)
                                                                          {

                                                                            goto LABEL_388;
                                                                          }

                                                                          if (errorCopy3)
                                                                          {
                                                                            v333 = v333;
                                                                            *errorCopy3 = v333;
                                                                          }

LABEL_458:
                                                                          p_isa = 0;
LABEL_512:

                                                                          goto LABEL_513;
                                                                        }

                                                                        if (errorCopy3)
                                                                        {
                                                                          v341 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v342 = *MEMORY[0x1E698F240];
                                                                          v570 = *MEMORY[0x1E696A578];
                                                                          v331 = v388;
                                                                          v386 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesFromAlbumPhotoBelongsToWithConversation"];
                                                                          v571 = v386;
                                                                          v343 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v571 forKeys:&v570 count:1];
                                                                          *errorCopy3 = [v341 initWithDomain:v342 code:2 userInfo:v343];

                                                                          goto LABEL_458;
                                                                        }

                                                                        p_isa = 0;
                                                                        v331 = v388;
LABEL_513:

                                                                        goto LABEL_514;
                                                                      }

                                                                      if (errorCopy3)
                                                                      {
                                                                        v329 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v330 = *MEMORY[0x1E698F240];
                                                                        v576 = *MEMORY[0x1E696A578];
                                                                        v392 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceLastPhotoShareWithConversation"];
                                                                        v577 = v392;
                                                                        v303 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v577 forKeys:&v576 count:1];
                                                                        p_isa = 0;
                                                                        *errorCopy3 = [v329 initWithDomain:v330 code:2 userInfo:?];
LABEL_516:
                                                                        v46 = v521;
                                                                        v26 = v451;
                                                                        v125 = v466;
                                                                        v138 = v450;
                                                                        v66 = v435;
                                                                        v67 = v428;
                                                                        v68 = v436;

                                                                        goto LABEL_517;
                                                                      }

                                                                      p_isa = 0;
                                                                      v46 = v521;
LABEL_422:
                                                                      v26 = v451;
                                                                      v125 = v466;
                                                                      v138 = v450;
                                                                      v66 = v435;
LABEL_517:

                                                                      goto LABEL_518;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v299 = v474;
                                                                    v300 = v525;
                                                                  }

                                                                  v392 = 0;
                                                                  goto LABEL_379;
                                                                }

                                                                if (errorCopy3)
                                                                {
                                                                  v310 = v310;
                                                                  *errorCopy3 = v310;
                                                                }

                                                                p_isa = 0;
                                                              }

                                                              else
                                                              {
                                                                if (!errorCopy3)
                                                                {
LABEL_423:
                                                                  p_isa = 0;
                                                                  goto LABEL_424;
                                                                }

                                                                v327 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v328 = *MEMORY[0x1E698F240];
                                                                v578 = *MEMORY[0x1E696A578];
                                                                v393 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfAppsSharedFromWithConversation"];
                                                                v579 = v393;
                                                                v394 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v579 forKeys:&v578 count:1];
                                                                p_isa = 0;
                                                                *errorCopy3 = [v327 initWithDomain:v328 code:2 userInfo:?];
                                                              }

                                                              v46 = v521;
                                                              dictionaryCopy = v107;
                                                              goto LABEL_422;
                                                            }

                                                            if (errorCopy3)
                                                            {
                                                              v321 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v322 = *MEMORY[0x1E698F240];
                                                              v580 = *MEMORY[0x1E696A578];
                                                              v395 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfTopicsSharedWithConversation"];
                                                              v581 = v395;
                                                              v396 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v581 forKeys:&v580 count:1];
                                                              p_isa = 0;
                                                              *errorCopy3 = [v321 initWithDomain:v322 code:2 userInfo:?];
LABEL_424:
                                                              v46 = v521;
                                                              dictionaryCopy = v107;
                                                              v125 = v466;
                                                              v138 = v450;
LABEL_518:

                                                              goto LABEL_519;
                                                            }

                                                            p_isa = 0;
                                                            v46 = v521;
LABEL_447:
                                                            v125 = v466;
                                                            v138 = v450;
LABEL_519:
                                                            v101 = v398;
                                                            goto LABEL_520;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v106 = v443;
                                                        }

                                                        v395 = 0;
                                                        goto LABEL_354;
                                                      }

                                                      if (errorCopy3)
                                                      {
                                                        v311 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v312 = *MEMORY[0x1E698F240];
                                                        v582 = *MEMORY[0x1E696A578];
                                                        v397 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfDetectedScenesInPhotoWithConversation"];
                                                        v583 = v397;
                                                        v501 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v583 forKeys:&v582 count:1];
                                                        p_isa = 0;
                                                        *errorCopy3 = [v311 initWithDomain:v312 code:2 userInfo:?];
                                                        v46 = v521;
                                                        dictionaryCopy = v287;
                                                        v125 = v466;
                                                        v138 = v450;
LABEL_520:

                                                        goto LABEL_521;
                                                      }

                                                      p_isa = 0;
                                                      v46 = v521;
LABEL_439:
                                                      v125 = v466;
                                                      v138 = v450;
LABEL_521:

                                                      goto LABEL_522;
                                                    }

                                                    v456 = v26;
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v281 = v103;
                                                      v282 = [BMFeatureDouble alloc];
                                                      v537 = 0;
                                                      v399 = [(BMFeatureDouble *)v282 initWithJSONDictionary:v281 error:&v537];
                                                      v283 = v537;
                                                      if (v283)
                                                      {
                                                        v400 = v281;
                                                        if (errorCopy3)
                                                        {
                                                          v283 = v283;
                                                          *errorCopy3 = v283;
                                                        }

                                                        p_isa = 0;
                                                        v46 = v521;
                                                        v125 = v466;
                                                        v138 = v450;
                                                        goto LABEL_521;
                                                      }

                                                      goto LABEL_135;
                                                    }

                                                    v516 = dictionaryCopy;
                                                    if (errorCopy3)
                                                    {
                                                      v305 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v306 = *MEMORY[0x1E698F240];
                                                      v584 = *MEMORY[0x1E696A578];
                                                      v399 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfScenesInPhotoWithConversation"];
                                                      v585 = v399;
                                                      v400 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v585 forKeys:&v584 count:1];
                                                      p_isa = 0;
                                                      *errorCopy3 = [v305 initWithDomain:v306 code:2 userInfo:?];
                                                      v46 = v521;
                                                      dictionaryCopy = v516;
                                                      goto LABEL_439;
                                                    }

                                                    p_isa = 0;
                                                    v46 = v521;
LABEL_427:
                                                    v26 = v456;
                                                    v125 = v466;
                                                    v138 = v450;
LABEL_522:

                                                    goto LABEL_523;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v274 = v101;
                                                    v275 = [BMFeatureDouble alloc];
                                                    v538 = 0;
                                                    v402 = v274;
                                                    v401 = [(BMFeatureDouble *)v275 initWithJSONDictionary:v274 error:&v538];
                                                    v276 = v538;
                                                    if (v276)
                                                    {
                                                      if (errorCopy3)
                                                      {
                                                        v276 = v276;
                                                        *errorCopy3 = v276;
                                                      }

                                                      p_isa = 0;
                                                      v46 = v521;
                                                      v125 = v466;
                                                      v138 = v450;
                                                      goto LABEL_522;
                                                    }

                                                    goto LABEL_132;
                                                  }

                                                  v456 = v26;
                                                  v284 = dictionaryCopy;
                                                  if (errorCopy3)
                                                  {
                                                    v291 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v292 = *MEMORY[0x1E698F240];
                                                    v586 = *MEMORY[0x1E696A578];
                                                    v401 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfPetsInCurrentPhotoWithConversation"];
                                                    v587 = v401;
                                                    v402 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v587 forKeys:&v586 count:1];
                                                    p_isa = 0;
                                                    *errorCopy3 = [v291 initWithDomain:v292 code:2 userInfo:?];
                                                    v46 = v521;
                                                    dictionaryCopy = v284;
                                                    goto LABEL_427;
                                                  }

                                                  p_isa = 0;
LABEL_413:
                                                  v46 = v521;
                                                  dictionaryCopy = v284;
                                                  v26 = v456;
                                                  v125 = v466;
                                                  v138 = v450;
LABEL_523:

                                                  goto LABEL_524;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v259 = v98;
                                                  v260 = [BMFeatureDouble alloc];
                                                  v540 = 0;
                                                  v406 = [(BMFeatureDouble *)v260 initWithJSONDictionary:v259 error:&v540];
                                                  v261 = v540;
                                                  if (!v261)
                                                  {

                                                    goto LABEL_126;
                                                  }

                                                  v125 = v466;
                                                  if (errorCopy3)
                                                  {
                                                    v261 = v261;
                                                    *errorCopy3 = v261;
                                                  }

                                                  p_isa = 0;
                                                  v46 = v521;
LABEL_332:
                                                  v138 = v450;
LABEL_525:

                                                  v307 = v259;
                                                  goto LABEL_526;
                                                }

                                                if (!errorCopy3)
                                                {
                                                  p_isa = 0;
                                                  v46 = v521;
                                                  v125 = v466;
                                                  v138 = v450;
                                                  v307 = v405;
LABEL_526:
                                                  v245 = v413;

                                                  goto LABEL_527;
                                                }

                                                v277 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v490 = *MEMORY[0x1E698F240];
                                                v590 = *MEMORY[0x1E696A578];
                                                v515 = dictionaryCopy;
                                                v278 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v259 = v405;
                                                v375 = objc_opt_class();
                                                v279 = v278;
                                                dictionaryCopy = v515;
                                                v406 = [v279 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v375, @"numberOfSharesOfPeopleInPhotoIoUWithConversation"];
                                                v591 = v406;
                                                v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v591 forKeys:&v590 count:1];
                                                *errorCopy3 = [v277 initWithDomain:v490 code:2 userInfo:v280];

                                                p_isa = 0;
LABEL_331:
                                                v46 = v521;
                                                v125 = v466;
                                                goto LABEL_332;
                                              }

                                              if (errorCopy3)
                                              {
                                                v273 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v514 = *MEMORY[0x1E698F240];
                                                v592 = *MEMORY[0x1E696A578];
                                                v259 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"updatedInChunk"];
                                                v593 = v259;
                                                v406 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v593 forKeys:&v592 count:1];
                                                v407 = 0;
                                                p_isa = 0;
                                                *errorCopy3 = [v273 initWithDomain:v514 code:2 userInfo:?];
                                                goto LABEL_331;
                                              }

                                              v407 = 0;
                                              p_isa = 0;
                                              v46 = v521;
                                              v125 = v466;
                                              v138 = v450;
                                              v245 = v413;
LABEL_527:

                                              goto LABEL_528;
                                            }

                                            if (errorCopy3)
                                            {
                                              v272 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v513 = *MEMORY[0x1E698F240];
                                              v594 = *MEMORY[0x1E696A578];
                                              v245 = v413;
                                              v407 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"foundInChunk"];
                                              v595 = v407;
                                              v408 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v595 forKeys:&v594 count:1];
                                              v409 = 0;
                                              p_isa = 0;
                                              *errorCopy3 = [v272 initWithDomain:v513 code:2 userInfo:?];
                                              v46 = v521;
                                              v125 = v466;
                                              v138 = v450;
                                              goto LABEL_527;
                                            }

                                            v409 = 0;
                                            p_isa = 0;
                                            v46 = v521;
                                            v125 = v466;
                                            v138 = v450;
                                            v245 = v413;
LABEL_528:

                                            v266 = v411;
                                            goto LABEL_529;
                                          }

                                          if (errorCopy3)
                                          {
                                            v267 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v512 = *MEMORY[0x1E698F240];
                                            v596 = *MEMORY[0x1E696A578];
                                            v245 = v413;
                                            v409 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"coreMLModelScore"];
                                            v597 = v409;
                                            v410 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v597 forKeys:&v596 count:1];
                                            v412 = 0;
                                            p_isa = 0;
                                            *errorCopy3 = [v267 initWithDomain:v512 code:2 userInfo:?];
                                            v46 = v521;
                                            v125 = v466;
                                            v138 = v450;
                                            goto LABEL_528;
                                          }

                                          v412 = 0;
                                          p_isa = 0;
                                          v46 = v521;
                                          v125 = v466;
                                          v138 = v450;
                                          v266 = v411;
                                          v245 = v413;
LABEL_529:

                                          goto LABEL_530;
                                        }

                                        if (errorCopy3)
                                        {
                                          v255 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v489 = *MEMORY[0x1E698F240];
                                          v600 = *MEMORY[0x1E696A578];
                                          v511 = dictionaryCopy;
                                          v256 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v374 = objc_opt_class();
                                          v257 = v256;
                                          dictionaryCopy = v511;
                                          v416 = [v257 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v374, @"hasEverSharePlayedWithConversation"];
                                          v601 = v416;
                                          v245 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v601 forKeys:&v600 count:1];
                                          v258 = [v255 initWithDomain:v489 code:2 userInfo:v245];
                                          p_isa = 0;
                                          *errorCopy3 = v258;
                                          v46 = v521;
                                          v125 = v466;
                                          v138 = v450;
LABEL_531:

                                          v23 = v462;
                                          goto LABEL_532;
                                        }

                                        p_isa = 0;
LABEL_335:
                                        v46 = v521;
                                        v125 = v466;
                                        v138 = v450;
LABEL_532:

                                        goto LABEL_533;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v234 = v86;
                                        v235 = [BMFeatureDouble alloc];
                                        v542 = 0;
                                        v417 = [(BMFeatureDouble *)v235 initWithJSONDictionary:v234 error:&v542];
                                        v236 = v542;
                                        if (v236)
                                        {
                                          v418 = v234;
                                          v46 = v521;
                                          v125 = v466;
                                          if (errorCopy3)
                                          {
                                            v236 = v236;
                                            *errorCopy3 = v236;
                                          }

                                          p_isa = 0;
                                          v138 = v450;
                                          goto LABEL_532;
                                        }

                                        goto LABEL_108;
                                      }

                                      if (errorCopy3)
                                      {
                                        v251 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v488 = *MEMORY[0x1E698F240];
                                        v602 = *MEMORY[0x1E696A578];
                                        v510 = dictionaryCopy;
                                        v252 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v373 = objc_opt_class();
                                        v253 = v252;
                                        v23 = v462;
                                        dictionaryCopy = v510;
                                        v417 = [v253 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v373, @"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation"];
                                        v603 = v417;
                                        v418 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v603 forKeys:&v602 count:1];
                                        v254 = [v251 initWithDomain:v488 code:2 userInfo:?];
                                        p_isa = 0;
                                        *errorCopy3 = v254;
                                        goto LABEL_335;
                                      }

                                      p_isa = 0;
LABEL_321:
                                      v46 = v521;
                                      v125 = v466;
                                      v138 = v450;
LABEL_533:

                                      goto LABEL_534;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v226 = v84;
                                      v227 = [BMFeatureDouble alloc];
                                      v543 = 0;
                                      v419 = [(BMFeatureDouble *)v227 initWithJSONDictionary:v226 error:&v543];
                                      v228 = v543;
                                      if (v228)
                                      {
                                        v420 = v226;
                                        v46 = v521;
                                        v125 = v466;
                                        if (errorCopy3)
                                        {
                                          v228 = v228;
                                          *errorCopy3 = v228;
                                        }

                                        p_isa = 0;
                                        v138 = v450;
                                        v23 = v462;
                                        goto LABEL_533;
                                      }

                                      goto LABEL_105;
                                    }

                                    if (errorCopy3)
                                    {
                                      v487 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v421 = *MEMORY[0x1E698F240];
                                      v604 = *MEMORY[0x1E696A578];
                                      v509 = dictionaryCopy;
                                      v246 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v372 = objc_opt_class();
                                      v247 = v246;
                                      v23 = v462;
                                      dictionaryCopy = v509;
                                      v419 = [v247 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v372, @"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation"];
                                      v605 = v419;
                                      v248 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v605 forKeys:&v604 count:1];
                                      v249 = v421;
                                      v420 = v248;
                                      v250 = [v487 initWithDomain:v249 code:2 userInfo:?];
                                      p_isa = 0;
                                      *errorCopy3 = v250;
                                      goto LABEL_321;
                                    }

                                    p_isa = 0;
                                    v46 = v521;
                                    v125 = v466;
                                    v138 = v450;
                                    v23 = v462;
LABEL_534:

                                    goto LABEL_535;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v218 = v82;
                                    v219 = [BMFeatureDouble alloc];
                                    v544 = 0;
                                    v422 = [(BMFeatureDouble *)v219 initWithJSONDictionary:v218 error:&v544];
                                    v220 = v544;
                                    if (v220)
                                    {
                                      v423 = v218;
                                      v46 = v521;
                                      v125 = v466;
                                      v23 = v462;
                                      if (errorCopy3)
                                      {
                                        v220 = v220;
                                        *errorCopy3 = v220;
                                      }

                                      p_isa = 0;
                                      v138 = v450;
                                      goto LABEL_534;
                                    }

                                    goto LABEL_102;
                                  }

                                  if (errorCopy3)
                                  {
                                    v486 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v424 = *MEMORY[0x1E698F240];
                                    v606 = *MEMORY[0x1E696A578];
                                    v508 = dictionaryCopy;
                                    v237 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v371 = objc_opt_class();
                                    v238 = v237;
                                    v23 = v462;
                                    dictionaryCopy = v508;
                                    v422 = [v238 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v371, @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation"];
                                    v607 = v422;
                                    v239 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v607 forKeys:&v606 count:1];
                                    v240 = v424;
                                    v423 = v239;
                                    v241 = [v486 initWithDomain:v240 code:2 userInfo:?];
                                    p_isa = 0;
                                    *errorCopy3 = v241;
                                    v46 = v521;
                                    v125 = v466;
                                    v138 = v450;
                                    goto LABEL_534;
                                  }

                                  p_isa = 0;
                                  v46 = v521;
                                  v125 = v466;
                                  v138 = v450;
                                  goto LABEL_298;
                                }

                                if (errorCopy3)
                                {
                                  v485 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v427 = *MEMORY[0x1E698F240];
                                  v608 = *MEMORY[0x1E696A578];
                                  v507 = dictionaryCopy;
                                  v229 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v370 = objc_opt_class();
                                  v230 = v229;
                                  v23 = v462;
                                  dictionaryCopy = v507;
                                  v425 = [v230 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v370, @"numberOfEngagedSuggestionsFromCurrentAppWithConversation"];
                                  v609 = v425;
                                  v231 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v609 forKeys:&v608 count:1];
                                  v232 = v427;
                                  v426 = v231;
                                  v233 = [v485 initWithDomain:v232 code:2 userInfo:?];
                                  p_isa = 0;
                                  *errorCopy3 = v233;
                                  v46 = v521;
                                  v125 = v466;
                                  v138 = v450;
LABEL_535:

                                  goto LABEL_536;
                                }

                                p_isa = 0;
                                v46 = v521;
                                v125 = v466;
                                v138 = v450;
                                v23 = v462;
LABEL_536:

                                goto LABEL_537;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v205 = v78;
                                v206 = [BMFeatureDouble alloc];
                                v546 = 0;
                                v429 = [(BMFeatureDouble *)v206 initWithJSONDictionary:v205 error:&v546];
                                v207 = v546;
                                if (v207)
                                {
                                  v430 = v205;
                                  v46 = v521;
                                  v125 = v466;
                                  v23 = v462;
                                  if (errorCopy3)
                                  {
                                    v207 = v207;
                                    *errorCopy3 = v207;
                                  }

                                  p_isa = 0;
                                  v138 = v450;
                                  goto LABEL_536;
                                }

                                goto LABEL_96;
                              }

                              if (errorCopy3)
                              {
                                v484 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v431 = *MEMORY[0x1E698F240];
                                v610 = *MEMORY[0x1E696A578];
                                v506 = dictionaryCopy;
                                v221 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v369 = objc_opt_class();
                                v222 = v221;
                                v23 = v462;
                                dictionaryCopy = v506;
                                v429 = [v222 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v369, @"numberOfEngagedSuggestionsWithConversation"];
                                v611 = v429;
                                v223 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v611 forKeys:&v610 count:1];
                                v224 = v431;
                                v430 = v223;
                                v225 = [v484 initWithDomain:v224 code:2 userInfo:?];
                                p_isa = 0;
                                *errorCopy3 = v225;
                                v46 = v521;
                                v125 = v466;
                                v138 = v450;
                                goto LABEL_536;
                              }

                              p_isa = 0;
                              v46 = v521;
                              v125 = v466;
                              v138 = v450;
                              goto LABEL_283;
                            }

                            if (errorCopy3)
                            {
                              v483 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v434 = *MEMORY[0x1E698F240];
                              v612 = *MEMORY[0x1E696A578];
                              v23 = v462;
                              v432 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfInteractionsDuringTimePeriodWithConversation"];
                              v613 = v432;
                              v215 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v613 forKeys:&v612 count:1];
                              v216 = v434;
                              v433 = v215;
                              v217 = [v483 initWithDomain:v216 code:2 userInfo:?];
                              p_isa = 0;
                              *errorCopy3 = v217;
                              v46 = v521;
                              v125 = v466;
                              v138 = v450;
LABEL_537:

                              goto LABEL_538;
                            }

                            p_isa = 0;
                            v46 = v521;
                            v125 = v466;
                            v138 = v450;
                            v23 = v462;
LABEL_538:

                            goto LABEL_539;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v192 = v74;
                            v193 = [BMFeatureDouble alloc];
                            v548 = 0;
                            v437 = [(BMFeatureDouble *)v193 initWithJSONDictionary:v192 error:&v548];
                            v194 = v548;
                            if (v194)
                            {
                              v438 = v192;
                              v46 = v521;
                              v125 = v466;
                              v23 = v462;
                              if (errorCopy3)
                              {
                                v194 = v194;
                                *errorCopy3 = v194;
                              }

                              p_isa = 0;
                              v138 = v450;
                              goto LABEL_538;
                            }

                            goto LABEL_90;
                          }

                          if (errorCopy3)
                          {
                            v482 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v439 = *MEMORY[0x1E698F240];
                            v614 = *MEMORY[0x1E696A578];
                            v23 = v462;
                            v437 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfIncomingInteractionsWithConversation"];
                            v615 = v437;
                            v208 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v615 forKeys:&v614 count:1];
                            v209 = v439;
                            v438 = v208;
                            v210 = [v482 initWithDomain:v209 code:2 userInfo:?];
                            p_isa = 0;
                            *errorCopy3 = v210;
                            v46 = v521;
                            v125 = v466;
                            v138 = v450;
                            goto LABEL_538;
                          }

                          p_isa = 0;
                          v46 = v521;
                          v125 = v466;
                          v138 = v450;
                          v23 = v462;
LABEL_539:

                          goto LABEL_540;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v178 = v72;
                          v179 = [BMFeatureDouble alloc];
                          v549 = 0;
                          v440 = [(BMFeatureDouble *)v179 initWithJSONDictionary:v178 error:&v549];
                          v180 = v549;
                          if (v180)
                          {
                            v441 = v178;
                            v46 = v521;
                            v125 = v466;
                            if (errorCopy3)
                            {
                              v180 = v180;
                              *errorCopy3 = v180;
                            }

                            p_isa = 0;
                            v23 = v462;
                            v138 = v450;
                            goto LABEL_539;
                          }

                          goto LABEL_87;
                        }

                        if (errorCopy3)
                        {
                          v481 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v442 = *MEMORY[0x1E698F240];
                          v616 = *MEMORY[0x1E696A578];
                          v440 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfOutgoingInteractionsWithConversation"];
                          v617 = v440;
                          v202 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v617 forKeys:&v616 count:1];
                          v203 = v442;
                          v441 = v202;
                          v204 = [v481 initWithDomain:v203 code:2 userInfo:?];
                          p_isa = 0;
                          *errorCopy3 = v204;
                          v46 = v521;
                          v23 = v462;
                          v125 = v466;
                          v138 = v450;
                          goto LABEL_539;
                        }

                        p_isa = 0;
                        v46 = v521;
                        v23 = v462;
LABEL_255:
                        v125 = v466;
                        v138 = v450;
LABEL_540:

                        goto LABEL_541;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v174 = v70;
                        v175 = [BMFeatureDouble alloc];
                        v550 = 0;
                        v443 = [(BMFeatureDouble *)v175 initWithJSONDictionary:v174 error:&v550];
                        v176 = v550;
                        if (v176)
                        {
                          v444 = v174;
                          v46 = v521;
                          v125 = v466;
                          v23 = v462;
                          if (errorCopy3)
                          {
                            v176 = v176;
                            *errorCopy3 = v176;
                          }

                          p_isa = 0;
                          v138 = v450;
                          goto LABEL_540;
                        }

                        goto LABEL_84;
                      }

                      if (errorCopy3)
                      {
                        v480 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v445 = *MEMORY[0x1E698F240];
                        v618 = *MEMORY[0x1E696A578];
                        v23 = v462;
                        v443 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfPeopleInPhotoWithConversation"];
                        v619 = v443;
                        v195 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v619 forKeys:&v618 count:1];
                        v196 = v445;
                        v444 = v195;
                        v197 = [v480 initWithDomain:v196 code:2 userInfo:?];
                        p_isa = 0;
                        *errorCopy3 = v197;
                        v46 = v521;
                        goto LABEL_255;
                      }

                      p_isa = 0;
                      v46 = v521;
                      v125 = v466;
                      v138 = v450;
                      v23 = v462;
LABEL_541:

                      goto LABEL_542;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v167 = v68;
                      v168 = [BMFeatureDouble alloc];
                      v551 = 0;
                      v169 = [(BMFeatureDouble *)v168 initWithJSONDictionary:v167 error:&v551];
                      v170 = v551;
                      v446 = v169;
                      if (v170)
                      {
                        v447 = v167;
                        v46 = v521;
                        v125 = v466;
                        if (errorCopy3)
                        {
                          v170 = v170;
                          *errorCopy3 = v170;
                        }

                        p_isa = 0;
                        v138 = v450;
                        goto LABEL_541;
                      }

                      v462 = v23;

                      goto LABEL_81;
                    }

                    if (errorCopy3)
                    {
                      v479 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v449 = *MEMORY[0x1E698F240];
                      v620 = *MEMORY[0x1E696A578];
                      v181 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v182 = v67;
                      v183 = v68;
                      v184 = v182;
                      v185 = v181;
                      v186 = objc_opt_class();
                      v187 = v184;
                      v68 = v183;
                      v67 = v187;
                      v446 = [v185 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v186, @"numberOfSharesOfDetectedPeopleWithConversation"];
                      v621 = v446;
                      v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v621 forKeys:&v620 count:1];
                      v189 = v449;
                      v447 = v188;
                      v190 = [v479 initWithDomain:v189 code:2 userInfo:?];
                      p_isa = 0;
                      *errorCopy3 = v190;
                      v46 = v521;
                      v125 = v466;
                      v138 = v450;
                      goto LABEL_541;
                    }

                    p_isa = 0;
LABEL_236:
                    v46 = v521;
                    v125 = v466;
                    v138 = v450;
LABEL_542:

                    v21 = v460;
                    v54 = v467;
                    v7 = v517;
                    goto LABEL_543;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v157 = v66;
                    v158 = [BMFeatureDouble alloc];
                    v552 = 0;
                    v159 = [(BMFeatureDouble *)v158 initWithJSONDictionary:v157 error:&v552];
                    v160 = v552;
                    if (v160)
                    {
                      v455 = v26;
                      v161 = v23;
                      v162 = v157;
                      v67 = v159;
                      v46 = v521;
                      v125 = v466;
                      if (errorCopy3)
                      {
                        v160 = v160;
                        *errorCopy3 = v160;
                      }

                      p_isa = 0;
                      v138 = v450;
                      v68 = v162;
                      v23 = v161;
                      v26 = v455;
                      goto LABEL_542;
                    }

                    v67 = v159;
                    goto LABEL_78;
                  }

                  if (errorCopy3)
                  {
                    v478 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v448 = *MEMORY[0x1E698F240];
                    v622 = *MEMORY[0x1E696A578];
                    v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfTopDomainURLWithConversation"];
                    v623 = v67;
                    v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v623 forKeys:&v622 count:1];
                    v177 = [v478 initWithDomain:v448 code:2 userInfo:v68];
                    p_isa = 0;
                    *errorCopy3 = v177;
                    goto LABEL_236;
                  }

                  p_isa = 0;
                  v46 = v521;
                  v125 = v466;
                  v138 = v450;
LABEL_543:

                  v11 = v474;
                  goto LABEL_544;
                }

                if (!errorCopy3)
                {
                  p_isa = 0;
                  v7 = v517;
                  v46 = v521;
                  v21 = v460;
                  v23 = v463;
                  v125 = v466;
                  v148 = v461;
                  v191 = v38;
                  v54 = v467;
LABEL_546:

                  goto LABEL_547;
                }

                v163 = objc_alloc(MEMORY[0x1E696ABC0]);
                v164 = *MEMORY[0x1E698F240];
                v626 = *MEMORY[0x1E696A578];
                v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesWithConversation"];
                v627 = v165;
                v166 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v627 forKeys:&v626 count:1];
                *errorCopy3 = [v163 initWithDomain:v164 code:2 userInfo:v166];

                v126 = v165;
                p_isa = 0;
                v121 = v38;
                v7 = v517;
                v46 = v521;
                v21 = v460;
                dictionaryCopy = v502;
                v23 = v463;
                v54 = v467;
                v125 = v466;
LABEL_545:

                v191 = v121;
                v148 = v461;
                goto LABEL_546;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v461 = v37;
                goto LABEL_37;
              }

              if (error)
              {
                v149 = objc_alloc(MEMORY[0x1E696ABC0]);
                v150 = v33;
                errorCopy4 = error;
                v152 = *MEMORY[0x1E698F240];
                v628 = *MEMORY[0x1E696A578];
                v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"deprecatedField3"];
                v629 = v121;
                v153 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v629 forKeys:&v628 count:1];
                v154 = v152;
                v155 = v150;
                v156 = [v149 initWithDomain:v154 code:2 userInfo:v153];
                v126 = v153;
                v461 = 0;
                p_isa = 0;
                *errorCopy4 = v156;
                v46 = v521;
                v125 = v466;
                v21 = v35;
                v23 = v34;
                v26 = v155;
                v54 = v467;
                v7 = v517;
                goto LABEL_545;
              }

              p_isa = 0;
              v46 = v521;
              v125 = v466;
              v21 = v35;
              v23 = v34;
              v26 = v33;
              v148 = 0;
              v54 = v28;
LABEL_204:
              v7 = v517;
LABEL_547:

              v25 = v468;
              goto LABEL_548;
            }

            if (error)
            {
              v505 = objc_alloc(MEMORY[0x1E696ABC0]);
              v454 = v26;
              v141 = v21;
              v142 = v28;
              v143 = *MEMORY[0x1E698F240];
              v630 = *MEMORY[0x1E696A578];
              errorCopy5 = error;
              v145 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"deprecatedField2"];
              v631 = v145;
              v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v631 forKeys:&v630 count:1];
              v147 = v143;
              v54 = v142;
              v21 = v141;
              v148 = v145;
              v26 = v454;
              v469 = v146;
              v125 = 0;
              p_isa = 0;
              *errorCopy5 = [v505 initWithDomain:v147 code:2 userInfo:?];
              v46 = v521;
              goto LABEL_204;
            }

            v125 = 0;
            p_isa = 0;
            v46 = v521;
            v54 = v28;
LABEL_197:
            v7 = v517;
LABEL_548:

            goto LABEL_549;
          }

          if (error)
          {
            v499 = objc_alloc(MEMORY[0x1E696ABC0]);
            v477 = *MEMORY[0x1E698F240];
            v634 = *MEMORY[0x1E696A578];
            v111 = objc_alloc(MEMORY[0x1E696AEC0]);
            v112 = v23;
            v113 = v11;
            v114 = v112;
            errorCopy6 = error;
            v115 = v111;
            v116 = objc_opt_class();
            v16 = v525;
            v117 = v114;
            v11 = v113;
            v23 = v117;
            v54 = [v115 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v116, @"timeSinceLastIncomingInteraction"];
            v635 = v54;
            v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v635 forKeys:&v634 count:1];
            v119 = v499;
            v497 = v118;
            v120 = [v119 initWithDomain:v477 code:2 userInfo:?];
            p_isa = 0;
            *errorCopy6 = v120;
            v46 = v521;
LABEL_550:

            error = p_isa;
            goto LABEL_551;
          }

          v46 = v521;
          v16 = v525;
LABEL_551:

          self = selfCopy;
          goto LABEL_552;
        }

        v39 = v21;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v21;
          v557 = 0;
          v41 = [[BMFeatureDouble alloc] initWithJSONDictionary:v40 error:&v557];
          v42 = v557;
          if (!v42)
          {

            v519 = v41;
            v21 = v39;
            v8 = 0x1E695D000;
            goto LABEL_22;
          }

          if (error)
          {
            v42 = v42;
            *error = v42;
          }

          error = 0;
        }

        else
        {
          if (!error)
          {
            v16 = v525;
            v46 = v521;
LABEL_554:

            v9 = v524;
            goto LABEL_555;
          }

          v520 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E698F240];
          v638 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceLastOutgoingInteraction"];
          v639 = v41;
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v639 forKeys:&v638 count:1];
          *error = [v520 initWithDomain:v55 code:2 userInfo:v56];

          error = 0;
          v40 = v39;
        }

        v16 = v525;
        v46 = v521;
LABEL_553:

        v39 = v40;
        v19 = v522;
        goto LABEL_554;
      }

      if (error)
      {
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = *MEMORY[0x1E698F240];
        v640 = *MEMORY[0x1E696A578];
        v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"privatizedTransportBundleId"];
        v641 = v40;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v641 forKeys:&v640 count:1];
        v50 = v47;
        v41 = v49;
        v46 = 0;
        *error = [v50 initWithDomain:v48 code:2 userInfo:v49];
        error = 0;
        v16 = v525;
        goto LABEL_553;
      }

      v46 = 0;
      v16 = v525;
LABEL_555:

      goto LABEL_556;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v9;
      v18 = [MEMORY[0x1E696AD98] numberWithInt:BMFeedbackTypeFromString(v17)];

      v11 = v18;
      goto LABEL_15;
    }

    if (error)
    {
      v61 = objc_alloc(MEMORY[0x1E696ABC0]);
      v523 = *MEMORY[0x1E698F240];
      v642 = *MEMORY[0x1E696A578];
      v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"feedbackDeprecated"];
      v643 = v46;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v643 forKeys:&v642 count:1];
      v63 = v61;
      v19 = v62;
      *error = [v63 initWithDomain:v523 code:2 userInfo:v62];
      error = 0;
      v16 = v525;
      v11 = 0;
      goto LABEL_555;
    }

    v16 = v525;
    v11 = 0;
LABEL_556:

    goto LABEL_557;
  }

  if (error)
  {
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    selfCopy2 = self;
    v14 = *MEMORY[0x1E698F240];
    v644 = *MEMORY[0x1E696A578];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"privatizedIdentifier"];
    v645[0] = v11;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v645 forKeys:&v644 count:1];
    v15 = v14;
    self = selfCopy2;
    v16 = 0;
    *error = [v12 initWithDomain:v15 code:2 userInfo:v9];
    error = 0;
    goto LABEL_556;
  }

  v16 = 0;
LABEL_557:

  v367 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMCandidate *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_privatizedIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  feedbackDeprecated = self->_feedbackDeprecated;
  PBDataWriterWriteUint32Field();
  if (self->_privatizedTransportBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_timeSinceLastOutgoingInteraction)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastOutgoingInteraction writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceOutgoingInteractionNumber10)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceOutgoingInteractionNumber10 writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceLastIncomingInteraction)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastIncomingInteraction writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasDeprecatedField1)
  {
    deprecatedField1 = self->_deprecatedField1;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasDeprecatedField2)
  {
    deprecatedField2 = self->_deprecatedField2;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasDeprecatedField3)
  {
    deprecatedField3 = self->_deprecatedField3;
    PBDataWriterWriteDoubleField();
  }

  if (self->_numberOfSharesWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesFromCurrentAppWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesFromCurrentAppWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfTopDomainURLWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfTopDomainURLWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfDetectedPeopleWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfDetectedPeopleWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfPeopleInPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfPeopleInPhotoWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfOutgoingInteractionsWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfOutgoingInteractionsWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfIncomingInteractionsWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfIncomingInteractionsWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfInteractionsDuringTimePeriodWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfInteractionsDuringTimePeriodWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasEverSharePlayedWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_hasEverSharePlayedWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasSuggestedRank)
  {
    suggestedRank = self->_suggestedRank;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasCoreMLModelScore)
  {
    coreMLModelScore = self->_coreMLModelScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasFoundInChunk)
  {
    foundInChunk = self->_foundInChunk;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasUpdatedInChunk)
  {
    updatedInChunk = self->_updatedInChunk;
    PBDataWriterWriteInt32Field();
  }

  if (self->_numberOfSharesOfPeopleInPhotoIoUWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfPeopleInPhotoIoUWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfPetsWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfPetsWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfPetsInCurrentPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfPetsInCurrentPhotoWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfScenesInPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfScenesInPhotoWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfDetectedScenesInPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfDetectedScenesInPhotoWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfTopicsSharedWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfTopicsSharedWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfAppsSharedFromWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfAppsSharedFromWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceLastPhotoShareWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastPhotoShareWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasSharedSensitiveContentWIthConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_hasSharedSensitiveContentWIthConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsInPhoneCallWithConversation)
  {
    isInPhoneCallWithConversation = self->_isInPhoneCallWithConversation;
    PBDataWriterWriteBOOLField();
  }

  if (self->_numberOfSharesFromAlbumPhotoBelongsToWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesFromAlbumPhotoBelongsToWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsFirstPartyApp)
  {
    isFirstPartyApp = self->_isFirstPartyApp;
    PBDataWriterWriteBOOLField();
  }

  if (self->_numberOfTimesSharedToTargetAppWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfTimesSharedToTargetAppWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceLastShareWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastShareWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceLastPhoneCallWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastPhoneCallWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfDifferentFacesSharedWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfDifferentFacesSharedWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfTotalSharesToTargetApp)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfTotalSharesToTargetApp writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v80.receiver = self;
  v80.super_class = BMCandidate;
  v5 = [(BMEventBase *)&v80 init];
  if (!v5)
  {
    goto LABEL_226;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_224;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v81) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v81 & 0x7F) << v7;
        if ((v81 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_224;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 100)
      {
        switch(v15)
        {
          case 101:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 64;
            goto LABEL_188;
          case 102:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 72;
            goto LABEL_188;
          case 103:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 80;
            goto LABEL_188;
          case 104:
            v5->_hasDeprecatedField1 = 1;
            v81 = 0;
            v43 = [fromCopy position] + 8;
            if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 8, v44 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v73 = v81;
            v74 = 328;
            goto LABEL_223;
          case 105:
            v5->_hasDeprecatedField2 = 1;
            v81 = 0;
            v41 = [fromCopy position] + 8;
            if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 8, v42 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v73 = v81;
            v74 = 336;
            goto LABEL_223;
          case 106:
            v5->_hasDeprecatedField3 = 1;
            v81 = 0;
            v52 = [fromCopy position] + 8;
            if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 8, v53 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v73 = v81;
            v74 = 344;
            goto LABEL_223;
          case 107:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 88;
            goto LABEL_188;
          case 108:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 96;
            goto LABEL_188;
          case 109:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 104;
            goto LABEL_188;
          case 110:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 112;
            goto LABEL_188;
          case 111:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 120;
            goto LABEL_188;
          case 112:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 128;
            goto LABEL_188;
          case 113:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 136;
            goto LABEL_188;
          case 114:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 144;
            goto LABEL_188;
          case 115:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 152;
            goto LABEL_188;
          case 116:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 160;
            goto LABEL_188;
          case 117:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 168;
            goto LABEL_188;
          case 118:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 176;
            goto LABEL_188;
          case 119:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 184;
            goto LABEL_188;
          case 120:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 192;
            goto LABEL_188;
          case 121:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v5->_hasSuggestedRank = 1;
            while (1)
            {
              LOBYTE(v81) = 0;
              v48 = [fromCopy position] + 1;
              if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v47 |= (v81 & 0x7F) << v45;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v13 = v46++ >= 9;
              if (v13)
              {
                v51 = 0;
                goto LABEL_205;
              }
            }

            if ([fromCopy hasError])
            {
              v51 = 0;
            }

            else
            {
              v51 = v47;
            }

LABEL_205:
            v71 = 32;
            goto LABEL_214;
          case 122:
            v5->_hasCoreMLModelScore = 1;
            v81 = 0;
            v54 = [fromCopy position] + 8;
            if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 8, v55 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v73 = v81;
            v74 = 200;
LABEL_223:
            *(&v5->super.super.isa + v74) = v73;
            goto LABEL_189;
          case 123:
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v5->_hasFoundInChunk = 1;
            while (1)
            {
              LOBYTE(v81) = 0;
              v59 = [fromCopy position] + 1;
              if (v59 >= [fromCopy position] && (v60 = objc_msgSend(fromCopy, "position") + 1, v60 <= objc_msgSend(fromCopy, "length")))
              {
                data7 = [fromCopy data];
                [data7 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v58 |= (v81 & 0x7F) << v56;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v13 = v57++ >= 9;
              if (v13)
              {
                v51 = 0;
                goto LABEL_209;
              }
            }

            if ([fromCopy hasError])
            {
              v51 = 0;
            }

            else
            {
              v51 = v58;
            }

LABEL_209:
            v71 = 36;
            goto LABEL_214;
          case 124:
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v5->_hasUpdatedInChunk = 1;
            while (1)
            {
              LOBYTE(v81) = 0;
              v65 = [fromCopy position] + 1;
              if (v65 >= [fromCopy position] && (v66 = objc_msgSend(fromCopy, "position") + 1, v66 <= objc_msgSend(fromCopy, "length")))
              {
                data8 = [fromCopy data];
                [data8 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v64 |= (v81 & 0x7F) << v62;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v13 = v63++ >= 9;
              if (v13)
              {
                v51 = 0;
                goto LABEL_213;
              }
            }

            if ([fromCopy hasError])
            {
              v51 = 0;
            }

            else
            {
              v51 = v64;
            }

LABEL_213:
            v71 = 40;
LABEL_214:
            *(&v5->super.super.isa + v71) = v51;
            goto LABEL_189;
          case 125:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 208;
            goto LABEL_188;
          case 126:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 216;
            goto LABEL_188;
          case 127:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 224;
            goto LABEL_188;
          case 128:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 232;
            goto LABEL_188;
          case 129:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 240;
            goto LABEL_188;
          case 130:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 248;
            goto LABEL_188;
          case 131:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 256;
            goto LABEL_188;
          case 132:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 264;
            goto LABEL_188;
          case 133:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 272;
            goto LABEL_188;
          case 134:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v5->_hasIsInPhoneCallWithConversation = 1;
            while (1)
            {
              LOBYTE(v81) = 0;
              v37 = [fromCopy position] + 1;
              if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
              {
                data9 = [fromCopy data];
                [data9 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v36 |= (v81 & 0x7F) << v34;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v13 = v35++ >= 9;
              if (v13)
              {
                LOBYTE(v26) = 0;
                goto LABEL_200;
              }
            }

            v26 = (v36 != 0) & ~[fromCopy hasError];
LABEL_200:
            v70 = 20;
            goto LABEL_201;
          case 135:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 280;
            goto LABEL_188;
          case 136:
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v5->_hasIsFirstPartyApp = 1;
            break;
          case 137:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 288;
            goto LABEL_188;
          case 138:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 296;
            goto LABEL_188;
          case 139:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 304;
            goto LABEL_188;
          case 140:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 312;
            goto LABEL_188;
          case 141:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 320;
LABEL_188:
            v68 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            PBReaderRecallMark();
            goto LABEL_189;
          default:
            goto LABEL_191;
        }

        while (1)
        {
          LOBYTE(v81) = 0;
          v23 = [fromCopy position] + 1;
          if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v22 |= (v81 & 0x7F) << v20;
          if ((v81 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v13 = v21++ >= 9;
          if (v13)
          {
            LOBYTE(v26) = 0;
            goto LABEL_194;
          }
        }

        v26 = (v22 != 0) & ~[fromCopy hasError];
LABEL_194:
        v70 = 22;
LABEL_201:
        *(&v5->super.super.isa + v70) = v26;
        goto LABEL_189;
      }

      if (v15 == 1)
      {
        break;
      }

      if (v15 == 2)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          LOBYTE(v81) = 0;
          v30 = [fromCopy position] + 1;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v29 |= (v81 & 0x7F) << v27;
          if ((v81 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          if (v28++ > 8)
          {
            goto LABEL_197;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v29 > 4)
        {
LABEL_197:
          LODWORD(v29) = 0;
        }

        v5->_feedbackDeprecated = v29;
        goto LABEL_189;
      }

      if (v15 == 3)
      {
        v18 = PBReaderReadString();
        v19 = 56;
LABEL_73:
        v40 = *(&v5->super.super.isa + v19);
        *(&v5->super.super.isa + v19) = v18;

        goto LABEL_189;
      }

LABEL_191:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_225;
      }

LABEL_189:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_224;
      }
    }

    v18 = PBReaderReadString();
    v19 = 48;
    goto LABEL_73;
  }

LABEL_224:
  if ([fromCopy hasError])
  {
LABEL_225:
    v78 = 0;
  }

  else
  {
LABEL_226:
    v78 = v5;
  }

  return v78;
}

- (NSString)description
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  privatizedIdentifier = [(BMCandidate *)self privatizedIdentifier];
  v52 = BMFeedbackTypeAsString([(BMCandidate *)self feedbackDeprecated]);
  privatizedTransportBundleId = [(BMCandidate *)self privatizedTransportBundleId];
  timeSinceLastOutgoingInteraction = [(BMCandidate *)self timeSinceLastOutgoingInteraction];
  timeSinceOutgoingInteractionNumber10 = [(BMCandidate *)self timeSinceOutgoingInteractionNumber10];
  timeSinceLastIncomingInteraction = [(BMCandidate *)self timeSinceLastIncomingInteraction];
  v3 = MEMORY[0x1E696AD98];
  [(BMCandidate *)self deprecatedField1];
  v47 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMCandidate *)self deprecatedField2];
  v46 = [v4 numberWithDouble:?];
  v5 = MEMORY[0x1E696AD98];
  [(BMCandidate *)self deprecatedField3];
  v45 = [v5 numberWithDouble:?];
  numberOfSharesWithConversation = [(BMCandidate *)self numberOfSharesWithConversation];
  numberOfSharesFromCurrentAppWithConversation = [(BMCandidate *)self numberOfSharesFromCurrentAppWithConversation];
  numberOfSharesOfTopDomainURLWithConversation = [(BMCandidate *)self numberOfSharesOfTopDomainURLWithConversation];
  numberOfSharesOfDetectedPeopleWithConversation = [(BMCandidate *)self numberOfSharesOfDetectedPeopleWithConversation];
  numberOfSharesOfPeopleInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoWithConversation];
  numberOfOutgoingInteractionsWithConversation = [(BMCandidate *)self numberOfOutgoingInteractionsWithConversation];
  numberOfIncomingInteractionsWithConversation = [(BMCandidate *)self numberOfIncomingInteractionsWithConversation];
  numberOfInteractionsDuringTimePeriodWithConversation = [(BMCandidate *)self numberOfInteractionsDuringTimePeriodWithConversation];
  numberOfEngagedSuggestionsWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsWithConversation];
  numberOfEngagedSuggestionsFromCurrentAppWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsFromCurrentAppWithConversation];
  numberOfEngagedSuggestionsOfTopDomainURLWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
  numberOfEngagedSuggestionsOfDetectedPeopleWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
  numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
  hasEverSharePlayedWithConversation = [(BMCandidate *)self hasEverSharePlayedWithConversation];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate suggestedRank](self, "suggestedRank")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMCandidate *)self coreMLModelScore];
  v31 = [v6 numberWithDouble:?];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate foundInChunk](self, "foundInChunk")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate updatedInChunk](self, "updatedInChunk")}];
  numberOfSharesOfPeopleInPhotoIoUWithConversation = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoIoUWithConversation];
  numberOfSharesOfPetsWithConversation = [(BMCandidate *)self numberOfSharesOfPetsWithConversation];
  numberOfSharesOfPetsInCurrentPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfPetsInCurrentPhotoWithConversation];
  numberOfSharesOfScenesInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfScenesInPhotoWithConversation];
  numberOfSharesOfDetectedScenesInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfDetectedScenesInPhotoWithConversation];
  numberOfTopicsSharedWithConversation = [(BMCandidate *)self numberOfTopicsSharedWithConversation];
  numberOfAppsSharedFromWithConversation = [(BMCandidate *)self numberOfAppsSharedFromWithConversation];
  timeSinceLastPhotoShareWithConversation = [(BMCandidate *)self timeSinceLastPhotoShareWithConversation];
  hasSharedSensitiveContentWIthConversation = [(BMCandidate *)self hasSharedSensitiveContentWIthConversation];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCandidate isInPhoneCallWithConversation](self, "isInPhoneCallWithConversation")}];
  numberOfSharesFromAlbumPhotoBelongsToWithConversation = [(BMCandidate *)self numberOfSharesFromAlbumPhotoBelongsToWithConversation];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCandidate isFirstPartyApp](self, "isFirstPartyApp")}];
  numberOfTimesSharedToTargetAppWithConversation = [(BMCandidate *)self numberOfTimesSharedToTargetAppWithConversation];
  timeSinceLastShareWithConversation = [(BMCandidate *)self timeSinceLastShareWithConversation];
  timeSinceLastPhoneCallWithConversation = [(BMCandidate *)self timeSinceLastPhoneCallWithConversation];
  numberOfDifferentFacesSharedWithConversation = [(BMCandidate *)self numberOfDifferentFacesSharedWithConversation];
  numberOfTotalSharesToTargetApp = [(BMCandidate *)self numberOfTotalSharesToTargetApp];
  v21 = [v20 initWithFormat:@"BMCandidate with privatizedIdentifier: %@, feedbackDeprecated: %@, privatizedTransportBundleId: %@, timeSinceLastOutgoingInteraction: %@, timeSinceOutgoingInteractionNumber10: %@, timeSinceLastIncomingInteraction: %@, deprecatedField1: %@, deprecatedField2: %@, deprecatedField3: %@, numberOfSharesWithConversation: %@, numberOfSharesFromCurrentAppWithConversation: %@, numberOfSharesOfTopDomainURLWithConversation: %@, numberOfSharesOfDetectedPeopleWithConversation: %@, numberOfSharesOfPeopleInPhotoWithConversation: %@, numberOfOutgoingInteractionsWithConversation: %@, numberOfIncomingInteractionsWithConversation: %@, numberOfInteractionsDuringTimePeriodWithConversation: %@, numberOfEngagedSuggestionsWithConversation: %@, numberOfEngagedSuggestionsFromCurrentAppWithConversation: %@, numberOfEngagedSuggestionsOfTopDomainURLWithConversation: %@, numberOfEngagedSuggestionsOfDetectedPeopleWithConversation: %@, numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation: %@, hasEverSharePlayedWithConversation: %@, suggestedRank: %@, coreMLModelScore: %@, foundInChunk: %@, updatedInChunk: %@, numberOfSharesOfPeopleInPhotoIoUWithConversation: %@, numberOfSharesOfPetsWithConversation: %@, numberOfSharesOfPetsInCurrentPhotoWithConversation: %@, numberOfSharesOfScenesInPhotoWithConversation: %@, numberOfSharesOfDetectedScenesInPhotoWithConversation: %@, numberOfTopicsSharedWithConversation: %@, numberOfAppsSharedFromWithConversation: %@, timeSinceLastPhotoShareWithConversation: %@, hasSharedSensitiveContentWIthConversation: %@, isInPhoneCallWithConversation: %@, numberOfSharesFromAlbumPhotoBelongsToWithConversation: %@, isFirstPartyApp: %@, numberOfTimesSharedToTargetAppWithConversation: %@, timeSinceLastShareWithConversation: %@, timeSinceLastPhoneCallWithConversation: %@, numberOfDifferentFacesSharedWithConversation: %@, numberOfTotalSharesToTargetApp: %@", privatizedIdentifier, v52, privatizedTransportBundleId, timeSinceLastOutgoingInteraction, timeSinceOutgoingInteractionNumber10, timeSinceLastIncomingInteraction, v47, v46, v45, numberOfSharesWithConversation, numberOfSharesFromCurrentAppWithConversation, numberOfSharesOfTopDomainURLWithConversation, numberOfSharesOfDetectedPeopleWithConversation, numberOfSharesOfPeopleInPhotoWithConversation, numberOfOutgoingInteractionsWithConversation, numberOfIncomingInteractionsWithConversation, numberOfInteractionsDuringTimePeriodWithConversation, numberOfEngagedSuggestionsWithConversation, numberOfEngagedSuggestionsFromCurrentAppWithConversation, numberOfEngagedSuggestionsOfTopDomainURLWithConversation, numberOfEngagedSuggestionsOfDetectedPeopleWithConversation, numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation, hasEverSharePlayedWithConversation, v18, v31, v30, v29, numberOfSharesOfPeopleInPhotoIoUWithConversation, numberOfSharesOfPetsWithConversation, numberOfSharesOfPetsInCurrentPhotoWithConversation, numberOfSharesOfScenesInPhotoWithConversation, numberOfSharesOfDetectedScenesInPhotoWithConversation, numberOfTopicsSharedWithConversation, numberOfAppsSharedFromWithConversation, timeSinceLastPhotoShareWithConversation, hasSharedSensitiveContentWIthConversation, v16, numberOfSharesFromAlbumPhotoBelongsToWithConversation, v9, numberOfTimesSharedToTargetAppWithConversation, timeSinceLastShareWithConversation, timeSinceLastPhoneCallWithConversation, numberOfDifferentFacesSharedWithConversation, numberOfTotalSharesToTargetApp];

  return v21;
}

- (BMCandidate)initWithPrivatizedIdentifier:(id)identifier feedbackDeprecated:(int)deprecated privatizedTransportBundleId:(id)id timeSinceLastOutgoingInteraction:(id)interaction timeSinceOutgoingInteractionNumber10:(id)number10 timeSinceLastIncomingInteraction:(id)incomingInteraction deprecatedField1:(id)field1 deprecatedField2:(id)self0 deprecatedField3:(id)self1 numberOfSharesWithConversation:(id)self2 numberOfSharesFromCurrentAppWithConversation:(id)self3 numberOfSharesOfTopDomainURLWithConversation:(id)self4 numberOfSharesOfDetectedPeopleWithConversation:(id)self5 numberOfSharesOfPeopleInPhotoWithConversation:(id)self6 numberOfOutgoingInteractionsWithConversation:(id)self7 numberOfIncomingInteractionsWithConversation:(id)self8 numberOfInteractionsDuringTimePeriodWithConversation:(id)self9 numberOfEngagedSuggestionsWithConversation:(id)suggestionsWithConversation numberOfEngagedSuggestionsFromCurrentAppWithConversation:(id)appWithConversation numberOfEngagedSuggestionsOfTopDomainURLWithConversation:(id)rLWithConversation numberOfEngagedSuggestionsOfDetectedPeopleWithConversation:(id)detectedPeopleWithConversation numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:(id)inPhotoWithConversation hasEverSharePlayedWithConversation:(id)playedWithConversation suggestedRank:(id)rank coreMLModelScore:(id)score foundInChunk:(id)chunk updatedInChunk:(id)inChunk numberOfSharesOfPeopleInPhotoIoUWithConversation:(id)identifier0 numberOfSharesOfPetsWithConversation:(id)identifier1 numberOfSharesOfPetsInCurrentPhotoWithConversation:(id)identifier2 numberOfSharesOfScenesInPhotoWithConversation:(id)identifier3 numberOfSharesOfDetectedScenesInPhotoWithConversation:(id)identifier4 numberOfTopicsSharedWithConversation:(id)identifier5 numberOfAppsSharedFromWithConversation:(id)identifier6 timeSinceLastPhotoShareWithConversation:(id)identifier7 hasSharedSensitiveContentWIthConversation:(id)identifier8 isInPhoneCallWithConversation:(id)identifier9 numberOfSharesFromAlbumPhotoBelongsToWithConversation:(id)deprecated0 isFirstPartyApp:(id)deprecated1 numberOfTimesSharedToTargetAppWithConversation:(id)deprecated2 timeSinceLastShareWithConversation:(id)deprecated3 timeSinceLastPhoneCallWithConversation:(id)deprecated4 numberOfDifferentFacesSharedWithConversation:(id)deprecated5 numberOfTotalSharesToTargetApp:(id)deprecated6
{
  identifierCopy = identifier;
  idCopy = id;
  idCopy2 = id;
  interactionCopy = interaction;
  interactionCopy2 = interaction;
  number10Copy = number10;
  number10Copy2 = number10;
  incomingInteractionCopy = incomingInteraction;
  incomingInteractionCopy2 = incomingInteraction;
  field1Copy = field1;
  field2Copy = field2;
  field3Copy = field3;
  conversationCopy = conversation;
  withConversationCopy = withConversation;
  lWithConversationCopy = lWithConversation;
  peopleWithConversationCopy = peopleWithConversation;
  photoWithConversationCopy = photoWithConversation;
  interactionsWithConversationCopy = interactionsWithConversation;
  incomingInteractionsWithConversationCopy = incomingInteractionsWithConversation;
  periodWithConversationCopy = periodWithConversation;
  suggestionsWithConversationCopy = suggestionsWithConversation;
  appWithConversationCopy = appWithConversation;
  rLWithConversationCopy = rLWithConversation;
  detectedPeopleWithConversationCopy = detectedPeopleWithConversation;
  inPhotoWithConversationCopy = inPhotoWithConversation;
  playedWithConversationCopy = playedWithConversation;
  rankCopy = rank;
  scoreCopy = score;
  chunkCopy = chunk;
  inChunkCopy = inChunk;
  uWithConversationCopy = uWithConversation;
  petsWithConversationCopy = petsWithConversation;
  currentPhotoWithConversationCopy = currentPhotoWithConversation;
  scenesInPhotoWithConversationCopy = scenesInPhotoWithConversation;
  detectedScenesInPhotoWithConversationCopy = detectedScenesInPhotoWithConversation;
  sharedWithConversationCopy = sharedWithConversation;
  fromWithConversationCopy = fromWithConversation;
  shareWithConversationCopy = shareWithConversation;
  ithConversationCopy = ithConversation;
  callWithConversationCopy = callWithConversation;
  toWithConversationCopy = toWithConversation;
  appCopy = app;
  targetAppWithConversationCopy = targetAppWithConversation;
  lastShareWithConversationCopy = lastShareWithConversation;
  phoneCallWithConversationCopy = phoneCallWithConversation;
  facesSharedWithConversationCopy = facesSharedWithConversation;
  v58 = inChunkCopy;
  v59 = callWithConversationCopy;
  targetAppCopy = targetApp;
  v111.receiver = self;
  v111.super_class = BMCandidate;
  v60 = [(BMEventBase *)&v111 init];
  if (v60)
  {
    v60->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v60->_privatizedIdentifier, identifier);
    v60->_feedbackDeprecated = deprecated;
    objc_storeStrong(&v60->_privatizedTransportBundleId, idCopy);
    objc_storeStrong(&v60->_timeSinceLastOutgoingInteraction, interactionCopy);
    objc_storeStrong(&v60->_timeSinceOutgoingInteractionNumber10, number10Copy);
    objc_storeStrong(&v60->_timeSinceLastIncomingInteraction, incomingInteractionCopy);
    if (field1Copy)
    {
      v60->_hasDeprecatedField1 = 1;
      [field1Copy doubleValue];
    }

    else
    {
      v60->_hasDeprecatedField1 = 0;
      v61 = -1.0;
    }

    v60->_deprecatedField1 = v61;
    if (field2Copy)
    {
      v60->_hasDeprecatedField2 = 1;
      [field2Copy doubleValue];
    }

    else
    {
      v60->_hasDeprecatedField2 = 0;
      v62 = -1.0;
    }

    v60->_deprecatedField2 = v62;
    if (field3Copy)
    {
      v60->_hasDeprecatedField3 = 1;
      [field3Copy doubleValue];
    }

    else
    {
      v60->_hasDeprecatedField3 = 0;
      v63 = -1.0;
    }

    v60->_deprecatedField3 = v63;
    objc_storeStrong(&v60->_numberOfSharesWithConversation, conversation);
    objc_storeStrong(&v60->_numberOfSharesFromCurrentAppWithConversation, withConversation);
    objc_storeStrong(&v60->_numberOfSharesOfTopDomainURLWithConversation, lWithConversation);
    objc_storeStrong(&v60->_numberOfSharesOfDetectedPeopleWithConversation, peopleWithConversation);
    objc_storeStrong(&v60->_numberOfSharesOfPeopleInPhotoWithConversation, photoWithConversation);
    objc_storeStrong(&v60->_numberOfOutgoingInteractionsWithConversation, interactionsWithConversation);
    objc_storeStrong(&v60->_numberOfIncomingInteractionsWithConversation, incomingInteractionsWithConversation);
    objc_storeStrong(&v60->_numberOfInteractionsDuringTimePeriodWithConversation, periodWithConversation);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsWithConversation, suggestionsWithConversation);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsFromCurrentAppWithConversation, appWithConversation);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation, rLWithConversation);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation, detectedPeopleWithConversation);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation, inPhotoWithConversation);
    objc_storeStrong(&v60->_hasEverSharePlayedWithConversation, playedWithConversation);
    if (rankCopy)
    {
      v60->_hasSuggestedRank = 1;
      intValue = [rankCopy intValue];
    }

    else
    {
      v60->_hasSuggestedRank = 0;
      intValue = -1;
    }

    v60->_suggestedRank = intValue;
    if (scoreCopy)
    {
      v60->_hasCoreMLModelScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v60->_hasCoreMLModelScore = 0;
      v65 = -1.0;
    }

    v60->_coreMLModelScore = v65;
    if (chunkCopy)
    {
      v60->_hasFoundInChunk = 1;
      intValue2 = [chunkCopy intValue];
    }

    else
    {
      v60->_hasFoundInChunk = 0;
      intValue2 = -1;
    }

    v60->_foundInChunk = intValue2;
    if (v58)
    {
      v60->_hasUpdatedInChunk = 1;
      intValue3 = [v58 intValue];
    }

    else
    {
      v60->_hasUpdatedInChunk = 0;
      intValue3 = -1;
    }

    v60->_updatedInChunk = intValue3;
    objc_storeStrong(&v60->_numberOfSharesOfPeopleInPhotoIoUWithConversation, uWithConversation);
    objc_storeStrong(&v60->_numberOfSharesOfPetsWithConversation, petsWithConversation);
    objc_storeStrong(&v60->_numberOfSharesOfPetsInCurrentPhotoWithConversation, currentPhotoWithConversation);
    objc_storeStrong(&v60->_numberOfSharesOfScenesInPhotoWithConversation, scenesInPhotoWithConversation);
    objc_storeStrong(&v60->_numberOfSharesOfDetectedScenesInPhotoWithConversation, detectedScenesInPhotoWithConversation);
    objc_storeStrong(&v60->_numberOfTopicsSharedWithConversation, sharedWithConversation);
    objc_storeStrong(&v60->_numberOfAppsSharedFromWithConversation, fromWithConversation);
    objc_storeStrong(&v60->_timeSinceLastPhotoShareWithConversation, shareWithConversation);
    objc_storeStrong(&v60->_hasSharedSensitiveContentWIthConversation, ithConversation);
    if (v59)
    {
      v60->_hasIsInPhoneCallWithConversation = 1;
      v60->_isInPhoneCallWithConversation = [v59 BOOLValue];
    }

    else
    {
      v60->_hasIsInPhoneCallWithConversation = 0;
      v60->_isInPhoneCallWithConversation = 0;
    }

    objc_storeStrong(&v60->_numberOfSharesFromAlbumPhotoBelongsToWithConversation, toWithConversation);
    if (appCopy)
    {
      v60->_hasIsFirstPartyApp = 1;
      v60->_isFirstPartyApp = [appCopy BOOLValue];
    }

    else
    {
      v60->_hasIsFirstPartyApp = 0;
      v60->_isFirstPartyApp = 0;
    }

    objc_storeStrong(&v60->_numberOfTimesSharedToTargetAppWithConversation, targetAppWithConversation);
    objc_storeStrong(&v60->_timeSinceLastShareWithConversation, lastShareWithConversation);
    objc_storeStrong(&v60->_timeSinceLastPhoneCallWithConversation, phoneCallWithConversation);
    objc_storeStrong(&v60->_numberOfDifferentFacesSharedWithConversation, facesSharedWithConversation);
    objc_storeStrong(&v60->_numberOfTotalSharesToTargetApp, targetApp);
  }

  return v60;
}

+ (id)protoFields
{
  v49[44] = *MEMORY[0x1E69E9840];
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privatizedIdentifier" number:1 type:13 subMessageClass:0];
  v49[0] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feedbackDeprecated" number:2 type:4 subMessageClass:0];
  v49[1] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privatizedTransportBundleId" number:3 type:13 subMessageClass:0];
  v49[2] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceLastOutgoingInteraction" number:101 type:14 subMessageClass:objc_opt_class()];
  v49[3] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceOutgoingInteractionNumber10" number:102 type:14 subMessageClass:objc_opt_class()];
  v49[4] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceLastIncomingInteraction" number:103 type:14 subMessageClass:objc_opt_class()];
  v49[5] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deprecatedField1" number:104 type:0 subMessageClass:0];
  v49[6] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deprecatedField2" number:105 type:0 subMessageClass:0];
  v49[7] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deprecatedField3" number:106 type:0 subMessageClass:0];
  v49[8] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesWithConversation" number:107 type:14 subMessageClass:objc_opt_class()];
  v49[9] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesFromCurrentAppWithConversation" number:108 type:14 subMessageClass:objc_opt_class()];
  v49[10] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfTopDomainURLWithConversation" number:109 type:14 subMessageClass:objc_opt_class()];
  v49[11] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfDetectedPeopleWithConversation" number:110 type:14 subMessageClass:objc_opt_class()];
  v49[12] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfPeopleInPhotoWithConversation" number:111 type:14 subMessageClass:objc_opt_class()];
  v49[13] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfOutgoingInteractionsWithConversation" number:112 type:14 subMessageClass:objc_opt_class()];
  v49[14] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfIncomingInteractionsWithConversation" number:113 type:14 subMessageClass:objc_opt_class()];
  v49[15] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfInteractionsDuringTimePeriodWithConversation" number:114 type:14 subMessageClass:objc_opt_class()];
  v49[16] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfEngagedSuggestionsWithConversation" number:115 type:14 subMessageClass:objc_opt_class()];
  v49[17] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfEngagedSuggestionsFromCurrentAppWithConversation" number:116 type:14 subMessageClass:objc_opt_class()];
  v49[18] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfEngagedSuggestionsOfTopDomainURLWithConversation" number:117 type:14 subMessageClass:objc_opt_class()];
  v49[19] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation" number:118 type:14 subMessageClass:objc_opt_class()];
  v49[20] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation" number:119 type:14 subMessageClass:objc_opt_class()];
  v49[21] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverSharePlayedWithConversation" number:120 type:14 subMessageClass:objc_opt_class()];
  v49[22] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestedRank" number:121 type:2 subMessageClass:0];
  v49[23] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"coreMLModelScore" number:122 type:0 subMessageClass:0];
  v49[24] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"foundInChunk" number:123 type:2 subMessageClass:0];
  v49[25] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"updatedInChunk" number:124 type:2 subMessageClass:0];
  v49[26] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfPeopleInPhotoIoUWithConversation" number:125 type:14 subMessageClass:objc_opt_class()];
  v49[27] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfPetsWithConversation" number:126 type:14 subMessageClass:objc_opt_class()];
  v49[28] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfPetsInCurrentPhotoWithConversation" number:127 type:14 subMessageClass:objc_opt_class()];
  v49[29] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfScenesInPhotoWithConversation" number:128 type:14 subMessageClass:objc_opt_class()];
  v49[30] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfDetectedScenesInPhotoWithConversation" number:129 type:14 subMessageClass:objc_opt_class()];
  v49[31] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfTopicsSharedWithConversation" number:130 type:14 subMessageClass:objc_opt_class()];
  v49[32] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfAppsSharedFromWithConversation" number:131 type:14 subMessageClass:objc_opt_class()];
  v49[33] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceLastPhotoShareWithConversation" number:132 type:14 subMessageClass:objc_opt_class()];
  v49[34] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasSharedSensitiveContentWIthConversation" number:133 type:14 subMessageClass:objc_opt_class()];
  v49[35] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isInPhoneCallWithConversation" number:134 type:12 subMessageClass:0];
  v49[36] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesFromAlbumPhotoBelongsToWithConversation" number:135 type:14 subMessageClass:objc_opt_class()];
  v49[37] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFirstPartyApp" number:136 type:12 subMessageClass:0];
  v49[38] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfTimesSharedToTargetAppWithConversation" number:137 type:14 subMessageClass:objc_opt_class()];
  v49[39] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceLastShareWithConversation" number:138 type:14 subMessageClass:objc_opt_class()];
  v49[40] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceLastPhoneCallWithConversation" number:139 type:14 subMessageClass:objc_opt_class()];
  v49[41] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfDifferentFacesSharedWithConversation" number:140 type:14 subMessageClass:objc_opt_class()];
  v49[42] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfTotalSharesToTargetApp" number:141 type:14 subMessageClass:objc_opt_class()];
  v49[43] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:44];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v49[44] = *MEMORY[0x1E69E9840];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privatizedIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"feedbackDeprecated" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privatizedTransportBundleId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceLastOutgoingInteraction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_895_86735];
  v44 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceOutgoingInteractionNumber10_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_897_86737];
  v43 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceLastIncomingInteraction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_899];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deprecatedField1" dataType:1 requestOnly:0 fieldNumber:104 protoDataType:0 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deprecatedField2" dataType:1 requestOnly:0 fieldNumber:105 protoDataType:0 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deprecatedField3" dataType:1 requestOnly:0 fieldNumber:106 protoDataType:0 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_901];
  v38 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesFromCurrentAppWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_903];
  v37 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfTopDomainURLWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_905];
  v36 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfDetectedPeopleWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_907];
  v35 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfPeopleInPhotoWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_909];
  v34 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfOutgoingInteractionsWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_911];
  v33 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfIncomingInteractionsWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_913];
  v32 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfInteractionsDuringTimePeriodWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_915];
  v31 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfEngagedSuggestionsWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_917_86748];
  v30 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfEngagedSuggestionsFromCurrentAppWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_919_86749];
  v29 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfEngagedSuggestionsOfTopDomainURLWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_921_86750];
  v28 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_923];
  v27 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_925];
  v26 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"hasEverSharePlayedWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_927];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestedRank" dataType:0 requestOnly:0 fieldNumber:121 protoDataType:2 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"coreMLModelScore" dataType:1 requestOnly:0 fieldNumber:122 protoDataType:0 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"foundInChunk" dataType:0 requestOnly:0 fieldNumber:123 protoDataType:2 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"updatedInChunk" dataType:0 requestOnly:0 fieldNumber:124 protoDataType:2 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfPeopleInPhotoIoUWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_929];
  v20 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfPetsWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_931];
  v19 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfPetsInCurrentPhotoWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_933];
  v18 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfScenesInPhotoWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_935];
  v17 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfDetectedScenesInPhotoWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_937];
  v16 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfTopicsSharedWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_939];
  v15 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfAppsSharedFromWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_941];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceLastPhotoShareWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_943];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"hasSharedSensitiveContentWIthConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_945];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isInPhoneCallWithConversation" dataType:0 requestOnly:0 fieldNumber:134 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesFromAlbumPhotoBelongsToWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_947];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFirstPartyApp" dataType:0 requestOnly:0 fieldNumber:136 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfTimesSharedToTargetAppWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_949];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceLastShareWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_951];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceLastPhoneCallWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_953];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfDifferentFacesSharedWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_955];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfTotalSharesToTargetApp_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_957];
  v49[0] = v48;
  v49[1] = v47;
  v49[2] = v46;
  v49[3] = v45;
  v49[4] = v44;
  v49[5] = v43;
  v49[6] = v42;
  v49[7] = v41;
  v49[8] = v40;
  v49[9] = v39;
  v49[10] = v38;
  v49[11] = v37;
  v49[12] = v36;
  v49[13] = v35;
  v49[14] = v34;
  v49[15] = v33;
  v49[16] = v32;
  v49[17] = v31;
  v49[18] = v30;
  v49[19] = v29;
  v49[20] = v28;
  v49[21] = v27;
  v49[22] = v26;
  v49[23] = v25;
  v49[24] = v24;
  v49[25] = v23;
  v49[26] = v22;
  v49[27] = v21;
  v49[28] = v20;
  v49[29] = v19;
  v49[30] = v18;
  v49[31] = v17;
  v49[32] = v16;
  v49[33] = v15;
  v49[34] = v2;
  v49[35] = v3;
  v49[36] = v4;
  v49[37] = v5;
  v49[38] = v14;
  v49[39] = v6;
  v49[40] = v7;
  v49[41] = v8;
  v49[42] = v13;
  v49[43] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:44];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id __22__BMCandidate_columns__block_invoke_32(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfTotalSharesToTargetApp];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_31(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfDifferentFacesSharedWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_30(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 timeSinceLastPhoneCallWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_29(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 timeSinceLastShareWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_28(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfTimesSharedToTargetAppWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_27(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfSharesFromAlbumPhotoBelongsToWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_26(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 hasSharedSensitiveContentWIthConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_25(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 timeSinceLastPhotoShareWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_24(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfAppsSharedFromWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_23(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfTopicsSharedWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_22(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfSharesOfDetectedScenesInPhotoWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_21(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfSharesOfScenesInPhotoWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_20(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfSharesOfPetsInCurrentPhotoWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_19(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfSharesOfPetsWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_18(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfSharesOfPeopleInPhotoIoUWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 hasEverSharePlayedWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfEngagedSuggestionsFromCurrentAppWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfEngagedSuggestionsWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfInteractionsDuringTimePeriodWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfIncomingInteractionsWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfOutgoingInteractionsWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfSharesOfPeopleInPhotoWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfSharesOfDetectedPeopleWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfSharesOfTopDomainURLWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfSharesFromCurrentAppWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 numberOfSharesWithConversation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 timeSinceLastIncomingInteraction];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 timeSinceOutgoingInteractionNumber10];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMCandidate_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 timeSinceLastOutgoingInteraction];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMCandidate alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end