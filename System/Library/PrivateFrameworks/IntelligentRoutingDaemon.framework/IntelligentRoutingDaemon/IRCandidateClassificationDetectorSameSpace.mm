@interface IRCandidateClassificationDetectorSameSpace
+ (BOOL)isSameSpaceForCandidate:(id)a3 basedOnMiLoPrediction:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6;
+ (id)sameSpaceMiLoScoresForCandidate:(id)a3 basedOnMiLoPrediction:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6;
- (BOOL)_isSameSpaceBasedOnPDRFenceForCandidate:(id)a3 basedOnSystemState:(id)a4;
- (BOOL)_isSameSpaceBrokeredDeviceForCandidate:(id)a3 basedOnSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6;
- (BOOL)_isSameSpaceCandidate:(id)a3;
- (BOOL)_isSameSpaceForCandidate:(id)a3 basedOnHistoryEventsAsc:(id)a4 andDate:(id)a5;
- (id)_isSameSpaceForCandidate:(id)a3 basedOnNearbyDevices:(id)a4 andExpiryDate:(id)a5 isUWB:(BOOL)a6;
- (void)adjustSameSpaceParametersForCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andMiLoPrediction:(id)a6 andNearbyDevicesContainer:(id)a7 andDate:(id)a8;
@end

@implementation IRCandidateClassificationDetectorSameSpace

+ (id)sameSpaceMiLoScoresForCandidate:(id)a3 basedOnMiLoPrediction:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v10 canUse])
  {
    v13 = +[IRPreferences shared];
    v14 = [v13 miloSameSpaceEventsTimeIntervalSeconds];
    [v14 doubleValue];
    v16 = [v12 dateByAddingTimeInterval:-v15];

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __128__IRCandidateClassificationDetectorSameSpace_sameSpaceMiLoScoresForCandidate_basedOnMiLoPrediction_andHistoryEventsAsc_andDate___block_invoke;
    v43[3] = &unk_2797E1AA0;
    v44 = v9;
    v17 = v16;
    v45 = v17;
    v18 = [v11 allWhere:v43];
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v19 = +[IRPreferences shared];
    v20 = [v19 miloLslIsSameMiloThreshold];
    [v20 doubleValue];
    v22 = v21;

    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __128__IRCandidateClassificationDetectorSameSpace_sameSpaceMiLoScoresForCandidate_basedOnMiLoPrediction_andHistoryEventsAsc_andDate___block_invoke_2;
    v30 = &unk_2797E1AC8;
    v32 = &v39;
    v34 = v22;
    v31 = v10;
    v33 = &v35;
    [v18 enumerateObjectsUsingBlock:&v27];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v36[3], v27, v28, v29, v30}];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40[3]];
    v25 = [IRPair pairWithFirst:v23 second:v24];

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v25 = [IRPair pairWithFirst:&unk_286769040 second:&unk_286769040];
  }

  return v25;
}

uint64_t __128__IRCandidateClassificationDetectorSameSpace_sameSpaceMiLoScoresForCandidate_basedOnMiLoPrediction_andHistoryEventsAsc_andDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidateIdentifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5 && ([v3 date], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEarlierThan:", *(a1 + 40)), v6, (v7 & 1) == 0))
  {
    v9 = [v3 event];
    v8 = [v9 isUserIntentionEvent];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __128__IRCandidateClassificationDetectorSameSpace_sameSpaceMiLoScoresForCandidate_basedOnMiLoPrediction_andHistoryEventsAsc_andDate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = +[IRPreferences shared];
  v8 = [v7 miloSameSpaceEventsNumberOfEventsToWatch];
  v9 = [v8 unsignedIntValue];

  if (v6 >= v9)
  {
    *a4 = 1;
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [v14 miloPredictionEvent];
    v12 = [v10 scoreForPredictionEventEvent:v11];

    if (v12)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
      [v12 doubleValue];
      if (v13 > *(a1 + 56))
      {
        ++*(*(*(a1 + 48) + 8) + 24);
      }
    }
  }
}

+ (BOOL)isSameSpaceForCandidate:(id)a3 basedOnMiLoPrediction:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_class();
  v14 = [v12 candidateIdentifier];

  v15 = [v13 sameSpaceMiLoScoresForCandidate:v14 basedOnMiLoPrediction:v11 andHistoryEventsAsc:v10 andDate:v9];

  v16 = [v15 first];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v15 second];
  [v19 doubleValue];
  v21 = v20;

  if (v21 <= 0.0)
  {
    v25 = 0;
  }

  else
  {
    v22 = +[IRPreferences shared];
    v23 = [v22 miloSameSpaceRatioThreshold];
    [v23 doubleValue];
    v25 = v18 / v21 > v24;
  }

  return v25;
}

