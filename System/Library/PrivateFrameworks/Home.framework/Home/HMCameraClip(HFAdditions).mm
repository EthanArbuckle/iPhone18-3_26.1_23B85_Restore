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
  v2 = [a1 dateOfOccurrence];
  [a1 duration];
  v3 = [v2 dateByAddingTimeInterval:?];

  return v3;
}

- (id)hf_dateInterval
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  v3 = [a1 dateOfOccurrence];
  [a1 duration];
  v4 = [v2 initWithStartDate:v3 duration:?];

  return v4;
}

- (uint64_t)hf_duration
{
  result = [a1 duration];
  if (v3 >= 0.00000011920929)
  {

    return [a1 duration];
  }

  return result;
}

- (BOOL)hf_isPlayable
{
  result = 1;
  if ([a1 isComplete])
  {
    [a1 duration];
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

  v3 = [a1 significantEvents];
  v4 = [v3 na_any:&__block_literal_global_53];

  return v4;
}

- (id)hf_sortedSignificantEvents
{
  v1 = objc_getAssociatedObject(a1, "SortedSignificantEvents");
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
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [a1 dateOfOccurrence];
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [a1 uniqueIdentifier];
    v7 = [v2 initWithUniqueIdentifier:v3 reason:6 dateOfOccurrence:v4 confidenceLevel:100 cameraProfileUUID:v5 faceClassification:0 timeOffsetWithinClip:0.0 clipUUID:v6];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateOfOccurrence" ascending:1];
    v4 = [a1 significantEvents];
    v10 = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    v8 = [v4 sortedArrayUsingDescriptors:v5];
  }

  objc_setAssociatedObject(a1, "SortedSignificantEvents", v8, 0x301);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)hf_allEventsContainingPeopleInClip
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [a1 hf_sortedSignificantEvents];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HMCameraClip_HFAdditions__hf_allEventsContainingPeopleInClip__block_invoke;
  v6[3] = &unk_277DF7140;
  v4 = v2;
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v6];

  return v4;
}

- (id)hf_faceCropNameAtOffset:()HFAdditions
{
  v3 = [a1 hf_sortedSignificantEvents];
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
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)hf_faceCropNamesAtOffset:()HFAdditions
{
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [a1 hf_sortedSignificantEvents];
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
  v6 = v4;
  v11 = v6;
  [v5 enumerateObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  _Block_object_dispose(v14, 8);

  return v8;
}

- (id)hf_familiarFaceEventAtOffset:()HFAdditions
{
  v3 = [a1 hf_sortedSignificantEvents];
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
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)dealloc
{
  objc_setAssociatedObject(a1, "SortedSignificantEvents", 0, 0x301);
  v3.receiver = a1;
  v3.super_class = &off_2825949E8;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

- (id)hf_stateDumpBuilderWithContext:()HFAdditions
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [MEMORY[0x277CCAA68] hf_rfc3339Formatter];
  v8 = [a1 dateOfOccurrence];
  v9 = [v7 stringFromDate:v8];
  [v5 setObject:v9 forKeyedSubscript:@"dateOfOccurrence"];

  if ([v4 detailLevel] == 2)
  {
    v10 = MEMORY[0x277CCABB0];
    [a1 duration];
    [v10 numberWithDouble:?];
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    [a1 duration];
    [v11 stringWithFormat:@"%.2f", v12];
  }
  v13 = ;
  [v5 setObject:v13 forKeyedSubscript:@"duration"];

  [v5 appendBool:objc_msgSend(a1 withName:"isComplete") ifEqualTo:{@"isComplete", 0}];
  [a1 quality];
  v14 = HMStringFromCameraClipQuality();
  [v5 appendObject:v14 withName:@"quality"];

  v15 = [a1 hf_dateInterval];
  v16 = [v15 hf_hksvDescription];
  [v5 setObject:v16 forKeyedSubscript:@"dateIntervalString"];

  v17 = [v4 detailLevel];
  v18 = [a1 significantEvents];
  v19 = v18;
  if (v17 == 2)
  {
    [v5 appendObject:v18 withName:@"significantEvents" context:v4 options:1];
  }

  else
  {
    v20 = [v18 na_map:&__block_literal_global_37_2];

    v21 = [v20 allObjects];
    v22 = [v21 componentsJoinedByString:{@", "}];
    [v5 appendObject:v22 withName:@"significantEvents" context:v4 options:1];

    v19 = v20;
  }

  return v5;
}

@end