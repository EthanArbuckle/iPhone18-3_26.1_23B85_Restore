@interface HKMCAnalysis
- (BOOL)isEqual:(id)a3;
- (HKMCAnalysis)initWithCoder:(id)a3;
- (HKMCAnalysis)initWithStatistics:(id)a3 menstruationProjections:(id)a4 fertileWindowProjections:(id)a5 menstruationProjectionsEnabled:(BOOL)a6 fertileWindowProjectionsEnabled:(BOOL)a7 cycles:(id)a8 deviations:(id)a9 recentSymptoms:(unint64_t)a10 recentBasalBodyTemperature:(id)a11 lastLoggedDayIndex:(id)a12 lastMenstrualFlowDayIndex:(id)a13 isPeriodLogLate:(BOOL)a14 ongoingCycleFactors:(id)a15 numberOfDailySleepHeartRateStatisticsForPast100Days:(int64_t)a16 numberOfDailyAwakeHeartRateStatisticsForPast100Days:(int64_t)a17 hasHealthAppDevicesWithHigherAlgorithmVersions:(BOOL)a18;
- (NSString)hk_redactedDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCAnalysis

- (HKMCAnalysis)initWithStatistics:(id)a3 menstruationProjections:(id)a4 fertileWindowProjections:(id)a5 menstruationProjectionsEnabled:(BOOL)a6 fertileWindowProjectionsEnabled:(BOOL)a7 cycles:(id)a8 deviations:(id)a9 recentSymptoms:(unint64_t)a10 recentBasalBodyTemperature:(id)a11 lastLoggedDayIndex:(id)a12 lastMenstrualFlowDayIndex:(id)a13 isPeriodLogLate:(BOOL)a14 ongoingCycleFactors:(id)a15 numberOfDailySleepHeartRateStatisticsForPast100Days:(int64_t)a16 numberOfDailyAwakeHeartRateStatisticsForPast100Days:(int64_t)a17 hasHealthAppDevicesWithHigherAlgorithmVersions:(BOOL)a18
{
  v48 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a8;
  v25 = a9;
  v26 = a11;
  v27 = a12;
  v47 = a13;
  v28 = a15;
  v49.receiver = self;
  v49.super_class = HKMCAnalysis;
  v29 = [(HKMCAnalysis *)&v49 init];
  if (v29)
  {
    v30 = [v48 copy];
    statistics = v29->_statistics;
    v29->_statistics = v30;

    v32 = [v22 copy];
    menstruationProjections = v29->_menstruationProjections;
    v29->_menstruationProjections = v32;

    v34 = [v23 copy];
    fertileWindowProjections = v29->_fertileWindowProjections;
    v29->_fertileWindowProjections = v34;

    v29->_menstruationProjectionsEnabled = a6;
    v29->_fertileWindowProjectionsEnabled = a7;
    v36 = [v24 copy];
    cycles = v29->_cycles;
    v29->_cycles = v36;

    v38 = [v25 copy];
    deviations = v29->_deviations;
    v29->_deviations = v38;

    v29->_recentSymptoms = a10;
    v40 = [v26 copy];
    recentBasalBodyTemperature = v29->_recentBasalBodyTemperature;
    v29->_recentBasalBodyTemperature = v40;

    objc_storeStrong(&v29->_lastLoggedDayIndex, a12);
    objc_storeStrong(&v29->_lastMenstrualFlowDayIndex, a13);
    v29->_isPeriodLogLate = a14;
    v42 = [v28 copy];
    ongoingCycleFactors = v29->_ongoingCycleFactors;
    v29->_ongoingCycleFactors = v42;

    v29->_numberOfDailySleepHeartRateStatisticsForPast100Days = a16;
    v29->_numberOfDailyAwakeHeartRateStatisticsForPast100Days = a17;
    v29->_hasHealthAppDevicesWithHigherAlgorithmVersions = a18;
  }

  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  statistics = self->_statistics;
  v5 = a3;
  [v5 encodeObject:statistics forKey:@"Statistics"];
  [v5 encodeObject:self->_menstruationProjections forKey:@"MenstruationProjections"];
  [v5 encodeObject:self->_fertileWindowProjections forKey:@"FertileWindowProjections"];
  [v5 encodeBool:self->_menstruationProjectionsEnabled forKey:@"MenstruationProjectionsEnabled"];
  [v5 encodeBool:self->_fertileWindowProjectionsEnabled forKey:@"FertileWindowProjectionsEnabled"];
  [v5 encodeObject:self->_cycles forKey:@"Cycles"];
  [v5 encodeObject:self->_deviations forKey:@"Deviations"];
  [v5 encodeInteger:self->_recentSymptoms forKey:@"RecentSymptoms"];
  [v5 encodeObject:self->_recentBasalBodyTemperature forKey:@"RecentBasalBodyTemperature"];
  [v5 encodeObject:self->_lastLoggedDayIndex forKey:@"LastLoggedDayIndex"];
  [v5 encodeObject:self->_lastMenstrualFlowDayIndex forKey:@"LastMenstrualFlowDayIndex"];
  [v5 encodeBool:self->_isPeriodLogLate forKey:@"IsPeriodLogLate"];
  [v5 encodeObject:self->_ongoingCycleFactors forKey:@"OngoingCycleFactors"];
  [v5 encodeInteger:self->_numberOfDailySleepHeartRateStatisticsForPast100Days forKey:@"NumberOfDailySleepHeartRateStatisticsForPast100Days"];
  [v5 encodeInteger:self->_numberOfDailyAwakeHeartRateStatisticsForPast100Days forKey:@"NumberOfDailyAwakeHeartRateStatisticsForPast100Days"];
  [v5 encodeBool:self->_hasHealthAppDevicesWithHigherAlgorithmVersions forKey:@"HasHealthAppDevicesWithHigherAlgorithmVersions"];
  [v5 encodeObject:self->_latestSampleInfo forKey:@"LatestSampleInfo"];
}

