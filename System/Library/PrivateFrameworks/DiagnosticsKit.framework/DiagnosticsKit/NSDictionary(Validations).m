@interface NSDictionary(Validations)
- (NSObject)dk_arrayFromKey:()Validations inSet:maxLength:defaultValue:failed:;
- (NSObject)dk_arrayFromKey:()Validations types:maxLength:defaultValue:failed:validator:;
- (__CFString)dk_stringFromRequiredKey:()Validations maxLength:failed:;
- (id)dk_arrayFromRequiredKey:()Validations inSet:maxLength:failed:;
- (id)dk_arrayFromRequiredKey:()Validations types:maxLength:failed:;
- (id)dk_arrayFromRequiredKey:()Validations types:maxLength:failed:validator:;
- (id)dk_dataFromKey:()Validations minLength:maxLength:defaultValue:failed:;
- (id)dk_dataFromRequiredKey:()Validations maxLength:failed:;
- (id)dk_dictionaryFromKey:()Validations defaultValue:failed:;
- (id)dk_dictionaryFromKey:()Validations limitedToKeys:defaultValue:failed:;
- (id)dk_dictionaryFromRequiredKey:()Validations failed:;
- (id)dk_dictionaryFromRequiredKey:()Validations limitedToKeys:failed:;
- (id)dk_numberFromKey:()Validations lowerBound:upperBound:defaultValue:failed:;
- (id)dk_numberFromRequiredKey:()Validations lowerBound:upperBound:failed:;
- (id)dk_stringFromKey:()Validations inSet:defaultValue:failed:;
- (id)dk_stringFromKey:()Validations maxLength:defaultValue:failed:;
- (id)dk_stringFromRequiredKey:()Validations inSet:failed:;
- (uint64_t)dk_BOOLFromKey:()Validations defaultValue:failed:;
- (uint64_t)dk_BOOLFromRequiredKey:()Validations failed:;
@end

@implementation NSDictionary(Validations)

- (id)dk_stringFromKey:()Validations maxLength:defaultValue:failed:
{
  v10 = a3;
  v11 = a5;
  v12 = [a1 objectForKey:v10];
  if (!v12)
  {
    v15 = v11;
    goto LABEL_12;
  }

  v13 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v13 length] <= a4)
    {
      v15 = v13;
      goto LABEL_12;
    }

    v14 = DiagnosticsKitLogHandleForCategory(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(Validations) dk_stringFromKey:v10 maxLength:a4 defaultValue:v14 failed:?];
    }
  }

  else
  {
    v14 = DiagnosticsKitLogHandleForCategory(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(Validations) dk_stringFromKey:maxLength:defaultValue:failed:];
    }
  }

  v15 = v11;
  if (a6)
  {
    *a6 = 1;
  }

LABEL_12:

  return v15;
}

- (id)dk_stringFromKey:()Validations inSet:defaultValue:failed:
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [v10 valueForKeyPath:@"@max.length"];
  v14 = [a1 dk_stringFromKey:v12 maxLength:objc_msgSend(v13 defaultValue:"unsignedIntegerValue") failed:{v11, a6}];

  if (v14)
  {
    if ([v10 containsObject:v14])
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;

      if (a6)
      {
        *a6 = 1;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)dk_numberFromKey:()Validations lowerBound:upperBound:defaultValue:failed:
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a1 objectForKey:v12];
  if (!v16)
  {
    v21 = v15;
    goto LABEL_17;
  }

  v17 = v16;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 compare:v14];
    v19 = [v17 compare:v13];
    v20 = v19;
    if ((v18 + 1) >= 2)
    {
      v23 = DiagnosticsKitLogHandleForCategory(2);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = 138412802;
        v27 = v12;
        v28 = 2112;
        v29 = v14;
        v30 = 2112;
        v31 = v17;
        _os_log_error_impl(&dword_248B9D000, v23, OS_LOG_TYPE_ERROR, "Input validation failed; value for key %@ must not be greater than %@, but is %@", &v26, 0x20u);
      }

      if (v20 < 2)
      {
        goto LABEL_15;
      }
    }

    else if (v19 <= 1)
    {
      v21 = v17;
      goto LABEL_17;
    }

    v22 = DiagnosticsKitLogHandleForCategory(2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = 138412802;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v17;
      _os_log_error_impl(&dword_248B9D000, v22, OS_LOG_TYPE_ERROR, "Input validation failed; value for key %@ must not be less than %@, but is %@", &v26, 0x20u);
    }
  }

  else
  {
    v22 = DiagnosticsKitLogHandleForCategory(2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(Validations) dk_numberFromKey:lowerBound:upperBound:defaultValue:failed:];
    }
  }

