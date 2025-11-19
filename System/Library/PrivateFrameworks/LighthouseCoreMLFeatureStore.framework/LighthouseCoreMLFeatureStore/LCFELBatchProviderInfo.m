@interface LCFELBatchProviderInfo
+ (id)meanOf:(id)a3;
+ (id)standardDeviationOf:(id)a3;
- (id)init:(id)a3 labelFeatureName:(id)a4;
@end

@implementation LCFELBatchProviderInfo

+ (id)meanOf:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v15 + 1) + 8 * i) doubleValue];
          v8 = v8 + v10;
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:{v8 / objc_msgSend(v4, "count")}];
  }

  else
  {
    v11 = [MEMORY[0x277CCA980] notANumber];
  }

  v12 = v11;

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)standardDeviationOf:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [LCFELBatchProviderInfo meanOf:v3];
    [v4 doubleValue];
    v6 = v5;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v18 + 1) + 8 * i) doubleValue];
          v11 = v11 + (v13 - v6) * (v13 - v6);
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:{sqrt(v11 / objc_msgSend(v7, "count"))}];
  }

  else
  {
    v14 = [MEMORY[0x277CCA980] notANumber];
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)init:(id)a3 labelFeatureName:(id)a4
{
  v148 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v108 = a4;
  v142.receiver = self;
  v142.super_class = LCFELBatchProviderInfo;
  v7 = [(LCFELBatchProviderInfo *)&v142 init];
  if (!v7)
  {
    goto LABEL_49;
  }

  v8 = +[LCFFeatureStoreContextId getContextId];
  contextId = v7->_contextId;
  v7->_contextId = v8;

  v10 = [MEMORY[0x277CCAD78] UUID];
  eventId = v7->_eventId;
  v7->_eventId = v10;

  v12 = [v6 featureStoreKey];
  featureStoreKey = v7->_featureStoreKey;
  v7->_featureStoreKey = v12;

  v14 = MEMORY[0x277CCABB0];
  v15 = [v6 timeLast];
  v16 = [v6 timeFirst];
  [v15 timeIntervalSinceDate:v16];
  v17 = [v14 numberWithDouble:?];
  timeRange = v7->_timeRange;
  v7->_timeRange = v17;

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "count")}];
  featureCount = v7->_featureCount;
  v105 = v7;
  v7->_featureCount = v19;

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v118 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v117 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v104 = v6;
  obj = [v6 featureProviders];
  v121 = v21;
  v109 = [obj countByEnumeratingWithState:&v138 objects:v147 count:16];
  if (!v109)
  {
    goto LABEL_27;
  }

  v107 = *v139;
  do
  {
    v22 = 0;
    do
    {
      if (*v139 != v107)
      {
        objc_enumerationMutation(obj);
      }

      v114 = v22;
      v23 = [LCFCoreMLFeatureProvider fromMLProvider:*(*(&v138 + 1) + 8 * v22)];
      v24 = [v23 featureValues];
      v25 = [v24 objectForKeyedSubscript:v108];

      v111 = v25;
      v26 = [v25 int64Value];
      v27 = v118;
      if (v26 <= 0)
      {
        v27 = v117;
      }

      v28 = v27;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v29 = [v23 featureValues];
      v30 = [v29 allKeys];

      v119 = v30;
      v31 = [v30 countByEnumeratingWithState:&v134 objects:v146 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v135;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v135 != v33)
            {
              objc_enumerationMutation(v119);
            }

            v35 = *(*(&v134 + 1) + 8 * i);
            v36 = [v28 allKeys];
            v37 = [v36 containsObject:v35];

            if ((v37 & 1) == 0)
            {
              v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v28 setObject:v38 forKeyedSubscript:v35];
            }

            v39 = [v21 allKeys];
            v40 = [v39 containsObject:v35];

            if ((v40 & 1) == 0)
            {
              v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v21 setObject:v41 forKeyedSubscript:v35];
            }

            v42 = [v23 featureValues];
            v43 = [v42 objectForKeyedSubscript:v35];

            v44 = [v43 type];
            if (v44 == 2)
            {
              v49 = [v28 objectForKeyedSubscript:v35];
              v50 = MEMORY[0x277CCABB0];
              [v43 doubleValue];
              v51 = [v50 numberWithDouble:?];
              [v49 addObject:v51];

              v21 = v121;
              v47 = [v121 objectForKeyedSubscript:v35];
              v52 = MEMORY[0x277CCABB0];
              [v43 doubleValue];
              v48 = [v52 numberWithDouble:?];
            }

            else
            {
              if (v44 != 1)
              {
                goto LABEL_23;
              }

              v45 = [v28 objectForKeyedSubscript:v35];
              v46 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v43, "int64Value")}];
              [v45 addObject:v46];

              v21 = v121;
              v47 = [v121 objectForKeyedSubscript:v35];
              v48 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v43, "int64Value")}];
            }

            v53 = v48;
            [v47 addObject:v48];

