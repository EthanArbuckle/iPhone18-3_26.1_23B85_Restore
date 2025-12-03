@interface HDDemoDataAudioExposureSampleGenerator
- (HDDemoDataAudioExposureSampleGenerator)init;
- (HDDemoDataAudioExposureSampleGenerator)initWithCoder:(id)coder;
- (id)_headphoneAudioExposureMetadata;
- (id)_headphoneProvenanceWithPerson:(void *)person;
- (id)_makeNormallyDistributedAudioExposureLevelsWithCount:(unint64_t)count audioLevelType:(uint64_t)type loudData:(char)data;
- (id)_makeQuantitySampleWithType:(void *)type value:(void *)value unit:(void *)unit startDate:(void *)date endDate:(void *)endDate metadata:(void *)metadata;
- (void)encodeWithCoder:(id)coder;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
@end

@implementation HDDemoDataAudioExposureSampleGenerator

- (HDDemoDataAudioExposureSampleGenerator)init
{
  v7.receiver = self;
  v7.super_class = HDDemoDataAudioExposureSampleGenerator;
  v2 = [(HDDemoDataBaseSampleGenerator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_nextEnvironmentalAudioExposureSampleTime = 0.0;
    v2->_didGenerateEnvironmentalAudioExposureSamples = 0;
    v2->_nextHeadphoneAudioExposureSampleTime = 0.0;
    v2->_didGenerateHeadphoneAudioExposureSamples = 0;
    lastHeadphoneSampleEndDate = v2->_lastHeadphoneSampleEndDate;
    v2->_lastHeadphoneSampleEndDate = 0;

    lastEnvironmentalSampleEndDate = v3->_lastEnvironmentalSampleEndDate;
    v3->_lastEnvironmentalSampleEndDate = 0;
  }

  return v3;
}

- (HDDemoDataAudioExposureSampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HDDemoDataAudioExposureSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"NextEnvironmentalAudioExposureSampleTimeKey"];
    v5->_nextEnvironmentalAudioExposureSampleTime = v6;
    v5->_didGenerateEnvironmentalAudioExposureSamples = [coderCopy decodeBoolForKey:@"DidGenerateEnvironmentalAudioExposureSamplesKey"];
    [coderCopy decodeDoubleForKey:@"NextHeadphoneAudioExposureSampleTimeKey"];
    v5->_nextHeadphoneAudioExposureSampleTime = v7;
    v5->_didGenerateHeadphoneAudioExposureSamples = [coderCopy decodeBoolForKey:@"DidGenerateHeadphoneAudioExposureSamplesKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastEnvironmentalSampleEndDateKey"];
    lastEnvironmentalSampleEndDate = v5->_lastEnvironmentalSampleEndDate;
    v5->_lastEnvironmentalSampleEndDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastHeadphoneSampleEndDateKey"];
    lastHeadphoneSampleEndDate = v5->_lastHeadphoneSampleEndDate;
    v5->_lastHeadphoneSampleEndDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = HDDemoDataAudioExposureSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v6 encodeWithCoder:coderCopy];
  if (self)
  {
    [coderCopy encodeDouble:@"NextEnvironmentalAudioExposureSampleTimeKey" forKey:self->_nextEnvironmentalAudioExposureSampleTime];
    [coderCopy encodeBool:self->_didGenerateEnvironmentalAudioExposureSamples forKey:@"DidGenerateEnvironmentalAudioExposureSamplesKey"];
    [coderCopy encodeDouble:@"NextHeadphoneAudioExposureSampleTimeKey" forKey:self->_nextHeadphoneAudioExposureSampleTime];
    [coderCopy encodeBool:self->_didGenerateHeadphoneAudioExposureSamples forKey:@"DidGenerateHeadphoneAudioExposureSamplesKey"];
    [coderCopy encodeObject:self->_lastHeadphoneSampleEndDate forKey:@"LastHeadphoneSampleEndDateKey"];
    lastEnvironmentalSampleEndDate = self->_lastEnvironmentalSampleEndDate;
  }

  else
  {
    [coderCopy encodeDouble:@"NextEnvironmentalAudioExposureSampleTimeKey" forKey:0.0];
    [coderCopy encodeBool:0 forKey:@"DidGenerateEnvironmentalAudioExposureSamplesKey"];
    [coderCopy encodeDouble:@"NextHeadphoneAudioExposureSampleTimeKey" forKey:0.0];
    [coderCopy encodeBool:0 forKey:@"DidGenerateHeadphoneAudioExposureSamplesKey"];
    [coderCopy encodeObject:0 forKey:@"LastHeadphoneSampleEndDateKey"];
    lastEnvironmentalSampleEndDate = 0;
  }

  [coderCopy encodeObject:lastEnvironmentalSampleEndDate forKey:@"LastEnvironmentalSampleEndDateKey"];
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  selfCopy = self;
  v201 = *MEMORY[0x277D85DE8];
  v187.receiver = self;
  v187.super_class = HDDemoDataAudioExposureSampleGenerator;
  collectionCopy = collection;
  dateCopy = date;
  personCopy = person;
  [(HDDemoDataBaseSampleGenerator *)&v187 generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:collectionCopy currentDate:toTime objectCollection:toTime];
  v14 = personCopy;
  v152 = dateCopy;
  v159 = collectionCopy;
  if (!selfCopy)
  {

    v15 = v152;
    v142 = v14;
    v143 = v152;
    v144 = v159;
    goto LABEL_70;
  }

  v158 = selfCopy;
  if (selfCopy->_nextEnvironmentalAudioExposureSampleTime > toTime)
  {
    selfCopy->_didGenerateEnvironmentalAudioExposureSamples = 0;
    v15 = v152;
    goto LABEL_30;
  }

  v15 = v152;
  if (selfCopy->_lastEnvironmentalSampleEndDate)
  {
    decibelAWeightedSoundPressureLevelUnit = [MEMORY[0x277CCDAB0] decibelAWeightedSoundPressureLevelUnit];
    v17 = selfCopy->_lastEnvironmentalSampleEndDate;
    v18 = v152;
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v20 = [currentCalendar component:32 fromDate:v18];

    if (v20 >= 22)
    {
      currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
      v22 = [currentCalendar2 dateBySettingHour:22 minute:0 second:0 ofDate:v18 options:2];

      v18 = v22;
    }

    [v18 timeIntervalSinceDate:v17];
    if (v23 >= 120)
    {
      v146 = v18;
      v148 = decibelAWeightedSoundPressureLevelUnit;
      v149 = v14;
      v24 = v23 / 0x78uLL;
      v173 = decibelAWeightedSoundPressureLevelUnit;
      v147 = v17;
      v25 = v17;
      v167 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB58]];
      v170 = [HDDemoDataAudioExposureSampleGenerator _makeNormallyDistributedAudioExposureLevelsWithCount:v24 audioLevelType:1 loudData:0];
      v151 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB60]];
      v169 = [HDDemoDataAudioExposureSampleGenerator _makeNormallyDistributedAudioExposureLevelsWithCount:v24 audioLevelType:2 loudData:0];
      v26 = v25;
      v27 = [(NSDate *)v26 dateByAddingTimeInterval:120.0];
      v166 = v24;
      v175 = [MEMORY[0x277CBEB18] arrayWithCapacity:2 * v24];
      v28 = 0;
      v29 = 0;
      v160 = 0;
      v154 = *MEMORY[0x277CCDFA8];
      v156 = *MEMORY[0x277CCC458];
      v153 = *MEMORY[0x277CCB960];
      v145 = v26;
      while (1)
      {
        context = objc_autoreleasePoolPush();
        v30 = [v170 objectAtIndex:v28];
        v184 = [v169 objectAtIndex:v28];
        [v30 doubleValue];
        if (v31 >= 80.0)
        {
          if (!v29)
          {
            v32 = v26;

            v160 = v32;
          }

          ++v29;
        }

        else
        {
          v29 = 0;
        }

        v178 = [HDDemoDataAudioExposureSampleGenerator _makeQuantitySampleWithType:v167 value:v30 unit:v173 startDate:v26 endDate:v27 metadata:0];
        [v175 addObject:?];
        currentCalendar3 = [MEMORY[0x277CBEA80] currentCalendar];
        if ([currentCalendar3 component:32 fromDate:v26] >= 11)
        {
          currentCalendar4 = [MEMORY[0x277CBEA80] currentCalendar];
          v35 = v30;
          v36 = [currentCalendar4 component:32 fromDate:v27];

          v37 = v36 <= 11;
          v30 = v35;
          if (!v37)
          {
            goto LABEL_19;
          }

          currentCalendar3 = [HDDemoDataAudioExposureSampleGenerator _makeQuantitySampleWithType:v151 value:v184 unit:v173 startDate:v26 endDate:v27 metadata:0];
          [v175 addObject:currentCalendar3];
        }

LABEL_19:
        v38 = [v27 dateByAddingTimeInterval:0.0];

        v39 = [(NSDate *)v38 dateByAddingTimeInterval:120.0];

        if (v29 >= 6)
        {
          v40 = MEMORY[0x277CCD7E8];
          [v30 doubleValue];
          [v40 quantityWithUnit:v173 doubleValue:?];
          v41 = v164 = v30;
          v42 = [MEMORY[0x277CCD7E8] quantityWithUnit:v173 doubleValue:80.0];
          *&buf = v156;
          *(&buf + 1) = v154;
          *v190 = v41;
          v191 = v42;
          v43 = MEMORY[0x277CBEAC0];
          v44 = v42;
          v45 = v41;
          v46 = v38;
          v47 = v160;
          v48 = [v43 dictionaryWithObjects:v190 forKeys:&buf count:2];
          v162 = v39;
          v49 = MEMORY[0x277CCD0B0];
          v50 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:v153];
          v51 = [v49 categorySampleWithType:v50 value:1 startDate:v47 endDate:v46 metadata:v48];

          v30 = v164;
          [v175 addObject:v51];

          v39 = v162;
          v29 = 0;
        }

        objc_autoreleasePoolPop(context);
        ++v28;
        v26 = v38;
        v27 = v39;
        if (v166 == v28)
        {
          v52 = [MEMORY[0x277CBEA60] arrayWithArray:v175];

          if ([v52 count])
          {
            [v159 addObjectsFromWatch:v52];
          }

          lastObject = [v52 lastObject];
          endDate = [lastObject endDate];
          selfCopy = v158;
          lastEnvironmentalSampleEndDate = v158->_lastEnvironmentalSampleEndDate;
          v158->_lastEnvironmentalSampleEndDate = endDate;

          currentCalendar5 = [MEMORY[0x277CBEA80] currentCalendar];
          v57 = [currentCalendar5 dateByAddingUnit:32 value:1 toDate:v158->_lastEnvironmentalSampleEndDate options:2];

          currentCalendar6 = [MEMORY[0x277CBEA80] currentCalendar];
          v59 = [currentCalendar6 dateBySettingHour:22 minute:0 second:0 ofDate:v158->_lastEnvironmentalSampleEndDate options:2];

          if ([v57 hk_isAfterDate:v59])
          {
            v158->_nextEnvironmentalAudioExposureSampleTime = ceil(toTime) + 0.25;
            v60 = v158->_lastEnvironmentalSampleEndDate;
            v158->_lastEnvironmentalSampleEndDate = 0;
          }

          else
          {
            v158->_nextEnvironmentalAudioExposureSampleTime = toTime + 0.0416666667;
          }

          v15 = v152;
          v17 = v147;
          decibelAWeightedSoundPressureLevelUnit = v148;
          v18 = v146;
          v158->_didGenerateEnvironmentalAudioExposureSamples = 1;

          v14 = v149;
          break;
        }
      }
    }
  }

  else
  {
    currentCalendar7 = [MEMORY[0x277CBEA80] currentCalendar];
    v62 = [currentCalendar7 dateBySettingHour:6 minute:0 second:0 ofDate:v152 options:2];
    v63 = selfCopy->_lastEnvironmentalSampleEndDate;
    selfCopy->_lastEnvironmentalSampleEndDate = v62;

    selfCopy->_nextEnvironmentalAudioExposureSampleTime = 0.291666667;
    selfCopy->_didGenerateEnvironmentalAudioExposureSamples = 0;
  }

