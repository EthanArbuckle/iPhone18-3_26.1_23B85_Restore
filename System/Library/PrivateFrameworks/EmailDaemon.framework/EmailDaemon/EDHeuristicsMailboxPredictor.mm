@interface EDHeuristicsMailboxPredictor
- (BOOL)_isAllowedRecipient:(id)recipient;
- (BOOL)_limitToRecents;
- (BOOL)_modeParameterIs:(id)is;
- (EDHeuristicsMailboxPredictor)initWithUserProfileProvider:(id)provider messagePersistence:(id)persistence mailboxPersistence:(id)mailboxPersistence;
- (EDHeuristicsMailboxPredictor)initWithUserProfileProvider:(id)provider messagePersistence:(id)persistence mailboxPersistence:(id)mailboxPersistence parameters:(id)parameters;
- (id)_adjustPredicateForRecent:(id)recent;
- (id)_allowedRecipientsForMessage:(id)message;
- (id)_conversationIDCountsForMessage:(id)message;
- (id)_countsForField:(id)field message:(id)message;
- (id)_countsForPredicate:(id)predicate;
- (id)_listIDCountsForMessage:(id)message;
- (id)_mergeDefaultParameters:(id)parameters withParameters:(id)withParameters;
- (id)_normalizedTermFrequencyTopHitFromDictionary:(id)dictionary withThreshold:(double)threshold;
- (id)_objectWithMeasure:(double)measure timesHigherThanFollowUpInMeasures:(id)measures;
- (id)_orderedModePredictionForMessage:(id)message;
- (id)_predictionsForMessage:(id)message limit:(unint64_t)limit;
- (id)_recipientCountsForMessage:(id)message;
- (id)_removeSpecialMailboxesInCounts:(id)counts message:(id)message;
- (id)_senderCountsForMessage:(id)message;
- (id)_summedWeightedPredictionsForMessage:(id)message limit:(unint64_t)limit;
- (id)_topHitFromMailboxDictionary:(id)dictionary;
- (id)_topHitFromMailboxDictionary:(id)dictionary message:(id)message;
- (id)_userCreatedMailboxIDs;
- (id)_weightedModePredictionsForMessage:(id)message;
- (id)predictMailboxIDsForMessages:(id)messages limit:(unint64_t)limit;
@end

@implementation EDHeuristicsMailboxPredictor

- (EDHeuristicsMailboxPredictor)initWithUserProfileProvider:(id)provider messagePersistence:(id)persistence mailboxPersistence:(id)mailboxPersistence
{
  v25[8] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  persistenceCopy = persistence;
  mailboxPersistenceCopy = mailboxPersistence;
  v20.receiver = self;
  v20.super_class = EDHeuristicsMailboxPredictor;
  v9 = [(EDHeuristicsMailboxPredictor *)&v20 init];
  v10 = v9;
  if (v9)
  {
    [(EDHeuristicsMailboxPredictor *)v9 setUserProfileProvider:providerCopy];
    [(EDHeuristicsMailboxPredictor *)v10 setMessagePersistence:persistenceCopy];
    [(EDHeuristicsMailboxPredictor *)v10 setMailboxPersistence:mailboxPersistenceCopy];
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

- (EDHeuristicsMailboxPredictor)initWithUserProfileProvider:(id)provider messagePersistence:(id)persistence mailboxPersistence:(id)mailboxPersistence parameters:(id)parameters
{
  providerCopy = provider;
  persistenceCopy = persistence;
  mailboxPersistenceCopy = mailboxPersistence;
  parametersCopy = parameters;
  v14 = [(EDHeuristicsMailboxPredictor *)self initWithUserProfileProvider:providerCopy messagePersistence:persistenceCopy mailboxPersistence:mailboxPersistenceCopy];
  v15 = v14;
  if (v14)
  {
    v16 = [(EDHeuristicsMailboxPredictor *)v14 _mergeDefaultParameters:v14->_parameters withParameters:parametersCopy];
    [(EDHeuristicsMailboxPredictor *)v15 setParameters:v16];
  }

  return v15;
}

- (id)_mergeDefaultParameters:(id)parameters withParameters:(id)withParameters
{
  parametersCopy = parameters;
  withParametersCopy = withParameters;
  if (!withParametersCopy)
  {
    v18 = parametersCopy;
    goto LABEL_16;
  }

  v9 = [parametersCopy mutableCopy];
  [v9 addEntriesFromDictionary:withParametersCopy];
  currentHandler = [v9 objectForKeyedSubscript:@"confusionThreshold"];
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDHeuristicsMailboxPredictor.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"[mergedParams[kConfusionThresholdParameterKey] isKindOfClass:[NSNumber class]] || [mergedParams[kConfusionThresholdParameterKey] isKindOfClass:[NSNull class]]"}];
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
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"EDHeuristicsMailboxPredictor.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"[mergedParams[kOrderParameterKey] isKindOfClass:[NSArray class]]"}];
LABEL_14:
    }
  }

  else
  {
    v19 = [v9 objectForKeyedSubscript:@"mode"];
    v20 = [v19 isEqual:@"weighted"];

    if (!v20)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [v9 objectForKeyedSubscript:@"mode"];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"EDHeuristicsMailboxPredictor.m" lineNumber:126 description:{@"Unknown mode: %@", v23}];

      goto LABEL_14;
    }

    v21 = [v9 objectForKeyedSubscript:@"weights"];
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if ((v22 & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"EDHeuristicsMailboxPredictor.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"[mergedParams[kWeightsParameterKey] isKindOfClass:[NSDictionary class]]"}];
      goto LABEL_14;
    }
  }

  v18 = [v9 copy];

