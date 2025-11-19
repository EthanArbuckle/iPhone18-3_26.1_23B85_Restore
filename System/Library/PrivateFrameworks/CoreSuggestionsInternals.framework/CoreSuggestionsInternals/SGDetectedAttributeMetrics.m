@interface SGDetectedAttributeMetrics
+ (id)instance;
+ (id)nameForDataDetectorMatch:(id)a3 withValue:(id)a4;
+ (id)tokenizeMessageContent:(id)a3;
+ (void)recordBirthdayExtractionAccuracy:(unsigned __int8)a3 withOffset:(id)a4 withModelVersion:(id)a5 isFromCongratulation:(unsigned __int8)a6 didRegexTrigger:(unsigned __int8)a7 didResponseKitTrigger:(unsigned __int8)a8;
+ (void)recordExtractionOutcome:(SGMContactDetailExtractionOutcome_)a3 forDetectionsInMessage:(id)a4 signatureRange:(_NSRange)a5 isDDSignature:(BOOL)a6;
+ (void)recordSentContactDetailWithMessage:(id)a3 match:(id)a4 found:(SGMContactDetailFoundIn_)a5;
- (SGDetectedAttributeMetrics)initWithTracker:(id)a3;
@end

@implementation SGDetectedAttributeMetrics

- (SGDetectedAttributeMetrics)initWithTracker:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SGDetectedAttributeMetrics;
  v5 = [(SGDetectedAttributeMetrics *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SGDetectedAttributeMetrics *)v5 setPet2Tracker:v4];
  }

  return v6;
}

+ (void)recordSentContactDetailWithMessage:(id)a3 match:(id)a4 found:(SGMContactDetailFoundIn_)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 senderIsAccountOwner])
  {
    v10 = [v8 textContent];
    v11 = [v9 valueRange];
    v13 = [v10 stringByReplacingCharactersInRange:v11 withString:{v12, @"DDMATCH"}];

    v14 = [a1 tokenizeMessageContent:v13];
    v15 = [v14 count];
    if (v15 <= 1)
    {
      if (!v15)
      {
LABEL_34:

        goto LABEL_35;
      }

      if (v15 == 1)
      {
        v16 = MEMORY[0x277D02398];
        goto LABEL_12;
      }
    }

    else
    {
      if (v15 == 4 || v15 == 3)
      {
        v16 = MEMORY[0x277D023A8];
        goto LABEL_12;
      }

      if (v15 == 2)
      {
        v16 = MEMORY[0x277D023A0];
LABEL_12:
        v42 = *v16;
        v17 = *MEMORY[0x277D02410];
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v18 = v14;
        v19 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v19)
        {
          v20 = v19;
          v39 = a1;
          v40 = v17;
          v38 = v13;
          v21 = *v44;
LABEL_14:
          v22 = 0;
          while (1)
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v43 + 1) + 8 * v22);
            if ([v23 isEqualToString:@"DDMATCH"])
            {
              goto LABEL_21;
            }

            if (([SGNames attributesForNameWord:v23]& 4) != 0)
            {
              break;
            }

            if (v20 == ++v22)
            {
              v20 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
              if (v20)
              {
                goto LABEL_14;
              }

LABEL_21:
              v13 = v38;
              a1 = v39;
              v17 = v40;
              goto LABEL_23;
            }
          }

          v17 = *MEMORY[0x277D02418];
          v13 = v38;
          a1 = v39;
        }

LABEL_23:

        if (*MEMORY[0x277D02270] == a5.var0)
        {
          v24 = objc_autoreleasePoolPush();
          v25 = [v9 valueString];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
          }

          else
          {
            [v8 textContent];
            v28 = v41 = v17;
            v29 = [v9 valueRange];
            v27 = [v28 substringWithRange:{v29, v30}];

            v17 = v41;
          }

          v31 = [a1 nameForDataDetectorMatch:v9 withValue:v27];
          if (v31)
          {
            a5.var0 = *MEMORY[0x277D02288];
          }

          objc_autoreleasePoolPop(v24);
        }

        v32 = objc_opt_new();
        [v32 setSource:*MEMORY[0x277D02330]];
        v33 = [v9 matchType];
        if (v33 > 2)
        {
          v34 = MEMORY[0x277D022B8];
        }

        else
        {
          v34 = qword_27894B638[v33];
        }

        [v32 setDetail:*v34];
        [v32 setFoundIn:a5.var0];
        [v32 setHasName:v17 != 0];
        [v32 setTokens:v42];
        v35 = [a1 instance];
        v36 = [v35 pet2Tracker];
        [v36 trackScalarForMessage:v32];

        goto LABEL_34;
      }
    }

    v16 = MEMORY[0x277D023B0];
    goto LABEL_12;
  }