- (HKMCAnalysis)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = HKMCAnalysis;
  v5 = [(HKMCAnalysis *)&v43 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Statistics"];
    statistics = v5->_statistics;
    v5->_statistics = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"MenstruationProjections"];
    menstruationProjections = v5->_menstruationProjections;
    v5->_menstruationProjections = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"FertileWindowProjections"];
    fertileWindowProjections = v5->_fertileWindowProjections;
    v5->_fertileWindowProjections = v16;

    v5->_menstruationProjectionsEnabled = [v4 decodeBoolForKey:@"MenstruationProjectionsEnabled"];
    v5->_fertileWindowProjectionsEnabled = [v4 decodeBoolForKey:@"FertileWindowProjectionsEnabled"];
    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"Cycles"];
    cycles = v5->_cycles;
    v5->_cycles = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"Deviations"];
    deviations = v5->_deviations;
    v5->_deviations = v26;

    v5->_recentSymptoms = [v4 decodeIntegerForKey:@"RecentSymptoms"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecentBasalBodyTemperature"];
    recentBasalBodyTemperature = v5->_recentBasalBodyTemperature;
    v5->_recentBasalBodyTemperature = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastLoggedDayIndex"];
    lastLoggedDayIndex = v5->_lastLoggedDayIndex;
    v5->_lastLoggedDayIndex = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastMenstrualFlowDayIndex"];
    lastMenstrualFlowDayIndex = v5->_lastMenstrualFlowDayIndex;
    v5->_lastMenstrualFlowDayIndex = v32;

    v5->_isPeriodLogLate = [v4 decodeBoolForKey:@"IsPeriodLogLate"];
    v34 = MEMORY[0x277CBEB98];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"OngoingCycleFactors"];
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

    v5->_numberOfDailySleepHeartRateStatisticsForPast100Days = [v4 decodeIntegerForKey:@"NumberOfDailySleepHeartRateStatisticsForPast100Days"];
    v5->_numberOfDailyAwakeHeartRateStatisticsForPast100Days = [v4 decodeIntegerForKey:@"NumberOfDailyAwakeHeartRateStatisticsForPast100Days"];
    v5->_hasHealthAppDevicesWithHigherAlgorithmVersions = [v4 decodeBoolForKey:@"HasHealthAppDevicesWithHigherAlgorithmVersions"];
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LatestSampleInfo"];
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
  v5 = [(HKMCRecentBasalBodyTemperature *)self->_recentBasalBodyTemperature shortDescription];
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
  v14 = [v19 stringWithFormat:@"<%@:%p statistics:%@ symptoms:%@ bbt:%@ last log:%@ last flow:%@ menses:%@ fertility:%@ cycles:%@ factors:%@ deviations:%@ mismatch:%@ sample:%@>", v18, self, statistics, v4, v5, lastLoggedDayIndex, lastMenstrualFlowDayIndex, v16, fertileWindowProjections, cycles, ongoingCycleFactors, deviations, v13, self->_latestSampleInfo];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKMCAnalysis *)self ongoingCycleFactors];
      v7 = [v6 count];
      v8 = [v5 ongoingCycleFactors];
      v9 = [v8 count];

      if (v7 == v9)
      {
        v10 = [(HKMCAnalysis *)self ongoingCycleFactors];
        v11 = [v10 count];

        if (v11)
        {
          v12 = 0;
          do
          {
            v8 = [(HKMCAnalysis *)self ongoingCycleFactors];
            v13 = [v8 objectAtIndexedSubscript:v12];
            v14 = [v5 ongoingCycleFactors];
            v15 = [v14 objectAtIndexedSubscript:v12];
            v16 = [v13 isEquivalent:v15];

            if ((v16 & 1) == 0)
            {
              break;
            }

            ++v12;
            v8 = [(HKMCAnalysis *)self ongoingCycleFactors];
            v17 = [v8 count];
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

      v20 = [(HKMCAnalysis *)self statistics];
      v21 = [v5 statistics];
      if (v20 != v21)
      {
        v8 = [v5 statistics];
        if (!v8)
        {
          v19 = 0;
LABEL_73:

          goto LABEL_74;
        }

        v22 = [(HKMCAnalysis *)self statistics];
        v23 = [v5 statistics];
        if (![v22 isEqual:v23])
        {
          v19 = 0;
LABEL_45:

          goto LABEL_73;
        }

        v113 = v23;
        v114 = v22;
      }

      v24 = [(HKMCAnalysis *)self menstruationProjections];
      v25 = [v5 menstruationProjections];
      if (v24 == v25)
      {
        v115 = 0;
      }

      else
      {
        v26 = [v5 menstruationProjections];
        if (!v26)
        {

          v19 = 0;
          goto LABEL_71;
        }

        v107 = v18;
        v115 = v24 != v25;
        v106 = v26;
        v27 = [(HKMCAnalysis *)self menstruationProjections];
        v28 = [v5 menstruationProjections];
        v112 = v27;
        if (![v27 isEqual:v28])
        {
          v19 = 0;
LABEL_44:

          v23 = v113;
          v22 = v114;
          if (v20 == v21)
          {
            goto LABEL_74;
          }

          goto LABEL_45;
        }

        v105 = v28;
        v18 = v107;
      }

      v29 = [(HKMCAnalysis *)self fertileWindowProjections];
      [v5 fertileWindowProjections];
      v117 = v116 = v29;
      v30 = v29 == v117;
      v31 = v29 != v117;
      if (!v30)
      {
        v32 = [v5 fertileWindowProjections];
        if (!v32)
        {

          v19 = 0;
          if (v24 != v25)
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
        v103 = v32;
        v34 = [(HKMCAnalysis *)self fertileWindowProjections];
        v35 = [v5 fertileWindowProjections];
        v104 = v34;
        v36 = v34;
        v37 = v35;
        if (![v36 isEqual:v35])
        {
          v19 = 0;
          v42 = v116;
LABEL_43:

          v28 = v105;
          if (v24 == v25)
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
      v38 = [(HKMCAnalysis *)self cycles];
      v100 = [v5 cycles];
      v101 = v38;
      v30 = v38 == v100;
      v39 = v38 != v100;
      if (v30)
      {
        v96 = v39;
      }

      else
      {
        v40 = [v5 cycles];
        if (!v40)
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
        v93 = v40;
        v41 = [(HKMCAnalysis *)self cycles];
        v94 = [v5 cycles];
        v95 = v41;
        if (![v41 isEqual:?])
        {
          v19 = 0;
          v42 = v116;
          goto LABEL_118;
        }
      }

      v44 = [(HKMCAnalysis *)self deviations];
      v97 = [v5 deviations];
      v98 = v44;
      v30 = v44 == v97;
      v92 = v44 != v97;
      v31 = v99;
      if (!v30)
      {
        v45 = [v5 deviations];
        if (!v45)
        {

          v19 = 0;
          v42 = v116;
          if (v101 != v100)
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

        v109 = v21;
        v46 = v20;
        v47 = v18;
        v89 = v45;
        v48 = [(HKMCAnalysis *)self deviations];
        v90 = [v5 deviations];
        v91 = v48;
        if (![v48 isEqual:?])
        {
          v19 = 0;
          v42 = v116;
          v20 = v46;
          v21 = v109;
          goto LABEL_117;
        }

        v18 = v47;
        v20 = v46;
        v21 = v109;
      }

      v49 = [(HKMCAnalysis *)self recentSymptoms];
      if (v49 != [v5 recentSymptoms])
      {
        v19 = 0;
        v42 = v116;
        v31 = v99;
        if (v98 != v97)
        {
          goto LABEL_148;
        }

        goto LABEL_156;
      }

      v110 = v18;
      v50 = [(HKMCAnalysis *)self recentBasalBodyTemperature];
      v87 = [v5 recentBasalBodyTemperature];
      v88 = v50;
      v30 = v50 == v87;
      v51 = v50 != v87;
      v31 = v99;
      if (v30)
      {
        v84 = v51;
      }

      else
      {
        v52 = [v5 recentBasalBodyTemperature];
        if (!v52)
        {

          v19 = 0;
          v42 = v116;
          if (v98 != v97)
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
        v81 = v52;
        v53 = [(HKMCAnalysis *)self recentBasalBodyTemperature];
        v82 = [v5 recentBasalBodyTemperature];
        v83 = v53;
        if (![v53 isEqual:?])
        {
          v19 = 0;
          v42 = v116;
          goto LABEL_116;
        }
      }

      v55 = [(HKMCAnalysis *)self lastLoggedDayIndex];
      v85 = [v5 lastLoggedDayIndex];
      v86 = v55;
      v30 = v55 == v85;
      v56 = v55 != v85;
      if (v30)
      {
        v79 = v56;
      }

      else
      {
        v57 = [v5 lastLoggedDayIndex];
        if (!v57)
        {

          v19 = 0;
          v42 = v116;
          if (v88 != v87)
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
        v75 = v57;
        v58 = [(HKMCAnalysis *)self lastLoggedDayIndex];
        v76 = [v5 lastLoggedDayIndex];
        v77 = v58;
        if (![v58 isEqual:?])
        {
          v19 = 0;
          v42 = v116;
          goto LABEL_115;
        }
      }

      v59 = [(HKMCAnalysis *)self lastMenstrualFlowDayIndex];
      v80 = [v5 lastMenstrualFlowDayIndex];
      v78 = v59;
      if (v59 != v80)
      {
        v60 = [v5 lastMenstrualFlowDayIndex];
        if (!v60)
        {

          v19 = 0;
          v42 = v116;
          if (v86 != v85)
          {
            LOBYTE(v79) = 1;
            goto LABEL_142;
          }

          v79 = 0;
          goto LABEL_160;
        }

        v74 = v60;
        v61 = [(HKMCAnalysis *)self lastMenstrualFlowDayIndex];
        v72 = [v5 lastMenstrualFlowDayIndex];
        v73 = v61;
        if (![v61 isEqual:?])
        {
          v19 = 0;
          v42 = v116;
          goto LABEL_114;
        }

        v59 = v78;
      }

      v62 = [(HKMCAnalysis *)self isPeriodLogLate];
      if ((v62 ^ [v5 isPeriodLogLate] | v110))
      {
        v30 = v59 == v80;
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
        if (v86 != v85)
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

        if (v88 != v87)
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

      v63 = [(HKMCAnalysis *)self latestSampleInfo];
      v64 = [v5 latestSampleInfo];
      v111 = v63;
      v30 = v63 == v64;
      v65 = v64;
      if (v30)
      {
        v71 = v4;
        v66 = v8;
        v67 = [(HKMCAnalysis *)self numberOfDailySleepHeartRateStatisticsForPast100Days];
      }

      else
      {
        v70 = [v5 latestSampleInfo];
        if (!v70)
        {
          goto LABEL_113;
        }

        v71 = v4;
        v66 = v8;
        v59 = [(HKMCAnalysis *)self latestSampleInfo];
        v8 = [v5 latestSampleInfo];
        if (![v59 isEqual:?])
        {
          v19 = 0;
LABEL_122:

          if (v78 != v80)
          {
          }

          if (v86 != v85)
          {
          }

          if (v88 != v87)
          {
          }

          if (v98 != v97)
          {
          }

          if (v101 != v100)
          {
          }

          if (v116 != v117)
          {
          }

          if (v24 != v25)
          {
          }

          v23 = v113;
          v22 = v114;
          v8 = v66;
          v4 = v71;
          if (v20 == v21)
          {
            goto LABEL_74;
          }

          goto LABEL_45;
        }

        v67 = [(HKMCAnalysis *)self numberOfDailySleepHeartRateStatisticsForPast100Days];
      }

      if (v67 == [v5 numberOfDailySleepHeartRateStatisticsForPast100Days])
      {
        v68 = [(HKMCAnalysis *)self numberOfDailyAwakeHeartRateStatisticsForPast100Days];
        if (v68 == [v5 numberOfDailyAwakeHeartRateStatisticsForPast100Days])
        {
          v19 = self->_hasHealthAppDevicesWithHigherAlgorithmVersions == v5[11];
          v65 = v69;
          if (v111 == v69)
          {
LABEL_139:

            v42 = v116;
            v31 = v99;
            v8 = v66;
            v4 = v71;
            if (v78 == v80)
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

      v8 = v66;
      v4 = v71;
      v59 = v78;
LABEL_113:

      v19 = 0;
      v30 = v59 == v80;
      v42 = v116;
      v31 = v99;
      if (v30)
      {
        goto LABEL_140;
      }

LABEL_114:

      if (v86 != v85)
      {
LABEL_115:

        if (v88 != v87)
        {
LABEL_116:

          if (v98 != v97)
          {
LABEL_117:

            if (v101 != v100)
            {
LABEL_118:

              v37 = v102;
              if (v42 == v117)
              {
LABEL_67:

                v43 = v115;
                if (v24 != v25)
                {
LABEL_68:

                  if (v43)
                  {
LABEL_69:
                  }

LABEL_70:

LABEL_71:
                  if (v20 != v21)
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

          if (v101 != v100)
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

        if (v98 != v97)
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
  v29 = [(HKMCAnalysis *)self statistics];
  v3 = [v29 hash];
  v28 = [(HKMCAnalysis *)self menstruationProjections];
  v4 = [v28 hash] ^ v3;
  v27 = [(HKMCAnalysis *)self fertileWindowProjections];
  v5 = v4 ^ [v27 hash] ^ self->_menstruationProjectionsEnabled;
  fertileWindowProjectionsEnabled = self->_fertileWindowProjectionsEnabled;
  v7 = [(HKMCAnalysis *)self cycles];
  v8 = v5 ^ fertileWindowProjectionsEnabled ^ [v7 hash];
  v9 = [(HKMCAnalysis *)self deviations];
  v10 = [v9 hash];
  v11 = v10 ^ [(HKMCAnalysis *)self recentSymptoms];
  v12 = [(HKMCAnalysis *)self recentBasalBodyTemperature];
  v13 = v11 ^ [v12 hash];
  v14 = [(HKMCAnalysis *)self lastLoggedDayIndex];
  v15 = v13 ^ [v14 hash];
  v16 = [(HKMCAnalysis *)self lastMenstrualFlowDayIndex];
  v17 = v8 ^ v15 ^ [v16 hash];
  v18 = [(HKMCAnalysis *)self isPeriodLogLate];
  v19 = [(HKMCAnalysis *)self ongoingCycleFactors];
  v20 = v18 ^ [v19 hash];
  v21 = [(HKMCAnalysis *)self latestSampleInfo];
  v22 = v20 ^ [v21 hash];
  v23 = v22 ^ [(HKMCAnalysis *)self numberOfDailySleepHeartRateStatisticsForPast100Days];
  v24 = v17 ^ v23 ^ [(HKMCAnalysis *)self numberOfDailyAwakeHeartRateStatisticsForPast100Days];
  hasHealthAppDevicesWithHigherAlgorithmVersions = self->_hasHealthAppDevicesWithHigherAlgorithmVersions;

  return v24 ^ hasHealthAppDevicesWithHigherAlgorithmVersions;
}

@end