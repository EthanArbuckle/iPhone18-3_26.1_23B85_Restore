@interface HKMCDayViewModel
+ (id)dayViewModelWithMenstruationLevel:(unint64_t)a3 fertileWindowLevel:(unint64_t)a4 pregnancyState:(unint64_t)a5 bleedingInPregnancyLevel:(unint64_t)a6 bleedingAfterPregnancyLevel:(unint64_t)a7 daySummary:(id)a8 cycleFactors:(id)a9 partiallyLoggedPeriod:(BOOL)a10 fetched:(BOOL)a11;
+ (id)emptyDayViewModel;
+ (id)unfetchedDayViewModel;
- (BOOL)isEqual:(id)a3;
- (NSString)accessibilityIdentifier;
- (NSString)hk_redactedDescription;
- (id)_initWithMenstruationLevel:(unint64_t)a3 fertileWindowLevel:(unint64_t)a4 pregnancyState:(unint64_t)a5 bleedingInPregnancyLevel:(unint64_t)a6 bleedingAfterPregnancyLevel:(unint64_t)a7 daySummary:(id)a8 cycleFactors:(id)a9 partiallyLoggedPeriod:(BOOL)a10 fetched:(BOOL)a11;
- (id)description;
- (unint64_t)bleedingTypesWithFlowLogged;
- (unint64_t)defaultLoggingBleedingType;
@end

@implementation HKMCDayViewModel

+ (id)unfetchedDayViewModel
{
  if (unfetchedDayViewModel_onceToken != -1)
  {
    +[HKMCDayViewModel unfetchedDayViewModel];
  }

  v3 = unfetchedDayViewModel_viewModel;

  return v3;
}

uint64_t __41__HKMCDayViewModel_unfetchedDayViewModel__block_invoke()
{
  LOWORD(v1) = 0;
  unfetchedDayViewModel_viewModel = [[HKMCDayViewModel alloc] _initWithMenstruationLevel:0 fertileWindowLevel:0 pregnancyState:0 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:0 cycleFactors:0 partiallyLoggedPeriod:v1 fetched:?];

  return MEMORY[0x2821F96F8]();
}

+ (id)emptyDayViewModel
{
  if (emptyDayViewModel_onceToken != -1)
  {
    +[HKMCDayViewModel emptyDayViewModel];
  }

  v3 = emptyDayViewModel_viewModel;

  return v3;
}

uint64_t __37__HKMCDayViewModel_emptyDayViewModel__block_invoke()
{
  v0 = [HKMCDayViewModel alloc];
  LOWORD(v2) = 256;
  emptyDayViewModel_viewModel = [(HKMCDayViewModel *)v0 _initWithMenstruationLevel:0 fertileWindowLevel:0 pregnancyState:0 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:0 cycleFactors:MEMORY[0x277CBEBF8] partiallyLoggedPeriod:v2 fetched:?];

  return MEMORY[0x2821F96F8]();
}

+ (id)dayViewModelWithMenstruationLevel:(unint64_t)a3 fertileWindowLevel:(unint64_t)a4 pregnancyState:(unint64_t)a5 bleedingInPregnancyLevel:(unint64_t)a6 bleedingAfterPregnancyLevel:(unint64_t)a7 daySummary:(id)a8 cycleFactors:(id)a9 partiallyLoggedPeriod:(BOOL)a10 fetched:(BOOL)a11
{
  v17 = a9;
  v18 = a8;
  LOWORD(v21) = __PAIR16__(a11, a10);
  v19 = [[HKMCDayViewModel alloc] _initWithMenstruationLevel:a3 fertileWindowLevel:a4 pregnancyState:a5 bleedingInPregnancyLevel:a6 bleedingAfterPregnancyLevel:a7 daySummary:v18 cycleFactors:v17 partiallyLoggedPeriod:v21 fetched:?];

  return v19;
}

- (id)_initWithMenstruationLevel:(unint64_t)a3 fertileWindowLevel:(unint64_t)a4 pregnancyState:(unint64_t)a5 bleedingInPregnancyLevel:(unint64_t)a6 bleedingAfterPregnancyLevel:(unint64_t)a7 daySummary:(id)a8 cycleFactors:(id)a9 partiallyLoggedPeriod:(BOOL)a10 fetched:(BOOL)a11
{
  v18 = a8;
  v19 = a9;
  v25.receiver = self;
  v25.super_class = HKMCDayViewModel;
  v20 = [(HKMCDayViewModel *)&v25 init];
  v21 = v20;
  if (v20)
  {
    v20->_menstruationLevel = a3;
    v20->_fertileWindowLevel = a4;
    v20->_pregnancyState = a5;
    v20->_bleedingInPregnancyLevel = a6;
    v20->_bleedingAfterPregnancyLevel = a7;
    objc_storeStrong(&v20->_daySummary, a8);
    v22 = [v19 copy];
    cycleFactors = v21->_cycleFactors;
    v21->_cycleFactors = v22;

    v21->_partiallyLoggedPeriod = a10;
    v21->_fetched = a11;
  }

  return v21;
}

