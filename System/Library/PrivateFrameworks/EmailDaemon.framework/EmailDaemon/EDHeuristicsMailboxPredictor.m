@interface EDHeuristicsMailboxPredictor
- (BOOL)_isAllowedRecipient:(id)a3;
- (BOOL)_limitToRecents;
- (BOOL)_modeParameterIs:(id)a3;
- (EDHeuristicsMailboxPredictor)initWithUserProfileProvider:(id)a3 messagePersistence:(id)a4 mailboxPersistence:(id)a5;
- (EDHeuristicsMailboxPredictor)initWithUserProfileProvider:(id)a3 messagePersistence:(id)a4 mailboxPersistence:(id)a5 parameters:(id)a6;
- (id)_adjustPredicateForRecent:(id)a3;
- (id)_allowedRecipientsForMessage:(id)a3;
- (id)_conversationIDCountsForMessage:(id)a3;
- (id)_countsForField:(id)a3 message:(id)a4;
- (id)_countsForPredicate:(id)a3;
- (id)_listIDCountsForMessage:(id)a3;
- (id)_mergeDefaultParameters:(id)a3 withParameters:(id)a4;
- (id)_normalizedTermFrequencyTopHitFromDictionary:(id)a3 withThreshold:(double)a4;
- (id)_objectWithMeasure:(double)a3 timesHigherThanFollowUpInMeasures:(id)a4;
- (id)_orderedModePredictionForMessage:(id)a3;
- (id)_predictionsForMessage:(id)a3 limit:(unint64_t)a4;
- (id)_recipientCountsForMessage:(id)a3;
- (id)_removeSpecialMailboxesInCounts:(id)a3 message:(id)a4;
- (id)_senderCountsForMessage:(id)a3;
- (id)_summedWeightedPredictionsForMessage:(id)a3 limit:(unint64_t)a4;
- (id)_topHitFromMailboxDictionary:(id)a3;
- (id)_topHitFromMailboxDictionary:(id)a3 message:(id)a4;
- (id)_userCreatedMailboxIDs;
- (id)_weightedModePredictionsForMessage:(id)a3;
- (id)predictMailboxIDsForMessages:(id)a3 limit:(unint64_t)a4;
@end

@implementation EDHeuristicsMailboxPredictor

- (EDHeuristicsMailboxPredictor)initWithUserProfileProvider:(id)a3 messagePersistence:(id)a4 mailboxPersistence:(id)a5
{
  v25[8] = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v8 = a5;
  v20.receiver = self;
  v20.super_class = EDHeuristicsMailboxPredictor;
  v9 = [(EDHeuristicsMailboxPredictor *)&v20 init];
  v10 = v9;
  if (v9)
  {
    [(EDHeuristicsMailboxPredictor *)v9 setUserProfileProvider:v18];
    [(EDHeuristicsMailboxPredictor *)v10 setMessagePersistence:v19];
    [(EDHeuristicsMailboxPredictor *)v10 setMailboxPersistence:v8];
    v11 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    [(EDHeuristicsMailboxPredictor *)v10 setMailboxIDCache:v11];

    v12 = MEMORY[0x1E695E118];
    v24[0] = @"mode";
    v24[1] = @"ignoreUserAddresses";
    v25[0] = @"ordered";
    v25[1] = MEMORY[0x1E695E118];
    v24[2] = @"confusionThreshold";
    v24[3] = @"orderedThreshold";
    v25[2] = &unk_1F45E7130;
    v25[3] = &unk_1F45E7140;
    v24[4] = @"order";
    v23[0] = @"conversationID";
    v23[1] = @"recipient";
    v23[2] = @"listID";
    v23[3] = @"sender";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    v25[4] = v13;
    v25[5] = &unk_1F45E7140;
    v24[5] = @"weightedThreshold";
    v24[6] = @"weights";
    v21[0] = @"conversationID";
    v21[1] = @"listID";
    v22[0] = &unk_1F45E6670;
    v22[1] = &unk_1F45E7150;
    v21[2] = @"recipient";
    v21[3] = @"sender";
    v22[2] = &unk_1F45E7150;
    v22[3] = &unk_1F45E7160;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v24[7] = @"limitToRecentMessages";
    v25[6] = v14;
    v25[7] = v12;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:8];
    [(EDHeuristicsMailboxPredictor *)v10 setParameters:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (EDHeuristicsMailboxPredictor)initWithUserProfileProvider:(id)a3 messagePersistence:(id)a4 mailboxPersistence:(id)a5 parameters:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(EDHeuristicsMailboxPredictor *)self initWithUserProfileProvider:v10 messagePersistence:v11 mailboxPersistence:v12];
  v15 = v14;
  if (v14)
  {
    v16 = [(EDHeuristicsMailboxPredictor *)v14 _mergeDefaultParameters:v14->_parameters withParameters:v13];
    [(EDHeuristicsMailboxPredictor *)v15 setParameters:v16];
  }

  return v15;
}

