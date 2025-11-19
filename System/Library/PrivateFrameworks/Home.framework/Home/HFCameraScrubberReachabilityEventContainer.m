@interface HFCameraScrubberReachabilityEventContainer
+ (id)na_identity;
- (BOOL)isComplete;
- (BOOL)isEqual:(id)a3;
- (HFCameraScrubberReachabilityEventContainer)initWithStartEvent:(id)a3 endEvent:(id)a4;
- (NSDate)dateOfOccurrence;
- (NSDate)hf_endDate;
- (NSDateInterval)hf_dateInterval;
- (NSSet)eventUniqueIdentifiers;
- (NSString)description;
- (NSString)displayDescription;
- (NSUUID)uniqueIdentifier;
- (double)hf_duration;
- (id)hf_stateDumpBuilderWithContext:(id)a3;
- (unint64_t)hash;
@end

@implementation HFCameraScrubberReachabilityEventContainer

- (HFCameraScrubberReachabilityEventContainer)initWithStartEvent:(id)a3 endEvent:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HFCameraScrubberReachabilityEventContainer.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"startEvent"}];
  }

  v14.receiver = self;
  v14.super_class = HFCameraScrubberReachabilityEventContainer;
  v10 = [(HFCameraScrubberReachabilityEventContainer *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_startEvent, a3);
    objc_storeStrong(&v11->_endEvent, a4);
  }

  return v11;
}

- (NSDate)dateOfOccurrence
{
  v2 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
  v3 = [v2 dateOfOccurrence];

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  v3 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];

  if (v3)
  {
    v4 = MEMORY[0x277CCAD78];
    v5 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
    v6 = [v5 uniqueIdentifier];
    v7 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
    v8 = [v7 uniqueIdentifier];
    v9 = [v8 UUIDString];
    v10 = [v9 dataUsingEncoding:4];
    v11 = [v4 hmf_UUIDWithNamespace:v6 data:v10];
  }

  else
  {
    v5 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
    v11 = [v5 uniqueIdentifier];
  }

  return v11;
}

- (NSSet)eventUniqueIdentifiers
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 setWithObject:v5];

  v7 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  v8 = [v7 uniqueIdentifier];
  [v6 na_safeAddObject:v8];

  return v6;
}

- (double)hf_duration
{
  v3 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];

  if (!v3)
  {
    return 4.0;
  }

  v4 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  v5 = [v4 dateOfOccurrence];
  v6 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
  v7 = [v6 dateOfOccurrence];
  [v5 timeIntervalSinceDate:v7];
  v9 = v8;

  result = 4.0;
  if (v9 >= 0.0)
  {
    return v9;
  }

  return result;
}

- (NSDate)hf_endDate
{
  v3 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];

  if (v3)
  {
    v4 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
    [v4 dateOfOccurrence];
  }

  else
  {
    v4 = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
    [(HFCameraScrubberReachabilityEventContainer *)self hf_duration];
    [v4 dateByAddingTimeInterval:?];
  }
  v5 = ;

  return v5;
}

- (NSDateInterval)hf_dateInterval
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v4 = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  [(HFCameraScrubberReachabilityEventContainer *)self hf_duration];
  v5 = [v3 initWithStartDate:v4 duration:?];

  return v5;
}

- (BOOL)isComplete
{
  v2 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  v3 = v2 != 0;

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFCameraScrubberReachabilityEventContainer *)self uniqueIdentifier];
  v5 = [v3 appendObject:v4 withName:@"uniqueIdentifier"];

  v6 = [(HFCameraScrubberReachabilityEventContainer *)self eventUniqueIdentifiers];
  v7 = [v3 appendObject:v6 withName:@"eventUniqueIdentifiers"];

  v8 = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  v9 = [HFCameraUtilities dayStringFromDate:v8];

  v10 = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  v11 = [HFCameraUtilities fullTimeStringFromDate:v10];

  v12 = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  [(HFCameraScrubberReachabilityEventContainer *)self duration];
  v13 = [v12 dateByAddingTimeInterval:?];

  v14 = [HFCameraUtilities dayStringFromDate:v13];
  v15 = [HFCameraUtilities fullTimeStringFromDate:v13];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ – %@ %@", v9, v11, v14, v15];
  [v3 appendString:v16 withName:@"dateRange"];

  v17 = MEMORY[0x277CCACA8];
  v18 = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  [(HFCameraScrubberReachabilityEventContainer *)self duration];
  v20 = [v17 stringWithFormat:@"%@ + %f = %@", v18, v19, v13];

  [v3 appendString:v20 withName:@"dateInterval"];
  v21 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
  v22 = [v21 hf_prettyDescription];
  v23 = [v3 appendObject:v22 withName:@"startEvent"];

  v24 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  v25 = [v24 hf_prettyDescription];
  v26 = [v3 appendObject:v25 withName:@"endEvent"];

  v27 = [v3 build];

  return v27;
}