- (void)adjustSameSpaceParametersForCandidates:(id)a3 withSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andMiLoPrediction:(id)a6 andNearbyDevicesContainer:(id)a7 andDate:(id)a8
{
  v63 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v17 freezeDateNIHomeDevice];
  if (v19)
  {
    v40 = [v17 freezeDateNIHomeDevice];
  }

  else
  {
    v40 = v18;
  }

  v20 = +[IRPreferences shared];
  v21 = [v20 nearbyDeviceMeasurmentExpityTimeSeconds];
  [v21 doubleValue];
  v23 = [v40 dateByAddingTimeInterval:-v22];

  v24 = [MEMORY[0x277CBEAA8] distantPast];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __173__IRCandidateClassificationDetectorSameSpace_adjustSameSpaceParametersForCandidates_withSystemState_andHistoryEventsAsc_andMiLoPrediction_andNearbyDevicesContainer_andDate___block_invoke;
  v42[3] = &unk_2797E1AF0;
  v42[4] = self;
  v25 = v16;
  v43 = v25;
  v26 = v15;
  v44 = v26;
  v27 = v18;
  v45 = v27;
  v28 = v14;
  v46 = v28;
  v29 = v17;
  v47 = v29;
  v30 = v23;
  v48 = v30;
  v31 = v24;
  v49 = v31;
  v50 = &v51;
  [v41 enumerateObjectsUsingBlock:v42];
  v32 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v33 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v39 = v25;
    v34 = v28;
    v35 = v26;
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52[3]];
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v41, "count")}];
    *buf = 136315906;
    v56 = "#detector-same-space, ";
    v57 = 2112;
    v58 = v32;
    v59 = 2112;
    v60 = v36;
    v61 = 2112;
    v62 = v37;
    _os_log_impl(&dword_25543D000, v33, OS_LOG_TYPE_INFO, "%s[%@], #sameSpaceCandidates=%@, #totalCandidatesTested=%@", buf, 0x2Au);

    v26 = v35;
    v28 = v34;
    v25 = v39;
  }

  _Block_object_dispose(&v51, 8);
  v38 = *MEMORY[0x277D85DE8];
}

