@interface SGQuickResponsesToRobots
+ (BOOL)insignificantSender:(id)a3;
+ (BOOL)presentInContext:(id)a3 context:(id)a4 startIdx:(int64_t)a5 endIdx:(int64_t)a6;
+ (float)allCapsRatio:(id)a3;
+ (id)contactStore;
+ (id)repliesToRobot:(id)a3 language:(id)a4 recipients:(id)a5;
+ (id)repliesToRobot:(id)a3 language:(id)a4 recipients:(id)a5 config:(id)a6;
+ (void)warmup;
@end

@implementation SGQuickResponsesToRobots

+ (id)repliesToRobot:(id)a3 language:(id)a4 recipients:(id)a5 config:(id)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v51 = [MEMORY[0x277CCA890] currentHandler];
    [v51 handleFailureInMethod:a2 object:a1 file:@"SGQuickResponsesToRobots.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"config"}];
  }

  if (([v14 enableFeature] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v45 = MEMORY[0x277D86220];
      v46 = "SGQuickResponsesToRobots: Replies to robots feature disabled";
LABEL_47:
      v47 = 2;
LABEL_48:
      _os_log_debug_impl(&dword_24799E000, v45, OS_LOG_TYPE_DEBUG, v46, buf, v47);
    }

LABEL_50:
    v48 = 0;
    goto LABEL_51;
  }

  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v45 = MEMORY[0x277D86220];
      v46 = "SGQuickResponsesToRobots: Not running replies to robots if recipients is nil";
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  if (([v12 isEqualToString:@"en"] & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_50;
    }

    *buf = 138412290;
    v61 = v12;
    v45 = MEMORY[0x277D86220];
    v46 = "SGQuickResponsesToRobots: Not running replies to robots for language %@";
    v47 = 12;
    goto LABEL_48;
  }

  v15 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v16 = [SGStringSplitter splitString:v11 withCharacterSet:v15];

  if (![v16 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGQuickResponsesToRobots: Can't reply to empty message", buf, 2u);
    }

    v48 = 0;
    goto LABEL_64;
  }

  v58 = objc_opt_new();
  v57 = objc_opt_new();
  if (![v16 count])
  {
    goto LABEL_62;
  }

  v59 = a1;
  v53 = v13;
  v54 = v11;
  v17 = 0;
  v18 = 0;
  v19 = v58;
  v56 = v12;
  do
  {
    v20 = objc_autoreleasePoolPush();
    v21 = [v14 supportedKeysAndContext];
    v22 = [v16 objectAtIndexedSubscript:v17];
    v23 = [v21 objectForKeyedSubscript:v22];

    if (v23)
    {
      v24 = [v16 objectAtIndexedSubscript:v17];
      v25 = [v19 containsObject:v24];

      if ((v25 & 1) == 0)
      {
        if (v18)
        {
          v18 = 1;
        }

        else
        {
          v26 = [v14 triggerWords];
          v18 = [v59 presentInContext:v16 context:v26 startIdx:v17 - objc_msgSend(v14 endIdx:{"triggerContext"), v17}];
        }

        if ([v14 relaxContext])
        {
          v27 = 0;
          v28 = 0;
LABEL_28:
          v34 = [v14 relaxContext];
          if ((v28 & 1) == 0 && (v34 & 1) == 0)
          {
            v19 = v58;
            if (!v27)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }

LABEL_32:
          v19 = v58;
LABEL_33:
          v35 = [v16 objectAtIndexedSubscript:v17];
          [v19 addObject:v35];

          v36 = [SGQuickResponse alloc];
          v37 = [v16 objectAtIndexedSubscript:v17];
          BYTE2(v52) = 1;
          LOWORD(v52) = 256;
          v38 = [SGQuickResponse initWithText:v36 lang:"initWithText:lang:replyTextId:styleGroupId:semanticClassId:modelId:categoryId:isCustomResponse:isRobotResponse:isConfident:" replyTextId:v37 styleGroupId:v12 semanticClassId:-1 modelId:-1 categoryId:-1 isCustomResponse:-1 isRobotResponse:-1 isConfident:v52];
          [v57 addObject:v38];

          goto LABEL_34;
        }

        if ([v14 useGeneralContext])
        {
          v29 = [v14 generalContextWords];
          v30 = v17 + 1;
          v31 = [v59 presentInContext:v16 context:v29 startIdx:v17 + 1 endIdx:{v17 + 1 + objc_msgSend(v14, "generalContextRight")}];

          if (v31)
          {
            [v14 relaxContext];
            goto LABEL_32;
          }
        }

        else
        {
          v30 = v17 + 1;
        }

        v32 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v23];
        v28 = [v59 presentInContext:v16 context:v32 startIdx:v30 endIdx:{v30 + objc_msgSend(v14, "rightContext")}];
        if (v28)
        {
          v27 = 0;
LABEL_27:

          v12 = v56;
          goto LABEL_28;
        }

        v33 = [v14 useGeneralContext];
        if (v33 && ([v14 generalContextWords], v55 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v59, "presentInContext:context:startIdx:endIdx:", v16, v55, v17 - objc_msgSend(v14, "generalContextLeft"), v17) & 1) != 0))
        {
          v27 = 1;
        }

        else
        {
          v27 = [v59 presentInContext:v16 context:v32 startIdx:v17 - objc_msgSend(v14 endIdx:{"leftContext"), v17}];
          if (!v33)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_27;
      }
    }