LABEL_16:

  return v18;
}

- (id)predictMailboxIDsForMessages:(id)messages limit:(unint64_t)limit
{
  v75 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  limitCopy = limit;
  v6 = limit > 1 || [(EDHeuristicsMailboxPredictor *)self _modeParameterIs:@"weighted"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  selfCopy = self;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = messagesCopy;
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
        persistentID = [v8 persistentID];
        v50 = [(EDHeuristicsMailboxPredictor *)selfCopy _predictionsForMessage:v8 limit:limitCopy];
        v9 = +[EDMailboxPredictionController log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v50 count];
          subject = [v8 subject];
          *buf = 67109634;
          v69 = v10;
          v70 = 2112;
          v71 = persistentID;
          v72 = 2112;
          v73 = subject;
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
              object = [v16 object];
              if (v6)
              {
                v18 = [dictionary objectForKeyedSubscript:object];

                if (v18)
                {
                  v19 = [dictionary objectForKeyedSubscript:object];
                  [v16 measure];
                  v21 = v20;
                  [v19 measure];
                  [v19 setMeasure:v21 + v22];
                }

                else
                {
                  v25 = MEMORY[0x1E699B800];
                  [v16 measure];
                  v19 = [v25 object:object withMeasure:?];
                  [dictionary setObject:v19 forKeyedSubscript:object];
                }
              }

              else
              {
                v23 = [dictionary objectForKeyedSubscript:object];

                if (v23)
                {
                  v19 = [dictionary objectForKeyedSubscript:object];
                  [v19 measure];
                  [v19 setMeasure:v24 + 1.0];
                }

                else
                {
                  v19 = [MEMORY[0x1E699B800] object:object withMeasure:1.0];
                  [dictionary setObject:v19 forKeyedSubscript:object];
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
    -[EDHeuristicsMailboxPredictor predictMailboxIDsForMessages:limit:].cold.1([dictionary count], v66);
  }

  v27 = MEMORY[0x1E699B800];
  if (limitCopy == 1)
  {
    allValues = [dictionary allValues];
    objectEnumerator = [allValues objectEnumerator];
    v30 = [v27 max:objectEnumerator];
    object2 = [v30 object];

    if (object2)
    {
      v65 = object2;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    }

    else
    {
      v32 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    allValues2 = [dictionary allValues];
    v34 = [v27 reverseSortedObjects:allValues2 limit:limitCopy];

    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v34, "count")}];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    object2 = v34;
    v35 = [object2 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v35)
    {
      v36 = *v53;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v53 != v36)
          {
            objc_enumerationMutation(object2);
          }

          object3 = [*(*(&v52 + 1) + 8 * k) object];
          [v32 addObject:object3];
        }

        v35 = [object2 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v35);
    }
  }

  v39 = +[EDMailboxPredictionController log];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    firstObject = [v32 firstObject];
    [EDHeuristicsMailboxPredictor predictMailboxIDsForMessages:firstObject limit:buf];
  }

  v41 = *MEMORY[0x1E69E9840];

  return v32;
}

