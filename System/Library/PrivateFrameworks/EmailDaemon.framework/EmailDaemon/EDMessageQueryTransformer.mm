@interface EDMessageQueryTransformer
- (BOOL)_predicateIsToOrCC:(id)c addressExpression:(id *)expression operatorType:(unint64_t *)type;
- (EDMessagePersistence)messagePersistence;
- (EDMessageQueryTransformer)initWithAccountsProvider:(id)provider mailboxPersistence:(id)persistence messagePersistence:(id)messagePersistence vipManager:(id)manager;
- (id)transformComparisonPredicate:(id)predicate;
- (id)transformCompoundPredicate:(id)predicate;
- (id)transformPredicate:(id)predicate;
- (id)transformSubpredicates:(id)subpredicates;
@end

@implementation EDMessageQueryTransformer

- (EDMessageQueryTransformer)initWithAccountsProvider:(id)provider mailboxPersistence:(id)persistence messagePersistence:(id)messagePersistence vipManager:(id)manager
{
  providerCopy = provider;
  persistenceCopy = persistence;
  messagePersistenceCopy = messagePersistence;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = EDMessageQueryTransformer;
  v15 = [(EDMessageQueryTransformer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountsProvider, provider);
    objc_storeStrong(&v16->_mailboxPersistence, persistence);
    objc_storeWeak(&v16->_messagePersistence, messagePersistenceCopy);
    objc_storeStrong(&v16->_vipManager, manager);
  }

  return v16;
}

- (id)transformPredicate:(id)predicate
{
  predicateCopy = predicate;
  if ([predicateCopy ef_matchesEverything] & 1) != 0 || (objc_msgSend(predicateCopy, "ef_matchesNothing"))
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(EDMessageQueryTransformer *)self transformCompoundPredicate:predicateCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_3:
      v5 = predicateCopy;
      goto LABEL_4;
    }

    v5 = [(EDMessageQueryTransformer *)self transformComparisonPredicate:predicateCopy];
  }

LABEL_4:
  v6 = v5;

  return v6;
}

- (id)transformCompoundPredicate:(id)predicate
{
  predicateCopy = predicate;
  v11 = 0;
  v12 = 0;
  v5 = [(EDMessageQueryTransformer *)self _predicateIsToOrCC:predicateCopy addressExpression:&v11 operatorType:&v12];
  v6 = v11;
  if (v5)
  {
    ef_simplifiedPredicate = [EDMessageListItemPredicates predicateForMessagesWithRecipientExpression:v6 operatorType:v12];
  }

  else
  {
    v8 = [(EDMessageQueryTransformer *)self transformSubpredicates:predicateCopy];
    v9 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(predicateCopy subpredicates:{"compoundPredicateType"), v8}];
    ef_simplifiedPredicate = [v9 ef_simplifiedPredicate];
  }

  return ef_simplifiedPredicate;
}

- (id)transformSubpredicates:(id)subpredicates
{
  subpredicates = [subpredicates subpredicates];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__EDMessageQueryTransformer_transformSubpredicates___block_invoke;
  v7[3] = &unk_1E82547B8;
  v7[4] = self;
  v5 = [subpredicates ef_map:v7];

  return v5;
}

id __52__EDMessageQueryTransformer_transformSubpredicates___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) transformPredicate:a2];

  return v2;
}