LABEL_30:

  v64 = v14;
  v65 = v15;
  v66 = v159;
  if (selfCopy->_nextHeadphoneAudioExposureSampleTime > toTime)
  {
LABEL_35:
    selfCopy->_didGenerateHeadphoneAudioExposureSamples = 0;
    goto LABEL_70;
  }

  if (!selfCopy->_lastHeadphoneSampleEndDate)
  {
    currentCalendar8 = [MEMORY[0x277CBEA80] currentCalendar];
    v77 = [currentCalendar8 dateBySettingHour:6 minute:30 second:0 ofDate:v65 options:2];
    lastHeadphoneSampleEndDate = selfCopy->_lastHeadphoneSampleEndDate;
    selfCopy->_lastHeadphoneSampleEndDate = v77;

    selfCopy->_nextHeadphoneAudioExposureSampleTime = 0.3125;
    goto LABEL_35;
  }

  v150 = v14;
  v67 = *MEMORY[0x277CCCB88];
  v68 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB88]];
  decibelAWeightedSoundPressureLevelUnit2 = [MEMORY[0x277CCDAB0] decibelAWeightedSoundPressureLevelUnit];
  v168 = selfCopy->_lastHeadphoneSampleEndDate;
  v70 = v65;
  v71 = 0x277CBE000uLL;
  currentCalendar9 = [MEMORY[0x277CBEA80] currentCalendar];
  v73 = [currentCalendar9 component:32 fromDate:v70];

  if (v73 < 23)
  {
    v75 = v70;
  }

  else
  {
    currentCalendar10 = [MEMORY[0x277CBEA80] currentCalendar];
    v75 = [currentCalendar10 dateBySettingHour:22 minute:0 second:0 ofDate:v70 options:2];
  }

  createHighFidelityData = [v64 createHighFidelityData];
  v161 = v75;
  [v75 timeIntervalSinceDate:v168];
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  configuration = [demoDataGenerator configuration];
  shouldGenerateLoudHeadphoneData = [configuration shouldGenerateLoudHeadphoneData];
  v163 = decibelAWeightedSoundPressureLevelUnit2;
  v165 = v68;
  if (createHighFidelityData)
  {
    v83 = [HDDemoDataAudioExposureSampleGenerator _makeNormallyDistributedAudioExposureLevelsWithCount:0 audioLevelType:shouldGenerateLoudHeadphoneData loudData:?];

    v84 = v68;
    v85 = v83;
    v86 = decibelAWeightedSoundPressureLevelUnit2;
    v87 = v168;
    v88 = v64;
    if ([v85 count])
    {
      v89 = MEMORY[0x277CCD7E8];
      [v85 objectAtIndexedSubscript:0];
      v91 = v90 = v86;
      [v91 doubleValue];
      contexta = v90;
      v92 = [v89 quantityWithUnit:v90 doubleValue:?];

      v179 = v92;
      v185 = [MEMORY[0x277CCD800] _unfrozenQuantitySampleWithQuantityType:v84 quantity:v92 startDate:v87 device:0];
      identifier = [v84 identifier];
      LODWORD(v91) = [identifier isEqualToString:v67];

      if (v91)
      {
        _headphoneAudioExposureMetadata = [HDDemoDataAudioExposureSampleGenerator _headphoneAudioExposureMetadata];
        [v185 _setMetadata:_headphoneAudioExposureMetadata];
      }

      demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
      profile = [demoDataGenerator2 profile];
      dataManager = [profile dataManager];

      v98 = [(HDDemoDataAudioExposureSampleGenerator *)selfCopy _headphoneProvenanceWithPerson:v88];
      if (v98)
      {
        demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
        profile2 = [demoDataGenerator3 profile];
        [profile2 database];
        v102 = v101 = v85;
        v188 = 0;
        *v190 = MEMORY[0x277D85DD0];
        v191 = 3221225472;
        v192 = __171__HDDemoDataAudioExposureSampleGenerator__makeQuantitySeriesSamplesWithType_rawSampleValues_sampleUnit_initialSampleDate_sampleDuration_distanceBetweenSamples_demoPerson___block_invoke;
        v193 = &unk_278614558;
        v194 = v87;
        v199 = 0x4008000000000000;
        v176 = dataManager;
        v195 = dataManager;
        v103 = v185;
        v196 = v103;
        v197 = v98;
        v171 = v101;
        v198 = v101;
        v200 = 0;
        LOBYTE(v101) = [(HDHealthEntity *)HDDataEntity performWriteTransactionWithHealthDatabase:v102 error:&v188 block:v190];
        v104 = v188;

        if ((v101 & 1) == 0)
        {
          _HKInitializeLogging();
          v105 = *MEMORY[0x277CCC2B8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v104;
            _os_log_error_impl(&dword_228986000, v105, OS_LOG_TYPE_ERROR, "Failed to generate audio series: %{public}@", &buf, 0xCu);
          }
        }

        *&buf = v103;
        v106 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:1];

        selfCopy = v158;
        v71 = 0x277CBE000;
        v85 = v171;
        v86 = contexta;
        dataManager = v176;
      }

      else
      {
        _HKInitializeLogging();
        v129 = *MEMORY[0x277CCC2B8];
        v86 = contexta;
        if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
        {
          *v190 = 0;
          _os_log_error_impl(&dword_228986000, v129, OS_LOG_TYPE_ERROR, "Failed to get demo data provenance; skipping sample insert.", v190, 2u);
        }

        v106 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v106 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v107 = [HDDemoDataAudioExposureSampleGenerator _makeNormallyDistributedAudioExposureLevelsWithCount:0 audioLevelType:shouldGenerateLoudHeadphoneData loudData:?];

    contextb = v68;
    v85 = v107;
    v180 = decibelAWeightedSoundPressureLevelUnit2;
    v108 = v168;
    v109 = v64;
    v110 = v108;
    v111 = [(NSDate *)v110 dateByAddingTimeInterval:120.0];
    demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
    profile3 = [demoDataGenerator4 profile];
    dataManager2 = [profile3 dataManager];

    v174 = [(HDDemoDataAudioExposureSampleGenerator *)selfCopy _headphoneProvenanceWithPerson:v109];
    if (v174)
    {
      v157 = v109;
      [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v85, "count")}];
      v115 = v114 = v110;
      v155 = v114;
      v172 = v85;
      while (1)
      {
        v116 = [v115 count];
        if (v116 >= [v85 count])
        {
          break;
        }

        v186 = objc_autoreleasePoolPush();
        v117 = [v85 objectAtIndex:{objc_msgSend(v115, "count")}];
        _headphoneAudioExposureMetadata2 = [HDDemoDataAudioExposureSampleGenerator _headphoneAudioExposureMetadata];
        v119 = [HDDemoDataAudioExposureSampleGenerator _makeQuantitySampleWithType:v117 value:v180 unit:v114 startDate:v111 endDate:_headphoneAudioExposureMetadata2 metadata:?];

        [v115 addObject:v119];
        demoDataGenerator5 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
        profile4 = [demoDataGenerator5 profile];
        [profile4 database];
        v123 = v122 = v111;
        v188 = 0;
        *v190 = MEMORY[0x277D85DD0];
        v191 = 3221225472;
        v192 = __166__HDDemoDataAudioExposureSampleGenerator__makeHeadphoneSamplesWithType_rawSampleValues_sampleUnit_initialSampleDate_sampleDuration_distanceBetweenSamples_demoPerson___block_invoke;
        v193 = &unk_278615D40;
        v194 = dataManager2;
        v124 = v119;
        v195 = v124;
        v196 = v174;
        v125 = [(HDHealthEntity *)HDDataEntity performWriteTransactionWithHealthDatabase:v123 error:&v188 block:v190];
        v126 = v188;

        if (v125)
        {
          v127 = [v122 dateByAddingTimeInterval:0.0];

          v111 = [(NSDate *)v127 dateByAddingTimeInterval:120.0];

          v114 = v127;
        }

        else
        {
          _HKInitializeLogging();
          v128 = *MEMORY[0x277CCC2B8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v126;
            _os_log_error_impl(&dword_228986000, v128, OS_LOG_TYPE_ERROR, "Failed to generate audio series: %{public}@", &buf, 0xCu);
          }

          v166 = v115;
          v111 = v122;
        }

        objc_autoreleasePoolPop(v186);
        selfCopy = v158;
        v71 = 0x277CBE000;
        v85 = v172;
        if (!v125)
        {
          goto LABEL_59;
        }
      }

      v166 = [MEMORY[0x277CBEA60] arrayWithArray:v115];
LABEL_59:

      v106 = v166;
      v110 = v155;
      v109 = v157;
    }

    else
    {
      v106 = MEMORY[0x277CBEBF8];
      v114 = v110;
    }
  }

  v130 = v106;
  lastObject2 = [v106 lastObject];
  endDate2 = [lastObject2 endDate];
  v133 = selfCopy->_lastHeadphoneSampleEndDate;
  selfCopy->_lastHeadphoneSampleEndDate = endDate2;

  v134 = arc4random_uniform(5u) + 1;
  currentCalendar11 = [*(v71 + 2688) currentCalendar];
  v136 = [currentCalendar11 dateByAddingUnit:32 value:v134 toDate:selfCopy->_lastHeadphoneSampleEndDate options:2];

  currentCalendar12 = [*(v71 + 2688) currentCalendar];
  v138 = [currentCalendar12 dateBySettingHour:22 minute:0 second:0 ofDate:selfCopy->_lastHeadphoneSampleEndDate options:2];

  if ([v136 hk_isAfterDate:v138])
  {
    v139 = 0;
    v140 = ceil(toTime) + 0.25;
  }

  else
  {
    v140 = (v134 * 3600.0 + 0.0 + 0.0) * 0.0000115740741 + toTime;
    v139 = v136;
  }

  v15 = v152;
  selfCopy->_nextHeadphoneAudioExposureSampleTime = v140;
  objc_storeStrong(&selfCopy->_lastHeadphoneSampleEndDate, v139);
  selfCopy->_didGenerateHeadphoneAudioExposureSamples = 1;

  v14 = v150;
