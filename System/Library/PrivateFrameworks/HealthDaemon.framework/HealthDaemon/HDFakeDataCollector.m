@interface HDFakeDataCollector
+ (id)collectedTypes;
- (HDFakeDataCollector)initWithProfile:(id)a3;
- (id)identifierForDataAggregator:(id)a3;
- (int64_t)datumCount;
- (void)_lock_addGenerator:(uint64_t)a1;
- (void)_lock_endFaking;
- (void)_lock_generateThrough:(uint64_t)a1;
- (void)_lock_setupFakeGeneratorForQuantityType:(void *)a3 interval:(void *)a4 time:(double)a5 metadata:(double)a6 quantity:;
- (void)_lock_setupGeneratorsForStartTime:(uint64_t)a1;
- (void)dealloc;
- (void)generateForConfiguration:(id)a3 from:(id)a4 to:(id)a5;
- (void)registerWithAggregators;
- (void)setConfiguration:(id)a3;
- (void)unregisterFromAggregators;
@end

@implementation HDFakeDataCollector

- (HDFakeDataCollector)initWithProfile:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDFakeDataCollector;
  v5 = [(HDFakeDataCollector *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CCD2A0]);
    state = v6->_state;
    v6->_state = v7;

    v9 = HKCreateSerialDispatchQueue();
    generationQueue = v6->_generationQueue;
    v6->_generationQueue = v9;
  }

  return v6;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  [(HDFakeDataCollector *)self _lock_endFaking];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = HDFakeDataCollector;
  [(HDFakeDataCollector *)&v3 dealloc];
}

- (void)_lock_endFaking
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 16));
    v2 = *(a1 + 48);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(a1 + 48);
      *(a1 + 48) = 0;
    }
  }
}