- (id)_mergeDefaultParameters:(id)a3 withParameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v18 = v7;
    goto LABEL_16;
  }

  v9 = [v7 mutableCopy];
  [v9 addEntriesFromDictionary:v8];
  v10 = [v9 objectForKeyedSubscript:@"confusionThreshold"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [v9 objectForKeyedSubscript:@"confusionThreshold"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"EDHeuristicsMailboxPredictor.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"[mergedParams[kConfusionThresholdParameterKey] isKindOfClass:[NSNumber class]] || [mergedParams[kConfusionThresholdParameterKey] isKindOfClass:[NSNull class]]"}];
  }

LABEL_6:
  v13 = [v9 objectForKeyedSubscript:@"mode"];
  v14 = [v13 isEqual:@"ordered"];

  if (v14)
  {
    v15 = [v9 objectForKeyedSubscript:@"order"];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if ((v16 & 1) == 0)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"EDHeuristicsMailboxPredictor.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"[mergedParams[kOrderParameterKey] isKindOfClass:[NSArray class]]"}];
LABEL_14:
    }
  }

  else
  {
    v19 = [v9 objectForKeyedSubscript:@"mode"];
    v20 = [v19 isEqual:@"weighted"];

    if (!v20)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [v9 objectForKeyedSubscript:@"mode"];
      [v17 handleFailureInMethod:a2 object:self file:@"EDHeuristicsMailboxPredictor.m" lineNumber:126 description:{@"Unknown mode: %@", v23}];

      goto LABEL_14;
    }

    v21 = [v9 objectForKeyedSubscript:@"weights"];
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if ((v22 & 1) == 0)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"EDHeuristicsMailboxPredictor.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"[mergedParams[kWeightsParameterKey] isKindOfClass:[NSDictionary class]]"}];
      goto LABEL_14;
    }
  }

  v18 = [v9 copy];

LABEL_16:

  return v18;
}

