@interface EMMessageListItemPredicates
+ (BOOL)_isPredicateForMessagesInAccountObjectIDs:(id)a3 accountObjectIDs:(id *)a4;
+ (BOOL)_isPredicateForMessagesInMailboxObjectIDs:(id)a3 mailboxObjectIDs:(id *)a4;
+ (BOOL)_isPredicateForMessagesWithActiveFollowUp:(id)a3;
+ (BOOL)isPredicateForMessagesInAccountObjectID:(id)a3 accountObjectID:(id *)a4;
+ (BOOL)isPredicateForMessagesInConversations:(id)a3 conversationIDs:(id *)a4;
+ (BOOL)isPredicateForMessagesInMailboxObjectID:(id)a3 mailboxObjectID:(id *)a4;
+ (BOOL)isPredicateForMessagesInMailboxWithType:(id)a3 mailboxType:(int64_t *)a4;
+ (BOOL)isPredicateForMessagesWithActiveFollowUp:(id)a3 mailboxTypeResolver:(id)a4 inSent:(BOOL *)a5 sentMailboxObjectIDs:(id *)a6;
+ (BOOL)isPredicateForMessagesWithFiredReadLaterDate:(id)a3 accountObjectIDs:(id *)a4;
+ (BOOL)isValidPredicate:(id)a3 forClass:(Class)a4;
+ (BOOL)predicate:(id)a3 appliesToFlagChange:(id)a4;
+ (OS_os_log)log;
+ (id)_dateRangePredicateForListItemKeyPath:(id)a3 startDate:(id)a4 endDate:(id)a5;
+ (id)_keyPathsForFlagChange:(id)a3;
+ (id)_predicateForActiveFollowUpMessagesIncludeExpired:(BOOL)a3;
+ (id)_predicateForFollowUpMessages;
+ (id)_predicateForKeyPath:(id)a3 value:(id)a4;
+ (id)_predicateForMessagesInMailboxWithType:(id)a3;
+ (id)_predicateForMessagesInMailboxWithURL:(id)a3;
+ (id)_predicateForModelHighImpactMessages;
+ (id)_predicateStrippingSpotlightOnlyTerms:(id)a3;
+ (id)mailboxScopeForPredicate:(id)a3 withMailboxTypeResolver:(id)a4;
+ (id)mailboxURLsForPredicate:(id)a3;
+ (id)predicateForAccount:(id)a3;
+ (id)predicateForAccountIdentifier:(id)a3;
+ (id)predicateForAccountWithObjectID:(id)a3;
+ (id)predicateForCategorizedMessages;
+ (id)predicateForExcludingMessagesInMailbox:(id)a3;
+ (id)predicateForExcludingMessagesInMailboxObjectID:(id)a3;
+ (id)predicateForExcludingMessagesInMailboxWithType:(int64_t)a3;
+ (id)predicateForExcludingMessagesInMailboxWithURL:(id)a3;
+ (id)predicateForExcludingMessagesInMailboxes:(id)a3;
+ (id)predicateForExcludingMessagesInMailboxesWithObjectIDs:(id)a3;
+ (id)predicateForExcludingMessagesInMailboxesWithTypes:(id)a3;
+ (id)predicateForFlagColor:(unint64_t)a3;
+ (id)predicateForGeneratedSummaryUrgentMessages;
+ (id)predicateForIncludesMeMessages;
+ (id)predicateForIndexedMessages;
+ (id)predicateForIsUrgentMessages;
+ (id)predicateForMessagesCced:(id)a3;
+ (id)predicateForMessagesForBusinessID:(int64_t)a3;
+ (id)predicateForMessagesForBusinessID:(int64_t)a3 forAccount:(id)a4;
+ (id)predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:(id)a3;
+ (id)predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:(id)a3 additionalAccountObjectIDs:(id)a4;
+ (id)predicateForMessagesInConversation:(int64_t)a3;
+ (id)predicateForMessagesInMailbox:(id)a3;
+ (id)predicateForMessagesInMailboxWithObjectID:(id)a3;
+ (id)predicateForMessagesInMailboxWithType:(int64_t)a3;
+ (id)predicateForMessagesInMailboxes:(id)a3;
+ (id)predicateForMessagesInMailboxesWithObjectIDs:(id)a3;
+ (id)predicateForMessagesInMailboxesWithTypes:(id)a3;
+ (id)predicateForMessagesNewerThanDate:(id)a3;
+ (id)predicateForMessagesNewerThanDisplayDate:(id)a3;
+ (id)predicateForMessagesTo:(id)a3;
+ (id)predicateForMessagesWithActiveFollowUp;
+ (id)predicateForMessagesWithActiveFollowUpInAccountsOfMailboxes:(id)a3 mailboxTypeResolver:(id)a4;
+ (id)predicateForMessagesWithActiveFollowUpInSent;
+ (id)predicateForMessagesWithCategoryType:(unint64_t)a3;
+ (id)predicateForMessagesWithCcAddresses:(id)a3;
+ (id)predicateForMessagesWithMailboxScope:(id)a3;
+ (id)predicateForMessagesWithRecipient:(id)a3;
+ (id)predicateForMessagesWithRecipients:(id)a3;
+ (id)predicateForMessagesWithSender:(id)a3;
+ (id)predicateForMessagesWithSender:(id)a3 forAccount:(id)a4;
+ (id)predicateForMessagesWithSenders:(id)a3;
+ (id)predicateForMessagesWithThreadScope:(id)a3;
+ (id)predicateForMessagesWithToAddresses:(id)a3;
+ (id)predicateForMessagesWithUnfiredFollowUp;
+ (id)predicateForMessagesWithoutSender:(id)a3;
+ (id)predicateForMessagesWithoutSenders:(id)a3;
+ (id)predicateForNonPrimaryMessages;
+ (id)predicateForPrimaryMessages;
+ (id)predicateForReadLaterMessages;
+ (id)predicateForReadLaterMessagesWithStartDate:(id)a3 endDate:(id)a4;
+ (id)predicateForRecentMessages;
+ (id)predicateForSendLaterMessages;
+ (id)predicateForSendLaterMessagesWithStartDate:(id)a3 endDate:(id)a4;
+ (id)predicateForTodayMessages;
+ (id)predicateForTopHitsMessages;
+ (id)predicateForUnfiredReadLaterMessages;
+ (id)predicateForUnfiredReadLaterMessagesInInbox;
+ (id)predicateForUnsubscribableMessages;
+ (id)predicateForUrgentMessages;
+ (id)predicateFromPredicate:(id)a3 ignoringKeyPaths:(id)a4;
+ (id)predicateFromPredicate:(id)a3 ignoringPredicates:(id)a4;
+ (id)predicateStrippingSpotlightOnlyTerms:(id)a3;
+ (id)threadScopeForPredicate:(id)a3 withMailboxTypeResolver:(id)a4;
+ (id)transformPredicateWithMailboxes:(id)a3 mailboxTypeResolver:(id)a4 shouldIncludeFollowUps:(BOOL)a5 shouldIncludeReadLater:(BOOL)a6 limitToSender:(id)a7;
+ (int64_t)dateSortOrderFromSortDescriptors:(id)a3;
@end

