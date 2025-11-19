@interface IPMessageUnit
- (IPMessage)originalMessage;
- (IPMessageUnit)initWithText:(id)a3 originalMessage:(id)a4 index:(int64_t)a5;
- (IPMessageUnit)previous;
- (NSArray)features;
- (NSString)lowercaseTextTruncated;
- (_NSRange)interactedDateRange;
- (id)bestLanguageID;
- (id)description;
- (id)neutralRanges;
- (id)proposalAndAcceptationRanges;
- (id)rejectionRanges;
- (void)addFollowup:(id)a3;
- (void)setDataFeatures:(id)a3;
- (void)setFeatures:(id)a3;
- (void)setKeywordFeatures:(id)a3;
- (void)setSentenceFeatures:(id)a3;
@end

@implementation IPMessageUnit

- (IPMessageUnit)initWithText:(id)a3 originalMessage:(id)a4 index:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = IPMessageUnit;
  v11 = [(IPMessageUnit *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_text, a3);
    v12->_indexInOriginalMessage = a5;
    objc_storeWeak(&v12->_originalMessage, v10);
    v12->_interactedDateRange = xmmword_24860DE90;
    dataFeatures = v12->_dataFeatures;
    v12->_dataFeatures = 0;

    sentenceFeatures = v12->_sentenceFeatures;
    v12->_sentenceFeatures = 0;

    keywordFeatures = v12->_keywordFeatures;
    v12->_keywordFeatures = 0;
  }

  return v12;
}

- (void)addFollowup:(id)a3
{
  v4 = a3;
  if (v4)
  {
    followups = self->_followups;
    if (followups)
    {
      [(NSMutableArray *)followups addObject:v4];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB18] arrayWithObject:v4];
      v7 = self->_followups;
      self->_followups = v6;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setFeatures:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 copy];
  features = v5->_features;
  v5->_features = v6;

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v16 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v5->_features;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 addObject:v14];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 addObject:v14];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            [v16 addObject:v14];
          }
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(IPMessageUnit *)v5 setDataFeatures:v8];
  [(IPMessageUnit *)v5 setKeywordFeatures:v16];
  [(IPMessageUnit *)v5 setSentenceFeatures:v9];

  objc_sync_exit(v5);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setSentenceFeatures:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  sentenceFeatures = v4->_sentenceFeatures;
  v4->_sentenceFeatures = v5;

  objc_sync_exit(v4);
}

- (void)setDataFeatures:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  dataFeatures = v4->_dataFeatures;
  v4->_dataFeatures = v5;

  objc_sync_exit(v4);
}

- (void)setKeywordFeatures:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  keywordFeatures = v4->_keywordFeatures;
  v4->_keywordFeatures = v5;

  objc_sync_exit(v4);
}