LABEL_15:
  v21 = v15;

  if (a7)
  {
    *a7 = 1;
  }

LABEL_17:

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

- (uint64_t)dk_BOOLFromKey:()Validations defaultValue:failed:
{
  v8 = a3;
  v9 = [a1 objectForKey:v8];
  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      a4 = [v9 BOOLValue];
    }

    else
    {
      v10 = DiagnosticsKitLogHandleForCategory(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(Validations) dk_numberFromKey:lowerBound:upperBound:defaultValue:failed:];
      }

      if (a5)
      {
        *a5 = 1;
      }
    }
  }

  return a4;
}

- (id)dk_dictionaryFromKey:()Validations defaultValue:failed:
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 objectForKey:v8];
  if (v10)
  {
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;

      if (a5)
      {
        v13 = DiagnosticsKitLogHandleForCategory(2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [NSDictionary(Validations) dk_dictionaryFromKey:defaultValue:failed:];
        }

        *a5 = 1;
      }
    }
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (id)dk_dictionaryFromKey:()Validations limitedToKeys:defaultValue:failed:
{
  v10 = a4;
  v11 = [a1 dk_dictionaryFromKey:a3 defaultValue:a5 failed:a6];
  v12 = v11;
  if (v11)
  {
    v13 = MEMORY[0x277CBEB58];
    v14 = [v11 allKeys];
    v15 = [v13 setWithArray:v14];

    [v15 intersectSet:v10];
    v16 = [v15 allObjects];
    v17 = [v12 dictionaryWithValuesForKeys:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (NSObject)dk_arrayFromKey:()Validations types:maxLength:defaultValue:failed:validator:
{
  v42 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v18 = [a1 objectForKey:v14];
  if (!v18)
  {
    v20 = v16;
    goto LABEL_28;
  }

  v19 = v18;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = DiagnosticsKitLogHandleForCategory(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(Validations) dk_arrayFromKey:types:maxLength:defaultValue:failed:validator:];
    }

    goto LABEL_26;
  }

  if ([v19 count] > a5)
  {
    v20 = DiagnosticsKitLogHandleForCategory(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v37 = v14;
      v38 = 2048;
      v39 = a5;
      v40 = 2048;
      v41 = [v19 count];
      _os_log_error_impl(&dword_248B9D000, v20, OS_LOG_TYPE_ERROR, "Input validation failed; value for key %@ must have a count less than %lu, but is %lu", buf, 0x20u);
    }

LABEL_26:

    v20 = v16;
    if (a7)
    {
      *a7 = 1;
    }

    goto LABEL_28;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v19;
  v30 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v30)
  {
    v21 = *v32;
    v29 = *v32;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v20);
        }

        v23 = *(*(&v31 + 1) + 8 * i);
        v24 = objc_opt_class();
        if (!v24)
        {
LABEL_23:
          v26 = DiagnosticsKitLogHandleForCategory(2);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(Validations) dk_arrayFromKey:types:maxLength:defaultValue:failed:validator:];
          }

LABEL_25:

          goto LABEL_26;
        }

        Superclass = v24;
        while (([v15 containsObject:Superclass] & 1) == 0)
        {
          Superclass = class_getSuperclass(Superclass);
          if (!Superclass)
          {
            goto LABEL_23;
          }
        }

        if ((v17[2](v17, v23) & 1) == 0)
        {
          v26 = DiagnosticsKitLogHandleForCategory(2);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(Validations) dk_arrayFromKey:v14 types:v26 maxLength:? defaultValue:? failed:? validator:?];
          }

          goto LABEL_25;
        }

        v21 = v29;
      }

      v30 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:
  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