LABEL_23:
          }

          v32 = [v119 countByEnumeratingWithState:&v134 objects:v146 count:16];
        }

        while (v32);
      }

      v22 = v114 + 1;
    }

    while (v114 + 1 != v109);
    v109 = [obj countByEnumeratingWithState:&v138 objects:v147 count:16];
  }

  while (v109);
LABEL_27:

  v120 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v115 = [v118 allKeys];
  v54 = [v115 countByEnumeratingWithState:&v130 objects:v145 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v131;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v131 != v56)
        {
          objc_enumerationMutation(v115);
        }

        v58 = *(*(&v130 + 1) + 8 * j);
        v59 = [v118 objectForKeyedSubscript:v58];
        v60 = [LCFELBatchProviderInfo meanOf:v59];

        v61 = [v118 objectForKeyedSubscript:v58];
        v62 = [LCFELBatchProviderInfo standardDeviationOf:v61];

        v63 = [LCFELFeatureValueStatistic alloc];
        v64 = MEMORY[0x277CCABB0];
        v65 = [v118 objectForKeyedSubscript:v58];
        v66 = [v64 numberWithUnsignedInteger:{objc_msgSend(v65, "count")}];
        v67 = [(LCFELFeatureValueStatistic *)v63 init:v58 count:v66 mean:v60 stddev:v62];

        [v120 addObject:v67];
      }

      v55 = [v115 countByEnumeratingWithState:&v130 objects:v145 count:16];
    }

    while (v55);
  }

  v68 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v120];
  positiveFeatureStatistics = v105->_positiveFeatureStatistics;
  v105->_positiveFeatureStatistics = v68;

  v116 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v112 = [v117 allKeys];
  v70 = [v112 countByEnumeratingWithState:&v126 objects:v144 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v127;
    do
    {
      for (k = 0; k != v71; ++k)
      {
        if (*v127 != v72)
        {
          objc_enumerationMutation(v112);
        }

        v74 = *(*(&v126 + 1) + 8 * k);
        v75 = [v117 objectForKeyedSubscript:v74];
        v76 = [LCFELBatchProviderInfo meanOf:v75];

        v77 = [v117 objectForKeyedSubscript:v74];
        v78 = [LCFELBatchProviderInfo standardDeviationOf:v77];

        v79 = [LCFELFeatureValueStatistic alloc];
        v80 = MEMORY[0x277CCABB0];
        v81 = [v117 objectForKeyedSubscript:v74];
        v82 = [v80 numberWithUnsignedInteger:{objc_msgSend(v81, "count")}];
        v83 = [(LCFELFeatureValueStatistic *)v79 init:v74 count:v82 mean:v76 stddev:v78];

        [v116 addObject:v83];
      }

      v71 = [v112 countByEnumeratingWithState:&v126 objects:v144 count:16];
    }

    while (v71);
  }

  v84 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v116];
  negativeFeatureStatistics = v105->_negativeFeatureStatistics;
  v105->_negativeFeatureStatistics = v84;

  v113 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v110 = [v121 allKeys];
  v86 = [v110 countByEnumeratingWithState:&v122 objects:v143 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v123;
    do
    {
      for (m = 0; m != v87; ++m)
      {
        if (*v123 != v88)
        {
          objc_enumerationMutation(v110);
        }

        v90 = *(*(&v122 + 1) + 8 * m);
        v91 = [v121 objectForKeyedSubscript:v90];
        v92 = [LCFELBatchProviderInfo meanOf:v91];

        v93 = [v121 objectForKeyedSubscript:v90];
        v94 = [LCFELBatchProviderInfo standardDeviationOf:v93];

        v95 = [LCFELFeatureValueStatistic alloc];
        v96 = MEMORY[0x277CCABB0];
        v97 = [v121 objectForKeyedSubscript:v90];
        v98 = [v96 numberWithUnsignedInteger:{objc_msgSend(v97, "count")}];
        v99 = [(LCFELFeatureValueStatistic *)v95 init:v90 count:v98 mean:v92 stddev:v94];

        [v113 setObject:v99 forKeyedSubscript:v90];
      }

      v87 = [v110 countByEnumeratingWithState:&v122 objects:v143 count:16];
    }

    while (v87);
  }

  v100 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v113];
  v7 = v105;
  totalFeatureStatistics = v105->_totalFeatureStatistics;
  v105->_totalFeatureStatistics = v100;

  v6 = v104;
LABEL_49:

  v102 = *MEMORY[0x277D85DE8];
  return v7;
}

@end