- (id)predictMailboxIDsForMessages:(id)a3 limit:(unint64_t)a4
{
  v75 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v47 = a4;
  v6 = a4 > 1 || [(EDHeuristicsMailboxPredictor *)self _modeParameterIs:@"weighted"];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v46 = self;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v43;
  v48 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
  if (v48)
  {
    v45 = *v61;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v61 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v60 + 1) + 8 * i);
        v49 = [v8 persistentID];
        v50 = [(EDHeuristicsMailboxPredictor *)v46 _predictionsForMessage:v8 limit:v47];
        v9 = +[EDMailboxPredictionController log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v50 count];
          v11 = [v8 subject];
          *buf = 67109634;
          v69 = v10;
          v70 = 2112;
          v71 = v49;
          v72 = 2112;
          v73 = v11;
          _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_INFO, "Got %u predictions for message persistentID=%@, subject=%@", buf, 0x1Cu);
        }

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v12 = v50;
        v13 = [v12 countByEnumeratingWithState:&v56 objects:v67 count:16];
        if (v13)
        {
          v14 = *v57;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v57 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v56 + 1) + 8 * j);
              v17 = [v16 object];
              if (v6)
              {
                v18 = [v7 objectForKeyedSubscript:v17];

                if (v18)
                {
                  v19 = [v7 objectForKeyedSubscript:v17];
                  [v16 measure];
                  v21 = v20;
                  [v19 measure];
                  [v19 setMeasure:v21 + v22];
                }

                else
                {
                  v25 = MEMORY[0x1E699B800];
                  [v16 measure];
                  v19 = [v25 object:v17 withMeasure:?];
                  [v7 setObject:v19 forKeyedSubscript:v17];
                }
              }

              else
              {
                v23 = [v7 objectForKeyedSubscript:v17];

                if (v23)
                {
                  v19 = [v7 objectForKeyedSubscript:v17];
                  [v19 measure];
                  [v19 setMeasure:v24 + 1.0];
                }

                else
                {
                  v19 = [MEMORY[0x1E699B800] object:v17 withMeasure:1.0];
                  [v7 setObject:v19 forKeyedSubscript:v17];
                }
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v56 objects:v67 count:16];
          }

          while (v13);
        }
      }

      v48 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
    }

    while (v48);
  }

  v26 = +[EDMailboxPredictionController log];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    -[EDHeuristicsMailboxPredictor predictMailboxIDsForMessages:limit:].cold.1([v7 count], v66);
  }

  v27 = MEMORY[0x1E699B800];
  if (v47 == 1)
  {
    v28 = [v7 allValues];
    v29 = [v28 objectEnumerator];
    v30 = [v27 max:v29];
    v31 = [v30 object];

    if (v31)
    {
      v65 = v31;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    }

    else
    {
      v32 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v33 = [v7 allValues];
    v34 = [v27 reverseSortedObjects:v33 limit:v47];

    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v34, "count")}];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v31 = v34;
    v35 = [v31 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v35)
    {
      v36 = *v53;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v53 != v36)
          {
            objc_enumerationMutation(v31);
          }

          v38 = [*(*(&v52 + 1) + 8 * k) object];
          [v32 addObject:v38];
        }

        v35 = [v31 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v35);
    }
  }

  v39 = +[EDMailboxPredictionController log];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v40 = [v32 firstObject];
    [EDHeuristicsMailboxPredictor predictMailboxIDsForMessages:v40 limit:buf];
  }

  v41 = *MEMORY[0x1E69E9840];

  return v32;
}

- (BOOL)_modeParameterIs:(id)a3
{
  v4 = a3;
  v5 = [(EDHeuristicsMailboxPredictor *)self parameters];
  v6 = [v5 objectForKeyedSubscript:@"mode"];
  v7 = [v6 isEqualToString:v4];

  return v7;
}

- (id)_predictionsForMessage:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  if (a4 < 2)
  {
    if ([(EDHeuristicsMailboxPredictor *)self _modeParameterIs:@"ordered"])
    {
      [(EDHeuristicsMailboxPredictor *)self _orderedModePredictionForMessage:v6];
    }

    else
    {
      [(EDHeuristicsMailboxPredictor *)self _weightedModePredictionsForMessage:v6];
    }
    v7 = ;
  }

  else
  {
    v7 = [(EDHeuristicsMailboxPredictor *)self _summedWeightedPredictionsForMessage:v6 limit:a4];
  }

  v8 = v7;

  return v8;
}