void __173__IRCandidateClassificationDetectorSameSpace_adjustSameSpaceParametersForCandidates_withSystemState_andHistoryEventsAsc_andMiLoPrediction_andNearbyDevicesContainer_andDate___block_invoke(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = [v3 candidate];
  v7 = [v5 isSameSpaceForCandidate:v6 basedOnMiLoPrediction:*(a1 + 40) andHistoryEventsAsc:*(a1 + 48) andDate:*(a1 + 56)];

  v8 = *(a1 + 32);
  v9 = [v3 candidate];
  v10 = [v8 _isSameSpaceBrokeredDeviceForCandidate:v9 basedOnSystemState:*(a1 + 64) andHistoryEventsAsc:*(a1 + 48) andDate:*(a1 + 56)];

  v11 = *(a1 + 32);
  v12 = [v3 candidate];
  v13 = [v11 _isSameSpaceBasedOnPDRFenceForCandidate:v12 basedOnSystemState:*(a1 + 64)];

  v14 = *(a1 + 32);
  v15 = [v3 candidate];
  v16 = [*(a1 + 72) nearbyDevices];
  v17 = [v14 _isSameSpaceForCandidate:v15 basedOnNearbyDevices:v16 andExpiryDate:*(a1 + 80) isUWB:1];

  v18 = *(a1 + 32);
  v19 = [v3 candidate];
  v20 = [*(a1 + 72) nearbyDevices];
  v21 = [v18 _isSameSpaceForCandidate:v19 basedOnNearbyDevices:v20 andExpiryDate:*(a1 + 88) isUWB:0];

  v22 = 0;
  if (+[IRPlatformInfo isTVOS])
  {
    v23 = *(a1 + 32);
    v24 = [v3 candidate];
    v22 = [v23 _isSameSpaceForCandidate:v24 basedOnHistoryEventsAsc:*(a1 + 48) andDate:*(a1 + 56)];
  }

  v25 = +[IRPreferences shared];
  v26 = [v25 miloRoomDetectionInCustomLOIEnabled];
  if ([v26 BOOLValue] & 1) != 0 || ((v7 ^ 1))
  {
  }

  else
  {
    v48 = v21;
    v27 = v17;
    v28 = v22;
    v29 = v7;
    v30 = v13;
    v31 = v10;
    v32 = [*(a1 + 64) locationSemanticUserSpecificPlaceType];

    v33 = v32 == 5;
    v10 = v31;
    v13 = v30;
    v7 = v29;
    v22 = v28;
    v17 = v27;
    v21 = v48;
    if (v33)
    {
      v34 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v35 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v51 = "#detector-same-space, ";
        v52 = 2112;
        v53 = v34;
        _os_log_impl(&dword_25543D000, v35, OS_LOG_TYPE_INFO, "%s[%@], MiLo room detection in custom LOI is disabled and LOI is custom, disabling sameSpaceBasedOnMiLo", buf, 0x16u);
      }

      v7 = 0;
    }
  }

  [v3 setSameSpaceBasedOnMiLo:v7];
  [v3 setSameSpaceBasedOnBrokeredLOI:v10];
  [v3 setSameSpaceBasedOnUWB:v17 != 0];
  [v3 setSameSpaceBasedOnBLE:v21 != 0];
  [v3 setSameSpaceBasedOnPDRFence:v13];
  [v3 setUwbRange:v17];
  [v3 setBleRange:v21];
  [v3 setSameSpaceBasedOnHistory:v22];
  [v3 setIsSameSpace:{objc_msgSend(*(a1 + 32), "_isSameSpaceCandidate:", v3)}];
  if ([v3 isSameSpace])
  {
    ++*(*(*(a1 + 96) + 8) + 24);
    v36 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v37 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      log = v37;
      v47 = [v3 candidate];
      v38 = [v47 name];
      v46 = [v3 candidate];
      [v46 candidateIdentifier];
      v39 = v49 = v36;
      v40 = [MEMORY[0x277CCABB0] numberWithBool:v7];
      v41 = [MEMORY[0x277CCABB0] numberWithBool:v10];
      v42 = [MEMORY[0x277CCABB0] numberWithBool:v13];
      v43 = [MEMORY[0x277CCABB0] numberWithBool:v22];
      *buf = 136317442;
      v51 = "#detector-same-space, ";
      v52 = 2112;
      v53 = v49;
      v54 = 2112;
      v55 = v38;
      v56 = 2112;
      v57 = v39;
      v58 = 2112;
      v59 = v40;
      v60 = 2112;
      v61 = v41;
      v62 = 2112;
      v63 = v42;
      v64 = 2112;
      v65 = v17;
      v66 = 2112;
      v67 = v21;
      v68 = 2112;
      v69 = v43;
      _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_INFO, "%s[%@], SameSpaceCandidate: name: %@, identifier: %@, MiLo: %@, BrokeredDeviceInLOI: %@, PDRFence: %@, uwbRange: %@, bleRange: %@, history: %@", buf, 0x66u);

      v36 = v49;
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isSameSpaceCandidate:(id)a3
{
  v3 = a3;
  if ([v3 sameSpaceBasedOnMiLo] & 1) != 0 || (objc_msgSend(v3, "sameSpaceBasedOnUWB") & 1) != 0 || (objc_msgSend(v3, "sameSpaceBasedOnBLE") & 1) != 0 || (objc_msgSend(v3, "sameSpaceBasedOnBrokeredLOI") & 1) != 0 || (objc_msgSend(v3, "sameSpaceBasedOnPDRFence"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 sameSpaceBasedOnHistory];
  }

  return v4;
}

- (id)_isSameSpaceForCandidate:(id)a3 basedOnNearbyDevices:(id)a4 andExpiryDate:(id)a5 isUWB:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0x408F400000000000;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__8;
  v27[4] = __Block_byref_object_dispose__8;
  v28 = 0;
  v12 = [v9 nodes];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke;
  v21[3] = &unk_2797E1B40;
  v13 = v10;
  v22 = v13;
  v14 = v11;
  v26 = a6;
  v23 = v14;
  v24 = v27;
  v25 = &v29;
  [v12 enumerateObjectsUsingBlock:v21];

  v15 = +[IRPreferences shared];
  v16 = [v15 deviceRangeProximityThreshold];
  [v16 doubleValue];
  v18 = v17;

  if (v30[3] <= v18)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);

  return v19;
}

void __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke_2;
  v21 = &unk_2797E1B18;
  v4 = *(a1 + 32);
  v22 = *(a1 + 40);
  v5 = v3;
  v23 = v5;
  v6 = [v4 allWhere:&v18];
  v7 = v6;
  if (*(a1 + 64) != 1)
  {
    v11 = &__block_literal_global_30;
    goto LABEL_5;
  }

  v8 = [v6 firstWhere:{&__block_literal_global_11, v18, v19, v20, v21, v22}];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = &__block_literal_global_27;
