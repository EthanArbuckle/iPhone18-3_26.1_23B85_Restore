@interface IRRuleCandidate
- (BOOL)_isCandidateIdentifier:(id)a3 inHistory:(id)a4;
- (BOOL)_isLastEventForCandidate:(id)a3 inPrerequisite:(id)a4 isOneOf:(id)a5;
- (BOOL)_proximityBLEValueForCandidate:(id)a3 withNearbyDeviceContainer:(id)a4 date:(id)a5;
- (BOOL)_proximityDecisionForCandidate:(id)a3 withNearbyDeviceContainer:(id)a4 date:(id)a5;
- (id)_activeRouteForCandidate:(id)a3 systemState:(id)a4;
- (id)_appleTVControlUserRejectedInLastDayWithoutPickerChoiceForCandidate:(id)a3 prerequisite:(id)a4;
- (id)_attributeValueForAttributeKey:(id)a3 prerequisite:(id)a4 withCandidate:(id)a5 nearbyDeviceContainer:(id)a6 systemState:(id)a7 date:(id)a8;
- (id)_matchedDevicefromNode:(id)a3 withNearbyDeviceContainer:(id)a4 measurementExpiry:(id)a5 isUwb:(BOOL)a6;
- (id)_mediaUserRejectedInLastDayWithoutPickerChoiceForCandidate:(id)a3 prerequisite:(id)a4;
- (id)_prerequisiteValueForAttributeKey:(id)a3 withCandidatesContainer:(id)a4 nearbyDeviceContainer:(id)a5 systemState:(id)a6 historyContainer:(id)a7 date:(id)a8;
- (id)_proximityLowestUwbRangeForCandidate:(id)a3 withNearbyDeviceContainer:(id)a4 date:(id)a5;
- (id)_proximityPrerequisiteValueForCandidatesContainer:(id)a3 withNearbyDeviceContainer:(id)a4 date:(id)a5;
- (id)_proximityShortestRangeInHistoryOrSameICloudValueForCandidate:(id)a3 withNearbyDeviceContainer:(id)a4 prerequisite:(id)a5 date:(id)a6;
- (id)_proximityShortestRangeValueForCandidate:(id)a3 withNearbyDeviceContainer:(id)a4 prerequisite:(id)a5 date:(id)a6;
- (id)_proximityValueForCandidate:(id)a3 withNearbyDeviceContainer:(id)a4 prerequisite:(id)a5 date:(id)a6;
- (id)_sameIcloudForCandidate:(id)a3 systemState:(id)a4;
- (id)_sameWiFiForCandidate:(id)a3 systemState:(id)a4;
- (id)_shortestRangeProximityPrerequisiteValueForCandidatesContainer:(id)a3 withNearbyDeviceContainer:(id)a4 date:(id)a5;
- (id)_shortestRangeWithHistoryOrSameICloudProximityPrerequisiteValueForCandidatesContainer:(id)a3 withNearbyDeviceContainer:(id)a4 historyContainer:(id)a5 systemState:(id)a6 date:(id)a7;
- (id)_userRejectedInLastDayWithoutPickerChoicePrerequisiteValueForHistoryContainer:(id)a3 systemState:(id)a4 date:(id)a5;
- (id)_valueFromValues:(id)a3;
- (id)executeRuleWithCandiatesContainer:(id)a3 systemStatus:(id)a4 historyContainer:(id)a5 miloPrediction:(id)a6 nearbyDeviceContainer:(id)a7 date:(id)a8;
@end

@implementation IRRuleCandidate