- (id)_orderedModePredictionForMessage:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v4 = +[EDMailboxPredictionController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [EDHeuristicsMailboxPredictor _orderedModePredictionForMessage:];
  }

  v5 = [(EDHeuristicsMailboxPredictor *)self parameters];
  v6 = [v5 objectForKeyedSubscript:@"orderedThreshold"];
  [v6 doubleValue];
  v8 = v7;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [(EDHeuristicsMailboxPredictor *)self parameters];
  obj = [v9 objectForKeyedSubscript:@"order"];

  v10 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v10)
  {
    v37 = *v43;
    v35 = MEMORY[0x1E695E0F0];
    *&v11 = 134218240;
    v34 = v11;
    while (2)
    {
      v38 = v10;
      for (i = 0; i != v38; ++i)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = [(EDHeuristicsMailboxPredictor *)self _countsForField:*&v13 message:v39, v34];
        v15 = [(EDHeuristicsMailboxPredictor *)self _topHitFromMailboxDictionary:v14 message:v39];
        v16 = [(__CFString *)v14 count];
        v17 = @"{}";
        if (v16)
        {
          v17 = v14;
        }

        *&v18 = COERCE_DOUBLE(v17);
        v19 = +[EDMailboxPredictionController log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v48 = v13;
          v49 = 2112;
          v50 = *&v18;
          _os_log_debug_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEBUG, "Raw counts for %@: %@", buf, 0x16u);
        }

        if (v15)
        {
          v20 = +[EDMailboxPredictionController log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [v15 measure];
            v29 = v28;
            v30 = [v15 object];
            *buf = 134218498;
            v48 = v29;
            v49 = 2112;
            v50 = v13;
            v51 = 2112;
            v52 = v30;
            _os_log_debug_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEBUG, "Found %.0lf hit for **%@** in %@", buf, 0x20u);
          }

          v21 = [v15 object];
          v22 = [v39 mailbox];
          v23 = [v22 URL];
          v24 = [v23 absoluteString];
          v25 = [v21 isEqual:v24];

          if (v25)
          {
            v26 = +[EDMailboxPredictionController log];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              [(EDHeuristicsMailboxPredictor *)&v40 _orderedModePredictionForMessage:v41];
            }
          }

          else
          {
            [v15 measure];
            if (v27 >= v8)
            {
              v46 = v15;
              v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];

              goto LABEL_27;
            }

            v26 = +[EDMailboxPredictionController log];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              [v15 measure];
              *buf = v34;
              v48 = v31;
              v49 = 2048;
              v50 = v8;
              _os_log_debug_impl(&dword_1C61EF000, v26, OS_LOG_TYPE_DEBUG, "Ignoring because count (%.0f) is under threshold (%.0f).", buf, 0x16u);
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v35 = MEMORY[0x1E695E0F0];
  }

LABEL_27:

  v32 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)_summedWeightedPredictionsForMessage:(id)a3 limit:(unint64_t)a4
{
  v81 = *MEMORY[0x1E69E9840];
  v55 = a3;
  v4 = +[EDMailboxPredictionController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [EDHeuristicsMailboxPredictor _summedWeightedPredictionsForMessage:limit:];
  }

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v6 = [(EDHeuristicsMailboxPredictor *)self parameters];
  obj = [v6 objectForKeyedSubscript:@"weights"];

  v54 = [obj countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v54)
  {
    v53 = *v69;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v69 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v59 = *(*(&v68 + 1) + 8 * i);
        v7 = [(EDHeuristicsMailboxPredictor *)self parameters];
        v8 = [v7 objectForKeyedSubscript:@"weights"];
        v9 = [v8 objectForKeyedSubscript:v59];
        [v9 doubleValue];
        v11 = v10;

        v12 = [(EDHeuristicsMailboxPredictor *)self _countsForField:v59 message:v55];
        v13 = [(__CFString *)v12 count];
        v14 = @"{}";
        if (v13)
        {
          v14 = v12;
        }

        v56 = v14;
        v15 = +[EDMailboxPredictionController log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v74 = v59;
          v75 = 2112;
          v76 = v56;
          _os_log_debug_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEBUG, "Raw counts for %@:\n%@", buf, 0x16u);
        }

        v16 = [(EDHeuristicsMailboxPredictor *)self _removeSpecialMailboxesInCounts:v12 message:v55];

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v64 objects:v79 count:16];
        if (v18)
        {
          v19 = *v65;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v65 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v64 + 1) + 8 * j);
              v22 = [v17 objectForKeyedSubscript:v21];
              [v22 doubleValue];
              v24 = v23;

              v25 = +[EDMailboxPredictionController log];
              v26 = v11 * v24;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v74 = v59;
                v75 = 2112;
                v76 = v21;
                v77 = 2048;
                v78 = v26;
                _os_log_debug_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_DEBUG, "Found field=%@ in mailbox=%@: weightedHits=%.1lf", buf, 0x20u);
              }

              v27 = [v5 objectForKeyedSubscript:v21];
              v28 = v27;
              if (v27)
              {
                v29 = v27;
              }

              else
              {
                v29 = &unk_1F45E6688;
              }

              v30 = v29;

              v31 = MEMORY[0x1E696AD98];
              [v30 doubleValue];
              v33 = [v31 numberWithDouble:v26 + v32];

              [v5 setObject:v33 forKeyedSubscript:v21];
            }

            v18 = [v17 countByEnumeratingWithState:&v64 objects:v79 count:16];
          }

          while (v18);
        }
      }

      v54 = [obj countByEnumeratingWithState:&v68 objects:v80 count:16];
    }

    while (v54);
  }

  v34 = [(EDHeuristicsMailboxPredictor *)self parameters];
  v35 = [v34 objectForKeyedSubscript:@"weightedThreshold"];
  [v35 doubleValue];
  v37 = v36;

  v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v39 = v5;
  v40 = [v39 countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v40)
  {
    v41 = *v61;
    do
    {
      for (k = 0; k != v40; ++k)
      {
        if (*v61 != v41)
        {
          objc_enumerationMutation(v39);
        }

        v43 = *(*(&v60 + 1) + 8 * k);
        v44 = [v39 objectForKeyedSubscript:v43];
        [v44 doubleValue];
        if (v45 > v37)
        {
          v46 = MEMORY[0x1E699B800];
          [v44 doubleValue];
          v47 = [v46 object:v43 withMeasure:?];
          [v38 addObject:v47];
        }
      }

      v40 = [v39 countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v40);
  }

  if ([v38 count])
  {
    v48 = [MEMORY[0x1E699B800] reverseSortedObjects:v38 limit:a4];
  }

  else
  {
    v48 = MEMORY[0x1E695E0F0];
  }

  v49 = *MEMORY[0x1E69E9840];

  return v48;
}

