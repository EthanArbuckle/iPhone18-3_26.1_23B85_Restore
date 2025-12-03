@interface HKMCCycle
+ (id)_cycleWithMenstruationSegment:(id)segment fertileWindowSegment:(id)windowSegment lastDayIndex:(id)index;
+ (id)_cycleWithMenstruationSegment:(id)segment fertileWindowSegment:(id)windowSegment lastDayIndex:(id)index ovulationConfirmationType:(int64_t)type ovulationConfirmationFailure:(int64_t)failure dailyEligibleWristTemperatureCount:(int64_t)count cycleFactors:(id)factors;
- (BOOL)isEqual:(id)equal;
- (HKMCCycle)initWithCoder:(id)coder;
- (id)_initWithMenstruationSegment:(id)segment fertileWindowSegment:(id)windowSegment lastDayIndex:(id)index ovulationConfirmationType:(int64_t)type ovulationConfirmationFailure:(int64_t)failure dailyEligibleWristTemperatureCount:(int64_t)count cycleFactors:(id)factors;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCCycle

+ (id)_cycleWithMenstruationSegment:(id)segment fertileWindowSegment:(id)windowSegment lastDayIndex:(id)index
{
  indexCopy = index;
  windowSegmentCopy = windowSegment;
  segmentCopy = segment;
  v11 = [self alloc];
  v12 = [v11 _initWithMenstruationSegment:segmentCopy fertileWindowSegment:windowSegmentCopy lastDayIndex:indexCopy ovulationConfirmationType:0 ovulationConfirmationFailure:0 dailyEligibleWristTemperatureCount:0 cycleFactors:MEMORY[0x277CBEBF8]];

  return v12;
}

+ (id)_cycleWithMenstruationSegment:(id)segment fertileWindowSegment:(id)windowSegment lastDayIndex:(id)index ovulationConfirmationType:(int64_t)type ovulationConfirmationFailure:(int64_t)failure dailyEligibleWristTemperatureCount:(int64_t)count cycleFactors:(id)factors
{
  factorsCopy = factors;
  indexCopy = index;
  windowSegmentCopy = windowSegment;
  segmentCopy = segment;
  v20 = [[self alloc] _initWithMenstruationSegment:segmentCopy fertileWindowSegment:windowSegmentCopy lastDayIndex:indexCopy ovulationConfirmationType:type ovulationConfirmationFailure:failure dailyEligibleWristTemperatureCount:count cycleFactors:factorsCopy];

  return v20;
}

