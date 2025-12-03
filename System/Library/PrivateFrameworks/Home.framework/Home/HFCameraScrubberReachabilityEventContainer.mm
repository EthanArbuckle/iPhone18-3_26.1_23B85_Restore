@interface HFCameraScrubberReachabilityEventContainer
+ (id)na_identity;
- (BOOL)isComplete;
- (BOOL)isEqual:(id)equal;
- (HFCameraScrubberReachabilityEventContainer)initWithStartEvent:(id)event endEvent:(id)endEvent;
- (NSDate)dateOfOccurrence;
- (NSDate)hf_endDate;
- (NSDateInterval)hf_dateInterval;
- (NSSet)eventUniqueIdentifiers;
- (NSString)description;
- (NSString)displayDescription;
- (NSUUID)uniqueIdentifier;
- (double)hf_duration;
- (id)hf_stateDumpBuilderWithContext:(id)context;
- (unint64_t)hash;
@end

@implementation HFCameraScrubberReachabilityEventContainer

- (HFCameraScrubberReachabilityEventContainer)initWithStartEvent:(id)event endEvent:(id)endEvent
{
  eventCopy = event;
  endEventCopy = endEvent;
  if (!eventCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraScrubberReachabilityEventContainer.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"startEvent"}];
  }

  v14.receiver = self;
  v14.super_class = HFCameraScrubberReachabilityEventContainer;
  v10 = [(HFCameraScrubberReachabilityEventContainer *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_startEvent, event);
    objc_storeStrong(&v11->_endEvent, endEvent);
  }

  return v11;
}

- (NSDate)dateOfOccurrence
{
  startEvent = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
  dateOfOccurrence = [startEvent dateOfOccurrence];

  return dateOfOccurrence;
}

- (NSUUID)uniqueIdentifier
{
  endEvent = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];

  if (endEvent)
  {
    v4 = MEMORY[0x277CCAD78];
    startEvent = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
    uniqueIdentifier = [startEvent uniqueIdentifier];
    endEvent2 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
    uniqueIdentifier2 = [endEvent2 uniqueIdentifier];
    uUIDString = [uniqueIdentifier2 UUIDString];
    v10 = [uUIDString dataUsingEncoding:4];
    uniqueIdentifier3 = [v4 hmf_UUIDWithNamespace:uniqueIdentifier data:v10];
  }

  else
  {
    startEvent = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
    uniqueIdentifier3 = [startEvent uniqueIdentifier];
  }

  return uniqueIdentifier3;
}

- (NSSet)eventUniqueIdentifiers
{
  v3 = MEMORY[0x277CBEB58];
  startEvent = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
  uniqueIdentifier = [startEvent uniqueIdentifier];
  v6 = [v3 setWithObject:uniqueIdentifier];

  endEvent = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  uniqueIdentifier2 = [endEvent uniqueIdentifier];
  [v6 na_safeAddObject:uniqueIdentifier2];

  return v6;
}

- (double)hf_duration
{
  endEvent = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];

  if (!endEvent)
  {
    return 4.0;
  }

  endEvent2 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  dateOfOccurrence = [endEvent2 dateOfOccurrence];
  startEvent = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
  dateOfOccurrence2 = [startEvent dateOfOccurrence];
  [dateOfOccurrence timeIntervalSinceDate:dateOfOccurrence2];
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
  endEvent = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];

  if (endEvent)
  {
    endEvent2 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
    [endEvent2 dateOfOccurrence];
  }

  else
  {
    endEvent2 = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
    [(HFCameraScrubberReachabilityEventContainer *)self hf_duration];
    [endEvent2 dateByAddingTimeInterval:?];
  }
  v5 = ;

  return v5;
}

- (NSDateInterval)hf_dateInterval
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  dateOfOccurrence = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  [(HFCameraScrubberReachabilityEventContainer *)self hf_duration];
  v5 = [v3 initWithStartDate:dateOfOccurrence duration:?];

  return v5;
}

