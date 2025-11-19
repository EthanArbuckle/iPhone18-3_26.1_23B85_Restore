@interface EDMessageListItemPredicates
+ (id)_objectIDsFromRightExpression:(id)a3;
+ (id)_predicateForAnyMailboxWithPredicate:(id)a3;
+ (id)expandedPredicateForCategoryTypePredicate:(id)a3;
+ (id)expandedPredicateForFollowUpIsActivePredicate:(id)a3;
+ (id)expandedPredicateForReadLaterIsActivePredicate:(id)a3;
+ (id)predicateForCategorizationVersionLessThanVersion:(int64_t)a3;
+ (id)predicateForMailboxTypePredicate:(id)a3 mailboxPersistence:(id)a4;
+ (id)predicateForMailboxURLPredicate:(id)a3 mailboxPersistence:(id)a4;
+ (id)predicateForMessageIDHeaderHashPredicate:(id)a3;
+ (id)predicateForMessagesFromVIPs:(id)a3;
+ (id)predicateForMessagesWithListIDHash:(id)a3;
+ (id)predicateForMessagesWithObjectIDsPredicate:(id)a3 objectIDConverter:(id)a4;
+ (id)predicateForMessagesWithPersistentIDs:(id)a3;
+ (id)predicateForMessagesWithRecipientExpression:(id)a3 operatorType:(unint64_t)a4;
+ (id)predicateForNilModelVersion;
+ (id)predicateForUnauthenticatedMessages;
@end

@implementation EDMessageListItemPredicates

+ (id)predicateForMessagesWithPersistentIDs:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"rowid"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:10 options:0];

  return v7;
}

+ (id)predicateForMessagesFromVIPs:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v19;
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
        v8 = [v6 displayName];
        v9 = [v7 predicateWithFormat:@"%K = %@", @"senderAddress.emailAddressValue.displayName", v8, v19];
        [v3 addObject:v9];

        v10 = [v6 emailAddresses];
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = v10;
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

+ (id)predicateForMessagesWithRecipientExpression:(id)a3 operatorType:(unint64_t)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E696AB18];
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"recipients"];
  v8 = [v6 predicateWithLeftExpression:v7 rightExpression:v5 modifier:0 type:a4 options:0];

  return v8;
}

+ (id)predicateForMailboxTypePredicate:(id)a3 mailboxPersistence:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E696AB18];
  v10 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699AB10]];
  v11 = [v7 rightExpression];
  v12 = [v9 predicateWithLeftExpression:v10 rightExpression:v11 modifier:0 type:objc_msgSend(v7 options:{"predicateOperatorType"), objc_msgSend(v7, "options")}];

  v13 = [v8 allMailboxes];
  v14 = [v13 filteredArrayUsingPredicate:v12];

  if ([v14 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__EDMessageListItemPredicates_predicateForMailboxTypePredicate_mailboxPersistence___block_invoke;
    aBlock[3] = &unk_1E8254528;
    v24 = a2;
    v25 = a1;
    v23 = v8;
    v15 = _Block_copy(aBlock);
    v16 = [MEMORY[0x1E699ADA0] predicateForMessagesInMailboxes:v14];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
      v18 = [v17 subpredicates];
      v19 = [v18 ef_map:v15];

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

+ (id)predicateForMailboxURLPredicate:(id)a3 mailboxPersistence:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DFF8];
  v8 = [v5 rightExpression];
  v9 = [v8 constantValue];
  v10 = [v7 URLWithString:v9];

  if (v10 && ([v6 mailboxURLIsGmailLabel:v10] & 1) != 0)
  {
    v11 = MEMORY[0x1E696AB18];
    v12 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"labels"];
    v13 = [v5 rightExpression];
    v14 = [v11 predicateWithLeftExpression:v12 rightExpression:v13 modifier:0 type:10 options:0];
  }

  else
  {
    v14 = v5;
  }

  return v14;
}

+ (id)predicateForMessagesWithObjectIDsPredicate:(id)a3 objectIDConverter:(id)a4
{
  v5 = a4;
  v6 = [a3 rightExpression];
  v7 = [EDMessageListItemPredicates _objectIDsFromRightExpression:v6];

  v8 = [v5 databaseIDsDictionaryForMessageObjectIDs:v7];
  v9 = [v8 allKeys];

  v10 = MEMORY[0x1E696AB18];
  v11 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"rowid"];
  v12 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v9];
  v13 = [v10 predicateWithLeftExpression:v11 rightExpression:v12 modifier:0 type:10 options:0];

  return v13;
}

