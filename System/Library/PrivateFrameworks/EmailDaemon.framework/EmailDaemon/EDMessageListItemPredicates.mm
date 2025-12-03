@interface EDMessageListItemPredicates
+ (id)_objectIDsFromRightExpression:(id)expression;
+ (id)_predicateForAnyMailboxWithPredicate:(id)predicate;
+ (id)expandedPredicateForCategoryTypePredicate:(id)predicate;
+ (id)expandedPredicateForFollowUpIsActivePredicate:(id)predicate;
+ (id)expandedPredicateForReadLaterIsActivePredicate:(id)predicate;
+ (id)predicateForCategorizationVersionLessThanVersion:(int64_t)version;
+ (id)predicateForMailboxTypePredicate:(id)predicate mailboxPersistence:(id)persistence;
+ (id)predicateForMailboxURLPredicate:(id)predicate mailboxPersistence:(id)persistence;
+ (id)predicateForMessageIDHeaderHashPredicate:(id)predicate;
+ (id)predicateForMessagesFromVIPs:(id)ps;
+ (id)predicateForMessagesWithListIDHash:(id)hash;
+ (id)predicateForMessagesWithObjectIDsPredicate:(id)predicate objectIDConverter:(id)converter;
+ (id)predicateForMessagesWithPersistentIDs:(id)ds;
+ (id)predicateForMessagesWithRecipientExpression:(id)expression operatorType:(unint64_t)type;
+ (id)predicateForNilModelVersion;
+ (id)predicateForUnauthenticatedMessages;
@end

@implementation EDMessageListItemPredicates

+ (id)predicateForMessagesWithPersistentIDs:(id)ds
{
  dsCopy = ds;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"rowid"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:dsCopy];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:10 options:0];

  return v7;
}

+ (id)predicateForMessagesFromVIPs:(id)ps
{
  v33 = *MEMORY[0x1E69E9840];
  psCopy = ps;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = psCopy;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v21 = *v28;
    do
    {
      v22 = v4;
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v7 = MEMORY[0x1E696AE18];
        displayName = [v6 displayName];
        psCopy = [v7 predicateWithFormat:@"%K = %@", @"senderAddress.emailAddressValue.displayName", displayName, psCopy];
        [v3 addObject:psCopy];

        emailAddresses = [v6 emailAddresses];
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = emailAddresses;
        v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v12)
        {
          v13 = *v24;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"senderAddress.emailAddressValue.simpleAddress", *(*(&v23 + 1) + 8 * j)];
              [v3 addObject:v15];
            }

            v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v4);
  }

  if ([obj count])
  {
    [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v3];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:0];
  }
  v16 = ;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)predicateForMessagesWithRecipientExpression:(id)expression operatorType:(unint64_t)type
{
  expressionCopy = expression;
  v6 = MEMORY[0x1E696AB18];
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"recipients"];
  v8 = [v6 predicateWithLeftExpression:v7 rightExpression:expressionCopy modifier:0 type:type options:0];

  return v8;
}

+ (id)predicateForMailboxTypePredicate:(id)predicate mailboxPersistence:(id)persistence
{
  predicateCopy = predicate;
  persistenceCopy = persistence;
  v9 = MEMORY[0x1E696AB18];
  v10 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699AB10]];
  rightExpression = [predicateCopy rightExpression];
  v12 = [v9 predicateWithLeftExpression:v10 rightExpression:rightExpression modifier:0 type:objc_msgSend(predicateCopy options:{"predicateOperatorType"), objc_msgSend(predicateCopy, "options")}];

  allMailboxes = [persistenceCopy allMailboxes];
  v14 = [allMailboxes filteredArrayUsingPredicate:v12];

  if ([v14 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__EDMessageListItemPredicates_predicateForMailboxTypePredicate_mailboxPersistence___block_invoke;
    aBlock[3] = &unk_1E8254528;
    v24 = a2;
    selfCopy = self;
    v23 = persistenceCopy;
    v15 = _Block_copy(aBlock);
    v16 = [MEMORY[0x1E699ADA0] predicateForMessagesInMailboxes:v14];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
      subpredicates = [v17 subpredicates];
      v19 = [subpredicates ef_map:v15];

      v20 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(v17 subpredicates:{"compoundPredicateType"), v19}];
    }

    else
    {
      v20 = v15[2](v15, v16);
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  return v20;
}