@implementation EMMessageListItemPredicates

+ (id)predicateForPrimaryMessages
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = [EMMessageListItemPredicates predicateForMessagesWithCategoryType:0];
  v3 = +[EMMessageListItemPredicates _predicateForModelHighImpactMessages];
  v4 = MEMORY[0x1E696AB28];
  v9[0] = v2;
  v9[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v4 orPredicateWithSubpredicates:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_predicateForModelHighImpactMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.isHighImpact"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F461CCF0];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:4 options:0];

  return v5;
}

+ (id)predicateForMessagesWithActiveFollowUp
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"followUp.isActive"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:4 options:0];

  return v5;
}

+ (id)predicateForSendLaterMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"sendLaterDate"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:5 options:0];

  return v5;
}

+ (id)predicateForUnfiredReadLaterMessages
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [a1 predicateForReadLaterMessages];
  v11[0] = v4;
  v5 = [a1 _predicateForReadLaterMessagesFired:0];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];
  v8 = [v7 ef_simplifiedPredicate];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)predicateForReadLaterMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"readLater.date"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:5 options:0];

  return v5;
}

+ (id)predicateForUrgentMessages
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = [EMInternalPreferences preferenceEnabled:45];
  v4 = [EMInternalPreferences preferenceEnabled:46];
  if (_os_feature_enabled_impl() && !(v3 | !EMIsGreymatterAvailable("CatchUpHighlightsV2") | v4))
  {
    v11 = [a1 predicateForIsUrgentMessages];
  }

  else
  {
    v5 = [a1 predicateForUnreadMessages];
    if ([EMInternalPreferences preferenceEnabled:45])
    {
      [a1 predicateForFlaggedMessages];
    }

    else
    {
      [a1 predicateForGeneratedSummaryUrgentMessages];
    }
    v6 = ;
    if ([EMInternalPreferences preferenceEnabled:46])
    {
      [MEMORY[0x1E695DF00] distantPast];
    }

    else
    {
      [MEMORY[0x1E695DF00] ef_dateHoursAgo:{+[EMGeneratedSummary consideredUrgentHourLimit](EMGeneratedSummary, "consideredUrgentHourLimit")}];
    }
    v7 = ;
    v8 = [a1 predicateForMessagesNewerThanDate:v7];

    v9 = MEMORY[0x1E696AE18];
    v14[0] = v5;
    v14[1] = v6;
    v14[2] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    v11 = [v9 ef_andCompoundPredicateWithSubpredicates:v10];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)predicateForGeneratedSummaryUrgentMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"generatedSummary.urgent"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:4 options:0];

  return v5;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__EMMessageListItemPredicates_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_24 != -1)
  {
    dispatch_once(&log_onceToken_24, block);
  }

  v2 = log_log_24;

  return v2;
}

void __34__EMMessageListItemPredicates_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_24;
  log_log_24 = v1;
}

+ (id)predicateForMessagesInConversation:(int64_t)a3
{
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"conversationID"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:4 options:0];

  return v9;
}

+ (id)predicateForMessagesInMailboxWithType:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [a1 _predicateForMessagesInMailboxWithType:v4];

  return v5;
}

+ (id)_predicateForMessagesInMailboxWithType:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"mailboxes.type"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:2 type:4 options:0];

  return v7;
}

+ (id)predicateForMessagesInMailboxesWithTypes:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__EMMessageListItemPredicates_predicateForMessagesInMailboxesWithTypes___block_invoke;
  v6[3] = &__block_descriptor_40_e18__16__0__NSNumber_8l;
  v6[4] = a1;
  v3 = [a3 ef_map:v6];
  v4 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v3];

  return v4;
}

id __72__EMMessageListItemPredicates_predicateForMessagesInMailboxesWithTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _predicateForMessagesInMailboxWithType:a2];

  return v2;
}

+ (id)predicateForExcludingMessagesInMailboxWithType:(int64_t)a3
{
  v4 = MEMORY[0x1E696AB28];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [a1 _predicateForMessagesInMailboxWithType:v5];
  v7 = [v4 notPredicateWithSubpredicate:v6];

  return v7;
}

+ (id)predicateForExcludingMessagesInMailboxesWithTypes:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"mailboxes.type"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:1 type:10 options:0];

  v8 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v7];

  return v8;
}

+ (id)predicateForMessagesInMailbox:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 makePredicate];
  }

  else
  {
    v9 = [v4 objectID];
    v8 = [a1 predicateForMessagesInMailboxWithObjectID:v9];
  }

  return v8;
}

+ (id)predicateForMessagesInMailboxWithObjectID:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"EMMessageListItemPredicates.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"[mailboxObjectID isKindOfClass:[EMMailboxObjectID class]]"}];
  }

  v6 = [v5 url];
  v7 = [a1 _predicateForMessagesInMailboxWithURL:v6];

  return v7;
}

+ (id)predicateForMessagesInMailboxes:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__EMMessageListItemPredicates_predicateForMessagesInMailboxes___block_invoke;
  v6[3] = &__block_descriptor_40_e19__16__0__EMMailbox_8l;
  v6[4] = a1;
  v3 = [a3 ef_map:v6];
  if ([v3 count] == 1)
  {
    [v3 firstObject];
  }

  else
  {
    [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v3];
  }
  v4 = ;

  return v4;
}

id __63__EMMessageListItemPredicates_predicateForMessagesInMailboxes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) predicateForMessagesInMailbox:a2];

  return v2;
}

+ (id)predicateForMessagesInMailboxesWithObjectIDs:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__EMMessageListItemPredicates_predicateForMessagesInMailboxesWithObjectIDs___block_invoke;
  v6[3] = &__block_descriptor_40_e33___NSPredicate_16__0__EMObjectID_8l;
  v6[4] = a1;
  v3 = [a3 ef_map:v6];
  v4 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v3];

  return v4;
}

id __76__EMMessageListItemPredicates_predicateForMessagesInMailboxesWithObjectIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) predicateForMessagesInMailboxWithObjectID:a2];

  return v2;
}

+ (id)predicateForExcludingMessagesInMailbox:(id)a3
{
  v3 = MEMORY[0x1E696AB28];
  v4 = [a1 predicateForMessagesInMailbox:a3];
  v5 = [v3 notPredicateWithSubpredicate:v4];

  return v5;
}