- (id)transformComparisonPredicate:(id)predicate
{
  v51[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  predicateForNotifyMessages = [MEMORY[0x1E699ADA0] predicateForNotifyMessages];
  v6 = [predicateCopy isEqual:predicateForNotifyMessages];

  if (v6)
  {
    v7 = MEMORY[0x1E696AB18];
    v8 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"conversationNotificationLevel.isNotify"];
    v9 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
    v10 = [v7 predicateWithLeftExpression:v8 rightExpression:v9 modifier:0 type:4 options:0];
  }

  else
  {
    predicateForMuteMessages = [MEMORY[0x1E699ADA0] predicateForMuteMessages];
    v12 = [predicateCopy isEqual:predicateForMuteMessages];

    v13 = predicateCopy;
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
  leftExpression = [predicateCopy leftExpression];
  expressionType = [leftExpression expressionType];

  if (expressionType != 3)
  {
    goto LABEL_19;
  }

  leftExpression2 = [predicateCopy leftExpression];
  keyPath = [leftExpression2 keyPath];

  if ([keyPath isEqualToString:*MEMORY[0x1E699AB20]])
  {
    messagePersistence = [(EDMessageQueryTransformer *)self messagePersistence];
    v20 = [EDMessageListItemPredicates predicateForMessagesWithObjectIDsPredicate:predicateCopy objectIDConverter:messagePersistence];
  }

  else
  {
    if ([keyPath isEqualToString:*MEMORY[0x1E699A910]])
    {
      rightExpression = [predicateCopy rightExpression];
      constantValue = [rightExpression constantValue];

      v45 = 0;
      v46 = &v45;
      v47 = 0x3032000000;
      v48 = __Block_byref_object_copy__28;
      v49 = __Block_byref_object_dispose__28;
      v50 = 0;
      accountsProvider = [(EDMessageQueryTransformer *)self accountsProvider];
      mailAccounts = [accountsProvider mailAccounts];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __58__EDMessageQueryTransformer_transformComparisonPredicate___block_invoke;
      v42[3] = &unk_1E8255390;
      v25 = constantValue;
      v43 = v25;
      v44 = &v45;
      [mailAccounts enumerateObjectsUsingBlock:v42];

      v26 = v46[5];
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v46[5] accountURL], v27 = objc_claimAutoreleasedReturnValue(), (v28 = v27) != 0))
      {
        absoluteString = [v27 absoluteString];
        v40 = [absoluteString stringByAppendingString:@"{"];
        v30 = MEMORY[0x1E696AB18];
        v31 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699A920]];
        v32 = MEMORY[0x1E696ABC8];
        v51[0] = absoluteString;
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

    if ([keyPath isEqualToString:*MEMORY[0x1E699A928]])
    {
      messagePersistence = [(EDMessageQueryTransformer *)self mailboxPersistence];
      v20 = [EDMessageListItemPredicates predicateForMailboxTypePredicate:predicateCopy mailboxPersistence:messagePersistence];
    }

    else
    {
      if (![keyPath isEqualToString:*MEMORY[0x1E699A920]])
      {
        if ([keyPath isEqualToString:*MEMORY[0x1E699A960]])
        {
          v38 = [EDMessageListItemPredicates expandedPredicateForReadLaterIsActivePredicate:predicateCopy];
        }

        else if ([keyPath isEqualToString:*MEMORY[0x1E699A8B0]])
        {
          v38 = [EDMessageListItemPredicates expandedPredicateForFollowUpIsActivePredicate:predicateCopy];
        }

        else
        {
          if (![keyPath isEqualToString:*MEMORY[0x1E699A850]])
          {
            goto LABEL_18;
          }

          v38 = [EDMessageListItemPredicates expandedPredicateForCategoryTypePredicate:predicateCopy];
        }

        v39 = v38;

        v13 = v39;
        goto LABEL_18;
      }

      messagePersistence = [(EDMessageQueryTransformer *)self mailboxPersistence];
      v20 = [EDMessageListItemPredicates predicateForMailboxURLPredicate:predicateCopy mailboxPersistence:messagePersistence];
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

- (BOOL)_predicateIsToOrCC:(id)c addressExpression:(id *)expression operatorType:(unint64_t *)type
{
  v35 = *MEMORY[0x1E69E9840];
  cCopy = c;
  if ([cCopy compoundPredicateType] != 2)
  {
    v22 = 0;
    goto LABEL_32;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  subpredicates = [cCopy subpredicates];
  v8 = [subpredicates countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v8)
  {

    v10 = 0;
    goto LABEL_30;
  }

  expressionCopy = expression;
  typeCopy = type;
  v27 = 0;
  v9 = 0;
  v10 = 0;
  predicateOperatorType = 0;
  v12 = *v31;
  obj = subpredicates;
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
      leftExpression = [v15 leftExpression];
      keyPath = [leftExpression keyPath];

      if ([keyPath isEqualToString:@"toList.emailAddressValue.simpleAddress"])
      {
        rightExpression = [v15 rightExpression];
        v19 = rightExpression;
        if (!v10)
        {
          v10 = rightExpression;
          predicateOperatorType = [v15 predicateOperatorType];
          v27 = 1;
LABEL_20:
          v19 = v10;
          goto LABEL_21;
        }

        if (![v10 isEqual:rightExpression] || predicateOperatorType != objc_msgSend(v15, "predicateOperatorType"))
        {
          goto LABEL_27;
        }

        v27 = 1;
      }

      else
      {
        if (![keyPath isEqualToString:@"ccList.emailAddressValue.simpleAddress"])
        {
          goto LABEL_28;
        }

        rightExpression2 = [v15 rightExpression];
        v19 = rightExpression2;
        if (!v10)
        {
          v10 = rightExpression2;
          predicateOperatorType = [v15 predicateOperatorType];
          v9 = 1;
          goto LABEL_20;
        }

        if (![v10 isEqual:rightExpression2] || predicateOperatorType != objc_msgSend(v15, "predicateOperatorType"))
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
    *expressionCopy = v10;
    *typeCopy = predicateOperatorType;
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