LABEL_70:

  v141 = *MEMORY[0x277D85DE8];
}

- (id)_makeNormallyDistributedAudioExposureLevelsWithCount:(unint64_t)count audioLevelType:(uint64_t)type loudData:(char)data
{
  if (type == 2)
  {
    v5 = 25.0;
    v6 = &__block_literal_global_530_0;
  }

  else
  {
    v5 = 105.0;
    if (type == 1)
    {
      v6 = &__block_literal_global_112;
    }

    else
    {
      v6 = v23;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __119__HDDemoDataAudioExposureSampleGenerator__makeNormallyDistributedAudioExposureLevelsWithCount_audioLevelType_loudData___block_invoke;
      v23[3] = &__block_descriptor_33_e18_B16__0__NSNumber_8l;
      dataCopy = data;
    }
  }

  v8 = [&unk_283CAF0D0 hk_filter:v6];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
  v10 = v8;
  v11 = [v10 objectAtIndex:{arc4random_uniform(objc_msgSend(v10, "count"))}];

  [v11 doubleValue];
  v13 = v12;

  if (!type)
  {
    v14 = arc4random_uniform(0x28u);
    if (!v14)
    {
      v13 = 96.0;
    }

    count >>= v14 == 0;
  }

  while ([v9 count] < count)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = arc4random() / 4294967300.0;
    v17 = arc4random() / 4294967300.0;
    v18 = sqrt(log(v16) * -2.0);
    v19 = v13 + v18 * cos(v17 * 6.28318531) * 4.0;
    if (v19 < 1.0)
    {
      v19 = 1.0;
    }

    if (v19 >= v5)
    {
      v19 = v5;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    [v9 addObject:v20];

    objc_autoreleasePoolPop(v15);
  }

  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v9];

  return v21;
}

