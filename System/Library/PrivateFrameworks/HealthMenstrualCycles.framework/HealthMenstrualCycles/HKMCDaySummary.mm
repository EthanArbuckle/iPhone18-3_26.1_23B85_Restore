@interface HKMCDaySummary
+ (id)daySummaryWithDayIndex:(int64_t)a3 menstrualFlow:(int64_t)a4 bleedingInPregnancyFlow:(int64_t)a5 bleedingAfterPregnancyFlow:(int64_t)a6 intermenstrualBleeding:(BOOL)a7 symptoms:(unint64_t)a8 sexualActivity:(int64_t)a9 ovulationTestResult:(int64_t)a10 pregnancyTestResult:(int64_t)a11 progesteroneTestResult:(int64_t)a12 cervicalMucusQuality:(int64_t)a13 basalBodyTemperature:(id)a14 wristTemperature:(id)a15 menstrualFlowModificationDayIndex:(int64_t)a16 startOfCycleFromCycleTracking:(id)a17 startedCycleFactors:(id)a18 endedCycleFactors:(id)a19 sampleCountByType:(id)a20;
+ (id)emptyDaySummaryWithDayIndex:(int64_t)a3;
- (BOOL)hasFlow;
- (BOOL)isDataLogged;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSupplementaryDataLogged;
- (BOOL)isUserEnteredDataEqual:(id)a3;
- (HKMCDaySummary)initWithCoder:(id)a3;
- (NSSet)loggedSupplementaryDisplayTypes;
- (NSString)hk_redactedDescription;
- (id)_daySummaryWithOverrideSourceIDBySourceID:(id)a3 ignoreCycleFactors:(BOOL)a4 ignoreOvulationTestResults:(BOOL)a5;
- (id)_initFromDaySummary:(id)a3;
- (id)_initWithDayIndex:(int64_t)a3 menstrualFlow:(int64_t)a4 bleedingInPregnancyFlow:(int64_t)a5 bleedingAfterPregnancyFlow:(int64_t)a6 intermenstrualBleeding:(BOOL)a7 symptoms:(unint64_t)a8 sexualActivity:(int64_t)a9 ovulationTestResult:(int64_t)a10 pregnancyTestResult:(int64_t)a11 progesteroneTestResult:(int64_t)a12 cervicalMucusQuality:(int64_t)a13 basalBodyTemperature:(id)a14 wristTemperature:(id)a15 menstrualFlowModificationDayIndex:(int64_t)a16 startOfCycleFromCycleTracking:(id)a17 startedCycleFactors:(id)a18 endedCycleFactors:(id)a19 sampleCountByType:(id)a20;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)bleedingAfterPregnancyFlowSampleCount;
- (int64_t)bleedingInPregnancyFlowSampleCount;
- (int64_t)cervicalMucusQualitySampleCount;
- (int64_t)menstrualFlowSampleCount;
- (int64_t)ovulationTestResultSampleCount;
- (int64_t)pregnancyTestResultSampleCount;
- (int64_t)progesteroneTestResultSampleCount;
- (int64_t)sexualActivitySampleCount;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCDaySummary

+ (id)daySummaryWithDayIndex:(int64_t)a3 menstrualFlow:(int64_t)a4 bleedingInPregnancyFlow:(int64_t)a5 bleedingAfterPregnancyFlow:(int64_t)a6 intermenstrualBleeding:(BOOL)a7 symptoms:(unint64_t)a8 sexualActivity:(int64_t)a9 ovulationTestResult:(int64_t)a10 pregnancyTestResult:(int64_t)a11 progesteroneTestResult:(int64_t)a12 cervicalMucusQuality:(int64_t)a13 basalBodyTemperature:(id)a14 wristTemperature:(id)a15 menstrualFlowModificationDayIndex:(int64_t)a16 startOfCycleFromCycleTracking:(id)a17 startedCycleFactors:(id)a18 endedCycleFactors:(id)a19 sampleCountByType:(id)a20
{
  v33 = a7;
  v22 = a20;
  v23 = a19;
  v24 = a18;
  v25 = a17;
  v26 = a15;
  v27 = a14;
  v28 = [[a1 alloc] _initWithDayIndex:a3 menstrualFlow:a4 bleedingInPregnancyFlow:a5 bleedingAfterPregnancyFlow:a6 intermenstrualBleeding:v33 symptoms:a8 sexualActivity:a9 ovulationTestResult:a10 pregnancyTestResult:a11 progesteroneTestResult:a12 cervicalMucusQuality:a13 basalBodyTemperature:v27 wristTemperature:v26 menstrualFlowModificationDayIndex:a16 startOfCycleFromCycleTracking:v25 startedCycleFactors:v24 endedCycleFactors:v23 sampleCountByType:v22];

  return v28;
}