- (id)_weightedModePredictionsForMessage:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v55 = a3;
  v4 = +[EDMailboxPredictionController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [EDHeuristicsMailboxPredictor _weightedModePredictionsForMessage:];
  }

  v5 = [(EDHeuristicsMailboxPredictor *)self parameters];
  v6 = [v5 objectForKeyedSubscript:@"weightedThreshold"];
  [v6 doubleValue];
  v8 = v7;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v9 = [(EDHeuristicsMailboxPredictor *)self parameters];
  obj = [v9 objectForKeyedSubscript:@"weights"];

  v10 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (!v10)
  {
    v51 = 0;
    goto LABEL_28;
  }

  v51 = 0;
  v53 = *v59;
  *&v11 = 134218240;
  v50 = v11;
  do
  {
    v54 = v10;
    for (i = 0; i != v54; ++i)
    {
      if (*v59 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v58 + 1) + 8 * i);
      v14 = [(EDHeuristicsMailboxPredictor *)self parameters];
      v15 = [v14 objectForKeyedSubscript:@"weights"];
      v16 = [v15 objectForKeyedSubscript:*&v13];
      [v16 doubleValue];
      v18 = v17;

      v19 = [(EDHeuristicsMailboxPredictor *)self _countsForField:*&v13 message:v55];
      v20 = [(__CFString *)v19 count];
      v21 = @"{}";
      if (v20)
      {
        v21 = v19;
      }

      *&v22 = COERCE_DOUBLE(v21);
      v23 = +[EDMailboxPredictionController log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v64 = v13;
        v65 = 2112;
        v66 = *&v22;
        _os_log_debug_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEBUG, "Raw counts for %@:\n%@", buf, 0x16u);
      }

      v24 = [(EDHeuristicsMailboxPredictor *)self _topHitFromMailboxDictionary:v19 message:v55];
      v25 = v24;
      if (v24)
      {
        [v24 measure];
        v27 = v26;
        v28 = +[EDMailboxPredictionController log];
        v29 = v18 * v27;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [v25 measure];
          v40 = v39;
          v41 = [v25 object];
          *buf = 134218754;
          v64 = v40;
          v65 = 2048;
          v66 = v29;
          v67 = 2112;
          v68 = v13;
          v69 = 2112;
          v70 = v41;
          _os_log_debug_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEBUG, "Found %.0lf (weighted=%.1lf) hits for **%@** in %@", buf, 0x2Au);
        }

        v30 = [v25 object];
        v31 = [v55 mailbox];
        v32 = [v31 URL];
        v33 = [v32 absoluteString];
        v34 = [v30 isEqual:v33];

        if (v34)
        {
          v35 = +[EDMailboxPredictionController log];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [(EDHeuristicsMailboxPredictor *)&v56 _orderedModePredictionForMessage:v57];
          }
        }

        else if (v29 >= v8)
        {
          [v25 setMeasure:v29];
          [v25 measure];
          v37 = v36;
          [v51 measure];
          if (v37 <= v38)
          {
            goto LABEL_24;
          }

          v35 = v51;
          v51 = v25;
        }

        else
        {
          v35 = +[EDMailboxPredictionController log];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = v50;
            v64 = v29;
            v65 = 2048;
            v66 = v8;
            _os_log_debug_impl(&dword_1C61EF000, v35, OS_LOG_TYPE_DEBUG, "Ignoring because weighted (%.0f) is under threshold (%.0f).", buf, 0x16u);
          }
        }
      }