+ (id)predicateForExcludingMessagesInMailboxObjectID:(id)a3
{
  v3 = MEMORY[0x1E696AB28];
  v4 = [a1 predicateForMessagesInMailboxWithObjectID:a3];
  v5 = [v3 notPredicateWithSubpredicate:v4];

  return v5;
}

+ (id)predicateForExcludingMessagesInMailboxes:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__EMMessageListItemPredicates_predicateForExcludingMessagesInMailboxes___block_invoke;
  v6[3] = &__block_descriptor_40_e19__16__0__EMMailbox_8l;
  v6[4] = a1;
  v3 = [a3 ef_map:v6];
  v4 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];

  return v4;
}

id __72__EMMessageListItemPredicates_predicateForExcludingMessagesInMailboxes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) predicateForExcludingMessagesInMailbox:a2];

  return v2;
}

+ (id)predicateForExcludingMessagesInMailboxesWithObjectIDs:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__EMMessageListItemPredicates_predicateForExcludingMessagesInMailboxesWithObjectIDs___block_invoke;
  v6[3] = &__block_descriptor_40_e33___NSPredicate_16__0__EMObjectID_8l;
  v6[4] = a1;
  v3 = [a3 ef_map:v6];
  v4 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];

  return v4;
}

id __85__EMMessageListItemPredicates_predicateForExcludingMessagesInMailboxesWithObjectIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) predicateForExcludingMessagesInMailboxObjectID:a2];

  return v2;
}

+ (id)predicateForMessagesWithMailboxScope:(id)a3
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"EMMessageListItemPredicates.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"mailboxScope"}];
  }

  v6 = +[EMMailboxScope allMailboxesScope];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = 1;
LABEL_7:
    v11 = [MEMORY[0x1E696AE18] predicateWithValue:v8];
    goto LABEL_26;
  }

  v9 = +[EMMailboxScope noMailboxesScope];
  v10 = [v5 isEqual:v9];

  if (v10)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v12 = [v5 mailboxObjectIDs];
  v13 = [v12 allObjects];

  v14 = [v5 mailboxTypes];
  v15 = [v14 allObjects];

  if (!(v13 | v15))
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"EMMessageListItemPredicates.m" lineNumber:171 description:@"Mailbox scope must have either mailbox object IDs or mailbox types"];

    v17 = 0;
    v18 = 0;
    goto LABEL_20;
  }

  if (!v13)
  {
    v17 = 0;
    v18 = 0;
    if (v15)
    {
      goto LABEL_16;
    }

LABEL_20:
    v19 = [v5 excludeMailboxes];
    v20 = MEMORY[0x1E696AB28];
    if (v19)
    {
      v29[0] = v17;
      v29[1] = v18;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      v22 = [v20 andPredicateWithSubpredicates:v21];
    }

    else
    {
      v28[0] = v17;
      v28[1] = v18;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
      v22 = [v20 orPredicateWithSubpredicates:v21];
    }

    v23 = v22;

    v11 = v23;
    goto LABEL_25;
  }

  if ([v5 excludeMailboxes])
  {
    [EMMessageListItemPredicates predicateForExcludingMessagesInMailboxesWithObjectIDs:v13];
  }

  else
  {
    [EMMessageListItemPredicates predicateForMessagesInMailboxesWithObjectIDs:v13];
  }
  v16 = ;
  v17 = v16;
  if (v15)
  {
LABEL_16:
    if ([v5 excludeTypes])
    {
      [EMMessageListItemPredicates predicateForExcludingMessagesInMailboxesWithTypes:v15];
    }

    else
    {
      [EMMessageListItemPredicates predicateForMessagesInMailboxesWithTypes:v15];
    }
    v18 = ;
    v11 = v18;
    if (!v13)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v11 = v16;
  v17 = v11;
LABEL_25:

LABEL_26:
  v24 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)predicateForMessagesWithThreadScope:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"EMMessageListItemPredicates.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"threadScope"}];
  }

  v6 = [v5 mailboxScope];
  v7 = [v5 filterPredicate];
  v8 = +[EMMailboxScope allMailboxesScope];

  if (v6 == v8)
  {
    if (v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
    }

    goto LABEL_11;
  }

  v9 = +[EMMailboxScope noMailboxesScope];

  if (v6 == v9)
  {
    v15 = [MEMORY[0x1E696AE18] ef_matchNothingPredicate];
LABEL_11:
    v11 = v15;
    goto LABEL_12;
  }

  v10 = [a1 predicateForMessagesWithMailboxScope:v6];
  v11 = v10;
  if (v7)
  {
    v12 = MEMORY[0x1E696AB28];
    v19[0] = v10;
    v19[1] = v7;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v14 = [v12 andPredicateWithSubpredicates:v13];

    v11 = v14;
  }

LABEL_12:

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)predicateForMessagesWithSender:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"senderList.emailAddressValue.simpleAddress"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [v3 emailAddressValue];
  v8 = [v7 simpleAddress];
  v9 = [v6 expressionForConstantValue:v8];
  v10 = [v4 predicateWithLeftExpression:v5 rightExpression:v9 modifier:2 type:4 options:1];

  return v10;
}

+ (id)predicateForMessagesForBusinessID:(int64_t)a3
{
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"businessID"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:4 options:1];

  return v9;
}

+ (id)predicateForMessagesForBusinessID:(int64_t)a3 forAccount:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [EMMessageListItemPredicates predicateForAccount:v5];
  v7 = [EMMessageListItemPredicates predicateForMessagesForBusinessID:a3];
  v8 = MEMORY[0x1E696AB28];
  v13[0] = v6;
  v13[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)predicateForMessagesWithSender:(id)a3 forAccount:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [EMMessageListItemPredicates predicateForAccount:v6];
  v16[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v9 = [EMMessageListItemPredicates predicateForMessagesWithSenders:v8];

  v10 = MEMORY[0x1E696AB28];
  v15[0] = v7;
  v15[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)predicateForMessagesWithSenders:(id)a3
{
  v3 = [a3 ef_map:&__block_literal_global_32];
  v4 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v3];

  return v4;
}

id __63__EMMessageListItemPredicates_predicateForMessagesWithSenders___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [EMMessageListItemPredicates predicateForMessagesWithSender:a2];

  return v2;
}

+ (id)predicateForMessagesWithoutSender:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"senderList.emailAddressValue.simpleAddress"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [v3 emailAddressValue];
  v8 = [v7 simpleAddress];
  v9 = [v6 expressionForConstantValue:v8];
  v10 = [v4 predicateWithLeftExpression:v5 rightExpression:v9 modifier:2 type:5 options:1];

  return v10;
}

+ (id)predicateForMessagesWithoutSenders:(id)a3
{
  v3 = [a3 ef_map:&__block_literal_global_99_0];
  v4 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];

  return v4;
}

id __66__EMMessageListItemPredicates_predicateForMessagesWithoutSenders___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [EMMessageListItemPredicates predicateForMessagesWithoutSender:a2];

  return v2;
}

