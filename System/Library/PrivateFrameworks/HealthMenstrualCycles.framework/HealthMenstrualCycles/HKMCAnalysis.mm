@interface HKMCAnalysis
- (BOOL)isEqual:(id)equal;
- (HKMCAnalysis)initWithCoder:(id)coder;
- (HKMCAnalysis)initWithStatistics:(id)statistics menstruationProjections:(id)projections fertileWindowProjections:(id)windowProjections menstruationProjectionsEnabled:(BOOL)enabled fertileWindowProjectionsEnabled:(BOOL)projectionsEnabled cycles:(id)cycles deviations:(id)deviations recentSymptoms:(unint64_t)self0 recentBasalBodyTemperature:(id)self1 lastLoggedDayIndex:(id)self2 lastMenstrualFlowDayIndex:(id)self3 isPeriodLogLate:(BOOL)self4 ongoingCycleFactors:(id)self5 numberOfDailySleepHeartRateStatisticsForPast100Days:(int64_t)self6 numberOfDailyAwakeHeartRateStatisticsForPast100Days:(int64_t)self7 hasHealthAppDevicesWithHigherAlgorithmVersions:(BOOL)self8;
- (NSString)hk_redactedDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCAnalysis

- (HKMCAnalysis)initWithStatistics:(id)statistics menstruationProjections:(id)projections fertileWindowProjections:(id)windowProjections menstruationProjectionsEnabled:(BOOL)enabled fertileWindowProjectionsEnabled:(BOOL)projectionsEnabled cycles:(id)cycles deviations:(id)deviations recentSymptoms:(unint64_t)self0 recentBasalBodyTemperature:(id)self1 lastLoggedDayIndex:(id)self2 lastMenstrualFlowDayIndex:(id)self3 isPeriodLogLate:(BOOL)self4 ongoingCycleFactors:(id)self5 numberOfDailySleepHeartRateStatisticsForPast100Days:(int64_t)self6 numberOfDailyAwakeHeartRateStatisticsForPast100Days:(int64_t)self7 hasHealthAppDevicesWithHigherAlgorithmVersions:(BOOL)self8
{
  statisticsCopy = statistics;
  projectionsCopy = projections;
  windowProjectionsCopy = windowProjections;
  cyclesCopy = cycles;
  deviationsCopy = deviations;
  temperatureCopy = temperature;
  indexCopy = index;
  dayIndexCopy = dayIndex;
  factorsCopy = factors;
  v49.receiver = self;
  v49.super_class = HKMCAnalysis;
  v29 = [(HKMCAnalysis *)&v49 init];
  if (v29)
  {
    v30 = [statisticsCopy copy];
    statistics = v29->_statistics;
    v29->_statistics = v30;

    v32 = [projectionsCopy copy];
    menstruationProjections = v29->_menstruationProjections;
    v29->_menstruationProjections = v32;

    v34 = [windowProjectionsCopy copy];
    fertileWindowProjections = v29->_fertileWindowProjections;
    v29->_fertileWindowProjections = v34;

    v29->_menstruationProjectionsEnabled = enabled;
    v29->_fertileWindowProjectionsEnabled = projectionsEnabled;
    v36 = [cyclesCopy copy];
    cycles = v29->_cycles;
    v29->_cycles = v36;

    v38 = [deviationsCopy copy];
    deviations = v29->_deviations;
    v29->_deviations = v38;

    v29->_recentSymptoms = symptoms;
    v40 = [temperatureCopy copy];
    recentBasalBodyTemperature = v29->_recentBasalBodyTemperature;
    v29->_recentBasalBodyTemperature = v40;

    objc_storeStrong(&v29->_lastLoggedDayIndex, index);
    objc_storeStrong(&v29->_lastMenstrualFlowDayIndex, dayIndex);
    v29->_isPeriodLogLate = late;
    v42 = [factorsCopy copy];
    ongoingCycleFactors = v29->_ongoingCycleFactors;
    v29->_ongoingCycleFactors = v42;

    v29->_numberOfDailySleepHeartRateStatisticsForPast100Days = days;
    v29->_numberOfDailyAwakeHeartRateStatisticsForPast100Days = past100Days;
    v29->_hasHealthAppDevicesWithHigherAlgorithmVersions = versions;
  }

  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  statistics = self->_statistics;
  coderCopy = coder;
  [coderCopy encodeObject:statistics forKey:@"Statistics"];
  [coderCopy encodeObject:self->_menstruationProjections forKey:@"MenstruationProjections"];
  [coderCopy encodeObject:self->_fertileWindowProjections forKey:@"FertileWindowProjections"];
  [coderCopy encodeBool:self->_menstruationProjectionsEnabled forKey:@"MenstruationProjectionsEnabled"];
  [coderCopy encodeBool:self->_fertileWindowProjectionsEnabled forKey:@"FertileWindowProjectionsEnabled"];
  [coderCopy encodeObject:self->_cycles forKey:@"Cycles"];
  [coderCopy encodeObject:self->_deviations forKey:@"Deviations"];
  [coderCopy encodeInteger:self->_recentSymptoms forKey:@"RecentSymptoms"];
  [coderCopy encodeObject:self->_recentBasalBodyTemperature forKey:@"RecentBasalBodyTemperature"];
  [coderCopy encodeObject:self->_lastLoggedDayIndex forKey:@"LastLoggedDayIndex"];
  [coderCopy encodeObject:self->_lastMenstrualFlowDayIndex forKey:@"LastMenstrualFlowDayIndex"];
  [coderCopy encodeBool:self->_isPeriodLogLate forKey:@"IsPeriodLogLate"];
  [coderCopy encodeObject:self->_ongoingCycleFactors forKey:@"OngoingCycleFactors"];
  [coderCopy encodeInteger:self->_numberOfDailySleepHeartRateStatisticsForPast100Days forKey:@"NumberOfDailySleepHeartRateStatisticsForPast100Days"];
  [coderCopy encodeInteger:self->_numberOfDailyAwakeHeartRateStatisticsForPast100Days forKey:@"NumberOfDailyAwakeHeartRateStatisticsForPast100Days"];
  [coderCopy encodeBool:self->_hasHealthAppDevicesWithHigherAlgorithmVersions forKey:@"HasHealthAppDevicesWithHigherAlgorithmVersions"];
  [coderCopy encodeObject:self->_latestSampleInfo forKey:@"LatestSampleInfo"];
}