- (void)setConfiguration:(id)a3
{
  v11 = a3;
  os_unfair_lock_lock(&self->_lock);
  configuration = self->_configuration;
  v6 = v11;
  if (configuration != v11)
  {
    if (!v11 || ![(HDFakeDataCollectorConfiguration *)configuration isEqual:v11])
    {
      objc_storeStrong(&self->_configuration, a3);
      Current = CFAbsoluteTimeGetCurrent();
      [(HDFakeDataCollector *)self _lock_setupGeneratorsForStartTime:?];
    }

    v6 = self->_configuration;
  }

  if (v6)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    if (!self->_generationSource)
    {
      v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_generationQueue);
      generationSource = self->_generationSource;
      self->_generationSource = v8;

      dispatch_source_set_timer(self->_generationSource, 0, 0x98968000uLL, 0x98968000uLL);
      objc_initWeak(&location, self);
      v10 = self->_generationSource;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __40__HDFakeDataCollector__lock_beginFaking__block_invoke;
      handler[3] = &unk_278616F38;
      objc_copyWeak(&v13, &location);
      dispatch_source_set_event_handler(v10, handler);
      dispatch_resume(self->_generationSource);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(HDFakeDataCollector *)self _lock_endFaking];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setupGeneratorsForStartTime:(uint64_t)a1
{
  v184 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_30;
  }

  os_unfair_lock_assert_owner((a1 + 16));
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = *(a1 + 56);
  *(a1 + 56) = v4;

  v6 = [*(a1 + 72) activityType];
  v7 = [_HDFakeDataGenerator alloc];
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v127[0] = MEMORY[0x277D85DD0];
  v127[1] = 3221225472;
  v127[2] = __57__HDFakeDataCollector__lock_setupGeneratorsForStartTime___block_invoke;
  v127[3] = &__block_descriptor_40_e56____HDCollectedSensorDatum__32__0__HKQuantityType_8d16d24l;
  v127[4] = v6;
  v9 = [(_HDFakeDataGenerator *)v7 initWithType:v8 interval:v127 startTime:5.0 generator:a2];
  [(HDFakeDataCollector *)a1 _lock_addGenerator:v9];

  os_unfair_lock_assert_owner((a1 + 16));
  v10 = [_HDFakeDataGenerator alloc];
  v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  aBlock = MEMORY[0x277D85DD0];
  v129 = 3221225472;
  v130 = __68__HDFakeDataCollector__lock_setupCalorieGeneratorsForActivity_time___block_invoke;
  v131 = &__block_descriptor_40_e56____HDCollectedSensorDatum__32__0__HKQuantityType_8d16d24l;
  v132 = v6;
  v12 = [(_HDFakeDataGenerator *)v10 initWithType:v11 interval:&aBlock startTime:2.56 generator:a2];
  [(HDFakeDataCollector *)a1 _lock_addGenerator:v12];

  v13 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
  v157 = @"HKFakedData";
  v165 = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v165 forKeys:&v157 count:1];
  v178 = MEMORY[0x277D85DD0];
  v179 = 3221225472;
  v180 = __68__HDFakeDataCollector__lock_setupCalorieGeneratorsForActivity_time___block_invoke_2;
  v181 = &unk_2786216E8;
  v182 = v13;
  v15 = v13;
  [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v15 interval:v14 time:&v178 metadata:2.56 quantity:a2];

  if (v6 > 7)
  {
    if (v6 <= 9)
    {
      v93 = [*(a1 + 72) speed];
      v94 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      [v93 doubleValueForUnit:v94];
      v96 = v95;

      if (v6 == 8)
      {
        v100 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
        v157 = @"HKFakedData";
        v165 = MEMORY[0x277CBEC38];
        v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v165 forKeys:&v157 count:1];
        aBlock = MEMORY[0x277D85DD0];
        v129 = 3221225472;
        v130 = __63__HDFakeDataCollector__lock_setupPaddleSportsGeneratorsAtTime___block_invoke;
        v131 = &unk_2786217B0;
        v132 = v100;
        v133 = v96;
        v102 = v100;
        [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v102 interval:v101 time:&aBlock metadata:3.0 quantity:a2];

        v103 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBF0]];

        v144[0] = @"HKFakedData";
        v149 = MEMORY[0x277CBEC38];
        v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v149 forKeys:v144 count:1];
        v178 = MEMORY[0x277D85DD0];
        v179 = 3221225472;
        v180 = __63__HDFakeDataCollector__lock_setupPaddleSportsGeneratorsAtTime___block_invoke_2;
        v181 = &unk_2786217B0;
        v182 = v103;
        v183 = *&v96;
        v105 = v103;
        [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v105 interval:v104 time:&v178 metadata:3.0 quantity:a2];
      }

      else
      {
        v97 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
        v165 = @"HKFakedData";
        v178 = MEMORY[0x277CBEC38];
        v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v178 forKeys:&v165 count:1];
        aBlock = MEMORY[0x277D85DD0];
        v129 = 3221225472;
        v130 = __64__HDFakeDataCollector__lock_setupSkatingSportsGeneratorsAtTime___block_invoke;
        v131 = &unk_2786217B0;
        v132 = v97;
        v133 = v96;
        v99 = v97;
        [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v99 interval:v98 time:&aBlock metadata:3.0 quantity:a2];
      }
    }

    else
    {
      switch(v6)
      {
        case 10:
          v106 = [*(a1 + 72) speed];
          v107 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
          [v106 doubleValueForUnit:v107];
          v109 = v108;

          v110 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
          v157 = @"HKFakedData";
          v165 = MEMORY[0x277CBEC38];
          v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v165 forKeys:&v157 count:1];
          aBlock = MEMORY[0x277D85DD0];
          v129 = 3221225472;
          v130 = __57__HDFakeDataCollector__lock_setupRowingGeneratorsAtTime___block_invoke;
          v131 = &unk_2786217B0;
          v132 = v110;
          v133 = v109;
          v112 = v110;
          [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v112 interval:v111 time:&aBlock metadata:3.0 quantity:a2];

          v113 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC28]];

          v144[0] = @"HKFakedData";
          v149 = MEMORY[0x277CBEC38];
          v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v149 forKeys:v144 count:1];
          v178 = MEMORY[0x277D85DD0];
          v179 = 3221225472;
          v180 = __57__HDFakeDataCollector__lock_setupRowingGeneratorsAtTime___block_invoke_2;
          v181 = &unk_2786217B0;
          v182 = v113;
          v183 = *&v109;
          v115 = v113;
          [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v115 interval:v114 time:&v178 metadata:3.0 quantity:a2];

          break;
        case 11:
          v116 = [*(a1 + 72) speed];
          v117 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
          [v116 doubleValueForUnit:v117];
          v119 = v118;

          v120 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
          v157 = @"HKFakedData";
          v165 = MEMORY[0x277CBEC38];
          v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v165 forKeys:&v157 count:1];
          aBlock = MEMORY[0x277D85DD0];
          v129 = 3221225472;
          v130 = __69__HDFakeDataCollector__lock_setupCrossCountrySkiingGeneratorsAtTime___block_invoke;
          v131 = &unk_2786217B0;
          v132 = v120;
          v133 = v119;
          v122 = v120;
          [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v122 interval:v121 time:&aBlock metadata:3.0 quantity:a2];

          v123 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9A8]];

          v144[0] = @"HKFakedData";
          v149 = MEMORY[0x277CBEC38];
          v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v149 forKeys:v144 count:1];
          v178 = MEMORY[0x277D85DD0];
          v179 = 3221225472;
          v180 = __69__HDFakeDataCollector__lock_setupCrossCountrySkiingGeneratorsAtTime___block_invoke_2;
          v181 = &unk_2786217B0;
          v182 = v123;
          v183 = *&v119;
          v125 = v123;
          [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v125 interval:v124 time:&v178 metadata:3.0 quantity:a2];

          break;
        case 12:
          v35 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
          v165 = @"HKFakedData";
          v178 = MEMORY[0x277CBEC38];
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v178 forKeys:&v165 count:1];
          aBlock = MEMORY[0x277D85DD0];
          v129 = 3221225472;
          v130 = __65__HDFakeDataCollector__lock_setupDownhillSkiingGeneratorsAtTime___block_invoke;
          v131 = &unk_2786216E8;
          v132 = v35;
          v37 = v35;
          [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v37 interval:v36 time:&aBlock metadata:5.0 quantity:a2];

          break;
      }
    }
  }

  else
  {
    if (v6 <= 3)
    {
      if ((v6 - 1) >= 2)
      {
        if (v6 == 3)
        {
          v16 = [*(a1 + 72) speed];
          v17 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
          [v16 doubleValueForUnit:v17];
          v19 = v18;

          v20 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
          v144[0] = @"HKFakedData";
          v149 = MEMORY[0x277CBEC38];
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v149 forKeys:v144 count:1];
          aBlock = MEMORY[0x277D85DD0];
          v129 = 3221225472;
          v130 = __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke;
          v131 = &unk_2786217B0;
          v132 = v20;
          v133 = v19;
          v22 = v20;
          [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v22 interval:v21 time:&aBlock metadata:2.56 quantity:a2];

          v23 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C8]];

          v134[0] = @"HKFakedData";
          v139[0] = MEMORY[0x277CBEC38];
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v134 count:1];
          v178 = MEMORY[0x277D85DD0];
          v179 = 3221225472;
          v180 = __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke_2;
          v181 = &unk_2786217B0;
          v25 = v23;
          v182 = v25;
          v183 = *&v19;
          [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v25 interval:v24 time:&v178 metadata:2.56 quantity:a2];

          WeakRetained = objc_loadWeakRetained((a1 + 8));
          v27 = [WeakRetained daemon];
          v28 = [v27 behavior];
          v29 = [v28 isAppleWatch];

          if (v29)
          {
            v30 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C0]];

            v171[0] = @"HKFakedData";
            v173[0] = MEMORY[0x277CBEC38];
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v171 count:1];
            v165 = MEMORY[0x277D85DD0];
            v166 = 3221225472;
            v167 = __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke_3;
            v168 = &unk_2786217B0;
            v169 = v30;
            v170 = 200.0;
            v32 = v30;
            [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v32 interval:v31 time:&v165 metadata:2.56 quantity:a2];

            v33 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9B0]];

            v175[0] = @"HKFakedData";
            v177[0] = MEMORY[0x277CBEC38];
            v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v177 forKeys:v175 count:1];
            v157 = MEMORY[0x277D85DD0];
            v158 = 3221225472;
            v159 = __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke_4;
            v160 = &unk_2786217B0;
            v25 = v33;
            v161 = v25;
            v162 = 0x4054000000000000;
            [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v25 interval:v34 time:&v157 metadata:2.56 quantity:a2];
          }
        }

        goto LABEL_30;
      }

      goto LABEL_18;
    }

    if (v6 == 4)
    {
LABEL_18:
      os_unfair_lock_assert_owner((a1 + 16));
      v52 = [*(a1 + 72) speed];
      v53 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      [v52 doubleValueForUnit:v53];
      v55 = v54;

      v56 = 1.0;
      if ((v6 - 1) <= 3)
      {
        v56 = dbl_22916D008[v6 - 1];
      }

      v57 = [*(a1 + 72) speed];
      v58 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      [v57 doubleValueForUnit:v58];
      v60 = v59;

      v177[0] = 0;
      v177[1] = v177;
      v177[2] = 0x2020000000;
      v177[3] = 0;
      v175[0] = 0;
      v175[1] = v175;
      v175[2] = 0x2020000000;
      v176 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v129 = 3221225472;
      v130 = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke;
      v131 = &unk_278621710;
      v132 = v177;
      v133 = v175;
      v61 = _Block_copy(&aBlock);
      v173[0] = MEMORY[0x277D85DD0];
      v173[1] = 3221225472;
      v173[2] = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_2;
      v173[3] = &unk_278621738;
      v62 = v61;
      v174 = v62;
      v63 = _Block_copy(v173);
      v171[0] = MEMORY[0x277D85DD0];
      v171[1] = 3221225472;
      v171[2] = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_3;
      v171[3] = &unk_278621760;
      v64 = v62;
      v172 = v64;
      v65 = _Block_copy(v171);
      v66 = [_HDFakeDataGenerator alloc];
      v67 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
      v68 = v55 * 2.56;
      v178 = MEMORY[0x277D85DD0];
      v179 = 3221225472;
      v180 = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_4;
      v181 = &unk_278621788;
      v69 = v65;
      v182 = v69;
      v183 = v68;
      v70 = [(_HDFakeDataGenerator *)v66 initWithType:v67 interval:&v178 startTime:2.56 generator:a2];
      [(HDFakeDataCollector *)a1 _lock_addGenerator:v70];

      v71 = [_HDFakeDataGenerator alloc];
      v72 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC70]];
      v165 = MEMORY[0x277D85DD0];
      v166 = 3221225472;
      v167 = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_5;
      v168 = &unk_278621788;
      v73 = v63;
      v169 = v73;
      v170 = v68 / v56;
      v74 = [(_HDFakeDataGenerator *)v71 initWithType:v72 interval:&v165 startTime:2.56 generator:a2];
      [(HDFakeDataCollector *)a1 _lock_addGenerator:v74];

      if (v6 == 2)
      {
        v75 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC40]];
        v163 = @"HKFakedData";
        v164 = MEMORY[0x277CBEC38];
        v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
        v157 = MEMORY[0x277D85DD0];
        v158 = 3221225472;
        v159 = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_6;
        v160 = &unk_2786217B0;
        v77 = v75;
        v161 = v77;
        v162 = v60;
        [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v77 interval:v76 time:&v157 metadata:2.56 quantity:a2];

        v78 = objc_loadWeakRetained((a1 + 8));
        v79 = [v78 daemon];
        v80 = [v79 behavior];
        v81 = [v80 isAppleWatch];

        if (v81)
        {
          v82 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC38]];

          v155 = @"HKFakedData";
          v156 = MEMORY[0x277CBEC38];
          v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
          v149 = MEMORY[0x277D85DD0];
          v150 = 3221225472;
          v151 = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_7;
          v152 = &unk_2786217B0;
          v84 = v82;
          v153 = v84;
          v154 = 0x4069000000000000;
          [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v84 interval:v83 time:&v149 metadata:2.56 quantity:a2];

          v85 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC48]];

          v147 = @"HKFakedData";
          v148 = MEMORY[0x277CBEC38];
          v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          v144[0] = MEMORY[0x277D85DD0];
          v144[1] = 3221225472;
          v144[2] = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_8;
          v144[3] = &unk_2786217B0;
          v87 = v85;
          v145 = v87;
          v146 = 0x4052800000000000;
          [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v87 interval:v86 time:v144 metadata:2.56 quantity:a2];

          v88 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC30]];

          v142 = @"HKFakedData";
          v143 = MEMORY[0x277CBEC38];
          v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
          v139[0] = MEMORY[0x277D85DD0];
          v139[1] = 3221225472;
          v139[2] = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_9;
          v139[3] = &unk_2786217B0;
          v90 = v88;
          v140 = v90;
          v141 = 0x4069000000000000;
          [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v90 interval:v89 time:v139 metadata:2.56 quantity:a2];

          v91 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC50]];

          v137 = @"HKFakedData";
          v138 = MEMORY[0x277CBEC38];
          v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
          v134[0] = MEMORY[0x277D85DD0];
          v134[1] = 3221225472;
          v134[2] = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_10;
          v134[3] = &unk_2786217B0;
          v77 = v91;
          v135 = v77;
          v136 = 0x4026000000000000;
          [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v77 interval:v92 time:v134 metadata:2.56 quantity:a2];
        }
      }

      _Block_object_dispose(v175, 8);
      _Block_object_dispose(v177, 8);
      goto LABEL_30;
    }

    if (v6 == 6)
    {
      v38 = objc_loadWeakRetained((a1 + 8));
      v39 = [v38 daemon];
      v40 = [v39 behavior];
      v41 = [v40 isAppleWatch];

      if (v41)
      {
        v42 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
        v139[0] = @"HKFakedData";
        v144[0] = MEMORY[0x277CBEC38];
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v139 count:1];
        aBlock = MEMORY[0x277D85DD0];
        v129 = 3221225472;
        v130 = __59__HDFakeDataCollector__lock_setupSwimmingGeneratorsAtTime___block_invoke;
        v131 = &unk_2786216E8;
        v132 = v42;
        v44 = v42;
        [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v44 interval:v43 time:&aBlock metadata:5.0 quantity:a2];

        v45 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC78]];

        v46 = *MEMORY[0x277CCC518];
        v149 = @"HKFakedData";
        v150 = v46;
        v157 = MEMORY[0x277CBEC38];
        v158 = &unk_283CB24F0;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v157 forKeys:&v149 count:2];
        v178 = MEMORY[0x277D85DD0];
        v179 = 3221225472;
        v180 = __59__HDFakeDataCollector__lock_setupSwimmingGeneratorsAtTime___block_invoke_324;
        v181 = &unk_2786216E8;
        v182 = v45;
        v48 = v45;
        [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v48 interval:v47 time:&v178 metadata:5.0 quantity:a2];

        v49 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD0]];

        v173[0] = @"HKFakedData";
        v134[0] = MEMORY[0x277CBEC38];
        v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v173 count:1];
        v165 = MEMORY[0x277D85DD0];
        v166 = 3221225472;
        v167 = __59__HDFakeDataCollector__lock_setupSwimmingGeneratorsAtTime___block_invoke_2;
        v168 = &unk_2786216E8;
        v169 = v49;
        v51 = v49;
        [(HDFakeDataCollector *)a1 _lock_setupFakeGeneratorForQuantityType:v51 interval:v50 time:&v165 metadata:60.0 quantity:a2];
      }
    }
  }