+ (id)predicateForMessagesTo:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"toList.emailAddressValue.simpleAddress"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = v3;
  v8 = [v7 emailAddressValue];
  v9 = [v8 simpleAddress];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v7 stringValue];
  }

  v12 = v11;

  v13 = [v6 expressionForConstantValue:v12];
  v14 = [v4 predicateWithLeftExpression:v5 rightExpression:v13 modifier:2 type:4 options:1];

  return v14;
}

+ (id)predicateForMessagesWithToAddresses:(id)a3
{
  v3 = [a3 ef_map:&__block_literal_global_102];
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"toList.emailAddressValue.simpleAddress"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:2 type:10 options:1];

  return v7;
}

id __67__EMMessageListItemPredicates_predicateForMessagesWithToAddresses___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 stringValue];
  }

  v7 = v6;

  return v7;
}

+ (id)predicateForMessagesCced:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"ccList.emailAddressValue.simpleAddress"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = v3;
  v8 = [v7 emailAddressValue];
  v9 = [v8 simpleAddress];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v7 stringValue];
  }

  v12 = v11;

  v13 = [v6 expressionForConstantValue:v12];
  v14 = [v4 predicateWithLeftExpression:v5 rightExpression:v13 modifier:2 type:4 options:1];

  return v14;
}

+ (id)predicateForMessagesWithCcAddresses:(id)a3
{
  v3 = [a3 ef_map:&__block_literal_global_104];
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"ccList.emailAddressValue.simpleAddress"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:2 type:10 options:1];

  return v7;
}

id __67__EMMessageListItemPredicates_predicateForMessagesWithCcAddresses___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 stringValue];
  }

  v7 = v6;

  return v7;
}

+ (id)predicateForMessagesWithRecipient:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 predicateForMessagesTo:v4];
  v6 = [a1 predicateForMessagesCced:v4];
  v7 = MEMORY[0x1E696AB28];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [v7 orPredicateWithSubpredicates:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)predicateForMessagesWithRecipients:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 ef_map:&__block_literal_global_106_0];
  v5 = MEMORY[0x1E696AB18];
  v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"toList.emailAddressValue.simpleAddress"];
  v7 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v4];
  v8 = [v5 predicateWithLeftExpression:v6 rightExpression:v7 modifier:2 type:10 options:1];

  v9 = MEMORY[0x1E696AB18];
  v10 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"ccList.emailAddressValue.simpleAddress"];
  v11 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v4];
  v12 = [v9 predicateWithLeftExpression:v10 rightExpression:v11 modifier:2 type:10 options:1];

  v13 = MEMORY[0x1E696AB28];
  v18[0] = v8;
  v18[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v15 = [v13 orPredicateWithSubpredicates:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id __66__EMMessageListItemPredicates_predicateForMessagesWithRecipients___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 stringValue];
  }

  v7 = v6;

  return v7;
}

+ (id)predicateForFlagColor:(unint64_t)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [a1 _predicateForKeyPath:@"flags.flagColor" value:v4];

  v6 = MEMORY[0x1E696AB28];
  v7 = [a1 predicateForFlaggedMessages];
  v12[0] = v7;
  v12[1] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [v6 andPredicateWithSubpredicates:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_predicateForKeyPath:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AB18];
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:a3];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v5];
  v9 = [v6 predicateWithLeftExpression:v7 rightExpression:v8 modifier:0 type:4 options:0];

  return v9;
}

+ (id)predicateForTodayMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"displayDate"];
  v4 = MEMORY[0x1E696ABC8];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 startOfDayForDate:v6];
  v8 = [v4 expressionForConstantValue:v7];
  v9 = [v2 predicateWithLeftExpression:v3 rightExpression:v8 modifier:0 type:2 options:0];

  return v9;
}

+ (id)predicateForMessagesWithCategoryType:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.type"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:4 options:0];

  return v9;
}

+ (id)predicateForNonPrimaryMessages
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [EMMessageListItemPredicates predicateForMessagesWithCategoryType:2];
  v4 = [EMMessageListItemPredicates predicateForMessagesWithCategoryType:1, v3];
  v10[1] = v4;
  v5 = [EMMessageListItemPredicates predicateForMessagesWithCategoryType:3];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [v2 orPredicateWithSubpredicates:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)predicateForCategorizedMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.subCategory"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F461CD08];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:5 options:0];

  return v5;
}

+ (id)predicateForTopHitsMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"searchResultType"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F461CD20];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:4 options:0];

  return v5;
}

+ (id)predicateForIndexedMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"searchResultType"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F461CCC0];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:4 options:0];

  return v5;
}

+ (id)predicateForIsUrgentMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"isUrgent"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:4 options:0];

  return v5;
}

+ (id)predicateForUnfiredReadLaterMessagesInInbox
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [a1 predicateForUnfiredReadLaterMessages];
  v11[0] = v4;
  v5 = [a1 predicateForMessagesInMailboxWithType:7];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];
  v8 = [v7 ef_simplifiedPredicate];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)transformPredicateWithMailboxes:(id)a3 mailboxTypeResolver:(id)a4 shouldIncludeFollowUps:(BOOL)a5 shouldIncludeReadLater:(BOOL)a6 limitToSender:(id)a7
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v9)
  {
    v15 = [EMMessageListItemPredicates predicateForMessagesWithActiveFollowUpInAccountsOfMailboxes:v11 mailboxTypeResolver:v12];
    [v14 ef_addOptionalObject:v15];
  }

  if (v8)
  {
    v16 = [EMMessageListItemPredicates predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:v11];
    [v14 ef_addOptionalObject:v16];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __143__EMMessageListItemPredicates_transformPredicateWithMailboxes_mailboxTypeResolver_shouldIncludeFollowUps_shouldIncludeReadLater_limitToSender___block_invoke;
  v21[3] = &unk_1E826E3C8;
  v22 = v14;
  v23 = v13;
  v17 = v13;
  v18 = v14;
  v19 = _Block_copy(v21);

  return v19;
}

id __143__EMMessageListItemPredicates_transformPredicateWithMailboxes_mailboxTypeResolver_shouldIncludeFollowUps_shouldIncludeReadLater_limitToSender___block_invoke(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) insertObject:v3 atIndex:0];
  v4 = [MEMORY[0x1E696AE18] ef_orCompoundPredicateWithSubpredicates:*(a1 + 32)];

  if (*(a1 + 40))
  {
    v5 = MEMORY[0x1E696AB28];
    v11[0] = v4;
    v6 = [EMMessageListItemPredicates predicateForMessagesWithSender:?];
    v11[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v8 = [v5 andPredicateWithSubpredicates:v7];

    v4 = v8;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_predicateForFollowUpMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"followUp.startDate"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:5 options:0];

  return v5;
}