- (id)executeRuleWithCandiatesContainer:(id)a3 systemStatus:(id)a4 historyContainer:(id)a5 miloPrediction:(id)a6 nearbyDeviceContainer:(id)a7 date:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v31 = a6;
  v17 = a7;
  v18 = a8;
  v19 = objc_opt_new();
  v20 = [(IRRuleCandidate *)self attributeKey];
  v21 = [(IRRuleCandidate *)self _prerequisiteValueForAttributeKey:v20 withCandidatesContainer:v14 nearbyDeviceContainer:v17 systemState:v15 historyContainer:v16 date:v18];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v22 = [v14 candidates];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __125__IRRuleCandidate_executeRuleWithCandiatesContainer_systemStatus_historyContainer_miloPrediction_nearbyDeviceContainer_date___block_invoke;
  v32[3] = &unk_2797E17C8;
  v32[4] = self;
  v23 = v21;
  v33 = v23;
  v24 = v17;
  v34 = v24;
  v25 = v15;
  v35 = v25;
  v26 = v18;
  v36 = v26;
  v38 = &v39;
  v27 = v19;
  v37 = v27;
  [v22 enumerateObjectsUsingBlock:v32];

  v28 = [[IRRuleOutputCandidate alloc] initWithRule:self];
  v29 = [v27 copy];
  [(IRRuleOutputCandidate *)v28 setValues:v29];

  [(IRRuleOutputCandidate *)v28 setIsAnyCandidateEvaluatedToYes:*(v40 + 24)];
  _Block_object_dispose(&v39, 8);

  return v28;
}

void __125__IRRuleCandidate_executeRuleWithCandiatesContainer_systemStatus_historyContainer_miloPrediction_nearbyDeviceContainer_date___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  v3 = a1[4];
  v4 = [v3 attributeKey];
  v5 = [v3 _attributeValueForAttributeKey:v4 prerequisite:a1[5] withCandidate:v8 nearbyDeviceContainer:a1[6] systemState:a1[7] date:a1[8]];

  if ([v5 hasBoolean] && objc_msgSend(v5, "BOOLean"))
  {
    *(*(a1[10] + 8) + 24) = 1;
  }

  v6 = a1[9];
  v7 = [v8 candidateIdentifier];
  [v6 setObject:v5 forKeyedSubscript:v7];
}

- (id)_proximityValueForCandidate:(id)a3 withNearbyDeviceContainer:(id)a4 prerequisite:(id)a5 date:(id)a6
{
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_new();
  v10 = [v7 proximityPerCandiate];
  v11 = [v8 candidateIdentifier];

  v12 = [v10 objectForKeyedSubscript:v11];
  [v9 setBoolean:{objc_msgSend(v12, "BOOLValue")}];

  [v9 setHasBoolean:{objc_msgSend(v7, "anyCandidateInProximity")}];

  return v9;
}

- (id)_proximityShortestRangeValueForCandidate:(id)a3 withNearbyDeviceContainer:(id)a4 prerequisite:(id)a5 date:(id)a6
{
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_new();
  v10 = [v8 candidateIdentifier];

  v11 = [v7 shortestRangeCandidateIdentifier];
  [v9 setBoolean:{objc_msgSend(v10, "isEqual:", v11)}];

  [v9 setHasBoolean:{objc_msgSend(v7, "anyCandidateMeetsCondition")}];

  return v9;
}

- (id)_proximityShortestRangeInHistoryOrSameICloudValueForCandidate:(id)a3 withNearbyDeviceContainer:(id)a4 prerequisite:(id)a5 date:(id)a6
{
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_new();
  v10 = [v8 candidateIdentifier];

  v11 = [v7 shortestRangeCandidateIdentifier];
  [v9 setBoolean:{objc_msgSend(v10, "isEqual:", v11)}];

  [v9 setHasBoolean:{objc_msgSend(v7, "anyCandidateMeetsCondition")}];

  return v9;
}

- (BOOL)_proximityDecisionForCandidate:(id)a3 withNearbyDeviceContainer:(id)a4 date:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IRRuleCandidate *)self _proximityLowestUwbRangeForCandidate:v8 withNearbyDeviceContainer:v9 date:v10];
  v15 = v11 && (+[IRPreferences shared](IRPreferences, "shared"), v12 = objc_claimAutoreleasedReturnValue(), [v12 deviceRangeProximityThreshold], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "isLessThanOrEqualTo:", v13), v13, v12, (v14 & 1) != 0) || -[IRRuleCandidate _proximityBLEValueForCandidate:withNearbyDeviceContainer:date:](self, "_proximityBLEValueForCandidate:withNearbyDeviceContainer:date:", v8, v9, v10);

  return v15;
}