LABEL_30:
  v126 = *MEMORY[0x277D85DE8];
}

- (int64_t)datumCount
{
  os_unfair_lock_lock(&self->_lock);
  datumCount = self->_datumCount;
  os_unfair_lock_unlock(&self->_lock);
  return datumCount;
}

void __40__HDFakeDataCollector__lock_beginFaking__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  Current = CFAbsoluteTimeGetCurrent();
  if (WeakRetained)
  {
    v2 = Current;
    os_unfair_lock_lock(WeakRetained + 4);
    [(HDFakeDataCollector *)WeakRetained _lock_generateThrough:v2];
    os_unfair_lock_unlock(WeakRetained + 4);
  }
}

- (void)generateForConfiguration:(id)a3 from:(id)a4 to:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(HDFakeDataCollector *)self _lock_endFaking];
  configuration = self->_configuration;
  self->_configuration = v8;
  v12 = v8;

  [v10 timeIntervalSinceReferenceDate];
  v14 = v13;

  [(HDFakeDataCollector *)self _lock_setupGeneratorsForStartTime:v14];
  [v9 timeIntervalSinceReferenceDate];
  v16 = v15;

  [(HDFakeDataCollector *)self _lock_generateThrough:v16];
  v17 = self->_configuration;
  self->_configuration = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_generateThrough:(uint64_t)a1
{
  v27 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 16));
    while (1)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v4 = *(a1 + 56);
      v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (!v5)
      {
        break;
      }

      v6 = v5;
      v7 = 0;
      v8 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = [*(a1 + 56) objectForKeyedSubscript:v10];
          v12 = v11;
          if (v11 && *(v11 + 32) <= a2)
          {
            v14 = *(v11 + 16);
            v13 = (*(*(v11 + 40) + 16))(*(v11 + 8));
            v16 = v12[3];
            v15 = v12[4];
            v12[1] = v15;
            v12[4] = v15 + v16;

            if (v13)
            {
              v17 = [*(a1 + 24) aggregatorForType:v10];
              v25 = v13;
              v7 = 1;
              v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
              v19 = [MEMORY[0x277CCD2E8] localDevice];
              [v17 dataCollector:a1 didCollectSensorData:v18 device:v19 options:0];

              ++*(a1 + 64);
            }
          }

          else
          {

            v13 = 0;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);

      if ((v7 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_lock_addGenerator:(uint64_t)a1
{
  v4 = a2;
  os_unfair_lock_assert_owner((a1 + 16));
  if (v4)
  {
    v3 = v4[2];
  }

  else
  {
    v3 = 0;
  }

  [*(a1 + 56) setObject:v4 forKeyedSubscript:v3];
}

HDQuantityDatum *__57__HDFakeDataCollector__lock_setupGeneratorsForStartTime___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [HDQuantityDatum alloc];
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:a4 end:a4];
  v10 = MEMORY[0x277CCD7E8];
  v11 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
  v13 = [v10 quantityWithUnit:v11 doubleValue:(arc4random_uniform(dword_22916D028[*(a1 + 32)]) + dword_22916D05C[v12])];
  v18 = @"HKFakedData";
  v19[0] = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v15 = [(HDQuantityDatum *)v7 initWithIdentifier:v8 dateInterval:v9 quantity:v13 metadata:v14 resumeContextProvider:0];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

HDQuantityDatum *__68__HDFakeDataCollector__lock_setupCalorieGeneratorsForActivity_time___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [HDQuantityDatum alloc];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:a3 end:a4];
  v11 = MEMORY[0x277CCD7E8];
  v12 = [v7 canonicalUnit];

  v13 = *(a1 + 32);
  v14 = 0.0;
  if (v13 <= 0xC)
  {
    if (((1 << v13) & 0x1FC5) != 0)
    {
      v15 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0 * 0.344 + -0.172;
      v16 = 0.172;
LABEL_4:
      v14 = v15 + v16;
      goto LABEL_5;
    }

    if (v13 == 1)
    {
      v15 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0 * 0.006 + -0.003;
      v16 = 0.033;
      goto LABEL_4;
    }

    if (v13 == 3)
    {
      v15 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0 * 0.266 + -0.133;
      v16 = 0.133;
      goto LABEL_4;
    }
  }