+ (id)predicateForMessagesWithActiveFollowUpInAccountsOfMailboxes:(id)a3 mailboxTypeResolver:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 ef_any:&__block_literal_global_128])
  {
    v9 = [a1 predicateForMessagesWithActiveFollowUpInSent];
  }

  else
  {
    v10 = [v7 ef_compactMap:&__block_literal_global_131];
    if ([v10 count])
    {
      v11 = [v8 mailboxObjectIDsForMailboxType:4];
      v12 = [v11 allObjects];

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __111__EMMessageListItemPredicates_predicateForMessagesWithActiveFollowUpInAccountsOfMailboxes_mailboxTypeResolver___block_invoke_132;
      v23[3] = &unk_1E826E410;
      v24 = v10;
      v13 = [v12 ef_filter:v23];
      if ([v13 count])
      {
        v14 = [EMMessageListItemPredicates predicateForMessagesInMailboxesWithObjectIDs:v13];
        v15 = MEMORY[0x1E696AB28];
        v25[0] = v14;
        v16 = [a1 predicateForMessagesWithActiveFollowUp];
        v25[1] = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
        v18 = [v15 andPredicateWithSubpredicates:v17];
        v9 = [v18 ef_simplifiedPredicate];
      }

      else
      {
        v14 = +[EMMessageListItemPredicates log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v20 = NSStringFromSelector(a2);
          *buf = 138543362;
          v27 = v20;
          _os_log_impl(&dword_1C6655000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - empty mailboxesToSearch", buf, 0xCu);
        }

        v9 = 0;
      }
    }

    else
    {
      v12 = +[EMMessageListItemPredicates log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromSelector(a2);
        *buf = 138543362;
        v27 = v19;
        _os_log_impl(&dword_1C6655000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - empty accountIdentifiers", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v9;
}

id __111__EMMessageListItemPredicates_predicateForMessagesWithActiveFollowUpInAccountsOfMailboxes_mailboxTypeResolver___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 accountIdentifier];
  v3 = [v2 representedObjectID];

  return v3;
}

uint64_t __111__EMMessageListItemPredicates_predicateForMessagesWithActiveFollowUpInAccountsOfMailboxes_mailboxTypeResolver___block_invoke_132(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accountIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

+ (id)predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:(id)a3
{
  v3 = [a1 predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:a3 additionalAccountObjectIDs:0];

  return v3;
}

+ (id)predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:(id)a3 additionalAccountObjectIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 ef_any:&__block_literal_global_135])
  {
    v8 = [a1 predicateForFiredReadLaterMessages];
  }

  else
  {
    v9 = [v6 ef_compactMap:&__block_literal_global_138];
    if ([v7 count])
    {
      v10 = [v9 arrayByAddingObjectsFromArray:v7];

      v9 = v10;
    }

    v11 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    v12 = [v11 allObjects];

    if ([v12 count])
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __121__EMMessageListItemPredicates_predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes_additionalAccountObjectIDs___block_invoke_3;
      v18[3] = &__block_descriptor_40_e33___NSPredicate_16__0__EMObjectID_8l;
      v18[4] = a1;
      v13 = [v12 ef_compactMap:v18];
      v14 = [MEMORY[0x1E696AE18] ef_orCompoundPredicateWithSubpredicates:v13];
      v15 = MEMORY[0x1E696AE18];
      v16 = [a1 predicateForFiredReadLaterMessages];
      v8 = [v15 ef_andCompoundPredicateForOptionalPredicate:v14 second:v16];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id __121__EMMessageListItemPredicates_predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes_additionalAccountObjectIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 accountIdentifier];

  return v2;
}

id __121__EMMessageListItemPredicates_predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes_additionalAccountObjectIDs___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) predicateForAccountWithObjectID:a2];

  return v2;
}

+ (id)predicateForMessagesWithActiveFollowUpInSent
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 predicateForMessagesInMailboxWithType:4];
  v4 = MEMORY[0x1E696AB28];
  v5 = [a1 predicateForMessagesWithActiveFollowUp];
  v10[0] = v5;
  v10[1] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v4 andPredicateWithSubpredicates:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)predicateForMessagesWithUnfiredFollowUp
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB18];
  v4 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"displayDate"];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"followUp.startDate"];
  v6 = [v3 predicateWithLeftExpression:v4 rightExpression:v5 modifier:0 type:0 options:0];

  v7 = MEMORY[0x1E696AB28];
  v8 = [a1 _predicateForFollowUpMessages];
  v9 = [a1 predicateForMessagesInMailboxWithType:{4, v8, v6}];
  v14[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v11 = [v7 andPredicateWithSubpredicates:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_predicateForActiveFollowUpMessagesIncludeExpired:(BOOL)a3
{
  v22[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AB18];
  v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"displayDate"];
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"followUp.startDate"];
  v8 = [v5 predicateWithLeftExpression:v6 rightExpression:v7 modifier:0 type:2 options:0];

  v9 = [a1 predicateForMessagesInMailboxWithType:4];
  v10 = v9;
  if (a3)
  {
    v11 = MEMORY[0x1E696AB28];
    v21[0] = v8;
    v21[1] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v13 = [v11 andPredicateWithSubpredicates:v12];
  }

  else
  {
    v14 = MEMORY[0x1E696AB18];
    v15 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"displayDate"];
    v16 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"followUp.endDate"];
    v12 = [v14 predicateWithLeftExpression:v15 rightExpression:v16 modifier:0 type:0 options:0];

    v17 = MEMORY[0x1E696AB28];
    v22[0] = v8;
    v22[1] = v12;
    v22[2] = v10;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
    v13 = [v17 andPredicateWithSubpredicates:v18];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)predicateForUnsubscribableMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"unsubscribeType"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F461CD38];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:5 options:0];

  return v5;
}

+ (id)predicateForIncludesMeMessages
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [a1 predicateForToMeMessages];
  v10[0] = v4;
  v5 = [a1 predicateForCCMeMessages];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v3 orPredicateWithSubpredicates:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)predicateForRecentMessages
{
  v3 = [MEMORY[0x1E695DF00] ef_lastWeekMidnight];
  v4 = [a1 predicateForMessagesNewerThanDisplayDate:v3];

  return v4;
}

+ (id)predicateForMessagesNewerThanDisplayDate:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"displayDate"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:2 options:0];

  return v7;
}

+ (id)predicateForMessagesNewerThanDate:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"date"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:2 options:0];

  return v7;
}

+ (id)predicateForExcludingMessagesInMailboxWithURL:(id)a3
{
  v3 = MEMORY[0x1E696AB28];
  v4 = [a1 _predicateForMessagesInMailboxWithURL:a3];
  v5 = [v3 notPredicateWithSubpredicate:v4];

  return v5;
}