+ (id)expandedPredicateForReadLaterIsActivePredicate:(id)a3
{
  v5 = [a3 rightExpression];
  v6 = [v5 constantValue];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"EDMessageListItemPredicates.m" lineNumber:140 description:{@"Comparing readLaterIsActive to something other than a BOOLean (%@)", v6}];
  }

  v7 = MEMORY[0x1E696AB18];
  v8 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699A958]];
  v9 = MEMORY[0x1E696ABC8];
  v10 = [MEMORY[0x1E695DF00] now];
  v11 = [v9 expressionForConstantValue:v10];
  if ([v6 BOOLValue])
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

+ (id)expandedPredicateForFollowUpIsActivePredicate:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 rightExpression];
  v7 = [v6 constantValue];

  v8 = [MEMORY[0x1E695DF00] now];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"EDMessageListItemPredicates.m" lineNumber:152 description:{@"Comparing followUpIsActive to something other than a BOOLean (%@)", v7}];
  }

  v9 = MEMORY[0x1E696AB18];
  v10 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699A8B8]];
  v11 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v8];
  if ([v7 BOOLValue])
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
  if ([v7 BOOLValue])
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = [v14 predicateWithLeftExpression:v15 rightExpression:v16 modifier:0 type:v17 options:0];

  v19 = MEMORY[0x1E696AB28];
  if (v7)
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

+ (id)expandedPredicateForCategoryTypePredicate:(id)a3
{
  v44[2] = *MEMORY[0x1E69E9840];
  v41 = a3;
  v5 = [v41 rightExpression];
  v6 = [v5 constantValue];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v41 predicateOperatorType];
  v9 = v8;
  if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    if (v8 == 4 && !v7)
    {
      v10 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"EDMessageListItemPredicates.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"(operatorType == NSEqualToPredicateOperatorType) || (operatorType == NSNotEqualToPredicateOperatorType)"}];
  }

  v10 = v9 == 5 && v7 != 0;
LABEL_12:
  v13 = MEMORY[0x1E696AB18];
  v14 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.senderCategory"];
  v15 = [v41 rightExpression];
  v40 = [v13 predicateWithLeftExpression:v14 rightExpression:v15 modifier:0 type:v9 options:0];

  v16 = MEMORY[0x1E696AB18];
  v17 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.senderCategory"];
  v18 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
  v19 = [v16 predicateWithLeftExpression:v17 rightExpression:v18 modifier:0 type:4 options:0];

  v20 = MEMORY[0x1E696AB18];
  v21 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.modelCategory"];
  v22 = [v41 rightExpression];
  v23 = [v20 predicateWithLeftExpression:v21 rightExpression:v22 modifier:0 type:v9 options:0];

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

+ (id)predicateForCategorizationVersionLessThanVersion:(int64_t)a3
{
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.modelVersion"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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

+ (id)_objectIDsFromRightExpression:(id)a3
{
  v5 = a3;
  if ([v5 expressionType])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"EDMessageListItemPredicates.m" lineNumber:234 description:@"objectID should be a constant value right expression"];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v5 constantValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v5 constantValue];
    v10 = [v9 ef_map:&__block_literal_global_54];
    [v6 addObjectsFromArray:v10];
  }

  else
  {
    v11 = [v5 constantValue];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }

    v13 = MEMORY[0x1E699ADA8];
    v9 = [v5 constantValue];
    v10 = [v13 objectIDFromSerializedRepresentation:v9];
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

+ (id)_predicateForAnyMailboxWithPredicate:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [v3 leftExpression];
  v6 = [v3 rightExpression];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:objc_msgSend(v3 options:{"predicateOperatorType"), 0}];

  return v7;
}

+ (id)predicateForMessageIDHeaderHashPredicate:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"messageID"];
  v5 = MEMORY[0x1E696AB18];
  v6 = [v3 rightExpression];
  v7 = [v5 predicateWithLeftExpression:v4 rightExpression:v6 modifier:0 type:objc_msgSend(v3 options:{"predicateOperatorType"), 0}];

  return v7;
}

+ (id)predicateForMessagesWithListIDHash:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"listIDHash"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "int64Value")}];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:4 options:0];

  return v9;
}

@end