+ (id)emptyDaySummaryWithDayIndex:(int64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) _initWithDayIndex:a3 menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0 wristTemperature:0 menstrualFlowModificationDayIndex:0 startOfCycleFromCycleTracking:0 startedCycleFactors:0 endedCycleFactors:0 sampleCountByType:0];

  return v3;
}

- (id)_initWithDayIndex:(int64_t)a3 menstrualFlow:(int64_t)a4 bleedingInPregnancyFlow:(int64_t)a5 bleedingAfterPregnancyFlow:(int64_t)a6 intermenstrualBleeding:(BOOL)a7 symptoms:(unint64_t)a8 sexualActivity:(int64_t)a9 ovulationTestResult:(int64_t)a10 pregnancyTestResult:(int64_t)a11 progesteroneTestResult:(int64_t)a12 cervicalMucusQuality:(int64_t)a13 basalBodyTemperature:(id)a14 wristTemperature:(id)a15 menstrualFlowModificationDayIndex:(int64_t)a16 startOfCycleFromCycleTracking:(id)a17 startedCycleFactors:(id)a18 endedCycleFactors:(id)a19 sampleCountByType:(id)a20
{
  v45 = a14;
  v24 = a15;
  v25 = a17;
  v26 = a18;
  v27 = a19;
  v28 = a20;
  v46.receiver = self;
  v46.super_class = HKMCDaySummary;
  v29 = [(HKMCDaySummary *)&v46 init];
  v30 = v29;
  if (v29)
  {
    v29->_dayIndex = a3;
    v29->_menstrualFlow = a4;
    v29->_bleedingInPregnancyFlow = a5;
    v29->_bleedingAfterPregnancyFlow = a6;
    v29->_intermenstrualBleeding = a7;
    v29->_symptoms = a8;
    v29->_sexualActivity = a9;
    v29->_ovulationTestResult = a10;
    v29->_pregnancyTestResult = a11;
    v29->_progesteroneTestResult = a12;
    v29->_cervicalMucusQuality = a13;
    v31 = [v45 copy];
    basalBodyTemperature = v30->_basalBodyTemperature;
    v30->_basalBodyTemperature = v31;

    v33 = [v24 copy];
    wristTemperature = v30->_wristTemperature;
    v30->_wristTemperature = v33;

    v30->_menstrualFlowModificationDayIndex = a16;
    objc_storeStrong(&v30->_startOfCycleFromCycleTracking, a17);
    v35 = [v26 copy];
    startedCycleFactors = v30->_startedCycleFactors;
    v30->_startedCycleFactors = v35;

    v37 = [v27 copy];
    endedCycleFactors = v30->_endedCycleFactors;
    v30->_endedCycleFactors = v37;

    v39 = [v28 copy];
    sampleCountByType = v30->_sampleCountByType;
    v30->_sampleCountByType = v39;
  }

  return v30;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:self->_dayIndex];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:self->_menstrualFlow];
  startOfCycleFromCycleTracking = self->_startOfCycleFromCycleTracking;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_bleedingInPregnancyFlow];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_bleedingAfterPregnancyFlow];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_intermenstrualBleeding];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symptoms];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sexualActivity];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_ovulationTestResult];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_pregnancyTestResult];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_progesteroneTestResult];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_cervicalMucusQuality];
  v11 = [v17 stringWithFormat:@"<%@:%p %@, menstrual flow = %@ (SOC: %@), BIP flow = %@, BAP flow = %@, spotting = %@, symptoms = %@, sex = %@, OPK = %@, PTR = %@, PDG = %@, CMQ = %@, BBT = %@, WT = %@>", v16, self, v19, v18, startOfCycleFromCycleTracking, v13, v14, v4, v5, v6, v7, v8, v9, v10, self->_basalBodyTemperature, self->_wristTemperature];

  return v11;
}