- (HKMCAnalysis)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = HKMCAnalysis;
  v5 = [(HKMCAnalysis *)&v43 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Statistics"];
    statistics = v5->_statistics;
    v5->_statistics = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"MenstruationProjections"];
    menstruationProjections = v5->_menstruationProjections;
    v5->_menstruationProjections = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"FertileWindowProjections"];
    fertileWindowProjections = v5->_fertileWindowProjections;
    v5->_fertileWindowProjections = v16;

    v5->_menstruationProjectionsEnabled = [coderCopy decodeBoolForKey:@"MenstruationProjectionsEnabled"];
    v5->_fertileWindowProjectionsEnabled = [coderCopy decodeBoolForKey:@"FertileWindowProjectionsEnabled"];
    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"Cycles"];
    cycles = v5->_cycles;
    v5->_cycles = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"Deviations"];
    deviations = v5->_deviations;
    v5->_deviations = v26;

    v5->_recentSymptoms = [coderCopy decodeIntegerForKey:@"RecentSymptoms"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecentBasalBodyTemperature"];
    recentBasalBodyTemperature = v5->_recentBasalBodyTemperature;
    v5->_recentBasalBodyTemperature = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastLoggedDayIndex"];
    lastLoggedDayIndex = v5->_lastLoggedDayIndex;
    v5->_lastLoggedDayIndex = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastMenstrualFlowDayIndex"];
    lastMenstrualFlowDayIndex = v5->_lastMenstrualFlowDayIndex;
    v5->_lastMenstrualFlowDayIndex = v32;

    v5->_isPeriodLogLate = [coderCopy decodeBoolForKey:@"IsPeriodLogLate"];
    v34 = MEMORY[0x277CBEB98];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"OngoingCycleFactors"];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_ongoingCycleFactors, v39);

    v5->_numberOfDailySleepHeartRateStatisticsForPast100Days = [coderCopy decodeIntegerForKey:@"NumberOfDailySleepHeartRateStatisticsForPast100Days"];
    v5->_numberOfDailyAwakeHeartRateStatisticsForPast100Days = [coderCopy decodeIntegerForKey:@"NumberOfDailyAwakeHeartRateStatisticsForPast100Days"];
    v5->_hasHealthAppDevicesWithHigherAlgorithmVersions = [coderCopy decodeBoolForKey:@"HasHealthAppDevicesWithHigherAlgorithmVersions"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LatestSampleInfo"];
    latestSampleInfo = v5->_latestSampleInfo;
    v5->_latestSampleInfo = v40;
  }

  return v5;
}

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  statistics = self->_statistics;
  v18 = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_recentSymptoms];
  shortDescription = [(HKMCRecentBasalBodyTemperature *)self->_recentBasalBodyTemperature shortDescription];
  if (self->_menstruationProjectionsEnabled)
  {
    menstruationProjections = self->_menstruationProjections;
  }

  else
  {
    menstruationProjections = @"OFF";
  }

  v16 = menstruationProjections;
  lastLoggedDayIndex = self->_lastLoggedDayIndex;
  lastMenstrualFlowDayIndex = self->_lastMenstrualFlowDayIndex;
  if (self->_fertileWindowProjectionsEnabled)
  {
    fertileWindowProjections = self->_fertileWindowProjections;
  }

  else
  {
    fertileWindowProjections = @"OFF";
  }

  ongoingCycleFactors = self->_ongoingCycleFactors;
  cycles = self->_cycles;
  deviations = self->_deviations;
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasHealthAppDevicesWithHigherAlgorithmVersions];
  v14 = [v19 stringWithFormat:@"<%@:%p statistics:%@ symptoms:%@ bbt:%@ last log:%@ last flow:%@ menses:%@ fertility:%@ cycles:%@ factors:%@ deviations:%@ mismatch:%@ sample:%@>", v18, self, statistics, v4, shortDescription, lastLoggedDayIndex, lastMenstrualFlowDayIndex, v16, fertileWindowProjections, cycles, ongoingCycleFactors, deviations, v13, self->_latestSampleInfo];

  return v14;
}