- (NSObject)dk_arrayFromKey:()Validations inSet:maxLength:defaultValue:failed:
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [a1 objectForKey:v12];
  if (!v15)
  {
    v17 = v14;
    goto LABEL_23;
  }

  v16 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = DiagnosticsKitLogHandleForCategory(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(Validations) dk_arrayFromKey:types:maxLength:defaultValue:failed:validator:];
    }

    goto LABEL_21;
  }

  if ([v16 count] > a5)
  {
    v17 = DiagnosticsKitLogHandleForCategory(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v31 = v12;
      v32 = 2048;
      v33 = a5;
      v34 = 2048;
      v35 = [v16 count];
      _os_log_error_impl(&dword_248B9D000, v17, OS_LOG_TYPE_ERROR, "Input validation failed; value for key %@ must not have a count greater than %lu, but is %lu", buf, 0x20u);
    }

LABEL_21:

    v17 = v14;
    if (a7)
    {
      *a7 = 1;
    }

    goto LABEL_23;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        if (([v13 containsObject:{*(*(&v25 + 1) + 8 * i), v25}] & 1) == 0)
        {
          v22 = DiagnosticsKitLogHandleForCategory(2);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(Validations) dk_arrayFromKey:inSet:maxLength:defaultValue:failed:];
          }

          goto LABEL_21;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)dk_dataFromKey:()Validations minLength:maxLength:defaultValue:failed:
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = [a1 objectForKey:v12];
  if (!v14)
  {
    v18 = v13;
    goto LABEL_11;
  }

  v15 = v14;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = DiagnosticsKitLogHandleForCategory(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(Validations) dk_dataFromKey:minLength:maxLength:defaultValue:failed:];
    }

    goto LABEL_9;
  }

  if ([v15 length] > a5)
  {
    v16 = DiagnosticsKitLogHandleForCategory(2);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v21 = 138412802;
    v22 = v12;
    v23 = 2048;
    v24 = a5;
    v25 = 2048;
    v26 = [v15 length];
    v17 = "Input validation failed; value for key %@ must not have a length greater than %lu, but is %lu";
    goto LABEL_17;
  }

  if ([v15 length] >= a4)
  {
    v18 = v15;
    goto LABEL_11;
  }

  v16 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v21 = 138412802;
    v22 = v12;
    v23 = 2048;
    v24 = a4;
    v25 = 2048;
    v26 = [v15 length];
    v17 = "Input validation failed; value for key %@ must not have a length less than %lu, but is %lu";
LABEL_17:
    _os_log_error_impl(&dword_248B9D000, v16, OS_LOG_TYPE_ERROR, v17, &v21, 0x20u);
  }

LABEL_9:

  v18 = v13;
  if (a7)
  {
    *a7 = 1;
  }

LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (__CFString)dk_stringFromRequiredKey:()Validations maxLength:failed:
{
  v6 = [a1 dk_stringFromKey:a3 maxLength:a4 defaultValue:0 failed:a5];
  if (!v6)
  {
    if (a5)
    {
      *a5 = 1;
    }

    v6 = &stru_285B8CB68;
  }

  return v6;
}

- (id)dk_stringFromRequiredKey:()Validations inSet:failed:
{
  v8 = a4;
  v9 = [a1 dk_stringFromKey:a3 inSet:v8 defaultValue:0 failed:a5];
  if (!v9)
  {
    v9 = [v8 anyObject];
    if (a5)
    {
      *a5 = 1;
    }
  }

  return v9;
}

- (id)dk_numberFromRequiredKey:()Validations lowerBound:upperBound:failed:
{
  v10 = a4;
  v11 = [a1 dk_numberFromKey:a3 lowerBound:v10 upperBound:a5 defaultValue:0 failed:a6];
  if (!v11)
  {
    v11 = v10;
    if (a6)
    {
      *a6 = 1;
    }
  }

  return v11;
}