id __83__EDMessageListItemPredicates_predicateForMailboxTypePredicate_mailboxPersistence___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"EDMessageListItemPredicates.m" lineNumber:90 description:@"Expected subpredicate should be a NSComparisonPredicate"];
  }

  v4 = [*(a1 + 48) _predicateForAnyMailboxWithPredicate:v3];
  v5 = [*(a1 + 48) predicateForMailboxURLPredicate:v4 mailboxPersistence:*(a1 + 32)];

  return v5;
}

+ (id)predicateForMailboxURLPredicate:(id)predicate mailboxPersistence:(id)persistence
{
  predicateCopy = predicate;
  persistenceCopy = persistence;
  v7 = MEMORY[0x1E695DFF8];
  rightExpression = [predicateCopy rightExpression];
  constantValue = [rightExpression constantValue];
  v10 = [v7 URLWithString:constantValue];

  if (v10 && ([persistenceCopy mailboxURLIsGmailLabel:v10] & 1) != 0)
  {
    v11 = MEMORY[0x1E696AB18];
    v12 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"labels"];
    rightExpression2 = [predicateCopy rightExpression];
    v14 = [v11 predicateWithLeftExpression:v12 rightExpression:rightExpression2 modifier:0 type:10 options:0];
  }

  else
  {
    v14 = predicateCopy;
  }

  return v14;
}

+ (id)predicateForMessagesWithObjectIDsPredicate:(id)predicate objectIDConverter:(id)converter
{
  converterCopy = converter;
  rightExpression = [predicate rightExpression];
  v7 = [EDMessageListItemPredicates _objectIDsFromRightExpression:rightExpression];

  v8 = [converterCopy databaseIDsDictionaryForMessageObjectIDs:v7];
  allKeys = [v8 allKeys];

  v10 = MEMORY[0x1E696AB18];
  v11 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"rowid"];
  v12 = [MEMORY[0x1E696ABC8] expressionForConstantValue:allKeys];
  v13 = [v10 predicateWithLeftExpression:v11 rightExpression:v12 modifier:0 type:10 options:0];

  return v13;
}

+ (id)expandedPredicateForReadLaterIsActivePredicate:(id)predicate
{
  rightExpression = [predicate rightExpression];
  constantValue = [rightExpression constantValue];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageListItemPredicates.m" lineNumber:140 description:{@"Comparing readLaterIsActive to something other than a BOOLean (%@)", constantValue}];
  }

  v7 = MEMORY[0x1E696AB18];
  v8 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699A958]];
  v9 = MEMORY[0x1E696ABC8];
  v10 = [MEMORY[0x1E695DF00] now];
  v11 = [v9 expressionForConstantValue:v10];
  if ([constantValue BOOLValue])
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = [v7 predicateWithLeftExpression:v8 rightExpression:v11 modifier:0 type:v12 options:0];

  return v13;
}

