@interface HKMCDaySummary
+ (id)daySummaryWithDayIndex:(int64_t)index menstrualFlow:(int64_t)flow bleedingInPregnancyFlow:(int64_t)pregnancyFlow bleedingAfterPregnancyFlow:(int64_t)afterPregnancyFlow intermenstrualBleeding:(BOOL)bleeding symptoms:(unint64_t)symptoms sexualActivity:(int64_t)activity ovulationTestResult:(int64_t)self0 pregnancyTestResult:(int64_t)self1 progesteroneTestResult:(int64_t)self2 cervicalMucusQuality:(int64_t)self3 basalBodyTemperature:(id)self4 wristTemperature:(id)self5 menstrualFlowModificationDayIndex:(int64_t)self6 startOfCycleFromCycleTracking:(id)self7 startedCycleFactors:(id)self8 endedCycleFactors:(id)self9 sampleCountByType:(id)type;
+ (id)emptyDaySummaryWithDayIndex:(int64_t)index;
- (BOOL)hasFlow;
- (BOOL)isDataLogged;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSupplementaryDataLogged;
- (BOOL)isUserEnteredDataEqual:(id)equal;
- (HKMCDaySummary)initWithCoder:(id)coder;
- (NSSet)loggedSupplementaryDisplayTypes;
- (NSString)hk_redactedDescription;
- (id)_daySummaryWithOverrideSourceIDBySourceID:(id)d ignoreCycleFactors:(BOOL)factors ignoreOvulationTestResults:(BOOL)results;
- (id)_initFromDaySummary:(id)summary;
- (id)_initWithDayIndex:(int64_t)index menstrualFlow:(int64_t)flow bleedingInPregnancyFlow:(int64_t)pregnancyFlow bleedingAfterPregnancyFlow:(int64_t)afterPregnancyFlow intermenstrualBleeding:(BOOL)bleeding symptoms:(unint64_t)symptoms sexualActivity:(int64_t)activity ovulationTestResult:(int64_t)self0 pregnancyTestResult:(int64_t)self1 progesteroneTestResult:(int64_t)self2 cervicalMucusQuality:(int64_t)self3 basalBodyTemperature:(id)self4 wristTemperature:(id)self5 menstrualFlowModificationDayIndex:(int64_t)self6 startOfCycleFromCycleTracking:(id)self7 startedCycleFactors:(id)self8 endedCycleFactors:(id)self9 sampleCountByType:(id)type;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)bleedingAfterPregnancyFlowSampleCount;
- (int64_t)bleedingInPregnancyFlowSampleCount;
- (int64_t)cervicalMucusQualitySampleCount;
- (int64_t)menstrualFlowSampleCount;
- (int64_t)ovulationTestResultSampleCount;
- (int64_t)pregnancyTestResultSampleCount;
- (int64_t)progesteroneTestResultSampleCount;
- (int64_t)sexualActivitySampleCount;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCDaySummary

+ (id)daySummaryWithDayIndex:(int64_t)index menstrualFlow:(int64_t)flow bleedingInPregnancyFlow:(int64_t)pregnancyFlow bleedingAfterPregnancyFlow:(int64_t)afterPregnancyFlow intermenstrualBleeding:(BOOL)bleeding symptoms:(unint64_t)symptoms sexualActivity:(int64_t)activity ovulationTestResult:(int64_t)self0 pregnancyTestResult:(int64_t)self1 progesteroneTestResult:(int64_t)self2 cervicalMucusQuality:(int64_t)self3 basalBodyTemperature:(id)self4 wristTemperature:(id)self5 menstrualFlowModificationDayIndex:(int64_t)self6 startOfCycleFromCycleTracking:(id)self7 startedCycleFactors:(id)self8 endedCycleFactors:(id)self9 sampleCountByType:(id)type
{
  bleedingCopy = bleeding;
  typeCopy = type;
  cycleFactorsCopy = cycleFactors;
  factorsCopy = factors;
  trackingCopy = tracking;
  wristTemperatureCopy = wristTemperature;
  temperatureCopy = temperature;
  v28 = [[self alloc] _initWithDayIndex:index menstrualFlow:flow bleedingInPregnancyFlow:pregnancyFlow bleedingAfterPregnancyFlow:afterPregnancyFlow intermenstrualBleeding:bleedingCopy symptoms:symptoms sexualActivity:activity ovulationTestResult:result pregnancyTestResult:testResult progesteroneTestResult:progesteroneTestResult cervicalMucusQuality:quality basalBodyTemperature:temperatureCopy wristTemperature:wristTemperatureCopy menstrualFlowModificationDayIndex:dayIndex startOfCycleFromCycleTracking:trackingCopy startedCycleFactors:factorsCopy endedCycleFactors:cycleFactorsCopy sampleCountByType:typeCopy];

  return v28;
}

