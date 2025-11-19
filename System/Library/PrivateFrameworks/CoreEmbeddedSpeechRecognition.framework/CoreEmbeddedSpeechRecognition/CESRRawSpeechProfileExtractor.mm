@interface CESRRawSpeechProfileExtractor
+ (BOOL)_isValidCategoryWithName:(id)a3 data:(id)a4 error:(id *)a5;
+ (id)_convertItemsFromEntities:(id)a3 categoryName:(id)a4 converter:(id)a5 error:(id *)a6;
+ (id)_dictionaryFromUserDataArray:(id)a3 error:(id *)a4;
+ (id)_extractEntitiesFromCategoryData:(id)a3 categoryName:(id)a4 error:(id *)a5;
+ (id)_extractNamespaceFromCategoryName:(id)a3 error:(id *)a4;
+ (id)_extractUserDataFromRawSpeechProfile:(id)a3 error:(id *)a4;
+ (id)extractItemsFromRawSpeechProfile:(id)a3 converter:(id)a4 error:(id *)a5;
+ (id)extractLocaleFromRawSpeechProfile:(id)a3 error:(id *)a4;
@end

@implementation CESRRawSpeechProfileExtractor

+ (id)_convertItemsFromEntities:(id)a3 categoryName:(id)a4 converter:(id)a5 error:(id *)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [objc_opt_class() _extractNamespaceFromCategoryName:v10 error:a6];
  if (!v12)
  {
    v25 = 0;
    goto LABEL_24;
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
  if (![v9 count])
  {
LABEL_16:
    v25 = v13;
    goto LABEL_23;
  }

  v37 = a6;
  v38 = v10;
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x277CEF0E8];
  while (1)
  {
    v17 = [v9 objectAtIndex:v15];
    if (![v17 count])
    {
      v20 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
      {
        v21 = MEMORY[0x277CCABB0];
        v22 = v20;
        v23 = [v21 numberWithUnsignedInteger:v15];
        *buf = 136315650;
        v41 = "+[CESRRawSpeechProfileExtractor _convertItemsFromEntities:categoryName:converter:error:]";
        v42 = 2112;
        v43 = v23;
        v44 = 2112;
        v45 = v38;
        _os_log_debug_impl(&dword_225EEB000, v22, OS_LOG_TYPE_DEBUG, "%s rawSpeechProfile has empty entity words at item index: %@ under category: %@", buf, 0x20u);
      }

      goto LABEL_12;
    }

    v39 = 0;
    v18 = [v11 vocabularyItemFromSpeechWords:v17 speechNamespace:v12 error:&v39];
    v19 = v39;
    if (v19)
    {
      break;
    }

    if (v18)
    {
      [v13 addObject:v18];
    }

    else
    {
      ++v14;
    }

LABEL_12:
    if (++v15 >= [v9 count])
    {
      v10 = v38;
      if (v14)
      {
        v24 = *v16;
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
        {
          v34 = MEMORY[0x277CCABB0];
          v35 = v24;
          v36 = [v34 numberWithUnsignedInteger:v14];
          *buf = 136315906;
          v41 = "+[CESRRawSpeechProfileExtractor _convertItemsFromEntities:categoryName:converter:error:]";
          v42 = 2112;
          v43 = v36;
          v44 = 2112;
          v45 = v12;
          v46 = 2112;
          v47 = v38;
          _os_log_debug_impl(&dword_225EEB000, v35, OS_LOG_TYPE_DEBUG, "%s Skipped %@ vocabulary items with namespace: %@ in category: %@", buf, 0x2Au);
        }
      }

      goto LABEL_16;
    }
  }

  v26 = v19;
  v27 = *v16;
  if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
  {
    v31 = MEMORY[0x277CCABB0];
    v32 = v27;
    v33 = [v31 numberWithUnsignedInteger:v15];
    *buf = 136315906;
    v41 = "+[CESRRawSpeechProfileExtractor _convertItemsFromEntities:categoryName:converter:error:]";
    v42 = 2112;
    v43 = v33;
    v44 = 2112;
    v45 = v38;
    v46 = 2112;
    v47 = v26;
    _os_log_error_impl(&dword_225EEB000, v32, OS_LOG_TYPE_ERROR, "%s Conversion to vocabulary item at index: %@ in category: %@ failed with error: %@", buf, 0x2Au);
  }

  if (v37)
  {
    v28 = v26;
    *v37 = v26;
  }

  v25 = 0;
  v10 = v38;
LABEL_23:

LABEL_24:
  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_extractNamespaceFromCategoryName:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = 0;
  v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?<=urn:)(.+)(?=:)" options:1 error:&v19];
  v7 = v19;
  if (v6)
  {
    v8 = [v6 rangeOfFirstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA068];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to extract namespace from category name: %@", v5];
      v21 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v13 = [v10 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:2 userInfo:v12];
      if (a4 && v13)
      {
        v13 = v13;
        *a4 = v13;
      }

      v14 = 0;
    }

    else
    {
      v14 = [v5 substringWithRange:{v8, v9}];
    }
  }

  else
  {
    v15 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "+[CESRRawSpeechProfileExtractor _extractNamespaceFromCategoryName:error:]";
      v24 = 2112;
      v25 = v7;
      _os_log_error_impl(&dword_225EEB000, v15, OS_LOG_TYPE_ERROR, "%s Failed to create regular expression, error: %@", buf, 0x16u);
    }

    v14 = 0;
    if (a4 && v7)
    {
      v16 = v7;
      v14 = 0;
      *a4 = v7;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_extractEntitiesFromCategoryData:(id)a3 categoryName:(id)a4 error:(id *)a5
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v35 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  if (![v6 count])
  {
LABEL_15:
    v16 = v7;
    goto LABEL_20;
  }

  v8 = 0;
  v33 = v7;
  v34 = v6;
  while (1)
  {
    v9 = [v6 objectAtIndex:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKey:@"attributes"];
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = v9;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277CCA068];
      v27 = MEMORY[0x277CCACA8];
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
      v29 = [v27 stringWithFormat:@"rawSpeechProfile has malformed entity words array at index: %@ in category: %@", v28, v35];
      v39[0] = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      v31 = [v26 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v30];
      if (a5 && v31)
      {
        v31 = v31;
        *a5 = v31;
      }

      v16 = 0;
      goto LABEL_20;
    }

    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
    if ([v10 count])
    {
      break;
    }

LABEL_13:
    v7 = v33;
    [v33 addObject:v11];

    v6 = v34;
LABEL_14:

    if (++v8 >= [v6 count])
    {
      goto LABEL_15;
    }
  }

  v12 = 0;
  while (1)
  {
    v13 = [v10 objectAtIndex:v12];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v14 = [[CESRRawSpeechProfileWord alloc] initWithSpeechWordDictionary:v13];
    if (!v14)
    {
      break;
    }

    v15 = v14;
    [v11 addObject:v14];

    if (++v12 >= [v10 count])
    {
      goto LABEL_13;
    }
  }

  v17 = MEMORY[0x277CCA9B8];
  v36 = *MEMORY[0x277CCA068];
  v18 = MEMORY[0x277CCACA8];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  v21 = [v18 stringWithFormat:@"rawSpeechProfile has malformed entity word dictionary at item index: %@ word index: %@ in category: %@", v19, v20, v35];
  v37 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v23 = [v17 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v22];
  if (a5 && v23)
  {
    v23 = v23;
    *a5 = v23;
  }

  v16 = 0;
  v7 = v33;
  v6 = v34;
LABEL_20:

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (BOOL)_isValidCategoryWithName:(id)a3 data:(id)a4 error:(id *)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 1;
      goto LABEL_10;
    }

    v10 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA068];
    v20 = MEMORY[0x277CCACA8];
    v21 = objc_opt_class();
    v13 = NSStringFromClass(v21);
    v22 = objc_opt_class();
    v15 = NSStringFromClass(v22);
    v16 = [v20 stringWithFormat:@"rawSpeechProfile has unexpected value class for category: %@. Found: %@ expected: %@", v7, v13, v15, v27];
    v28 = v16;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v28;
    v19 = &v27;
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA068];
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v11 stringWithFormat:@"rawSpeechProfile contains category name with unrecognized format. Found: %@ expected: %@", v13, v15];
    v30[0] = v16;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v30;
    v19 = &v29;
  }

  v23 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
  v24 = [v10 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v23];
  if (a5 && v24)
  {
    v24 = v24;
    *a5 = v24;
  }

  v9 = 0;
LABEL_10:

  v25 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)_dictionaryFromUserDataArray:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    obj = v6;