+ (id)expandedPredicateForFollowUpIsActivePredicate:(id)predicate
{
  v27[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  rightExpression = [predicateCopy rightExpression];
  constantValue = [rightExpression constantValue];

  v8 = [MEMORY[0x1E695DF00] now];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageListItemPredicates.m" lineNumber:152 description:{@"Comparing followUpIsActive to something other than a BOOLean (%@)", constantValue}];
  }

  v9 = MEMORY[0x1E696AB18];
  v10 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699A8B8]];
  v11 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v8];
  if ([constantValue BOOLValue])
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = [v9 predicateWithLeftExpression:v10 rightExpression:v11 modifier:0 type:v12 options:0];

  v14 = MEMORY[0x1E696AB18];
  v15 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699A8A8]];
  v16 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v8];
  if ([constantValue BOOLValue])
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = [v14 predicateWithLeftExpression:v15 rightExpression:v16 modifier:0 type:v17 options:0];

  v19 = MEMORY[0x1E696AB28];
  if (constantValue)
  {
    v27[0] = v13;
    v27[1] = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v21 = [v19 andPredicateWithSubpredicates:v20];
  }

  else
  {
    v26[0] = v13;
    v26[1] = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v21 = [v19 orPredicateWithSubpredicates:v20];
  }

  v22 = v21;

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)expandedPredicateForCategoryTypePredicate:(id)predicate
{
  v44[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  rightExpression = [predicateCopy rightExpression];
  constantValue = [rightExpression constantValue];
  unsignedIntegerValue = [constantValue unsignedIntegerValue];

  predicateOperatorType = [predicateCopy predicateOperatorType];
  v9 = predicateOperatorType;
  if ((predicateOperatorType & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    if (predicateOperatorType == 4 && !unsignedIntegerValue)
    {
      v10 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageListItemPredicates.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"(operatorType == NSEqualToPredicateOperatorType) || (operatorType == NSNotEqualToPredicateOperatorType)"}];
  }

  v10 = v9 == 5 && unsignedIntegerValue != 0;
LABEL_12:
  v13 = MEMORY[0x1E696AB18];
  v14 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.senderCategory"];
  rightExpression2 = [predicateCopy rightExpression];
  v40 = [v13 predicateWithLeftExpression:v14 rightExpression:rightExpression2 modifier:0 type:v9 options:0];

  v16 = MEMORY[0x1E696AB18];
  v17 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.senderCategory"];
  v18 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
  v19 = [v16 predicateWithLeftExpression:v17 rightExpression:v18 modifier:0 type:4 options:0];

  v20 = MEMORY[0x1E696AB18];
  v21 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.modelCategory"];
  rightExpression3 = [predicateCopy rightExpression];
  v23 = [v20 predicateWithLeftExpression:v21 rightExpression:rightExpression3 modifier:0 type:v9 options:0];

  if (v10)
  {
    v24 = MEMORY[0x1E696AB18];
    v25 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.modelCategory"];
    v26 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
    v27 = [v24 predicateWithLeftExpression:v25 rightExpression:v26 modifier:0 type:4 options:0];

    v28 = MEMORY[0x1E696AB28];
    v44[0] = v23;
    v44[1] = v27;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    v30 = v40;
    v31 = [v28 orPredicateWithSubpredicates:v29];

    v23 = v31;
  }

  else
  {
    v30 = v40;
  }

  v32 = MEMORY[0x1E696AB28];
  v43[0] = v19;
  v43[1] = v23;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v34 = [v32 andPredicateWithSubpredicates:v33];

  v35 = MEMORY[0x1E696AB28];
  v42[0] = v30;
  v42[1] = v34;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v37 = [v35 orPredicateWithSubpredicates:v36];

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

+ (id)predicateForNilModelVersion
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.modelVersion"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:4 options:0];

  return v5;
}

+ (id)predicateForCategorizationVersionLessThanVersion:(int64_t)version
{
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.modelVersion"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:version];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:0 options:0];

  return v9;
}

+ (id)predicateForUnauthenticatedMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"validation.state"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F45E6778];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:4 options:0];

  return v5;
}

+ (id)_objectIDsFromRightExpression:(id)expression
{
  expressionCopy = expression;
  if ([expressionCopy expressionType])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageListItemPredicates.m" lineNumber:234 description:@"objectID should be a constant value right expression"];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  constantValue = [expressionCopy constantValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    constantValue2 = [expressionCopy constantValue];
    v10 = [constantValue2 ef_map:&__block_literal_global_54];
    [v6 addObjectsFromArray:v10];
  }

  else
  {
    constantValue3 = [expressionCopy constantValue];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }

    v13 = MEMORY[0x1E699ADA8];
    constantValue2 = [expressionCopy constantValue];
    v10 = [v13 objectIDFromSerializedRepresentation:constantValue2];
    [v6 addObject:v10];
  }

LABEL_8:

  return v6;
}

id __61__EDMessageListItemPredicates__objectIDsFromRightExpression___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E699ADA8] objectIDFromSerializedRepresentation:a2];

  return v2;
}

+ (id)_predicateForAnyMailboxWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = MEMORY[0x1E696AB18];
  leftExpression = [predicateCopy leftExpression];
  rightExpression = [predicateCopy rightExpression];
  v7 = [v4 predicateWithLeftExpression:leftExpression rightExpression:rightExpression modifier:0 type:objc_msgSend(predicateCopy options:{"predicateOperatorType"), 0}];

  return v7;
}

+ (id)predicateForMessageIDHeaderHashPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"messageID"];
  v5 = MEMORY[0x1E696AB18];
  rightExpression = [predicateCopy rightExpression];
  v7 = [v5 predicateWithLeftExpression:v4 rightExpression:rightExpression modifier:0 type:objc_msgSend(predicateCopy options:{"predicateOperatorType"), 0}];

  return v7;
}

+ (id)predicateForMessagesWithListIDHash:(id)hash
{
  hashCopy = hash;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"listIDHash"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(hashCopy, "int64Value")}];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:4 options:0];

  return v9;
}

@end