- (BOOL)isComplete
{
  endEvent = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  v3 = endEvent != 0;

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  uniqueIdentifier = [(HFCameraScrubberReachabilityEventContainer *)self uniqueIdentifier];
  v5 = [v3 appendObject:uniqueIdentifier withName:@"uniqueIdentifier"];

  eventUniqueIdentifiers = [(HFCameraScrubberReachabilityEventContainer *)self eventUniqueIdentifiers];
  v7 = [v3 appendObject:eventUniqueIdentifiers withName:@"eventUniqueIdentifiers"];

  dateOfOccurrence = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  v9 = [HFCameraUtilities dayStringFromDate:dateOfOccurrence];

  dateOfOccurrence2 = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  v11 = [HFCameraUtilities fullTimeStringFromDate:dateOfOccurrence2];

  dateOfOccurrence3 = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  [(HFCameraScrubberReachabilityEventContainer *)self duration];
  v13 = [dateOfOccurrence3 dateByAddingTimeInterval:?];

  v14 = [HFCameraUtilities dayStringFromDate:v13];
  v15 = [HFCameraUtilities fullTimeStringFromDate:v13];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ – %@ %@", v9, v11, v14, v15];
  [v3 appendString:v16 withName:@"dateRange"];

  v17 = MEMORY[0x277CCACA8];
  dateOfOccurrence4 = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  [(HFCameraScrubberReachabilityEventContainer *)self duration];
  v20 = [v17 stringWithFormat:@"%@ + %f = %@", dateOfOccurrence4, v19, v13];

  [v3 appendString:v20 withName:@"dateInterval"];
  startEvent = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
  hf_prettyDescription = [startEvent hf_prettyDescription];
  v23 = [v3 appendObject:hf_prettyDescription withName:@"startEvent"];

  endEvent = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  hf_prettyDescription2 = [endEvent hf_prettyDescription];
  v26 = [v3 appendObject:hf_prettyDescription2 withName:@"endEvent"];

  build = [v3 build];

  return build;
}