- (NSString)hk_redactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_dayIndex];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, v6, 0];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  dayIndex = self->_dayIndex;
  v5 = a3;
  [v5 encodeInteger:dayIndex forKey:@"DayIndex"];
  [v5 encodeInteger:self->_menstrualFlow forKey:@"MenstrualFlow"];
  [v5 encodeInteger:self->_bleedingInPregnancyFlow forKey:@"BleedingInPregnancyFlow"];
  [v5 encodeInteger:self->_bleedingAfterPregnancyFlow forKey:@"BleedingAfterPregnancyFlow"];
  [v5 encodeBool:self->_intermenstrualBleeding forKey:@"IntermenstrualBleeding"];
  [v5 encodeInteger:self->_symptoms forKey:@"Symptoms"];
  [v5 encodeInteger:self->_sexualActivity forKey:@"SexualActivity"];
  [v5 encodeInteger:self->_ovulationTestResult forKey:@"OvulationTestResult"];
  [v5 encodeInteger:self->_pregnancyTestResult forKey:@"PregnancyTestResult"];
  [v5 encodeInteger:self->_progesteroneTestResult forKey:@"ProgesteroneTestResult"];
  [v5 encodeInteger:self->_cervicalMucusQuality forKey:@"CervicalMucusQuality"];
  [v5 encodeObject:self->_basalBodyTemperature forKey:@"BasalBodyTemperature"];
  [v5 encodeObject:self->_wristTemperature forKey:@"WristTemperature"];
  [v5 encodeInteger:self->_menstrualFlowModificationDayIndex forKey:@"MenstrualFlowModificationDayIndex"];
  [v5 encodeObject:self->_startOfCycleFromCycleTracking forKey:@"StartOfCycleFromCycleTracking"];
  [v5 encodeObject:self->_startedCycleFactors forKey:@"StartedCycleFactors"];
  [v5 encodeObject:self->_endedCycleFactors forKey:@"EndedCycleFactors"];
  [v5 encodeObject:self->_sampleCountByType forKey:@"SampleCountByType"];
}