- (NSString)displayDescription
{
  v3 = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  v4 = [HFCameraUtilities attributedShortTimeStringFromDate:v3];
  v5 = [v4 string];

  v6 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  v7 = [v6 dateOfOccurrence];

  if (!v7)
  {
    v30 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
    v31 = [v30 dateOfOccurrence];
    v32 = [HFCameraUtilities isDateToday:v31];

    if (v32)
    {
      HFLocalizedStringWithFormat(@"HFCameraReachabilityOfflineCurrentlyTodayFormat", @"%@", v33, v34, v35, v36, v37, v38, v5);
    }

    else
    {
      v49 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
      v50 = [v49 dateOfOccurrence];
      v51 = [HFCameraUtilities isDateYesterday:v50];

      if (!v51)
      {
        v81 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
        v82 = [v81 dateOfOccurrence];
        v11 = [HFCameraUtilities localizerKeyDayNameFromDate:v82];

        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCameraReachabilityOfflineCurrently%@Format", v11];
        v29 = HFLocalizedStringWithFormat(v41, @"%@", v83, v84, v85, v86, v87, v88, v5);
        goto LABEL_26;
      }

      HFLocalizedStringWithFormat(@"HFCameraReachabilityOfflineCurrentlyYesterdayFormat", @"%@", v52, v53, v54, v55, v56, v57, v5);
    }
    v29 = ;
    goto LABEL_28;
  }

  v8 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  v9 = [v8 dateOfOccurrence];
  v10 = [HFCameraUtilities attributedShortTimeStringFromDate:v9];
  v11 = [v10 string];

  v12 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
  v13 = [v12 dateOfOccurrence];
  LODWORD(v9) = [HFCameraUtilities isDateToday:v13];

  v14 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  v15 = [v14 dateOfOccurrence];
  v16 = [HFCameraUtilities isDateToday:v15];

  v17 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
  v18 = [v17 dateOfOccurrence];
  v19 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  v20 = [v19 dateOfOccurrence];
  v21 = [HFCameraUtilities isDate:v18 withinSameMinuteOf:v20];

  if (v9)
  {
    if (v21)
    {
      v28 = @"HFCameraReachabilityOfflineAtTodayFormat";
    }

    else
    {
      v28 = @"HFCameraReachabilityOfflineDurationTodayFormat";
    }

    v29 = HFLocalizedStringWithFormat(v28, @"%@%@", v22, v23, v24, v25, v26, v27, v5);
    goto LABEL_27;
  }

  if (v16)
  {
    v39 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
    v40 = [v39 dateOfOccurrence];
    v41 = [HFCameraUtilities localizerKeyDayNameFromDate:v40];

    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCameraReachabilityOfflineDurationIncludesToday%@Format", v41];
    v29 = HFLocalizedStringWithFormat(v42, @"%@%@", v43, v44, v45, v46, v47, v48, v5);
  }

  else
  {
    v58 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
    v59 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
    v60 = [v59 dateOfOccurrence];
    v61 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
    v62 = [v61 dateOfOccurrence];
    v63 = [v58 isDate:v60 inSameDayAsDate:v62];

    if (v63)
    {
      v64 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
      v65 = [v64 dateOfOccurrence];
      v66 = [HFCameraUtilities localizerKeyDayNameFromDate:v65];

      v67 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
      v68 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
      v69 = [v68 dateOfOccurrence];
      v70 = [v67 component:32 fromDate:v69];

      v71 = @"HFCameraReachabilityOfflineAtSameDay%@SingularFormat";
      if (v70 != 1)
      {
        v71 = @"HFCameraReachabilityOfflineAtSameDay%@Format";
      }

      v72 = @"HFCameraReachabilityOfflineDurationSameDay%@SingularFormat";
      if (v70 != 1)
      {
        v72 = @"HFCameraReachabilityOfflineDurationSameDay%@Format";
      }

      if (v21)
      {
        v73 = v71;
      }

      else
      {
        v73 = v72;
      }

      v74 = [MEMORY[0x277CCACA8] stringWithFormat:v73, v66];
      v29 = HFLocalizedStringWithFormat(v74, @"%@%@", v75, v76, v77, v78, v79, v80, v5);

      goto LABEL_27;
    }

    v89 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
    v90 = [v89 dateOfOccurrence];
    v41 = [HFCameraUtilities localizerKeyDayNameFromDate:v90];

    v91 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
    v92 = [v91 dateOfOccurrence];
    v42 = [HFCameraUtilities localizerKeyDayNameFromDate:v92];

    v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCameraReachabilityOfflineDurationMultiDay%@%@Format", v41, v42];
    v29 = HFLocalizedStringWithFormat(v93, @"%@%@", v94, v95, v96, v97, v98, v99, v5);
  }

LABEL_26:
LABEL_27:

LABEL_28:

  return v29;
}

- (id)hf_stateDumpBuilderWithContext:(id)a3
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  v6 = [(HFCameraScrubberReachabilityEventContainer *)self uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [MEMORY[0x277CCAA68] hf_rfc3339Formatter];
  v8 = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  v9 = [v7 stringFromDate:v8];
  [v5 setObject:v9 forKeyedSubscript:@"dateOfOccurrence"];

  v10 = [v4 detailLevel];
  if (v10 == 2)
  {
    v11 = MEMORY[0x277CCABB0];
    [(HFCameraScrubberReachabilityEventContainer *)self duration];
    [v11 numberWithDouble:?];
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    [(HFCameraScrubberReachabilityEventContainer *)self duration];
    [v12 stringWithFormat:@"%.2f", v13];
  }
  v14 = ;
  [v5 setObject:v14 forKeyedSubscript:@"duration"];

  v15 = [(HFCameraScrubberReachabilityEventContainer *)self hf_dateInterval];
  v16 = [v15 hf_hksvDescription];
  [v5 setObject:v16 forKeyedSubscript:@"dateIntervalString"];

  return v5;
}

+ (id)na_identity
{
  if (_MergedGlobals_321 != -1)
  {
    dispatch_once(&_MergedGlobals_321, &__block_literal_global_96_1);
  }

  v3 = qword_280E03CE8;

  return v3;
}

void __57__HFCameraScrubberReachabilityEventContainer_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_103_3];
  v2 = [v0 appendCharacteristic:&__block_literal_global_105_4];
  v3 = [v0 build];

  v4 = qword_280E03CE8;
  qword_280E03CE8 = v3;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

@end