- (id)_initWithMenstruationSegment:(id)segment fertileWindowSegment:(id)windowSegment lastDayIndex:(id)index ovulationConfirmationType:(int64_t)type ovulationConfirmationFailure:(int64_t)failure dailyEligibleWristTemperatureCount:(int64_t)count cycleFactors:(id)factors
{
  segmentCopy = segment;
  windowSegmentCopy = windowSegment;
  indexCopy = index;
  factorsCopy = factors;
  v25.receiver = self;
  v25.super_class = HKMCCycle;
  v19 = [(HKMCCycle *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_menstruationSegment, segment);
    objc_storeStrong(&v20->_fertileWindowSegment, windowSegment);
    objc_storeStrong(&v20->_lastDayIndex, index);
    v20->_ovulationConfirmationType = type;
    v20->_ovulationConfirmationFailure = failure;
    v20->_dailyEligibleWristTemperatureCount = count;
    v21 = [factorsCopy copy];
    cycleFactors = v20->_cycleFactors;
    v20->_cycleFactors = v21;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  menstruationSegment = self->_menstruationSegment;
  coderCopy = coder;
  [coderCopy encodeObject:menstruationSegment forKey:@"MenstruationSegment"];
  [coderCopy encodeObject:self->_fertileWindowSegment forKey:@"FertileWindowSegment"];
  [coderCopy encodeObject:self->_lastDayIndex forKey:@"LastDayIndex"];
  [coderCopy encodeInteger:self->_ovulationConfirmationType forKey:@"OvulationConfirmationType"];
  [coderCopy encodeInteger:self->_ovulationConfirmationFailure forKey:@"OvulationConfirmationFailure"];
  [coderCopy encodeInteger:self->_dailyEligibleWristTemperatureCount forKey:@"DailyEligibleWristTemperatureCount"];
  [coderCopy encodeObject:self->_cycleFactors forKey:@"CycleFactors"];
}

- (HKMCCycle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HKMCCycle;
  v5 = [(HKMCCycle *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MenstruationSegment"];
    menstruationSegment = v5->_menstruationSegment;
    v5->_menstruationSegment = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FertileWindowSegment"];
    fertileWindowSegment = v5->_fertileWindowSegment;
    v5->_fertileWindowSegment = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastDayIndex"];
    lastDayIndex = v5->_lastDayIndex;
    v5->_lastDayIndex = v10;

    v5->_ovulationConfirmationType = [coderCopy decodeIntegerForKey:@"OvulationConfirmationType"];
    v5->_ovulationConfirmationFailure = [coderCopy decodeIntegerForKey:@"OvulationConfirmationFailure"];
    v5->_dailyEligibleWristTemperatureCount = [coderCopy decodeIntegerForKey:@"DailyEligibleWristTemperatureCount"];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"CycleFactors"];
    cycleFactors = v5->_cycleFactors;
    v5->_cycleFactors = v15;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v12 = *&self->_menstruationSegment;
  lastDayIndex = self->_lastDayIndex;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_ovulationConfirmationType];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_ovulationConfirmationFailure];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_dailyEligibleWristTemperatureCount];
  v9 = NSStringFromCycleFactors(self->_cycleFactors);
  v10 = [v3 stringWithFormat:@"<%@:%p menstruation:%@ fertile window:%@ last day:%@ ovulation confirmation type:%@, ovulation confirmation failure:%@, daily eligible wrist temperature count:%@, cycle factors:%@>", v4, self, v12, lastDayIndex, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cycleFactors = [(HKMCCycle *)self cycleFactors];
      v6 = [cycleFactors count];
      cycleFactors2 = [(HKMCCycle *)equalCopy cycleFactors];
      v8 = [cycleFactors2 count];

      if (v6 == v8)
      {
        cycleFactors3 = [(HKMCCycle *)self cycleFactors];
        v10 = [cycleFactors3 count];

        if (v10)
        {
          v11 = 0;
          do
          {
            cycleFactors4 = [(HKMCCycle *)self cycleFactors];
            cycleFactors2 = [cycleFactors4 objectAtIndexedSubscript:v11];
            cycleFactors5 = [(HKMCCycle *)equalCopy cycleFactors];
            v14 = [cycleFactors5 objectAtIndexedSubscript:v11];
            v15 = [cycleFactors2 isEqual:v14];

            if ((v15 & 1) == 0)
            {
              break;
            }

            ++v11;
            cycleFactors6 = [(HKMCCycle *)self cycleFactors];
            cycleFactors2 = [cycleFactors6 count];
          }

          while (v11 < cycleFactors2);
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 0;
      }

      menstruationSegment = [(HKMCCycle *)self menstruationSegment];
      menstruationSegment2 = [(HKMCCycle *)equalCopy menstruationSegment];
      if (menstruationSegment != menstruationSegment2)
      {
        menstruationSegment3 = [(HKMCCycle *)equalCopy menstruationSegment];
        if (!menstruationSegment3)
        {
          v17 = 0;
          goto LABEL_46;
        }

        cycleFactors2 = menstruationSegment3;
        menstruationSegment4 = [(HKMCCycle *)self menstruationSegment];
        menstruationSegment5 = [(HKMCCycle *)equalCopy menstruationSegment];
        if (![menstruationSegment4 isEqual:menstruationSegment5])
        {
          v17 = 0;
LABEL_45:

          goto LABEL_46;
        }

        v44 = cycleFactors2;
        v45 = menstruationSegment5;
        v46 = menstruationSegment4;
      }

      fertileWindowSegment = [(HKMCCycle *)self fertileWindowSegment];
      fertileWindowSegment2 = [(HKMCCycle *)equalCopy fertileWindowSegment];
      if (fertileWindowSegment != fertileWindowSegment2)
      {
        fertileWindowSegment3 = [(HKMCCycle *)equalCopy fertileWindowSegment];
        if (!fertileWindowSegment3)
        {
          v17 = 0;
LABEL_43:

LABEL_44:
          menstruationSegment5 = v45;
          menstruationSegment4 = v46;
          cycleFactors2 = v44;
          if (menstruationSegment != menstruationSegment2)
          {
            goto LABEL_45;
          }

LABEL_46:

          goto LABEL_47;
        }

        v26 = fertileWindowSegment3;
        fertileWindowSegment4 = [(HKMCCycle *)self fertileWindowSegment];
        cycleFactors2 = [(HKMCCycle *)equalCopy fertileWindowSegment];
        if (([fertileWindowSegment4 isEqual:cycleFactors2] & 1) == 0)
        {

          v17 = 0;
          goto LABEL_44;
        }

        v41 = cycleFactors2;
        v42 = fertileWindowSegment4;
        v43 = v26;
      }

      lastDayIndex = [(HKMCCycle *)self lastDayIndex];
      lastDayIndex2 = [(HKMCCycle *)equalCopy lastDayIndex];
      if (lastDayIndex != lastDayIndex2)
      {
        lastDayIndex3 = [(HKMCCycle *)equalCopy lastDayIndex];
        if (!lastDayIndex3)
        {
          goto LABEL_37;
        }

        v40 = lastDayIndex3;
        lastDayIndex4 = [(HKMCCycle *)self lastDayIndex];
        lastDayIndex5 = [(HKMCCycle *)equalCopy lastDayIndex];
        v39 = lastDayIndex4;
        v33 = lastDayIndex4;
        cycleFactors2 = lastDayIndex5;
        if (![v33 isEqual:lastDayIndex5])
        {
          v17 = 0;
          goto LABEL_26;
        }
      }

      if (v15)
      {
        ovulationConfirmationType = [(HKMCCycle *)self ovulationConfirmationType];
        if (ovulationConfirmationType == [(HKMCCycle *)equalCopy ovulationConfirmationType])
        {
          ovulationConfirmationFailure = [(HKMCCycle *)self ovulationConfirmationFailure];
          if (ovulationConfirmationFailure == [(HKMCCycle *)equalCopy ovulationConfirmationFailure])
          {
            dailyEligibleWristTemperatureCount = [(HKMCCycle *)self dailyEligibleWristTemperatureCount];
            v17 = dailyEligibleWristTemperatureCount == [(HKMCCycle *)equalCopy dailyEligibleWristTemperatureCount];
            v37 = v17;
            if (lastDayIndex != lastDayIndex2)
            {
LABEL_26:

              if (fertileWindowSegment != fertileWindowSegment2)
              {
              }

              goto LABEL_43;
            }

            goto LABEL_40;
          }
        }
      }

      if (lastDayIndex == lastDayIndex2)
      {
        v37 = 0;
        v17 = 0;
LABEL_40:

LABEL_41:
        if (fertileWindowSegment != fertileWindowSegment2)
        {

          v17 = v37;
        }

        goto LABEL_43;
      }

LABEL_37:
      v37 = 0;
      v17 = 0;
      goto LABEL_41;
    }

    v17 = 0;
  }

LABEL_47:

  return v17;
}

- (unint64_t)hash
{
  v3 = [(HKMCCycleSegment *)self->_menstruationSegment hash];
  v4 = [(HKMCCycleSegment *)self->_fertileWindowSegment hash]^ v3;
  integerValue = [(NSNumber *)self->_lastDayIndex integerValue];
  return v4 ^ integerValue ^ [(NSArray *)self->_cycleFactors hash]^ self->_ovulationConfirmationType ^ self->_ovulationConfirmationFailure ^ self->_dailyEligibleWristTemperatureCount;
}

@end