- (HKMCDaySummary)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HKMCDaySummary;
  v5 = [(HKMCDaySummary *)&v24 init];
  if (v5)
  {
    v5->_dayIndex = [v4 decodeIntegerForKey:@"DayIndex"];
    v5->_menstrualFlow = [v4 decodeIntegerForKey:@"MenstrualFlow"];
    v5->_bleedingInPregnancyFlow = [v4 decodeIntegerForKey:@"BleedingInPregnancyFlow"];
    v5->_bleedingAfterPregnancyFlow = [v4 decodeIntegerForKey:@"BleedingAfterPregnancyFlow"];
    v5->_intermenstrualBleeding = [v4 decodeBoolForKey:@"IntermenstrualBleeding"];
    v5->_symptoms = [v4 decodeIntegerForKey:@"Symptoms"];
    v5->_sexualActivity = [v4 decodeIntegerForKey:@"SexualActivity"];
    v5->_ovulationTestResult = [v4 decodeIntegerForKey:@"OvulationTestResult"];
    v5->_pregnancyTestResult = [v4 decodeIntegerForKey:@"PregnancyTestResult"];
    v5->_progesteroneTestResult = [v4 decodeIntegerForKey:@"ProgesteroneTestResult"];
    v5->_cervicalMucusQuality = [v4 decodeIntegerForKey:@"CervicalMucusQuality"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BasalBodyTemperature"];
    basalBodyTemperature = v5->_basalBodyTemperature;
    v5->_basalBodyTemperature = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WristTemperature"];
    wristTemperature = v5->_wristTemperature;
    v5->_wristTemperature = v8;

    v5->_menstrualFlowModificationDayIndex = [v4 decodeIntegerForKey:@"MenstrualFlowModificationDayIndex"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StartOfCycleFromCycleTracking"];
    startOfCycleFromCycleTracking = v5->_startOfCycleFromCycleTracking;
    v5->_startOfCycleFromCycleTracking = v10;

    v12 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"StartedCycleFactors"];
    startedCycleFactors = v5->_startedCycleFactors;
    v5->_startedCycleFactors = v13;

    v15 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"EndedCycleFactors"];
    endedCycleFactors = v5->_endedCycleFactors;
    v5->_endedCycleFactors = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 hk_typesForDictionaryMapping:v19 to:objc_opt_class()];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"SampleCountByType"];
    sampleCountByType = v5->_sampleCountByType;
    v5->_sampleCountByType = v21;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if ([(HKMCDaySummary *)self isUserEnteredDataEqual:v7])
  {
    v8 = [(HKMCDaySummary *)self wristTemperature];
    v9 = [v7 wristTemperature];
    if (v8 != v9)
    {
      v10 = [v7 wristTemperature];
      if (!v10)
      {
        v12 = 0;
        goto LABEL_49;
      }

      v3 = v10;
      v4 = [(HKMCDaySummary *)self wristTemperature];
      v11 = [v7 wristTemperature];
      if (![v4 isEqual:v11])
      {
        v12 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v49 = v11;
      v50 = v4;
    }

    v13 = [(HKMCDaySummary *)self menstrualFlowModificationDayIndex];
    if (v13 != [v7 menstrualFlowModificationDayIndex])
    {
      goto LABEL_36;
    }

    v14 = [(HKMCDaySummary *)self startOfCycleFromCycleTracking];
    v15 = [v7 startOfCycleFromCycleTracking];
    if (v14 != v15)
    {
      v16 = [v7 startOfCycleFromCycleTracking];
      if (!v16)
      {
LABEL_35:

LABEL_36:
        v12 = 0;
        goto LABEL_47;
      }

      v46 = v16;
      v5 = [(HKMCDaySummary *)self startOfCycleFromCycleTracking];
      v4 = [v7 startOfCycleFromCycleTracking];
      if (([v5 isEqual:v4] & 1) == 0)
      {

LABEL_34:
        goto LABEL_35;
      }

      v44 = v4;
    }

    v17 = [(HKMCDaySummary *)self startedCycleFactors];
    [v7 startedCycleFactors];
    v47 = v48 = v17;
    if (v17 == v47)
    {
      goto LABEL_18;
    }

    v18 = [v7 startedCycleFactors];
    if (!v18)
    {
      v45 = v5;
      v12 = 0;
      v24 = v44;
      v25 = v47;
      goto LABEL_44;
    }

    v41 = v18;
    v4 = [(HKMCDaySummary *)self startedCycleFactors];
    v19 = [v7 startedCycleFactors];
    if ([v4 isEqual:v19])
    {
      v37 = v19;
LABEL_18:
      v20 = [(HKMCDaySummary *)self endedCycleFactors];
      v42 = [v7 endedCycleFactors];
      v43 = v20;
      v45 = v5;
      v40 = v4;
      if (v20 == v42)
      {
        v38 = v15;
        v39 = v14;
      }

      else
      {
        v21 = [v7 endedCycleFactors];
        if (!v21)
        {
          v12 = 0;
          goto LABEL_38;
        }

        v36 = v21;
        v22 = [(HKMCDaySummary *)self endedCycleFactors];
        v23 = [v7 endedCycleFactors];
        if (([v22 isEqual:v23] & 1) == 0)
        {

          v12 = 0;
          v17 = v48;
          v25 = v47;
          v32 = v48 == v47;
          goto LABEL_42;
        }

        v38 = v15;
        v39 = v14;
        v34 = v22;
        v35 = v23;
      }

      v26 = [(HKMCDaySummary *)self sampleCountByType];
      v27 = [v7 sampleCountByType];
      v12 = v26 == v27;
      if (v26 != v27)
      {
        v28 = [v7 sampleCountByType];
        if (v28)
        {
          v29 = v28;
          v30 = [(HKMCDaySummary *)self sampleCountByType];
          v31 = [v7 sampleCountByType];
          v12 = [v30 isEqual:v31];

          if (v43 != v42)
          {
          }

          goto LABEL_41;
        }
      }

      if (v43 == v42)
      {
LABEL_41:

        v17 = v48;
        v25 = v47;
        v32 = v48 == v47;
        v15 = v38;
        v14 = v39;
LABEL_42:
        v24 = v44;
        if (!v32)
        {
LABEL_43:
        }

LABEL_44:

        if (v14 != v15)
        {
        }

LABEL_47:
        v11 = v49;
        v4 = v50;
        if (v8 != v9)
        {
          goto LABEL_48;
        }

LABEL_49:

        goto LABEL_50;
      }

      v15 = v38;
      v14 = v39;
LABEL_38:
      v24 = v44;
      v17 = v48;
      v25 = v47;

      if (v48 == v47)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    if (v14 == v15)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v12 = 0;
LABEL_50:

  return v12;
}

- (BOOL)isUserEnteredDataEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    v5 = [(HKMCDaySummary *)self dayIndex];
    if (v5 != [(HKMCDaySummary *)v4 dayIndex])
    {
      goto LABEL_17;
    }

    v6 = [(HKMCDaySummary *)self menstrualFlow];
    if (v6 != [(HKMCDaySummary *)v4 menstrualFlow])
    {
      goto LABEL_17;
    }

    v7 = [(HKMCDaySummary *)self bleedingInPregnancyFlow];
    if (v7 != [(HKMCDaySummary *)v4 bleedingInPregnancyFlow])
    {
      goto LABEL_17;
    }

    v8 = [(HKMCDaySummary *)self bleedingAfterPregnancyFlow];
    if (v8 != [(HKMCDaySummary *)v4 bleedingAfterPregnancyFlow])
    {
      goto LABEL_17;
    }

    v9 = [(HKMCDaySummary *)self intermenstrualBleeding];
    if (v9 == [(HKMCDaySummary *)v4 intermenstrualBleeding]&& (v10 = [(HKMCDaySummary *)self symptoms], v10 == [(HKMCDaySummary *)v4 symptoms]) && (v11 = [(HKMCDaySummary *)self sexualActivity], v11 == [(HKMCDaySummary *)v4 sexualActivity]) && (v12 = [(HKMCDaySummary *)self ovulationTestResult], v12 == [(HKMCDaySummary *)v4 ovulationTestResult]) && (v13 = [(HKMCDaySummary *)self pregnancyTestResult], v13 == [(HKMCDaySummary *)v4 pregnancyTestResult]) && (v14 = [(HKMCDaySummary *)self progesteroneTestResult], v14 == [(HKMCDaySummary *)v4 progesteroneTestResult]) && (v15 = [(HKMCDaySummary *)self cervicalMucusQuality], v15 == [(HKMCDaySummary *)v4 cervicalMucusQuality]))
    {
      v16 = [(HKMCDaySummary *)self basalBodyTemperature];
      v17 = [(HKMCDaySummary *)v4 basalBodyTemperature];
      if (v16 == v17)
      {
        v21 = 1;
      }

      else
      {
        v18 = [(HKMCDaySummary *)v4 basalBodyTemperature];
        if (v18)
        {
          v19 = [(HKMCDaySummary *)self basalBodyTemperature];
          v20 = [(HKMCDaySummary *)v4 basalBodyTemperature];
          v21 = [v19 isEqual:v20];
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
LABEL_17:
      v21 = 0;
    }
  }

  return v21;
}

- (unint64_t)hash
{
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:self->_dayIndex];
  v3 = [v32 hash];
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:self->_menstrualFlow];
  v4 = [v31 hash] ^ v3;
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:self->_bleedingInPregnancyFlow];
  v5 = [v30 hash];
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:self->_bleedingAfterPregnancyFlow];
  v6 = v4 ^ v5 ^ [v29 hash];
  intermenstrualBleeding = self->_intermenstrualBleeding;
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symptoms];
  v8 = intermenstrualBleeding ^ [v28 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sexualActivity];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_ovulationTestResult];
  v12 = [v11 hash];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_pregnancyTestResult];
  v14 = v12 ^ [v13 hash];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:self->_progesteroneTestResult];
  v16 = v14 ^ [v15 hash];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:self->_cervicalMucusQuality];
  v18 = v10 ^ v16 ^ [v17 hash];
  v19 = [(HKQuantity *)self->_basalBodyTemperature hash];
  v20 = v19 ^ [(HKMCWristTemperature *)self->_wristTemperature hash];
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:self->_menstrualFlowModificationDayIndex];
  v22 = v20 ^ [v21 hash];
  v23 = v22 ^ [(NSNumber *)self->_startOfCycleFromCycleTracking hash];
  v24 = v23 ^ [(NSArray *)self->_startedCycleFactors hash];
  v25 = v18 ^ v24 ^ [(NSArray *)self->_endedCycleFactors hash];
  v26 = [(NSDictionary *)self->_sampleCountByType hash];

  return v25 ^ v26;
}