LABEL_3:
    v10 = v5;
    v11 = 0;
    while (1)
    {
      if (*v37 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v36 + 1) + 8 * v11);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v13 = [v12 objectForKey:@"categoryName"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v27 = MEMORY[0x277CCA9B8];
        v44 = *MEMORY[0x277CCA068];
        v28 = MEMORY[0x277CCACA8];
        v29 = objc_opt_class();
        v21 = NSStringFromClass(v29);
        v30 = objc_opt_class();
        v22 = NSStringFromClass(v30);
        v23 = [v28 stringWithFormat:@"rawSpeechProfile has unexpected category name value class: %@ expected: %@", v21, v22];
        v45 = v23;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v31 = [v27 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v25];
        if (a4 && v31)
        {
          v31 = v31;
          *a4 = v31;
        }

LABEL_22:
        v5 = v10;
        v6 = obj;
        goto LABEL_23;
      }

      v14 = [v12 objectForKey:@"categoryData"];
      if (v14)
      {
        [v10 setObject:v14 forKey:v13];
      }

      else
      {
        v15 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v41 = "+[CESRRawSpeechProfileExtractor _dictionaryFromUserDataArray:error:]";
          v42 = 2112;
          v43 = v13;
          _os_log_debug_impl(&dword_225EEB000, v15, OS_LOG_TYPE_DEBUG, "%s Skipping category with name: %@ found to have no category data.", buf, 0x16u);
        }
      }

      if (v8 == ++v11)
      {
        v6 = obj;
        v8 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
        v5 = v10;
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    v17 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA068];
    v18 = MEMORY[0x277CCACA8];
    v19 = objc_opt_class();
    v13 = NSStringFromClass(v19);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v18 stringWithFormat:@"rawSpeechProfile has unexpected category class: %@ expected: %@", v13, v21];
    v47 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v24 = [v17 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v23];
    v25 = v24;
    if (!a4)
    {
      goto LABEL_22;
    }

    v5 = v10;
    v6 = obj;
    if (v24)
    {
      v26 = v24;
      *a4 = v25;
    }

LABEL_23:

    v16 = 0;
    goto LABEL_24;
  }

LABEL_14:

  v16 = v5;
LABEL_24:

  v32 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_extractUserDataFromRawSpeechProfile:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:@"userData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [objc_opt_class() _dictionaryFromUserDataArray:v6 error:a4];
      }

      else
      {
        v7 = v6;
        v6 = v7;
      }

      v10 = v7;
      goto LABEL_13;
    }

    v13 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA068];
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v14 stringWithFormat:@"rawSpeechProfile user data value for key: %@ has unexpected class: %@ expected %@ or %@", @"userData", v16, v18, v20];
    v25 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v23 = [v13 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v22];
    if (a4 && v23)
    {
      v23 = v23;
      *a4 = v23;
    }
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA068];
    v27[0] = @"rawSpeechProfile is nil or not an instance of NSDictionary.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v9 = [v8 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v6];
    if (a4 && v9)
    {
      v9 = v9;
      *a4 = v9;
    }
  }

  v10 = 0;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)extractItemsFromRawSpeechProfile:(id)a3 converter:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [objc_opt_class() _extractUserDataFromRawSpeechProfile:v7 error:a5];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [v9 allKeys];
    v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v29 = *v31;
      v26 = v7;
      v27 = v10;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = v9;
          v16 = [v9 objectForKey:{v14, v26}];
          if (![objc_opt_class() _isValidCategoryWithName:v14 data:v16 error:a5])
          {
            goto LABEL_17;
          }

          v17 = [v8 speechCategoryId];
          v18 = [v14 hasSuffix:v17];

          if (v18)
          {
            v19 = [objc_opt_class() _extractEntitiesFromCategoryData:v16 categoryName:v14 error:a5];
            if (!v19)
            {
              goto LABEL_17;
            }

            v20 = v19;
            v21 = [objc_opt_class() _convertItemsFromEntities:v19 categoryName:v14 converter:v8 error:a5];
            if (!v21)
            {

LABEL_17:
              v23 = 0;
              v9 = v15;
              v7 = v26;
              v10 = v27;
              goto LABEL_18;
            }

            v22 = v21;
            [v27 addObjectsFromArray:v21];
          }

          v9 = v15;
        }

        v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        v7 = v26;
        v10 = v27;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v23 = v10;
LABEL_18:
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)extractLocaleFromRawSpeechProfile:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:@"language"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v6];
      goto LABEL_13;
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"rawSpeechProfile is missing locale identifier with key: %@", @"language", *MEMORY[0x277CCA068]];
    v17 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = [v10 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v12];
    if (a4 && v13)
    {
      v13 = v13;
      *a4 = v13;
    }
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA068];
    v19[0] = @"rawSpeechProfile is nil or not an instance of NSDictionary.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = [v8 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v6];
    if (a4 && v9)
    {
      v9 = v9;
      *a4 = v9;
    }
  }

  v7 = 0;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

@end