LABEL_5:
  v17 = [v11 quantityWithUnit:v12 doubleValue:(a4 - a3) * v14];
  v22 = @"HKFakedData";
  v23[0] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v19 = [(HDQuantityDatum *)v8 initWithIdentifier:v9 dateInterval:v10 quantity:v17 metadata:v18 resumeContextProvider:0];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id __68__HDFakeDataCollector__lock_setupCalorieGeneratorsForActivity_time___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCD7E8];
  v2 = [*(a1 + 32) canonicalUnit];
  v3 = [v1 quantityWithUnit:v2 doubleValue:arc4random_uniform(0xFFFFFFFF) / 4294967300.0 * 0.0 + 0.033];

  return v3;
}

- (void)_lock_setupFakeGeneratorForQuantityType:(void *)a3 interval:(void *)a4 time:(double)a5 metadata:(double)a6 quantity:
{
  v11 = a3;
  v12 = a4;
  v13 = a2;
  v14 = [_HDFakeDataGenerator alloc];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__HDFakeDataCollector__lock_setupFakeGeneratorForQuantityType_interval_time_metadata_quantity___block_invoke;
  v18[3] = &unk_2786217D8;
  v15 = v12;
  v20 = v15;
  v16 = v11;
  v19 = v16;
  v17 = [(_HDFakeDataGenerator *)v14 initWithType:v13 interval:v18 startTime:a5 generator:a6];

  [(HDFakeDataCollector *)a1 _lock_addGenerator:v17];
}