BOOL __119__HDDemoDataAudioExposureSampleGenerator__makeNormallyDistributedAudioExposureLevelsWithCount_audioLevelType_loudData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = 82.0;
  }

  else
  {
    v6 = 45.0;
  }

  [v3 doubleValue];
  if (v7 >= v6)
  {
    if (v5)
    {
      v9 = 92.0;
    }

    else
    {
      v9 = 80.0;
    }

    [v4 doubleValue];
    v8 = v10 <= v9;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __119__HDDemoDataAudioExposureSampleGenerator__makeNormallyDistributedAudioExposureLevelsWithCount_audioLevelType_loudData___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 doubleValue];
  if (v3 >= 45.0)
  {
    [v2 doubleValue];
    v4 = v5 <= 83.0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __119__HDDemoDataAudioExposureSampleGenerator__makeNormallyDistributedAudioExposureLevelsWithCount_audioLevelType_loudData___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 doubleValue];
  if (v3 >= 1.0)
  {
    [v2 doubleValue];
    v4 = v5 <= 25.0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_headphoneProvenanceWithPerson:(void *)person
{
  v69[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CCD2E8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [v4 initWithName:@"AirPods" manufacturer:@"Apple model:Inc." hardwareVersion:@"AirPods 1 firmwareVersion:1" softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{0, uUIDString, 0}];

  v69[0] = v7;
  v8 = objc_alloc(MEMORY[0x277CCD2E8]);
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID2 UUIDString];
  v11 = [v8 initWithName:@"EarPods" manufacturer:@"Apple model:Inc." hardwareVersion:@"EarPods 1 firmwareVersion:1" softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{0, uUIDString2, 0}];

  v69[1] = v11;
  v12 = objc_alloc(MEMORY[0x277CCD2E8]);
  uUID3 = [MEMORY[0x277CCAD78] UUID];
  uUIDString3 = [uUID3 UUIDString];
  v15 = [v12 initWithName:@"Powerbeats Pro" manufacturer:@"Beats By Dre" model:@"Powerbeats Pro 1 hardwareVersion:1" firmwareVersion:0 softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{uUIDString3, 0}];

  v69[2] = v15;
  v16 = objc_alloc(MEMORY[0x277CCD2E8]);
  uUID4 = [MEMORY[0x277CCAD78] UUID];
  uUIDString4 = [uUID4 UUIDString];
  v19 = [v16 initWithName:0 manufacturer:@"Foo model:Inc." hardwareVersion:@"FooPods 1 firmwareVersion:1" softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{0, uUIDString4, 0}];

  v69[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];

  v21 = MEMORY[0x277CCACA8];
  firstName = [v3 firstName];

  v23 = [v21 stringWithFormat:@"%@'s Watch", firstName];

  demoDataGenerator = [person demoDataGenerator];
  profile = [demoDataGenerator profile];
  sourceManager = [profile sourceManager];

  if (sourceManager)
  {
    v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AAAAAAAA-AAAA-AAAA-AAAA-AAAAAAAAAAAA"];
    v67 = 0;
    v28 = [sourceManager sourceForAppleDeviceWithUUID:v27 identifier:@"com.apple.health.demo_watch" name:v23 productType:@"Watch1 createIfNecessary:2" error:{1, &v67}];
    v29 = v67;

    if (v28)
    {
      v64 = v28;
      demoDataGenerator2 = [person demoDataGenerator];
      profile2 = [demoDataGenerator2 profile];
      deviceManager = [profile2 deviceManager];
      v33 = [v20 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v20, "count"))}];
      v66 = v29;
      v34 = [deviceManager deviceEntityForDevice:v33 error:&v66];
      v65 = v66;

      if (v34)
      {
        v62 = v23;
        demoDataGenerator3 = [person demoDataGenerator];
        profile3 = [demoDataGenerator3 profile];
        daemon = [profile3 daemon];
        behavior = [daemon behavior];

        demoDataGenerator4 = [person demoDataGenerator];
        profile4 = [demoDataGenerator4 profile];
        currentSyncIdentityPersistentID = [profile4 currentSyncIdentityPersistentID];
        currentOSBuild = [behavior currentOSBuild];
        v40 = currentOSBuild;
        v41 = @"UnknownBuild";
        if (currentOSBuild)
        {
          v41 = currentOSBuild;
        }

        v57 = v41;
        v63 = v20;
        v61 = sourceManager;
        if (behavior)
        {
          [behavior currentOSVersionStruct];
        }

        else
        {
          memset(buf, 0, 24);
        }

        currentOSVersion = [behavior currentOSVersion];
        localTimeZone = [behavior localTimeZone];
        name = [localTimeZone name];
        v28 = v64;
        v49 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v64, "persistentID")}];
        v50 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v34, "persistentID")}];
        v43 = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:0 syncIdentity:currentSyncIdentityPersistentID productType:@"Watch1 systemBuild:2" operatingSystemVersion:v57 sourceVersion:buf timeZoneName:currentOSVersion sourceID:name deviceID:v49 contributorReference:v50, 0];

        v23 = v62;
        v20 = v63;
        v29 = v65;
        sourceManager = v61;
      }

      else
      {
        _HKInitializeLogging();
        v45 = *MEMORY[0x277CCC2B8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v29 = v65;
          *&buf[4] = v65;
          _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "Error creating headphone device entity %{public}@", buf, 0xCu);
          v43 = 0;
        }

        else
        {
          v43 = 0;
          v29 = v65;
        }

        v28 = v64;
        v34 = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v44 = *MEMORY[0x277CCC2B8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v29;
        _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "Error creating watch source entity %{public}@", buf, 0xCu);
      }

      v43 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v42 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      v53 = v42;
      demoDataGenerator5 = [person demoDataGenerator];
      demoDataGenerator6 = [person demoDataGenerator];
      profile5 = [demoDataGenerator6 profile];
      *buf = 138543618;
      *&buf[4] = demoDataGenerator5;
      *&buf[12] = 2114;
      *&buf[14] = profile5;
      _os_log_error_impl(&dword_228986000, v53, OS_LOG_TYPE_ERROR, "No source manager found on generator %{public}@ for profile %{public}@", buf, 0x16u);
    }

    v43 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)_headphoneAudioExposureMetadata
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCDF90];
  v4[0] = @"com.apple.Music,com.apple.mobilesafari";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

