@interface HKMCCycle
+ (id)_cycleWithMenstruationSegment:(id)a3 fertileWindowSegment:(id)a4 lastDayIndex:(id)a5;
+ (id)_cycleWithMenstruationSegment:(id)a3 fertileWindowSegment:(id)a4 lastDayIndex:(id)a5 ovulationConfirmationType:(int64_t)a6 ovulationConfirmationFailure:(int64_t)a7 dailyEligibleWristTemperatureCount:(int64_t)a8 cycleFactors:(id)a9;
- (BOOL)isEqual:(id)a3;
- (HKMCCycle)initWithCoder:(id)a3;
- (id)_initWithMenstruationSegment:(id)a3 fertileWindowSegment:(id)a4 lastDayIndex:(id)a5 ovulationConfirmationType:(int64_t)a6 ovulationConfirmationFailure:(int64_t)a7 dailyEligibleWristTemperatureCount:(int64_t)a8 cycleFactors:(id)a9;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCCycle

+ (id)_cycleWithMenstruationSegment:(id)a3 fertileWindowSegment:(id)a4 lastDayIndex:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = [v11 _initWithMenstruationSegment:v10 fertileWindowSegment:v9 lastDayIndex:v8 ovulationConfirmationType:0 ovulationConfirmationFailure:0 dailyEligibleWristTemperatureCount:0 cycleFactors:MEMORY[0x277CBEBF8]];

  return v12;
}

+ (id)_cycleWithMenstruationSegment:(id)a3 fertileWindowSegment:(id)a4 lastDayIndex:(id)a5 ovulationConfirmationType:(int64_t)a6 ovulationConfirmationFailure:(int64_t)a7 dailyEligibleWristTemperatureCount:(int64_t)a8 cycleFactors:(id)a9
{
  v16 = a9;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[a1 alloc] _initWithMenstruationSegment:v19 fertileWindowSegment:v18 lastDayIndex:v17 ovulationConfirmationType:a6 ovulationConfirmationFailure:a7 dailyEligibleWristTemperatureCount:a8 cycleFactors:v16];

  return v20;
}

- (id)_initWithMenstruationSegment:(id)a3 fertileWindowSegment:(id)a4 lastDayIndex:(id)a5 ovulationConfirmationType:(int64_t)a6 ovulationConfirmationFailure:(int64_t)a7 dailyEligibleWristTemperatureCount:(int64_t)a8 cycleFactors:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v25.receiver = self;
  v25.super_class = HKMCCycle;
  v19 = [(HKMCCycle *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_menstruationSegment, a3);
    objc_storeStrong(&v20->_fertileWindowSegment, a4);
    objc_storeStrong(&v20->_lastDayIndex, a5);
    v20->_ovulationConfirmationType = a6;
    v20->_ovulationConfirmationFailure = a7;
    v20->_dailyEligibleWristTemperatureCount = a8;
    v21 = [v18 copy];
    cycleFactors = v20->_cycleFactors;
    v20->_cycleFactors = v21;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  menstruationSegment = self->_menstruationSegment;
  v5 = a3;
  [v5 encodeObject:menstruationSegment forKey:@"MenstruationSegment"];
  [v5 encodeObject:self->_fertileWindowSegment forKey:@"FertileWindowSegment"];
  [v5 encodeObject:self->_lastDayIndex forKey:@"LastDayIndex"];
  [v5 encodeInteger:self->_ovulationConfirmationType forKey:@"OvulationConfirmationType"];
  [v5 encodeInteger:self->_ovulationConfirmationFailure forKey:@"OvulationConfirmationFailure"];
  [v5 encodeInteger:self->_dailyEligibleWristTemperatureCount forKey:@"DailyEligibleWristTemperatureCount"];
  [v5 encodeObject:self->_cycleFactors forKey:@"CycleFactors"];
}

