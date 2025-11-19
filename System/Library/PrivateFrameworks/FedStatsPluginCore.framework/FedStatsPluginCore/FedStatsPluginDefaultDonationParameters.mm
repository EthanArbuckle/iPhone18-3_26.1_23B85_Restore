@interface FedStatsPluginDefaultDonationParameters
+ (id)defaultDonationParametersWithConfiguration:(id)a3 error:(id *)a4;
- (FedStatsPluginDefaultDonationParameters)initWithEpsilon:(double)a3 delta:(double)a4 defaultExpectedCohortSize:(unint64_t)a5 expectedCohortSizes:(id)a6;
- (id)distributionFor:(id)a3;
- (unint64_t)determineDefaultRecordCountFor:(id)a3;
- (unint64_t)expectedCohortSizeFor:(id)a3;
@end

@implementation FedStatsPluginDefaultDonationParameters

- (FedStatsPluginDefaultDonationParameters)initWithEpsilon:(double)a3 delta:(double)a4 defaultExpectedCohortSize:(unint64_t)a5 expectedCohortSizes:(id)a6
{
  v11 = a6;
  v14.receiver = self;
  v14.super_class = FedStatsPluginDefaultDonationParameters;
  v12 = [(FedStatsPluginDefaultDonationParameters *)&v14 init];
  if (v12)
  {
    v12->_successRateNaught = (log(1.0 / a4) + 1.0) * 3.0;
    v12->_successProbability = 1.0 - exp(a3 * -0.2);
    v12->_defaultExpectedCohortSize = a5;
    objc_storeStrong(&v12->_expectedCohortSizes, a6);
  }

  return v12;
}

- (unint64_t)expectedCohortSizeFor:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

  v23 = self;
  v7 = [(FedStatsPluginDefaultDonationParameters *)self expectedCohortSizes];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v24 + 1) + 8 * v12);
        v15 = [v4 objectForKey:v14];
        v16 = [FedStatsPluginDefaultDonationParameters expectedCohortSizesKeyForCohortVariable:v14 cohortValue:v15];

        v7 = [v13 objectForKey:v16];

        if (!v7)
        {
          v18 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [(FedStatsPluginDefaultDonationParameters *)v4 expectedCohortSizeFor:v18];
          }

          v19 = [(FedStatsPluginDefaultDonationParameters *)v23 defaultExpectedCohortSize];
          v7 = v8;
          goto LABEL_19;
        }

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v7 objectForKey:@"expectedCohortSize"];
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = [v16 unsignedIntegerValue];
  }

  else
  {
    v20 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [(FedStatsPluginDefaultDonationParameters *)v4 expectedCohortSizeFor:v20];
    }

    v17 = [(FedStatsPluginDefaultDonationParameters *)v23 defaultExpectedCohortSize];
  }

  v19 = v17;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)distributionFor:(id)a3
{
  v4 = [(FedStatsPluginDefaultDonationParameters *)self expectedCohortSizeFor:a3];
  [(FedStatsPluginDefaultDonationParameters *)self successRateNaught];
  v6 = v5 / v4;
  v7 = MEMORY[0x277D08470];
  [(FedStatsPluginDefaultDonationParameters *)self successProbability];
  v9 = [v7 distributionWithSuccessCount:v6 successProbability:v8];
  if (!v9)
  {
    v10 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(FedStatsPluginDefaultDonationParameters *)self distributionFor:v10, v6];
    }
  }

  return v9;
}

