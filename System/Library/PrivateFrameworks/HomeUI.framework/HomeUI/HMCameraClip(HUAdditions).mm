@interface HMCameraClip(HUAdditions)
- (id)hu_accessibilityStringForSignificantEvent:()HUAdditions inReferenceDate:;
- (id)hu_accessibilityStringForSignificantEvents;
@end

@implementation HMCameraClip(HUAdditions)

- (id)hu_accessibilityStringForSignificantEvents
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  string = [MEMORY[0x277CCACA8] string];
  date = [MEMORY[0x277CBEAA8] date];
  hf_sortedSignificantEvents = [self hf_sortedSignificantEvents];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMCameraClip_HUAdditions__hu_accessibilityStringForSignificantEvents__block_invoke;
  v7[3] = &unk_277DB79E0;
  v9 = &v10;
  v7[4] = self;
  v4 = date;
  v8 = v4;
  [hf_sortedSignificantEvents na_each:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)hu_accessibilityStringForSignificantEvent:()HUAdditions inReferenceDate:
{
  v5 = a3;
  v6 = MEMORY[0x277D14500];
  v7 = a4;
  dateOfOccurrence = [v5 dateOfOccurrence];
  v9 = [v6 attributedShortTimeStringFromDate:dateOfOccurrence];
  string = [v9 string];

  v11 = MEMORY[0x277D14500];
  dateOfOccurrence2 = [v5 dateOfOccurrence];
  v13 = [v11 localizerKeyDayNameFromDate:dateOfOccurrence2];

  dateOfOccurrence3 = [v5 dateOfOccurrence];
  [v7 timeIntervalSinceDate:dateOfOccurrence3];
  v16 = v15;

  if (v16 > 604800.0)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last%@", v13];

    v13 = v17;
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUCameraEventRecordingCellAccessibilityLabelSignificantEventTimeOn%@Format", v13];
  v25 = HULocalizedStringWithFormat(v18, @"%@", v19, v20, v21, v22, v23, v24, string);
  hf_sharedCalendar = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  dateOfOccurrence4 = [v5 dateOfOccurrence];
  v28 = [hf_sharedCalendar component:32 fromDate:dateOfOccurrence4];

  if ([v5 confidenceLevel] == 100)
  {
    hf_faceClassificationName = [v5 hf_faceClassificationName];

    if (hf_faceClassificationName)
    {
      v30 = &stru_2823E0EE8;
      if (v28 == 1)
      {
        v30 = @"Singular";
      }

      hf_reasonKey = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCameraSignificantEventReasonFamiliarFace%@Title", v30];
      hf_faceClassificationName2 = [v5 hf_faceClassificationName];
    }

    else
    {
      if (v5)
      {
        hf_reasonKey = [v5 hf_reasonKey];
      }

      else
      {
        hf_reasonKey = @"AnyMotion";
      }

      v35 = &stru_2823E0EE8;
      if (v28 == 1)
      {
        v35 = @"Singular";
      }

      hf_faceClassificationName2 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCameraSignificantEventReason%@%@Title", hf_reasonKey, v35];
    }

    v34 = HFLocalizedStringWithFormat();
  }

  else
  {
    v33 = &stru_2823E0EE8;
    if (v28 == 1)
    {
      v33 = @"Singular";
    }

    hf_reasonKey = [MEMORY[0x277CCACA8] stringWithFormat:@"HFCameraSignificantEventReasonAnyMotion%@Title", v33];
    v34 = HFLocalizedStringWithFormat();
  }

  return v34;
}

@end