- (id)_proximityPrerequisiteValueForCandidatesContainer:(id)a3 withNearbyDeviceContainer:(id)a4 date:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = v8;
  obj = [v8 candidates];
  v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [(IRRuleCandidate *)self _proximityDecisionForCandidate:v17 withNearbyDeviceContainer:v9 date:v10];
        v14 |= v18;
        v19 = [MEMORY[0x277CCABB0] numberWithBool:v18];
        v20 = [v17 candidateIdentifier];
        [v11 setObject:v19 forKeyedSubscript:v20];
      }

      v13 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v21 = objc_opt_new();
  [v21 setAnyCandidateInProximity:v14 & 1];
  [v21 setProximityPerCandiate:v11];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_shortestRangeProximityPrerequisiteValueForCandidatesContainer:(id)a3 withNearbyDeviceContainer:(id)a4 date:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__6;
  v40 = __Block_byref_object_dispose__6;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v11 = [v8 candidates];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __113__IRRuleCandidate__shortestRangeProximityPrerequisiteValueForCandidatesContainer_withNearbyDeviceContainer_date___block_invoke;
  v19 = &unk_2797E17F0;
  v20 = self;
  v12 = v9;
  v21 = v12;
  v13 = v10;
  v22 = v13;
  v23 = &v26;
  v24 = &v36;
  v25 = &v30;
  [v11 enumerateObjectsUsingBlock:&v16];

  v14 = objc_opt_new();
  [v14 setShortestRange:{v37[5], v16, v17, v18, v19, v20}];
  [v14 setShortestRangeCandidateIdentifier:v31[5]];
  [v14 setAnyCandidateMeetsCondition:*(v27 + 24)];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);

  return v14;
}

void __113__IRRuleCandidate__shortestRangeProximityPrerequisiteValueForCandidatesContainer_withNearbyDeviceContainer_date___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v15 = v3;
  v6 = [*(a1 + 32) _proximityLowestUwbRangeForCandidate:? withNearbyDeviceContainer:? date:?];
  if (v6)
  {
    v7 = +[IRPreferences shared];
    v8 = [v7 deviceRangeProximityThreshold];
    v9 = [v6 isLessThanOrEqualTo:v8];

    *(*(*(a1 + 56) + 8) + 24) |= v9;
    if (v9)
    {
      if (!*(*(*(a1 + 64) + 8) + 40) || ([v6 isLessThan:?] & 1) != 0 || objc_msgSend(v6, "isEqual:", *(*(*(a1 + 64) + 8) + 40)) && (objc_msgSend(v15, "nodes"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v14 == 1))
      {
        v10 = [v15 candidateIdentifier];
        v11 = *(*(a1 + 72) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
      }
    }
  }
}

- (id)_shortestRangeWithHistoryOrSameICloudProximityPrerequisiteValueForCandidatesContainer:(id)a3 withNearbyDeviceContainer:(id)a4 historyContainer:(id)a5 systemState:(id)a6 date:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__6;
  v46 = __Block_byref_object_dispose__6;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__6;
  v40 = __Block_byref_object_dispose__6;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v17 = [v12 candidates];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __165__IRRuleCandidate__shortestRangeWithHistoryOrSameICloudProximityPrerequisiteValueForCandidatesContainer_withNearbyDeviceContainer_historyContainer_systemState_date___block_invoke;
  v24[3] = &unk_2797E1818;
  v24[4] = self;
  v18 = v13;
  v25 = v18;
  v19 = v16;
  v26 = v19;
  v20 = v14;
  v27 = v20;
  v21 = v15;
  v28 = v21;
  v29 = &v32;
  v30 = &v42;
  v31 = &v36;
  [v17 enumerateObjectsUsingBlock:v24];

  v22 = objc_opt_new();
  [v22 setShortestRange:v43[5]];
  [v22 setShortestRangeCandidateIdentifier:v37[5]];
  [v22 setAnyCandidateMeetsCondition:*(v33 + 24)];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);

  return v22;
}

