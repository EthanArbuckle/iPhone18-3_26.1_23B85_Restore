@interface SGQuickResponsesToRobots
+ (BOOL)insignificantSender:(id)sender;
+ (BOOL)presentInContext:(id)context context:(id)a4 startIdx:(int64_t)idx endIdx:(int64_t)endIdx;
+ (float)allCapsRatio:(id)ratio;
+ (id)contactStore;
+ (id)repliesToRobot:(id)robot language:(id)language recipients:(id)recipients;
+ (id)repliesToRobot:(id)robot language:(id)language recipients:(id)recipients config:(id)config;
+ (void)warmup;
@end

@implementation SGQuickResponsesToRobots

+ (id)repliesToRobot:(id)robot language:(id)language recipients:(id)recipients config:(id)config
{
  v62 = *MEMORY[0x277D85DE8];
  robotCopy = robot;
  languageCopy = language;
  recipientsCopy = recipients;
  configCopy = config;
  if (!configCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesToRobots.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"config"}];
  }

  if (([configCopy enableFeature] & 1) == 0)
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

  if (!recipientsCopy)
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

  if (([languageCopy isEqualToString:@"en"] & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_50;
    }

    *buf = 138412290;
    v61 = languageCopy;
    v45 = MEMORY[0x277D86220];
    v46 = "SGQuickResponsesToRobots: Not running replies to robots for language %@";
    v47 = 12;
    goto LABEL_48;
  }

  alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v16 = [SGStringSplitter splitString:robotCopy withCharacterSet:alphanumericCharacterSet];

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

  selfCopy = self;
  v53 = recipientsCopy;
  v54 = robotCopy;
  v17 = 0;
  v18 = 0;
  v19 = v58;
  v56 = languageCopy;
  do
  {
    v20 = objc_autoreleasePoolPush();
    supportedKeysAndContext = [configCopy supportedKeysAndContext];
    v22 = [v16 objectAtIndexedSubscript:v17];
    v23 = [supportedKeysAndContext objectForKeyedSubscript:v22];

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
          triggerWords = [configCopy triggerWords];
          v18 = [selfCopy presentInContext:v16 context:triggerWords startIdx:v17 - objc_msgSend(configCopy endIdx:{"triggerContext"), v17}];
        }

        if ([configCopy relaxContext])
        {
          v27 = 0;
          v28 = 0;
LABEL_28:
          relaxContext = [configCopy relaxContext];
          if ((v28 & 1) == 0 && (relaxContext & 1) == 0)
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
          v38 = [SGQuickResponse initWithText:v36 lang:"initWithText:lang:replyTextId:styleGroupId:semanticClassId:modelId:categoryId:isCustomResponse:isRobotResponse:isConfident:" replyTextId:v37 styleGroupId:languageCopy semanticClassId:-1 modelId:-1 categoryId:-1 isCustomResponse:-1 isRobotResponse:-1 isConfident:v52];
          [v57 addObject:v38];

          goto LABEL_34;
        }

        if ([configCopy useGeneralContext])
        {
          generalContextWords = [configCopy generalContextWords];
          v30 = v17 + 1;
          v31 = [selfCopy presentInContext:v16 context:generalContextWords startIdx:v17 + 1 endIdx:{v17 + 1 + objc_msgSend(configCopy, "generalContextRight")}];

          if (v31)
          {
            [configCopy relaxContext];
            goto LABEL_32;
          }
        }

        else
        {
          v30 = v17 + 1;
        }

        v32 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v23];
        v28 = [selfCopy presentInContext:v16 context:v32 startIdx:v30 endIdx:{v30 + objc_msgSend(configCopy, "rightContext")}];
        if (v28)
        {
          v27 = 0;
LABEL_27:

          languageCopy = v56;
          goto LABEL_28;
        }

        useGeneralContext = [configCopy useGeneralContext];
        if (useGeneralContext && ([configCopy generalContextWords], v55 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(selfCopy, "presentInContext:context:startIdx:endIdx:", v16, v55, v17 - objc_msgSend(configCopy, "generalContextLeft"), v17) & 1) != 0))
        {
          v27 = 1;
        }

        else
        {
          v27 = [selfCopy presentInContext:v16 context:v32 startIdx:v17 - objc_msgSend(configCopy endIdx:{"leftContext"), v17}];
          if (!useGeneralContext)
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
    recipientsCopy = v53;
    if ([v57 count])
    {
      if ([configCopy insignificantSender] && (objc_msgSend(selfCopy, "insignificantSender:", v53) & 1) == 0)
      {
        robotCopy = v54;
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
        [configCopy capsWordsRatioMax];
        robotCopy = v54;
        if (v39 < 1.0)
        {
          [SGQuickResponsesToRobots allCapsRatio:v16];
          v41 = v40;
          [configCopy capsWordsRatioMax];
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
      robotCopy = v54;
    }
  }

  else
  {
    v48 = 0;
    recipientsCopy = v53;
    robotCopy = v54;
  }

LABEL_64:
LABEL_51:

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

+ (id)repliesToRobot:(id)robot language:(id)language recipients:(id)recipients
{
  robotCopy = robot;
  languageCopy = language;
  recipientsCopy = recipients;
  v10 = objc_autoreleasePoolPush();
  v11 = +[SGQuickResponsesToRobotsConfig sharedInstance];
  if (v11)
  {
    v12 = [SGQuickResponsesToRobots repliesToRobot:robotCopy language:languageCopy recipients:recipientsCopy config:v11];
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

+ (BOOL)presentInContext:(id)context context:(id)a4 startIdx:(int64_t)idx endIdx:(int64_t)endIdx
{
  contextCopy = context;
  v10 = a4;
  v11 = idx & ~(idx >> 63);
  if ([contextCopy count] <= endIdx)
  {
    endIdx = [contextCopy count];
  }

  if (v11 >= endIdx)
  {
    v15 = 0;
  }

  else
  {
    v12 = [contextCopy objectAtIndexedSubscript:v11];
    lowercaseString = [v12 lowercaseString];
    v14 = [v10 containsObject:lowercaseString];

    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v16 = v11 + 1;
      while (endIdx != v16)
      {
        v17 = [contextCopy objectAtIndexedSubscript:v16];
        lowercaseString2 = [v17 lowercaseString];
        v19 = [v10 containsObject:lowercaseString2];

        ++v16;
        if (v19)
        {
          endIdxCopy = v16 - 1;
          goto LABEL_12;
        }
      }

      endIdxCopy = endIdx;
LABEL_12:
      v15 = endIdxCopy < endIdx;
    }
  }

  return v15;
}

+ (float)allCapsRatio:(id)ratio
{
  ratioCopy = ratio;
  if ([ratioCopy count])
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v6 = [ratioCopy objectAtIndexedSubscript:v4];
      uppercaseString = [v6 uppercaseString];
      v8 = [ratioCopy objectAtIndexedSubscript:v4];
      v9 = [uppercaseString isEqualToString:v8];

      if (v9)
      {
        v5 = v5 + 1.0;
      }

      ++v4;
    }

    while (v4 < [ratioCopy count]);
  }

  else
  {
    v5 = 0.0;
  }

  v10 = v5 / [ratioCopy count];

  return v10;
}

+ (BOOL)insignificantSender:(id)sender
{
  v31[1] = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  v5 = senderCopy;
  if (senderCopy && [senderCopy count] == 1)
  {
    firstObject = [v5 firstObject];
    v7 = [firstObject rangeOfString:@"@"];
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
      v12 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:firstObject];
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v12];

LABEL_14:
        v31[0] = *MEMORY[0x277CBD018];
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
        contactStore = [self contactStore];
        v26 = 0;
        v18 = [contactStore unifiedContactsMatchingPredicate:v14 keysToFetch:v16 error:&v26];
        v19 = v26;
        firstObject2 = [v18 firstObject];

        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v28 = firstObject;
            v29 = 2112;
            v30 = v19;
            _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGQuickResponsesToRobots: Error fetching contact with %@: %@", buf, 0x16u);
          }

          v15 = 0;
        }

        else
        {
          v15 = firstObject2 == 0;
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
        v14 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:firstObject];
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesToRobots.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"repliesToRobotsConfig"}];

    v4 = 0;
  }
}

@end