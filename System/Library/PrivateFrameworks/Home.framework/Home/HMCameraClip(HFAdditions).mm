@interface HMCameraClip(HFAdditions)
- (BOOL)hf_isPlayable;
- (id)dealloc;
- (id)hf_allEventsContainingPeopleInClip;
- (id)hf_dateInterval;
- (id)hf_endDate;
- (id)hf_faceCropNameAtOffset:()HFAdditions;
- (id)hf_faceCropNamesAtOffset:()HFAdditions;
- (id)hf_familiarFaceEventAtOffset:()HFAdditions;
- (id)hf_sortedSignificantEvents;
- (id)hf_stateDumpBuilderWithContext:()HFAdditions;
- (uint64_t)hf_duration;
- (uint64_t)hf_hasInsufficientAnalysis;
- (void)hf_sortSignificantEvents;
@end

@implementation HMCameraClip(HFAdditions)

- (id)hf_endDate
{
  dateOfOccurrence = [self dateOfOccurrence];
  [self duration];
  v3 = [dateOfOccurrence dateByAddingTimeInterval:?];

  return v3;
}

- (id)hf_dateInterval
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  dateOfOccurrence = [self dateOfOccurrence];
  [self duration];
  v4 = [v2 initWithStartDate:dateOfOccurrence duration:?];

  return v4;
}

- (uint64_t)hf_duration
{
  result = [self duration];
  if (v3 >= 0.00000011920929)
  {

    return [self duration];
  }

  return result;
}

- (BOOL)hf_isPlayable
{
  result = 1;
  if ([self isComplete])
  {
    [self duration];
    if (v2 < 0.00000011920929)
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)hf_hasInsufficientAnalysis
{
  if (+[HFCameraUtilities treatAllClipsAsUnanalyzed])
  {
    return 1;
  }

  significantEvents = [self significantEvents];
  v4 = [significantEvents na_any:&__block_literal_global_53];

  return v4;
}

- (id)hf_sortedSignificantEvents
{
  v1 = objc_getAssociatedObject(self, "SortedSignificantEvents");
  v2 = v1;
  if (v1)
  {
    v3 = [v1 copy];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (void)hf_sortSignificantEvents
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (+[HFCameraUtilities treatAllClipsAsUnanalyzed])
  {
    v2 = objc_alloc(MEMORY[0x277CD18F8]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    dateOfOccurrence = [self dateOfOccurrence];
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uniqueIdentifier = [self uniqueIdentifier];
    v7 = [v2 initWithUniqueIdentifier:uUID reason:6 dateOfOccurrence:dateOfOccurrence confidenceLevel:100 cameraProfileUUID:uUID2 faceClassification:0 timeOffsetWithinClip:0.0 clipUUID:uniqueIdentifier];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    uUID = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateOfOccurrence" ascending:1];
    dateOfOccurrence = [self significantEvents];
    v10 = uUID;
    uUID2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    v8 = [dateOfOccurrence sortedArrayUsingDescriptors:uUID2];
  }

  objc_setAssociatedObject(self, "SortedSignificantEvents", v8, 0x301);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)hf_allEventsContainingPeopleInClip
{
  array = [MEMORY[0x277CBEB18] array];
  hf_sortedSignificantEvents = [self hf_sortedSignificantEvents];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HMCameraClip_HFAdditions__hf_allEventsContainingPeopleInClip__block_invoke;
  v6[3] = &unk_277DF7140;
  v4 = array;
  v7 = v4;
  [hf_sortedSignificantEvents enumerateObjectsUsingBlock:v6];

  return v4;
}

- (id)hf_faceCropNameAtOffset:()HFAdditions
{
  hf_sortedSignificantEvents = [self hf_sortedSignificantEvents];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HMCameraClip_HFAdditions__hf_faceCropNameAtOffset___block_invoke;
  v6[3] = &unk_277DF7168;
  *&v6[5] = a2;
  v6[4] = &v7;
  [hf_sortedSignificantEvents enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)hf_faceCropNamesAtOffset:()HFAdditions
{
  array = [MEMORY[0x277CBEB18] array];
  hf_sortedSignificantEvents = [self hf_sortedSignificantEvents];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__8;
  v14[4] = __Block_byref_object_dispose__8;
  v15 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HMCameraClip_HFAdditions__hf_faceCropNamesAtOffset___block_invoke;
  v10[3] = &unk_277DF7190;
  v13 = a2;
  v12 = v14;
  v6 = array;
  v11 = v6;
  [hf_sortedSignificantEvents enumerateObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  _Block_object_dispose(v14, 8);

  return v8;
}

- (id)hf_familiarFaceEventAtOffset:()HFAdditions
{
  hf_sortedSignificantEvents = [self hf_sortedSignificantEvents];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HMCameraClip_HFAdditions__hf_familiarFaceEventAtOffset___block_invoke;
  v6[3] = &unk_277DF7168;
  *&v6[5] = a2;
  v6[4] = &v7;
  [hf_sortedSignificantEvents enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)dealloc
{
  objc_setAssociatedObject(self, "SortedSignificantEvents", 0, 0x301);
  v3.receiver = self;
  v3.super_class = &off_2825949E8;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

- (id)hf_stateDumpBuilderWithContext:()HFAdditions
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  hf_rfc3339Formatter = [MEMORY[0x277CCAA68] hf_rfc3339Formatter];
  dateOfOccurrence = [self dateOfOccurrence];
  v9 = [hf_rfc3339Formatter stringFromDate:dateOfOccurrence];
  [v5 setObject:v9 forKeyedSubscript:@"dateOfOccurrence"];

  if ([v4 detailLevel] == 2)
  {
    v10 = MEMORY[0x277CCABB0];
    [self duration];
    [v10 numberWithDouble:?];
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    [self duration];
    [v11 stringWithFormat:@"%.2f", v12];
  }
  v13 = ;
  [v5 setObject:v13 forKeyedSubscript:@"duration"];

  [v5 appendBool:objc_msgSend(self withName:"isComplete") ifEqualTo:{@"isComplete", 0}];
  [self quality];
  v14 = HMStringFromCameraClipQuality();
  [v5 appendObject:v14 withName:@"quality"];

  hf_dateInterval = [self hf_dateInterval];
  hf_hksvDescription = [hf_dateInterval hf_hksvDescription];
  [v5 setObject:hf_hksvDescription forKeyedSubscript:@"dateIntervalString"];

  detailLevel = [v4 detailLevel];
  significantEvents = [self significantEvents];
  v19 = significantEvents;
  if (detailLevel == 2)
  {
    [v5 appendObject:significantEvents withName:@"significantEvents" context:v4 options:1];
  }

  else
  {
    v20 = [significantEvents na_map:&__block_literal_global_37_2];

    allObjects = [v20 allObjects];
    v22 = [allObjects componentsJoinedByString:{@", "}];
    [v5 appendObject:v22 withName:@"significantEvents" context:v4 options:1];

    v19 = v20;
  }

  return v5;
}

@end