uint64_t __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke(uint64_t a1, double a2)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) != a2)
  {
    *(v3 + 24) = a2;
    *(*(*(a1 + 40) + 8) + 24) = arc4random_uniform(0xFFFFFFFF);
  }

  return *(*(*(a1 + 40) + 8) + 24);
}

HDQuantityDatum *__70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_4(uint64_t a1, void *a2, double a3, double a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [HDQuantityDatum alloc];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:a3 end:a4];
  v11 = MEMORY[0x277CCD7E8];
  v12 = [v7 canonicalUnit];

  (*(*(a1 + 32) + 16))(a4, *(a1 + 40), *(a1 + 40) * 0.1);
  v13 = [v11 quantityWithUnit:v12 doubleValue:?];
  v18 = @"HKFakedData";
  v19[0] = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v15 = [(HDQuantityDatum *)v8 initWithIdentifier:v9 dateInterval:v10 quantity:v13 metadata:v14 resumeContextProvider:0];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

HDQuantityDatum *__70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_5(uint64_t a1, void *a2, double a3, double a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [HDQuantityDatum alloc];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:a3 end:a4];
  v11 = MEMORY[0x277CCD7E8];
  v12 = [v7 canonicalUnit];

  v13 = *(a1 + 40);
  v14 = (*(*(a1 + 32) + 16))(a4);
  v15 = [v11 quantityWithUnit:v12 doubleValue:(v14 & ~(v14 >> 31))];
  v20 = @"HKFakedData";
  v21[0] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v17 = [(HDQuantityDatum *)v8 initWithIdentifier:v9 dateInterval:v10 quantity:v15 metadata:v16 resumeContextProvider:0];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.25 - (*(a1 + 40) * 0.25 + *(a1 + 40) * 0.25) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_8(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.25 - (*(a1 + 40) * 0.25 + *(a1 + 40) * 0.25) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_9(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.25 - (*(a1 + 40) * 0.25 + *(a1 + 40) * 0.25) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_10(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __59__HDFakeDataCollector__lock_setupSwimmingGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCD7E8];
  v2 = [*(a1 + 32) canonicalUnit];
  v3 = [v1 quantityWithUnit:v2 doubleValue:(arc4random_uniform(3u) + 4)];

  return v3;
}

id __59__HDFakeDataCollector__lock_setupSwimmingGeneratorsAtTime___block_invoke_324(uint64_t a1)
{
  v1 = MEMORY[0x277CCD7E8];
  v2 = [*(a1 + 32) canonicalUnit];
  v3 = [v1 quantityWithUnit:v2 doubleValue:(arc4random_uniform(7u) + 9)];

  return v3;
}

id __59__HDFakeDataCollector__lock_setupSwimmingGeneratorsAtTime___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCD7E8];
  v2 = [*(a1 + 32) canonicalUnit];
  v3 = [v1 quantityWithUnit:v2 doubleValue:(arc4random_uniform(1u) + 26)];

  return v3;
}

