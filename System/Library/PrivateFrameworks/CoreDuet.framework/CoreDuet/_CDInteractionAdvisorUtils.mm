@interface _CDInteractionAdvisorUtils
+ (BOOL)adjustRanker:(id)ranker forModel:(unint64_t)model;
+ (BOOL)contact:(id)contact mayRepresentTheSamePersonAsOneOf:(id)of;
+ (id)adviceBasedOnInteractions:(id)interactions forContacts:(id)contacts andRanker:(id)ranker ignoringContacts:(id)ignoringContacts withLimit:(unint64_t)limit aggregateByIdentifier:(BOOL)identifier requireOneOutgoingInteraction:(BOOL)interaction;
+ (id)contactsForIdentifiers:(id)identifiers;
+ (id)contactsInInteraction:(id)interaction;
+ (id)createTimePredicateForReferenceDate:(id)date recentLookBackDays:(int)days windowHours:(int)hours lookBackWeeks:(int)weeks lookAheadWeeks:(int)aheadWeeks;
+ (id)hashForAdviceWithContact:(id)contact account:(id)account bundleId:(id)id mechanism:(int64_t)mechanism;
+ (id)inferConsumerIdentifierFromSettings:(id)settings;
+ (id)nameFromModelID:(unint64_t)d;
+ (id)rankContacts:(id)contacts basedOnInteractions:(id)interactions andRanker:(id)ranker;
+ (id)stringKeyForAdvice:(id)advice;
+ (id)unionSet:(id)set withSet:(id)withSet;
+ (unint64_t)modelTypeForConsumerIdentifier:(id)identifier modelSettings:(id)settings;
+ (void)adjustForConsumerSettings:(id)settings modelSettings:(id)modelSettings andRanker:(id)ranker;
@end

@implementation _CDInteractionAdvisorUtils

+ (id)stringKeyForAdvice:(id)advice
{
  v3 = MEMORY[0x1E696AEC0];
  adviceCopy = advice;
  contact = [adviceCopy contact];
  identifier = [contact identifier];
  account = [adviceCopy account];
  bundleId = [adviceCopy bundleId];
  mechanism = [adviceCopy mechanism];

  v10 = [v3 stringWithFormat:@"%@, %@, %@, %ld", identifier, account, bundleId, mechanism];

  return v10;
}

+ (id)hashForAdviceWithContact:(id)contact account:(id)account bundleId:(id)id mechanism:(int64_t)mechanism
{
  idCopy = id;
  accountCopy = account;
  identifier = [contact identifier];
  v12 = [identifier hash];
  v13 = [accountCopy hash];

  v14 = [idCopy hash];
  v15 = MEMORY[0x1E696AD98];

  return [v15 numberWithUnsignedInteger:v12 ^ mechanism ^ v13 ^ v14];
}

+ (id)unionSet:(id)set withSet:(id)withSet
{
  setCopy = set;
  withSetCopy = withSet;
  if (setCopy && [setCopy count])
  {
    if (withSetCopy && [withSetCopy count])
    {
      v7 = [setCopy mutableCopy];
      [v7 unionSet:withSetCopy];
      goto LABEL_9;
    }

    v8 = setCopy;
  }

  else
  {
    v8 = withSetCopy;
  }

  v7 = v8;
LABEL_9:

  return v7;
}