void __165__IRRuleCandidate__shortestRangeWithHistoryOrSameICloudProximityPrerequisiteValueForCandidatesContainer_withNearbyDeviceContainer_historyContainer_systemState_date___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v18 = v3;
  v6 = [*(a1 + 32) _proximityLowestUwbRangeForCandidate:? withNearbyDeviceContainer:? date:?];
  if (v6)
  {
    v7 = +[IRPreferences shared];
    v8 = [v7 deviceRangeProximityThreshold];
    if ([v6 isLessThanOrEqualTo:v8])
    {
      v9 = *(a1 + 32);
      v10 = [v18 candidateIdentifier];
      if ([v9 _isCandidateIdentifier:v10 inHistory:*(a1 + 56)])
      {
        v11 = 1;
      }

      else
      {
        v12 = [*(a1 + 32) _sameIcloudForCandidate:v18 systemState:*(a1 + 64)];
        v11 = [v12 BOOLean];
      }
    }

    else
    {
      v11 = 0;
    }

    *(*(*(a1 + 72) + 8) + 24) |= v11;
    if (v11)
    {
      if (!*(*(*(a1 + 80) + 8) + 40) || ([v6 isLessThan:?] & 1) != 0 || objc_msgSend(v6, "isEqual:", *(*(*(a1 + 80) + 8) + 40)) && (objc_msgSend(v18, "nodes"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v17 == 1))
      {
        v13 = [v18 candidateIdentifier];
        v14 = *(*(a1 + 88) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        objc_storeStrong((*(*(a1 + 80) + 8) + 40), v6);
      }
    }
  }
}

- (id)_userRejectedInLastDayWithoutPickerChoicePrerequisiteValueForHistoryContainer:(id)a3 systemState:(id)a4 date:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CBEB18];
  v10 = a3;
  v11 = [v9 array];
  v12 = [v10 historyEvents];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __114__IRRuleCandidate__userRejectedInLastDayWithoutPickerChoicePrerequisiteValueForHistoryContainer_systemState_date___block_invoke;
  v20[3] = &unk_2797E1840;
  v21 = v8;
  v22 = v7;
  v23 = v11;
  v13 = v11;
  v14 = v7;
  v15 = v8;
  [v12 enumerateObjectsWithOptions:2 usingBlock:v20];

  v16 = objc_opt_new();
  v17 = [v13 reverseObjectEnumerator];
  v18 = [v17 allObjects];
  [v16 setFilteredHistoryEvents:v18];

  return v16;
}

void __114__IRRuleCandidate__userRejectedInLastDayWithoutPickerChoicePrerequisiteValueForHistoryContainer_systemState_date___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = MEMORY[0x277CBEAA8];
  v22 = v6;
  v8 = [v6 date];
  LOBYTE(v7) = [v7 isDate:v8 inSameDayAsDate:*(a1 + 32) forTimeZoneInSeconds:{objc_msgSend(*(a1 + 40), "timeZoneSeconds")}];

  if ((v7 & 1) == 0)
  {
    *a4 = 1;
    goto LABEL_12;
  }

  v9 = [v22 event];
  v10 = [IREventDO eventDOWithMediaType:2];
  if ([v9 isEqual:v10])
  {
    goto LABEL_9;
  }

  v11 = [v22 event];
  v12 = [IREventDO eventDOWithMediaType:4];
  if ([v11 isEqual:v12])
  {
LABEL_8:

LABEL_9:
LABEL_10:
    [*(a1 + 48) addObject:v22];
LABEL_12:
    v17 = v22;
    goto LABEL_13;
  }

  v13 = [v22 event];
  v14 = [IREventDO eventDOWithMediaType:0];
  if ([v13 isEqual:v14])
  {
LABEL_7:

    goto LABEL_8;
  }

  v15 = [v22 event];
  v16 = [IREventDO eventDOWithAppleTVControlType:5];
  if ([v15 isEqual:v16])
  {

    goto LABEL_7;
  }

  [v22 event];
  v18 = v20 = v15;
  v19 = [IREventDO eventDOWithAppleTVControlType:0];
  v21 = [v18 isEqual:v19];

  v17 = v22;
  if (v21)
  {
    goto LABEL_10;
  }

