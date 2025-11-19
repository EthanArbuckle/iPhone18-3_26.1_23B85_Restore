@interface _DPKeyProperties
+ (_DPKeyProperties)keyPropertiesWithName:(id)a3 fromDictionary:(id)a4;
+ (id)keyPropertiesForName:(id)a3;
+ (id)parametersForAlgorithm:(id)a3 properties:(id)a4 epsilon:(id)a5;
+ (id)privatizationAlgorithmStringFor:(unint64_t)a3;
+ (id)propertiesFromFile:(id)a3;
+ (void)initialize;
- (_DPKeyProperties)initWithPropertyName:(id)a3 dictionary:(id)a4;
- (id)description;
- (id)privatizationAlgorithmString;
@end

@implementation _DPKeyProperties

+ (void)initialize
{
  if (initialize_onceToken_2 != -1)
  {
    +[_DPKeyProperties initialize];
  }
}

+ (id)parametersForAlgorithm:(id)a3 properties:(id)a4 epsilon:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  context = objc_autoreleasePoolPush();
  v10 = [v8 objectForKeyedSubscript:@"AlgorithmParameters"];
  v11 = [_DPAlgorithmParameters algorithmParametersForKey:v7];
  v12 = [v11 mutableCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = [v13 objectForKeyedSubscript:v18];
        [v12 setObject:v19 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  v20 = [MEMORY[0x277CBEC10] mutableCopy];
  if ([kAlgorithmsWithEpsilon containsObject:v7])
  {
    [v20 setObject:v9 forKeyedSubscript:@"epsilon"];
    [v20 addEntriesFromDictionary:v12];
  }

  v21 = [v20 copy];

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (_DPKeyProperties)initWithPropertyName:(id)a3 dictionary:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v83.receiver = self;
  v83.super_class = _DPKeyProperties;
  v9 = [(_DPKeyProperties *)&v83 init];
  v10 = v9;
  if (!v9)
  {
LABEL_80:
    v21 = v10;
    goto LABEL_81;
  }

  if (!v7)
  {
    v14 = +[_DPLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_DPKeyProperties initWithPropertyName:dictionary:];
    }

    goto LABEL_30;
  }

  objc_storeStrong(&v9->_propertiesName, a3);
  v11 = [v8 objectForKeyedSubscript:@"Transport"];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_13;
  }

  if (![v11 isEqualToString:@"parsec"])
  {
    if ([v12 isEqualToString:@"PrivateCloud"])
    {
      v13 = 3;
      goto LABEL_14;
    }

    if ([v12 isEqualToString:@"Dedisco"])
    {
      v13 = 4;
      goto LABEL_14;
    }

LABEL_13:
    v13 = 1;
    goto LABEL_14;
  }

  v13 = 2;
LABEL_14:
  v10->_transport = v13;
  v15 = [v8 objectForKeyedSubscript:@"DirectUpload"];
  v10->_directUpload = [v15 BOOLValue];

  v16 = [v8 objectForKeyedSubscript:@"DataAlgorithm"];
  if (!v16)
  {
    v18 = +[_DPLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_DPKeyProperties initWithPropertyName:dictionary:];
    }

    goto LABEL_28;
  }

  v17 = [kDataAlgorithmsMap objectForKeyedSubscript:v16];
  v10->_dataAlgorithm = [v17 unsignedIntegerValue];

  if (!v10->_dataAlgorithm)
  {
    v18 = +[_DPLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_DPKeyProperties initWithPropertyName:? dictionary:?];
    }

    goto LABEL_28;
  }

  if (v10->_transport != 3)
  {
    v18 = [v8 objectForKeyedSubscript:@"PrivacyParameter"];
    if (!v18)
    {
      v20 = +[_DPLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_DPKeyProperties initWithPropertyName:dictionary:];
      }

      goto LABEL_27;
    }

    objc_storeStrong(&v10->_privacyParameter, v18);
    [(NSNumber *)v10->_privacyParameter doubleValue];
    if (isInvalidEpsilon(v19))
    {
      v20 = +[_DPLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_DPKeyProperties initWithPropertyName:? dictionary:?];
      }

LABEL_27:

LABEL_28:
      goto LABEL_29;
    }
  }

  v22 = [v8 objectForKeyedSubscript:@"SubmissionPriority"];
  v10->_submissionPriority = [v22 unsignedIntegerValue];

  if (!v10->_submissionPriority)
  {
    v10->_submissionPriority = kLowestSubmissionPriority;
  }

  v23 = [v8 objectForKeyedSubscript:@"ServerAlgorithmString"];
  if (!v23)
  {
    v36 = +[_DPLog framework];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [_DPKeyProperties initWithPropertyName:dictionary:];
    }

    goto LABEL_29;
  }

  v74 = v23;
  v75 = v16;
  v76 = v12;
  v77 = v7;
  v24 = [v8 objectForKeyedSubscript:@"ServerAlgorithmString"];
  serverAlgorithmString = v10->_serverAlgorithmString;
  v10->_serverAlgorithmString = v24;

  v26 = [objc_opt_class() parametersForAlgorithm:v10->_serverAlgorithmString properties:v8 epsilon:v10->_privacyParameter];
  parameterDictionary = v10->_parameterDictionary;
  v10->_parameterDictionary = v26;

  v78 = [v8 objectForKeyedSubscript:@"PrivatizationAlgorithm"];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v28 = kAlgorithmStringsMap;
  v29 = [v28 countByEnumeratingWithState:&v79 objects:v84 count:16];
  if (!v29)
  {
    goto LABEL_46;
  }

  v30 = v29;
  v31 = *v80;
  while (2)
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v80 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v79 + 1) + 8 * i);
      v34 = [kAlgorithmStringsMap objectForKeyedSubscript:v33];
      if ([v78 isEqual:v34])
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v37 = v33;

          if (!v37)
          {
            goto LABEL_64;
          }

          v10->_privatizationAlgorithm = [v37 unsignedIntegerValue];
          v38 = [v8 objectForKeyedSubscript:@"MinimumPossible"];
          v39 = [v8 objectForKeyedSubscript:@"MaximumPossible"];
          v40 = v39;
          v7 = v77;
          v16 = v75;
          if (v38 && v39)
          {
            v41 = [_DPValueRange rangeWithMin:v38 max:v39];
            possibleRange = v10->_possibleRange;
            v10->_possibleRange = v41;
          }

          if (v10->_dataAlgorithm != 1 || v10->_possibleRange)
          {
            v43 = [v8 objectForKeyedSubscript:@"NoiseDistribution"];
            objc_storeStrong(&v10->_noiseDistribution, v43);
            if (v10->_dataAlgorithm != 1 || [(NSString *)v10->_noiseDistribution isEqualToString:@"Laplace"]|| [(NSString *)v10->_noiseDistribution isEqualToString:@"Uniform"])
            {
              v44 = [v8 objectForKeyedSubscript:@"BudgetKeyName"];
              if (v44)
              {
                v45 = v44;
                v73 = [_DPPrivacyBudget budgetWithName:v44];
                objc_storeStrong(&v10->_budget, v73);
                if (v10->_budget)
                {
                  v72 = v43;
                  v46 = [v8 objectForKeyedSubscript:@"HuffmanTableClass"];
                  objc_storeStrong(&v10->_huffmanTableClass, v46);
                  v70 = [v8 objectForKeyedSubscript:@"AcceptableError"];
                  objc_storeStrong(&v10->_acceptableError, v70);
                  v47 = [v8 objectForKeyedSubscript:@"MinimumTrimmed"];
                  v68 = [v8 objectForKeyedSubscript:@"MaximumTrimmed"];
                  v69 = v47;
                  v67 = [_DPValueRange rangeWithMin:v47 max:?];
                  objc_storeStrong(&v10->_trimmedScale, v67);
                  v48 = [v8 objectForKeyedSubscript:@"Namespace"];
                  namespaceName = v10->_namespaceName;
                  v10->_namespaceName = v48;

                  v50 = [v8 objectForKeyedSubscript:@"ApprovedForNonDNU"];
                  v10->_approvedForNonDNU = [v50 BOOLValue];

                  v51 = [v8 objectForKeyedSubscript:@"TelemetryAllowed"];
                  v10->_telemetryAllowed = [v51 BOOLValue];

                  v52 = [v8 objectForKeyedSubscript:@"TransparencyLogLifetime"];
                  v10->_transparencyLogLifetime = [v52 unsignedIntegerValue];

                  v53 = [v8 objectForKeyedSubscript:@"TransparencyLogReportName"];
                  v71 = v46;
                  if (v53 && (v54 = v53, [v8 objectForKeyedSubscript:@"TransparencyLogReportName"], v55 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v56 = objc_opt_isKindOfClass(), v55, v54, (v56 & 1) == 0))
                  {
                    dataSource = +[_DPLog framework];
                    if (os_log_type_enabled(dataSource, OS_LOG_TYPE_ERROR))
                    {
                      [_DPKeyProperties initWithPropertyName:v8 dictionary:dataSource];
                    }

                    v61 = 0;
                  }

                  else
                  {
                    v57 = [v8 objectForKeyedSubscript:@"TransparencyLogReportName"];
                    transparencyLogReportName = v10->_transparencyLogReportName;
                    v10->_transparencyLogReportName = v57;

                    v59 = [v8 objectForKeyedSubscript:@"DataSource"];
                    dataSource = v10->_dataSource;
                    v10->_dataSource = v59;
                    v61 = 1;
                  }

                  v7 = v77;
                  if ((v61 & 1) == 0)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_80;
                }

                v63 = +[_DPLog framework];
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  [_DPKeyProperties initWithPropertyName:dictionary:];
                }
              }

              v21 = 0;
              v7 = v77;
              goto LABEL_81;
            }

            v64 = +[_DPLog framework];
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              [_DPKeyProperties initWithPropertyName:dictionary:];
            }
          }

          goto LABEL_67;
        }
      }

      else
      {
      }
    }

    v30 = [v28 countByEnumeratingWithState:&v79 objects:v84 count:16];
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_46:

