@interface FinHealthIncomeClassifier
+ (id)generateFeatures:(id)features withDescriptions:(id)descriptions;
+ (id)loadIncomeClassifierWithURL:(id)l;
- (FinHealthIncomeClassifier)init;
- (id)incomeProbabilityWithDict:(id)dict;
- (id)incomeProbabilityWithMultiArray:(id)array;
@end

@implementation FinHealthIncomeClassifier

- (FinHealthIncomeClassifier)init
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:@"ModelResources/assets_WPC_ANALYTICS_OFFLINE_LAB/ghent_classifier/ghent_classifier" ofType:@"mlpackage"];
  v6 = [v3 fileURLWithPath:v5];

  v9.receiver = self;
  v9.super_class = FinHealthIncomeClassifier;
  v7 = [(FHTrialModel *)&v9 initWithModelName:@"GhentClassificationModel" namespaceName:@"WPC_ANALYTICS_OFFLINE_LAB" modelFactorName:@"ghent_classifier" defaultModel:v6];

  return v7;
}

- (id)incomeProbabilityWithDict:(id)dict
{
  v7.receiver = self;
  v7.super_class = FinHealthIncomeClassifier;
  v3 = [(FHModel *)&v7 predictClassProbabilitiesWithDict:dict];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"income"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)incomeProbabilityWithMultiArray:(id)array
{
  v5.receiver = self;
  v5.super_class = FinHealthIncomeClassifier;
  v3 = [(FHModel *)&v5 predictClassProbabilitiesWithMultiArray:array];

  return v3;
}