- (NSString)displayDescription
{
  dateOfOccurrence = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  v4 = [HFCameraUtilities attributedShortTimeStringFromDate:dateOfOccurrence];
  string = [v4 string];

  endEvent = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  dateOfOccurrence2 = [endEvent dateOfOccurrence];

  if (!dateOfOccurrence2)
  {
    startEvent = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
    dateOfOccurrence3 = [startEvent dateOfOccurrence];
    v32 = [HFCameraUtilities isDateToday:dateOfOccurrence3];

    if (v32)
    {
      HFLocalizedStringWithFormat(@"HFCameraReachabilityOfflineCurrentlyTodayFormat", @"%@", v33, v34, v35, v36, v37, v38, string);
    }

    else
    {
      startEvent2 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
      dateOfOccurrence4 = [startEvent2 dateOfOccurrence];
      v51 = [HFCameraUtilities isDateYesterday:dateOfOccurrence4];

      if (!v51)
      {
        startEvent3 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
        dateOfOccurrence5 = [startEvent3 dateOfOccurrence];
        string2 = [HFCameraUtilities localizerKeyDayNameFromDate:dateOfOccurrence5];

        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCameraReachabilityOfflineCurrently%@Format", string2];
        v29 = HFLocalizedStringWithFormat(v41, @"%@", v83, v84, v85, v86, v87, v88, string);
        goto LABEL_26;
      }

      HFLocalizedStringWithFormat(@"HFCameraReachabilityOfflineCurrentlyYesterdayFormat", @"%@", v52, v53, v54, v55, v56, v57, string);
    }
    v29 = ;
    goto LABEL_28;
  }

  endEvent2 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  dateOfOccurrence6 = [endEvent2 dateOfOccurrence];
  v10 = [HFCameraUtilities attributedShortTimeStringFromDate:dateOfOccurrence6];
  string2 = [v10 string];

  startEvent4 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
  dateOfOccurrence7 = [startEvent4 dateOfOccurrence];
  LODWORD(dateOfOccurrence6) = [HFCameraUtilities isDateToday:dateOfOccurrence7];

  endEvent3 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  dateOfOccurrence8 = [endEvent3 dateOfOccurrence];
  v16 = [HFCameraUtilities isDateToday:dateOfOccurrence8];

  startEvent5 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
  dateOfOccurrence9 = [startEvent5 dateOfOccurrence];
  endEvent4 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
  dateOfOccurrence10 = [endEvent4 dateOfOccurrence];
  v21 = [HFCameraUtilities isDate:dateOfOccurrence9 withinSameMinuteOf:dateOfOccurrence10];

  if (dateOfOccurrence6)
  {
    if (v21)
    {
      v28 = @"HFCameraReachabilityOfflineAtTodayFormat";
    }

    else
    {
      v28 = @"HFCameraReachabilityOfflineDurationTodayFormat";
    }

    v29 = HFLocalizedStringWithFormat(v28, @"%@%@", v22, v23, v24, v25, v26, v27, string);
    goto LABEL_27;
  }

  if (v16)
  {
    startEvent6 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
    dateOfOccurrence11 = [startEvent6 dateOfOccurrence];
    v41 = [HFCameraUtilities localizerKeyDayNameFromDate:dateOfOccurrence11];

    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCameraReachabilityOfflineDurationIncludesToday%@Format", v41];
    v29 = HFLocalizedStringWithFormat(v42, @"%@%@", v43, v44, v45, v46, v47, v48, string);
  }

  else
  {
    hf_sharedCalendar = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
    startEvent7 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
    dateOfOccurrence12 = [startEvent7 dateOfOccurrence];
    endEvent5 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
    dateOfOccurrence13 = [endEvent5 dateOfOccurrence];
    v63 = [hf_sharedCalendar isDate:dateOfOccurrence12 inSameDayAsDate:dateOfOccurrence13];

    if (v63)
    {
      endEvent6 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
      dateOfOccurrence14 = [endEvent6 dateOfOccurrence];
      v66 = [HFCameraUtilities localizerKeyDayNameFromDate:dateOfOccurrence14];

      hf_sharedCalendar2 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
      startEvent8 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
      dateOfOccurrence15 = [startEvent8 dateOfOccurrence];
      v70 = [hf_sharedCalendar2 component:32 fromDate:dateOfOccurrence15];

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
      v29 = HFLocalizedStringWithFormat(v74, @"%@%@", v75, v76, v77, v78, v79, v80, string);

      goto LABEL_27;
    }

    startEvent9 = [(HFCameraScrubberReachabilityEventContainer *)self startEvent];
    dateOfOccurrence16 = [startEvent9 dateOfOccurrence];
    v41 = [HFCameraUtilities localizerKeyDayNameFromDate:dateOfOccurrence16];

    endEvent7 = [(HFCameraScrubberReachabilityEventContainer *)self endEvent];
    dateOfOccurrence17 = [endEvent7 dateOfOccurrence];
    v42 = [HFCameraUtilities localizerKeyDayNameFromDate:dateOfOccurrence17];

    v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCameraReachabilityOfflineDurationMultiDay%@%@Format", v41, v42];
    v29 = HFLocalizedStringWithFormat(v93, @"%@%@", v94, v95, v96, v97, v98, v99, string);
  }

LABEL_26:
LABEL_27:

LABEL_28:

  return v29;
}

- (id)hf_stateDumpBuilderWithContext:(id)context
{
  contextCopy = context;
  v5 = [HFStateDumpBuilder builderWithObject:self context:contextCopy];
  uniqueIdentifier = [(HFCameraScrubberReachabilityEventContainer *)self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  hf_rfc3339Formatter = [MEMORY[0x277CCAA68] hf_rfc3339Formatter];
  dateOfOccurrence = [(HFCameraScrubberReachabilityEventContainer *)self dateOfOccurrence];
  v9 = [hf_rfc3339Formatter stringFromDate:dateOfOccurrence];
  [v5 setObject:v9 forKeyedSubscript:@"dateOfOccurrence"];

  detailLevel = [contextCopy detailLevel];
  if (detailLevel == 2)
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

  hf_dateInterval = [(HFCameraScrubberReachabilityEventContainer *)self hf_dateInterval];
  hf_hksvDescription = [hf_dateInterval hf_hksvDescription];
  [v5 setObject:hf_hksvDescription forKeyedSubscript:@"dateIntervalString"];

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
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

@end