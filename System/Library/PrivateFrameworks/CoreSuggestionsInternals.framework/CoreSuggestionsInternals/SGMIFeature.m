@interface SGMIFeature
+ (id)allFeaturePrettyNames;
+ (id)prettyName:(int64_t)a3;
+ (id)prettyNamesReverseMapping;
+ (id)submodeledFeatures;
+ (int64_t)featureTypeForName:(int64_t)a3;
- (BOOL)BOOLValue;
- (SGMIFeature)initWithFeatureName:(int64_t)a3;
- (SGMIFeature)initWithFeatureName:(int64_t)a3 numberArrayValue:(id)a4;
- (SGMIFeature)initWithFeatureName:(int64_t)a3 numberValue:(id)a4;
- (SGMIFeature)initWithFeatureName:(int64_t)a3 stringArrayValue:(id)a4;
- (SGMIFeature)initWithFeatureName:(int64_t)a3 stringValue:(id)a4;
- (double)doubleValue;
- (float)floatValue;
- (id)description;
- (id)stringArrayRepresentation;
- (int)intValue;
- (int64_t)integerValue;
@end

@implementation SGMIFeature

- (int64_t)integerValue
{
  v3 = [(SGMIFeature *)self numberValue];

  if (!v3)
  {
    v4 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_231E60000, v4, OS_LOG_TYPE_FAULT, "Error accessing integerValue. numberValue is nil", v8, 2u);
    }
  }

  v5 = [(SGMIFeature *)self numberValue];
  v6 = [v5 integerValue];

  return v6;
}

- (int)intValue
{
  v3 = [(SGMIFeature *)self numberValue];

  if (!v3)
  {
    v4 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_231E60000, v4, OS_LOG_TYPE_FAULT, "Error accessing intValue. numberValue is nil", v8, 2u);
    }
  }

  v5 = [(SGMIFeature *)self numberValue];
  v6 = [v5 intValue];

  return v6;
}

- (double)doubleValue
{
  v3 = [(SGMIFeature *)self numberValue];

  if (!v3)
  {
    v4 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_231E60000, v4, OS_LOG_TYPE_FAULT, "Error accessing doubleValue. numberValue is nil", v9, 2u);
    }
  }

  v5 = [(SGMIFeature *)self numberValue];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (float)floatValue
{
  v3 = [(SGMIFeature *)self numberValue];

  if (!v3)
  {
    v4 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_231E60000, v4, OS_LOG_TYPE_FAULT, "Error accessing floatValue. numberValue is nil", v9, 2u);
    }
  }

  v5 = [(SGMIFeature *)self numberValue];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (BOOL)BOOLValue
{
  v3 = [(SGMIFeature *)self numberValue];

  if (!v3)
  {
    v4 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_231E60000, v4, OS_LOG_TYPE_FAULT, "Error accessing BOOLValue. numberValue is nil", v8, 2u);
    }
  }

  v5 = [(SGMIFeature *)self numberValue];
  v6 = [v5 BOOLValue];

  return v6;
}

- (id)description
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(SGMIFeature *)self featureType];
  v4 = 0;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = @"None";
      goto LABEL_20;
    }

    if (v3 != 1)
    {
      goto LABEL_20;
    }

    v8 = [(SGMIFeature *)self numberValue];
    v4 = [v8 stringValue];
LABEL_17:

    goto LABEL_20;
  }

  switch(v3)
  {
    case 2:
      v8 = objc_opt_new();
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = [(SGMIFeature *)self numberArrayValue];
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v22 + 1) + 8 * i) stringValue];
            [v8 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v11);
      }

      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v16 = [v8 _pas_componentsJoinedByString:{@", "}];
      v4 = [v15 initWithFormat:@"[%@]", v16];

      goto LABEL_17;
    case 3:
      v4 = [(SGMIFeature *)self stringValue];
      break;
    case 4:
      v5 = objc_alloc(MEMORY[0x277CCACA8]);
      v6 = [(SGMIFeature *)self stringArrayValue];
      v7 = [v6 _pas_componentsJoinedByString:{@", "}];
      v4 = [v5 initWithFormat:@"[%@]", v7];

      break;
  }

LABEL_20:
  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = [SGMIFeature prettyName:[(SGMIFeature *)self featureName]];
  v19 = [v17 initWithFormat:@"%@: %@", v18, v4];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)stringArrayRepresentation
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(SGMIFeature *)self featureType];
  v4 = MEMORY[0x277CBEBF8];
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v5 = [(SGMIFeature *)self numberArrayValue];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __40__SGMIFeature_stringArrayRepresentation__block_invoke;
        v10[3] = &unk_27894EB88;
        v10[4] = self;
        v4 = [v5 _pas_mappedArrayWithTransform:v10];
      }

      goto LABEL_11;
    }

    v6 = [(SGMIFeature *)self numberValue];
    v7 = [v6 stringValue];
    v12[0] = v7;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