- (uint64_t)dk_BOOLFromRequiredKey:()Validations failed:
{
  v6 = a3;
  v7 = [a1 objectForKey:v6];
  if (v7)
  {
    v8 = [a1 dk_BOOLFromKey:v6 defaultValue:0 failed:a4];
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v8;
}

- (id)dk_dictionaryFromRequiredKey:()Validations failed:
{
  v5 = [a1 dk_dictionaryFromKey:a3 defaultValue:0 failed:a4];
  if (!v5)
  {
    if (a4)
    {
      *a4 = 1;
    }

    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (id)dk_dictionaryFromRequiredKey:()Validations limitedToKeys:failed:
{
  v8 = a4;
  v9 = [a1 dk_dictionaryFromRequiredKey:a3 failed:a5];
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CBEB58];
    v12 = [v9 allKeys];
    v13 = [v11 setWithArray:v12];

    [v13 intersectSet:v8];
    v14 = [v13 allObjects];
    v15 = [v10 dictionaryWithValuesForKeys:v14];
  }

  else
  {
    v15 = MEMORY[0x277CBEC10];
  }

  return v15;
}

- (id)dk_arrayFromRequiredKey:()Validations types:maxLength:failed:
{
  v7 = [a1 dk_arrayFromKey:a3 types:a4 maxLength:a5 defaultValue:0 failed:a6];
  if (!v7)
  {
    if (a6)
    {
      *a6 = 1;
    }

    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)dk_arrayFromRequiredKey:()Validations types:maxLength:failed:validator:
{
  v8 = [a1 dk_arrayFromKey:a3 types:a4 maxLength:a5 defaultValue:0 failed:a6 validator:a7];
  if (!v8)
  {
    if (a6)
    {
      *a6 = 1;
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (id)dk_arrayFromRequiredKey:()Validations inSet:maxLength:failed:
{
  v7 = [a1 dk_arrayFromKey:a3 inSet:a4 maxLength:a5 defaultValue:0 failed:a6];
  if (!v7)
  {
    if (a6)
    {
      *a6 = 1;
    }

    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)dk_dataFromRequiredKey:()Validations maxLength:failed:
{
  v6 = [a1 dk_dataFromKey:a3 minLength:0 maxLength:a4 defaultValue:0 failed:a5];
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEA90] data];
    if (a5)
    {
      *a5 = 1;
    }
  }

  return v6;
}

- (void)dk_stringFromKey:()Validations maxLength:defaultValue:failed:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_1(v1 v2)];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_248B9D000, v6, v7, "Input validation failed; value for key %@ must be of class NSString, but is %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dk_stringFromKey:()Validations maxLength:defaultValue:failed:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2048;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_4(&dword_248B9D000, a2, a3, "Input validation failed; value for key %@ is longer than max length %lu", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)dk_numberFromKey:()Validations lowerBound:upperBound:defaultValue:failed:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_1(v1 v2)];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_248B9D000, v6, v7, "Input validation failed; value for key %@ must be of class NSNumber, but is %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dk_dictionaryFromKey:()Validations defaultValue:failed:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_1(v1 v2)];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_248B9D000, v6, v7, "Input validation failed; value for key %@ must be of class NSDictionary, but is %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dk_arrayFromKey:()Validations types:maxLength:defaultValue:failed:validator:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_1(v1 v2)];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_248B9D000, v6, v7, "Input validation failed; value for key %@ must be of class NSArray, but is %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dk_arrayFromKey:()Validations types:maxLength:defaultValue:failed:validator:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "Input validation failed; value for key %@ custom validation failed", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)dk_arrayFromKey:()Validations types:maxLength:defaultValue:failed:validator:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_248B9D000, v0, v1, "Input validation failed; values in array with key %@ must be of types %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)dk_arrayFromKey:()Validations inSet:maxLength:defaultValue:failed:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_248B9D000, v0, v1, "Input validation failed; value for key %@ contains an unspecified element %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)dk_dataFromKey:()Validations minLength:maxLength:defaultValue:failed:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_1(v1 v2)];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_248B9D000, v6, v7, "Input validation failed; value for key %@ must be of class NSData, but is %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end