LABEL_64:
  v62 = +[_DPLog framework];
  v7 = v77;
  v16 = v75;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    [_DPKeyProperties initWithPropertyName:dictionary:];
  }

LABEL_67:
LABEL_29:

LABEL_30:
  v21 = 0;
LABEL_81:

  v65 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (_DPKeyProperties)keyPropertiesWithName:(id)a3 fromDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPropertyName:v7 dictionary:v6];

  return v8;
}

+ (id)keyPropertiesForName:(id)a3
{
  v4 = a3;
  v5 = +[_DPStrings keyPropertiesPath];
  v6 = [a1 propertiesFromFile:v5];

  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

+ (id)privatizationAlgorithmStringFor:(unint64_t)a3
{
  v3 = kAlgorithmStringsMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"UNKNOWN";
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v12 = *&self->_acceptableError;
  v13 = *&self->_propertiesName;
  v11 = *&self->_noiseDistribution;
  privacyParameter = self->_privacyParameter;
  transport = self->_transport;
  v8 = [(_DPKeyProperties *)self privatizationAlgorithmString];
  v9 = [v3 stringWithFormat:@"%@: { propertiesName=%@  possibleRange=%@ ; acceptableError=%@ ; trimmedScale=%@ ; noiseDistribution=%@ ; budget=%@ ; privacyParameter=%@ ; transport=%ld ; privatizationAlgorithm=%@ ; submissionPriority=%lu ; parameterDictionary=%@ ;  }", v5, v13, v12, v11, privacyParameter, transport, v8, self->_submissionPriority, self->_parameterDictionary];;

  return v9;
}

+ (id)propertiesFromFile:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39___DPKeyProperties_propertiesFromFile___block_invoke;
  v10[3] = &unk_27858ABB8;
  v11 = v4;
  v12 = a1;
  v5 = propertiesFromFile__onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&propertiesFromFile__onceToken, v10);
  }

  v7 = allKeyProperties;
  v8 = allKeyProperties;

  return v7;
}

- (id)privatizationAlgorithmString
{
  v3 = objc_opt_class();
  v4 = [(_DPKeyProperties *)self privatizationAlgorithm];

  return [v3 privatizationAlgorithmStringFor:v4];
}

- (void)initWithPropertyName:(uint64_t *)a1 dictionary:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyName:dictionary:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithPropertyName:dictionary:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyName:(void *)a1 dictionary:(NSObject *)a2 .cold.4(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a1 objectForKeyedSubscript:@"TransparencyLogReportName"];
  v6 = 138412546;
  v7 = @"TransparencyLogReportName";
  v8 = 2112;
  v9 = objc_opt_class();
  v4 = v9;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "Expect '%@' property to have string type, instead got type: '%@'.", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyName:dictionary:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyName:dictionary:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyName:dictionary:.cold.7()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithPropertyName:(uint64_t *)a1 dictionary:.cold.8(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyName:dictionary:.cold.9()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithPropertyName:dictionary:.cold.10()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end