LABEL_24:
    }

    v10 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
  }

  while (v10);
LABEL_28:

  v42 = +[EDMailboxPredictionController log];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    v43 = [v51 object];
    [v51 measure];
    [(EDHeuristicsMailboxPredictor *)v43 _weightedModePredictionsForMessage:buf, v44];
  }

  if (!v51 || ([v51 object], v45 = objc_claimAutoreleasedReturnValue(), v46 = v45 == 0, v45, v46))
  {
    v47 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v62 = v51;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  }

  v48 = *MEMORY[0x1E69E9840];

  return v47;
}

- (id)_countsForField:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 isEqualToString:@"conversationID"])
  {
    v9 = [(EDHeuristicsMailboxPredictor *)self _conversationIDCountsForMessage:v8];
LABEL_9:
    v10 = v9;
    goto LABEL_10;
  }

  if ([v7 isEqualToString:@"sender"])
  {
    v9 = [(EDHeuristicsMailboxPredictor *)self _senderCountsForMessage:v8];
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"recipient"])
  {
    v9 = [(EDHeuristicsMailboxPredictor *)self _recipientCountsForMessage:v8];
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"listID"])
  {
    v9 = [(EDHeuristicsMailboxPredictor *)self _listIDCountsForMessage:v8];
    goto LABEL_9;
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"EDHeuristicsMailboxPredictor.m" lineNumber:326 description:{@"Unknown field: %@", v7}];

  v10 = MEMORY[0x1E695E0F8];
LABEL_10:

  return v10;
}