- (BOOL)_modeParameterIs:(id)is
{
  isCopy = is;
  parameters = [(EDHeuristicsMailboxPredictor *)self parameters];
  v6 = [parameters objectForKeyedSubscript:@"mode"];
  v7 = [v6 isEqualToString:isCopy];

  return v7;
}

- (id)_predictionsForMessage:(id)message limit:(unint64_t)limit
{
  messageCopy = message;
  if (limit < 2)
  {
    if ([(EDHeuristicsMailboxPredictor *)self _modeParameterIs:@"ordered"])
    {
      [(EDHeuristicsMailboxPredictor *)self _orderedModePredictionForMessage:messageCopy];
    }

    else
    {
      [(EDHeuristicsMailboxPredictor *)self _weightedModePredictionsForMessage:messageCopy];
    }
    v7 = ;
  }

  else
  {
    v7 = [(EDHeuristicsMailboxPredictor *)self _summedWeightedPredictionsForMessage:messageCopy limit:limit];
  }

  v8 = v7;

  return v8;
}

- (id)_orderedModePredictionForMessage:(id)message
{
  v54 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = +[EDMailboxPredictionController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [EDHeuristicsMailboxPredictor _orderedModePredictionForMessage:];
  }

  parameters = [(EDHeuristicsMailboxPredictor *)self parameters];
  v6 = [parameters objectForKeyedSubscript:@"orderedThreshold"];
  [v6 doubleValue];
  v8 = v7;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  parameters2 = [(EDHeuristicsMailboxPredictor *)self parameters];
  obj = [parameters2 objectForKeyedSubscript:@"order"];

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
        v14 = [(EDHeuristicsMailboxPredictor *)self _countsForField:*&v13 message:messageCopy, v34];
        v15 = [(EDHeuristicsMailboxPredictor *)self _topHitFromMailboxDictionary:v14 message:messageCopy];
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
            object = [v15 object];
            *buf = 134218498;
            v48 = v29;
            v49 = 2112;
            v50 = v13;
            v51 = 2112;
            v52 = object;
            _os_log_debug_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEBUG, "Found %.0lf hit for **%@** in %@", buf, 0x20u);
          }

          object2 = [v15 object];
          mailbox = [messageCopy mailbox];
          v23 = [mailbox URL];
          absoluteString = [v23 absoluteString];
          v25 = [object2 isEqual:absoluteString];

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

- (id)_summedWeightedPredictionsForMessage:(id)message limit:(unint64_t)limit
{
  v81 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = +[EDMailboxPredictionController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [EDHeuristicsMailboxPredictor _summedWeightedPredictionsForMessage:limit:];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  parameters = [(EDHeuristicsMailboxPredictor *)self parameters];
  obj = [parameters objectForKeyedSubscript:@"weights"];

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
        parameters2 = [(EDHeuristicsMailboxPredictor *)self parameters];
        v8 = [parameters2 objectForKeyedSubscript:@"weights"];
        v9 = [v8 objectForKeyedSubscript:v59];
        [v9 doubleValue];
        v11 = v10;

        v12 = [(EDHeuristicsMailboxPredictor *)self _countsForField:v59 message:messageCopy];
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

        v16 = [(EDHeuristicsMailboxPredictor *)self _removeSpecialMailboxesInCounts:v12 message:messageCopy];

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

              v27 = [dictionary objectForKeyedSubscript:v21];
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

              [dictionary setObject:v33 forKeyedSubscript:v21];
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

  parameters3 = [(EDHeuristicsMailboxPredictor *)self parameters];
  v35 = [parameters3 objectForKeyedSubscript:@"weightedThreshold"];
  [v35 doubleValue];
  v37 = v36;

  v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dictionary, "count")}];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v39 = dictionary;
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
    v48 = [MEMORY[0x1E699B800] reverseSortedObjects:v38 limit:limit];
  }

  else
  {
    v48 = MEMORY[0x1E695E0F0];
  }

  v49 = *MEMORY[0x1E69E9840];

  return v48;
}