id __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.2 - (*(a1 + 40) * 0.2 + *(a1 + 40) * 0.2) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.25 - (*(a1 + 40) * 0.25 + *(a1 + 40) * 0.25) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __69__HDFakeDataCollector__lock_setupCrossCountrySkiingGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __69__HDFakeDataCollector__lock_setupCrossCountrySkiingGeneratorsAtTime___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __63__HDFakeDataCollector__lock_setupPaddleSportsGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __63__HDFakeDataCollector__lock_setupPaddleSportsGeneratorsAtTime___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __57__HDFakeDataCollector__lock_setupRowingGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __57__HDFakeDataCollector__lock_setupRowingGeneratorsAtTime___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __64__HDFakeDataCollector__lock_setupSkatingSportsGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __65__HDFakeDataCollector__lock_setupDownhillSkiingGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCD7E8];
  v2 = [*(a1 + 32) canonicalUnit];
  v3 = [v1 quantityWithUnit:v2 doubleValue:(arc4random_uniform(3u) + 4)];

  return v3;
}

+ (id)collectedTypes
{
  v32[25] = *MEMORY[0x277D85DE8];
  v23 = MEMORY[0x277CBEB98];
  v31 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC70]];
  v32[0] = v31;
  v30 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
  v32[1] = v30;
  v29 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  v32[2] = v29;
  v28 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
  v32[3] = v28;
  v27 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
  v32[4] = v27;
  v26 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC78]];
  v32[5] = v26;
  v25 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v32[6] = v25;
  v22 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v32[7] = v22;
  v21 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
  v32[8] = v21;
  v20 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC40]];
  v32[9] = v20;
  v19 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC38]];
  v32[10] = v19;
  v18 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC48]];
  v32[11] = v18;
  v17 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC30]];
  v32[12] = v17;
  v16 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC50]];
  v32[13] = v16;
  v15 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C0]];
  v32[14] = v15;
  v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9B0]];
  v32[15] = v14;
  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C8]];
  v32[16] = v2;
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
  v32[17] = v3;
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
  v32[18] = v4;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
  v32[19] = v5;
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
  v32[20] = v6;
  v7 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD0]];
  v32[21] = v7;
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9A8]];
  v32[22] = v8;
  v9 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBF0]];
  v32[23] = v9;
  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC28]];
  v32[24] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:25];
  v24 = [v23 setWithArray:v11];

  v12 = *MEMORY[0x277D85DE8];

  return v24;
}