LABEL_13:
}

- (BOOL)_isCandidateIdentifier:(id)a3 inHistory:(id)a4
{
  v5 = a3;
  v6 = [a4 historyEvents];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__IRRuleCandidate__isCandidateIdentifier_inHistory___block_invoke;
  v11[3] = &unk_2797E1868;
  v12 = v5;
  v7 = v5;
  v8 = [v6 firstWhere:v11];
  v9 = v8 != 0;

  return v9;
}

uint64_t __52__IRRuleCandidate__isCandidateIdentifier_inHistory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 candidateIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_proximityLowestUwbRangeForCandidate:(id)a3 withNearbyDeviceContainer:(id)a4 date:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEAA8];
  v12 = +[IRPreferences shared];
  v13 = [v12 nearbyDeviceMeasurmentExpityTimeSeconds];
  [v13 doubleValue];
  v31 = v10;
  v15 = [v11 dateWithTimeInterval:v10 sinceDate:-v14];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = v8;
  v16 = [v8 nodes];
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v34;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = [(IRRuleCandidate *)self _matchedDevicefromNode:*(*(&v33 + 1) + 8 * i) withNearbyDeviceContainer:v9 measurementExpiry:v15 isUwb:1];
        v23 = v22;
        if (v22)
        {
          v24 = MEMORY[0x277CCABB0];
          if (v19)
          {
            [v19 doubleValue];
            v26 = v25;
            [v23 range];
            if (v26 < v27)
            {
              v27 = v26;
            }
          }

          else
          {
            [v22 range];
          }

          v28 = [v24 numberWithDouble:v27];

          v19 = v28;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_matchedDevicefromNode:(id)a3 withNearbyDeviceContainer:(id)a4 measurementExpiry:(id)a5 isUwb:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [v11 computedIdsIdentifier];
  v13 = [v11 computedMediaRemoteIdenfifier];
  v14 = [v11 computedMediaRouteIdentifier];

  if (v12 || v13 || v14)
  {
    v16 = @"identifier-doesn't-match";
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = @"identifier-doesn't-match";
    }

    if (v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = @"identifier-doesn't-match";
    }

    if (v14)
    {
      v16 = v14;
    }

    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K = %@ OR %K = %@ OR %K = %@) AND (%K >= %@) ", @"idsIdentifier", v17, @"mediaRemoteIdentifier", v18, @"mediaRemoteIdentifier", v16, @"measurementDate", v10];
    v20 = [v9 nearbyDevices];
    v21 = [v20 filteredSetUsingPredicate:v19];

    if (v6)
    {
      v22 = [v21 firstWhere:&__block_literal_global_9];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = [v21 firstWhere:&__block_literal_global_143];
      }

      v15 = v24;
    }

    else
    {
      v15 = [v21 firstWhere:&__block_literal_global_146];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __92__IRRuleCandidate__matchedDevicefromNode_withNearbyDeviceContainer_measurementExpiry_isUwb___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 proximityType];
  v3 = [v2 isEqual:@"NIHomeDevice"];

  return v3;
}

BOOL __92__IRRuleCandidate__matchedDevicefromNode_withNearbyDeviceContainer_measurementExpiry_isUwb___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 proximityType];
  v3 = [IRProximityProvider isUWBProximityType:v2];

  return v3;
}

BOOL __92__IRRuleCandidate__matchedDevicefromNode_withNearbyDeviceContainer_measurementExpiry_isUwb___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 proximityType];
  v3 = [IRProximityProvider isBLEProximityType:v2];

  return v3;
}