- (NSString)hk_redactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_menstruationProjections, "count")}];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_fertileWindowProjections, "count")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_cycles, "count")}];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_ongoingCycleFactors, "count")}];
  v9 = HKSensitiveLogItem();
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_deviations, "count")}];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasHealthAppDevicesWithHigherAlgorithmVersions];
  v12 = [v3 stringWithFormat:@"<%@:%p %@ menstruation projections, %@ fertility projections, %@ cycles, %@ factors, %@ deviations, mismatch: %@, sample:%@>", v4, self, v5, v6, v7, v9, v10, v11, self->_latestSampleInfo];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      ongoingCycleFactors = [(HKMCAnalysis *)self ongoingCycleFactors];
      v7 = [ongoingCycleFactors count];
      ongoingCycleFactors2 = [v5 ongoingCycleFactors];
      v9 = [ongoingCycleFactors2 count];

      if (v7 == v9)
      {
        ongoingCycleFactors3 = [(HKMCAnalysis *)self ongoingCycleFactors];
        v11 = [ongoingCycleFactors3 count];

        if (v11)
        {
          v12 = 0;
          do
          {
            ongoingCycleFactors2 = [(HKMCAnalysis *)self ongoingCycleFactors];
            v13 = [ongoingCycleFactors2 objectAtIndexedSubscript:v12];
            ongoingCycleFactors4 = [v5 ongoingCycleFactors];
            v15 = [ongoingCycleFactors4 objectAtIndexedSubscript:v12];
            v16 = [v13 isEquivalent:v15];

            if ((v16 & 1) == 0)
            {
              break;
            }

            ++v12;
            ongoingCycleFactors2 = [(HKMCAnalysis *)self ongoingCycleFactors];
            v17 = [ongoingCycleFactors2 count];
          }

          while (v12 < v17);
          v18 = v16 ^ 1;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 1;
      }

      statistics = [(HKMCAnalysis *)self statistics];
      statistics2 = [v5 statistics];
      if (statistics != statistics2)
      {
        ongoingCycleFactors2 = [v5 statistics];
        if (!ongoingCycleFactors2)
        {
          v19 = 0;
LABEL_73:

          goto LABEL_74;
        }

        statistics3 = [(HKMCAnalysis *)self statistics];
        statistics4 = [v5 statistics];
        if (![statistics3 isEqual:statistics4])
        {
          v19 = 0;
LABEL_45:

          goto LABEL_73;
        }

        v113 = statistics4;
        v114 = statistics3;
      }

      menstruationProjections = [(HKMCAnalysis *)self menstruationProjections];
      menstruationProjections2 = [v5 menstruationProjections];
      if (menstruationProjections == menstruationProjections2)
      {
        v115 = 0;
      }

      else
      {
        menstruationProjections3 = [v5 menstruationProjections];
        if (!menstruationProjections3)
        {

          v19 = 0;
          goto LABEL_71;
        }

        v107 = v18;
        v115 = menstruationProjections != menstruationProjections2;
        v106 = menstruationProjections3;
        menstruationProjections4 = [(HKMCAnalysis *)self menstruationProjections];
        menstruationProjections5 = [v5 menstruationProjections];
        v112 = menstruationProjections4;
        if (![menstruationProjections4 isEqual:menstruationProjections5])
        {
          v19 = 0;
LABEL_44:

          statistics4 = v113;
          statistics3 = v114;
          if (statistics == statistics2)
          {
            goto LABEL_74;
          }

          goto LABEL_45;
        }

        v105 = menstruationProjections5;
        v18 = v107;
      }

      fertileWindowProjections = [(HKMCAnalysis *)self fertileWindowProjections];
      [v5 fertileWindowProjections];
      v117 = v116 = fertileWindowProjections;
      v30 = fertileWindowProjections == v117;
      v31 = fertileWindowProjections != v117;
      if (!v30)
      {
        fertileWindowProjections2 = [v5 fertileWindowProjections];
        if (!fertileWindowProjections2)
        {

          v19 = 0;
          if (menstruationProjections != menstruationProjections2)
          {
            LOBYTE(v43) = 1;
            goto LABEL_68;
          }

          v43 = 0;
LABEL_76:
          if (!v43)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        v108 = v18;
        v33 = v31;
        v103 = fertileWindowProjections2;
        fertileWindowProjections3 = [(HKMCAnalysis *)self fertileWindowProjections];
        fertileWindowProjections4 = [v5 fertileWindowProjections];
        v104 = fertileWindowProjections3;
        v36 = fertileWindowProjections3;
        v37 = fertileWindowProjections4;
        if (![v36 isEqual:fertileWindowProjections4])
        {
          v19 = 0;
          v42 = v116;
LABEL_43:

          menstruationProjections5 = v105;
          if (menstruationProjections == menstruationProjections2)
          {
            goto LABEL_70;
          }

          goto LABEL_44;
        }

        v102 = v37;
        v31 = v33;
        v18 = v108;
      }

      if (self->_menstruationProjectionsEnabled != v5[8] || self->_fertileWindowProjectionsEnabled != v5[9])
      {
        v19 = 0;
        v42 = v116;
        goto LABEL_36;
      }

      v99 = v31;
      cycles = [(HKMCAnalysis *)self cycles];
      cycles2 = [v5 cycles];
      v101 = cycles;
      v30 = cycles == cycles2;
      v39 = cycles != cycles2;
      if (v30)
      {
        v96 = v39;
      }

      else
      {
        cycles3 = [v5 cycles];
        if (!cycles3)
        {

          v19 = 0;
          v42 = v116;
          if (v116 != v117)
          {
            LOBYTE(v31) = 1;
LABEL_37:

            if (!v31)
            {
              goto LABEL_67;
            }

LABEL_66:

            goto LABEL_67;
          }

          v31 = 0;
LABEL_65:
          if (!v31)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        v96 = v39;
        v93 = cycles3;
        cycles4 = [(HKMCAnalysis *)self cycles];
        cycles5 = [v5 cycles];
        v95 = cycles4;
        if (![cycles4 isEqual:?])
        {
          v19 = 0;
          v42 = v116;
          goto LABEL_118;
        }
      }

      deviations = [(HKMCAnalysis *)self deviations];
      deviations2 = [v5 deviations];
      v98 = deviations;
      v30 = deviations == deviations2;
      v92 = deviations != deviations2;
      v31 = v99;
      if (!v30)
      {
        deviations3 = [v5 deviations];
        if (!deviations3)
        {

          v19 = 0;
          v42 = v116;
          if (v101 != cycles2)
          {
            LOBYTE(v96) = 1;
            goto LABEL_151;
          }

          v96 = 0;
LABEL_154:
          if (!v96)
          {
            goto LABEL_153;
          }

          goto LABEL_152;
        }

        v109 = statistics2;
        v46 = statistics;
        v47 = v18;
        v89 = deviations3;
        deviations4 = [(HKMCAnalysis *)self deviations];
        deviations5 = [v5 deviations];
        v91 = deviations4;
        if (![deviations4 isEqual:?])
        {
          v19 = 0;
          v42 = v116;
          statistics = v46;
          statistics2 = v109;
          goto LABEL_117;
        }

        v18 = v47;
        statistics = v46;
        statistics2 = v109;
      }

      recentSymptoms = [(HKMCAnalysis *)self recentSymptoms];
      if (recentSymptoms != [v5 recentSymptoms])
      {
        v19 = 0;
        v42 = v116;
        v31 = v99;
        if (v98 != deviations2)
        {
          goto LABEL_148;
        }

        goto LABEL_156;
      }

      v110 = v18;
      recentBasalBodyTemperature = [(HKMCAnalysis *)self recentBasalBodyTemperature];
      recentBasalBodyTemperature2 = [v5 recentBasalBodyTemperature];
      v88 = recentBasalBodyTemperature;
      v30 = recentBasalBodyTemperature == recentBasalBodyTemperature2;
      v51 = recentBasalBodyTemperature != recentBasalBodyTemperature2;
      v31 = v99;
      if (v30)
      {
        v84 = v51;
      }

      else
      {
        recentBasalBodyTemperature3 = [v5 recentBasalBodyTemperature];
        if (!recentBasalBodyTemperature3)
        {

          v19 = 0;
          v42 = v116;
          if (v98 != deviations2)
          {
            LOBYTE(v92) = 1;
            goto LABEL_148;
          }

          v92 = 0;
LABEL_156:
          if (!v92)
          {
            goto LABEL_150;
          }

LABEL_149:

          goto LABEL_150;
        }

        v84 = v51;
        v81 = recentBasalBodyTemperature3;
        recentBasalBodyTemperature4 = [(HKMCAnalysis *)self recentBasalBodyTemperature];
        recentBasalBodyTemperature5 = [v5 recentBasalBodyTemperature];
        v83 = recentBasalBodyTemperature4;
        if (![recentBasalBodyTemperature4 isEqual:?])
        {
          v19 = 0;
          v42 = v116;
          goto LABEL_116;
        }
      }

      lastLoggedDayIndex = [(HKMCAnalysis *)self lastLoggedDayIndex];
      lastLoggedDayIndex2 = [v5 lastLoggedDayIndex];
      v86 = lastLoggedDayIndex;
      v30 = lastLoggedDayIndex == lastLoggedDayIndex2;
      v56 = lastLoggedDayIndex != lastLoggedDayIndex2;
      if (v30)
      {
        v79 = v56;
      }

      else
      {
        lastLoggedDayIndex3 = [v5 lastLoggedDayIndex];
        if (!lastLoggedDayIndex3)
        {

          v19 = 0;
          v42 = v116;
          if (v88 != recentBasalBodyTemperature2)
          {
            LOBYTE(v84) = 1;
            goto LABEL_145;
          }

          v84 = 0;
LABEL_158:
          if (!v84)
          {
            goto LABEL_147;
          }

LABEL_146:

          goto LABEL_147;
        }

        v79 = v56;
        v75 = lastLoggedDayIndex3;
        lastLoggedDayIndex4 = [(HKMCAnalysis *)self lastLoggedDayIndex];
        lastLoggedDayIndex5 = [v5 lastLoggedDayIndex];
        v77 = lastLoggedDayIndex4;
        if (![lastLoggedDayIndex4 isEqual:?])
        {
          v19 = 0;
          v42 = v116;
          goto LABEL_115;
        }
      }

      lastMenstrualFlowDayIndex = [(HKMCAnalysis *)self lastMenstrualFlowDayIndex];
      lastMenstrualFlowDayIndex2 = [v5 lastMenstrualFlowDayIndex];
      v78 = lastMenstrualFlowDayIndex;
      if (lastMenstrualFlowDayIndex != lastMenstrualFlowDayIndex2)
      {
        lastMenstrualFlowDayIndex3 = [v5 lastMenstrualFlowDayIndex];
        if (!lastMenstrualFlowDayIndex3)
        {

          v19 = 0;
          v42 = v116;
          if (v86 != lastLoggedDayIndex2)
          {
            LOBYTE(v79) = 1;
            goto LABEL_142;
          }

          v79 = 0;
          goto LABEL_160;
        }

        v74 = lastMenstrualFlowDayIndex3;
        lastMenstrualFlowDayIndex4 = [(HKMCAnalysis *)self lastMenstrualFlowDayIndex];
        lastMenstrualFlowDayIndex5 = [v5 lastMenstrualFlowDayIndex];
        v73 = lastMenstrualFlowDayIndex4;
        if (![lastMenstrualFlowDayIndex4 isEqual:?])
        {
          v19 = 0;
          v42 = v116;
          goto LABEL_114;
        }

        lastMenstrualFlowDayIndex = v78;
      }

      isPeriodLogLate = [(HKMCAnalysis *)self isPeriodLogLate];
      if ((isPeriodLogLate ^ [v5 isPeriodLogLate] | v110))
      {
        v30 = lastMenstrualFlowDayIndex == lastMenstrualFlowDayIndex2;
        v42 = v116;
        v31 = v99;
        if (!v30)
        {

          v19 = 0;
          goto LABEL_141;
        }

        v19 = 0;
LABEL_140:

LABEL_141:
        if (v86 != lastLoggedDayIndex2)
        {
LABEL_142:

          if (!v79)
          {
            goto LABEL_144;
          }

          goto LABEL_143;
        }

LABEL_160:
        if (v79)
        {
LABEL_143:
        }

LABEL_144:

        if (v88 != recentBasalBodyTemperature2)
        {
LABEL_145:

          if (!v84)
          {
            goto LABEL_147;
          }

          goto LABEL_146;
        }

        goto LABEL_158;
      }

      latestSampleInfo = [(HKMCAnalysis *)self latestSampleInfo];
      latestSampleInfo2 = [v5 latestSampleInfo];
      v111 = latestSampleInfo;
      v30 = latestSampleInfo == latestSampleInfo2;
      v65 = latestSampleInfo2;
      if (v30)
      {
        v71 = equalCopy;
        v66 = ongoingCycleFactors2;
        numberOfDailySleepHeartRateStatisticsForPast100Days = [(HKMCAnalysis *)self numberOfDailySleepHeartRateStatisticsForPast100Days];
      }

      else
      {
        latestSampleInfo3 = [v5 latestSampleInfo];
        if (!latestSampleInfo3)
        {
          goto LABEL_113;
        }

        v71 = equalCopy;
        v66 = ongoingCycleFactors2;
        lastMenstrualFlowDayIndex = [(HKMCAnalysis *)self latestSampleInfo];
        ongoingCycleFactors2 = [v5 latestSampleInfo];
        if (![lastMenstrualFlowDayIndex isEqual:?])
        {
          v19 = 0;
LABEL_122:

          if (v78 != lastMenstrualFlowDayIndex2)
          {
          }

          if (v86 != lastLoggedDayIndex2)
          {
          }

          if (v88 != recentBasalBodyTemperature2)
          {
          }

          if (v98 != deviations2)
          {
          }

          if (v101 != cycles2)
          {
          }

          if (v116 != v117)
          {
          }

          if (menstruationProjections != menstruationProjections2)
          {
          }

          statistics4 = v113;
          statistics3 = v114;
          ongoingCycleFactors2 = v66;
          equalCopy = v71;
          if (statistics == statistics2)
          {
            goto LABEL_74;
          }

          goto LABEL_45;
        }

        numberOfDailySleepHeartRateStatisticsForPast100Days = [(HKMCAnalysis *)self numberOfDailySleepHeartRateStatisticsForPast100Days];
      }

      if (numberOfDailySleepHeartRateStatisticsForPast100Days == [v5 numberOfDailySleepHeartRateStatisticsForPast100Days])
      {
        numberOfDailyAwakeHeartRateStatisticsForPast100Days = [(HKMCAnalysis *)self numberOfDailyAwakeHeartRateStatisticsForPast100Days];
        if (numberOfDailyAwakeHeartRateStatisticsForPast100Days == [v5 numberOfDailyAwakeHeartRateStatisticsForPast100Days])
        {
          v19 = self->_hasHealthAppDevicesWithHigherAlgorithmVersions == v5[11];
          v65 = v69;
          if (v111 == v69)
          {
LABEL_139:

            v42 = v116;
            v31 = v99;
            ongoingCycleFactors2 = v66;
            equalCopy = v71;
            if (v78 == lastMenstrualFlowDayIndex2)
            {
              goto LABEL_140;
            }

            goto LABEL_114;
          }

          goto LABEL_122;
        }
      }

      v65 = v69;
      if (v111 == v69)
      {
        v19 = 0;
        goto LABEL_139;
      }

      ongoingCycleFactors2 = v66;
      equalCopy = v71;
      lastMenstrualFlowDayIndex = v78;
LABEL_113:

      v19 = 0;
      v30 = lastMenstrualFlowDayIndex == lastMenstrualFlowDayIndex2;
      v42 = v116;
      v31 = v99;
      if (v30)
      {
        goto LABEL_140;
      }

LABEL_114:

      if (v86 != lastLoggedDayIndex2)
      {
LABEL_115:

        if (v88 != recentBasalBodyTemperature2)
        {
LABEL_116:

          if (v98 != deviations2)
          {
LABEL_117:

            if (v101 != cycles2)
            {
LABEL_118:

              v37 = v102;
              if (v42 == v117)
              {
LABEL_67:

                v43 = v115;
                if (menstruationProjections != menstruationProjections2)
                {
LABEL_68:

                  if (v43)
                  {
LABEL_69:
                  }

LABEL_70:

LABEL_71:
                  if (statistics != statistics2)
                  {

                    goto LABEL_73;
                  }

LABEL_74:

                  goto LABEL_75;
                }

                goto LABEL_76;
              }

              goto LABEL_43;
            }

            goto LABEL_153;
          }

LABEL_150:

          if (v101 != cycles2)
          {
LABEL_151:

            if (!v96)
            {
LABEL_153:

LABEL_36:
              if (v42 != v117)
              {
                goto LABEL_37;
              }

              goto LABEL_65;
            }

LABEL_152:

            goto LABEL_153;
          }

          goto LABEL_154;
        }

LABEL_147:

        if (v98 != deviations2)
        {
LABEL_148:

          if (!v92)
          {
            goto LABEL_150;
          }

          goto LABEL_149;
        }

        goto LABEL_156;
      }

      goto LABEL_144;
    }

    v19 = 0;
  }

LABEL_75:

  return v19;
}