+ (BOOL)contact:(id)contact mayRepresentTheSamePersonAsOneOf:(id)of
{
  v17 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  ofCopy = of;
  v7 = [ofCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(ofCopy);
        }

        if ([contactCopy mayRepresentSamePersonAs:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [ofCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)contactsForIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v4 = identifiersCopy;
  if (identifiersCopy)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [[_CDContact alloc] initWithIdentifier:*(*(&v14 + 1) + 8 * i) type:0 customIdentifier:0 displayName:0 displayType:0 personId:0 personIdType:0];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)contactsInInteraction:(id)interaction
{
  interactionCopy = interaction;
  v4 = MEMORY[0x1E695DF70];
  recipients = [interactionCopy recipients];
  v6 = [v4 arrayWithArray:recipients];

  sender = [interactionCopy sender];

  if (sender)
  {
    sender2 = [interactionCopy sender];
    [v6 addObject:sender2];
  }

  return v6;
}

+ (id)adviceBasedOnInteractions:(id)interactions forContacts:(id)contacts andRanker:(id)ranker ignoringContacts:(id)ignoringContacts withLimit:(unint64_t)limit aggregateByIdentifier:(BOOL)identifier requireOneOutgoingInteraction:(BOOL)interaction
{
  identifierCopy = identifier;
  v113 = *MEMORY[0x1E69E9840];
  interactionsCopy = interactions;
  contactsCopy = contacts;
  rankerCopy = ranker;
  ignoringContactsCopy = ignoringContacts;
  v80 = contactsCopy;
  if (contactsCopy)
  {
    v15 = MEMORY[0x1E695DFD8];
    v16 = [contactsCopy valueForKey:@"identifier"];
    v17 = [v15 setWithArray:v16];
  }

  else
  {
    v17 = 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteractionAdvisorUtils adviceBasedOnInteractions:interactionsCopy forContacts:? andRanker:? ignoringContacts:? withLimit:? aggregateByIdentifier:? requireOneOutgoingInteraction:?];
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = interactionsCopy;
  v89 = dictionary;
  v87 = ignoringContactsCopy;
  v83 = [obj countByEnumeratingWithState:&v104 objects:v112 count:16];
  if (v83)
  {
    v82 = *v105;
    do
    {
      for (i = 0; i != v83; ++i)
      {
        if (*v105 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v104 + 1) + 8 * i);
        v22 = [rankerCopy rankInteraction:v21];
        if (v22)
        {
          v90 = v22;
          v84 = i;
          v23 = [self contactsInInteraction:v21];
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v24 = [v23 countByEnumeratingWithState:&v100 objects:v111 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v101;
            v88 = v23;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v101 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v100 + 1) + 8 * j);
                if (v17)
                {
                  identifier = [*(*(&v100 + 1) + 8 * j) identifier];
                  v30 = [v17 containsObject:identifier];

                  if (!v30)
                  {
                    continue;
                  }
                }

                if (!ignoringContactsCopy || ![ignoringContactsCopy count] || !+[_CDInteractionAdvisorUtils contact:mayRepresentTheSamePersonAsOneOf:](_CDInteractionAdvisorUtils, "contact:mayRepresentTheSamePersonAsOneOf:", v28, ignoringContactsCopy))
                {
                  if (v28)
                  {
                    if ([v28 personIdType] || (objc_msgSend(v28, "identifier"), v31 = objc_claimAutoreleasedReturnValue(), v31, v31))
                    {
                      if ([rankerCopy contactIsAllowed:v28])
                      {
                        if (identifierCopy)
                        {
                          v32 = MEMORY[0x1E696AD98];
                          identifier2 = [v28 identifier];
                          v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(identifier2, "hash")}];
                        }

                        else
                        {
                          identifier2 = [v21 account];
                          bundleId = [v21 bundleId];
                          v34 = [self hashForAdviceWithContact:v28 account:identifier2 bundleId:bundleId mechanism:{objc_msgSend(v21, "mechanism")}];
                        }

                        v36 = [v89 objectForKeyedSubscript:v34];
                        if (v36)
                        {
                          v37 = v36;
                          contact = [(_CDAdvisedInteraction *)v36 contact];
                          [contact mergeWithContact:v28];
                        }

                        else
                        {
                          v37 = objc_alloc_init(_CDAdvisedInteraction);
                          -[_CDAdvisedInteraction setMechanism:](v37, "setMechanism:", [v21 mechanism]);
                          bundleId2 = [v21 bundleId];
                          [(_CDAdvisedInteraction *)v37 setBundleId:bundleId2];

                          account = [v21 account];
                          [(_CDAdvisedInteraction *)v37 setAccount:account];

                          v41 = [MEMORY[0x1E695DFD8] set];
                          [(_CDAdvisedInteraction *)v37 setReasons:v41];

                          [(_CDAdvisedInteraction *)v37 setScore:0.0];
                          [(_CDAdvisedInteraction *)v37 setContact:v28];
                          [v89 setObject:v37 forKeyedSubscript:v34];
                        }

                        ignoringContactsCopy = v87;
                        if ([v21 direction] == 1)
                        {
                          [(_CDAdvisedInteraction *)v37 setSimilarOutgoingInteractionsCount:[(_CDAdvisedInteraction *)v37 similarOutgoingInteractionsCount]+ 1];
                        }

                        else if ([v21 direction])
                        {
                          if ([v21 direction] == 2)
                          {
                            [(_CDAdvisedInteraction *)v37 setSimilarBidirectionalInteractionsCount:[(_CDAdvisedInteraction *)v37 similarBidirectionalInteractionsCount]+ 1];
                          }

                          else
                          {
                            [v21 direction];
                          }
                        }

                        else
                        {
                          [(_CDAdvisedInteraction *)v37 setSimilarIncomingInteractionsCount:[(_CDAdvisedInteraction *)v37 similarIncomingInteractionsCount]+ 1];
                        }

                        if ([rankerCopy rankAggregationMethod] == 1)
                        {
                          [(_CDAdvisedInteraction *)v37 score];
                          v43 = v42;
                          [v90 score];
                          if (v43 >= v44)
                          {
                            v44 = v43;
                          }
                        }

                        else
                        {
                          [v90 score];
                          v46 = v45;
                          [(_CDAdvisedInteraction *)v37 score];
                          v44 = v46 + v47;
                        }

                        [(_CDAdvisedInteraction *)v37 setScore:v44];
                        reasons = [v90 reasons];
                        [(_CDAdvisedInteraction *)v37 addReasons:reasons];

                        v23 = v88;
                      }
                    }
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v100 objects:v111 count:16];
            }

            while (v25);
          }

          dictionary = v89;
          v22 = v90;
          i = v84;
        }
      }

      v83 = [obj countByEnumeratingWithState:&v104 objects:v112 count:16];
    }

    while (v83);
  }

  [dictionary allValues];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v49 = v99 = 0u;
  v50 = [v49 countByEnumeratingWithState:&v96 objects:v110 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v97;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v97 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v96 + 1) + 8 * k);
        reasons2 = [v54 reasons];
        v56 = [reasons2 count];

        if (!v56)
        {
          v57 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F05EE958];
          [v54 setReasons:v57];
        }
      }

      v51 = [v49 countByEnumeratingWithState:&v96 objects:v110 count:16];
    }

    while (v51);
  }

  if (![rankerCopy canRankContacts])
  {
    v58 = v49;
    v69 = v89;
    if (!interaction)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v49, "count")}];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v59 = v49;
  v60 = [v59 countByEnumeratingWithState:&v92 objects:v109 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v93;
    do
    {
      for (m = 0; m != v61; ++m)
      {
        if (*v93 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v92 + 1) + 8 * m);
        contact2 = [v64 contact];
        [rankerCopy rankContact:contact2];
        v67 = v66;

        if (v67 > 0.0)
        {
          [v64 score];
          [v64 setScore:v67 * v68];
          [v58 addObject:v64];
        }
      }

      v61 = [v59 countByEnumeratingWithState:&v92 objects:v109 count:16];
    }

    while (v61);
  }

  v69 = v89;
  if (interaction)
  {
LABEL_72:
    v70 = [v58 indexesOfObjectsPassingTest:&__block_literal_global_261];
    v71 = [v58 objectsAtIndexes:v70];

    v58 = v71;
  }