- (id)_weightedModePredictionsForMessage:(id)message
{
  v72 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = +[EDMailboxPredictionController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [EDHeuristicsMailboxPredictor _weightedModePredictionsForMessage:];
  }

  parameters = [(EDHeuristicsMailboxPredictor *)self parameters];
  v6 = [parameters objectForKeyedSubscript:@"weightedThreshold"];
  [v6 doubleValue];
  v8 = v7;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  parameters2 = [(EDHeuristicsMailboxPredictor *)self parameters];
  obj = [parameters2 objectForKeyedSubscript:@"weights"];

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
      parameters3 = [(EDHeuristicsMailboxPredictor *)self parameters];
      v15 = [parameters3 objectForKeyedSubscript:@"weights"];
      v16 = [v15 objectForKeyedSubscript:*&v13];
      [v16 doubleValue];
      v18 = v17;

      v19 = [(EDHeuristicsMailboxPredictor *)self _countsForField:*&v13 message:messageCopy];
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

      v24 = [(EDHeuristicsMailboxPredictor *)self _topHitFromMailboxDictionary:v19 message:messageCopy];
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
          object = [v25 object];
          *buf = 134218754;
          v64 = v40;
          v65 = 2048;
          v66 = v29;
          v67 = 2112;
          v68 = v13;
          v69 = 2112;
          v70 = object;
          _os_log_debug_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEBUG, "Found %.0lf (weighted=%.1lf) hits for **%@** in %@", buf, 0x2Au);
        }

        object2 = [v25 object];
        mailbox = [messageCopy mailbox];
        v32 = [mailbox URL];
        absoluteString = [v32 absoluteString];
        v34 = [object2 isEqual:absoluteString];

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
    object3 = [v51 object];
    [v51 measure];
    [(EDHeuristicsMailboxPredictor *)object3 _weightedModePredictionsForMessage:buf, v44];
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

- (id)_countsForField:(id)field message:(id)message
{
  fieldCopy = field;
  messageCopy = message;
  if ([fieldCopy isEqualToString:@"conversationID"])
  {
    v9 = [(EDHeuristicsMailboxPredictor *)self _conversationIDCountsForMessage:messageCopy];
LABEL_9:
    v10 = v9;
    goto LABEL_10;
  }

  if ([fieldCopy isEqualToString:@"sender"])
  {
    v9 = [(EDHeuristicsMailboxPredictor *)self _senderCountsForMessage:messageCopy];
    goto LABEL_9;
  }

  if ([fieldCopy isEqualToString:@"recipient"])
  {
    v9 = [(EDHeuristicsMailboxPredictor *)self _recipientCountsForMessage:messageCopy];
    goto LABEL_9;
  }

  if ([fieldCopy isEqualToString:@"listID"])
  {
    v9 = [(EDHeuristicsMailboxPredictor *)self _listIDCountsForMessage:messageCopy];
    goto LABEL_9;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"EDHeuristicsMailboxPredictor.m" lineNumber:326 description:{@"Unknown field: %@", fieldCopy}];

  v10 = MEMORY[0x1E695E0F8];
LABEL_10:

  return v10;
}