+ (id)_predicateForMessagesInMailboxWithURL:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"mailboxObjectIDs.url.absoluteString"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [v3 absoluteString];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:2 type:4 options:0];

  return v9;
}

+ (id)predicateForAccountIdentifier:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"mailboxes.accountIdentifier.representedObjectID"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:2 type:4 options:0];

  return v7;
}

+ (id)predicateForAccount:(id)a3
{
  v4 = [a3 objectID];
  v5 = [a1 predicateForAccountWithObjectID:v4];

  return v5;
}

+ (id)predicateForAccountWithObjectID:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"mailboxes.accountIdentifier.representedObjectID"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [v3 representedObjectID];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:2 type:4 options:0];

  return v9;
}

+ (id)predicateForSendLaterMessagesWithStartDate:(id)a3 endDate:(id)a4
{
  v4 = [a1 _dateRangePredicateForListItemKeyPath:@"sendLaterDate" startDate:a3 endDate:a4];

  return v4;
}

+ (id)predicateForReadLaterMessagesWithStartDate:(id)a3 endDate:(id)a4
{
  v4 = [a1 _dateRangePredicateForListItemKeyPath:@"readLater.date" startDate:a3 endDate:a4];

  return v4;
}

+ (id)_dateRangePredicateForListItemKeyPath:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v24[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v8 sinceDate:-1.0];

  v11 = MEMORY[0x1E696AB18];
  v12 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v7];
  v13 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v10];
  v14 = [v11 predicateWithLeftExpression:v12 rightExpression:v13 modifier:0 type:2 options:0];

  if (v9)
  {
    v15 = MEMORY[0x1E696AB18];
    v16 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v7];
    v17 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v9];
    v18 = [v15 predicateWithLeftExpression:v16 rightExpression:v17 modifier:0 type:0 options:0];

    v19 = MEMORY[0x1E696AB28];
    v24[0] = v14;
    v24[1] = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v21 = [v19 andPredicateWithSubpredicates:v20];
  }

  else
  {
    v21 = v14;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)predicateFromPredicate:(id)a3 ignoringKeyPaths:(id)a4
{
  v4 = predicateFromPredicateIgnoringKeyPaths(a3, a4);

  return v4;
}

+ (id)predicateFromPredicate:(id)a3 ignoringPredicates:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
  v8 = predicateFromPredicateIgnoringPredicates(v5, v7);

  return v8;
}

+ (int64_t)dateSortOrderFromSortDescriptors:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v11[0] = @"date";
    v11[1] = @"displayDate";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v6 = [v4 key];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      if ([v4 ascending])
      {
        v8 = -1;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)isPredicateForMessagesInConversations:(id)a3 conversationIDs:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = [v5 leftExpression];
  if ([v6 expressionType] != 3)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = [v5 leftExpression];
  v8 = [v7 keyPath];
  if (([v8 isEqualToString:@"conversationID"] & 1) == 0)
  {

    goto LABEL_9;
  }

  v9 = [v5 comparisonPredicateModifier];

  if (v9)
  {
    goto LABEL_10;
  }

  v10 = [v5 predicateOperatorType];
  if (v10 == 4)
  {
    v16 = [v5 rightExpression];
    v17 = [v16 constantValue];

    if (v17)
    {
      v19[0] = v17;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    if (v10 != 10)
    {
      goto LABEL_10;
    }

    v11 = [v5 rightExpression];
    v12 = [v11 constantValue];
  }

  if (v12)
  {
    if (a4)
    {
      v18 = v12;
      *a4 = v12;
    }

    v13 = 1;
    goto LABEL_12;
  }

LABEL_10:
  v13 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)isPredicateForMessagesInMailboxObjectID:(id)a3 mailboxObjectID:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = [v5 leftExpression];
  if ([v6 expressionType] != 3)
  {
LABEL_10:

    goto LABEL_11;
  }

  v7 = [v5 leftExpression];
  v8 = [v7 keyPath];
  if (![v8 isEqualToString:@"mailboxObjectIDs.url.absoluteString"] || objc_msgSend(v5, "comparisonPredicateModifier") != 2)
  {

    goto LABEL_10;
  }

  v9 = [v5 predicateOperatorType];

  if (v9 == 4)
  {
    v10 = [v5 rightExpression];
    v11 = [v10 constantValue];

    v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v11];
    v13 = [[EMMailboxObjectID alloc] initWithURL:v12];
    if (a4)
    {
      v13 = v13;
      *a4 = v13;
    }

    v14 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v14 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_13:

  return v14;
}

+ (BOOL)_isPredicateForMessagesInMailboxObjectIDs:(id)a3 mailboxObjectIDs:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 compoundPredicateType] == 2)
  {
    [v6 subpredicates];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v7 = v24 = 0u;
    v8 = 0;
    v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v22 = 0;
          v13 = [a1 isPredicateForMessagesInMailboxObjectID:v12 mailboxObjectID:&v22];
          v14 = v22;
          v15 = v14;
          if (!v13)
          {
            if (a4)
            {
              *a4 = 0;
            }

            LOBYTE(v17) = 0;
            goto LABEL_25;
          }

          if (!v8)
          {
            v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v7, "count")}];
          }

          [v8 addObject:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if (a4)
    {
      v16 = v8;
      *a4 = v8;
    }

    LOBYTE(v17) = 1;
LABEL_25:
  }

  else
  {
    v21 = 0;
    v17 = [a1 isPredicateForMessagesInMailboxObjectID:v6 mailboxObjectID:&v21];
    v8 = v21;
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v8, 0}];
      if (a4)
      {
        v18 = v18;
        *a4 = v18;
      }
    }

    else if (a4)
    {
      *a4 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)isPredicateForMessagesInMailboxWithType:(id)a3 mailboxType:(int64_t *)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = [v5 leftExpression];
  if ([v6 expressionType] != 3)
  {
LABEL_10:

    goto LABEL_11;
  }

  v7 = [v5 leftExpression];
  v8 = [v7 keyPath];
  if (![v8 isEqualToString:@"mailboxes.type"] || objc_msgSend(v5, "comparisonPredicateModifier") != 2)
  {

    goto LABEL_10;
  }

  v9 = [v5 predicateOperatorType];

  if (v9 == 4)
  {
    v10 = [v5 rightExpression];
    v11 = [v10 constantValue];

    if (a4)
    {
      *a4 = [v11 integerValue];
    }

    v12 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v12 = 0;
  if (a4)
  {
    *a4 = -500;
  }

LABEL_13:

  return v12;
}

