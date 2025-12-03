@interface CSSearchableItem(SFMailRankingSignals)
- (id)em_mailRankingSignals;
- (uint64_t)_daysSinceDate:()SFMailRankingSignals;
@end

@implementation CSSearchableItem(SFMailRankingSignals)

- (id)em_mailRankingSignals
{
  v65 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v61 = &v60;
  v62 = 0x2050000000;
  v2 = getSFMailRankingSignalsClass_softClass;
  v63 = getSFMailRankingSignalsClass_softClass;
  if (!getSFMailRankingSignalsClass_softClass)
  {
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __getSFMailRankingSignalsClass_block_invoke;
    v59[3] = &unk_1E826C010;
    v59[4] = &v60;
    __getSFMailRankingSignalsClass_block_invoke(v59);
    v2 = v61[3];
  }

  v3 = v2;
  _Block_object_dispose(&v60, 8);
  v53 = objc_alloc_init(v2);
  attributeSet = [self attributeSet];
  attributeDictionary = [attributeSet attributeDictionary];
  v50 = [attributeDictionary valueForKey:*MEMORY[0x1E6964DB0]];

  [v53 setIsSemanticMatch:{(objc_msgSend(v50, "integerValue") >> 1) & 1}];
  [v53 setIsSyntacticMatch:{objc_msgSend(v50, "integerValue") & 1}];
  if ([v53 isSemanticMatch])
  {
    attributeSet2 = [self attributeSet];
    attributeDictionary2 = [attributeSet2 attributeDictionary];
    v7 = [attributeDictionary2 valueForKey:*MEMORY[0x1E6964D78]];

    if ([v7 count] == 3)
    {
      firstObject = [v7 firstObject];
      if (firstObject)
      {
        firstObject2 = [v7 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          firstObject3 = [v7 firstObject];
          [firstObject3 floatValue];
          v13 = v12;

          if (v13 >= 0.0 && v13 <= 4.0)
          {
            *&v14 = (v13 * -0.5) + 1.0;
            v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
            [v53 setSemanticScore:v15];
          }
        }
      }
    }
  }

  v16 = MEMORY[0x1E696AD98];
  mailResultScoreL1 = [attributeSet mailResultScoreL1];
  [mailResultScoreL1 doubleValue];
  v18 = [v16 numberWithDouble:?];
  [v53 setSyntacticScore:v18];

  mailFlagged = [attributeSet mailFlagged];
  [v53 setIsFlagged:{objc_msgSend(mailFlagged, "BOOLValue")}];

  mailRepliedTo = [attributeSet mailRepliedTo];
  [v53 setIsRepliedTo:{objc_msgSend(mailRepliedTo, "BOOLValue")}];

  v21 = MEMORY[0x1E696AD98];
  mailResultScoreL12 = [attributeSet mailResultScoreL1];
  [mailResultScoreL12 doubleValue];
  v23 = [v21 numberWithDouble:?];
  [v53 setL1Score:v23];

  v24 = MEMORY[0x1E696AD98];
  mailResultScoreL2 = [attributeSet mailResultScoreL2];
  [mailResultScoreL2 doubleValue];
  v26 = [v24 numberWithDouble:?];
  [v53 setL2Score:v26];

  mailUseCount = [attributeSet mailUseCount];
  [v53 setNumEngagements:{objc_msgSend(mailUseCount, "unsignedLongLongValue")}];

  mailDateReceived = [attributeSet mailDateReceived];
  [v53 setDaysSinceReceipt:{objc_msgSend(self, "_daysSinceDate:", mailDateReceived)}];

  v29 = objc_alloc(MEMORY[0x1E695DFA8]);
  mailUsedDates = [attributeSet mailUsedDates];
  v31 = [v29 initWithCapacity:{objc_msgSend(mailUsedDates, "count")}];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  mailUsedDates2 = [attributeSet mailUsedDates];
  v33 = [mailUsedDates2 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v33)
  {
    v34 = 0;
    v35 = 0;
    v54 = 0;
    v36 = *v56;
    v37 = -1.0;
    v38 = -1.0;
    v39 = -1.0;
    v40 = -1.0;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v56 != v36)
        {
          objc_enumerationMutation(mailUsedDates2);
        }

        v42 = [self _daysSinceDate:*(*(&v55 + 1) + 8 * i)];
        if (v42 <= 0x1E)
        {
          v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42];
          [v31 addObject:v43];

          if (v42 > 6)
          {
            if (v42 > 0xD)
            {
              if (v42 > 0x14)
              {
                if (v42 != 30)
                {
                  v40 = v40 + v42 + 1.0;
                  LODWORD(v54) = v54 + 1;
                }
              }

              else
              {
                v39 = v39 + v42 + 1.0;
                ++HIDWORD(v54);
              }
            }

            else
            {
              v38 = v38 + v42 + 1.0;
              ++v35;
            }
          }

          else
          {
            v37 = v37 + v42 + 1.0;
            ++v34;
          }
        }
      }

      v33 = [mailUsedDates2 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v33);

    if (v34 >= 1)
    {
      v37 = (v37 + 1.0) / v34;
    }

    if (v35 >= 1)
    {
      v38 = (v38 + 1.0) / v35;
    }

    if (SHIDWORD(v54) >= 1)
    {
      v39 = (v39 + 1.0) / HIDWORD(v54);
    }

    if (v54 >= 1)
    {
      v40 = (v40 + 1.0) / v54;
    }
  }

  else
  {

    v39 = -1.0;
    v37 = -1.0;
    v38 = -1.0;
    v40 = -1.0;
  }

  v44 = [MEMORY[0x1E696AD98] numberWithDouble:v37];
  [v53 setAverageEngagementAgeLast7Days:v44];

  v45 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
  [v53 setAverageEngagementAgeLast14Days:v45];

  v46 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
  [v53 setAverageEngagementAgeLast21Days:v46];

  v47 = [MEMORY[0x1E696AD98] numberWithDouble:v40];
  [v53 setAverageEngagementAgeLast30Days:v47];

  [v53 setNumDaysEngagedLast30Days:{objc_msgSend(v31, "count")}];
  v48 = *MEMORY[0x1E69E9840];

  return v53;
}

- (uint64_t)_daysSinceDate:()SFMailRankingSignals
{
  v3 = a3;
  if (v3)
  {
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    [currentCalendar setTimeZone:localTimeZone];
    date = [MEMORY[0x1E695DF00] date];
    v7 = [currentCalendar components:16 fromDate:v3 toDate:date options:0];
    if ([v7 day] < 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v7 day];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end