LABEL_10:
    goto LABEL_11;
  }

  if (v3 == 3)
  {
    v6 = [(SGMIFeature *)self stringValue];
    v11 = v6;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    goto LABEL_10;
  }

  if (v3 == 4)
  {
    v4 = [(SGMIFeature *)self stringArrayValue];
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (SGMIFeature)initWithFeatureName:(int64_t)a3 stringArrayValue:(id)a4
{
  v7 = a4;
  v8 = [(SGMIFeature *)self initWithFeatureName:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stringArrayValue, a4);
  }

  return v9;
}

- (SGMIFeature)initWithFeatureName:(int64_t)a3 stringValue:(id)a4
{
  v7 = a4;
  v8 = [(SGMIFeature *)self initWithFeatureName:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stringValue, a4);
  }

  return v9;
}

- (SGMIFeature)initWithFeatureName:(int64_t)a3 numberArrayValue:(id)a4
{
  v7 = a4;
  v8 = [(SGMIFeature *)self initWithFeatureName:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_numberArrayValue, a4);
  }

  return v9;
}

- (SGMIFeature)initWithFeatureName:(int64_t)a3 numberValue:(id)a4
{
  v7 = a4;
  v8 = [(SGMIFeature *)self initWithFeatureName:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_numberValue, a4);
  }

  return v9;
}

- (SGMIFeature)initWithFeatureName:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SGMIFeature;
  v4 = [(SGMIFeature *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_featureName = a3;
    v4->_featureType = [SGMIFeature featureTypeForName:a3];
  }

  return v5;
}

+ (id)prettyNamesReverseMapping
{
  if (prettyNamesReverseMapping__pasOnceToken3 != -1)
  {
    dispatch_once(&prettyNamesReverseMapping__pasOnceToken3, &__block_literal_global_268_19900);
  }

  v3 = prettyNamesReverseMapping__pasExprOnceResult;

  return v3;
}

void __40__SGMIFeature_prettyNamesReverseMapping__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = +[SGMIFeature allFeatureNames];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__SGMIFeature_prettyNamesReverseMapping__block_invoke_2;
  v6[3] = &unk_27894EB60;
  v7 = v1;
  v3 = v1;
  [v2 enumerateObjectsUsingBlock:v6];

  v4 = [v3 copy];
  v5 = prettyNamesReverseMapping__pasExprOnceResult;
  prettyNamesReverseMapping__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
}

void __40__SGMIFeature_prettyNamesReverseMapping__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[SGMIFeature prettyName:](SGMIFeature, "prettyName:", [v3 intValue]);
  [v2 setObject:v3 forKeyedSubscript:v4];
}

+ (id)allFeaturePrettyNames
{
  v2 = +[SGMIFeature allFeatureNames];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_266_19904];

  return v3;
}

id __36__SGMIFeature_allFeaturePrettyNames__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 intValue];

  return [SGMIFeature prettyName:v2];
}