- (unint64_t)determineDefaultRecordCountFor:(id)a3
{
  v3 = [(FedStatsPluginDefaultDonationParameters *)self distributionFor:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 sample];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

+ (id)defaultDonationParametersWithConfiguration:(id)a3 error:(id *)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:@"epsilon"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v6 doubleValue];
      if (v7 > 0.01)
      {
        [v6 doubleValue];
        if (v8 < 0.5)
        {
          v9 = [v5 objectForKey:@"delta"];
          if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            if (a4)
            {
              *a4 = v13 = 0;
LABEL_27:

              goto LABEL_20;
            }

LABEL_26:
            v13 = 0;
            goto LABEL_27;
          }

          [v9 doubleValue];
          if (v10 >= 0.0001 || ([v9 doubleValue], v11 < 0.0))
          {
            if (a4)
              v12 = {;
              *a4 = [FedStatsPluginError errorWithCode:100 description:v12];
            }

            goto LABEL_26;
          }

          v17 = [v5 objectForKey:@"defaultExpectedCohortSize"];
          if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v17 doubleValue];
            if (v18 > 0.0)
            {
              v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "unsignedIntegerValue")}];
              v20 = [v19 isEqualToNumber:v17];

              if (v20)
              {
                v21 = [v5 objectForKey:@"expectedCohortSizes"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v49 = v17;
                  v50 = v9;
                  if (v21)
                  {
                    if ([v21 count])
                    {
                      v22 = [v21 firstObject];
                      v55 = [v22 count];
                    }

                    else
                    {
                      v55 = 0;
                    }
                  }

                  else
                  {
                    v55 = 0;
                    v21 = MEMORY[0x277CBEBF8];
                  }

                  v56 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
                  v66 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v21 = v21;
                  v52 = [v21 countByEnumeratingWithState:&v66 objects:v71 count:16];
                  if (v52)
                  {
                    v53 = *v67;
                    v54 = v21;
                    v24 = 0x278FF7000uLL;
LABEL_50:
                    v25 = 0;
                    v51 = *(v24 + 2904);
                    while (1)
                    {
                      if (*v67 != v53)
                      {
                        objc_enumerationMutation(v21);
                      }

                      v26 = *(*(&v66 + 1) + 8 * v25);
                      if (v55 != [v26 count])
                      {
                        break;
                      }

                      v58 = [v26 objectForKey:@"expectedCohortSize"];
                      if (!v58 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        if (a4)
                          v47 = {;
                          *a4 = [FedStatsPluginError errorWithCode:100 description:v47];
                          goto LABEL_76;
                        }

LABEL_77:

LABEL_78:
                        v21 = v54;

                        v13 = 0;
                        v17 = v49;
                        v9 = v50;
                        goto LABEL_79;
                      }

                      v57 = v25;
                      v61 = v26;
                      v27 = [v26 allKeys];
                      v28 = [v27 mutableCopy];

                      [v28 removeObject:@"expectedCohortSize"];
                      [v28 sortUsingSelector:v51];
                      v29 = v56;
                      v62 = 0u;
                      v63 = 0u;
                      v64 = 0u;
                      v65 = 0u;
                      v30 = v28;
                      v31 = [v30 countByEnumeratingWithState:&v62 objects:v70 count:16];
                      if (v31)
                      {
                        v32 = v31;
                        v33 = *v63;
                        obj = v30;
                        do
                        {
                          v34 = 0;
                          v35 = v29;
                          do
                          {
                            if (*v63 != v33)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v36 = *(*(&v62 + 1) + 8 * v34);
                            v37 = [v61 objectForKey:v36];
                            v38 = [FedStatsPluginDefaultDonationParameters expectedCohortSizesKeyForCohortVariable:v36 cohortValue:v37];

                            v39 = [v35 objectForKey:v38];

                            if (!v39)
                            {
                              v40 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
                              [v35 setObject:v40 forKey:v38];
                            }

                            v29 = [v35 objectForKey:v38];

                            ++v34;
                            v35 = v29;
                          }

                          while (v32 != v34);
                          v30 = obj;
                          v32 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
                        }

                        while (v32);
                      }

                      v41 = [v29 objectForKey:@"expectedCohortSize"];

                      if (v41)
                      {
                        v47 = v30;
                        if (a4)
                          v48 = {;
                          *a4 = [FedStatsPluginError errorWithCode:100 description:v48];
                        }

LABEL_76:
                        goto LABEL_77;
                      }

                      [v29 setObject:v58 forKey:@"expectedCohortSize"];

                      v25 = v57 + 1;
                      v21 = v54;
                      if (v57 + 1 == v52)
                      {
                        v42 = [v54 countByEnumeratingWithState:&v66 objects:v71 count:16];
                        v24 = 0x278FF7000;
                        v52 = v42;
                        if (v42)
                        {
                          goto LABEL_50;
                        }

                        goto LABEL_68;
                      }
                    }

                    if (a4)
                      v59 = {;
                      *a4 = [FedStatsPluginError errorWithCode:100 description:?];
                    }

                    goto LABEL_78;
                  }

LABEL_68:

                  v43 = [FedStatsPluginDefaultDonationParameters alloc];
                  [v6 doubleValue];
                  v45 = v44;
                  v9 = v50;
                  [v50 doubleValue];
                  v17 = v49;
                  v13 = -[FedStatsPluginDefaultDonationParameters initWithEpsilon:delta:defaultExpectedCohortSize:expectedCohortSizes:](v43, "initWithEpsilon:delta:defaultExpectedCohortSize:expectedCohortSizes:", [v49 unsignedIntegerValue], v56, v45, v46);
LABEL_79:
                }

                else if (a4)
                {
                  *a4 = v13 = 0;
                }

                else
                {
                  v13 = 0;
                }

                goto LABEL_42;
              }
            }

            if (a4)
            {
              goto LABEL_40;
            }
          }

          else if (a4)
          {
LABEL_40:
            [FedStatsPluginError errorWithCode:100 description:v23];
            *a4 = v13 = 0;
LABEL_42:

            goto LABEL_27;
          }

          v13 = 0;
          goto LABEL_42;
        }
      }

      if (a4)
        v14 = {;
        *a4 = [FedStatsPluginError errorWithCode:100 description:v14];
      }
    }

    else if (a4)
    {
      *a4 = v13 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v13 = 0;
    goto LABEL_20;
  }

  if (a4)
  {
    [FedStatsPluginError errorWithCode:100 description:@"Privacy parameters in recipe must be a dictionary"];
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_21:

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)expectedCohortSizeFor:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24AB24000, a2, OS_LOG_TYPE_DEBUG, "No expected cohort size for cohort values %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)expectedCohortSizeFor:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24AB24000, a2, OS_LOG_TYPE_DEBUG, "No expected cohort size value for cohort values %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)distributionFor:(double)a3 .cold.1(void *a1, NSObject *a2, double a3)
{
  v11 = *MEMORY[0x277D85DE8];
  [a1 successProbability];
  v7 = 134218240;
  v8 = a3;
  v9 = 2048;
  v10 = v5;
  _os_log_error_impl(&dword_24AB24000, a2, OS_LOG_TYPE_ERROR, "NB(%e,%e) failed. Check the logs.", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end