+ (id)loadIncomeClassifierWithURL:(id)l
{
  if (l)
  {
    lCopy = l;
    v4 = [(FHModel *)[FinHealthIncomeClassifier alloc] initWithModelURL:lCopy modelName:@"GhentClassificationModel"];

    trialId = [(FHTrialModel *)v4 trialId];

    if (!trialId)
    {
      [(FHTrialModel *)v4 setTrialId:&stru_283A7B918];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)generateFeatures:(id)features withDescriptions:(id)descriptions
{
  v210 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  descriptionsCopy = descriptions;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:25];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v7 = 0x277CCA000uLL;
  zero = [MEMORY[0x277CCA980] zero];
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  obj = featuresCopy;
  v182 = [obj countByEnumeratingWithState:&v196 objects:v209 count:16];
  v166 = v6;
  if (v182)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v179 = *v197;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v177 = vnegq_f64(v13);
    do
    {
      v14 = 0;
      v15 = zero;
      do
      {
        if (*v197 != v179)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [obj objectForKey:*(*(&v196 + 1) + 8 * v14)];
        v184 = [*(v7 + 2432) decimalNumberWithMantissa:1 exponent:0 isNegative:1];
        v17 = [v16 decimalNumberAtIndex:1];
        v18 = [v17 decimalNumberByMultiplyingBy:v184];

        [array2 addObject:v18];
        zero = [v15 decimalNumberByAdding:v18];

        [v18 doubleValue];
        v185 = *v19.i64;
        *v20.i64 = *v19.i64 - trunc(*v19.i64);
        if (*vbslq_s8(v177, v20, v19).i64 == 0.0)
        {
          ++v12;
        }

        if (fmod(floor(*v19.i64), 5.0) == 0.0)
        {
          ++v11;
        }

        if (fmod(floor(v185 / 10.0), 5.0) == 0.0)
        {
          ++v10;
        }

        if (fmod(floor(v185 / 100.0), 5.0) == 0.0)
        {
          ++v9;
        }

        v21 = MEMORY[0x277CBEAA8];
        v22 = [v16 decimalNumberAtIndex:2];
        [v22 doubleValue];
        v23 = [v21 dateWithTimeIntervalSinceReferenceDate:?];

        v7 = 0x277CCA000;
        [array addObject:v23];

        ++v14;
        v15 = zero;
      }

      while (v182 != v14);
      v182 = [obj countByEnumeratingWithState:&v196 objects:v209 count:16];
    }

    while (v182);
    v24 = v12;
    v25 = v11;
    v26 = v10;
    v27 = v9;
    v6 = v166;
  }

  else
  {
    v27 = 0.0;
    v26 = 0.0;
    v25 = 0.0;
    v24 = 0.0;
  }

  v28 = [array2 count];
  if (v28 >= 3)
  {
    v30 = v28;
    v31 = [objc_alloc(*(v7 + 2432)) initWithUnsignedLong:v28];
    v32 = [zero decimalNumberByDividingBy:v31];

    v33 = [objc_alloc(*(v7 + 2432)) initWithUnsignedInteger:300];
    if ([v32 compare:v33] == -1)
    {
      v29 = 0;
    }

    else
    {
      v157 = v33;
      v164 = v32;
      v34 = [array2 sortedArrayUsingSelector:?];
      v35 = MEMORY[0x277CCA9C0];
      v36 = [&unk_283A881B8 objectAtIndexedSubscript:0];
      v165 = v34;
      v208 = v34;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v208 count:1];
      v38 = [v35 expressionWithFormat:v36 argumentArray:v37];

      v39 = objc_alloc(*(v7 + 2432));
      v156 = v38;
      v40 = [v38 expressionValueWithObject:0 context:0];
      v41 = v40;
      if (v40)
      {
        [v40 decimalValue];
      }

      else
      {
        v193 = 0;
        v194 = 0;
        v195 = 0;
      }

      v161 = [v39 initWithDecimal:&v193];

      v42 = [v165 subarrayWithRange:{0, v30 >> 1}];
      v150 = v30;
      v43 = [v165 subarrayWithRange:{(v30 & 1) + (v30 >> 1), v30 >> 1}];
      v44 = MEMORY[0x277CCA9C0];
      v45 = [&unk_283A881B8 objectAtIndexedSubscript:0];
      v155 = v42;
      v207 = v42;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v207 count:1];
      v47 = [v44 expressionWithFormat:v45 argumentArray:v46];

      v48 = MEMORY[0x277CCA9C0];
      v49 = [&unk_283A881B8 objectAtIndexedSubscript:0];
      v154 = v43;
      v206 = v43;
      v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v206 count:1];
      v51 = [v48 expressionWithFormat:v49 argumentArray:v50];

      v52 = objc_alloc(*(v7 + 2432));
      v153 = v47;
      v53 = [v47 expressionValueWithObject:0 context:0];
      v54 = v53;
      if (v53)
      {
        [v53 decimalValue];
      }

      else
      {
        v193 = 0;
        v194 = 0;
        v195 = 0;
      }

      v160 = [v52 initWithDecimal:&v193];

      v55 = objc_alloc(*(v7 + 2432));
      v56 = [v51 expressionValueWithObject:0 context:0];
      v57 = v56;
      if (v56)
      {
        [v56 decimalValue];
      }

      else
      {
        v193 = 0;
        v194 = 0;
        v195 = 0;
      }

      v159 = [v55 initWithDecimal:&v193];

      firstObject = [v165 firstObject];
      lastObject = [v165 lastObject];
      v59 = MEMORY[0x277CCA9C0];
      v60 = [&unk_283A881B8 objectAtIndexedSubscript:2];
      v205 = array2;
      v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v205 count:1];
      v62 = [v59 expressionWithFormat:v60 argumentArray:v61];

      v63 = objc_alloc(*(v7 + 2432));
      v151 = v62;
      v64 = [v62 expressionValueWithObject:0 context:0];
      v65 = v64;
      v152 = v51;
      if (v64)
      {
        [v64 decimalValue];
      }

      else
      {
        v193 = 0;
        v194 = 0;
        v195 = 0;
      }

      v163 = [v63 initWithDecimal:&v193];

      v66 = [array sortedArrayUsingSelector:sel_compare_];
      array3 = [MEMORY[0x277CBEB18] array];
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v169 = v66;
      if ([v66 count] >= 2)
      {
        v67 = 1;
        do
        {
          v68 = [v66 objectAtIndexedSubscript:v67 - 1];
          v69 = [v66 objectAtIndexedSubscript:v67];
          v70 = [currentCalendar components:16 fromDate:v68 toDate:v69 options:0];
          v71 = *(v7 + 2432);
          v72 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v70, "day")}];
          v73 = v72;
          if (v72)
          {
            [v72 decimalValue];
          }

          else
          {
            v193 = 0;
            v194 = 0;
            v195 = 0;
          }

          v74 = [v71 decimalNumberWithDecimal:&v193];

          [array3 addObject:v74];
          ++v67;
          v66 = v169;
          v7 = 0x277CCA000uLL;
        }

        while (v67 < [v169 count]);
      }

      v75 = MEMORY[0x277CCA9C0];
      v76 = [&unk_283A881B8 objectAtIndexedSubscript:1];
      v204 = array3;
      v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v204 count:1];
      v78 = [v75 expressionWithFormat:v76 argumentArray:v77];

      v79 = objc_alloc(*(v7 + 2432));
      v149 = v78;
      v80 = [v78 expressionValueWithObject:0 context:0];
      v81 = v80;
      if (v80)
      {
        [v80 decimalValue];
      }

      else
      {
        v193 = 0;
        v194 = 0;
        v195 = 0;
      }

      v162 = [v79 initWithDecimal:&v193];

      v82 = MEMORY[0x277CCA9C0];
      v83 = [&unk_283A881B8 objectAtIndexedSubscript:2];
      v203 = array3;
      v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v203 count:1];
      v85 = [v82 expressionWithFormat:v83 argumentArray:v84];

      v86 = objc_alloc(*(v7 + 2432));
      v148 = v85;
      v87 = [v85 expressionValueWithObject:0 context:0];
      v88 = v87;
      if (v87)
      {
        [v87 decimalValue];
      }

      else
      {
        v193 = 0;
        v194 = 0;
        v195 = 0;
      }

      v89 = lastObject;
      v90 = [v86 initWithDecimal:&v193];

      v147 = [v163 decimalNumberByDividingBy:v164];
      zero2 = [*(v7 + 2432) zero];
      zero3 = [*(v7 + 2432) zero];
      zero4 = [*(v7 + 2432) zero];
      v94 = [v162 isEqualToNumber:zero4];

      if (v94)
      {
        v144 = zero3;
        v146 = zero2;
      }

      else
      {
        v95 = [v90 decimalNumberByDividingBy:v162];

        v96 = [v164 decimalNumberByDividingBy:v162];

        v144 = v96;
        v146 = v95;
      }

      v97 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v98 = objc_alloc(MEMORY[0x277CBEB98]);
      v202[0] = @"wages";
      v202[1] = @"salary";
      v202[2] = @"paye";
      v202[3] = @"payroll";
      v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v202 count:4];
      v175 = [v98 initWithArray:v99];

      v100 = objc_alloc(MEMORY[0x277CD89D8]);
      v173 = *MEMORY[0x277CD8978];
      v201 = *MEMORY[0x277CD8978];
      v101 = [MEMORY[0x277CBEA60] arrayWithObjects:&v201 count:1];
      v174 = [v100 initWithTagSchemes:v101];

      v191 = 0u;
      v192 = 0u;
      v189 = 0u;
      v190 = 0u;
      v171 = descriptionsCopy;
      v158 = v90;
      v178 = [v171 countByEnumeratingWithState:&v189 objects:v200 count:16];
      if (v178)
      {
        v172 = *v190;
        do
        {
          for (i = 0; i != v178; ++i)
          {
            v103 = firstObject;
            if (*v190 != v172)
            {
              objc_enumerationMutation(v171);
            }

            v104 = *(*(&v189 + 1) + 8 * i);
            v105 = objc_alloc_init(MEMORY[0x277CBEB58]);
            [v174 setString:v104];
            v106 = [v104 length];
            v186[0] = MEMORY[0x277D85DD0];
            v186[1] = 3221225472;
            v186[2] = __63__FinHealthIncomeClassifier_generateFeatures_withDescriptions___block_invoke;
            v186[3] = &unk_2785CB9F0;
            v186[4] = v104;
            v187 = v175;
            v107 = v105;
            v188 = v107;
            [v174 enumerateTagsInRange:0 unit:v106 scheme:0 options:v173 usingBlock:{46, v186}];
            if ([v107 containsObject:@"ltd"])
            {
              [v97 setOrAddToDoubleValue:@"ltd" forKey:1.0];
            }

            if ([v107 containsObject:{@"disburse", v144}])
            {
              [v97 setOrAddToDoubleValue:@"disburse" forKey:1.0];
            }

            firstObject = v103;
            v89 = lastObject;
            if (([v107 containsObject:@"wage"] & 1) != 0 || objc_msgSend(v107, "containsObject:", @"wages"))
            {
              [v97 setOrAddToDoubleValue:@"wage" forKey:1.0];
            }

            if ([v107 containsObject:@"salary"])
            {
              [v97 setOrAddToDoubleValue:@"salary" forKey:1.0];
            }

            if ([v107 containsObject:@"rent"])
            {
              [v97 setOrAddToDoubleValue:@"rent" forKey:1.0];
            }

            if ([v107 containsObject:@"income"])
            {
              [v97 setOrAddToDoubleValue:@"income" forKey:1.0];
            }
          }

          v178 = [v171 countByEnumeratingWithState:&v189 objects:v200 count:16];
        }

        while (v178);
      }

      v108 = [v97 objectForKey:@"rent"];
      [v108 doubleValue];
      v109 = v150;
      v111 = v110 / v150;

      if (v111 >= 0.5)
      {
        v29 = 0;
        v6 = v166;
        v33 = v157;
        v139 = v97;
        v140 = v146;
        v138 = v147;
        v141 = v144;
      }

      else
      {
        v112 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v150, v111, 0.5}];
        v6 = v166;
        [v166 setObject:v112 atIndexedSubscript:0];

        [v166 setObject:v164 atIndexedSubscript:1];
        [v166 setObject:v161 atIndexedSubscript:2];
        [v166 setObject:v160 atIndexedSubscript:3];
        [v166 setObject:v159 atIndexedSubscript:4];
        [v166 setObject:v89 atIndexedSubscript:5];
        [v166 setObject:firstObject atIndexedSubscript:6];
        [v166 setObject:v163 atIndexedSubscript:7];
        [v166 setObject:v162 atIndexedSubscript:8];
        [v166 setObject:v90 atIndexedSubscript:9];
        v109 = [MEMORY[0x277CCABB0] numberWithDouble:v24 / v109];
        [v166 setObject:v109 atIndexedSubscript:10];

        v1092 = [MEMORY[0x277CCABB0] numberWithDouble:v25 / v109];
        [v166 setObject:v1092 atIndexedSubscript:11];

        v1093 = [MEMORY[0x277CCABB0] numberWithDouble:v26 / v109];
        [v166 setObject:v1093 atIndexedSubscript:12];

        v1094 = [MEMORY[0x277CCABB0] numberWithDouble:v27 / v109];
        [v166 setObject:v1094 atIndexedSubscript:13];

        v117 = MEMORY[0x277CCABB0];
        v118 = [v97 objectForKey:@"ltd"];
        [v118 doubleValue];
        v1095 = [v117 numberWithDouble:v119 / v109];
        [v166 setObject:v1095 atIndexedSubscript:14];

        v121 = MEMORY[0x277CCABB0];
        v122 = [v97 objectForKey:@"disburse"];
        [v122 doubleValue];
        v1096 = [v121 numberWithDouble:v123 / v109];
        [v166 setObject:v1096 atIndexedSubscript:15];

        v125 = MEMORY[0x277CCABB0];
        v126 = [v97 objectForKey:@"wage"];
        [v126 doubleValue];
        v1097 = [v125 numberWithDouble:v127 / v109];
        [v166 setObject:v1097 atIndexedSubscript:16];

        v129 = MEMORY[0x277CCABB0];
        v130 = [v97 objectForKey:@"salary"];
        [v130 doubleValue];
        v1098 = [v129 numberWithDouble:v131 / v109];
        [v166 setObject:v1098 atIndexedSubscript:17];

        *&v133 = v111;
        v134 = [MEMORY[0x277CCA980] numberWithFloat:v133];
        [v166 setObject:v134 atIndexedSubscript:18];

        v135 = [v97 objectForKey:@"income"];
        [v135 doubleValue];
        if (v136 / v109 <= 0.5)
        {
          v137 = &unk_283A88350;
        }

        else
        {
          v137 = &unk_283A88338;
        }

        [v166 setObject:v137 atIndexedSubscript:{19, v144}];

        [v166 setObject:&unk_283A88350 atIndexedSubscript:20];
        [v166 setObject:&unk_283A88350 atIndexedSubscript:21];
        v138 = v147;
        [v166 setObject:v147 atIndexedSubscript:22];
        v139 = v97;
        v140 = v146;
        [v166 setObject:v146 atIndexedSubscript:23];
        v141 = v145;
        [v166 setObject:v145 atIndexedSubscript:24];
        v29 = [v166 copy];
        v33 = v157;
      }

      v32 = v164;
    }
  }

  else
  {
    v29 = 0;
  }

  v142 = *MEMORY[0x277D85DE8];

  return v29;
}

void __63__FinHealthIncomeClassifier_generateFeatures_withDescriptions___block_invoke(id *a1)
{
  v2 = [a1[4] substringWithRange:?];
  v3 = [v2 lowercaseString];

  if ([a1[5] containsObject:v3])
  {
    [a1[6] addObject:@"income"];
  }

  [a1[6] addObject:v3];
}

@end