- (HKMCCycle)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HKMCCycle;
  v5 = [(HKMCCycle *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MenstruationSegment"];
    menstruationSegment = v5->_menstruationSegment;
    v5->_menstruationSegment = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FertileWindowSegment"];
    fertileWindowSegment = v5->_fertileWindowSegment;
    v5->_fertileWindowSegment = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastDayIndex"];
    lastDayIndex = v5->_lastDayIndex;
    v5->_lastDayIndex = v10;

    v5->_ovulationConfirmationType = [v4 decodeIntegerForKey:@"OvulationConfirmationType"];
    v5->_ovulationConfirmationFailure = [v4 decodeIntegerForKey:@"OvulationConfirmationFailure"];
    v5->_dailyEligibleWristTemperatureCount = [v4 decodeIntegerForKey:@"DailyEligibleWristTemperatureCount"];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"CycleFactors"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HKMCCycle *)self cycleFactors];
      v6 = [v5 count];
      v7 = [(HKMCCycle *)v4 cycleFactors];
      v8 = [v7 count];

      if (v6 == v8)
      {
        v9 = [(HKMCCycle *)self cycleFactors];
        v10 = [v9 count];

        if (v10)
        {
          v11 = 0;
          do
          {
            v12 = [(HKMCCycle *)self cycleFactors];
            v7 = [v12 objectAtIndexedSubscript:v11];
            v13 = [(HKMCCycle *)v4 cycleFactors];
            v14 = [v13 objectAtIndexedSubscript:v11];
            v15 = [v7 isEqual:v14];

            if ((v15 & 1) == 0)
            {
              break;
            }

            ++v11;
            v16 = [(HKMCCycle *)self cycleFactors];
            v7 = [v16 count];
          }

          while (v11 < v7);
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

      v18 = [(HKMCCycle *)self menstruationSegment];
      v19 = [(HKMCCycle *)v4 menstruationSegment];
      if (v18 != v19)
      {
        v20 = [(HKMCCycle *)v4 menstruationSegment];
        if (!v20)
        {
          v17 = 0;
          goto LABEL_46;
        }

        v7 = v20;
        v21 = [(HKMCCycle *)self menstruationSegment];
        v22 = [(HKMCCycle *)v4 menstruationSegment];
        if (![v21 isEqual:v22])
        {
          v17 = 0;
LABEL_45:

          goto LABEL_46;
        }

        v44 = v7;
        v45 = v22;
        v46 = v21;
      }

      v23 = [(HKMCCycle *)self fertileWindowSegment];
      v24 = [(HKMCCycle *)v4 fertileWindowSegment];
      if (v23 != v24)
      {
        v25 = [(HKMCCycle *)v4 fertileWindowSegment];
        if (!v25)
        {
          v17 = 0;
LABEL_43:

LABEL_44:
          v22 = v45;
          v21 = v46;
          v7 = v44;
          if (v18 != v19)
          {
            goto LABEL_45;
          }

LABEL_46:

          goto LABEL_47;
        }

        v26 = v25;
        v27 = [(HKMCCycle *)self fertileWindowSegment];
        v7 = [(HKMCCycle *)v4 fertileWindowSegment];
        if (([v27 isEqual:v7] & 1) == 0)
        {

          v17 = 0;
          goto LABEL_44;
        }

        v41 = v7;
        v42 = v27;
        v43 = v26;
      }

      v28 = [(HKMCCycle *)self lastDayIndex];
      v29 = [(HKMCCycle *)v4 lastDayIndex];
      if (v28 != v29)
      {
        v30 = [(HKMCCycle *)v4 lastDayIndex];
        if (!v30)
        {
          goto LABEL_37;
        }

        v40 = v30;
        v31 = [(HKMCCycle *)self lastDayIndex];
        v32 = [(HKMCCycle *)v4 lastDayIndex];
        v39 = v31;
        v33 = v31;
        v7 = v32;
        if (![v33 isEqual:v32])
        {
          v17 = 0;
          goto LABEL_26;
        }
      }

      if (v15)
      {
        v34 = [(HKMCCycle *)self ovulationConfirmationType];
        if (v34 == [(HKMCCycle *)v4 ovulationConfirmationType])
        {
          v35 = [(HKMCCycle *)self ovulationConfirmationFailure];
          if (v35 == [(HKMCCycle *)v4 ovulationConfirmationFailure])
          {
            v36 = [(HKMCCycle *)self dailyEligibleWristTemperatureCount];
            v17 = v36 == [(HKMCCycle *)v4 dailyEligibleWristTemperatureCount];
            v37 = v17;
            if (v28 != v29)
            {
LABEL_26:

              if (v23 != v24)
              {
              }

              goto LABEL_43;
            }

            goto LABEL_40;
          }
        }
      }

      if (v28 == v29)
      {
        v37 = 0;
        v17 = 0;
LABEL_40:

LABEL_41:
        if (v23 != v24)
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
  v5 = [(NSNumber *)self->_lastDayIndex integerValue];
  return v4 ^ v5 ^ [(NSArray *)self->_cycleFactors hash]^ self->_ovulationConfirmationType ^ self->_ovulationConfirmationFailure ^ self->_dailyEligibleWristTemperatureCount;
}

@end