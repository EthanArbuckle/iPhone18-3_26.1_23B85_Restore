@interface EDMessageQueryTransformer
- (BOOL)_predicateIsToOrCC:(id)a3 addressExpression:(id *)a4 operatorType:(unint64_t *)a5;
- (EDMessagePersistence)messagePersistence;
- (EDMessageQueryTransformer)initWithAccountsProvider:(id)a3 mailboxPersistence:(id)a4 messagePersistence:(id)a5 vipManager:(id)a6;
- (id)transformComparisonPredicate:(id)a3;
- (id)transformCompoundPredicate:(id)a3;
- (id)transformPredicate:(id)a3;
- (id)transformSubpredicates:(id)a3;
@end

@implementation EDMessageQueryTransformer

- (EDMessageQueryTransformer)initWithAccountsProvider:(id)a3 mailboxPersistence:(id)a4 messagePersistence:(id)a5 vipManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = EDMessageQueryTransformer;
  v15 = [(EDMessageQueryTransformer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountsProvider, a3);
    objc_storeStrong(&v16->_mailboxPersistence, a4);
    objc_storeWeak(&v16->_messagePersistence, v13);
    objc_storeStrong(&v16->_vipManager, a6);
  }

  return v16;
}

- (id)transformPredicate:(id)a3
{
  v4 = a3;
  if ([v4 ef_matchesEverything] & 1) != 0 || (objc_msgSend(v4, "ef_matchesNothing"))
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(EDMessageQueryTransformer *)self transformCompoundPredicate:v4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_3:
      v5 = v4;
      goto LABEL_4;
    }

    v5 = [(EDMessageQueryTransformer *)self transformComparisonPredicate:v4];
  }

LABEL_4:
  v6 = v5;

  return v6;
}

- (id)transformCompoundPredicate:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = 0;
  v5 = [(EDMessageQueryTransformer *)self _predicateIsToOrCC:v4 addressExpression:&v11 operatorType:&v12];
  v6 = v11;
  if (v5)
  {
    v7 = [EDMessageListItemPredicates predicateForMessagesWithRecipientExpression:v6 operatorType:v12];
  }

  else
  {
    v8 = [(EDMessageQueryTransformer *)self transformSubpredicates:v4];
    v9 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(v4 subpredicates:{"compoundPredicateType"), v8}];
    v7 = [v9 ef_simplifiedPredicate];
  }

  return v7;
}

- (id)transformSubpredicates:(id)a3
{
  v4 = [a3 subpredicates];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__EDMessageQueryTransformer_transformSubpredicates___block_invoke;
  v7[3] = &unk_1E82547B8;
  v7[4] = self;
  v5 = [v4 ef_map:v7];

  return v5;
}

id __52__EDMessageQueryTransformer_transformSubpredicates___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) transformPredicate:a2];

  return v2;
}

- (id)transformComparisonPredicate:(id)a3
{
  v51[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E699ADA0] predicateForNotifyMessages];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = MEMORY[0x1E696AB18];
    v8 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"conversationNotificationLevel.isNotify"];
    v9 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
    v10 = [v7 predicateWithLeftExpression:v8 rightExpression:v9 modifier:0 type:4 options:0];
  }

  else
  {
    v11 = [MEMORY[0x1E699ADA0] predicateForMuteMessages];
    v12 = [v4 isEqual:v11];

    v13 = v4;
    if (!v12)
    {
      goto LABEL_6;
    }

    v14 = MEMORY[0x1E696AB18];
    v8 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"conversationNotificationLevel.isMute"];
    v9 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
    v10 = [v14 predicateWithLeftExpression:v8 rightExpression:v9 modifier:0 type:4 options:0];
  }

  v13 = v10;