LABEL_5:
    v12 = [v7 firstWhere:{v11, v18, v19, v20, v21}];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v15 = *(*(*(a1 + 48) + 8) + 40);
  if (v15)
  {
    [v15 range];
    if (v16 <= *(*(*(a1 + 56) + 8) + 24))
    {
      [*(*(*(a1 + 48) + 8) + 40) range];
      *(*(*(a1 + 56) + 8) + 24) = v17;
    }
  }
}

uint64_t __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 measurementDate];
  v5 = [v4 isEarlierThan:*(a1 + 32)];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [*(a1 + 40) computedIdsIdentifier];
    v8 = [v3 idsIdentifier];
    if ([v7 isEqual:v8])
    {
      v6 = 1;
    }

    else
    {
      v9 = [*(a1 + 40) computedMediaRemoteIdenfifier];
      v10 = [v3 mediaRemoteIdentifier];
      if ([v9 isEqual:v10])
      {
        v6 = 1;
      }

      else
      {
        v11 = [*(a1 + 40) computedMediaRouteIdentifier];
        v12 = [v3 mediaRemoteIdentifier];
        v6 = [v11 isEqual:v12];
      }
    }
  }

  return v6;
}

uint64_t __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 proximityType];
  v3 = [v2 isEqual:@"NIHomeDevice"];

  return v3;
}

BOOL __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 proximityType];
  v3 = [IRProximityProvider isUWBProximityType:v2];

  return v3;
}

BOOL __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 proximityType];
  v3 = [IRProximityProvider isBLEProximityType:v2];

  return v3;
}

- (BOOL)_isSameSpaceBrokeredDeviceForCandidate:(id)a3 basedOnSystemState:(id)a4 andHistoryEventsAsc:(id)a5 andDate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 isBrokeredDevice])
  {
    v13 = +[IRPreferences shared];
    v14 = [v13 loiSameSpaceEventsTimeIntervalSeconds];
    [v14 doubleValue];
    v16 = [v12 dateByAddingTimeInterval:-v15];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __132__IRCandidateClassificationDetectorSameSpace__isSameSpaceBrokeredDeviceForCandidate_basedOnSystemState_andHistoryEventsAsc_andDate___block_invoke;
    v21[3] = &unk_2797E1B68;
    v22 = v9;
    v23 = v16;
    v24 = v10;
    v17 = v16;
    v18 = [v11 firstWhere:v21];
    v19 = v18 != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t __132__IRCandidateClassificationDetectorSameSpace__isSameSpaceBrokeredDeviceForCandidate_basedOnSystemState_andHistoryEventsAsc_andDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidateIdentifier];
  v5 = [*(a1 + 32) candidateIdentifier];
  v6 = [v4 isEqual:v5];

  if (!v6)
  {
    goto LABEL_3;
  }

  v7 = [v3 date];
  v8 = [v7 isEarlierThan:*(a1 + 40)];

  if (v8)
  {
    goto LABEL_3;
  }

  v11 = [v3 systemState];
  if ([v11 locationSemanticUserSpecificPlaceType] != 5)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v12 = [*(a1 + 48) locationSemanticUserSpecificPlaceType];

  if (v12 == 5)
  {
    v13 = [v3 systemState];
    v14 = [v13 locationSemanticLoiIdentifier];
    v15 = [*(a1 + 48) locationSemanticLoiIdentifier];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      v11 = [v3 event];
      v9 = [v11 isUserIntentionEvent];
LABEL_10:

      goto LABEL_4;
    }
  }

LABEL_3:
  v9 = 0;
LABEL_4:

  return v9;
}

- (BOOL)_isSameSpaceBasedOnPDRFenceForCandidate:(id)a3 basedOnSystemState:(id)a4
{
  v5 = a4;
  if ([a3 isBrokeredDevice])
  {
    v6 = [v5 pdrFenceActive];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isSameSpaceForCandidate:(id)a3 basedOnHistoryEventsAsc:(id)a4 andDate:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[IRPreferences shared];
  v11 = [v10 historySameSpaceEventsTimeIntervalSeconds];
  [v11 doubleValue];
  v13 = [v8 dateByAddingTimeInterval:-v12];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnHistoryEventsAsc_andDate___block_invoke;
  v17[3] = &unk_2797E1AA0;
  v18 = v7;
  v19 = v13;
  v14 = v13;
  v15 = v7;
  LOBYTE(v11) = [v9 containsObjectPassingTest:v17];

  return v11;
}

uint64_t __103__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnHistoryEventsAsc_andDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidateIdentifier];
  v5 = [*(a1 + 32) candidateIdentifier];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [v3 date];
    v8 = [v7 isLaterThanOrEqualTo:*(a1 + 40)];

    if (v8)
    {
      v9 = [v3 event];
      v8 = [v9 isUserIntentionEvent];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end