LABEL_34:

    objc_autoreleasePoolPop(v20);
    ++v17;
  }

  while ([v16 count] > v17);
  if (v18)
  {
    v13 = v53;
    if ([v57 count])
    {
      if ([v14 insignificantSender] && (objc_msgSend(v59, "insignificantSender:", v53) & 1) == 0)
      {
        v11 = v54;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v43 = MEMORY[0x277D86220];
          v44 = "SGQuickResponsesToRobots: Not running replies to robots for significant sender";
LABEL_66:
          _os_log_debug_impl(&dword_24799E000, v43, OS_LOG_TYPE_DEBUG, v44, buf, 2u);
        }

LABEL_62:
        v48 = 0;
      }

      else
      {
        [v14 capsWordsRatioMax];
        v11 = v54;
        if (v39 < 1.0)
        {
          [SGQuickResponsesToRobots allCapsRatio:v16];
          v41 = v40;
          [v14 capsWordsRatioMax];
          if (v41 > v42)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              v43 = MEMORY[0x277D86220];
              v44 = "SGQuickResponsesToRobots: Capital words threshold condition not met";
              goto LABEL_66;
            }

            goto LABEL_62;
          }
        }

        v48 = v57;
      }
    }

    else
    {
      v48 = 0;
      v11 = v54;
    }
  }

  else
  {
    v48 = 0;
    v13 = v53;
    v11 = v54;
  }

LABEL_64:
LABEL_51:

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

+ (id)repliesToRobot:(id)a3 language:(id)a4 recipients:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = +[SGQuickResponsesToRobotsConfig sharedInstance];
  if (v11)
  {
    v12 = [SGQuickResponsesToRobots repliesToRobot:v7 language:v8 recipients:v9 config:v11];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGQuickResponsesToRobots: Could not load assets for making replies to robots prediction", v14, 2u);
    }

    v12 = 0;
  }

  objc_autoreleasePoolPop(v10);

  return v12;
}

+ (BOOL)presentInContext:(id)a3 context:(id)a4 startIdx:(int64_t)a5 endIdx:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5 & ~(a5 >> 63);
  if ([v9 count] <= a6)
  {
    a6 = [v9 count];
  }

  if (v11 >= a6)
  {
    v15 = 0;
  }

  else
  {
    v12 = [v9 objectAtIndexedSubscript:v11];
    v13 = [v12 lowercaseString];
    v14 = [v10 containsObject:v13];

    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v16 = v11 + 1;
      while (a6 != v16)
      {
        v17 = [v9 objectAtIndexedSubscript:v16];
        v18 = [v17 lowercaseString];
        v19 = [v10 containsObject:v18];

        ++v16;
        if (v19)
        {
          v20 = v16 - 1;
          goto LABEL_12;
        }
      }

      v20 = a6;
LABEL_12:
      v15 = v20 < a6;
    }
  }

  return v15;
}

+ (float)allCapsRatio:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v4];
      v7 = [v6 uppercaseString];
      v8 = [v3 objectAtIndexedSubscript:v4];
      v9 = [v7 isEqualToString:v8];

      if (v9)
      {
        v5 = v5 + 1.0;
      }

      ++v4;
    }

    while (v4 < [v3 count]);
  }

  else
  {
    v5 = 0.0;
  }

  v10 = v5 / [v3 count];

  return v10;
}

+ (BOOL)insignificantSender:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = [v6 rangeOfString:@"@"];
    v8 = *MEMORY[0x277CBD098];
    v9 = *MEMORY[0x277CBCFC0];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = *MEMORY[0x277CBD098];
    }

    else
    {
      v10 = *MEMORY[0x277CBCFC0];
    }

    v11 = v10;
    if ([v11 isEqualToString:v8])
    {
      v12 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v6];
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v12];

LABEL_14:
        v31[0] = *MEMORY[0x277CBD018];
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
        v17 = [a1 contactStore];
        v26 = 0;
        v18 = [v17 unifiedContactsMatchingPredicate:v14 keysToFetch:v16 error:&v26];
        v19 = v26;
        v20 = [v18 firstObject];

        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v28 = v6;
            v29 = 2112;
            v30 = v19;
            _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGQuickResponsesToRobots: Error fetching contact with %@: %@", buf, 0x16u);
          }

          v15 = 0;
        }

        else
        {
          v15 = v20 == 0;
        }

        goto LABEL_24;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v21 = MEMORY[0x277D86220];
      v22 = "SGQuickResponsesToRobots: CNPhoneNumber initWithStringValue returned nil";
      v23 = 2;
    }

    else
    {
      if ([v11 isEqualToString:v9])
      {
        v14 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v6];
        goto LABEL_14;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_23:
        v15 = 0;
LABEL_24:

        goto LABEL_25;
      }

      *buf = 138412290;
      v28 = v11;
      v21 = MEMORY[0x277D86220];
      v22 = "Unsupported handleType: %@";
      v23 = 12;
    }

    _os_log_error_impl(&dword_24799E000, v21, OS_LOG_TYPE_ERROR, v22, buf, v23);
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGQuickResponsesToRobots: Either 0 or more than 1 recipient found.", buf, 2u);
  }

  v15 = 0;
LABEL_25:

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)contactStore
{
  if (contactStore_onceToken != -1)
  {
    dispatch_once(&contactStore_onceToken, &__block_literal_global_1554);
  }

  v3 = contactStore__instance;

  return v3;
}

uint64_t __40__SGQuickResponsesToRobots_contactStore__block_invoke()
{
  contactStore__instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (void)warmup
{
  v4 = +[SGQuickResponsesToRobotsConfig sharedInstance];
  if (!v4)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:a1 file:@"SGQuickResponsesToRobots.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"repliesToRobotsConfig"}];

    v4 = 0;
  }
}

@end