- (id)_makeQuantitySampleWithType:(void *)type value:(void *)value unit:(void *)unit startDate:(void *)date endDate:(void *)endDate metadata:(void *)metadata
{
  v11 = MEMORY[0x277CCD7E8];
  metadataCopy = metadata;
  endDateCopy = endDate;
  dateCopy = date;
  unitCopy = unit;
  typeCopy = type;
  [value doubleValue];
  v17 = [v11 quantityWithUnit:unitCopy doubleValue:?];

  v18 = [MEMORY[0x277CCD800] quantitySampleWithType:typeCopy quantity:v17 startDate:dateCopy endDate:endDateCopy];

  [v18 _setMetadata:metadataCopy];

  return v18;
}

uint64_t __166__HDDemoDataAudioExposureSampleGenerator__makeHeadphoneSamplesWithType_rawSampleValues_sampleUnit_initialSampleDate_sampleDuration_distanceBetweenSamples_demoPerson___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v14[0] = *(a1 + 40);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v7 = [*(a1 + 48) sourceID];
  v8 = [(HDSQLiteEntity *)HDSourceEntity entityWithPersistentID:v7];
  v9 = [*(a1 + 48) deviceID];
  v10 = [(HDSQLiteEntity *)HDDeviceEntity entityWithPersistentID:v9];
  v11 = [v5 insertDataObjects:v6 sourceEntity:v8 deviceEntity:v10 sourceVersion:0 creationDate:a3 error:CFAbsoluteTimeGetCurrent()];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL __171__HDDemoDataAudioExposureSampleGenerator__makeQuantitySeriesSamplesWithType_rawSampleValues_sampleUnit_initialSampleDate_sampleDuration_distanceBetweenSamples_demoPerson___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v35 = a2;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 32) dateByAddingTimeInterval:*(a1 + 72)];
  v7 = *(a1 + 40);
  v36[0] = *(a1 + 48);
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v9 = [*(a1 + 56) sourceID];
  v10 = [(HDSQLiteEntity *)HDSourceEntity entityWithPersistentID:v9];
  v11 = [*(a1 + 56) deviceID];
  v12 = [(HDSQLiteEntity *)HDDeviceEntity entityWithPersistentID:v11];
  LODWORD(v7) = [v7 insertDataObjects:v8 sourceEntity:v10 deviceEntity:v12 sourceVersion:0 creationDate:a3 error:CFAbsoluteTimeGetCurrent()];

  if (v7)
  {
    v33 = a3;
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([*(a1 + 64) count])
    {
      v14 = 0;
      v15 = v5;
      v16 = v6;
      do
      {
        v17 = objc_autoreleasePoolPush();
        v18 = [*(a1 + 64) objectAtIndex:v14];
        v19 = MEMORY[0x277CCD180];
        [v16 timeIntervalSinceReferenceDate];
        v21 = v20;
        [v18 doubleValue];
        *&v22 = *(a1 + 72);
        v24 = [v19 datumWithTimestamp:v21 value:v23 duration:v22];
        [v13 addObject:v24];
        v5 = [v16 dateByAddingTimeInterval:*(a1 + 80)];

        v6 = [v5 dateByAddingTimeInterval:*(a1 + 72)];

        objc_autoreleasePoolPop(v17);
        ++v14;
        v15 = v5;
        v16 = v6;
      }

      while ([*(a1 + 64) count] > v14);
    }

    v25 = [*(a1 + 40) quantitySeriesManager];
    v26 = [v25 insertValues:v13 series:*(a1 + 48) error:v34];

    if (v26)
    {
      v27 = [*(a1 + 40) quantitySeriesManager];
      v28 = [v27 freezeSeries:*(a1 + 48) metadata:0 endDate:v6 error:v34];
      v29 = [v28 status] == 1;
    }

    else
    {
      v29 = 0;
    }

    v30 = v35;
  }

  else
  {
    v29 = 0;
    v30 = v35;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

@end