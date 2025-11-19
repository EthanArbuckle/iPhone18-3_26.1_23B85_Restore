@interface HKStatistics(HealthHearingDaemon)
- (id)statisticsByCombiningWithNoiseLevelStatistics:()HealthHearingDaemon error:;
@end

@implementation HKStatistics(HealthHearingDaemon)

- (id)statisticsByCombiningWithNoiseLevelStatistics:()HealthHearingDaemon error:
{
  v7 = a3;
  if (!v7)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:a1 file:@"HKStatistics+HealthHearingDaemon.mm" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"statistics"}];
  }

  v8 = [a1 quantityType];
  v9 = HKHeadphoneAudioExposureType();
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v33 = @"invalid quantityType";
LABEL_10:
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:v33];
    goto LABEL_11;
  }

  v11 = [a1 quantityType];
  v12 = [v7 quantityType];
  v13 = [v11 isEqual:v12];

  if ((v13 & 1) == 0)
  {
    v33 = @"quantityType mismatch";
    goto LABEL_10;
  }

  v37[0] = 0;
  v37[1] = 0;
  if (populateNoiseLevelWithStatistics(v37, a1, a4))
  {
    v36[0] = 0;
    v36[1] = 0;
    if (populateNoiseLevelWithStatistics(v36, v7, a4))
    {
      combineNoiseLevelDatums();
      v15 = v14;
      v17 = v16;
      v18 = objc_alloc(MEMORY[0x277CCDA50]);
      v19 = [a1 quantityType];
      v20 = [a1 startDate];
      v21 = [v7 startDate];
      v22 = HKDateMin();
      v23 = [a1 endDate];
      v24 = [v7 endDate];
      v25 = HKDateMax();
      v26 = [v18 initWithDataType:v19 startDate:v22 endDate:v25];

      v27 = MEMORY[0x277CCD7E8];
      v28 = [MEMORY[0x277CCDAB0] decibelAWeightedSoundPressureLevelUnit];
      v29 = [v27 quantityWithUnit:v28 doubleValue:v15];
      [v26 setAverageQuantity:v29];

      v30 = MEMORY[0x277CCD7E8];
      v31 = [MEMORY[0x277CCDAB0] secondUnit];
      v32 = [v30 quantityWithUnit:v31 doubleValue:v17];
      [v26 setDuration:v32];

      goto LABEL_12;
    }
  }

LABEL_11:
  v26 = 0;
LABEL_12:

  return v26;
}

@end