LABEL_73:
  v72 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"score" ascending:0];
  v108 = v72;
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];

  v74 = [v58 sortedArrayUsingDescriptors:v73];
  if ([v74 count] > limit)
  {
    v75 = [v74 subarrayWithRange:0];

    v74 = v75;
  }

  v76 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteractionAdvisorUtils adviceBasedOnInteractions:v74 forContacts:? andRanker:? ignoringContacts:? withLimit:? aggregateByIdentifier:? requireOneOutgoingInteraction:?];
  }

  v77 = *MEMORY[0x1E69E9840];

  return v74;
}

+ (id)rankContacts:(id)contacts basedOnInteractions:(id)interactions andRanker:(id)ranker
{
  v65 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  interactionsCopy = interactions;
  rankerCopy = ranker;
  v43 = contactsCopy;
  v42 = [contactsCopy valueForKey:@"identifier"];
  v50 = [MEMORY[0x1E695DFD8] setWithArray:?];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteractionAdvisorUtils rankContacts:interactionsCopy basedOnInteractions:? andRanker:?];
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = interactionsCopy;
  v51 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v51)
  {
    v12 = *v60;
    v13 = 0x1E695D000uLL;
    v44 = *v60;
    selfCopy = self;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v60 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v59 + 1) + 8 * i);
        v16 = [self contactsInInteraction:v15];
        v17 = [v16 valueForKey:@"identifier"];

        v18 = v17;
        v19 = [*(v13 + 4008) setWithArray:v17];
        [v19 intersectSet:v50];
        if ([v19 count])
        {
          v52 = i;
          v20 = [rankerCopy rankInteraction:v15];
          if (v20)
          {
            v48 = v19;
            v49 = v18;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v21 = v19;
            v22 = [v21 countByEnumeratingWithState:&v55 objects:v63 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v56;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v56 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v55 + 1) + 8 * j);
                  v27 = [dictionary objectForKeyedSubscript:v26];
                  if (v27)
                  {
                    v28 = v27;
                  }

                  else
                  {
                    v28 = &unk_1F05EE970;
                  }

                  v29 = MEMORY[0x1E696AD98];
                  [v28 doubleValue];
                  v31 = v30;
                  [v20 score];
                  v33 = [v29 numberWithDouble:v31 + v32];
                  [dictionary setObject:v33 forKeyedSubscript:v26];
                }

                v23 = [v21 countByEnumeratingWithState:&v55 objects:v63 count:16];
              }

              while (v23);
            }

            v12 = v44;
            self = selfCopy;
            v13 = 0x1E695D000;
            v19 = v48;
            v18 = v49;
          }

          i = v52;
        }
      }

      v51 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v51);
  }

  if ([v42 count])
  {
    v34 = 0;
    do
    {
      v35 = [v42 objectAtIndexedSubscript:v34];
      v36 = [dictionary objectForKeyedSubscript:v35];

      if (!v36)
      {
        v37 = [MEMORY[0x1E696AD98] numberWithDouble:v34 * -100.0];
        [dictionary setObject:v37 forKeyedSubscript:v35];
      }

      ++v34;
    }

    while (v34 < [v42 count]);
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __73___CDInteractionAdvisorUtils_rankContacts_basedOnInteractions_andRanker___block_invoke;
  v53[3] = &unk_1E73682B0;
  v54 = dictionary;
  v38 = dictionary;
  v39 = [v43 sortedArrayUsingComparator:v53];

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (id)createTimePredicateForReferenceDate:(id)date recentLookBackDays:(int)days windowHours:(int)hours lookBackWeeks:(int)weeks lookAheadWeeks:(int)aheadWeeks
{
  v32[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v12 = [dateCopy dateByAddingTimeInterval:days * -86400.0];
  v31 = [dateCopy dateByAddingTimeInterval:(604800 * aheadWeeks)];
  v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate > %@ AND startDate <= %@", v12, v31];
  array = [MEMORY[0x1E695DF70] array];
  v14 = dateCopy;
  if (weeks >= 1)
  {
    v15 = -604800 - 1800 * hours;
    v16 = 1800 * hours - 604800;
    do
    {
      v17 = [v14 dateByAddingTimeInterval:v15];
      v18 = [v14 dateByAddingTimeInterval:v16];
      [v17 timeIntervalSinceReferenceDate];
      v20 = v19;
      [v12 timeIntervalSinceReferenceDate];
      if (v20 <= v21)
      {
        v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate > %@ AND startDate <= %@", v17, v18];
        [array addObject:v22];
      }

      v15 -= 604800;
      v16 -= 604800;
      --weeks;
    }

    while (weeks);
  }

  if ([array count])
  {
    v23 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:array];
    v24 = MEMORY[0x1E696AB28];
    v25 = v30;
    v32[0] = v30;
    v32[1] = v23;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v27 = [v24 orPredicateWithSubpredicates:v26];
  }

  else
  {
    v25 = v30;
    v27 = v30;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)inferConsumerIdentifierFromSettings:(id)settings
{
  settingsCopy = settings;
  consumerIdentifier = [settingsCopy consumerIdentifier];

  if (consumerIdentifier)
  {
    consumerIdentifier2 = [settingsCopy consumerIdentifier];
    goto LABEL_22;
  }

  callerBundleId = [settingsCopy callerBundleId];
  lowercaseString = [callerBundleId lowercaseString];
  if (![lowercaseString isEqualToString:@"com.apple.mobilesms"])
  {
    goto LABEL_10;
  }

  contactPrefix = [settingsCopy contactPrefix];
  if ([contactPrefix length])
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  constrainMechanisms = [settingsCopy constrainMechanisms];
  if (![constrainMechanisms containsObject:&unk_1F05EE988])
  {
LABEL_8:

    goto LABEL_9;
  }

  constrainPersonIds = [settingsCopy constrainPersonIds];
  if ([constrainPersonIds count])
  {

    goto LABEL_8;
  }

  constrainIdentifiers = [settingsCopy constrainIdentifiers];
  v19 = [constrainIdentifiers count];

  if (!v19)
  {
    v20 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_191750000, v20, OS_LOG_TYPE_INFO, "Inferred consumer mqa", buf, 2u);
    }

    consumerIdentifier2 = @"com.apple.mobilesms.quickaction";
    goto LABEL_22;
  }

LABEL_11:
  callerBundleId2 = [settingsCopy callerBundleId];
  lowercaseString2 = [callerBundleId2 lowercaseString];
  if (([lowercaseString2 isEqualToString:@"com.apple.duetexpertd"] & 1) == 0)
  {
LABEL_20:

LABEL_21:
    consumerIdentifier2 = 0;
    goto LABEL_22;
  }

  contactPrefix2 = [settingsCopy contactPrefix];
  if ([contactPrefix2 length])
  {
LABEL_19:

    goto LABEL_20;
  }

  constrainMechanisms2 = [settingsCopy constrainMechanisms];
  if (![constrainMechanisms2 containsObject:&unk_1F05EE9A0])
  {
LABEL_18:

    goto LABEL_19;
  }

  constrainMechanisms3 = [settingsCopy constrainMechanisms];
  if ([constrainMechanisms3 containsObject:&unk_1F05EE988])
  {
LABEL_17:

    goto LABEL_18;
  }

  constrainPersonIds2 = [settingsCopy constrainPersonIds];
  if ([constrainPersonIds2 count])
  {

    goto LABEL_17;
  }

  constrainIdentifiers2 = [settingsCopy constrainIdentifiers];
  v22 = [constrainIdentifiers2 count];

  if (v22)
  {
    goto LABEL_21;
  }

  v23 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *v24 = 0;
    _os_log_impl(&dword_191750000, v23, OS_LOG_TYPE_INFO, "Inferred consumer pqa", v24, 2u);
  }

  consumerIdentifier2 = @"com.apple.mobilephone.quickaction";