+ (id)prettyName:(int64_t)a3
{
  v3 = @"None";
  if (a3 <= 2006)
  {
    if (a3 > 1003)
    {
      if (a3 > 1999)
      {
        v4 = @"PrivateSortedToRecipients";
        v15 = @"PrivateToRecipientsPairs";
        v16 = @"PrivateSortedCCRecipients";
        if (a3 != 2006)
        {
          v16 = @"None";
        }

        if (a3 != 2005)
        {
          v15 = v16;
        }

        if (a3 != 2004)
        {
          v4 = v15;
        }

        if (a3 == 2003)
        {
          v3 = @"PrivateSenderFrom";
        }

        if (a3 == 2001)
        {
          v3 = @"PrivateTokenizedSubject";
        }

        if (a3 == 2000)
        {
          v3 = @"PrivateSubject";
        }

        v7 = a3 <= 2003;
      }

      else
      {
        v4 = @"ListIdProbability";
        v9 = @"ConversationIdProbability";
        v10 = @"PredictedAttachment";
        if (a3 != 1100)
        {
          v10 = @"None";
        }

        if (a3 != 1008)
        {
          v9 = v10;
        }

        if (a3 != 1007)
        {
          v4 = v9;
        }

        if (a3 == 1006)
        {
          v3 = @"AttachmentHistogramProbability";
        }

        if (a3 == 1005)
        {
          v3 = @"PersonFromSenderInDyadicConversationProbability";
        }

        if (a3 == 1004)
        {
          v3 = @"DomainFromSenderProbability";
        }

        v7 = a3 <= 1006;
      }
    }

    else if (a3 > 6)
    {
      v4 = @"PersonToRecipientsProbability";
      v13 = @"PersonCCRecipientsProbability";
      v14 = @"SubjectContentProbability";
      if (a3 != 1003)
      {
        v14 = @"None";
      }

      if (a3 != 1002)
      {
        v13 = v14;
      }

      if (a3 != 1001)
      {
        v4 = v13;
      }

      if (a3 == 1000)
      {
        v3 = @"PersonFromSenderProbability";
      }

      if (a3 == 8)
      {
        v3 = @"EmailAgeInDays";
      }

      if (a3 == 7)
      {
        v3 = @"SenderConnectionScore";
      }

      v7 = a3 <= 1000;
    }

    else
    {
      v4 = @"AttachmentHistogramMedia";
      v5 = @"AttachmentHistogramApplication";
      v6 = @"AttachmentHistogramOthers";
      if (a3 != 6)
      {
        v6 = @"None";
      }

      if (a3 != 5)
      {
        v5 = v6;
      }

      if (a3 != 4)
      {
        v4 = v5;
      }

      if (a3 == 3)
      {
        v3 = @"SenderIsVIP";
      }

      if (a3 == 2)
      {
        v3 = @"SubjectWordCount";
      }

      if (a3 == 1)
      {
        v3 = @"SubjectLength";
      }

      v7 = a3 <= 3;
    }

LABEL_73:
    if (v7)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  if (a3 <= 2100)
  {
    v4 = @"PrivateAttachmentHistogram";
    v11 = @"PrivateListId";
    v12 = @"PrivateConversationId";
    if (a3 != 2016)
    {
      v12 = @"None";
    }

    if (a3 != 2015)
    {
      v11 = v12;
    }

    if (a3 != 2012)
    {
      v4 = v11;
    }

    if (a3 == 2011)
    {
      v3 = @"PrivateSenderFromInDyadicConversation";
    }

    if (a3 == 2010)
    {
      v3 = @"SenderFullEmailDomain";
    }

    if (a3 == 2007)
    {
      v3 = @"PrivateCCRecipientsPairs";
    }

    v7 = a3 <= 2011;
    goto LABEL_73;
  }

  switch(a3)
  {
    case 3000:
      result = @"ScrolledToEnd";
      break;
    case 3001:
      result = @"UserReplied";
      break;
    case 3002:
      result = @"NumberOfMailsViewedBeforeSinceAvailable";
      break;
    case 3003:
      result = @"TimeBeforeViewStartSinceAvailable";
      break;
    case 3004:
      result = @"MessageViewCount";
      break;
    case 3005:
      result = @"MessageViewMaxDwellTime";
      break;
    case 3006:
      result = @"MessageViewTotalDwellTime";
      break;
    case 3007:
      result = @"NumberOfUnreadMessageAtFirstViewTime";
      break;
    case 3008:
      result = @"NumberOfMoreRecentUnreadMessageAtFirstViewTime";
      break;
    case 3009:
      result = @"MarkedAsRead";
      break;
    case 3010:
      result = @"MarkedAsUnread";
      break;
    case 3011:
      result = @"MailGotFlagged";
      break;
    case 3012:
      result = @"ReplyDraftStarted";
      break;
    case 3013:
      result = @"ForwardDraftStarted";
      break;
    case 3014:
      result = @"MarkedAsJunk";
      break;
    case 3015:
      result = @"LinkClicked";
      break;
    default:
      if (a3 == 2102)
      {
        v3 = @"PrivateHTMLBodyTextContentLanguageIdentifier";
      }

      if (a3 == 2101)
      {
        result = @"PrivateHTMLBodyTextContent";
      }

      else
      {
        result = v3;
      }

      break;
  }

  return result;
}

+ (id)submodeledFeatures
{
  if (submodeledFeatures__pasOnceToken2 != -1)
  {
    dispatch_once(&submodeledFeatures__pasOnceToken2, &__block_literal_global_20058);
  }

  v3 = submodeledFeatures__pasExprOnceResult;

  return v3;
}

void __33__SGMIFeature_submodeledFeatures__block_invoke()
{
  v13[9] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = [[SGMIFeatureSubmodelLink alloc] initFor:1000 fromUnigram:2003 andBigram:0];
  v2 = [[SGMIFeatureSubmodelLink alloc] initFor:1004 fromUnigram:2010 andBigram:0, v1];
  v13[1] = v2;
  v3 = [[SGMIFeatureSubmodelLink alloc] initFor:1003 fromUnigram:2001 andBigram:0];
  v13[2] = v3;
  v4 = [[SGMIFeatureSubmodelLink alloc] initFor:1001 fromUnigram:2004 andBigram:2005];
  v13[3] = v4;
  v5 = [[SGMIFeatureSubmodelLink alloc] initFor:1002 fromUnigram:2006 andBigram:2007];
  v13[4] = v5;
  v6 = [[SGMIFeatureSubmodelLink alloc] initFor:1005 fromUnigram:2011 andBigram:0];
  v13[5] = v6;
  v7 = [[SGMIFeatureSubmodelLink alloc] initFor:1006 fromUnigram:2012 andBigram:0];
  v13[6] = v7;
  v8 = [[SGMIFeatureSubmodelLink alloc] initFor:1008 fromUnigram:2016 andBigram:0];
  v13[7] = v8;
  v9 = [[SGMIFeatureSubmodelLink alloc] initFor:1007 fromUnigram:2015 andBigram:0];
  v13[8] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:9];
  v11 = submodeledFeatures__pasExprOnceResult;
  submodeledFeatures__pasExprOnceResult = v10;

  objc_autoreleasePoolPop(v0);
  v12 = *MEMORY[0x277D85DE8];
}