- (BOOL)_limitToRecents
{
  parameters = [(EDHeuristicsMailboxPredictor *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"limitToRecentMessages"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)_adjustPredicateForRecent:(id)recent
{
  v16[2] = *MEMORY[0x1E69E9840];
  recentCopy = recent;
  if ([(EDHeuristicsMailboxPredictor *)self _limitToRecents])
  {
    v5 = MEMORY[0x1E696AB18];
    v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699A888]];
    v7 = MEMORY[0x1E696ABC8];
    v8 = [MEMORY[0x1E695DF00] ef_midnightNdaysAgo:400];
    v9 = [v7 expressionForConstantValue:v8];
    v10 = [v5 predicateWithLeftExpression:v6 rightExpression:v9 modifier:0 type:2 options:0];

    v11 = MEMORY[0x1E696AE18];
    v16[0] = recentCopy;
    v16[1] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v13 = [v11 ef_andCompoundPredicateWithSubpredicates:v12];
  }

  else
  {
    v13 = recentCopy;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_countsForPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [(EDHeuristicsMailboxPredictor *)self _adjustPredicateForRecent:predicateCopy];

  v6 = objc_alloc(MEMORY[0x1E699AE28]);
  v7 = [v6 initWithTargetClass:objc_opt_class() predicate:v5 sortDescriptors:MEMORY[0x1E695E0F0]];
  messagePersistence = [(EDHeuristicsMailboxPredictor *)self messagePersistence];
  v9 = [messagePersistence countOfMessagesMatchingQueryPerMailbox:v7];

  return v9;
}

- (id)_conversationIDCountsForMessage:(id)message
{
  conversationID = [message conversationID];
  if (conversationID)
  {
    v5 = [MEMORY[0x1E699ADA0] predicateForMessagesInConversation:conversationID];
    v6 = [(EDHeuristicsMailboxPredictor *)self _countsForPredicate:v5];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (id)_senderCountsForMessage:(id)message
{
  messageCopy = message;
  from = [messageCopy from];
  firstObject = [from firstObject];
  ea_uncommentedAddress = [firstObject ea_uncommentedAddress];

  if ([ea_uncommentedAddress ea_isLegalEmailAddress])
  {
    v8 = [MEMORY[0x1E699ADA0] predicateForMessagesWithSender:ea_uncommentedAddress];
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

- (id)_listIDCountsForMessage:(id)message
{
  listIDHash = [message listIDHash];
  if (listIDHash)
  {
    v5 = [EDMessageListItemPredicates predicateForMessagesWithListIDHash:listIDHash];
    v6 = [(EDHeuristicsMailboxPredictor *)self _countsForPredicate:v5];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (id)_recipientCountsForMessage:(id)message
{
  v4 = [(EDHeuristicsMailboxPredictor *)self _allowedRecipientsForMessage:message];
  allObjects = [v4 allObjects];

  if ([allObjects count])
  {
    v6 = [MEMORY[0x1E699ADA0] predicateForMessagesWithRecipients:allObjects];
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
  mailboxIDCache = [(EDHeuristicsMailboxPredictor *)self mailboxIDCache];
  v4 = [mailboxIDCache objectForKey:@"MFUserCreatedMailboxIDs"];

  if (!v4)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    mailboxPersistence = [(EDHeuristicsMailboxPredictor *)self mailboxPersistence];
    userCreatedMailboxObjectIDs = [mailboxPersistence userCreatedMailboxObjectIDs];

    v7 = +[EDMailboxPredictionController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v23 = [userCreatedMailboxObjectIDs count];
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "Found %u user mailboxes.", buf, 8u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = userCreatedMailboxObjectIDs;
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
          absoluteString = [v12 absoluteString];
          [v4 addObject:absoluteString];
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    mailboxIDCache2 = [(EDHeuristicsMailboxPredictor *)self mailboxIDCache];
    [mailboxIDCache2 setObject:v4 forKey:@"MFUserCreatedMailboxIDs"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_removeSpecialMailboxesInCounts:(id)counts message:(id)message
{
  v27 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  mailbox = [message mailbox];
  v7 = [mailbox URL];
  absoluteString = [v7 absoluteString];

  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = countsCopy;
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
        _userCreatedMailboxIDs = [(EDHeuristicsMailboxPredictor *)self _userCreatedMailboxIDs];
        v16 = [_userCreatedMailboxIDs containsObject:v14];

        if ((v16 & 1) == 0 || absoluteString && [absoluteString isEqualToString:v14])
        {
          [array addObject:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  if ([array count])
  {
    v17 = +[EDMailboxPredictionController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [EDHeuristicsMailboxPredictor _removeSpecialMailboxesInCounts:message:];
    }

    v18 = [v10 mutableCopy];
    [v18 removeObjectsForKeys:array];
  }

  else
  {
    v18 = v10;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_topHitFromMailboxDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [MEMORY[0x1E699B800] object:0 withMeasure:0.0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__EDHeuristicsMailboxPredictor__topHitFromMailboxDictionary___block_invoke;
  v7[3] = &unk_1E8252670;
  v5 = v4;
  v8 = v5;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v7];

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

- (id)_topHitFromMailboxDictionary:(id)dictionary message:(id)message
{
  dictionaryCopy = dictionary;
  messageCopy = message;
  parameters = [(EDHeuristicsMailboxPredictor *)self parameters];
  v9 = [parameters objectForKeyedSubscript:@"confusionThreshold"];

  v10 = [(EDHeuristicsMailboxPredictor *)self _removeSpecialMailboxesInCounts:dictionaryCopy message:messageCopy];

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

- (id)_objectWithMeasure:(double)measure timesHigherThanFollowUpInMeasures:(id)measures
{
  measuresCopy = measures;
  if ([measuresCopy count] == 1)
  {
    firstObject = [measuresCopy firstObject];
  }

  else if ([measuresCopy count] < 2)
  {
    firstObject = 0;
  }

  else
  {
    v7 = [measuresCopy sortedArrayUsingSelector:sel_compare_];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 2}];
    [v8 measure];
    v10 = v9;

    lastObject = [v7 lastObject];
    [lastObject measure];
    v13 = v12;

    if (v13 <= v10 * measure)
    {
      firstObject = 0;
    }

    else
    {
      firstObject = [v7 lastObject];
    }
  }

  return firstObject;
}

- (id)_normalizedTermFrequencyTopHitFromDictionary:(id)dictionary withThreshold:(double)threshold
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [(EDHeuristicsMailboxPredictor *)self _topHitFromMailboxDictionary:?];
  v7 = v6;
  if (v6)
  {
    [v6 measure];
    v9 = v8;
    array = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = dictionaryCopy;
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
          [array addObject:v19];
        }

        v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v20 = [(EDHeuristicsMailboxPredictor *)self _objectWithMeasure:array timesHigherThanFollowUpInMeasures:threshold];
    v21 = v20;
    if (v20)
    {
      object = [v20 object];
      v23 = [v11 objectForKeyedSubscript:object];
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

- (BOOL)_isAllowedRecipient:(id)recipient
{
  recipientCopy = recipient;
  if ([recipientCopy ea_isLegalEmailAddress])
  {
    parameters = [(EDHeuristicsMailboxPredictor *)self parameters];
    v6 = [parameters objectForKeyedSubscript:@"ignoreUserAddresses"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      userProfileProvider = [(EDHeuristicsMailboxPredictor *)self userProfileProvider];
      allEmailAddresses = [userProfileProvider allEmailAddresses];
      LODWORD(self) = [allEmailAddresses containsObject:recipientCopy] ^ 1;
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

- (id)_allowedRecipientsForMessage:(id)message
{
  v31 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = [MEMORY[0x1E695DFA8] set];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [messageCopy to];
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

        ea_uncommentedAddress = [*(*(&v25 + 1) + 8 * i) ea_uncommentedAddress];
        lowercaseString = [ea_uncommentedAddress lowercaseString];

        if (lowercaseString && [(EDHeuristicsMailboxPredictor *)self _isAllowedRecipient:lowercaseString])
        {
          [v5 addObject:lowercaseString];
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
  v12 = [messageCopy cc];
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

        ea_uncommentedAddress2 = [*(*(&v21 + 1) + 8 * j) ea_uncommentedAddress];
        lowercaseString2 = [ea_uncommentedAddress2 lowercaseString];

        if (lowercaseString2 && [(EDHeuristicsMailboxPredictor *)self _isAllowedRecipient:lowercaseString2])
        {
          [v5 addObject:lowercaseString2];
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