+ (BOOL)isPredicateForMessagesWithActiveFollowUp:(id)a3 mailboxTypeResolver:(id)a4 inSent:(BOOL *)a5 sentMailboxObjectIDs:(id *)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if ([a1 _isPredicateForMessagesWithActiveFollowUp:v10])
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = 0;
    }

    v12 = 1;
    goto LABEL_52;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 compoundPredicateType] == 1)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v11;
    v13 = [v10 subpredicates];
    obj = v13;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = 0;
      v25 = 0;
      v16 = *v32;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v30 = -500;
          if ([a1 _isPredicateForMessagesWithActiveFollowUp:v18])
          {
            v25 = 1;
          }

          else if ([a1 isPredicateForMessagesInMailboxWithType:v18 mailboxType:&v30])
          {
            if (v30 != 4)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v15 || (v29 = 0, v19 = [a1 _isPredicateForMessagesInMailboxObjectIDs:v18 mailboxObjectIDs:&v29], v15 = v29, !v19))
            {
LABEL_35:
              if (a5)
              {
                *a5 = 0;
              }

              v21 = obj;
              if (a6)
              {
                *a6 = 0;
              }

LABEL_49:

              goto LABEL_50;
            }

            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __120__EMMessageListItemPredicates_isPredicateForMessagesWithActiveFollowUp_mailboxTypeResolver_inSent_sentMailboxObjectIDs___block_invoke;
            v27[3] = &unk_1E826E4D0;
            v28 = v24;
            if ([v15 ef_any:v27])
            {
              if (a5)
              {
                *a5 = 0;
              }

              if (a6)
              {
                *a6 = 0;
              }

              v21 = obj;
              goto LABEL_49;
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      if (v25)
      {
        if (a5)
        {
          *a5 = 1;
        }

        if (a6)
        {
          v20 = v15;
          *a6 = v15;
        }

        v12 = 1;
LABEL_51:

        v11 = v24;
        goto LABEL_52;
      }
    }

    else
    {

      v15 = 0;
    }

    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      v12 = 0;
      *a6 = 0;
    }

    else
    {
LABEL_50:
      v12 = 0;
    }

    goto LABEL_51;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v12 = 0;
  if (a6)
  {
    *a6 = 0;
  }

LABEL_52:

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL __120__EMMessageListItemPredicates_isPredicateForMessagesWithActiveFollowUp_mailboxTypeResolver_inSent_sentMailboxObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || [*(a1 + 32) mailboxTypeForMailboxObjectID:v3] != 4;

  return v4;
}

+ (BOOL)_isPredicateForMessagesWithActiveFollowUp:(id)a3
{
  v4 = a3;
  v5 = [a1 predicateForMessagesWithActiveFollowUp];
  v6 = [v4 isEqual:v5];

  return v6;
}

+ (BOOL)isPredicateForMessagesWithFiredReadLaterDate:(id)a3 accountObjectIDs:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v5 = +[EMMessageListItemPredicates predicateForFiredReadLaterMessages];
  v6 = [v23 isEqual:v5];

  if (v6)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v23 subpredicates];
    }

    else
    {
      v8 = 0;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v13 = *v26;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [a1 predicateForFiredReadLaterMessages];
          v17 = [v15 isEqual:v16];

          if (v17)
          {
            v11 = 1;
          }

          else if (v12 || (v24 = 0, v18 = [a1 _isPredicateForMessagesInAccountObjectIDs:v15 accountObjectIDs:&v24], v12 = v24, (v18 & 1) == 0))
          {
            if (a4)
            {
              *a4 = 0;
            }

            goto LABEL_26;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      if (v11)
      {
        if (a4)
        {
          v19 = v12;
          *a4 = v12;
        }

        v7 = 1;
        goto LABEL_30;
      }
    }

    else
    {

      v12 = 0;
    }

    if (a4)
    {
      v7 = 0;
      *a4 = 0;
    }

    else
    {
LABEL_26:
      v7 = 0;
    }

LABEL_30:
  }

  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (BOOL)isPredicateForMessagesInAccountObjectID:(id)a3 accountObjectID:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = [v5 leftExpression];
  if ([v6 expressionType] != 3)
  {
LABEL_10:

    goto LABEL_11;
  }

  v7 = [v5 leftExpression];
  v8 = [v7 keyPath];
  if (![v8 isEqualToString:@"mailboxes.accountIdentifier.representedObjectID"] || objc_msgSend(v5, "comparisonPredicateModifier") != 2)
  {

    goto LABEL_10;
  }

  v9 = [v5 predicateOperatorType];

  if (v9 == 4)
  {
    v10 = [v5 rightExpression];
    v11 = [v10 constantValue];

    v12 = [[EMObjectID alloc] initWithRepresentedObjectID:v11];
    if (a4)
    {
      v12 = v12;
      *a4 = v12;
    }

    v13 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v13 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_13:

  return v13;
}

+ (BOOL)_isPredicateForMessagesInAccountObjectIDs:(id)a3 accountObjectIDs:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 compoundPredicateType] == 2)
  {
    [v6 subpredicates];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v7 = v24 = 0u;
    v8 = 0;
    v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v22 = 0;
          v13 = [a1 isPredicateForMessagesInAccountObjectID:v12 accountObjectID:&v22];
          v14 = v22;
          v15 = v14;
          if (!v13)
          {
            if (a4)
            {
              *a4 = 0;
            }

            LOBYTE(v17) = 0;
            goto LABEL_25;
          }

          if (!v8)
          {
            v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v7, "count")}];
          }

          [v8 addObject:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if (a4)
    {
      v16 = v8;
      *a4 = v8;
    }

    LOBYTE(v17) = 1;
LABEL_25:
  }

  else
  {
    v21 = 0;
    v17 = [a1 isPredicateForMessagesInAccountObjectID:v6 accountObjectID:&v21];
    v8 = v21;
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v8, 0}];
      if (a4)
      {
        v18 = v18;
        *a4 = v18;
      }
    }

    else if (a4)
    {
      *a4 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)mailboxScopeForPredicate:(id)a3 withMailboxTypeResolver:(id)a4
{
  v4 = mailboxScopeForPredicate(a3, a4);

  return v4;
}