+ (id)emptyDaySummaryWithDayIndex:(int64_t)index
{
  v3 = [objc_alloc(objc_opt_class()) _initWithDayIndex:index menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0 wristTemperature:0 menstrualFlowModificationDayIndex:0 startOfCycleFromCycleTracking:0 startedCycleFactors:0 endedCycleFactors:0 sampleCountByType:0];

  return v3;
}

- (id)_initWithDayIndex:(int64_t)index menstrualFlow:(int64_t)flow bleedingInPregnancyFlow:(int64_t)pregnancyFlow bleedingAfterPregnancyFlow:(int64_t)afterPregnancyFlow intermenstrualBleeding:(BOOL)bleeding symptoms:(unint64_t)symptoms sexualActivity:(int64_t)activity ovulationTestResult:(int64_t)self0 pregnancyTestResult:(int64_t)self1 progesteroneTestResult:(int64_t)self2 cervicalMucusQuality:(int64_t)self3 basalBodyTemperature:(id)self4 wristTemperature:(id)self5 menstrualFlowModificationDayIndex:(int64_t)self6 startOfCycleFromCycleTracking:(id)self7 startedCycleFactors:(id)self8 endedCycleFactors:(id)self9 sampleCountByType:(id)type
{
  temperatureCopy = temperature;
  wristTemperatureCopy = wristTemperature;
  trackingCopy = tracking;
  factorsCopy = factors;
  cycleFactorsCopy = cycleFactors;
  typeCopy = type;
  v46.receiver = self;
  v46.super_class = HKMCDaySummary;
  v29 = [(HKMCDaySummary *)&v46 init];
  v30 = v29;
  if (v29)
  {
    v29->_dayIndex = index;
    v29->_menstrualFlow = flow;
    v29->_bleedingInPregnancyFlow = pregnancyFlow;
    v29->_bleedingAfterPregnancyFlow = afterPregnancyFlow;
    v29->_intermenstrualBleeding = bleeding;
    v29->_symptoms = symptoms;
    v29->_sexualActivity = activity;
    v29->_ovulationTestResult = result;
    v29->_pregnancyTestResult = testResult;
    v29->_progesteroneTestResult = progesteroneTestResult;
    v29->_cervicalMucusQuality = quality;
    v31 = [temperatureCopy copy];
    basalBodyTemperature = v30->_basalBodyTemperature;
    v30->_basalBodyTemperature = v31;

    v33 = [wristTemperatureCopy copy];
    wristTemperature = v30->_wristTemperature;
    v30->_wristTemperature = v33;

    v30->_menstrualFlowModificationDayIndex = dayIndex;
    objc_storeStrong(&v30->_startOfCycleFromCycleTracking, tracking);
    v35 = [factorsCopy copy];
    startedCycleFactors = v30->_startedCycleFactors;
    v30->_startedCycleFactors = v35;

    v37 = [cycleFactorsCopy copy];
    endedCycleFactors = v30->_endedCycleFactors;
    v30->_endedCycleFactors = v37;

    v39 = [typeCopy copy];
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

- (void)encodeWithCoder:(id)coder
{
  dayIndex = self->_dayIndex;
  coderCopy = coder;
  [coderCopy encodeInteger:dayIndex forKey:@"DayIndex"];
  [coderCopy encodeInteger:self->_menstrualFlow forKey:@"MenstrualFlow"];
  [coderCopy encodeInteger:self->_bleedingInPregnancyFlow forKey:@"BleedingInPregnancyFlow"];
  [coderCopy encodeInteger:self->_bleedingAfterPregnancyFlow forKey:@"BleedingAfterPregnancyFlow"];
  [coderCopy encodeBool:self->_intermenstrualBleeding forKey:@"IntermenstrualBleeding"];
  [coderCopy encodeInteger:self->_symptoms forKey:@"Symptoms"];
  [coderCopy encodeInteger:self->_sexualActivity forKey:@"SexualActivity"];
  [coderCopy encodeInteger:self->_ovulationTestResult forKey:@"OvulationTestResult"];
  [coderCopy encodeInteger:self->_pregnancyTestResult forKey:@"PregnancyTestResult"];
  [coderCopy encodeInteger:self->_progesteroneTestResult forKey:@"ProgesteroneTestResult"];
  [coderCopy encodeInteger:self->_cervicalMucusQuality forKey:@"CervicalMucusQuality"];
  [coderCopy encodeObject:self->_basalBodyTemperature forKey:@"BasalBodyTemperature"];
  [coderCopy encodeObject:self->_wristTemperature forKey:@"WristTemperature"];
  [coderCopy encodeInteger:self->_menstrualFlowModificationDayIndex forKey:@"MenstrualFlowModificationDayIndex"];
  [coderCopy encodeObject:self->_startOfCycleFromCycleTracking forKey:@"StartOfCycleFromCycleTracking"];
  [coderCopy encodeObject:self->_startedCycleFactors forKey:@"StartedCycleFactors"];
  [coderCopy encodeObject:self->_endedCycleFactors forKey:@"EndedCycleFactors"];
  [coderCopy encodeObject:self->_sampleCountByType forKey:@"SampleCountByType"];
}

- (HKMCDaySummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = HKMCDaySummary;
  v5 = [(HKMCDaySummary *)&v24 init];
  if (v5)
  {
    v5->_dayIndex = [coderCopy decodeIntegerForKey:@"DayIndex"];
    v5->_menstrualFlow = [coderCopy decodeIntegerForKey:@"MenstrualFlow"];
    v5->_bleedingInPregnancyFlow = [coderCopy decodeIntegerForKey:@"BleedingInPregnancyFlow"];
    v5->_bleedingAfterPregnancyFlow = [coderCopy decodeIntegerForKey:@"BleedingAfterPregnancyFlow"];
    v5->_intermenstrualBleeding = [coderCopy decodeBoolForKey:@"IntermenstrualBleeding"];
    v5->_symptoms = [coderCopy decodeIntegerForKey:@"Symptoms"];
    v5->_sexualActivity = [coderCopy decodeIntegerForKey:@"SexualActivity"];
    v5->_ovulationTestResult = [coderCopy decodeIntegerForKey:@"OvulationTestResult"];
    v5->_pregnancyTestResult = [coderCopy decodeIntegerForKey:@"PregnancyTestResult"];
    v5->_progesteroneTestResult = [coderCopy decodeIntegerForKey:@"ProgesteroneTestResult"];
    v5->_cervicalMucusQuality = [coderCopy decodeIntegerForKey:@"CervicalMucusQuality"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BasalBodyTemperature"];
    basalBodyTemperature = v5->_basalBodyTemperature;
    v5->_basalBodyTemperature = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WristTemperature"];
    wristTemperature = v5->_wristTemperature;
    v5->_wristTemperature = v8;

    v5->_menstrualFlowModificationDayIndex = [coderCopy decodeIntegerForKey:@"MenstrualFlowModificationDayIndex"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartOfCycleFromCycleTracking"];
    startOfCycleFromCycleTracking = v5->_startOfCycleFromCycleTracking;
    v5->_startOfCycleFromCycleTracking = v10;

    v12 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"StartedCycleFactors"];
    startedCycleFactors = v5->_startedCycleFactors;
    v5->_startedCycleFactors = v13;

    v15 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"EndedCycleFactors"];
    endedCycleFactors = v5->_endedCycleFactors;
    v5->_endedCycleFactors = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 hk_typesForDictionaryMapping:v19 to:objc_opt_class()];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"SampleCountByType"];
    sampleCountByType = v5->_sampleCountByType;
    v5->_sampleCountByType = v21;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([(HKMCDaySummary *)self isUserEnteredDataEqual:equalCopy])
  {
    wristTemperature = [(HKMCDaySummary *)self wristTemperature];
    wristTemperature2 = [equalCopy wristTemperature];
    if (wristTemperature != wristTemperature2)
    {
      wristTemperature3 = [equalCopy wristTemperature];
      if (!wristTemperature3)
      {
        v12 = 0;
        goto LABEL_49;
      }

      v3 = wristTemperature3;
      wristTemperature4 = [(HKMCDaySummary *)self wristTemperature];
      wristTemperature5 = [equalCopy wristTemperature];
      if (![wristTemperature4 isEqual:wristTemperature5])
      {
        v12 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v49 = wristTemperature5;
      v50 = wristTemperature4;
    }

    menstrualFlowModificationDayIndex = [(HKMCDaySummary *)self menstrualFlowModificationDayIndex];
    if (menstrualFlowModificationDayIndex != [equalCopy menstrualFlowModificationDayIndex])
    {
      goto LABEL_36;
    }

    startOfCycleFromCycleTracking = [(HKMCDaySummary *)self startOfCycleFromCycleTracking];
    startOfCycleFromCycleTracking2 = [equalCopy startOfCycleFromCycleTracking];
    if (startOfCycleFromCycleTracking != startOfCycleFromCycleTracking2)
    {
      startOfCycleFromCycleTracking3 = [equalCopy startOfCycleFromCycleTracking];
      if (!startOfCycleFromCycleTracking3)
      {
LABEL_35:

LABEL_36:
        v12 = 0;
        goto LABEL_47;
      }

      v46 = startOfCycleFromCycleTracking3;
      startOfCycleFromCycleTracking4 = [(HKMCDaySummary *)self startOfCycleFromCycleTracking];
      wristTemperature4 = [equalCopy startOfCycleFromCycleTracking];
      if (([startOfCycleFromCycleTracking4 isEqual:wristTemperature4] & 1) == 0)
      {

LABEL_34:
        goto LABEL_35;
      }

      v44 = wristTemperature4;
    }

    startedCycleFactors = [(HKMCDaySummary *)self startedCycleFactors];
    [equalCopy startedCycleFactors];
    v47 = v48 = startedCycleFactors;
    if (startedCycleFactors == v47)
    {
      goto LABEL_18;
    }

    startedCycleFactors2 = [equalCopy startedCycleFactors];
    if (!startedCycleFactors2)
    {
      v45 = startOfCycleFromCycleTracking4;
      v12 = 0;
      v24 = v44;
      v25 = v47;
      goto LABEL_44;
    }

    v41 = startedCycleFactors2;
    wristTemperature4 = [(HKMCDaySummary *)self startedCycleFactors];
    startedCycleFactors3 = [equalCopy startedCycleFactors];
    if ([wristTemperature4 isEqual:startedCycleFactors3])
    {
      v37 = startedCycleFactors3;
LABEL_18:
      endedCycleFactors = [(HKMCDaySummary *)self endedCycleFactors];
      endedCycleFactors2 = [equalCopy endedCycleFactors];
      v43 = endedCycleFactors;
      v45 = startOfCycleFromCycleTracking4;
      v40 = wristTemperature4;
      if (endedCycleFactors == endedCycleFactors2)
      {
        v38 = startOfCycleFromCycleTracking2;
        v39 = startOfCycleFromCycleTracking;
      }

      else
      {
        endedCycleFactors3 = [equalCopy endedCycleFactors];
        if (!endedCycleFactors3)
        {
          v12 = 0;
          goto LABEL_38;
        }

        v36 = endedCycleFactors3;
        endedCycleFactors4 = [(HKMCDaySummary *)self endedCycleFactors];
        endedCycleFactors5 = [equalCopy endedCycleFactors];
        if (([endedCycleFactors4 isEqual:endedCycleFactors5] & 1) == 0)
        {

          v12 = 0;
          startedCycleFactors = v48;
          v25 = v47;
          v32 = v48 == v47;
          goto LABEL_42;
        }

        v38 = startOfCycleFromCycleTracking2;
        v39 = startOfCycleFromCycleTracking;
        v34 = endedCycleFactors4;
        v35 = endedCycleFactors5;
      }

      sampleCountByType = [(HKMCDaySummary *)self sampleCountByType];
      sampleCountByType2 = [equalCopy sampleCountByType];
      v12 = sampleCountByType == sampleCountByType2;
      if (sampleCountByType != sampleCountByType2)
      {
        sampleCountByType3 = [equalCopy sampleCountByType];
        if (sampleCountByType3)
        {
          v29 = sampleCountByType3;
          sampleCountByType4 = [(HKMCDaySummary *)self sampleCountByType];
          sampleCountByType5 = [equalCopy sampleCountByType];
          v12 = [sampleCountByType4 isEqual:sampleCountByType5];

          if (v43 != endedCycleFactors2)
          {
          }

          goto LABEL_41;
        }
      }

      if (v43 == endedCycleFactors2)
      {
LABEL_41:

        startedCycleFactors = v48;
        v25 = v47;
        v32 = v48 == v47;
        startOfCycleFromCycleTracking2 = v38;
        startOfCycleFromCycleTracking = v39;
LABEL_42:
        v24 = v44;
        if (!v32)
        {
LABEL_43:
        }

LABEL_44:

        if (startOfCycleFromCycleTracking != startOfCycleFromCycleTracking2)
        {
        }

LABEL_47:
        wristTemperature5 = v49;
        wristTemperature4 = v50;
        if (wristTemperature != wristTemperature2)
        {
          goto LABEL_48;
        }

LABEL_49:

        goto LABEL_50;
      }

      startOfCycleFromCycleTracking2 = v38;
      startOfCycleFromCycleTracking = v39;
LABEL_38:
      v24 = v44;
      startedCycleFactors = v48;
      v25 = v47;

      if (v48 == v47)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    if (startOfCycleFromCycleTracking == startOfCycleFromCycleTracking2)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v12 = 0;
LABEL_50:

  return v12;
}

- (BOOL)isUserEnteredDataEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

    dayIndex = [(HKMCDaySummary *)self dayIndex];
    if (dayIndex != [(HKMCDaySummary *)equalCopy dayIndex])
    {
      goto LABEL_17;
    }

    menstrualFlow = [(HKMCDaySummary *)self menstrualFlow];
    if (menstrualFlow != [(HKMCDaySummary *)equalCopy menstrualFlow])
    {
      goto LABEL_17;
    }

    bleedingInPregnancyFlow = [(HKMCDaySummary *)self bleedingInPregnancyFlow];
    if (bleedingInPregnancyFlow != [(HKMCDaySummary *)equalCopy bleedingInPregnancyFlow])
    {
      goto LABEL_17;
    }

    bleedingAfterPregnancyFlow = [(HKMCDaySummary *)self bleedingAfterPregnancyFlow];
    if (bleedingAfterPregnancyFlow != [(HKMCDaySummary *)equalCopy bleedingAfterPregnancyFlow])
    {
      goto LABEL_17;
    }

    intermenstrualBleeding = [(HKMCDaySummary *)self intermenstrualBleeding];
    if (intermenstrualBleeding == [(HKMCDaySummary *)equalCopy intermenstrualBleeding]&& (v10 = [(HKMCDaySummary *)self symptoms], v10 == [(HKMCDaySummary *)equalCopy symptoms]) && (v11 = [(HKMCDaySummary *)self sexualActivity], v11 == [(HKMCDaySummary *)equalCopy sexualActivity]) && (v12 = [(HKMCDaySummary *)self ovulationTestResult], v12 == [(HKMCDaySummary *)equalCopy ovulationTestResult]) && (v13 = [(HKMCDaySummary *)self pregnancyTestResult], v13 == [(HKMCDaySummary *)equalCopy pregnancyTestResult]) && (v14 = [(HKMCDaySummary *)self progesteroneTestResult], v14 == [(HKMCDaySummary *)equalCopy progesteroneTestResult]) && (v15 = [(HKMCDaySummary *)self cervicalMucusQuality], v15 == [(HKMCDaySummary *)equalCopy cervicalMucusQuality]))
    {
      basalBodyTemperature = [(HKMCDaySummary *)self basalBodyTemperature];
      basalBodyTemperature2 = [(HKMCDaySummary *)equalCopy basalBodyTemperature];
      if (basalBodyTemperature == basalBodyTemperature2)
      {
        v21 = 1;
      }

      else
      {
        basalBodyTemperature3 = [(HKMCDaySummary *)equalCopy basalBodyTemperature];
        if (basalBodyTemperature3)
        {
          basalBodyTemperature4 = [(HKMCDaySummary *)self basalBodyTemperature];
          basalBodyTemperature5 = [(HKMCDaySummary *)equalCopy basalBodyTemperature];
          v21 = [basalBodyTemperature4 isEqual:basalBodyTemperature5];
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

- (id)_initFromDaySummary:(id)summary
{
  summaryCopy = summary;
  dayIndex = [summaryCopy dayIndex];
  menstrualFlow = [summaryCopy menstrualFlow];
  bleedingInPregnancyFlow = [summaryCopy bleedingInPregnancyFlow];
  bleedingAfterPregnancyFlow = [summaryCopy bleedingAfterPregnancyFlow];
  intermenstrualBleeding = [summaryCopy intermenstrualBleeding];
  symptoms = [summaryCopy symptoms];
  sexualActivity = [summaryCopy sexualActivity];
  ovulationTestResult = [summaryCopy ovulationTestResult];
  pregnancyTestResult = [summaryCopy pregnancyTestResult];
  progesteroneTestResult = [summaryCopy progesteroneTestResult];
  cervicalMucusQuality = [summaryCopy cervicalMucusQuality];
  basalBodyTemperature = [summaryCopy basalBodyTemperature];
  wristTemperature = [summaryCopy wristTemperature];
  menstrualFlowModificationDayIndex = [summaryCopy menstrualFlowModificationDayIndex];
  startOfCycleFromCycleTracking = [summaryCopy startOfCycleFromCycleTracking];
  startedCycleFactors = [summaryCopy startedCycleFactors];
  endedCycleFactors = [summaryCopy endedCycleFactors];
  sampleCountByType = [summaryCopy sampleCountByType];

  v13 = [(HKMCDaySummary *)self _initWithDayIndex:dayIndex menstrualFlow:menstrualFlow bleedingInPregnancyFlow:bleedingInPregnancyFlow bleedingAfterPregnancyFlow:bleedingAfterPregnancyFlow intermenstrualBleeding:intermenstrualBleeding symptoms:symptoms sexualActivity:sexualActivity ovulationTestResult:ovulationTestResult pregnancyTestResult:pregnancyTestResult progesteroneTestResult:progesteroneTestResult cervicalMucusQuality:cervicalMucusQuality basalBodyTemperature:basalBodyTemperature wristTemperature:wristTemperature menstrualFlowModificationDayIndex:menstrualFlowModificationDayIndex startOfCycleFromCycleTracking:startOfCycleFromCycleTracking startedCycleFactors:startedCycleFactors endedCycleFactors:endedCycleFactors sampleCountByType:sampleCountByType];
  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
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
  integerValue = [v4 integerValue];

  return integerValue;
}

- (int64_t)bleedingInPregnancyFlowSampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:313];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (int64_t)bleedingAfterPregnancyFlowSampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:314];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (int64_t)sexualActivitySampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:97];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (int64_t)ovulationTestResultSampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:92];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (int64_t)pregnancyTestResultSampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:243];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (int64_t)progesteroneTestResultSampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:244];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (int64_t)cervicalMucusQualitySampleCount
{
  sampleCountByType = self->_sampleCountByType;
  v3 = [MEMORY[0x277CCD8D8] dataTypeWithCode:91];
  v4 = [(NSDictionary *)sampleCountByType objectForKeyedSubscript:v3];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (id)_daySummaryWithOverrideSourceIDBySourceID:(id)d ignoreCycleFactors:(BOOL)factors ignoreOvulationTestResults:(BOOL)results
{
  dCopy = d;
  v9 = self->_wristTemperature;
  v10 = v9;
  if (dCopy && v9)
  {
    watchBundleIdentifier = [(HKMCWristTemperature *)v9 watchBundleIdentifier];
    v12 = [dCopy objectForKeyedSubscript:watchBundleIdentifier];
    v13 = v12;
    if (v12)
    {
      watchBundleIdentifier2 = v12;
    }

    else
    {
      watchBundleIdentifier2 = [v10 watchBundleIdentifier];
    }

    v15 = watchBundleIdentifier2;

    v16 = [HKMCWristTemperature alloc];
    quantity = [v10 quantity];
    v18 = [(HKMCWristTemperature *)v16 initWithQuantity:quantity watchBundleIdentifier:v15];

    v10 = v18;
  }

  if (results)
  {
    ovulationTestResult = 0;
  }

  else
  {
    ovulationTestResult = self->_ovulationTestResult;
  }

  if (factors)
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
  menstrualFlow = [(HKMCDaySummary *)self menstrualFlow];

  return HKMCDaySummaryBleedingFlowHasFlow(menstrualFlow);
}

@end