- (BOOL)_limitToRecents
{
  v2 = [(EDHeuristicsMailboxPredictor *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"limitToRecentMessages"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_adjustPredicateForRecent:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(EDHeuristicsMailboxPredictor *)self _limitToRecents])
  {
    v5 = MEMORY[0x1E696AB18];
    v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699A888]];
    v7 = MEMORY[0x1E696ABC8];
    v8 = [MEMORY[0x1E695DF00] ef_midnightNdaysAgo:400];
    v9 = [v7 expressionForConstantValue:v8];
    v10 = [v5 predicateWithLeftExpression:v6 rightExpression:v9 modifier:0 type:2 options:0];

    v11 = MEMORY[0x1E696AE18];
    v16[0] = v4;
    v16[1] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v13 = [v11 ef_andCompoundPredicateWithSubpredicates:v12];
  }

  else
  {
    v13 = v4;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_countsForPredicate:(id)a3
{
  v4 = a3;
  v5 = [(EDHeuristicsMailboxPredictor *)self _adjustPredicateForRecent:v4];

  v6 = objc_alloc(MEMORY[0x1E699AE28]);
  v7 = [v6 initWithTargetClass:objc_opt_class() predicate:v5 sortDescriptors:MEMORY[0x1E695E0F0]];
  v8 = [(EDHeuristicsMailboxPredictor *)self messagePersistence];
  v9 = [v8 countOfMessagesMatchingQueryPerMailbox:v7];

  return v9;
}

- (id)_conversationIDCountsForMessage:(id)a3
{
  v4 = [a3 conversationID];
  if (v4)
  {
    v5 = [MEMORY[0x1E699ADA0] predicateForMessagesInConversation:v4];
    v6 = [(EDHeuristicsMailboxPredictor *)self _countsForPredicate:v5];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (id)_senderCountsForMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 from];
  v6 = [v5 firstObject];
  v7 = [v6 ea_uncommentedAddress];

  if ([v7 ea_isLegalEmailAddress])
  {
    v8 = [MEMORY[0x1E699ADA0] predicateForMessagesWithSender:v7];
    v9 = [(EDHeuristicsMailboxPredictor *)self _countsForPredicate:v8];
  }

  else
  {
    v10 = +[EDMailboxPredictionController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [EDHeuristicsMailboxPredictor _senderCountsForMessage:];
    }

    v9 = MEMORY[0x1E695E0F8];
  }

  return v9;
}

- (id)_listIDCountsForMessage:(id)a3
{
  v4 = [a3 listIDHash];
  if (v4)
  {
    v5 = [EDMessageListItemPredicates predicateForMessagesWithListIDHash:v4];
    v6 = [(EDHeuristicsMailboxPredictor *)self _countsForPredicate:v5];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (id)_recipientCountsForMessage:(id)a3
{
  v4 = [(EDHeuristicsMailboxPredictor *)self _allowedRecipientsForMessage:a3];
  v5 = [v4 allObjects];

  if ([v5 count])
  {
    v6 = [MEMORY[0x1E699ADA0] predicateForMessagesWithRecipients:v5];
    v7 = [(EDHeuristicsMailboxPredictor *)self _countsForPredicate:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (id)_userCreatedMailboxIDs
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(EDHeuristicsMailboxPredictor *)self mailboxIDCache];
  v4 = [v3 objectForKey:@"MFUserCreatedMailboxIDs"];

  if (!v4)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = [(EDHeuristicsMailboxPredictor *)self mailboxPersistence];
    v6 = [v5 userCreatedMailboxObjectIDs];

    v7 = +[EDMailboxPredictionController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v23 = [v6 count];
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "Found %u user mailboxes.", buf, 8u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) url];
          v13 = [v12 absoluteString];
          [v4 addObject:v13];
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v14 = [(EDHeuristicsMailboxPredictor *)self mailboxIDCache];
    [v14 setObject:v4 forKey:@"MFUserCreatedMailboxIDs"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_removeSpecialMailboxesInCounts:(id)a3 message:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v6 = [a4 mailbox];
  v7 = [v6 URL];
  v8 = [v7 absoluteString];

  v9 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v21;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [(EDHeuristicsMailboxPredictor *)self _userCreatedMailboxIDs];
        v16 = [v15 containsObject:v14];

        if ((v16 & 1) == 0 || v8 && [v8 isEqualToString:v14])
        {
          [v9 addObject:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  if ([v9 count])
  {
    v17 = +[EDMailboxPredictionController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [EDHeuristicsMailboxPredictor _removeSpecialMailboxesInCounts:message:];
    }

    v18 = [v10 mutableCopy];
    [v18 removeObjectsForKeys:v9];
  }

  else
  {
    v18 = v10;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_topHitFromMailboxDictionary:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E699B800] object:0 withMeasure:0.0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__EDHeuristicsMailboxPredictor__topHitFromMailboxDictionary___block_invoke;
  v7[3] = &unk_1E8252670;
  v5 = v4;
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __61__EDHeuristicsMailboxPredictor__topHitFromMailboxDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  [v5 doubleValue];
  v7 = v6;
  [*(a1 + 32) measure];
  if (v7 > v8)
  {
    [*(a1 + 32) setMeasure:v7];
    [*(a1 + 32) setObject:v9];
  }
}

- (id)_topHitFromMailboxDictionary:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDHeuristicsMailboxPredictor *)self parameters];
  v9 = [v8 objectForKeyedSubscript:@"confusionThreshold"];

  v10 = [(EDHeuristicsMailboxPredictor *)self _removeSpecialMailboxesInCounts:v6 message:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 doubleValue];
    [(EDHeuristicsMailboxPredictor *)self _normalizedTermFrequencyTopHitFromDictionary:v10 withThreshold:?];
  }

  else
  {
    [(EDHeuristicsMailboxPredictor *)self _topHitFromMailboxDictionary:v10];
  }
  v11 = ;

  return v11;
}

- (id)_objectWithMeasure:(double)a3 timesHigherThanFollowUpInMeasures:(id)a4
{
  v5 = a4;
  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
  }

  else if ([v5 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v5 sortedArrayUsingSelector:sel_compare_];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 2}];
    [v8 measure];
    v10 = v9;

    v11 = [v7 lastObject];
    [v11 measure];
    v13 = v12;

    if (v13 <= v10 * a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v7 lastObject];
    }
  }

  return v6;
}