- (BOOL)_proximityBLEValueForCandidate:(id)a3 withNearbyDeviceContainer:(id)a4 date:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [a3 nodes];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [MEMORY[0x277CBEAA8] distantPast];
        v15 = [(IRRuleCandidate *)self _matchedDevicefromNode:v13 withNearbyDeviceContainer:v7 measurementExpiry:v14 isUwb:0];

        if (v15)
        {
          v16 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_sameIcloudForCandidate:(id)a3 systemState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(IRRuleOutputEvaluation);
  v9 = objc_opt_new();
  v10 = [v7 nodes];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __55__IRRuleCandidate__sameIcloudForCandidate_systemState___block_invoke;
  v20 = &unk_2797E13D0;
  v21 = v6;
  v11 = v9;
  v22 = v11;
  v12 = v6;
  [v10 enumerateObjectsUsingBlock:&v17];

  v13 = [v7 nodes];

  v14 = [v13 count];
  if (v14)
  {
    v15 = [(IRRuleCandidate *)self _valueFromValues:v11];

    v8 = v15;
  }

  return v8;
}

void __55__IRRuleCandidate__sameIcloudForCandidate_systemState___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_alloc_init(IRRuleOutputEvaluation);
  v4 = [v8 rapportDevice];

  if (v4)
  {
    [(IRRuleOutputEvaluation *)v3 setHasBoolean:1];
    v5 = [v8 rapportDevice];
    v6 = [v5 iCloudId];
    v7 = [*(a1 + 32) iCloudId];
    -[IRRuleOutputEvaluation setBoolean:](v3, "setBoolean:", [v6 isEqualToString:v7]);
  }

  [*(a1 + 40) addObject:v3];
}

- (id)_sameWiFiForCandidate:(id)a3 systemState:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(IRRuleOutputEvaluation);
  v7 = objc_opt_new();
  v8 = [v5 nodes];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__IRRuleCandidate__sameWiFiForCandidate_systemState___block_invoke;
  v14[3] = &unk_2797E0CA8;
  v9 = v7;
  v15 = v9;
  [v8 enumerateObjectsUsingBlock:v14];

  v10 = [v5 nodes];

  v11 = [v10 count];
  if (v11)
  {
    v12 = [(IRRuleCandidate *)self _valueFromValues:v9];

    v6 = v12;
  }

  return v6;
}

void __53__IRRuleCandidate__sameWiFiForCandidate_systemState___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_alloc_init(IRRuleOutputEvaluation);
  v4 = [v11 avOutpuDeviceIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = [v11 avOutputDevice];
    if (v6)
    {
      v7 = v6;
      v8 = [v11 avOutputDevice];
      v9 = [v8 hasAirplayProperties];

      if (v9)
      {
        v10 = [v11 avOutputDevice];
        -[IRRuleOutputEvaluation setBoolean:](v3, "setBoolean:", [v10 discoveredOverInfra]);

        [(IRRuleOutputEvaluation *)v3 setHasBoolean:1];
      }
    }

    else
    {
    }
  }

  [*(a1 + 32) addObject:v3];
}

- (id)_activeRouteForCandidate:(id)a3 systemState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(IRRuleOutputEvaluation);
  v9 = objc_opt_new();
  v10 = [v7 nodes];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __56__IRRuleCandidate__activeRouteForCandidate_systemState___block_invoke;
  v20 = &unk_2797E13D0;
  v21 = v6;
  v11 = v9;
  v22 = v11;
  v12 = v6;
  [v10 enumerateObjectsUsingBlock:&v17];

  v13 = [v7 nodes];

  v14 = [v13 count];
  if (v14)
  {
    v15 = [(IRRuleCandidate *)self _valueFromValues:v11];

    v8 = v15;
  }

  return v8;
}