LABEL_35:

  v37 = *MEMORY[0x277D85DE8];
}

+ (id)tokenizeMessageContent:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 length];
  v6 = *MEMORY[0x277CCA3F0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__SGDetectedAttributeMetrics_tokenizeMessageContent___block_invoke;
  v12[3] = &unk_27894B5F8;
  v7 = v4;
  v13 = v7;
  v14 = v3;
  v8 = v3;
  [v8 enumerateLinguisticTagsInRange:0 scheme:v5 options:v6 orthography:6 usingBlock:{0, v12}];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __53__SGDetectedAttributeMetrics_tokenizeMessageContent___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v7 = *(a1 + 32);
  v8 = objc_autoreleasePoolPush();
  v9 = [*(a1 + 40) substringWithRange:{a3, a4}];
  objc_autoreleasePoolPop(v8);
  [v7 addObject:v9];
}

+ (id)nameForDataDetectorMatch:(id)a3 withValue:(id)a4
{
  v5 = a4;
  v6 = [a3 matchType];
  if (v6 == 2)
  {
    v7 = SGNormalizeEmailAddress();
    v8 = 1;
    goto LABEL_5;
  }

  if (!v6)
  {
    v7 = SGNormalizePhoneNumber();
    v8 = 0;
LABEL_5:
    v9 = +[SGSqlEntityStore defaultHarvestStore];
    v10 = [v9 kvCacheManager];
    v11 = [v10 cacheOfType:v8];

    v12 = [v11 valueForKey:v7];

    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

+ (void)recordBirthdayExtractionAccuracy:(unsigned __int8)a3 withOffset:(id)a4 withModelVersion:(id)a5 isFromCongratulation:(unsigned __int8)a6 didRegexTrigger:(unsigned __int8)a7 didResponseKitTrigger:(unsigned __int8)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a3;
  v22 = a5;
  v14 = a4;
  v15 = objc_opt_new();
  [v15 setDateIsCorrect:v12 != 0];
  [v15 setIsFromCongratulation:v10 != 0];
  v16 = [v15 StringAsOffset:v14];

  [v15 setOffset:v16];
  [v15 setDidRegexTrigger:v9 != 0];
  if (v22)
  {
    [v15 setModelVersion:{objc_msgSend(v22, "unsignedIntValue")}];
  }

  [v15 setDidResponseKitTrigger:v8 != 0];
  v17 = [a1 instance];
  v18 = [v17 pet2Tracker];
  [v18 trackScalarForMessage:v15];

  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v20 = [v19 initWithFormat:@"%@.%@", *MEMORY[0x277D02468], @"birthdaySupervision"];
  v21 = [v15 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (void)recordExtractionOutcome:(SGMContactDetailExtractionOutcome_)a3 forDetectionsInMessage:(id)a4 signatureRange:(_NSRange)a5 isDDSignature:(BOOL)a6
{
  v23 = a6;
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4;
  [v8 plainTextDetectedData];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = v27 = 0u;
  v9 = [v21 reverseObjectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x277D022B8];
    v13 = *v25;
    v14 = *MEMORY[0x277D022B8];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 matchType];
        v18 = v12;
        if (v17 <= 2)
        {
          v18 = qword_27894B638[v17];
        }

        if (*v18 != v14)
        {
          v30.location = [v16 range];
          LOBYTE(v20) = 0;
          [a1 recordExtractionOutcome:a3.var0 fromMessage:v8 foundInSignature:NSIntersectionRange(v30 isDDSignature:a5).length != 0 match:v23 modelVersion:v16 isUnlikelyPhone:{&unk_284749248, v20}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)instance
{
  if (instance_onceToken != -1)
  {
    dispatch_once(&instance_onceToken, &__block_literal_global_3552);
  }

  v3 = instance__instance;

  return v3;
}

void __38__SGDetectedAttributeMetrics_instance__block_invoke()
{
  v0 = [SGDetectedAttributeMetrics alloc];
  v3 = [MEMORY[0x277D41DA8] sharedInstance];
  v1 = [(SGDetectedAttributeMetrics *)v0 initWithTracker:v3];
  v2 = instance__instance;
  instance__instance = v1;
}

@end