- (id)_initFromDaySummary:(id)a3
{
  v3 = a3;
  v23 = [v3 dayIndex];
  v22 = [v3 menstrualFlow];
  v21 = [v3 bleedingInPregnancyFlow];
  v20 = [v3 bleedingAfterPregnancyFlow];
  v19 = [v3 intermenstrualBleeding];
  v18 = [v3 symptoms];
  v17 = [v3 sexualActivity];
  v16 = [v3 ovulationTestResult];
  v15 = [v3 pregnancyTestResult];
  v4 = [v3 progesteroneTestResult];
  v5 = [v3 cervicalMucusQuality];
  v6 = [v3 basalBodyTemperature];
  v7 = [v3 wristTemperature];
  v8 = [v3 menstrualFlowModificationDayIndex];
  v9 = [v3 startOfCycleFromCycleTracking];
  v10 = [v3 startedCycleFactors];
  v11 = [v3 endedCycleFactors];
  v12 = [v3 sampleCountByType];

  v13 = [(HKMCDaySummary *)self _initWithDayIndex:v23 menstrualFlow:v22 bleedingInPregnancyFlow:v21 bleedingAfterPregnancyFlow:v20 intermenstrualBleeding:v19 symptoms:v18 sexualActivity:v17 ovulationTestResult:v16 pregnancyTestResult:v15 progesteroneTestResult:v4 cervicalMucusQuality:v5 basalBodyTemperature:v6 wristTemperature:v7 menstrualFlowModificationDayIndex:v8 startOfCycleFromCycleTracking:v9 startedCycleFactors:v10 endedCycleFactors:v11 sampleCountByType:v12];
  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HKMCMutableDaySummary alloc];

  return [(HKMCDaySummary *)v4 _initFromDaySummary:self];
}