+ (int64_t)featureTypeForName:(int64_t)a3
{
  if (a3 <= 2006)
  {
    if (a3 > 1003)
    {
      v3 = 4;
      v14 = 4;
      v15 = 4;
      if (a3 != 2006)
      {
        v15 = 0;
      }

      if (a3 != 2005)
      {
        v14 = v15;
      }

      if (a3 != 2004)
      {
        v3 = v14;
      }

      v16 = 3;
      v17 = 4;
      v18 = 3;
      if (a3 != 2003)
      {
        v18 = 0;
      }

      if (a3 != 2001)
      {
        v17 = v18;
      }

      if (a3 != 2000)
      {
        v16 = v17;
      }

      if (a3 <= 2003)
      {
        v3 = v16;
      }

      v7 = 1;
      v19 = 1;
      if (a3 != 1008)
      {
        v19 = a3 == 1100;
      }

      if (a3 != 1007)
      {
        v7 = v19;
      }

      v20 = 1;
      v21 = 1;
      if (a3 != 1005)
      {
        v21 = a3 == 1006;
      }

      if (a3 != 1004)
      {
        v20 = v21;
      }

      if (a3 <= 1006)
      {
        v7 = v20;
      }

      v12 = a3 <= 1999;
    }

    else
    {
      v3 = 1;
      v4 = 1;
      if (a3 != 1002)
      {
        v4 = a3 == 1003;
      }

      if (a3 != 1001)
      {
        v3 = v4;
      }

      v5 = 1;
      v6 = 1;
      if (a3 != 8)
      {
        v6 = a3 == 1000;
      }

      if (a3 != 7)
      {
        v5 = v6;
      }

      if (a3 <= 1000)
      {
        v3 = v5;
      }

      v7 = 2;
      v8 = 2;
      v9 = 2;
      if (a3 != 6)
      {
        v9 = 0;
      }

      if (a3 != 5)
      {
        v8 = v9;
      }

      if (a3 != 4)
      {
        v7 = v8;
      }

      v10 = 1;
      v11 = 1;
      if (a3 != 2)
      {
        v11 = a3 == 3;
      }

      if (a3 != 1)
      {
        v10 = v11;
      }

      if (a3 <= 3)
      {
        v7 = v10;
      }

      v12 = a3 <= 6;
    }

LABEL_67:
    if (v12)
    {
      return v7;
    }

    else
    {
      return v3;
    }
  }

  if (a3 <= 2100)
  {
    v3 = 4;
    v22 = 3;
    v23 = 3;
    if (a3 != 2016)
    {
      v23 = 0;
    }

    if (a3 != 2015)
    {
      v22 = v23;
    }

    if (a3 != 2012)
    {
      v3 = v22;
    }

    v7 = 4;
    v24 = 3;
    v25 = 3;
    if (a3 != 2011)
    {
      v25 = 0;
    }

    if (a3 != 2010)
    {
      v24 = v25;
    }

    if (a3 != 2007)
    {
      v7 = v24;
    }

    v12 = a3 <= 2011;
    goto LABEL_67;
  }

  switch(a3)
  {
    case 3000:
    case 3001:
    case 3002:
    case 3003:
    case 3004:
    case 3005:
    case 3006:
    case 3007:
    case 3008:
    case 3009:
    case 3010:
    case 3011:
    case 3012:
    case 3013:
    case 3014:
    case 3015:
      result = 1;
      break;
    default:
      v26 = 3;
      if (a3 != 2102)
      {
        v26 = 0;
      }

      if (a3 == 2101)
      {
        result = 3;
      }

      else
      {
        result = v26;
      }

      break;
  }

  return result;
}

@end