HDQuantityDatum *__95__HDFakeDataCollector__lock_setupFakeGeneratorForQuantityType_interval_time_metadata_quantity___block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = [HDQuantityDatum alloc];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:a2 end:a3];
  v9 = (*(*(a1 + 40) + 16))();
  v10 = [(HDQuantityDatum *)v6 initWithIdentifier:v7 dateInterval:v8 quantity:v9 metadata:*(a1 + 32) resumeContextProvider:0];

  return v10;
}

- (id)identifierForDataAggregator:(id)a3
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

- (void)registerWithAggregators
{
  v3 = [HDDataCollectorMultiplexer alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = +[HDFakeDataCollector collectedTypes];
  v8 = [(HDDataCollectorMultiplexer *)v3 initForCollector:self identifier:v5 profile:WeakRetained types:v7];

  os_unfair_lock_lock(&self->_lock);
  multiplexer = self->_multiplexer;
  self->_multiplexer = v8;
  v11 = v8;

  v10 = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  [(HDDataCollectorMultiplexer *)v11 registerForCollectionWithState:v10];
}

- (void)unregisterFromAggregators
{
  os_unfair_lock_lock(&self->_lock);
  [(HDDataCollectorMultiplexer *)self->_multiplexer unregisterForCollection];

  os_unfair_lock_unlock(&self->_lock);
}

@end