- (NSString)lowercaseTextTruncated
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_lowercaseTextTruncated);
  if (!WeakRetained)
  {
    v4 = [(IPMessageUnit *)v2 text];
    if ([v4 length] >= 0x2711)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [v4 substringToIndex:10000];

      objc_autoreleasePoolPop(v5);
      v4 = v6;
    }

    v7 = objc_autoreleasePoolPush();
    WeakRetained = [v4 lowercaseString];
    objc_autoreleasePoolPop(v7);
    objc_storeWeak(&v2->_lowercaseTextTruncated, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

- (NSArray)features
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_features)
  {
    text = v2->_text;
    if (text)
    {
      v4 = [IPFeatureManager featuresForTextString:text inMessageUnit:v2];
      features = v2->_features;
      v2->_features = v4;
    }
  }

  if (v2->_text && (!v2->_dataFeatures || !v2->_keywordFeatures || !v2->_sentenceFeatures))
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v16 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v2->_features;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = *v18;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addObject:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 addObject:v12];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            [v16 addObject:v12];
          }
        }
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v9)
      {
LABEL_22:

        [(IPMessageUnit *)v2 setDataFeatures:v6];
        [(IPMessageUnit *)v2 setKeywordFeatures:v16];
        [(IPMessageUnit *)v2 setSentenceFeatures:v7];

        break;
      }
    }
  }

  v13 = v2->_features;
  objc_sync_exit(v2);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)rejectionRanges
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  rejectionRanges = v2->_rejectionRanges;
  if (!rejectionRanges)
  {
    rejectionRanges = v2->_text;
    if (rejectionRanges)
    {
      v22 = v2;
      v7 = objc_opt_new();
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = [(IPMessageUnit *)v2 sentenceFeatures];
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v9)
      {
        obj = v8;
        v24 = *v30;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v30 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v29 + 1) + 8 * i);
            v12 = [v11 matchRange];
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v13 = [v11 fragments];
            v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v14)
            {
              v15 = *v26;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v26 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v17 = *(*(&v25 + 1) + 8 * j);
                  if ([v17 mainPolarity] == 4)
                  {
                    v18 = [v17 range];
                    [v17 range];
                    [v7 addIndexesInRange:{v18 + v12, v19}];
                  }
                }

                v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
              }

              while (v14);
            }
          }

          v8 = obj;
          v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v9);
      }

      v20 = [v7 copy];
      v21 = v22->_rejectionRanges;
      v22->_rejectionRanges = v20;

      rejectionRanges = v22->_rejectionRanges;
      v2 = v22;
    }
  }

  v4 = rejectionRanges;
  objc_sync_exit(v2);

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)neutralRanges
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  neutralRanges = v2->_neutralRanges;
  if (!neutralRanges)
  {
    neutralRanges = v2->_text;
    if (neutralRanges)
    {
      v22 = v2;
      v7 = objc_opt_new();
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = [(IPMessageUnit *)v2 sentenceFeatures];
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v9)
      {
        obj = v8;
        v24 = *v30;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v30 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v29 + 1) + 8 * i);
            v12 = [v11 matchRange];
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v13 = [v11 fragments];
            v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v14)
            {
              v15 = *v26;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v26 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v17 = *(*(&v25 + 1) + 8 * j);
                  if (([v17 mainPolarity] - 5) <= 0xFFFFFFFFFFFFFFFCLL)
                  {
                    v18 = [v17 range];
                    [v17 range];
                    [v7 addIndexesInRange:{v18 + v12, v19}];
                  }
                }

                v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
              }

              while (v14);
            }
          }

          v8 = obj;
          v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v9);
      }

      v20 = [v7 copy];
      v21 = v22->_neutralRanges;
      v22->_neutralRanges = v20;

      neutralRanges = v22->_neutralRanges;
      v2 = v22;
    }
  }

  v4 = neutralRanges;
  objc_sync_exit(v2);

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)proposalAndAcceptationRanges
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  proposalAndAcceptationRanges = v2->_proposalAndAcceptationRanges;
  if (!proposalAndAcceptationRanges)
  {
    proposalAndAcceptationRanges = v2->_text;
    if (proposalAndAcceptationRanges)
    {
      v22 = v2;
      v7 = objc_opt_new();
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = [(IPMessageUnit *)v2 sentenceFeatures];
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v9)
      {
        obj = v8;
        v24 = *v30;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v30 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v29 + 1) + 8 * i);
            v12 = [v11 matchRange];
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v13 = [v11 fragments];
            v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v14)
            {
              v15 = *v26;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v26 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v17 = *(*(&v25 + 1) + 8 * j);
                  if (([v17 mainPolarity] & 0xFFFFFFFFFFFFFFFELL) == 2)
                  {
                    v18 = [v17 range];
                    [v17 range];
                    [v7 addIndexesInRange:{v18 + v12, v19}];
                  }
                }

                v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
              }

              while (v14);
            }
          }

          v8 = obj;
          v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v9);
      }

      v20 = [v7 copy];
      v21 = v22->_proposalAndAcceptationRanges;
      v22->_proposalAndAcceptationRanges = v20;

      proposalAndAcceptationRanges = v22->_proposalAndAcceptationRanges;
      v2 = v22;
    }
  }

  v4 = proposalAndAcceptationRanges;
  objc_sync_exit(v2);

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)bestLanguageID
{
  if (!self->_bestLanguage && [(NSString *)self->_text length])
  {
    v3 = [(IPMessageUnit *)self originalMessage];
    v4 = [v3 subject];

    if (![v4 length])
    {
      v5 = [(IPMessageUnit *)self text];
      v11 = 0;
LABEL_16:
      v16 = [IPFeatureSentence bestLanguageIDFromText:v5 linesElided:v11];
      bestLanguage = self->_bestLanguage;
      self->_bestLanguage = v16;

      goto LABEL_17;
    }

    v5 = [v4 mutableCopy];
    [v5 appendString:@"\n"];
    v6 = [(IPMessageUnit *)self text];
    if ([v5 length] <= 0x1FF && objc_msgSend(v6, "length"))
    {
      v7 = 512 - [v5 length];
      if (v7 < [v6 length])
      {
        context = objc_autoreleasePoolPush();
        v8 = [v6 lineRangeForRange:{0, 512 - objc_msgSend(v5, "length")}];
        v10 = v9;
        v11 = 0;
        v12 = v9 + v8 + 1;
        do
        {
          if (v12 >= [v6 length])
          {
            break;
          }

          v13 = [v6 rangeOfString:@"\n" options:2 range:{v12, objc_msgSend(v6, "length") - v12}];
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v12 = v13 + v14;
          ++v11;
        }

        while (v11 != 5);
        v15 = [v6 substringWithRange:{v8, v10}];
        [v5 appendString:v15];

        objc_autoreleasePoolPop(context);
        goto LABEL_15;
      }

      [v5 appendString:v6];
    }

    v11 = 0;
LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
  v18 = self->_bestLanguage;

  return v18;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v5 = [(IPMessageUnit *)self text];
  v6 = [v4 stringWithFormat:@"<IPMessageUnit: %@>", v5];

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (IPMessageUnit)previous
{
  WeakRetained = objc_loadWeakRetained(&self->_previous);

  return WeakRetained;
}

- (IPMessage)originalMessage
{
  WeakRetained = objc_loadWeakRetained(&self->_originalMessage);

  return WeakRetained;
}

- (_NSRange)interactedDateRange
{
  objc_copyStruct(v4, &self->_interactedDateRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end