LABEL_6:
  v15 = [v4 leftExpression];
  v16 = [v15 expressionType];

  if (v16 != 3)
  {
    goto LABEL_19;
  }

  v17 = [v4 leftExpression];
  v18 = [v17 keyPath];

  if ([v18 isEqualToString:*MEMORY[0x1E699AB20]])
  {
    v19 = [(EDMessageQueryTransformer *)self messagePersistence];
    v20 = [EDMessageListItemPredicates predicateForMessagesWithObjectIDsPredicate:v4 objectIDConverter:v19];
  }

  else
  {
    if ([v18 isEqualToString:*MEMORY[0x1E699A910]])
    {
      v22 = [v4 rightExpression];
      v41 = [v22 constantValue];

      v45 = 0;
      v46 = &v45;
      v47 = 0x3032000000;
      v48 = __Block_byref_object_copy__28;
      v49 = __Block_byref_object_dispose__28;
      v50 = 0;
      v23 = [(EDMessageQueryTransformer *)self accountsProvider];
      v24 = [v23 mailAccounts];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __58__EDMessageQueryTransformer_transformComparisonPredicate___block_invoke;
      v42[3] = &unk_1E8255390;
      v25 = v41;
      v43 = v25;
      v44 = &v45;
      [v24 enumerateObjectsUsingBlock:v42];

      v26 = v46[5];
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v46[5] accountURL], v27 = objc_claimAutoreleasedReturnValue(), (v28 = v27) != 0))
      {
        v29 = [v27 absoluteString];
        v40 = [v29 stringByAppendingString:@"{"];
        v30 = MEMORY[0x1E696AB18];
        v31 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699A920]];
        v32 = MEMORY[0x1E696ABC8];
        v51[0] = v29;
        v51[1] = v40;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
        v34 = [v32 expressionForConstantValue:v33];
        v35 = [v30 predicateWithLeftExpression:v31 rightExpression:v34 modifier:2 type:100 options:0];

        v13 = v35;
      }

      else
      {
        [MEMORY[0x1E696AE18] predicateWithValue:0];
        v13 = v28 = v13;
      }

      _Block_object_dispose(&v45, 8);
      goto LABEL_18;
    }

    if ([v18 isEqualToString:*MEMORY[0x1E699A928]])
    {
      v19 = [(EDMessageQueryTransformer *)self mailboxPersistence];
      v20 = [EDMessageListItemPredicates predicateForMailboxTypePredicate:v4 mailboxPersistence:v19];
    }

    else
    {
      if (![v18 isEqualToString:*MEMORY[0x1E699A920]])
      {
        if ([v18 isEqualToString:*MEMORY[0x1E699A960]])
        {
          v38 = [EDMessageListItemPredicates expandedPredicateForReadLaterIsActivePredicate:v4];
        }

        else if ([v18 isEqualToString:*MEMORY[0x1E699A8B0]])
        {
          v38 = [EDMessageListItemPredicates expandedPredicateForFollowUpIsActivePredicate:v4];
        }

        else
        {
          if (![v18 isEqualToString:*MEMORY[0x1E699A850]])
          {
            goto LABEL_18;
          }

          v38 = [EDMessageListItemPredicates expandedPredicateForCategoryTypePredicate:v4];
        }

        v39 = v38;

        v13 = v39;
        goto LABEL_18;
      }

      v19 = [(EDMessageQueryTransformer *)self mailboxPersistence];
      v20 = [EDMessageListItemPredicates predicateForMailboxURLPredicate:v4 mailboxPersistence:v19];
    }
  }

  v21 = v20;

  v13 = v21;
LABEL_18:

LABEL_19:
  v36 = *MEMORY[0x1E69E9840];

  return v13;
}

void __58__EDMessageQueryTransformer_transformComparisonPredicate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)_predicateIsToOrCC:(id)a3 addressExpression:(id *)a4 operatorType:(unint64_t *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v28 = a3;
  if ([v28 compoundPredicateType] != 2)
  {
    v22 = 0;
    goto LABEL_32;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v28 subpredicates];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v8)
  {

    v10 = 0;
    goto LABEL_30;
  }

  v25 = a4;
  v26 = a5;
  v27 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v31;
  obj = v7;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v30 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_29;
      }

      v15 = v14;
      v16 = [v15 leftExpression];
      v17 = [v16 keyPath];

      if ([v17 isEqualToString:@"toList.emailAddressValue.simpleAddress"])
      {
        v18 = [v15 rightExpression];
        v19 = v18;
        if (!v10)
        {
          v10 = v18;
          v11 = [v15 predicateOperatorType];
          v27 = 1;
LABEL_20:
          v19 = v10;
          goto LABEL_21;
        }

        if (![v10 isEqual:v18] || v11 != objc_msgSend(v15, "predicateOperatorType"))
        {
          goto LABEL_27;
        }

        v27 = 1;
      }

      else
      {
        if (![v17 isEqualToString:@"ccList.emailAddressValue.simpleAddress"])
        {
          goto LABEL_28;
        }

        v20 = [v15 rightExpression];
        v19 = v20;
        if (!v10)
        {
          v10 = v20;
          v11 = [v15 predicateOperatorType];
          v9 = 1;
          goto LABEL_20;
        }

        if (![v10 isEqual:v20] || v11 != objc_msgSend(v15, "predicateOperatorType"))
        {
LABEL_27:

LABEL_28:
LABEL_29:

          goto LABEL_30;
        }

        v9 = 1;
      }

LABEL_21:
    }

    v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  if (v27 & v9)
  {
    v21 = v10;
    *v25 = v10;
    *v26 = v11;
    v22 = 1;
    goto LABEL_31;
  }

LABEL_30:
  v22 = 0;
LABEL_31:

LABEL_32:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (EDMessagePersistence)messagePersistence
{
  WeakRetained = objc_loadWeakRetained(&self->_messagePersistence);

  return WeakRetained;
}

@end