- (id)_normalizedTermFrequencyTopHitFromDictionary:(id)a3 withThreshold:(double)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v6 = [(EDHeuristicsMailboxPredictor *)self _topHitFromMailboxDictionary:?];
  v7 = v6;
  if (v6)
  {
    [v6 measure];
    v9 = v8;
    v10 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v27;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v11 objectForKeyedSubscript:v15];
          [v16 doubleValue];
          v18 = v17;

          v19 = [MEMORY[0x1E699B800] object:v15 withMeasure:v18 / v9];
          [v10 addObject:v19];
        }

        v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v20 = [(EDHeuristicsMailboxPredictor *)self _objectWithMeasure:v10 timesHigherThanFollowUpInMeasures:a4];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 object];
      v23 = [v11 objectForKeyedSubscript:v22];
      [v23 doubleValue];
      [v21 setMeasure:?];

      v24 = v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)_isAllowedRecipient:(id)a3
{
  v4 = a3;
  if ([v4 ea_isLegalEmailAddress])
  {
    v5 = [(EDHeuristicsMailboxPredictor *)self parameters];
    v6 = [v5 objectForKeyedSubscript:@"ignoreUserAddresses"];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = [(EDHeuristicsMailboxPredictor *)self userProfileProvider];
      v9 = [v8 allEmailAddresses];
      LODWORD(self) = [v9 containsObject:v4] ^ 1;
    }

    else
    {
      LOBYTE(self) = 1;
    }
  }

  else
  {
    self = +[EDMailboxPredictionController log];
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEBUG))
    {
      [EDHeuristicsMailboxPredictor _isAllowedRecipient:];
    }

    LOBYTE(self) = 0;
  }

  return self;
}

- (id)_allowedRecipientsForMessage:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v4 to];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v25 + 1) + 8 * i) ea_uncommentedAddress];
        v11 = [v10 lowercaseString];

        if (v11 && [(EDHeuristicsMailboxPredictor *)self _isAllowedRecipient:v11])
        {
          [v5 addObject:v11];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v4 cc];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v21 + 1) + 8 * j) ea_uncommentedAddress];
        v17 = [v16 lowercaseString];

        if (v17 && [(EDHeuristicsMailboxPredictor *)self _isAllowedRecipient:v17])
        {
          [v5 addObject:v17];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  if ([v5 count])
  {
    v18 = v5;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)predictMailboxIDsForMessages:(int)a1 limit:(_DWORD *)a2 .cold.1(int a1, _DWORD *a2)
{
  *a2 = 67109120;
  a2[1] = a1;
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

- (void)predictMailboxIDsForMessages:(void *)a1 limit:(uint64_t)a2 .cold.2(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_orderedModePredictionForMessage:(_BYTE *)a1 .cold.2(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)_weightedModePredictionsForMessage:(double)a3 .cold.3(void *a1, uint64_t a2, double a3)
{
  *a2 = 138412546;
  *(a2 + 4) = a1;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_senderCountsForMessage:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_removeSpecialMailboxesInCounts:message:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_isAllowedRecipient:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end