+ (id)threadScopeForPredicate:(id)a3 withMailboxTypeResolver:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 ef_simplifiedPredicate];

  v8 = v7;
  if ([v8 ef_matchesEverything] & 1) != 0 || (objc_msgSend(v8, "ef_matchesNothing"))
  {
LABEL_30:
    v12 = 0;
    v22 = v8;
    goto LABEL_31;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = mailboxScopeForThreadWithPredicate(v8, v6);
    v12 = v21;
    if (v21 && __79__EMMessageListItemPredicates_threadScopeForPredicate_withMailboxTypeResolver___block_invoke(v21, v21))
    {

      v22 = 0;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v9 = v8;
  if ([v9 compoundPredicateType] != 1)
  {
    v12 = 0;
    v22 = v9;
    goto LABEL_44;
  }

  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [v9 subpredicates];
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v11)
  {
LABEL_41:
    v12 = 0;
    v22 = v9;
    goto LABEL_42;
  }

  v12 = 0;
  v13 = *v30;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v30 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v29 + 1) + 8 * i);
      v16 = mailboxScopeForThreadWithPredicate(v15, v6);
      v17 = v16;
      if (v16)
      {
        v18 = v12 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
LABEL_39:

LABEL_40:
        goto LABEL_41;
      }

      if (v16)
      {
        if (!__79__EMMessageListItemPredicates_threadScopeForPredicate_withMailboxTypeResolver___block_invoke(v16, v16))
        {
          goto LABEL_39;
        }

        v19 = v17;

        v12 = v19;
      }

      else
      {
        if (hasMailboxPredicates(v15, v6))
        {
          v17 = v12;
          goto LABEL_40;
        }

        [v28 addObject:v15];
      }
    }

    v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  if (v12)
  {
    v20 = [v28 count];
    if (v20)
    {
      if (v20 == 1)
      {
        [v28 firstObject];
      }

      else
      {
        [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v28];
      }
      v22 = ;
    }

    else
    {
      v22 = 0;
    }

    v10 = v9;
LABEL_42:
  }

  else
  {
    v22 = v9;
  }

LABEL_44:
LABEL_31:
  v23 = [EMThreadScope alloc];
  v24 = v12;
  if (!v12)
  {
    v24 = +[EMMailboxScope allMailboxesScope];
  }

  v25 = [(EMThreadScope *)v23 initWithMailboxScope:v24 filterPredicate:v22];
  if (!v12)
  {
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

uint64_t __79__EMMessageListItemPredicates_threadScopeForPredicate_withMailboxTypeResolver___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mailboxTypes];
  v4 = [v3 count];

  v5 = [v2 mailboxObjectIDs];
  v6 = [v5 count];

  if (v4 != 1 || v6)
  {
    if (v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6 == 1;
    }

    v7 = v8;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (id)mailboxURLsForPredicate:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = v4;
    v12 = [v11 leftExpression];
    if ([v12 expressionType] == 3)
    {
      v13 = [v11 leftExpression];
      v14 = [v13 keyPath];
      v15 = [v14 isEqualToString:@"mailboxObjectIDs.url.absoluteString"];

      if (!v15)
      {
LABEL_14:

        goto LABEL_15;
      }

      v12 = [v11 rightExpression];
      v16 = [v12 constantValue];
      [v5 addObject:v16];
    }

    goto LABEL_14;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 subpredicates];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [a1 mailboxURLsForPredicate:*(*(&v19 + 1) + 8 * i)];
        [v5 addObjectsFromArray:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)predicateStrippingSpotlightOnlyTerms:(id)a3
{
  v3 = [a1 _predicateStrippingSpotlightOnlyTerms:a3];
  if (!v3)
  {
    v4 = +[EMMessageListItemPredicates log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "Spotlight predicate generated a nil predicate. Using TRUEPREDICATE instead. This may result in unfiltered results.", v6, 2u);
    }

    v3 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  return v3;
}

+ (id)_predicateStrippingSpotlightOnlyTerms:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v4;
  v7 = v6;
  if (isKindOfClass)
  {
    v8 = [v6 subpredicates];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __69__EMMessageListItemPredicates__predicateStrippingSpotlightOnlyTerms___block_invoke;
    v24[3] = &__block_descriptor_40_e34___NSPredicate_16__0__NSPredicate_8l;
    v24[4] = a1;
    v9 = [v8 ef_compactMap:v24];

    if ([v9 count])
    {
      v10 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(v7 subpredicates:{"compoundPredicateType"), v9}];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_18;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v7 leftExpression];
    if ([v11 expressionType] == 3)
    {
      v12 = [v7 leftExpression];
      v13 = [v12 keyPath];
      if ([v13 isEqualToString:@"body"])
      {
LABEL_9:

LABEL_10:
        v10 = 0;
        goto LABEL_18;
      }

      v14 = [v7 leftExpression];
      v15 = [v14 keyPath];
      if ([v15 isEqualToString:@"Spotlight"])
      {

        goto LABEL_9;
      }

      v19 = [v7 leftExpression];
      v20 = [v19 keyPath];
      v21 = [v20 isEqualToString:@"SpotlightQuery"];

      if (v21)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else
  {
    v16 = +[EMMessageListItemPredicates log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = [v7 ef_publicDescription];
      *buf = 138412802;
      v26 = v22;
      v27 = 2048;
      v28 = a1;
      v29 = 2114;
      v30 = v23;
      _os_log_error_impl(&dword_1C6655000, v16, OS_LOG_TYPE_ERROR, "<%@: %p> Spotlight predicate does not respond to leftExpression: %{public}@", buf, 0x20u);
    }
  }

  v10 = v7;
LABEL_18:

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

id __69__EMMessageListItemPredicates__predicateStrippingSpotlightOnlyTerms___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _predicateStrippingSpotlightOnlyTerms:a2];

  return v2;
}

+ (BOOL)predicate:(id)a3 appliesToFlagChange:(id)a4
{
  v6 = a3;
  v7 = [a1 _keyPathsForFlagChange:a4];
  v8 = [a1 predicateFromPredicate:v6 ignoringKeyPaths:v7];

  LOBYTE(v7) = [v8 isEqual:v6];
  return v7 ^ 1;
}

+ (id)_keyPathsForFlagChange:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v3 readChanged])
  {
    [v4 addObject:@"flags.read"];
  }

  if ([v3 flaggedChanged])
  {
    [v4 addObject:@"flags.flagged"];
  }

  return v4;
}

+ (BOOL)isValidPredicate:(id)a3 forClass:(Class)a4
{
  v7 = a3;
  if ([objc_opt_class() isEqual:a4])
  {
    v8 = [EMThread alloc];
    v9 = objc_alloc_init(EMThreadObjectID);
    v10 = [(EMQueryingCollection *)v8 initWithObjectID:v9 query:0];
  }

  else if ([objc_opt_class() isEqual:a4])
  {
    v11 = [EMMessage alloc];
    v9 = objc_alloc_init(EMMessageObjectID);
    v10 = [(EMMessage *)v11 initWithObjectID:v9 builder:&__block_literal_global_179];
  }

  else
  {
    if (![objc_opt_class() isEqual:a4])
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:a1 file:@"EMMessageListItemPredicates.m" lineNumber:1819 description:{@"Unknown targetClass:%@", a4}];

      v13 = 0;
      v14 = 0;
      goto LABEL_8;
    }

    v12 = [EMGroupedSender alloc];
    v9 = objc_alloc_init(EMGroupedSenderObjectID);
    v10 = [(EMGroupedSender *)v12 initWithObjectID:v9 builder:&__block_literal_global_184];
  }

  v13 = v10;

  [v7 evaluateWithObject:v13];
  v14 = 1;
LABEL_8:

  return v14;
}

@end