- (BOOL)isDataLogged
{
  if ([(HKMCDaySummary *)self _isMenstrualFlowLogged]|| [(HKMCDaySummary *)self _isBleedingInPregnancyFlowLogged]|| [(HKMCDaySummary *)self _isBleedingAfterPregnancyFlowLogged]|| [(HKMCDaySummary *)self _isIntermenstrualBleedingLogged]|| [(HKMCDaySummary *)self _isSymptomsLogged]|| [(HKMCDaySummary *)self _isSexualActivityLogged]|| [(HKMCDaySummary *)self _isOvulationTestResultLogged]|| [(HKMCDaySummary *)self _isPregnancyTestResultLogged]|| [(HKMCDaySummary *)self _isProgesteroneTestResultLogged]|| [(HKMCDaySummary *)self _isCervicalMucusQualityLogged])
  {
    return 1;
  }

  return [(HKMCDaySummary *)self _isBasalBodyTemperatureLogged];
}

- (BOOL)isSupplementaryDataLogged
{
  if ([(HKMCDaySummary *)self _isIntermenstrualBleedingLogged]|| [(HKMCDaySummary *)self _isSymptomsLogged]|| [(HKMCDaySummary *)self _isSexualActivityLogged]|| [(HKMCDaySummary *)self _isOvulationTestResultLogged]|| [(HKMCDaySummary *)self _isPregnancyTestResultLogged]|| [(HKMCDaySummary *)self _isProgesteroneTestResultLogged]|| [(HKMCDaySummary *)self _isCervicalMucusQualityLogged])
  {
    return 1;
  }

  return [(HKMCDaySummary *)self _isBasalBodyTemperatureLogged];
}