LABEL_22:

  return consumerIdentifier2;
}

+ (unint64_t)modelTypeForConsumerIdentifier:(id)identifier modelSettings:(id)settings
{
  identifierCopy = identifier;
  settingsCopy = settings;
  if ([identifierCopy isEqualToString:@"com.apple.mobilesms.quickaction"])
  {
    v7 = [settingsCopy objectForKeyedSubscript:&unk_1F05EE9B8];
    v8 = v7;
  }

  else
  {
    if (![identifierCopy isEqualToString:@"com.apple.mobilephone.quickaction"])
    {
      if (![identifierCopy isEqualToString:@"com.apple.peoplesuggester.consumer.sharesheet"])
      {
        integerValue = 0;
        goto LABEL_10;
      }

      v12 = [settingsCopy objectForKeyedSubscript:&unk_1F05EE9E8];
      v9 = [v12 objectForKeyedSubscript:&unk_1F05EE9B8];

      integerValue = v9 == 0;
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v7 = [settingsCopy objectForKeyedSubscript:&unk_1F05EE9D0];
    v8 = v7;
  }

  v9 = [v7 objectForKeyedSubscript:&unk_1F05EE9B8];

  if (v9)
  {
    integerValue = 0;
  }

  else
  {
    integerValue = 3;
  }

  if (v9)
  {
LABEL_9:
    integerValue = [v9 integerValue];
  }

LABEL_10:

  return integerValue;
}

+ (void)adjustForConsumerSettings:(id)settings modelSettings:(id)modelSettings andRanker:(id)ranker
{
  settingsCopy = settings;
  modelSettingsCopy = modelSettings;
  rankerCopy = ranker;
  v11 = [self inferConsumerIdentifierFromSettings:settingsCopy];
  [settingsCopy setConsumerIdentifier:v11];

  consumerIdentifier = [settingsCopy consumerIdentifier];
  lowercaseString = [consumerIdentifier lowercaseString];

  if ([lowercaseString isEqualToString:@"com.apple.mobilesms.quickaction"])
  {
    [settingsCopy setConstrainMaxRecipientCount:1];
    resultLimit = [settingsCopy resultLimit];
    if (resultLimit <= 0x14)
    {
      v15 = 20;
    }

    else
    {
      v15 = resultLimit;
    }

    [settingsCopy setResultLimit:v15];
    v16 = [self modelTypeForConsumerIdentifier:lowercaseString modelSettings:modelSettingsCopy];
    v17 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[_CDInteractionAdvisorUtils adjustForConsumerSettings:modelSettings:andRanker:];
    }
  }

  else if ([lowercaseString isEqualToString:@"frequency"])
  {
    v17 = +[_CDLogging interactionChannel];
    v16 = 2;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[_CDInteractionAdvisorUtils adjustForConsumerSettings:modelSettings:andRanker:];
      v16 = 2;
    }
  }

  else if ([lowercaseString isEqualToString:@"frecency"])
  {
    v17 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[_CDInteractionAdvisorUtils adjustForConsumerSettings:modelSettings:andRanker:];
    }

    v16 = 5;
  }

  else if ([lowercaseString isEqualToString:@"recency"])
  {
    v17 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[_CDInteractionAdvisorUtils adjustForConsumerSettings:modelSettings:andRanker:];
    }

    v16 = 1;
  }

  else
  {
    v16 = [self modelTypeForConsumerIdentifier:lowercaseString modelSettings:modelSettingsCopy];
    v17 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[_CDInteractionAdvisorUtils adjustForConsumerSettings:modelSettings:andRanker:];
    }
  }

  v18 = [self adjustRanker:rankerCopy forModel:v16];
  if (v18)
  {
    v19 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[_CDInteractionAdvisorUtils adjustForConsumerSettings:modelSettings:andRanker:];
    }
  }

  v20 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteractionAdvisorUtils adjustForConsumerSettings:self modelSettings:v16 andRanker:?];
  }
}