void __56__IRRuleCandidate__activeRouteForCandidate_systemState___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_alloc_init(IRRuleOutputEvaluation);
  v4 = [v8 avOutputDevice];

  if (v4)
  {
    [(IRRuleOutputEvaluation *)v3 setHasBoolean:1];
    v5 = [v8 avOutputDevice];
    v6 = [v5 deviceID];
    v7 = [*(a1 + 32) mediaRouteGroupLeaderOutputDeviceID];
    -[IRRuleOutputEvaluation setBoolean:](v3, "setBoolean:", [v6 isEqual:v7]);
  }

  [*(a1 + 40) addObject:v3];
}

- (id)_mediaUserRejectedInLastDayWithoutPickerChoiceForCandidate:(id)a3 prerequisite:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(IRRuleOutputEvaluation);
  [(IRRuleOutputEvaluation *)v8 setHasBoolean:1];
  v9 = [(IRRuleCandidate *)self _isLastEventForCandidate:v7 inPrerequisite:v6 isOneOf:&unk_286768EF0];

  [(IRRuleOutputEvaluation *)v8 setBoolean:v9];

  return v8;
}

- (id)_appleTVControlUserRejectedInLastDayWithoutPickerChoiceForCandidate:(id)a3 prerequisite:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(IRRuleOutputEvaluation);
  [(IRRuleOutputEvaluation *)v8 setHasBoolean:1];
  v9 = [(IRRuleCandidate *)self _isLastEventForCandidate:v7 inPrerequisite:v6 isOneOf:&unk_286768F08];

  [(IRRuleOutputEvaluation *)v8 setBoolean:v9];

  return v8;
}

- (BOOL)_isLastEventForCandidate:(id)a3 inPrerequisite:(id)a4 isOneOf:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v8;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v11 = [v10 filteredHistoryEvents];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__IRRuleCandidate__isLastEventForCandidate_inPrerequisite_isOneOf___block_invoke;
  v17[3] = &unk_2797E18B0;
  v12 = v7;
  v18 = v12;
  v19 = &v20;
  [v11 enumerateObjectsWithOptions:2 usingBlock:v17];

  if (v21[5])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__IRRuleCandidate__isLastEventForCandidate_inPrerequisite_isOneOf___block_invoke_2;
    v16[3] = &unk_2797E18D8;
    v16[4] = &v20;
    v13 = [v9 firstWhere:v16];
    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v20, 8);
  return v14;
}

void __67__IRRuleCandidate__isLastEventForCandidate_inPrerequisite_isOneOf___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [*(a1 + 32) candidateIdentifier];
  v7 = [v14 candidateIdentifier];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [v14 event];
    v11 = [v9 numberWithLongLong:{objc_msgSend(v10, "eventType")}];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a4 = 1;
  }
}

- (id)_valueFromValues:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(IRRuleOutputEvaluation);
  v6 = [v4 count];
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = YES", @"hasBoolean"];
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = YES", @"BOOLean"];
    v10 = [v4 filteredSetUsingPredicate:v8];
    v11 = [v10 count];

    v12 = [v4 filteredSetUsingPredicate:v9];
    v13 = [v12 count];

    if ([(IRRuleCandidate *)self requireAllNodes])
    {
      v14 = v11 == v7;
    }

    else
    {
      v14 = v11 != 0;
    }

    [(IRRuleOutputEvaluation *)v5 setHasBoolean:v14];
    if ([(IRRuleCandidate *)self requireAllNodes])
    {
      v15 = v13 == v7;
    }

    else
    {
      v15 = v13 != 0;
    }

    [(IRRuleOutputEvaluation *)v5 setBoolean:v15];
  }

  return v5;
}