- (unint64_t)hash
{
  statistics = [(HKMCAnalysis *)self statistics];
  v3 = [statistics hash];
  menstruationProjections = [(HKMCAnalysis *)self menstruationProjections];
  v4 = [menstruationProjections hash] ^ v3;
  fertileWindowProjections = [(HKMCAnalysis *)self fertileWindowProjections];
  v5 = v4 ^ [fertileWindowProjections hash] ^ self->_menstruationProjectionsEnabled;
  fertileWindowProjectionsEnabled = self->_fertileWindowProjectionsEnabled;
  cycles = [(HKMCAnalysis *)self cycles];
  v8 = v5 ^ fertileWindowProjectionsEnabled ^ [cycles hash];
  deviations = [(HKMCAnalysis *)self deviations];
  v10 = [deviations hash];
  v11 = v10 ^ [(HKMCAnalysis *)self recentSymptoms];
  recentBasalBodyTemperature = [(HKMCAnalysis *)self recentBasalBodyTemperature];
  v13 = v11 ^ [recentBasalBodyTemperature hash];
  lastLoggedDayIndex = [(HKMCAnalysis *)self lastLoggedDayIndex];
  v15 = v13 ^ [lastLoggedDayIndex hash];
  lastMenstrualFlowDayIndex = [(HKMCAnalysis *)self lastMenstrualFlowDayIndex];
  v17 = v8 ^ v15 ^ [lastMenstrualFlowDayIndex hash];
  isPeriodLogLate = [(HKMCAnalysis *)self isPeriodLogLate];
  ongoingCycleFactors = [(HKMCAnalysis *)self ongoingCycleFactors];
  v20 = isPeriodLogLate ^ [ongoingCycleFactors hash];
  latestSampleInfo = [(HKMCAnalysis *)self latestSampleInfo];
  v22 = v20 ^ [latestSampleInfo hash];
  v23 = v22 ^ [(HKMCAnalysis *)self numberOfDailySleepHeartRateStatisticsForPast100Days];
  v24 = v17 ^ v23 ^ [(HKMCAnalysis *)self numberOfDailyAwakeHeartRateStatisticsForPast100Days];
  hasHealthAppDevicesWithHigherAlgorithmVersions = self->_hasHealthAppDevicesWithHigherAlgorithmVersions;

  return v24 ^ hasHealthAppDevicesWithHigherAlgorithmVersions;
}

@end