@interface BMCandidate
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMCandidate)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMCandidate)initWithPrivatizedIdentifier:(id)a3 feedbackDeprecated:(int)a4 privatizedTransportBundleId:(id)a5 timeSinceLastOutgoingInteraction:(id)a6 timeSinceOutgoingInteractionNumber10:(id)a7 timeSinceLastIncomingInteraction:(id)a8 deprecatedField1:(id)a9 deprecatedField2:(id)a10 deprecatedField3:(id)a11 numberOfSharesWithConversation:(id)a12 numberOfSharesFromCurrentAppWithConversation:(id)a13 numberOfSharesOfTopDomainURLWithConversation:(id)a14 numberOfSharesOfDetectedPeopleWithConversation:(id)a15 numberOfSharesOfPeopleInPhotoWithConversation:(id)a16 numberOfOutgoingInteractionsWithConversation:(id)a17 numberOfIncomingInteractionsWithConversation:(id)a18 numberOfInteractionsDuringTimePeriodWithConversation:(id)a19 numberOfEngagedSuggestionsWithConversation:(id)a20 numberOfEngagedSuggestionsFromCurrentAppWithConversation:(id)a21 numberOfEngagedSuggestionsOfTopDomainURLWithConversation:(id)a22 numberOfEngagedSuggestionsOfDetectedPeopleWithConversation:(id)a23 numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:(id)a24 hasEverSharePlayedWithConversation:(id)a25 suggestedRank:(id)a26 coreMLModelScore:(id)a27 foundInChunk:(id)a28 updatedInChunk:(id)a29 numberOfSharesOfPeopleInPhotoIoUWithConversation:(id)a30 numberOfSharesOfPetsWithConversation:(id)a31 numberOfSharesOfPetsInCurrentPhotoWithConversation:(id)a32 numberOfSharesOfScenesInPhotoWithConversation:(id)a33 numberOfSharesOfDetectedScenesInPhotoWithConversation:(id)a34 numberOfTopicsSharedWithConversation:(id)a35 numberOfAppsSharedFromWithConversation:(id)a36 timeSinceLastPhotoShareWithConversation:(id)a37 hasSharedSensitiveContentWIthConversation:(id)a38 isInPhoneCallWithConversation:(id)a39 numberOfSharesFromAlbumPhotoBelongsToWithConversation:(id)a40 isFirstPartyApp:(id)a41 numberOfTimesSharedToTargetAppWithConversation:(id)a42 timeSinceLastShareWithConversation:(id)a43 timeSinceLastPhoneCallWithConversation:(id)a44 numberOfDifferentFacesSharedWithConversation:(id)a45 numberOfTotalSharesToTargetApp:(id)a46;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMCandidate

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMCandidate *)self privatizedIdentifier];
    v7 = [v5 privatizedIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMCandidate *)self privatizedIdentifier];
      v10 = [v5 privatizedIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_179;
      }
    }

    v13 = [(BMCandidate *)self feedbackDeprecated];
    if (v13 == [v5 feedbackDeprecated])
    {
      v14 = [(BMCandidate *)self privatizedTransportBundleId];
      v15 = [v5 privatizedTransportBundleId];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMCandidate *)self privatizedTransportBundleId];
        v18 = [v5 privatizedTransportBundleId];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_179;
        }
      }

      v20 = [(BMCandidate *)self timeSinceLastOutgoingInteraction];
      v21 = [v5 timeSinceLastOutgoingInteraction];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMCandidate *)self timeSinceLastOutgoingInteraction];
        v24 = [v5 timeSinceLastOutgoingInteraction];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_179;
        }
      }

      v26 = [(BMCandidate *)self timeSinceOutgoingInteractionNumber10];
      v27 = [v5 timeSinceOutgoingInteractionNumber10];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMCandidate *)self timeSinceOutgoingInteractionNumber10];
        v30 = [v5 timeSinceOutgoingInteractionNumber10];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_179;
        }
      }

      v32 = [(BMCandidate *)self timeSinceLastIncomingInteraction];
      v33 = [v5 timeSinceLastIncomingInteraction];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(BMCandidate *)self timeSinceLastIncomingInteraction];
        v36 = [v5 timeSinceLastIncomingInteraction];
        v37 = [v35 isEqual:v36];

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

      v47 = [(BMCandidate *)self numberOfSharesWithConversation];
      v48 = [v5 numberOfSharesWithConversation];
      v49 = v48;
      if (v47 == v48)
      {
      }

      else
      {
        v50 = [(BMCandidate *)self numberOfSharesWithConversation];
        v51 = [v5 numberOfSharesWithConversation];
        v52 = [v50 isEqual:v51];

        if (!v52)
        {
          goto LABEL_179;
        }
      }

      v53 = [(BMCandidate *)self numberOfSharesFromCurrentAppWithConversation];
      v54 = [v5 numberOfSharesFromCurrentAppWithConversation];
      v55 = v54;
      if (v53 == v54)
      {
      }

      else
      {
        v56 = [(BMCandidate *)self numberOfSharesFromCurrentAppWithConversation];
        v57 = [v5 numberOfSharesFromCurrentAppWithConversation];
        v58 = [v56 isEqual:v57];

        if (!v58)
        {
          goto LABEL_179;
        }
      }

      v59 = [(BMCandidate *)self numberOfSharesOfTopDomainURLWithConversation];
      v60 = [v5 numberOfSharesOfTopDomainURLWithConversation];
      v61 = v60;
      if (v59 == v60)
      {
      }

      else
      {
        v62 = [(BMCandidate *)self numberOfSharesOfTopDomainURLWithConversation];
        v63 = [v5 numberOfSharesOfTopDomainURLWithConversation];
        v64 = [v62 isEqual:v63];

        if (!v64)
        {
          goto LABEL_179;
        }
      }

      v65 = [(BMCandidate *)self numberOfSharesOfDetectedPeopleWithConversation];
      v66 = [v5 numberOfSharesOfDetectedPeopleWithConversation];
      v67 = v66;
      if (v65 == v66)
      {
      }

      else
      {
        v68 = [(BMCandidate *)self numberOfSharesOfDetectedPeopleWithConversation];
        v69 = [v5 numberOfSharesOfDetectedPeopleWithConversation];
        v70 = [v68 isEqual:v69];

        if (!v70)
        {
          goto LABEL_179;
        }
      }

      v71 = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoWithConversation];
      v72 = [v5 numberOfSharesOfPeopleInPhotoWithConversation];
      v73 = v72;
      if (v71 == v72)
      {
      }

      else
      {
        v74 = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoWithConversation];
        v75 = [v5 numberOfSharesOfPeopleInPhotoWithConversation];
        v76 = [v74 isEqual:v75];

        if (!v76)
        {
          goto LABEL_179;
        }
      }

      v77 = [(BMCandidate *)self numberOfOutgoingInteractionsWithConversation];
      v78 = [v5 numberOfOutgoingInteractionsWithConversation];
      v79 = v78;
      if (v77 == v78)
      {
      }

      else
      {
        v80 = [(BMCandidate *)self numberOfOutgoingInteractionsWithConversation];
        v81 = [v5 numberOfOutgoingInteractionsWithConversation];
        v82 = [v80 isEqual:v81];

        if (!v82)
        {
          goto LABEL_179;
        }
      }

      v83 = [(BMCandidate *)self numberOfIncomingInteractionsWithConversation];
      v84 = [v5 numberOfIncomingInteractionsWithConversation];
      v85 = v84;
      if (v83 == v84)
      {
      }

      else
      {
        v86 = [(BMCandidate *)self numberOfIncomingInteractionsWithConversation];
        v87 = [v5 numberOfIncomingInteractionsWithConversation];
        v88 = [v86 isEqual:v87];

        if (!v88)
        {
          goto LABEL_179;
        }
      }

      v89 = [(BMCandidate *)self numberOfInteractionsDuringTimePeriodWithConversation];
      v90 = [v5 numberOfInteractionsDuringTimePeriodWithConversation];
      v91 = v90;
      if (v89 == v90)
      {
      }

      else
      {
        v92 = [(BMCandidate *)self numberOfInteractionsDuringTimePeriodWithConversation];
        v93 = [v5 numberOfInteractionsDuringTimePeriodWithConversation];
        v94 = [v92 isEqual:v93];

        if (!v94)
        {
          goto LABEL_179;
        }
      }

      v95 = [(BMCandidate *)self numberOfEngagedSuggestionsWithConversation];
      v96 = [v5 numberOfEngagedSuggestionsWithConversation];
      v97 = v96;
      if (v95 == v96)
      {
      }

      else
      {
        v98 = [(BMCandidate *)self numberOfEngagedSuggestionsWithConversation];
        v99 = [v5 numberOfEngagedSuggestionsWithConversation];
        v100 = [v98 isEqual:v99];

        if (!v100)
        {
          goto LABEL_179;
        }
      }

      v101 = [(BMCandidate *)self numberOfEngagedSuggestionsFromCurrentAppWithConversation];
      v102 = [v5 numberOfEngagedSuggestionsFromCurrentAppWithConversation];
      v103 = v102;
      if (v101 == v102)
      {
      }

      else
      {
        v104 = [(BMCandidate *)self numberOfEngagedSuggestionsFromCurrentAppWithConversation];
        v105 = [v5 numberOfEngagedSuggestionsFromCurrentAppWithConversation];
        v106 = [v104 isEqual:v105];

        if (!v106)
        {
          goto LABEL_179;
        }
      }

      v107 = [(BMCandidate *)self numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
      v108 = [v5 numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
      v109 = v108;
      if (v107 == v108)
      {
      }

      else
      {
        v110 = [(BMCandidate *)self numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
        v111 = [v5 numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
        v112 = [v110 isEqual:v111];

        if (!v112)
        {
          goto LABEL_179;
        }
      }

      v113 = [(BMCandidate *)self numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
      v114 = [v5 numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
      v115 = v114;
      if (v113 == v114)
      {
      }

      else
      {
        v116 = [(BMCandidate *)self numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
        v117 = [v5 numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
        v118 = [v116 isEqual:v117];

        if (!v118)
        {
          goto LABEL_179;
        }
      }

      v119 = [(BMCandidate *)self numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
      v120 = [v5 numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
      v121 = v120;
      if (v119 == v120)
      {
      }

      else
      {
        v122 = [(BMCandidate *)self numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
        v123 = [v5 numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
        v124 = [v122 isEqual:v123];

        if (!v124)
        {
          goto LABEL_179;
        }
      }

      v125 = [(BMCandidate *)self hasEverSharePlayedWithConversation];
      v126 = [v5 hasEverSharePlayedWithConversation];
      v127 = v126;
      if (v125 == v126)
      {
      }

      else
      {
        v128 = [(BMCandidate *)self hasEverSharePlayedWithConversation];
        v129 = [v5 hasEverSharePlayedWithConversation];
        v130 = [v128 isEqual:v129];

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

        v131 = [(BMCandidate *)self suggestedRank];
        if (v131 != [v5 suggestedRank])
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

        v135 = [(BMCandidate *)self foundInChunk];
        if (v135 != [v5 foundInChunk])
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

        v136 = [(BMCandidate *)self updatedInChunk];
        if (v136 != [v5 updatedInChunk])
        {
          goto LABEL_179;
        }
      }

      v137 = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoIoUWithConversation];
      v138 = [v5 numberOfSharesOfPeopleInPhotoIoUWithConversation];
      v139 = v138;
      if (v137 == v138)
      {
      }

      else
      {
        v140 = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoIoUWithConversation];
        v141 = [v5 numberOfSharesOfPeopleInPhotoIoUWithConversation];
        v142 = [v140 isEqual:v141];

        if (!v142)
        {
          goto LABEL_179;
        }
      }

      v143 = [(BMCandidate *)self numberOfSharesOfPetsWithConversation];
      v144 = [v5 numberOfSharesOfPetsWithConversation];
      v145 = v144;
      if (v143 == v144)
      {
      }

      else
      {
        v146 = [(BMCandidate *)self numberOfSharesOfPetsWithConversation];
        v147 = [v5 numberOfSharesOfPetsWithConversation];
        v148 = [v146 isEqual:v147];

        if (!v148)
        {
          goto LABEL_179;
        }
      }

      v149 = [(BMCandidate *)self numberOfSharesOfPetsInCurrentPhotoWithConversation];
      v150 = [v5 numberOfSharesOfPetsInCurrentPhotoWithConversation];
      v151 = v150;
      if (v149 == v150)
      {
      }

      else
      {
        v152 = [(BMCandidate *)self numberOfSharesOfPetsInCurrentPhotoWithConversation];
        v153 = [v5 numberOfSharesOfPetsInCurrentPhotoWithConversation];
        v154 = [v152 isEqual:v153];

        if (!v154)
        {
          goto LABEL_179;
        }
      }

      v155 = [(BMCandidate *)self numberOfSharesOfScenesInPhotoWithConversation];
      v156 = [v5 numberOfSharesOfScenesInPhotoWithConversation];
      v157 = v156;
      if (v155 == v156)
      {
      }

      else
      {
        v158 = [(BMCandidate *)self numberOfSharesOfScenesInPhotoWithConversation];
        v159 = [v5 numberOfSharesOfScenesInPhotoWithConversation];
        v160 = [v158 isEqual:v159];

        if (!v160)
        {
          goto LABEL_179;
        }
      }

      v161 = [(BMCandidate *)self numberOfSharesOfDetectedScenesInPhotoWithConversation];
      v162 = [v5 numberOfSharesOfDetectedScenesInPhotoWithConversation];
      v163 = v162;
      if (v161 == v162)
      {
      }

      else
      {
        v164 = [(BMCandidate *)self numberOfSharesOfDetectedScenesInPhotoWithConversation];
        v165 = [v5 numberOfSharesOfDetectedScenesInPhotoWithConversation];
        v166 = [v164 isEqual:v165];

        if (!v166)
        {
          goto LABEL_179;
        }
      }

      v167 = [(BMCandidate *)self numberOfTopicsSharedWithConversation];
      v168 = [v5 numberOfTopicsSharedWithConversation];
      v169 = v168;
      if (v167 == v168)
      {
      }

      else
      {
        v170 = [(BMCandidate *)self numberOfTopicsSharedWithConversation];
        v171 = [v5 numberOfTopicsSharedWithConversation];
        v172 = [v170 isEqual:v171];

        if (!v172)
        {
          goto LABEL_179;
        }
      }

      v173 = [(BMCandidate *)self numberOfAppsSharedFromWithConversation];
      v174 = [v5 numberOfAppsSharedFromWithConversation];
      v175 = v174;
      if (v173 == v174)
      {
      }

      else
      {
        v176 = [(BMCandidate *)self numberOfAppsSharedFromWithConversation];
        v177 = [v5 numberOfAppsSharedFromWithConversation];
        v178 = [v176 isEqual:v177];

        if (!v178)
        {
          goto LABEL_179;
        }
      }

      v179 = [(BMCandidate *)self timeSinceLastPhotoShareWithConversation];
      v180 = [v5 timeSinceLastPhotoShareWithConversation];
      v181 = v180;
      if (v179 == v180)
      {
      }

      else
      {
        v182 = [(BMCandidate *)self timeSinceLastPhotoShareWithConversation];
        v183 = [v5 timeSinceLastPhotoShareWithConversation];
        v184 = [v182 isEqual:v183];

        if (!v184)
        {
          goto LABEL_179;
        }
      }

      v185 = [(BMCandidate *)self hasSharedSensitiveContentWIthConversation];
      v186 = [v5 hasSharedSensitiveContentWIthConversation];
      v187 = v186;
      if (v185 == v186)
      {
      }

      else
      {
        v188 = [(BMCandidate *)self hasSharedSensitiveContentWIthConversation];
        v189 = [v5 hasSharedSensitiveContentWIthConversation];
        v190 = [v188 isEqual:v189];

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

        v191 = [(BMCandidate *)self isInPhoneCallWithConversation];
        if (v191 != [v5 isInPhoneCallWithConversation])
        {
          goto LABEL_179;
        }
      }

      v192 = [(BMCandidate *)self numberOfSharesFromAlbumPhotoBelongsToWithConversation];
      v193 = [v5 numberOfSharesFromAlbumPhotoBelongsToWithConversation];
      v194 = v193;
      if (v192 == v193)
      {
      }

      else
      {
        v195 = [(BMCandidate *)self numberOfSharesFromAlbumPhotoBelongsToWithConversation];
        v196 = [v5 numberOfSharesFromAlbumPhotoBelongsToWithConversation];
        v197 = [v195 isEqual:v196];

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

        v198 = [(BMCandidate *)self isFirstPartyApp];
        if (v198 != [v5 isFirstPartyApp])
        {
          goto LABEL_179;
        }
      }

      v199 = [(BMCandidate *)self numberOfTimesSharedToTargetAppWithConversation];
      v200 = [v5 numberOfTimesSharedToTargetAppWithConversation];
      v201 = v200;
      if (v199 == v200)
      {
      }

      else
      {
        v202 = [(BMCandidate *)self numberOfTimesSharedToTargetAppWithConversation];
        v203 = [v5 numberOfTimesSharedToTargetAppWithConversation];
        v204 = [v202 isEqual:v203];

        if (!v204)
        {
          goto LABEL_179;
        }
      }

      v205 = [(BMCandidate *)self timeSinceLastShareWithConversation];
      v206 = [v5 timeSinceLastShareWithConversation];
      v207 = v206;
      if (v205 == v206)
      {
      }

      else
      {
        v208 = [(BMCandidate *)self timeSinceLastShareWithConversation];
        v209 = [v5 timeSinceLastShareWithConversation];
        v210 = [v208 isEqual:v209];

        if (!v210)
        {
          goto LABEL_179;
        }
      }

      v211 = [(BMCandidate *)self timeSinceLastPhoneCallWithConversation];
      v212 = [v5 timeSinceLastPhoneCallWithConversation];
      v213 = v212;
      if (v211 == v212)
      {
      }

      else
      {
        v214 = [(BMCandidate *)self timeSinceLastPhoneCallWithConversation];
        v215 = [v5 timeSinceLastPhoneCallWithConversation];
        v216 = [v214 isEqual:v215];

        if (!v216)
        {
          goto LABEL_179;
        }
      }

      v217 = [(BMCandidate *)self numberOfDifferentFacesSharedWithConversation];
      v218 = [v5 numberOfDifferentFacesSharedWithConversation];
      v219 = v218;
      if (v217 == v218)
      {
      }

      else
      {
        v220 = [(BMCandidate *)self numberOfDifferentFacesSharedWithConversation];
        v221 = [v5 numberOfDifferentFacesSharedWithConversation];
        v222 = [v220 isEqual:v221];

        if (!v222)
        {
          goto LABEL_179;
        }
      }

      v224 = [(BMCandidate *)self numberOfTotalSharesToTargetApp];
      v225 = [v5 numberOfTotalSharesToTargetApp];
      if (v224 == v225)
      {
        v12 = 1;
      }

      else
      {
        v226 = [(BMCandidate *)self numberOfTotalSharesToTargetApp];
        v227 = [v5 numberOfTotalSharesToTargetApp];
        v12 = [v226 isEqual:v227];
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
  v3 = [(BMCandidate *)self privatizedIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate feedbackDeprecated](self, "feedbackDeprecated")}];
  v5 = [(BMCandidate *)self privatizedTransportBundleId];
  v6 = [(BMCandidate *)self timeSinceLastOutgoingInteraction];
  v7 = [v6 jsonDictionary];

  v8 = [(BMCandidate *)self timeSinceOutgoingInteractionNumber10];
  v9 = [v8 jsonDictionary];

  v10 = [(BMCandidate *)self timeSinceLastIncomingInteraction];
  v147 = [v10 jsonDictionary];

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

  v18 = [(BMCandidate *)self numberOfSharesWithConversation];
  v181 = [v18 jsonDictionary];

  v19 = [(BMCandidate *)self numberOfSharesFromCurrentAppWithConversation];
  v180 = [v19 jsonDictionary];

  v20 = [(BMCandidate *)self numberOfSharesOfTopDomainURLWithConversation];
  v179 = [v20 jsonDictionary];

  v21 = [(BMCandidate *)self numberOfSharesOfDetectedPeopleWithConversation];
  v178 = [v21 jsonDictionary];

  v22 = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoWithConversation];
  v177 = [v22 jsonDictionary];

  v23 = [(BMCandidate *)self numberOfOutgoingInteractionsWithConversation];
  v176 = [v23 jsonDictionary];

  v24 = [(BMCandidate *)self numberOfIncomingInteractionsWithConversation];
  v175 = [v24 jsonDictionary];

  v25 = [(BMCandidate *)self numberOfInteractionsDuringTimePeriodWithConversation];
  v174 = [v25 jsonDictionary];

  v26 = [(BMCandidate *)self numberOfEngagedSuggestionsWithConversation];
  v173 = [v26 jsonDictionary];

  v27 = [(BMCandidate *)self numberOfEngagedSuggestionsFromCurrentAppWithConversation];
  v172 = [v27 jsonDictionary];

  v28 = [(BMCandidate *)self numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
  v171 = [v28 jsonDictionary];

  v29 = [(BMCandidate *)self numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
  v170 = [v29 jsonDictionary];

  v30 = [(BMCandidate *)self numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
  v169 = [v30 jsonDictionary];

  v31 = [(BMCandidate *)self hasEverSharePlayedWithConversation];
  v168 = [v31 jsonDictionary];

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

  v34 = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoIoUWithConversation];
  v163 = [v34 jsonDictionary];

  v35 = [(BMCandidate *)self numberOfSharesOfPetsWithConversation];
  v162 = [v35 jsonDictionary];

  v36 = [(BMCandidate *)self numberOfSharesOfPetsInCurrentPhotoWithConversation];
  v161 = [v36 jsonDictionary];

  v37 = [(BMCandidate *)self numberOfSharesOfScenesInPhotoWithConversation];
  v160 = [v37 jsonDictionary];

  v38 = [(BMCandidate *)self numberOfSharesOfDetectedScenesInPhotoWithConversation];
  v159 = [v38 jsonDictionary];

  v39 = [(BMCandidate *)self numberOfTopicsSharedWithConversation];
  v158 = [v39 jsonDictionary];

  v40 = [(BMCandidate *)self numberOfAppsSharedFromWithConversation];
  v157 = [v40 jsonDictionary];

  v41 = [(BMCandidate *)self timeSinceLastPhotoShareWithConversation];
  v156 = [v41 jsonDictionary];

  v42 = [(BMCandidate *)self hasSharedSensitiveContentWIthConversation];
  v155 = [v42 jsonDictionary];

  if ([(BMCandidate *)self hasIsInPhoneCallWithConversation])
  {
    v154 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCandidate isInPhoneCallWithConversation](self, "isInPhoneCallWithConversation")}];
  }

  else
  {
    v154 = 0;
  }

  v43 = [(BMCandidate *)self numberOfSharesFromAlbumPhotoBelongsToWithConversation];
  v153 = [v43 jsonDictionary];

  if ([(BMCandidate *)self hasIsFirstPartyApp])
  {
    v152 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCandidate isFirstPartyApp](self, "isFirstPartyApp")}];
  }

  else
  {
    v152 = 0;
  }

  v44 = [(BMCandidate *)self numberOfTimesSharedToTargetAppWithConversation];
  v151 = [v44 jsonDictionary];

  v45 = [(BMCandidate *)self timeSinceLastShareWithConversation];
  v150 = [v45 jsonDictionary];

  v46 = [(BMCandidate *)self timeSinceLastPhoneCallWithConversation];
  v149 = [v46 jsonDictionary];

  v47 = [(BMCandidate *)self numberOfDifferentFacesSharedWithConversation];
  v148 = [v47 jsonDictionary];

  v48 = [(BMCandidate *)self numberOfTotalSharesToTargetApp];
  v49 = [v48 jsonDictionary];

  v184[0] = @"privatizedIdentifier";
  v50 = v3;
  if (!v3)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v140 = v50;
  v185[0] = v50;
  v184[1] = @"feedbackDeprecated";
  v51 = v4;
  if (!v4)
  {
    v51 = [MEMORY[0x1E695DFB0] null];
  }

  v139 = v51;
  v185[1] = v51;
  v184[2] = @"privatizedTransportBundleId";
  v52 = v5;
  if (!v5)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
  }

  v138 = v52;
  v185[2] = v52;
  v184[3] = @"timeSinceLastOutgoingInteraction";
  v53 = v7;
  if (!v7)
  {
    v53 = [MEMORY[0x1E695DFB0] null];
  }

  v137 = v53;
  v185[3] = v53;
  v184[4] = @"timeSinceOutgoingInteractionNumber10";
  v54 = v9;
  v55 = v9;
  if (!v9)
  {
    v54 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v7;
  v136 = v54;
  v185[4] = v54;
  v184[5] = @"timeSinceLastIncomingInteraction";
  v57 = v147;
  if (!v147)
  {
    v57 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v3;
  v135 = v57;
  v185[5] = v57;
  v184[6] = @"deprecatedField1";
  v59 = v13;
  if (!v13)
  {
    v59 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v4;
  v134 = v59;
  v185[6] = v59;
  v184[7] = @"deprecatedField2";
  v61 = v183;
  if (!v183)
  {
    v61 = [MEMORY[0x1E695DFB0] null];
  }

  v185[7] = v61;
  v184[8] = @"deprecatedField3";
  v62 = v182;
  if (!v182)
  {
    v62 = [MEMORY[0x1E695DFB0] null];
  }

  v185[8] = v62;
  v184[9] = @"numberOfSharesWithConversation";
  v63 = v181;
  if (!v181)
  {
    v63 = [MEMORY[0x1E695DFB0] null];
  }

  v142 = v63;
  v185[9] = v63;
  v184[10] = @"numberOfSharesFromCurrentAppWithConversation";
  v64 = v180;
  if (!v180)
  {
    v64 = [MEMORY[0x1E695DFB0] null];
  }

  v132 = v64;
  v185[10] = v64;
  v184[11] = @"numberOfSharesOfTopDomainURLWithConversation";
  v65 = v179;
  if (!v179)
  {
    v65 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v65;
  v185[11] = v65;
  v184[12] = @"numberOfSharesOfDetectedPeopleWithConversation";
  v67 = v178;
  if (!v178)
  {
    v67 = [MEMORY[0x1E695DFB0] null];
  }

  v131 = v67;
  v185[12] = v67;
  v184[13] = @"numberOfSharesOfPeopleInPhotoWithConversation";
  v68 = v177;
  if (!v177)
  {
    v68 = [MEMORY[0x1E695DFB0] null];
  }

  v130 = v68;
  v185[13] = v68;
  v184[14] = @"numberOfOutgoingInteractionsWithConversation";
  v69 = v176;
  if (!v176)
  {
    v69 = [MEMORY[0x1E695DFB0] null];
  }

  v129 = v69;
  v185[14] = v69;
  v184[15] = @"numberOfIncomingInteractionsWithConversation";
  v70 = v175;
  if (!v175)
  {
    v70 = [MEMORY[0x1E695DFB0] null];
  }

  v128 = v70;
  v185[15] = v70;
  v184[16] = @"numberOfInteractionsDuringTimePeriodWithConversation";
  v71 = v174;
  if (!v174)
  {
    v71 = [MEMORY[0x1E695DFB0] null];
  }

  v127 = v71;
  v185[16] = v71;
  v184[17] = @"numberOfEngagedSuggestionsWithConversation";
  v72 = v173;
  if (!v173)
  {
    v72 = [MEMORY[0x1E695DFB0] null];
  }

  v126 = v72;
  v185[17] = v72;
  v184[18] = @"numberOfEngagedSuggestionsFromCurrentAppWithConversation";
  v73 = v172;
  if (!v172)
  {
    v73 = [MEMORY[0x1E695DFB0] null];
  }

  v125 = v73;
  v185[18] = v73;
  v184[19] = @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation";
  v74 = v171;
  if (!v171)
  {
    v74 = [MEMORY[0x1E695DFB0] null];
  }

  v124 = v74;
  v185[19] = v74;
  v184[20] = @"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation";
  v75 = v170;
  if (!v170)
  {
    v75 = [MEMORY[0x1E695DFB0] null];
  }

  v123 = v75;
  v185[20] = v75;
  v184[21] = @"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation";
  v76 = v169;
  if (!v169)
  {
    v76 = [MEMORY[0x1E695DFB0] null];
  }

  v122 = v76;
  v185[21] = v76;
  v184[22] = @"hasEverSharePlayedWithConversation";
  v77 = v168;
  if (!v168)
  {
    v77 = [MEMORY[0x1E695DFB0] null];
  }

  v121 = v77;
  v185[22] = v77;
  v184[23] = @"suggestedRank";
  v78 = v167;
  if (!v167)
  {
    v78 = [MEMORY[0x1E695DFB0] null];
  }

  v120 = v78;
  v185[23] = v78;
  v184[24] = @"coreMLModelScore";
  v79 = v166;
  if (!v166)
  {
    v79 = [MEMORY[0x1E695DFB0] null];
  }

  v119 = v79;
  v185[24] = v79;
  v184[25] = @"foundInChunk";
  v80 = v165;
  if (!v165)
  {
    v80 = [MEMORY[0x1E695DFB0] null];
  }

  v118 = v80;
  v185[25] = v80;
  v184[26] = @"updatedInChunk";
  v81 = v164;
  if (!v164)
  {
    v81 = [MEMORY[0x1E695DFB0] null];
  }

  v117 = v81;
  v185[26] = v81;
  v184[27] = @"numberOfSharesOfPeopleInPhotoIoUWithConversation";
  v82 = v163;
  if (!v163)
  {
    v82 = [MEMORY[0x1E695DFB0] null];
  }

  v116 = v82;
  v185[27] = v82;
  v184[28] = @"numberOfSharesOfPetsWithConversation";
  v83 = v162;
  if (!v162)
  {
    v83 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = v83;
  v185[28] = v83;
  v184[29] = @"numberOfSharesOfPetsInCurrentPhotoWithConversation";
  v84 = v161;
  if (!v161)
  {
    v84 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = v84;
  v185[29] = v84;
  v184[30] = @"numberOfSharesOfScenesInPhotoWithConversation";
  v85 = v160;
  if (!v160)
  {
    v85 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = v85;
  v185[30] = v85;
  v184[31] = @"numberOfSharesOfDetectedScenesInPhotoWithConversation";
  v86 = v159;
  if (!v159)
  {
    v86 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = v86;
  v185[31] = v86;
  v184[32] = @"numberOfTopicsSharedWithConversation";
  v87 = v158;
  if (!v158)
  {
    v87 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = v87;
  v185[32] = v87;
  v184[33] = @"numberOfAppsSharedFromWithConversation";
  v88 = v157;
  if (!v157)
  {
    v88 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = v88;
  v185[33] = v88;
  v184[34] = @"timeSinceLastPhotoShareWithConversation";
  v89 = v156;
  if (!v156)
  {
    v89 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = v89;
  v185[34] = v89;
  v184[35] = @"hasSharedSensitiveContentWIthConversation";
  v90 = v155;
  if (!v155)
  {
    v90 = [MEMORY[0x1E695DFB0] null];
  }

  v145 = v5;
  v108 = v90;
  v185[35] = v90;
  v184[36] = @"isInPhoneCallWithConversation";
  v91 = v154;
  if (!v154)
  {
    v91 = [MEMORY[0x1E695DFB0] null];
  }

  v107 = v91;
  v185[36] = v91;
  v184[37] = @"numberOfSharesFromAlbumPhotoBelongsToWithConversation";
  v92 = v153;
  if (!v153)
  {
    v92 = [MEMORY[0x1E695DFB0] null];
  }

  v133 = v61;
  v106 = v92;
  v185[37] = v92;
  v184[38] = @"isFirstPartyApp";
  v93 = v152;
  if (!v152)
  {
    v93 = [MEMORY[0x1E695DFB0] null];
  }

  v146 = v49;
  v104 = v93;
  v185[38] = v93;
  v184[39] = @"numberOfTimesSharedToTargetAppWithConversation";
  v94 = v151;
  if (!v151)
  {
    v94 = [MEMORY[0x1E695DFB0] null];
  }

  v143 = v55;
  v144 = v13;
  v185[39] = v94;
  v184[40] = @"timeSinceLastShareWithConversation";
  v95 = v150;
  if (!v150)
  {
    v95 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = v58;
  v185[40] = v95;
  v184[41] = @"timeSinceLastPhoneCallWithConversation";
  v97 = v149;
  if (!v149)
  {
    v97 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = v60;
  v185[41] = v97;
  v184[42] = @"numberOfDifferentFacesSharedWithConversation";
  v99 = v148;
  if (!v148)
  {
    v99 = [MEMORY[0x1E695DFB0] null];
  }

  v185[42] = v99;
  v184[43] = @"numberOfTotalSharesToTargetApp";
  v100 = v146;
  if (!v146)
  {
    v100 = [MEMORY[0x1E695DFB0] null];
  }

  v185[43] = v100;
  v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v185 forKeys:v184 count:{44, v104}];
  if (!v146)
  {
  }

  v101 = v66;
  if (!v148)
  {

    v101 = v66;
  }

  if (!v149)
  {

    v101 = v66;
  }

  if (!v150)
  {

    v101 = v66;
  }

  if (!v151)
  {

    v101 = v66;
  }

  if (!v152)
  {

    v101 = v66;
  }

  if (!v153)
  {

    v101 = v66;
  }

  if (!v154)
  {

    v101 = v66;
  }

  if (!v155)
  {

    v101 = v66;
  }

  if (!v156)
  {

    v101 = v66;
  }

  if (!v157)
  {

    v101 = v66;
  }

  if (!v158)
  {

    v101 = v66;
  }

  if (!v159)
  {

    v101 = v66;
  }

  if (!v160)
  {

    v101 = v66;
  }

  if (!v161)
  {

    v101 = v66;
  }

  if (!v162)
  {

    v101 = v66;
  }

  if (!v163)
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

  if (!v168)
  {

    v101 = v66;
  }

  if (!v169)
  {

    v101 = v66;
  }

  if (!v170)
  {

    v101 = v66;
  }

  if (!v171)
  {

    v101 = v66;
  }

  if (!v172)
  {

    v101 = v66;
  }

  if (!v173)
  {

    v101 = v66;
  }

  if (!v174)
  {

    v101 = v66;
  }

  if (!v175)
  {

    v101 = v66;
  }

  if (!v176)
  {

    v101 = v66;
  }

  if (!v177)
  {

    v101 = v66;
  }

  if (!v178)
  {

    v101 = v66;
  }

  if (!v179)
  {
  }

  if (!v180)
  {
  }

  if (!v181)
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
      if (v147)
      {
        goto LABEL_195;
      }

      goto LABEL_205;
    }
  }

  if (v147)
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

- (BMCandidate)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v645[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"privatizedIdentifier"];
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
    v9 = [v6 objectForKeyedSubscript:@"feedbackDeprecated"];
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
      v19 = [v6 objectForKeyedSubscript:@"privatizedTransportBundleId"];
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
        v21 = [v6 objectForKeyedSubscript:@"timeSinceLastOutgoingInteraction"];
        if (!v21 || (v22 = *(v8 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v519 = 0;
LABEL_22:
          v23 = [v6 objectForKeyedSubscript:@"timeSinceOutgoingInteractionNumber10"];
          v518 = self;
          if (v23 && (v24 = *(v8 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v475 = v11;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!a4)
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
              v57 = a4;
              v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceOutgoingInteractionNumber10"];
              v637 = v58;
              v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v637 forKeys:&v636 count:1];
              a4 = 0;
              *v57 = [v500 initWithDomain:v498 code:2 userInfo:v59];
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
              if (a4)
              {
                v45 = v45;
                *a4 = v45;
              }

              a4 = 0;
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

          v26 = [v6 objectForKeyedSubscript:@"timeSinceLastIncomingInteraction"];
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
              if (a4)
              {
                v53 = v53;
                *a4 = v53;
              }

              p_isa = 0;
              v54 = v28;
              v7 = v517;
              goto LABEL_550;
            }

LABEL_28:
            v29 = [v6 objectForKeyedSubscript:@"deprecatedField1"];
            v471 = v29;
            if (v29 && (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!a4)
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
                v131 = a4;
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
                *v131 = [v503 initWithDomain:v133 code:2 userInfo:?];
                v46 = v521;
                goto LABEL_197;
              }

              v497 = v30;
            }

            else
            {
              v497 = 0;
            }

            v31 = [v6 objectForKeyedSubscript:@"deprecatedField2"];
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
              v36 = [v6 objectForKeyedSubscript:@"deprecatedField3"];
              v467 = v28;
              v469 = v36;
              v472 = a4;
              if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v461 = 0;
LABEL_37:
                v38 = [v6 objectForKeyedSubscript:@"numberOfSharesWithConversation"];
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
                v502 = v6;
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
                    if (v472)
                    {
                      v124 = v124;
                      *v472 = v124;
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
                  v64 = [v6 objectForKeyedSubscript:@"numberOfSharesFromCurrentAppWithConversation"];
                  v459 = v64;
                  if (v64 && (v65 = v64, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    v453 = v26;
                    v465 = v23;
                    v504 = v6;
                    v134 = v11;
                    v135 = v7;
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!v472)
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
                      *v472 = [v171 initWithDomain:v172 code:2 userInfo:v173];
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
                      if (v472)
                      {
                        v139 = v139;
                        *v472 = v139;
                      }

                      p_isa = 0;
                      v21 = v460;
                      v6 = v504;
                      v23 = v465;
                      v66 = v140;
                      v54 = v467;
                      goto LABEL_543;
                    }

                    v450 = v138;

                    v21 = v460;
                    v6 = v504;
                    v23 = v465;
                    v54 = v467;
                  }

                  else
                  {
                    v450 = 0;
                  }

                  v66 = [v6 objectForKeyedSubscript:@"numberOfSharesOfTopDomainURLWithConversation"];
                  if (!v66 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v67 = 0;
LABEL_78:
                    v68 = [v6 objectForKeyedSubscript:@"numberOfSharesOfDetectedPeopleWithConversation"];
                    if (!v68 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v462 = v23;
                      v446 = 0;
LABEL_81:
                      v69 = [v6 objectForKeyedSubscript:@"numberOfSharesOfPeopleInPhotoWithConversation"];
                      v447 = v69;
                      if (!v69 || (v70 = v69, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v443 = 0;
LABEL_84:
                        v71 = [v6 objectForKeyedSubscript:@"numberOfOutgoingInteractionsWithConversation"];
                        v444 = v71;
                        if (!v71 || (v72 = v71, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v440 = 0;
LABEL_87:
                          v73 = [v6 objectForKeyedSubscript:@"numberOfIncomingInteractionsWithConversation"];
                          v441 = v73;
                          if (!v73 || (v74 = v73, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v437 = 0;
LABEL_90:
                            v75 = [v6 objectForKeyedSubscript:@"numberOfInteractionsDuringTimePeriodWithConversation"];
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
                                if (v472)
                                {
                                  v201 = v201;
                                  *v472 = v201;
                                }

                                p_isa = 0;
                                v138 = v450;
LABEL_283:
                                v23 = v462;
                                goto LABEL_537;
                              }

LABEL_93:
                              v77 = [v6 objectForKeyedSubscript:@"numberOfEngagedSuggestionsWithConversation"];
                              v433 = v77;
                              if (!v77 || (v78 = v77, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v429 = 0;
LABEL_96:
                                v79 = [v6 objectForKeyedSubscript:@"numberOfEngagedSuggestionsFromCurrentAppWithConversation"];
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
                                    if (v472)
                                    {
                                      v214 = v214;
                                      *v472 = v214;
                                    }

                                    p_isa = 0;
                                    v138 = v450;
LABEL_298:
                                    v23 = v462;
                                    goto LABEL_535;
                                  }

LABEL_99:
                                  v81 = [v6 objectForKeyedSubscript:@"numberOfEngagedSuggestionsOfTopDomainURLWithConversation"];
                                  v426 = v81;
                                  if (!v81 || (v82 = v81, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v422 = 0;
LABEL_102:
                                    v83 = [v6 objectForKeyedSubscript:@"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation"];
                                    v423 = v83;
                                    if (!v83 || (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v419 = 0;
LABEL_105:
                                      v85 = [v6 objectForKeyedSubscript:@"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation"];
                                      v23 = v462;
                                      v420 = v85;
                                      if (!v85 || (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v417 = 0;
LABEL_108:
                                        v87 = [v6 objectForKeyedSubscript:@"hasEverSharePlayedWithConversation"];
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
                                            if (v472)
                                            {
                                              v244 = v244;
                                              *v472 = v244;
                                            }

                                            p_isa = 0;
                                            v138 = v450;
                                            v245 = v414;
                                            goto LABEL_531;
                                          }

LABEL_111:
                                          v89 = [v6 objectForKeyedSubscript:@"suggestedRank"];
                                          v415 = v89;
                                          if (v89 && (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                          {
                                            objc_opt_class();
                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                            {
                                              if (!v472)
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
                                              *v472 = v265;
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

                                          v91 = [v6 objectForKeyedSubscript:@"coreMLModelScore"];
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
                                            v93 = [v6 objectForKeyedSubscript:@"foundInChunk"];
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
                                              v95 = [v6 objectForKeyedSubscript:@"updatedInChunk"];
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
                                                v97 = [v6 objectForKeyedSubscript:@"numberOfSharesOfPeopleInPhotoIoUWithConversation"];
                                                v405 = v97;
                                                if (!v97 || (v98 = v97, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v406 = 0;
LABEL_126:
                                                  v99 = [v6 objectForKeyedSubscript:@"numberOfSharesOfPetsWithConversation"];
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
                                                      v284 = v6;
                                                      if (!v472)
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
                                                      *v472 = [v285 initWithDomain:v286 code:2 userInfo:v101];
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
                                                      if (v472)
                                                      {
                                                        v271 = v271;
                                                        *v472 = v271;
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

                                                  v101 = [v6 objectForKeyedSubscript:@"numberOfSharesOfPetsInCurrentPhotoWithConversation"];
                                                  if (!v101 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v401 = 0;
LABEL_132:
                                                    v102 = [v6 objectForKeyedSubscript:@"numberOfSharesOfScenesInPhotoWithConversation"];
                                                    v398 = v101;
                                                    v402 = v102;
                                                    if (!v102 || (v103 = v102, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v399 = 0;
LABEL_135:
                                                      v104 = [v6 objectForKeyedSubscript:@"numberOfSharesOfDetectedScenesInPhotoWithConversation"];
                                                      v400 = v104;
                                                      if (!v104 || (v105 = v104, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v397 = 0;
                                                        goto LABEL_138;
                                                      }

                                                      v287 = v6;
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
                                                          if (v472)
                                                          {
                                                            v290 = v290;
                                                            *v472 = v290;
                                                          }

                                                          p_isa = 0;
                                                          v46 = v521;
                                                          v6 = v287;
                                                          goto LABEL_447;
                                                        }

                                                        v6 = v287;
LABEL_138:
                                                        [v6 objectForKeyedSubscript:@"numberOfTopicsSharedWithConversation"];
                                                        v501 = v451 = v26;
                                                        if (v501)
                                                        {
                                                          v106 = v443;
                                                          objc_opt_class();
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            v107 = v6;
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
                                                                if (v472)
                                                                {
                                                                  v110 = v110;
                                                                  *v472 = v110;
                                                                }

                                                                goto LABEL_423;
                                                              }

                                                              v6 = v107;
                                                              v106 = v443;
LABEL_354:
                                                              [v6 objectForKeyedSubscript:@"numberOfAppsSharedFromWithConversation"];
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

                                                              v107 = v6;
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

                                                                  v6 = v107;
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
                                                                  v394 = [v6 objectForKeyedSubscript:@"timeSinceLastPhotoShareWithConversation"];
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
                                                                          if (v472)
                                                                          {
                                                                            v304 = v304;
                                                                            *v472 = v304;
                                                                          }

                                                                          goto LABEL_442;
                                                                        }

LABEL_379:
                                                                        v313 = [v6 objectForKeyedSubscript:@"hasSharedSensitiveContentWIthConversation"];
                                                                        v525 = v300;
                                                                        if (v313 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                        {
                                                                          objc_opt_class();
                                                                          v303 = v313;
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            if (!v472)
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
                                                                            *v472 = [v334 initWithDomain:v335 code:2 userInfo:v323];
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
                                                                            if (v472)
                                                                            {
                                                                              v325 = v325;
                                                                              *v472 = v325;
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

                                                                        v314 = v6;
                                                                        v391 = [v6 objectForKeyedSubscript:@"isInPhoneCallWithConversation"];
                                                                        if (v391 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                        {
                                                                          objc_opt_class();
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            if (!v472)
                                                                            {
                                                                              v389 = 0;
                                                                              p_isa = 0;
LABEL_514:

                                                                              v6 = v314;
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
                                                                            *v472 = [v339 initWithDomain:v340 code:2 userInfo:?];

                                                                            goto LABEL_513;
                                                                          }

                                                                          v389 = v391;
                                                                        }

                                                                        else
                                                                        {
                                                                          v389 = 0;
                                                                        }

                                                                        v388 = [v6 objectForKeyedSubscript:@"numberOfSharesFromAlbumPhotoBelongsToWithConversation"];
                                                                        if (!v388 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v386 = 0;
LABEL_388:
                                                                          v315 = [v6 objectForKeyedSubscript:@"isFirstPartyApp"];
                                                                          if (v315 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (!v472)
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
                                                                              *v472 = [v347 initWithDomain:v348 code:2 userInfo:?];
                                                                              goto LABEL_509;
                                                                            }

                                                                            v385 = v315;
                                                                          }

                                                                          else
                                                                          {
                                                                            v385 = 0;
                                                                          }

                                                                          v316 = [v6 objectForKeyedSubscript:@"numberOfTimesSharedToTargetAppWithConversation"];
                                                                          if (v316 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (!v472)
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
                                                                              *v472 = [v491 initWithDomain:v352 code:2 userInfo:v353];

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
                                                                              if (v472)
                                                                              {
                                                                                v338 = v338;
                                                                                *v472 = v338;
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
                                                                              if (!v472)
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
                                                                              *v472 = v360;
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
                                                                              if (v472)
                                                                              {
                                                                                v346 = v346;
                                                                                *v472 = v346;
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
                                                                              if (v472)
                                                                              {
                                                                                v351 = v351;
                                                                                *v472 = v351;
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
                                                                                if (v472)
                                                                                {
                                                                                  v356 = v356;
                                                                                  *v472 = v356;
                                                                                }

                                                                                goto LABEL_558;
                                                                              }

LABEL_403:
                                                                              v319 = [v314 objectForKeyedSubscript:@"numberOfTotalSharesToTargetApp"];
                                                                              if (!v319 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v320 = 0;
LABEL_406:
                                                                                v518 = -[BMCandidate initWithPrivatizedIdentifier:feedbackDeprecated:privatizedTransportBundleId:timeSinceLastOutgoingInteraction:timeSinceOutgoingInteractionNumber10:timeSinceLastIncomingInteraction:deprecatedField1:deprecatedField2:deprecatedField3:numberOfSharesWithConversation:numberOfSharesFromCurrentAppWithConversation:numberOfSharesOfTopDomainURLWithConversation:numberOfSharesOfDetectedPeopleWithConversation:numberOfSharesOfPeopleInPhotoWithConversation:numberOfOutgoingInteractionsWithConversation:numberOfIncomingInteractionsWithConversation:numberOfInteractionsDuringTimePeriodWithConversation:numberOfEngagedSuggestionsWithConversation:numberOfEngagedSuggestionsFromCurrentAppWithConversation:numberOfEngagedSuggestionsOfTopDomainURLWithConversation:numberOfEngagedSuggestionsOfDetectedPeopleWithConversation:numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:hasEverSharePlayedWithConversation:suggestedRank:coreMLModelScore:foundInChunk:updatedInChunk:numberOfSharesOfPeopleInPhotoIoUWithConversation:numberOfSharesOfPetsWithConversation:numberOfSharesOfPetsInCurrentPhotoWithConversation:numberOfSharesOfScenesInPhotoWithConversation:numberOfSharesOfDetectedScenesInPhotoWithConversation:numberOfTopicsSharedWithConversation:numberOfAppsSharedFromWithConversation:timeSinceLastPhotoShareWithConversation:hasSharedSensitiveContentWIthConversation:isInPhoneCallWithConversation:numberOfSharesFromAlbumPhotoBelongsToWithConversation:isFirstPartyApp:numberOfTimesSharedToTargetAppWithConversation:timeSinceLastShareWithConversation:timeSinceLastPhoneCallWithConversation:numberOfDifferentFacesSharedWithConversation:numberOfTotalSharesToTargetApp:](v518, "initWithPrivatizedIdentifier:feedbackDeprecated:privatizedTransportBundleId:timeSinceLastOutgoingInteraction:timeSinceOutgoingInteractionNumber10:timeSinceLastIncomingInteraction:deprecatedField1:deprecatedField2:deprecatedField3:numberOfSharesWithConversation:numberOfSharesFromCurrentAppWithConversation:numberOfSharesOfTopDomainURLWithConversation:numberOfSharesOfDetectedPeopleWithConversation:numberOfSharesOfPeopleInPhotoWithConversation:numberOfOutgoingInteractionsWithConversation:numberOfIncomingInteractionsWithConversation:numberOfInteractionsDuringTimePeriodWithConversation:numberOfEngagedSuggestionsWithConversation:numberOfEngagedSuggestionsFromCurrentAppWithConversation:numberOfEngagedSuggestionsOfTopDomainURLWithConversation:numberOfEngagedSuggestionsOfDetectedPeopleWithConversation:numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:hasEverSharePlayedWithConversation:suggestedRank:coreMLModelScore:foundInChunk:updatedInChunk:numberOfSharesOfPeopleInPhotoIoUWithConversation:numberOfSharesOfPetsWithConversation:numberOfSharesOfPetsInCurrentPhotoWithConversation:numberOfSharesOfScenesInPhotoWithConversation:numberOfSharesOfDetectedScenesInPhotoWithConversation:numberOfTopicsSharedWithConversation:numberOfAppsSharedFromWithConversation:timeSinceLastPhotoShareWithConversation:hasSharedSensitiveContentWIthConversation:isInPhoneCallWithConversation:numberOfSharesFromAlbumPhotoBelongsToWithConversation:isFirstPartyApp:numberOfTimesSharedToTargetAppWithConversation:timeSinceLastShareWithConversation:timeSinceLastPhoneCallWithConversation:numberOfDifferentFacesSharedWithConversation:numberOfTotalSharesToTargetApp:", v300, [v299 intValue], v521, v519, v468, v467, v497, v466, v461, v458, v450, v428, v446, v443, v440, v437, v432, v429, v425, v422, v419, v417, v416, v413, v412, v409, v407, v406, v404, v401, v399, v397, v395, v393, v392, v390, v389, v386, v385, v383, v382, v381, v379, v320);
                                                                                p_isa = &v518->super.super.isa;
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

                                                                                if (v472)
                                                                                {
                                                                                  v363 = v363;
                                                                                  *v472 = v363;
                                                                                }

                                                                                v364 = v493;
LABEL_502:

                                                                                p_isa = 0;
                                                                                goto LABEL_503;
                                                                              }

                                                                              if (v472)
                                                                              {
                                                                                v496 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v378 = *MEMORY[0x1E698F240];
                                                                                v558 = *MEMORY[0x1E696A578];
                                                                                v320 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfTotalSharesToTargetApp"];
                                                                                v559 = v320;
                                                                                v376 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v559 forKeys:&v558 count:1];
                                                                                *v472 = [v496 initWithDomain:v378 code:2 userInfo:v376];
                                                                                v364 = v376;
                                                                                goto LABEL_502;
                                                                              }

LABEL_558:
                                                                              p_isa = 0;
                                                                              goto LABEL_504;
                                                                            }

                                                                            if (v472)
                                                                            {
                                                                              v495 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v377 = *MEMORY[0x1E698F240];
                                                                              v560 = *MEMORY[0x1E696A578];
                                                                              v379 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfDifferentFacesSharedWithConversation"];
                                                                              v561 = v379;
                                                                              v319 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v561 forKeys:&v560 count:1];
                                                                              v366 = [v495 initWithDomain:v377 code:2 userInfo:?];
                                                                              p_isa = 0;
                                                                              *v472 = v366;
LABEL_504:

                                                                              goto LABEL_505;
                                                                            }

                                                                            goto LABEL_497;
                                                                          }

                                                                          if (v472)
                                                                          {
                                                                            v494 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v380 = *MEMORY[0x1E698F240];
                                                                            v562 = *MEMORY[0x1E696A578];
                                                                            v381 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceLastPhoneCallWithConversation"];
                                                                            v563 = v381;
                                                                            v318 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v563 forKeys:&v562 count:1];
                                                                            v365 = [v494 initWithDomain:v380 code:2 userInfo:?];
                                                                            p_isa = 0;
                                                                            *v472 = v365;
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

                                                                          if (v472)
                                                                          {
                                                                            v333 = v333;
                                                                            *v472 = v333;
                                                                          }

LABEL_458:
                                                                          p_isa = 0;
LABEL_512:

                                                                          goto LABEL_513;
                                                                        }

                                                                        if (v472)
                                                                        {
                                                                          v341 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v342 = *MEMORY[0x1E698F240];
                                                                          v570 = *MEMORY[0x1E696A578];
                                                                          v331 = v388;
                                                                          v386 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesFromAlbumPhotoBelongsToWithConversation"];
                                                                          v571 = v386;
                                                                          v343 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v571 forKeys:&v570 count:1];
                                                                          *v472 = [v341 initWithDomain:v342 code:2 userInfo:v343];

                                                                          goto LABEL_458;
                                                                        }

                                                                        p_isa = 0;
                                                                        v331 = v388;
LABEL_513:

                                                                        goto LABEL_514;
                                                                      }

                                                                      if (v472)
                                                                      {
                                                                        v329 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v330 = *MEMORY[0x1E698F240];
                                                                        v576 = *MEMORY[0x1E696A578];
                                                                        v392 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceLastPhotoShareWithConversation"];
                                                                        v577 = v392;
                                                                        v303 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v577 forKeys:&v576 count:1];
                                                                        p_isa = 0;
                                                                        *v472 = [v329 initWithDomain:v330 code:2 userInfo:?];
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

                                                                if (v472)
                                                                {
                                                                  v310 = v310;
                                                                  *v472 = v310;
                                                                }

                                                                p_isa = 0;
                                                              }

                                                              else
                                                              {
                                                                if (!v472)
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
                                                                *v472 = [v327 initWithDomain:v328 code:2 userInfo:?];
                                                              }

                                                              v46 = v521;
                                                              v6 = v107;
                                                              goto LABEL_422;
                                                            }

                                                            if (v472)
                                                            {
                                                              v321 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v322 = *MEMORY[0x1E698F240];
                                                              v580 = *MEMORY[0x1E696A578];
                                                              v395 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfTopicsSharedWithConversation"];
                                                              v581 = v395;
                                                              v396 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v581 forKeys:&v580 count:1];
                                                              p_isa = 0;
                                                              *v472 = [v321 initWithDomain:v322 code:2 userInfo:?];
LABEL_424:
                                                              v46 = v521;
                                                              v6 = v107;
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

                                                      if (v472)
                                                      {
                                                        v311 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v312 = *MEMORY[0x1E698F240];
                                                        v582 = *MEMORY[0x1E696A578];
                                                        v397 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfDetectedScenesInPhotoWithConversation"];
                                                        v583 = v397;
                                                        v501 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v583 forKeys:&v582 count:1];
                                                        p_isa = 0;
                                                        *v472 = [v311 initWithDomain:v312 code:2 userInfo:?];
                                                        v46 = v521;
                                                        v6 = v287;
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
                                                        if (v472)
                                                        {
                                                          v283 = v283;
                                                          *v472 = v283;
                                                        }

                                                        p_isa = 0;
                                                        v46 = v521;
                                                        v125 = v466;
                                                        v138 = v450;
                                                        goto LABEL_521;
                                                      }

                                                      goto LABEL_135;
                                                    }

                                                    v516 = v6;
                                                    if (v472)
                                                    {
                                                      v305 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v306 = *MEMORY[0x1E698F240];
                                                      v584 = *MEMORY[0x1E696A578];
                                                      v399 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfScenesInPhotoWithConversation"];
                                                      v585 = v399;
                                                      v400 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v585 forKeys:&v584 count:1];
                                                      p_isa = 0;
                                                      *v472 = [v305 initWithDomain:v306 code:2 userInfo:?];
                                                      v46 = v521;
                                                      v6 = v516;
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
                                                      if (v472)
                                                      {
                                                        v276 = v276;
                                                        *v472 = v276;
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
                                                  v284 = v6;
                                                  if (v472)
                                                  {
                                                    v291 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v292 = *MEMORY[0x1E698F240];
                                                    v586 = *MEMORY[0x1E696A578];
                                                    v401 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfPetsInCurrentPhotoWithConversation"];
                                                    v587 = v401;
                                                    v402 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v587 forKeys:&v586 count:1];
                                                    p_isa = 0;
                                                    *v472 = [v291 initWithDomain:v292 code:2 userInfo:?];
                                                    v46 = v521;
                                                    v6 = v284;
                                                    goto LABEL_427;
                                                  }

                                                  p_isa = 0;
LABEL_413:
                                                  v46 = v521;
                                                  v6 = v284;
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
                                                  if (v472)
                                                  {
                                                    v261 = v261;
                                                    *v472 = v261;
                                                  }

                                                  p_isa = 0;
                                                  v46 = v521;
LABEL_332:
                                                  v138 = v450;
LABEL_525:

                                                  v307 = v259;
                                                  goto LABEL_526;
                                                }

                                                if (!v472)
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
                                                v515 = v6;
                                                v278 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v259 = v405;
                                                v375 = objc_opt_class();
                                                v279 = v278;
                                                v6 = v515;
                                                v406 = [v279 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v375, @"numberOfSharesOfPeopleInPhotoIoUWithConversation"];
                                                v591 = v406;
                                                v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v591 forKeys:&v590 count:1];
                                                *v472 = [v277 initWithDomain:v490 code:2 userInfo:v280];

                                                p_isa = 0;
LABEL_331:
                                                v46 = v521;
                                                v125 = v466;
                                                goto LABEL_332;
                                              }

                                              if (v472)
                                              {
                                                v273 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v514 = *MEMORY[0x1E698F240];
                                                v592 = *MEMORY[0x1E696A578];
                                                v259 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"updatedInChunk"];
                                                v593 = v259;
                                                v406 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v593 forKeys:&v592 count:1];
                                                v407 = 0;
                                                p_isa = 0;
                                                *v472 = [v273 initWithDomain:v514 code:2 userInfo:?];
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

                                            if (v472)
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
                                              *v472 = [v272 initWithDomain:v513 code:2 userInfo:?];
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

                                          if (v472)
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
                                            *v472 = [v267 initWithDomain:v512 code:2 userInfo:?];
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

                                        if (v472)
                                        {
                                          v255 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v489 = *MEMORY[0x1E698F240];
                                          v600 = *MEMORY[0x1E696A578];
                                          v511 = v6;
                                          v256 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v374 = objc_opt_class();
                                          v257 = v256;
                                          v6 = v511;
                                          v416 = [v257 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v374, @"hasEverSharePlayedWithConversation"];
                                          v601 = v416;
                                          v245 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v601 forKeys:&v600 count:1];
                                          v258 = [v255 initWithDomain:v489 code:2 userInfo:v245];
                                          p_isa = 0;
                                          *v472 = v258;
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
                                          if (v472)
                                          {
                                            v236 = v236;
                                            *v472 = v236;
                                          }

                                          p_isa = 0;
                                          v138 = v450;
                                          goto LABEL_532;
                                        }

                                        goto LABEL_108;
                                      }

                                      if (v472)
                                      {
                                        v251 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v488 = *MEMORY[0x1E698F240];
                                        v602 = *MEMORY[0x1E696A578];
                                        v510 = v6;
                                        v252 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v373 = objc_opt_class();
                                        v253 = v252;
                                        v23 = v462;
                                        v6 = v510;
                                        v417 = [v253 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v373, @"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation"];
                                        v603 = v417;
                                        v418 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v603 forKeys:&v602 count:1];
                                        v254 = [v251 initWithDomain:v488 code:2 userInfo:?];
                                        p_isa = 0;
                                        *v472 = v254;
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
                                        if (v472)
                                        {
                                          v228 = v228;
                                          *v472 = v228;
                                        }

                                        p_isa = 0;
                                        v138 = v450;
                                        v23 = v462;
                                        goto LABEL_533;
                                      }

                                      goto LABEL_105;
                                    }

                                    if (v472)
                                    {
                                      v487 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v421 = *MEMORY[0x1E698F240];
                                      v604 = *MEMORY[0x1E696A578];
                                      v509 = v6;
                                      v246 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v372 = objc_opt_class();
                                      v247 = v246;
                                      v23 = v462;
                                      v6 = v509;
                                      v419 = [v247 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v372, @"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation"];
                                      v605 = v419;
                                      v248 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v605 forKeys:&v604 count:1];
                                      v249 = v421;
                                      v420 = v248;
                                      v250 = [v487 initWithDomain:v249 code:2 userInfo:?];
                                      p_isa = 0;
                                      *v472 = v250;
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
                                      if (v472)
                                      {
                                        v220 = v220;
                                        *v472 = v220;
                                      }

                                      p_isa = 0;
                                      v138 = v450;
                                      goto LABEL_534;
                                    }

                                    goto LABEL_102;
                                  }

                                  if (v472)
                                  {
                                    v486 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v424 = *MEMORY[0x1E698F240];
                                    v606 = *MEMORY[0x1E696A578];
                                    v508 = v6;
                                    v237 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v371 = objc_opt_class();
                                    v238 = v237;
                                    v23 = v462;
                                    v6 = v508;
                                    v422 = [v238 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v371, @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation"];
                                    v607 = v422;
                                    v239 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v607 forKeys:&v606 count:1];
                                    v240 = v424;
                                    v423 = v239;
                                    v241 = [v486 initWithDomain:v240 code:2 userInfo:?];
                                    p_isa = 0;
                                    *v472 = v241;
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

                                if (v472)
                                {
                                  v485 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v427 = *MEMORY[0x1E698F240];
                                  v608 = *MEMORY[0x1E696A578];
                                  v507 = v6;
                                  v229 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v370 = objc_opt_class();
                                  v230 = v229;
                                  v23 = v462;
                                  v6 = v507;
                                  v425 = [v230 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v370, @"numberOfEngagedSuggestionsFromCurrentAppWithConversation"];
                                  v609 = v425;
                                  v231 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v609 forKeys:&v608 count:1];
                                  v232 = v427;
                                  v426 = v231;
                                  v233 = [v485 initWithDomain:v232 code:2 userInfo:?];
                                  p_isa = 0;
                                  *v472 = v233;
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
                                  if (v472)
                                  {
                                    v207 = v207;
                                    *v472 = v207;
                                  }

                                  p_isa = 0;
                                  v138 = v450;
                                  goto LABEL_536;
                                }

                                goto LABEL_96;
                              }

                              if (v472)
                              {
                                v484 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v431 = *MEMORY[0x1E698F240];
                                v610 = *MEMORY[0x1E696A578];
                                v506 = v6;
                                v221 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v369 = objc_opt_class();
                                v222 = v221;
                                v23 = v462;
                                v6 = v506;
                                v429 = [v222 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v369, @"numberOfEngagedSuggestionsWithConversation"];
                                v611 = v429;
                                v223 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v611 forKeys:&v610 count:1];
                                v224 = v431;
                                v430 = v223;
                                v225 = [v484 initWithDomain:v224 code:2 userInfo:?];
                                p_isa = 0;
                                *v472 = v225;
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

                            if (v472)
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
                              *v472 = v217;
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
                              if (v472)
                              {
                                v194 = v194;
                                *v472 = v194;
                              }

                              p_isa = 0;
                              v138 = v450;
                              goto LABEL_538;
                            }

                            goto LABEL_90;
                          }

                          if (v472)
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
                            *v472 = v210;
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
                            if (v472)
                            {
                              v180 = v180;
                              *v472 = v180;
                            }

                            p_isa = 0;
                            v23 = v462;
                            v138 = v450;
                            goto LABEL_539;
                          }

                          goto LABEL_87;
                        }

                        if (v472)
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
                          *v472 = v204;
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
                          if (v472)
                          {
                            v176 = v176;
                            *v472 = v176;
                          }

                          p_isa = 0;
                          v138 = v450;
                          goto LABEL_540;
                        }

                        goto LABEL_84;
                      }

                      if (v472)
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
                        *v472 = v197;
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
                        if (v472)
                        {
                          v170 = v170;
                          *v472 = v170;
                        }

                        p_isa = 0;
                        v138 = v450;
                        goto LABEL_541;
                      }

                      v462 = v23;

                      goto LABEL_81;
                    }

                    if (v472)
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
                      *v472 = v190;
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
                      if (v472)
                      {
                        v160 = v160;
                        *v472 = v160;
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

                  if (v472)
                  {
                    v478 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v448 = *MEMORY[0x1E698F240];
                    v622 = *MEMORY[0x1E696A578];
                    v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfTopDomainURLWithConversation"];
                    v623 = v67;
                    v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v623 forKeys:&v622 count:1];
                    v177 = [v478 initWithDomain:v448 code:2 userInfo:v68];
                    p_isa = 0;
                    *v472 = v177;
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

                if (!v472)
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
                *v472 = [v163 initWithDomain:v164 code:2 userInfo:v166];

                v126 = v165;
                p_isa = 0;
                v121 = v38;
                v7 = v517;
                v46 = v521;
                v21 = v460;
                v6 = v502;
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

              if (a4)
              {
                v149 = objc_alloc(MEMORY[0x1E696ABC0]);
                v150 = v33;
                v151 = a4;
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
                *v151 = v156;
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

            if (a4)
            {
              v505 = objc_alloc(MEMORY[0x1E696ABC0]);
              v454 = v26;
              v141 = v21;
              v142 = v28;
              v143 = *MEMORY[0x1E698F240];
              v630 = *MEMORY[0x1E696A578];
              v144 = a4;
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
              *v144 = [v505 initWithDomain:v147 code:2 userInfo:?];
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

          if (a4)
          {
            v499 = objc_alloc(MEMORY[0x1E696ABC0]);
            v477 = *MEMORY[0x1E698F240];
            v634 = *MEMORY[0x1E696A578];
            v111 = objc_alloc(MEMORY[0x1E696AEC0]);
            v112 = v23;
            v113 = v11;
            v114 = v112;
            v473 = a4;
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
            *v473 = v120;
            v46 = v521;
LABEL_550:

            a4 = p_isa;
            goto LABEL_551;
          }

          v46 = v521;
          v16 = v525;
LABEL_551:

          self = v518;
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

          if (a4)
          {
            v42 = v42;
            *a4 = v42;
          }

          a4 = 0;
        }

        else
        {
          if (!a4)
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
          *a4 = [v520 initWithDomain:v55 code:2 userInfo:v56];

          a4 = 0;
          v40 = v39;
        }

        v16 = v525;
        v46 = v521;
LABEL_553:

        v39 = v40;
        v19 = v522;
        goto LABEL_554;
      }

      if (a4)
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
        *a4 = [v50 initWithDomain:v48 code:2 userInfo:v49];
        a4 = 0;
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

    if (a4)
    {
      v61 = objc_alloc(MEMORY[0x1E696ABC0]);
      v523 = *MEMORY[0x1E698F240];
      v642 = *MEMORY[0x1E696A578];
      v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"feedbackDeprecated"];
      v643 = v46;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v643 forKeys:&v642 count:1];
      v63 = v61;
      v19 = v62;
      *a4 = [v63 initWithDomain:v523 code:2 userInfo:v62];
      a4 = 0;
      v16 = v525;
      v11 = 0;
      goto LABEL_555;
    }

    v16 = v525;
    v11 = 0;
LABEL_556:

    goto LABEL_557;
  }

  if (a4)
  {
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = self;
    v14 = *MEMORY[0x1E698F240];
    v644 = *MEMORY[0x1E696A578];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"privatizedIdentifier"];
    v645[0] = v11;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v645 forKeys:&v644 count:1];
    v15 = v14;
    self = v13;
    v16 = 0;
    *a4 = [v12 initWithDomain:v15 code:2 userInfo:v9];
    a4 = 0;
    goto LABEL_556;
  }

  v16 = 0;
LABEL_557:

  v367 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMCandidate *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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
    [(BMFeatureDouble *)self->_timeSinceLastOutgoingInteraction writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceOutgoingInteractionNumber10)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceOutgoingInteractionNumber10 writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceLastIncomingInteraction)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastIncomingInteraction writeTo:v4];
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
    [(BMFeatureDouble *)self->_numberOfSharesWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesFromCurrentAppWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesFromCurrentAppWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfTopDomainURLWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfTopDomainURLWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfDetectedPeopleWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfDetectedPeopleWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfPeopleInPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfPeopleInPhotoWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfOutgoingInteractionsWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfOutgoingInteractionsWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfIncomingInteractionsWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfIncomingInteractionsWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfInteractionsDuringTimePeriodWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfInteractionsDuringTimePeriodWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasEverSharePlayedWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_hasEverSharePlayedWithConversation writeTo:v4];
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
    [(BMFeatureDouble *)self->_numberOfSharesOfPeopleInPhotoIoUWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfPetsWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfPetsWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfPetsInCurrentPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfPetsInCurrentPhotoWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfScenesInPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfScenesInPhotoWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfDetectedScenesInPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfDetectedScenesInPhotoWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfTopicsSharedWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfTopicsSharedWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfAppsSharedFromWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfAppsSharedFromWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceLastPhotoShareWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastPhotoShareWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasSharedSensitiveContentWIthConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_hasSharedSensitiveContentWIthConversation writeTo:v4];
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
    [(BMFeatureDouble *)self->_numberOfSharesFromAlbumPhotoBelongsToWithConversation writeTo:v4];
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
    [(BMFeatureDouble *)self->_numberOfTimesSharedToTargetAppWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceLastShareWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastShareWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceLastPhoneCallWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastPhoneCallWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfDifferentFacesSharedWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfDifferentFacesSharedWithConversation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfTotalSharesToTargetApp)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfTotalSharesToTargetApp writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v80.receiver = self;
  v80.super_class = BMCandidate;
  v5 = [(BMEventBase *)&v80 init];
  if (!v5)
  {
    goto LABEL_226;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_224;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v81) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v81 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 80;
            goto LABEL_188;
          case 104:
            v5->_hasDeprecatedField1 = 1;
            v81 = 0;
            v43 = [v4 position] + 8;
            if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 8, v44 <= objc_msgSend(v4, "length")))
            {
              v75 = [v4 data];
              [v75 getBytes:&v81 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v73 = v81;
            v74 = 328;
            goto LABEL_223;
          case 105:
            v5->_hasDeprecatedField2 = 1;
            v81 = 0;
            v41 = [v4 position] + 8;
            if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 8, v42 <= objc_msgSend(v4, "length")))
            {
              v72 = [v4 data];
              [v72 getBytes:&v81 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v73 = v81;
            v74 = 336;
            goto LABEL_223;
          case 106:
            v5->_hasDeprecatedField3 = 1;
            v81 = 0;
            v52 = [v4 position] + 8;
            if (v52 >= [v4 position] && (v53 = objc_msgSend(v4, "position") + 8, v53 <= objc_msgSend(v4, "length")))
            {
              v76 = [v4 data];
              [v76 getBytes:&v81 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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
              v48 = [v4 position] + 1;
              if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 1, v49 <= objc_msgSend(v4, "length")))
              {
                v50 = [v4 data];
                [v50 getBytes:&v81 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if ([v4 hasError])
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
            v54 = [v4 position] + 8;
            if (v54 >= [v4 position] && (v55 = objc_msgSend(v4, "position") + 8, v55 <= objc_msgSend(v4, "length")))
            {
              v77 = [v4 data];
              [v77 getBytes:&v81 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
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
              v59 = [v4 position] + 1;
              if (v59 >= [v4 position] && (v60 = objc_msgSend(v4, "position") + 1, v60 <= objc_msgSend(v4, "length")))
              {
                v61 = [v4 data];
                [v61 getBytes:&v81 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if ([v4 hasError])
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
              v65 = [v4 position] + 1;
              if (v65 >= [v4 position] && (v66 = objc_msgSend(v4, "position") + 1, v66 <= objc_msgSend(v4, "length")))
              {
                v67 = [v4 data];
                [v67 getBytes:&v81 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if ([v4 hasError])
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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
              v37 = [v4 position] + 1;
              if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
              {
                v39 = [v4 data];
                [v39 getBytes:&v81 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            v26 = (v36 != 0) & ~[v4 hasError];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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

            v16 = [[BMFeatureDouble alloc] initByReadFrom:v4];
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
          v23 = [v4 position] + 1;
          if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
          {
            v25 = [v4 data];
            [v25 getBytes:&v81 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        v26 = (v22 != 0) & ~[v4 hasError];
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
          v30 = [v4 position] + 1;
          if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 1, v31 <= objc_msgSend(v4, "length")))
          {
            v32 = [v4 data];
            [v32 getBytes:&v81 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v29 > 4)
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
      v69 = [v4 position];
      if (v69 >= [v4 length])
      {
        goto LABEL_224;
      }
    }

    v18 = PBReaderReadString();
    v19 = 48;
    goto LABEL_73;
  }

LABEL_224:
  if ([v4 hasError])
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
  v53 = [(BMCandidate *)self privatizedIdentifier];
  v52 = BMFeedbackTypeAsString([(BMCandidate *)self feedbackDeprecated]);
  v51 = [(BMCandidate *)self privatizedTransportBundleId];
  v50 = [(BMCandidate *)self timeSinceLastOutgoingInteraction];
  v49 = [(BMCandidate *)self timeSinceOutgoingInteractionNumber10];
  v48 = [(BMCandidate *)self timeSinceLastIncomingInteraction];
  v3 = MEMORY[0x1E696AD98];
  [(BMCandidate *)self deprecatedField1];
  v47 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMCandidate *)self deprecatedField2];
  v46 = [v4 numberWithDouble:?];
  v5 = MEMORY[0x1E696AD98];
  [(BMCandidate *)self deprecatedField3];
  v45 = [v5 numberWithDouble:?];
  v44 = [(BMCandidate *)self numberOfSharesWithConversation];
  v43 = [(BMCandidate *)self numberOfSharesFromCurrentAppWithConversation];
  v42 = [(BMCandidate *)self numberOfSharesOfTopDomainURLWithConversation];
  v41 = [(BMCandidate *)self numberOfSharesOfDetectedPeopleWithConversation];
  v39 = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoWithConversation];
  v40 = [(BMCandidate *)self numberOfOutgoingInteractionsWithConversation];
  v36 = [(BMCandidate *)self numberOfIncomingInteractionsWithConversation];
  v38 = [(BMCandidate *)self numberOfInteractionsDuringTimePeriodWithConversation];
  v33 = [(BMCandidate *)self numberOfEngagedSuggestionsWithConversation];
  v37 = [(BMCandidate *)self numberOfEngagedSuggestionsFromCurrentAppWithConversation];
  v35 = [(BMCandidate *)self numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
  v19 = [(BMCandidate *)self numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
  v34 = [(BMCandidate *)self numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
  v32 = [(BMCandidate *)self hasEverSharePlayedWithConversation];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate suggestedRank](self, "suggestedRank")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMCandidate *)self coreMLModelScore];
  v31 = [v6 numberWithDouble:?];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate foundInChunk](self, "foundInChunk")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate updatedInChunk](self, "updatedInChunk")}];
  v28 = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoIoUWithConversation];
  v27 = [(BMCandidate *)self numberOfSharesOfPetsWithConversation];
  v26 = [(BMCandidate *)self numberOfSharesOfPetsInCurrentPhotoWithConversation];
  v25 = [(BMCandidate *)self numberOfSharesOfScenesInPhotoWithConversation];
  v24 = [(BMCandidate *)self numberOfSharesOfDetectedScenesInPhotoWithConversation];
  v23 = [(BMCandidate *)self numberOfTopicsSharedWithConversation];
  v22 = [(BMCandidate *)self numberOfAppsSharedFromWithConversation];
  v17 = [(BMCandidate *)self timeSinceLastPhotoShareWithConversation];
  v7 = [(BMCandidate *)self hasSharedSensitiveContentWIthConversation];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCandidate isInPhoneCallWithConversation](self, "isInPhoneCallWithConversation")}];
  v8 = [(BMCandidate *)self numberOfSharesFromAlbumPhotoBelongsToWithConversation];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCandidate isFirstPartyApp](self, "isFirstPartyApp")}];
  v10 = [(BMCandidate *)self numberOfTimesSharedToTargetAppWithConversation];
  v11 = [(BMCandidate *)self timeSinceLastShareWithConversation];
  v12 = [(BMCandidate *)self timeSinceLastPhoneCallWithConversation];
  v13 = [(BMCandidate *)self numberOfDifferentFacesSharedWithConversation];
  v14 = [(BMCandidate *)self numberOfTotalSharesToTargetApp];
  v21 = [v20 initWithFormat:@"BMCandidate with privatizedIdentifier: %@, feedbackDeprecated: %@, privatizedTransportBundleId: %@, timeSinceLastOutgoingInteraction: %@, timeSinceOutgoingInteractionNumber10: %@, timeSinceLastIncomingInteraction: %@, deprecatedField1: %@, deprecatedField2: %@, deprecatedField3: %@, numberOfSharesWithConversation: %@, numberOfSharesFromCurrentAppWithConversation: %@, numberOfSharesOfTopDomainURLWithConversation: %@, numberOfSharesOfDetectedPeopleWithConversation: %@, numberOfSharesOfPeopleInPhotoWithConversation: %@, numberOfOutgoingInteractionsWithConversation: %@, numberOfIncomingInteractionsWithConversation: %@, numberOfInteractionsDuringTimePeriodWithConversation: %@, numberOfEngagedSuggestionsWithConversation: %@, numberOfEngagedSuggestionsFromCurrentAppWithConversation: %@, numberOfEngagedSuggestionsOfTopDomainURLWithConversation: %@, numberOfEngagedSuggestionsOfDetectedPeopleWithConversation: %@, numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation: %@, hasEverSharePlayedWithConversation: %@, suggestedRank: %@, coreMLModelScore: %@, foundInChunk: %@, updatedInChunk: %@, numberOfSharesOfPeopleInPhotoIoUWithConversation: %@, numberOfSharesOfPetsWithConversation: %@, numberOfSharesOfPetsInCurrentPhotoWithConversation: %@, numberOfSharesOfScenesInPhotoWithConversation: %@, numberOfSharesOfDetectedScenesInPhotoWithConversation: %@, numberOfTopicsSharedWithConversation: %@, numberOfAppsSharedFromWithConversation: %@, timeSinceLastPhotoShareWithConversation: %@, hasSharedSensitiveContentWIthConversation: %@, isInPhoneCallWithConversation: %@, numberOfSharesFromAlbumPhotoBelongsToWithConversation: %@, isFirstPartyApp: %@, numberOfTimesSharedToTargetAppWithConversation: %@, timeSinceLastShareWithConversation: %@, timeSinceLastPhoneCallWithConversation: %@, numberOfDifferentFacesSharedWithConversation: %@, numberOfTotalSharesToTargetApp: %@", v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v39, v40, v36, v38, v33, v37, v35, v19, v34, v32, v18, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v17, v7, v16, v8, v9, v10, v11, v12, v13, v14];

  return v21;
}

- (BMCandidate)initWithPrivatizedIdentifier:(id)a3 feedbackDeprecated:(int)a4 privatizedTransportBundleId:(id)a5 timeSinceLastOutgoingInteraction:(id)a6 timeSinceOutgoingInteractionNumber10:(id)a7 timeSinceLastIncomingInteraction:(id)a8 deprecatedField1:(id)a9 deprecatedField2:(id)a10 deprecatedField3:(id)a11 numberOfSharesWithConversation:(id)a12 numberOfSharesFromCurrentAppWithConversation:(id)a13 numberOfSharesOfTopDomainURLWithConversation:(id)a14 numberOfSharesOfDetectedPeopleWithConversation:(id)a15 numberOfSharesOfPeopleInPhotoWithConversation:(id)a16 numberOfOutgoingInteractionsWithConversation:(id)a17 numberOfIncomingInteractionsWithConversation:(id)a18 numberOfInteractionsDuringTimePeriodWithConversation:(id)a19 numberOfEngagedSuggestionsWithConversation:(id)a20 numberOfEngagedSuggestionsFromCurrentAppWithConversation:(id)a21 numberOfEngagedSuggestionsOfTopDomainURLWithConversation:(id)a22 numberOfEngagedSuggestionsOfDetectedPeopleWithConversation:(id)a23 numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:(id)a24 hasEverSharePlayedWithConversation:(id)a25 suggestedRank:(id)a26 coreMLModelScore:(id)a27 foundInChunk:(id)a28 updatedInChunk:(id)a29 numberOfSharesOfPeopleInPhotoIoUWithConversation:(id)a30 numberOfSharesOfPetsWithConversation:(id)a31 numberOfSharesOfPetsInCurrentPhotoWithConversation:(id)a32 numberOfSharesOfScenesInPhotoWithConversation:(id)a33 numberOfSharesOfDetectedScenesInPhotoWithConversation:(id)a34 numberOfTopicsSharedWithConversation:(id)a35 numberOfAppsSharedFromWithConversation:(id)a36 timeSinceLastPhotoShareWithConversation:(id)a37 hasSharedSensitiveContentWIthConversation:(id)a38 isInPhoneCallWithConversation:(id)a39 numberOfSharesFromAlbumPhotoBelongsToWithConversation:(id)a40 isFirstPartyApp:(id)a41 numberOfTimesSharedToTargetAppWithConversation:(id)a42 timeSinceLastShareWithConversation:(id)a43 timeSinceLastPhoneCallWithConversation:(id)a44 numberOfDifferentFacesSharedWithConversation:(id)a45 numberOfTotalSharesToTargetApp:(id)a46
{
  v106 = a3;
  v71 = a5;
  v105 = a5;
  v72 = a6;
  v104 = a6;
  v73 = a7;
  v103 = a7;
  v74 = a8;
  v102 = a8;
  v110 = a9;
  v109 = a10;
  v108 = a11;
  v101 = a12;
  v100 = a13;
  v99 = a14;
  v98 = a15;
  v97 = a16;
  v96 = a17;
  v95 = a18;
  v94 = a19;
  v93 = a20;
  v92 = a21;
  v91 = a22;
  v90 = a23;
  v89 = a24;
  v88 = a25;
  v107 = a26;
  v50 = a27;
  v51 = a28;
  v52 = a29;
  v87 = a30;
  v86 = a31;
  v85 = a32;
  v84 = a33;
  v83 = a34;
  v82 = a35;
  v81 = a36;
  v80 = a37;
  v79 = a38;
  v53 = a39;
  v78 = a40;
  v54 = a41;
  v55 = a42;
  v56 = a43;
  v57 = a44;
  v77 = a45;
  v58 = v52;
  v59 = v53;
  v76 = a46;
  v111.receiver = self;
  v111.super_class = BMCandidate;
  v60 = [(BMEventBase *)&v111 init];
  if (v60)
  {
    v60->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v60->_privatizedIdentifier, a3);
    v60->_feedbackDeprecated = a4;
    objc_storeStrong(&v60->_privatizedTransportBundleId, v71);
    objc_storeStrong(&v60->_timeSinceLastOutgoingInteraction, v72);
    objc_storeStrong(&v60->_timeSinceOutgoingInteractionNumber10, v73);
    objc_storeStrong(&v60->_timeSinceLastIncomingInteraction, v74);
    if (v110)
    {
      v60->_hasDeprecatedField1 = 1;
      [v110 doubleValue];
    }

    else
    {
      v60->_hasDeprecatedField1 = 0;
      v61 = -1.0;
    }

    v60->_deprecatedField1 = v61;
    if (v109)
    {
      v60->_hasDeprecatedField2 = 1;
      [v109 doubleValue];
    }

    else
    {
      v60->_hasDeprecatedField2 = 0;
      v62 = -1.0;
    }

    v60->_deprecatedField2 = v62;
    if (v108)
    {
      v60->_hasDeprecatedField3 = 1;
      [v108 doubleValue];
    }

    else
    {
      v60->_hasDeprecatedField3 = 0;
      v63 = -1.0;
    }

    v60->_deprecatedField3 = v63;
    objc_storeStrong(&v60->_numberOfSharesWithConversation, a12);
    objc_storeStrong(&v60->_numberOfSharesFromCurrentAppWithConversation, a13);
    objc_storeStrong(&v60->_numberOfSharesOfTopDomainURLWithConversation, a14);
    objc_storeStrong(&v60->_numberOfSharesOfDetectedPeopleWithConversation, a15);
    objc_storeStrong(&v60->_numberOfSharesOfPeopleInPhotoWithConversation, a16);
    objc_storeStrong(&v60->_numberOfOutgoingInteractionsWithConversation, a17);
    objc_storeStrong(&v60->_numberOfIncomingInteractionsWithConversation, a18);
    objc_storeStrong(&v60->_numberOfInteractionsDuringTimePeriodWithConversation, a19);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsWithConversation, a20);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsFromCurrentAppWithConversation, a21);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation, a22);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation, a23);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation, a24);
    objc_storeStrong(&v60->_hasEverSharePlayedWithConversation, a25);
    if (v107)
    {
      v60->_hasSuggestedRank = 1;
      v64 = [v107 intValue];
    }

    else
    {
      v60->_hasSuggestedRank = 0;
      v64 = -1;
    }

    v60->_suggestedRank = v64;
    if (v50)
    {
      v60->_hasCoreMLModelScore = 1;
      [v50 doubleValue];
    }

    else
    {
      v60->_hasCoreMLModelScore = 0;
      v65 = -1.0;
    }

    v60->_coreMLModelScore = v65;
    if (v51)
    {
      v60->_hasFoundInChunk = 1;
      v66 = [v51 intValue];
    }

    else
    {
      v60->_hasFoundInChunk = 0;
      v66 = -1;
    }

    v60->_foundInChunk = v66;
    if (v58)
    {
      v60->_hasUpdatedInChunk = 1;
      v67 = [v58 intValue];
    }

    else
    {
      v60->_hasUpdatedInChunk = 0;
      v67 = -1;
    }

    v60->_updatedInChunk = v67;
    objc_storeStrong(&v60->_numberOfSharesOfPeopleInPhotoIoUWithConversation, a30);
    objc_storeStrong(&v60->_numberOfSharesOfPetsWithConversation, a31);
    objc_storeStrong(&v60->_numberOfSharesOfPetsInCurrentPhotoWithConversation, a32);
    objc_storeStrong(&v60->_numberOfSharesOfScenesInPhotoWithConversation, a33);
    objc_storeStrong(&v60->_numberOfSharesOfDetectedScenesInPhotoWithConversation, a34);
    objc_storeStrong(&v60->_numberOfTopicsSharedWithConversation, a35);
    objc_storeStrong(&v60->_numberOfAppsSharedFromWithConversation, a36);
    objc_storeStrong(&v60->_timeSinceLastPhotoShareWithConversation, a37);
    objc_storeStrong(&v60->_hasSharedSensitiveContentWIthConversation, a38);
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

    objc_storeStrong(&v60->_numberOfSharesFromAlbumPhotoBelongsToWithConversation, a40);
    if (v54)
    {
      v60->_hasIsFirstPartyApp = 1;
      v60->_isFirstPartyApp = [v54 BOOLValue];
    }

    else
    {
      v60->_hasIsFirstPartyApp = 0;
      v60->_isFirstPartyApp = 0;
    }

    objc_storeStrong(&v60->_numberOfTimesSharedToTargetAppWithConversation, a42);
    objc_storeStrong(&v60->_timeSinceLastShareWithConversation, a43);
    objc_storeStrong(&v60->_timeSinceLastPhoneCallWithConversation, a44);
    objc_storeStrong(&v60->_numberOfDifferentFacesSharedWithConversation, a45);
    objc_storeStrong(&v60->_numberOfTotalSharesToTargetApp, a46);
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