- (NSSet)loggedSupplementaryDisplayTypes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([(HKMCDaySummary *)self _isIntermenstrualBleedingLogged])
  {
    [v3 addObject:@"DisplayTypeIdentifierIntermenstrualBleeding"];
  }

  if ([(HKMCDaySummary *)self _isSymptomsLogged])
  {
    [v3 addObject:@"DisplayTypeIdentifierSymptoms"];
  }

  if ([(HKMCDaySummary *)self _isSexualActivityLogged])
  {
    [v3 addObject:@"DisplayTypeIdentifierSexualActivity"];
  }

  if ([(HKMCDaySummary *)self _isOvulationTestResultLogged])
  {
    [v3 addObject:@"DisplayTypeIdentifierOvulationTestResult"];
  }

  if ([(HKMCDaySummary *)self _isPregnancyTestResultLogged])
  {
    [v3 addObject:@"DisplayTypeIdentifierPregnancyTestResult"];
  }

  if ([(HKMCDaySummary *)self _isProgesteroneTestResultLogged])
  {
    [v3 addObject:@"DisplayTypeIdentifierProgesteroneTestResult"];
  }

  if ([(HKMCDaySummary *)self _isCervicalMucusQualityLogged])
  {
    [v3 addObject:@"DisplayTypeIdentifierCervicalMucusQuality"];
  }

  if ([(HKMCDaySummary *)self _isBasalBodyTemperatureLogged])
  {
    [v3 addObject:@"DisplayTypeIdentifierBasalBodyTemperature"];
  }

  v4 = [v3 copy];

  return v4;
}

- (int64_t)menstrualFlowSampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:95];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)bleedingInPregnancyFlowSampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:313];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)bleedingAfterPregnancyFlowSampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:314];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)sexualActivitySampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:97];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)ovulationTestResultSampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:92];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)pregnancyTestResultSampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:243];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)progesteroneTestResultSampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:244];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)cervicalMucusQualitySampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:91];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  return v5;
}

- (id)_daySummaryWithOverrideSourceIDBySourceID:(id)a3 ignoreCycleFactors:(BOOL)a4 ignoreOvulationTestResults:(BOOL)a5
{
  v8 = a3;
  v9 = self->_wristTemperature;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [(HKMCWristTemperature *)v9 watchBundleIdentifier];
    v12 = [v8 objectForKeyedSubscript:v11];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v10 watchBundleIdentifier];
    }

    v15 = v14;

    v16 = [HKMCWristTemperature alloc];
    v17 = [v10 quantity];
    v18 = [(HKMCWristTemperature *)v16 initWithQuantity:v17 watchBundleIdentifier:v15];

    v10 = v18;
  }

  if (a5)
  {
    ovulationTestResult = 0;
  }

  else
  {
    ovulationTestResult = self->_ovulationTestResult;
  }

  if (a4)
  {
    startedCycleFactors = MEMORY[0x277CBEBF8];
    endedCycleFactors = MEMORY[0x277CBEBF8];
  }

  else
  {
    startedCycleFactors = self->_startedCycleFactors;
    endedCycleFactors = self->_endedCycleFactors;
  }

  v22 = [HKMCDaySummary daySummaryWithDayIndex:self->_dayIndex menstrualFlow:self->_menstrualFlow bleedingInPregnancyFlow:self->_bleedingInPregnancyFlow bleedingAfterPregnancyFlow:self->_bleedingAfterPregnancyFlow intermenstrualBleeding:self->_intermenstrualBleeding symptoms:self->_symptoms sexualActivity:self->_sexualActivity ovulationTestResult:ovulationTestResult pregnancyTestResult:self->_pregnancyTestResult progesteroneTestResult:self->_progesteroneTestResult cervicalMucusQuality:self->_cervicalMucusQuality basalBodyTemperature:self->_basalBodyTemperature wristTemperature:v10 menstrualFlowModificationDayIndex:self->_menstrualFlowModificationDayIndex startOfCycleFromCycleTracking:self->_startOfCycleFromCycleTracking startedCycleFactors:startedCycleFactors endedCycleFactors:endedCycleFactors sampleCountByType:self->_sampleCountByType];

  return v22;
}

- (BOOL)hasFlow
{
  v2 = [(HKMCDaySummary *)self menstrualFlow];

  return HKMCDaySummaryBleedingFlowHasFlow(v2);
}

@end