- (unint64_t)defaultLoggingBleedingType
{
  v2 = self->_pregnancyState - 1;
  if (v2 > 5)
  {
    return 0;
  }

  else
  {
    return qword_25192B528[v2];
  }
}

- (unint64_t)bleedingTypesWithFlowLogged
{
  menstruationLevel = self->_menstruationLevel;
  bleedingInPregnancyLevel = self->_bleedingInPregnancyLevel;
  bleedingAfterPregnancyLevel = self->_bleedingAfterPregnancyLevel;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:menstruationLevel == 4];
  v6 = [v5 integerValue];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:bleedingInPregnancyLevel == 1];
  v8 = [v7 integerValue] + v6;
  v9 = [MEMORY[0x277CCABB0] numberWithBool:bleedingAfterPregnancyLevel == 1];
  v10 = v8 + [v9 integerValue];

  if (!v10)
  {
    return 0;
  }

  if (v10 != 1)
  {
    return 4;
  }

  v11 = 2;
  if (bleedingInPregnancyLevel != 1)
  {
    v11 = 3;
  }

  if (menstruationLevel == 4)
  {
    result = 1;
  }

  else
  {
    result = v11;
  }

  if (menstruationLevel != 4 && bleedingInPregnancyLevel != 1 && bleedingAfterPregnancyLevel != 1)
  {
    return 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      v7 = self->_menstruationLevel == v5->_menstruationLevel && self->_fertileWindowLevel == v5->_fertileWindowLevel && self->_partiallyLoggedPeriod == v5->_partiallyLoggedPeriod && self->_fetched == v5->_fetched && [(HKMCDaySummary *)self->_daySummary isEqual:v5->_daySummary]&& self->_pregnancyState == v6->_pregnancyState;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = self->_menstruationLevel - 1;
  if (v5 > 4)
  {
    v6 = @"None";
  }

  else
  {
    v6 = off_2796D53A0[v5];
  }

  v7 = self->_fertileWindowLevel - 1;
  if (v7 > 2)
  {
    v8 = @"None";
  }

  else
  {
    v8 = off_2796D53C8[v7];
  }

  v9 = self->_pregnancyState - 1;
  if (v9 > 5)
  {
    v10 = @"None -- No recently ended pregnancy";
  }

  else
  {
    v10 = off_2796D53E0[v9];
  }

  daySummary = self->_daySummary;
  v12 = [(NSArray *)self->_cycleFactors count];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_partiallyLoggedPeriod];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_fetched];
  v15 = [v3 stringWithFormat:@"<%@:%p menstruationLevel:%@ fertileWindowLevel:%@ pregnancyState:%@ supplementaryDataLogged summary:%@ cycleFactors:%lu partialPeriod:%@ fetched:%@>", v4, self, v6, v8, v10, daySummary, v12, v13, v14];

  return v15;
}

- (NSString)hk_redactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_daySummary != 0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_fetched];
  v7 = [v3 stringWithFormat:@"<%@:%p has summary:%@ fetched:%@>", v4, self, v5, v6];

  return v7;
}

- (NSString)accessibilityIdentifier
{
  v3 = self->_menstruationLevel - 1;
  if (v3 > 4)
  {
    v4 = @"None";
  }

  else
  {
    v4 = off_2796D53A0[v3];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = self->_fertileWindowLevel - 1;
  if (v6 > 2)
  {
    v7 = @"None";
  }

  else
  {
    v7 = off_2796D53C8[v6];
  }

  v8 = [(HKMCDayViewModel *)self isSupplementaryDataLogged];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = self->_pregnancyState - 1;
  if (v10 > 5)
  {
    v11 = @"None -- No recently ended pregnancy";
  }

  else
  {
    v11 = off_2796D53E0[v10];
  }

  return [v5 stringWithFormat:@"menstruationLevel:%@|fertileWindowLevel:%@|supplementaryDataLogged:%@|pregnancyState:%@", v4, v7, v9, v11];
}

@end