- (id)_attributeValueForAttributeKey:(id)a3 prerequisite:(id)a4 withCandidate:(id)a5 nearbyDeviceContainer:(id)a6 systemState:(id)a7 date:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = objc_alloc_init(IRRuleOutputEvaluation);
  if ([v14 isEqual:@"kIRRuleCandidateSameWiFiKey"])
  {
    v21 = [(IRRuleCandidate *)self _sameWiFiForCandidate:v16 systemState:v18];
  }

  else if ([v14 isEqual:@"kIRRuleCandidateSameiCloudKey"])
  {
    v21 = [(IRRuleCandidate *)self _sameIcloudForCandidate:v16 systemState:v18];
  }

  else if ([v14 isEqual:@"kIRRuleCandidateProximityKey"])
  {
    v21 = [(IRRuleCandidate *)self _proximityValueForCandidate:v16 withNearbyDeviceContainer:v17 prerequisite:v15 date:v19];
  }

  else if ([v14 isEqual:@"kIRRuleCandidateProximityShortestRangeKey"])
  {
    v21 = [(IRRuleCandidate *)self _proximityShortestRangeValueForCandidate:v16 withNearbyDeviceContainer:v17 prerequisite:v15 date:v19];
  }

  else if ([v14 isEqual:@"kIRRuleCandidateProximityShortestRangeInHistoryOrSameICloudKey"])
  {
    v21 = [(IRRuleCandidate *)self _proximityShortestRangeInHistoryOrSameICloudValueForCandidate:v16 withNearbyDeviceContainer:v17 prerequisite:v15 date:v19];
  }

  else if ([v14 isEqual:@"kIRRuleCandidateActiveRouteKey"])
  {
    v21 = [(IRRuleCandidate *)self _activeRouteForCandidate:v16 systemState:v18];
  }

  else if ([v14 isEqual:@"kIRRuleCandidateMediaUserRejectedInLastDayWithoutPickerChoiceKey"])
  {
    v21 = [(IRRuleCandidate *)self _mediaUserRejectedInLastDayWithoutPickerChoiceForCandidate:v16 prerequisite:v15];
  }

  else
  {
    if (![v14 isEqual:@"kIRRuleCandidateAppleTVControlUserRejectedInLastDayWithoutPickerChoiceKey"])
    {
      goto LABEL_18;
    }

    v21 = [(IRRuleCandidate *)self _appleTVControlUserRejectedInLastDayWithoutPickerChoiceForCandidate:v16 prerequisite:v15];
  }

  v22 = v21;

  v20 = v22;
LABEL_18:

  return v20;
}

- (id)_prerequisiteValueForAttributeKey:(id)a3 withCandidatesContainer:(id)a4 nearbyDeviceContainer:(id)a5 systemState:(id)a6 historyContainer:(id)a7 date:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([v14 isEqual:@"kIRRuleCandidateProximityKey"])
  {
    v20 = [(IRRuleCandidate *)self _proximityPrerequisiteValueForCandidatesContainer:v15 withNearbyDeviceContainer:v16 date:v19];
LABEL_10:
    v21 = v20;
    goto LABEL_11;
  }

  if ([v14 isEqual:@"kIRRuleCandidateProximityShortestRangeKey"])
  {
    v20 = [(IRRuleCandidate *)self _shortestRangeProximityPrerequisiteValueForCandidatesContainer:v15 withNearbyDeviceContainer:v16 date:v19];
    goto LABEL_10;
  }

  if ([v14 isEqual:@"kIRRuleCandidateProximityShortestRangeInHistoryOrSameICloudKey"])
  {
    v20 = [(IRRuleCandidate *)self _shortestRangeWithHistoryOrSameICloudProximityPrerequisiteValueForCandidatesContainer:v15 withNearbyDeviceContainer:v16 historyContainer:v18 systemState:v17 date:v19];
    goto LABEL_10;
  }

  if (([v14 isEqual:@"kIRRuleCandidateMediaUserRejectedInLastDayWithoutPickerChoiceKey"] & 1) != 0 || objc_msgSend(v14, "isEqual:", @"kIRRuleCandidateAppleTVControlUserRejectedInLastDayWithoutPickerChoiceKey"))
  {
    v20 = [(IRRuleCandidate *)self _userRejectedInLastDayWithoutPickerChoicePrerequisiteValueForHistoryContainer:v18 systemState:v17 date:v19];
    goto LABEL_10;
  }

  v21 = 0;
LABEL_11:

  return v21;
}

@end