+ (BOOL)adjustRanker:(id)ranker forModel:(unint64_t)model
{
  rankerCopy = ranker;
  v6 = rankerCopy;
  v7 = 0;
  if (model > 2)
  {
    if (model == 3)
    {
      [rankerCopy setTimeWeight:0.0];
      [v6 setTimeOfDayWeight:0.0];
      [v6 setTimeOfWeekWeight:0.0];
      [v6 setOutgoingWeight:4.0];
      v9 = 1.0;
      [v6 setSameWeekPeriodWeight:1.0];
      [v6 setDiffWeekPeriodWeight:0.01];
    }

    else
    {
      if (model != 5)
      {
        goto LABEL_12;
      }

      [rankerCopy setTimeWeight:1.0];
      [v6 setTimeHalfLife:345600.0];
      v9 = 0.0;
      [v6 setTimeOfDayWeight:0.0];
      [v6 setTimeOfWeekWeight:0.0];
    }

    v8 = 0;
    goto LABEL_11;
  }

  if (model == 1)
  {
    [rankerCopy setTimeWeight:1.0];
    v9 = 0.0;
    [v6 setTimeOfDayWeight:0.0];
    [v6 setTimeOfWeekWeight:0.0];
    v8 = 1;
    goto LABEL_11;
  }

  if (model == 2)
  {
    [rankerCopy setTimeWeight:0.0];
    [v6 setTimeOfDayWeight:0.0];
    [v6 setTimeOfWeekWeight:0.0];
    v8 = 0;
    v9 = 1.0;
LABEL_11:
    [v6 setC:v9];
    [v6 setRankAggregationMethod:v8];
    v7 = 1;
  }

LABEL_12:

  return v7;
}

+ (id)nameFromModelID:(unint64_t)d
{
  if (d - 1 > 4)
  {
    return @"CDIModelPredictive";
  }

  else
  {
    return off_1E7368E20[d - 1];
  }
}

+ (void)adviceBasedOnInteractions:(void *)a1 forContacts:andRanker:ignoringContacts:withLimit:aggregateByIdentifier:requireOneOutgoingInteraction:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)adviceBasedOnInteractions:(void *)a1 forContacts:andRanker:ignoringContacts:withLimit:aggregateByIdentifier:requireOneOutgoingInteraction:.cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)rankContacts:(void *)a1 basedOnInteractions:andRanker:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)adjustForConsumerSettings:modelSettings:andRanker:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)adjustForConsumerSettings:modelSettings:andRanker:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)adjustForConsumerSettings:modelSettings:andRanker:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)adjustForConsumerSettings:modelSettings:andRanker:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)adjustForConsumerSettings:modelSettings:andRanker:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)adjustForConsumerSettings:modelSettings:andRanker:.cold.6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)adjustForConsumerSettings:(void *)a1 modelSettings:(uint64_t)a2 andRanker:.cold.7(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a1 nameFromModelID:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

@end