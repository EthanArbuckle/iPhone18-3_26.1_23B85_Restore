@interface EMMessageListItemPredicates
+ (BOOL)_isPredicateForMessagesInAccountObjectIDs:(id)ds accountObjectIDs:(id *)iDs;
+ (BOOL)_isPredicateForMessagesInMailboxObjectIDs:(id)ds mailboxObjectIDs:(id *)iDs;
+ (BOOL)_isPredicateForMessagesWithActiveFollowUp:(id)up;
+ (BOOL)isPredicateForMessagesInAccountObjectID:(id)d accountObjectID:(id *)iD;
+ (BOOL)isPredicateForMessagesInConversations:(id)conversations conversationIDs:(id *)ds;
+ (BOOL)isPredicateForMessagesInMailboxObjectID:(id)d mailboxObjectID:(id *)iD;
+ (BOOL)isPredicateForMessagesInMailboxWithType:(id)type mailboxType:(int64_t *)mailboxType;
+ (BOOL)isPredicateForMessagesWithActiveFollowUp:(id)up mailboxTypeResolver:(id)resolver inSent:(BOOL *)sent sentMailboxObjectIDs:(id *)ds;
+ (BOOL)isPredicateForMessagesWithFiredReadLaterDate:(id)date accountObjectIDs:(id *)ds;
+ (BOOL)isValidPredicate:(id)predicate forClass:(Class)class;
+ (BOOL)predicate:(id)predicate appliesToFlagChange:(id)change;
+ (OS_os_log)log;
+ (id)_dateRangePredicateForListItemKeyPath:(id)path startDate:(id)date endDate:(id)endDate;
+ (id)_keyPathsForFlagChange:(id)change;
+ (id)_predicateForActiveFollowUpMessagesIncludeExpired:(BOOL)expired;
+ (id)_predicateForFollowUpMessages;
+ (id)_predicateForKeyPath:(id)path value:(id)value;
+ (id)_predicateForMessagesInMailboxWithType:(id)type;
+ (id)_predicateForMessagesInMailboxWithURL:(id)l;
+ (id)_predicateForModelHighImpactMessages;
+ (id)_predicateStrippingSpotlightOnlyTerms:(id)terms;
+ (id)mailboxScopeForPredicate:(id)predicate withMailboxTypeResolver:(id)resolver;
+ (id)mailboxURLsForPredicate:(id)predicate;
+ (id)predicateForAccount:(id)account;
+ (id)predicateForAccountIdentifier:(id)identifier;
+ (id)predicateForAccountWithObjectID:(id)d;
+ (id)predicateForCategorizedMessages;
+ (id)predicateForExcludingMessagesInMailbox:(id)mailbox;
+ (id)predicateForExcludingMessagesInMailboxObjectID:(id)d;
+ (id)predicateForExcludingMessagesInMailboxWithType:(int64_t)type;
+ (id)predicateForExcludingMessagesInMailboxWithURL:(id)l;
+ (id)predicateForExcludingMessagesInMailboxes:(id)mailboxes;
+ (id)predicateForExcludingMessagesInMailboxesWithObjectIDs:(id)ds;
+ (id)predicateForExcludingMessagesInMailboxesWithTypes:(id)types;
+ (id)predicateForFlagColor:(unint64_t)color;
+ (id)predicateForGeneratedSummaryUrgentMessages;
+ (id)predicateForIncludesMeMessages;
+ (id)predicateForIndexedMessages;
+ (id)predicateForIsUrgentMessages;
+ (id)predicateForMessagesCced:(id)cced;
+ (id)predicateForMessagesForBusinessID:(int64_t)d;
+ (id)predicateForMessagesForBusinessID:(int64_t)d forAccount:(id)account;
+ (id)predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:(id)mailboxes;
+ (id)predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:(id)mailboxes additionalAccountObjectIDs:(id)ds;
+ (id)predicateForMessagesInConversation:(int64_t)conversation;
+ (id)predicateForMessagesInMailbox:(id)mailbox;
+ (id)predicateForMessagesInMailboxWithObjectID:(id)d;
+ (id)predicateForMessagesInMailboxWithType:(int64_t)type;
+ (id)predicateForMessagesInMailboxes:(id)mailboxes;
+ (id)predicateForMessagesInMailboxesWithObjectIDs:(id)ds;
+ (id)predicateForMessagesInMailboxesWithTypes:(id)types;
+ (id)predicateForMessagesNewerThanDate:(id)date;
+ (id)predicateForMessagesNewerThanDisplayDate:(id)date;
+ (id)predicateForMessagesTo:(id)to;
+ (id)predicateForMessagesWithActiveFollowUp;
+ (id)predicateForMessagesWithActiveFollowUpInAccountsOfMailboxes:(id)mailboxes mailboxTypeResolver:(id)resolver;
+ (id)predicateForMessagesWithActiveFollowUpInSent;
+ (id)predicateForMessagesWithCategoryType:(unint64_t)type;
+ (id)predicateForMessagesWithCcAddresses:(id)addresses;
+ (id)predicateForMessagesWithMailboxScope:(id)scope;
+ (id)predicateForMessagesWithRecipient:(id)recipient;
+ (id)predicateForMessagesWithRecipients:(id)recipients;
+ (id)predicateForMessagesWithSender:(id)sender;
+ (id)predicateForMessagesWithSender:(id)sender forAccount:(id)account;
+ (id)predicateForMessagesWithSenders:(id)senders;
+ (id)predicateForMessagesWithThreadScope:(id)scope;
+ (id)predicateForMessagesWithToAddresses:(id)addresses;
+ (id)predicateForMessagesWithUnfiredFollowUp;
+ (id)predicateForMessagesWithoutSender:(id)sender;
+ (id)predicateForMessagesWithoutSenders:(id)senders;
+ (id)predicateForNonPrimaryMessages;
+ (id)predicateForPrimaryMessages;
+ (id)predicateForReadLaterMessages;
+ (id)predicateForReadLaterMessagesWithStartDate:(id)date endDate:(id)endDate;
+ (id)predicateForRecentMessages;
+ (id)predicateForSendLaterMessages;
+ (id)predicateForSendLaterMessagesWithStartDate:(id)date endDate:(id)endDate;
+ (id)predicateForTodayMessages;
+ (id)predicateForTopHitsMessages;
+ (id)predicateForUnfiredReadLaterMessages;
+ (id)predicateForUnfiredReadLaterMessagesInInbox;
+ (id)predicateForUnsubscribableMessages;
+ (id)predicateForUrgentMessages;
+ (id)predicateFromPredicate:(id)predicate ignoringKeyPaths:(id)paths;
+ (id)predicateFromPredicate:(id)predicate ignoringPredicates:(id)predicates;
+ (id)predicateStrippingSpotlightOnlyTerms:(id)terms;
+ (id)threadScopeForPredicate:(id)predicate withMailboxTypeResolver:(id)resolver;
+ (id)transformPredicateWithMailboxes:(id)mailboxes mailboxTypeResolver:(id)resolver shouldIncludeFollowUps:(BOOL)ups shouldIncludeReadLater:(BOOL)later limitToSender:(id)sender;
+ (int64_t)dateSortOrderFromSortDescriptors:(id)descriptors;
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
  predicateForReadLaterMessages = [self predicateForReadLaterMessages];
  v11[0] = predicateForReadLaterMessages;
  v5 = [self _predicateForReadLaterMessagesFired:0];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];
  ef_simplifiedPredicate = [v7 ef_simplifiedPredicate];

  v9 = *MEMORY[0x1E69E9840];

  return ef_simplifiedPredicate;
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
    predicateForIsUrgentMessages = [self predicateForIsUrgentMessages];
  }

  else
  {
    predicateForUnreadMessages = [self predicateForUnreadMessages];
    if ([EMInternalPreferences preferenceEnabled:45])
    {
      [self predicateForFlaggedMessages];
    }

    else
    {
      [self predicateForGeneratedSummaryUrgentMessages];
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
    v8 = [self predicateForMessagesNewerThanDate:v7];

    v9 = MEMORY[0x1E696AE18];
    v14[0] = predicateForUnreadMessages;
    v14[1] = v6;
    v14[2] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    predicateForIsUrgentMessages = [v9 ef_andCompoundPredicateWithSubpredicates:v10];
  }

  v12 = *MEMORY[0x1E69E9840];

  return predicateForIsUrgentMessages;
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
  block[4] = self;
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

+ (id)predicateForMessagesInConversation:(int64_t)conversation
{
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"conversationID"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:conversation];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:4 options:0];

  return v9;
}

+ (id)predicateForMessagesInMailboxWithType:(int64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [self _predicateForMessagesInMailboxWithType:v4];

  return v5;
}

+ (id)_predicateForMessagesInMailboxWithType:(id)type
{
  typeCopy = type;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"mailboxes.type"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:typeCopy];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:2 type:4 options:0];

  return v7;
}

+ (id)predicateForMessagesInMailboxesWithTypes:(id)types
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__EMMessageListItemPredicates_predicateForMessagesInMailboxesWithTypes___block_invoke;
  v6[3] = &__block_descriptor_40_e18__16__0__NSNumber_8l;
  v6[4] = self;
  v3 = [types ef_map:v6];
  v4 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v3];

  return v4;
}

id __72__EMMessageListItemPredicates_predicateForMessagesInMailboxesWithTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _predicateForMessagesInMailboxWithType:a2];

  return v2;
}

+ (id)predicateForExcludingMessagesInMailboxWithType:(int64_t)type
{
  v4 = MEMORY[0x1E696AB28];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [self _predicateForMessagesInMailboxWithType:v5];
  v7 = [v4 notPredicateWithSubpredicate:v6];

  return v7;
}

+ (id)predicateForExcludingMessagesInMailboxesWithTypes:(id)types
{
  typesCopy = types;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"mailboxes.type"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:typesCopy];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:1 type:10 options:0];

  v8 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v7];

  return v8;
}

+ (id)predicateForMessagesInMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = mailboxCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    makePredicate = [v6 makePredicate];
  }

  else
  {
    objectID = [mailboxCopy objectID];
    makePredicate = [self predicateForMessagesInMailboxWithObjectID:objectID];
  }

  return makePredicate;
}

+ (id)predicateForMessagesInMailboxWithObjectID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageListItemPredicates.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"[mailboxObjectID isKindOfClass:[EMMailboxObjectID class]]"}];
  }

  v6 = [dCopy url];
  v7 = [self _predicateForMessagesInMailboxWithURL:v6];

  return v7;
}

+ (id)predicateForMessagesInMailboxes:(id)mailboxes
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__EMMessageListItemPredicates_predicateForMessagesInMailboxes___block_invoke;
  v6[3] = &__block_descriptor_40_e19__16__0__EMMailbox_8l;
  v6[4] = self;
  v3 = [mailboxes ef_map:v6];
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

+ (id)predicateForMessagesInMailboxesWithObjectIDs:(id)ds
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__EMMessageListItemPredicates_predicateForMessagesInMailboxesWithObjectIDs___block_invoke;
  v6[3] = &__block_descriptor_40_e33___NSPredicate_16__0__EMObjectID_8l;
  v6[4] = self;
  v3 = [ds ef_map:v6];
  v4 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v3];

  return v4;
}

id __76__EMMessageListItemPredicates_predicateForMessagesInMailboxesWithObjectIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) predicateForMessagesInMailboxWithObjectID:a2];

  return v2;
}

+ (id)predicateForExcludingMessagesInMailbox:(id)mailbox
{
  v3 = MEMORY[0x1E696AB28];
  v4 = [self predicateForMessagesInMailbox:mailbox];
  v5 = [v3 notPredicateWithSubpredicate:v4];

  return v5;
}

+ (id)predicateForExcludingMessagesInMailboxObjectID:(id)d
{
  v3 = MEMORY[0x1E696AB28];
  v4 = [self predicateForMessagesInMailboxWithObjectID:d];
  v5 = [v3 notPredicateWithSubpredicate:v4];

  return v5;
}

+ (id)predicateForExcludingMessagesInMailboxes:(id)mailboxes
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__EMMessageListItemPredicates_predicateForExcludingMessagesInMailboxes___block_invoke;
  v6[3] = &__block_descriptor_40_e19__16__0__EMMailbox_8l;
  v6[4] = self;
  v3 = [mailboxes ef_map:v6];
  v4 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];

  return v4;
}

id __72__EMMessageListItemPredicates_predicateForExcludingMessagesInMailboxes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) predicateForExcludingMessagesInMailbox:a2];

  return v2;
}

+ (id)predicateForExcludingMessagesInMailboxesWithObjectIDs:(id)ds
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__EMMessageListItemPredicates_predicateForExcludingMessagesInMailboxesWithObjectIDs___block_invoke;
  v6[3] = &__block_descriptor_40_e33___NSPredicate_16__0__EMObjectID_8l;
  v6[4] = self;
  v3 = [ds ef_map:v6];
  v4 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];

  return v4;
}

id __85__EMMessageListItemPredicates_predicateForExcludingMessagesInMailboxesWithObjectIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) predicateForExcludingMessagesInMailboxObjectID:a2];

  return v2;
}

+ (id)predicateForMessagesWithMailboxScope:(id)scope
{
  v29[2] = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  if (!scopeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageListItemPredicates.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"mailboxScope"}];
  }

  v6 = +[EMMailboxScope allMailboxesScope];
  v7 = [scopeCopy isEqual:v6];

  if (v7)
  {
    v8 = 1;
LABEL_7:
    v11 = [MEMORY[0x1E696AE18] predicateWithValue:v8];
    goto LABEL_26;
  }

  v9 = +[EMMailboxScope noMailboxesScope];
  v10 = [scopeCopy isEqual:v9];

  if (v10)
  {
    v8 = 0;
    goto LABEL_7;
  }

  mailboxObjectIDs = [scopeCopy mailboxObjectIDs];
  allObjects = [mailboxObjectIDs allObjects];

  mailboxTypes = [scopeCopy mailboxTypes];
  allObjects2 = [mailboxTypes allObjects];

  if (!(allObjects | allObjects2))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EMMessageListItemPredicates.m" lineNumber:171 description:@"Mailbox scope must have either mailbox object IDs or mailbox types"];

    v17 = 0;
    v18 = 0;
    goto LABEL_20;
  }

  if (!allObjects)
  {
    v17 = 0;
    v18 = 0;
    if (allObjects2)
    {
      goto LABEL_16;
    }

LABEL_20:
    excludeMailboxes = [scopeCopy excludeMailboxes];
    v20 = MEMORY[0x1E696AB28];
    if (excludeMailboxes)
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

  if ([scopeCopy excludeMailboxes])
  {
    [EMMessageListItemPredicates predicateForExcludingMessagesInMailboxesWithObjectIDs:allObjects];
  }

  else
  {
    [EMMessageListItemPredicates predicateForMessagesInMailboxesWithObjectIDs:allObjects];
  }
  v16 = ;
  v17 = v16;
  if (allObjects2)
  {
LABEL_16:
    if ([scopeCopy excludeTypes])
    {
      [EMMessageListItemPredicates predicateForExcludingMessagesInMailboxesWithTypes:allObjects2];
    }

    else
    {
      [EMMessageListItemPredicates predicateForMessagesInMailboxesWithTypes:allObjects2];
    }
    v18 = ;
    v11 = v18;
    if (!allObjects)
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

+ (id)predicateForMessagesWithThreadScope:(id)scope
{
  v19[2] = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  if (!scopeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageListItemPredicates.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"threadScope"}];
  }

  mailboxScope = [scopeCopy mailboxScope];
  filterPredicate = [scopeCopy filterPredicate];
  v8 = +[EMMailboxScope allMailboxesScope];

  if (mailboxScope == v8)
  {
    if (filterPredicate)
    {
      ef_matchEverythingPredicate = filterPredicate;
    }

    else
    {
      ef_matchEverythingPredicate = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
    }

    goto LABEL_11;
  }

  v9 = +[EMMailboxScope noMailboxesScope];

  if (mailboxScope == v9)
  {
    ef_matchEverythingPredicate = [MEMORY[0x1E696AE18] ef_matchNothingPredicate];
LABEL_11:
    v11 = ef_matchEverythingPredicate;
    goto LABEL_12;
  }

  v10 = [self predicateForMessagesWithMailboxScope:mailboxScope];
  v11 = v10;
  if (filterPredicate)
  {
    v12 = MEMORY[0x1E696AB28];
    v19[0] = v10;
    v19[1] = filterPredicate;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v14 = [v12 andPredicateWithSubpredicates:v13];

    v11 = v14;
  }

LABEL_12:

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)predicateForMessagesWithSender:(id)sender
{
  senderCopy = sender;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"senderList.emailAddressValue.simpleAddress"];
  v6 = MEMORY[0x1E696ABC8];
  emailAddressValue = [senderCopy emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v9 = [v6 expressionForConstantValue:simpleAddress];
  v10 = [v4 predicateWithLeftExpression:v5 rightExpression:v9 modifier:2 type:4 options:1];

  return v10;
}

+ (id)predicateForMessagesForBusinessID:(int64_t)d
{
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"businessID"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:4 options:1];

  return v9;
}

+ (id)predicateForMessagesForBusinessID:(int64_t)d forAccount:(id)account
{
  v13[2] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v6 = [EMMessageListItemPredicates predicateForAccount:accountCopy];
  v7 = [EMMessageListItemPredicates predicateForMessagesForBusinessID:d];
  v8 = MEMORY[0x1E696AB28];
  v13[0] = v6;
  v13[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)predicateForMessagesWithSender:(id)sender forAccount:(id)account
{
  v16[1] = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  accountCopy = account;
  v7 = [EMMessageListItemPredicates predicateForAccount:accountCopy];
  v16[0] = senderCopy;
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

+ (id)predicateForMessagesWithSenders:(id)senders
{
  v3 = [senders ef_map:&__block_literal_global_32];
  v4 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v3];

  return v4;
}

id __63__EMMessageListItemPredicates_predicateForMessagesWithSenders___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [EMMessageListItemPredicates predicateForMessagesWithSender:a2];

  return v2;
}

+ (id)predicateForMessagesWithoutSender:(id)sender
{
  senderCopy = sender;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"senderList.emailAddressValue.simpleAddress"];
  v6 = MEMORY[0x1E696ABC8];
  emailAddressValue = [senderCopy emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v9 = [v6 expressionForConstantValue:simpleAddress];
  v10 = [v4 predicateWithLeftExpression:v5 rightExpression:v9 modifier:2 type:5 options:1];

  return v10;
}

+ (id)predicateForMessagesWithoutSenders:(id)senders
{
  v3 = [senders ef_map:&__block_literal_global_99_0];
  v4 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];

  return v4;
}

id __66__EMMessageListItemPredicates_predicateForMessagesWithoutSenders___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [EMMessageListItemPredicates predicateForMessagesWithoutSender:a2];

  return v2;
}

+ (id)predicateForMessagesTo:(id)to
{
  toCopy = to;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"toList.emailAddressValue.simpleAddress"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = toCopy;
  emailAddressValue = [v7 emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v10 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [v7 stringValue];
  }

  v12 = stringValue;

  v13 = [v6 expressionForConstantValue:v12];
  v14 = [v4 predicateWithLeftExpression:v5 rightExpression:v13 modifier:2 type:4 options:1];

  return v14;
}

+ (id)predicateForMessagesWithToAddresses:(id)addresses
{
  v3 = [addresses ef_map:&__block_literal_global_102];
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

+ (id)predicateForMessagesCced:(id)cced
{
  ccedCopy = cced;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"ccList.emailAddressValue.simpleAddress"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = ccedCopy;
  emailAddressValue = [v7 emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v10 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [v7 stringValue];
  }

  v12 = stringValue;

  v13 = [v6 expressionForConstantValue:v12];
  v14 = [v4 predicateWithLeftExpression:v5 rightExpression:v13 modifier:2 type:4 options:1];

  return v14;
}

+ (id)predicateForMessagesWithCcAddresses:(id)addresses
{
  v3 = [addresses ef_map:&__block_literal_global_104];
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

+ (id)predicateForMessagesWithRecipient:(id)recipient
{
  v12[2] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  v5 = [self predicateForMessagesTo:recipientCopy];
  v6 = [self predicateForMessagesCced:recipientCopy];
  v7 = MEMORY[0x1E696AB28];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [v7 orPredicateWithSubpredicates:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)predicateForMessagesWithRecipients:(id)recipients
{
  v18[2] = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  v4 = [recipientsCopy ef_map:&__block_literal_global_106_0];
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

+ (id)predicateForFlagColor:(unint64_t)color
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:color];
  v5 = [self _predicateForKeyPath:@"flags.flagColor" value:v4];

  v6 = MEMORY[0x1E696AB28];
  predicateForFlaggedMessages = [self predicateForFlaggedMessages];
  v12[0] = predicateForFlaggedMessages;
  v12[1] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [v6 andPredicateWithSubpredicates:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_predicateForKeyPath:(id)path value:(id)value
{
  valueCopy = value;
  v6 = MEMORY[0x1E696AB18];
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:path];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:valueCopy];
  v9 = [v6 predicateWithLeftExpression:v7 rightExpression:v8 modifier:0 type:4 options:0];

  return v9;
}

+ (id)predicateForTodayMessages
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"displayDate"];
  v4 = MEMORY[0x1E696ABC8];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [currentCalendar startOfDayForDate:date];
  v8 = [v4 expressionForConstantValue:v7];
  v9 = [v2 predicateWithLeftExpression:v3 rightExpression:v8 modifier:0 type:2 options:0];

  return v9;
}

+ (id)predicateForMessagesWithCategoryType:(unint64_t)type
{
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"category.type"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
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
  predicateForUnfiredReadLaterMessages = [self predicateForUnfiredReadLaterMessages];
  v11[0] = predicateForUnfiredReadLaterMessages;
  v5 = [self predicateForMessagesInMailboxWithType:7];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];
  ef_simplifiedPredicate = [v7 ef_simplifiedPredicate];

  v9 = *MEMORY[0x1E69E9840];

  return ef_simplifiedPredicate;
}

+ (id)transformPredicateWithMailboxes:(id)mailboxes mailboxTypeResolver:(id)resolver shouldIncludeFollowUps:(BOOL)ups shouldIncludeReadLater:(BOOL)later limitToSender:(id)sender
{
  laterCopy = later;
  upsCopy = ups;
  mailboxesCopy = mailboxes;
  resolverCopy = resolver;
  senderCopy = sender;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (upsCopy)
  {
    v15 = [EMMessageListItemPredicates predicateForMessagesWithActiveFollowUpInAccountsOfMailboxes:mailboxesCopy mailboxTypeResolver:resolverCopy];
    [v14 ef_addOptionalObject:v15];
  }

  if (laterCopy)
  {
    v16 = [EMMessageListItemPredicates predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:mailboxesCopy];
    [v14 ef_addOptionalObject:v16];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __143__EMMessageListItemPredicates_transformPredicateWithMailboxes_mailboxTypeResolver_shouldIncludeFollowUps_shouldIncludeReadLater_limitToSender___block_invoke;
  v21[3] = &unk_1E826E3C8;
  v22 = v14;
  v23 = senderCopy;
  v17 = senderCopy;
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

+ (id)predicateForMessagesWithActiveFollowUpInAccountsOfMailboxes:(id)mailboxes mailboxTypeResolver:(id)resolver
{
  v28 = *MEMORY[0x1E69E9840];
  mailboxesCopy = mailboxes;
  resolverCopy = resolver;
  if ([mailboxesCopy ef_any:&__block_literal_global_128])
  {
    predicateForMessagesWithActiveFollowUpInSent = [self predicateForMessagesWithActiveFollowUpInSent];
  }

  else
  {
    v10 = [mailboxesCopy ef_compactMap:&__block_literal_global_131];
    if ([v10 count])
    {
      v11 = [resolverCopy mailboxObjectIDsForMailboxType:4];
      allObjects = [v11 allObjects];

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __111__EMMessageListItemPredicates_predicateForMessagesWithActiveFollowUpInAccountsOfMailboxes_mailboxTypeResolver___block_invoke_132;
      v23[3] = &unk_1E826E410;
      v24 = v10;
      v13 = [allObjects ef_filter:v23];
      if ([v13 count])
      {
        v14 = [EMMessageListItemPredicates predicateForMessagesInMailboxesWithObjectIDs:v13];
        v15 = MEMORY[0x1E696AB28];
        v25[0] = v14;
        predicateForMessagesWithActiveFollowUp = [self predicateForMessagesWithActiveFollowUp];
        v25[1] = predicateForMessagesWithActiveFollowUp;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
        v18 = [v15 andPredicateWithSubpredicates:v17];
        predicateForMessagesWithActiveFollowUpInSent = [v18 ef_simplifiedPredicate];
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

        predicateForMessagesWithActiveFollowUpInSent = 0;
      }
    }

    else
    {
      allObjects = +[EMMessageListItemPredicates log];
      if (os_log_type_enabled(allObjects, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromSelector(a2);
        *buf = 138543362;
        v27 = v19;
        _os_log_impl(&dword_1C6655000, allObjects, OS_LOG_TYPE_DEFAULT, "%{public}@ - empty accountIdentifiers", buf, 0xCu);
      }

      predicateForMessagesWithActiveFollowUpInSent = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return predicateForMessagesWithActiveFollowUpInSent;
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

+ (id)predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:(id)mailboxes
{
  v3 = [self predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:mailboxes additionalAccountObjectIDs:0];

  return v3;
}

+ (id)predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:(id)mailboxes additionalAccountObjectIDs:(id)ds
{
  mailboxesCopy = mailboxes;
  dsCopy = ds;
  if ([mailboxesCopy ef_any:&__block_literal_global_135])
  {
    predicateForFiredReadLaterMessages = [self predicateForFiredReadLaterMessages];
  }

  else
  {
    v9 = [mailboxesCopy ef_compactMap:&__block_literal_global_138];
    if ([dsCopy count])
    {
      v10 = [v9 arrayByAddingObjectsFromArray:dsCopy];

      v9 = v10;
    }

    v11 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    allObjects = [v11 allObjects];

    if ([allObjects count])
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __121__EMMessageListItemPredicates_predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes_additionalAccountObjectIDs___block_invoke_3;
      v18[3] = &__block_descriptor_40_e33___NSPredicate_16__0__EMObjectID_8l;
      v18[4] = self;
      v13 = [allObjects ef_compactMap:v18];
      v14 = [MEMORY[0x1E696AE18] ef_orCompoundPredicateWithSubpredicates:v13];
      v15 = MEMORY[0x1E696AE18];
      predicateForFiredReadLaterMessages2 = [self predicateForFiredReadLaterMessages];
      predicateForFiredReadLaterMessages = [v15 ef_andCompoundPredicateForOptionalPredicate:v14 second:predicateForFiredReadLaterMessages2];
    }

    else
    {
      predicateForFiredReadLaterMessages = 0;
    }
  }

  return predicateForFiredReadLaterMessages;
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
  v3 = [self predicateForMessagesInMailboxWithType:4];
  v4 = MEMORY[0x1E696AB28];
  predicateForMessagesWithActiveFollowUp = [self predicateForMessagesWithActiveFollowUp];
  v10[0] = predicateForMessagesWithActiveFollowUp;
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
  _predicateForFollowUpMessages = [self _predicateForFollowUpMessages];
  v9 = [self predicateForMessagesInMailboxWithType:{4, _predicateForFollowUpMessages, v6}];
  v14[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v11 = [v7 andPredicateWithSubpredicates:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_predicateForActiveFollowUpMessagesIncludeExpired:(BOOL)expired
{
  v22[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AB18];
  v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"displayDate"];
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"followUp.startDate"];
  v8 = [v5 predicateWithLeftExpression:v6 rightExpression:v7 modifier:0 type:2 options:0];

  v9 = [self predicateForMessagesInMailboxWithType:4];
  v10 = v9;
  if (expired)
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
  predicateForToMeMessages = [self predicateForToMeMessages];
  v10[0] = predicateForToMeMessages;
  predicateForCCMeMessages = [self predicateForCCMeMessages];
  v10[1] = predicateForCCMeMessages;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v3 orPredicateWithSubpredicates:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)predicateForRecentMessages
{
  ef_lastWeekMidnight = [MEMORY[0x1E695DF00] ef_lastWeekMidnight];
  v4 = [self predicateForMessagesNewerThanDisplayDate:ef_lastWeekMidnight];

  return v4;
}

+ (id)predicateForMessagesNewerThanDisplayDate:(id)date
{
  dateCopy = date;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"displayDate"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:dateCopy];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:2 options:0];

  return v7;
}

+ (id)predicateForMessagesNewerThanDate:(id)date
{
  dateCopy = date;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"date"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:dateCopy];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:2 options:0];

  return v7;
}

+ (id)predicateForExcludingMessagesInMailboxWithURL:(id)l
{
  v3 = MEMORY[0x1E696AB28];
  v4 = [self _predicateForMessagesInMailboxWithURL:l];
  v5 = [v3 notPredicateWithSubpredicate:v4];

  return v5;
}

+ (id)_predicateForMessagesInMailboxWithURL:(id)l
{
  lCopy = l;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"mailboxObjectIDs.url.absoluteString"];
  v6 = MEMORY[0x1E696ABC8];
  absoluteString = [lCopy absoluteString];
  v8 = [v6 expressionForConstantValue:absoluteString];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:2 type:4 options:0];

  return v9;
}

+ (id)predicateForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"mailboxes.accountIdentifier.representedObjectID"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:identifierCopy];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:2 type:4 options:0];

  return v7;
}

+ (id)predicateForAccount:(id)account
{
  objectID = [account objectID];
  v5 = [self predicateForAccountWithObjectID:objectID];

  return v5;
}

+ (id)predicateForAccountWithObjectID:(id)d
{
  dCopy = d;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"mailboxes.accountIdentifier.representedObjectID"];
  v6 = MEMORY[0x1E696ABC8];
  representedObjectID = [dCopy representedObjectID];
  v8 = [v6 expressionForConstantValue:representedObjectID];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:2 type:4 options:0];

  return v9;
}

+ (id)predicateForSendLaterMessagesWithStartDate:(id)date endDate:(id)endDate
{
  v4 = [self _dateRangePredicateForListItemKeyPath:@"sendLaterDate" startDate:date endDate:endDate];

  return v4;
}

+ (id)predicateForReadLaterMessagesWithStartDate:(id)date endDate:(id)endDate
{
  v4 = [self _dateRangePredicateForListItemKeyPath:@"readLater.date" startDate:date endDate:endDate];

  return v4;
}

+ (id)_dateRangePredicateForListItemKeyPath:(id)path startDate:(id)date endDate:(id)endDate
{
  v24[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dateCopy = date;
  endDateCopy = endDate;
  v10 = [MEMORY[0x1E695DF00] dateWithTimeInterval:dateCopy sinceDate:-1.0];

  v11 = MEMORY[0x1E696AB18];
  v12 = [MEMORY[0x1E696ABC8] expressionForKeyPath:pathCopy];
  v13 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v10];
  v14 = [v11 predicateWithLeftExpression:v12 rightExpression:v13 modifier:0 type:2 options:0];

  if (endDateCopy)
  {
    v15 = MEMORY[0x1E696AB18];
    v16 = [MEMORY[0x1E696ABC8] expressionForKeyPath:pathCopy];
    v17 = [MEMORY[0x1E696ABC8] expressionForConstantValue:endDateCopy];
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

+ (id)predicateFromPredicate:(id)predicate ignoringKeyPaths:(id)paths
{
  v4 = predicateFromPredicateIgnoringKeyPaths(predicate, paths);

  return v4;
}

+ (id)predicateFromPredicate:(id)predicate ignoringPredicates:(id)predicates
{
  predicateCopy = predicate;
  predicatesCopy = predicates;
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:predicatesCopy];
  v8 = predicateFromPredicateIgnoringPredicates(predicateCopy, v7);

  return v8;
}

+ (int64_t)dateSortOrderFromSortDescriptors:(id)descriptors
{
  v11[2] = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  if ([descriptorsCopy count])
  {
    firstObject = [descriptorsCopy firstObject];
    v11[0] = @"date";
    v11[1] = @"displayDate";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v6 = [firstObject key];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      if ([firstObject ascending])
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

+ (BOOL)isPredicateForMessagesInConversations:(id)conversations conversationIDs:(id *)ds
{
  v19[1] = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  leftExpression = [conversationsCopy leftExpression];
  if ([leftExpression expressionType] != 3)
  {
LABEL_9:

    goto LABEL_10;
  }

  leftExpression2 = [conversationsCopy leftExpression];
  keyPath = [leftExpression2 keyPath];
  if (([keyPath isEqualToString:@"conversationID"] & 1) == 0)
  {

    goto LABEL_9;
  }

  comparisonPredicateModifier = [conversationsCopy comparisonPredicateModifier];

  if (comparisonPredicateModifier)
  {
    goto LABEL_10;
  }

  predicateOperatorType = [conversationsCopy predicateOperatorType];
  if (predicateOperatorType == 4)
  {
    rightExpression = [conversationsCopy rightExpression];
    constantValue = [rightExpression constantValue];

    if (constantValue)
    {
      v19[0] = constantValue;
      constantValue2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    }

    else
    {
      constantValue2 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    if (predicateOperatorType != 10)
    {
      goto LABEL_10;
    }

    rightExpression2 = [conversationsCopy rightExpression];
    constantValue2 = [rightExpression2 constantValue];
  }

  if (constantValue2)
  {
    if (ds)
    {
      v18 = constantValue2;
      *ds = constantValue2;
    }

    v13 = 1;
    goto LABEL_12;
  }

LABEL_10:
  v13 = 0;
  if (ds)
  {
    *ds = 0;
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)isPredicateForMessagesInMailboxObjectID:(id)d mailboxObjectID:(id *)iD
{
  dCopy = d;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  leftExpression = [dCopy leftExpression];
  if ([leftExpression expressionType] != 3)
  {
LABEL_10:

    goto LABEL_11;
  }

  leftExpression2 = [dCopy leftExpression];
  keyPath = [leftExpression2 keyPath];
  if (![keyPath isEqualToString:@"mailboxObjectIDs.url.absoluteString"] || objc_msgSend(dCopy, "comparisonPredicateModifier") != 2)
  {

    goto LABEL_10;
  }

  predicateOperatorType = [dCopy predicateOperatorType];

  if (predicateOperatorType == 4)
  {
    rightExpression = [dCopy rightExpression];
    constantValue = [rightExpression constantValue];

    v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:constantValue];
    v13 = [[EMMailboxObjectID alloc] initWithURL:v12];
    if (iD)
    {
      v13 = v13;
      *iD = v13;
    }

    v14 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v14 = 0;
  if (iD)
  {
    *iD = 0;
  }

LABEL_13:

  return v14;
}

+ (BOOL)_isPredicateForMessagesInMailboxObjectIDs:(id)ds mailboxObjectIDs:(id *)iDs
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [dsCopy compoundPredicateType] == 2)
  {
    [dsCopy subpredicates];
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
          v13 = [self isPredicateForMessagesInMailboxObjectID:v12 mailboxObjectID:&v22];
          v14 = v22;
          v15 = v14;
          if (!v13)
          {
            if (iDs)
            {
              *iDs = 0;
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

    if (iDs)
    {
      v16 = v8;
      *iDs = v8;
    }

    LOBYTE(v17) = 1;
LABEL_25:
  }

  else
  {
    v21 = 0;
    v17 = [self isPredicateForMessagesInMailboxObjectID:dsCopy mailboxObjectID:&v21];
    v8 = v21;
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v8, 0}];
      if (iDs)
      {
        v18 = v18;
        *iDs = v18;
      }
    }

    else if (iDs)
    {
      *iDs = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)isPredicateForMessagesInMailboxWithType:(id)type mailboxType:(int64_t *)mailboxType
{
  typeCopy = type;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  leftExpression = [typeCopy leftExpression];
  if ([leftExpression expressionType] != 3)
  {
LABEL_10:

    goto LABEL_11;
  }

  leftExpression2 = [typeCopy leftExpression];
  keyPath = [leftExpression2 keyPath];
  if (![keyPath isEqualToString:@"mailboxes.type"] || objc_msgSend(typeCopy, "comparisonPredicateModifier") != 2)
  {

    goto LABEL_10;
  }

  predicateOperatorType = [typeCopy predicateOperatorType];

  if (predicateOperatorType == 4)
  {
    rightExpression = [typeCopy rightExpression];
    constantValue = [rightExpression constantValue];

    if (mailboxType)
    {
      *mailboxType = [constantValue integerValue];
    }

    v12 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v12 = 0;
  if (mailboxType)
  {
    *mailboxType = -500;
  }

LABEL_13:

  return v12;
}

+ (BOOL)isPredicateForMessagesWithActiveFollowUp:(id)up mailboxTypeResolver:(id)resolver inSent:(BOOL *)sent sentMailboxObjectIDs:(id *)ds
{
  v36 = *MEMORY[0x1E69E9840];
  upCopy = up;
  resolverCopy = resolver;
  if ([self _isPredicateForMessagesWithActiveFollowUp:upCopy])
  {
    if (sent)
    {
      *sent = 0;
    }

    if (ds)
    {
      *ds = 0;
    }

    v12 = 1;
    goto LABEL_52;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [upCopy compoundPredicateType] == 1)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = resolverCopy;
    subpredicates = [upCopy subpredicates];
    obj = subpredicates;
    v14 = [subpredicates countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          if ([self _isPredicateForMessagesWithActiveFollowUp:v18])
          {
            v25 = 1;
          }

          else if ([self isPredicateForMessagesInMailboxWithType:v18 mailboxType:&v30])
          {
            if (v30 != 4)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v15 || (v29 = 0, v19 = [self _isPredicateForMessagesInMailboxObjectIDs:v18 mailboxObjectIDs:&v29], v15 = v29, !v19))
            {
LABEL_35:
              if (sent)
              {
                *sent = 0;
              }

              v21 = obj;
              if (ds)
              {
                *ds = 0;
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
              if (sent)
              {
                *sent = 0;
              }

              if (ds)
              {
                *ds = 0;
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
        if (sent)
        {
          *sent = 1;
        }

        if (ds)
        {
          v20 = v15;
          *ds = v15;
        }

        v12 = 1;
LABEL_51:

        resolverCopy = v24;
        goto LABEL_52;
      }
    }

    else
    {

      v15 = 0;
    }

    if (sent)
    {
      *sent = 0;
    }

    if (ds)
    {
      v12 = 0;
      *ds = 0;
    }

    else
    {
LABEL_50:
      v12 = 0;
    }

    goto LABEL_51;
  }

  if (sent)
  {
    *sent = 0;
  }

  v12 = 0;
  if (ds)
  {
    *ds = 0;
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

+ (BOOL)_isPredicateForMessagesWithActiveFollowUp:(id)up
{
  upCopy = up;
  predicateForMessagesWithActiveFollowUp = [self predicateForMessagesWithActiveFollowUp];
  v6 = [upCopy isEqual:predicateForMessagesWithActiveFollowUp];

  return v6;
}

+ (BOOL)isPredicateForMessagesWithFiredReadLaterDate:(id)date accountObjectIDs:(id *)ds
{
  v30 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v5 = +[EMMessageListItemPredicates predicateForFiredReadLaterMessages];
  v6 = [dateCopy isEqual:v5];

  if (v6)
  {
    if (ds)
    {
      *ds = 0;
    }

    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      subpredicates = [dateCopy subpredicates];
    }

    else
    {
      subpredicates = 0;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = subpredicates;
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
          predicateForFiredReadLaterMessages = [self predicateForFiredReadLaterMessages];
          v17 = [v15 isEqual:predicateForFiredReadLaterMessages];

          if (v17)
          {
            v11 = 1;
          }

          else if (v12 || (v24 = 0, v18 = [self _isPredicateForMessagesInAccountObjectIDs:v15 accountObjectIDs:&v24], v12 = v24, (v18 & 1) == 0))
          {
            if (ds)
            {
              *ds = 0;
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
        if (ds)
        {
          v19 = v12;
          *ds = v12;
        }

        v7 = 1;
        goto LABEL_30;
      }
    }

    else
    {

      v12 = 0;
    }

    if (ds)
    {
      v7 = 0;
      *ds = 0;
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

+ (BOOL)isPredicateForMessagesInAccountObjectID:(id)d accountObjectID:(id *)iD
{
  dCopy = d;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  leftExpression = [dCopy leftExpression];
  if ([leftExpression expressionType] != 3)
  {
LABEL_10:

    goto LABEL_11;
  }

  leftExpression2 = [dCopy leftExpression];
  keyPath = [leftExpression2 keyPath];
  if (![keyPath isEqualToString:@"mailboxes.accountIdentifier.representedObjectID"] || objc_msgSend(dCopy, "comparisonPredicateModifier") != 2)
  {

    goto LABEL_10;
  }

  predicateOperatorType = [dCopy predicateOperatorType];

  if (predicateOperatorType == 4)
  {
    rightExpression = [dCopy rightExpression];
    constantValue = [rightExpression constantValue];

    v12 = [[EMObjectID alloc] initWithRepresentedObjectID:constantValue];
    if (iD)
    {
      v12 = v12;
      *iD = v12;
    }

    v13 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v13 = 0;
  if (iD)
  {
    *iD = 0;
  }

LABEL_13:

  return v13;
}

+ (BOOL)_isPredicateForMessagesInAccountObjectIDs:(id)ds accountObjectIDs:(id *)iDs
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [dsCopy compoundPredicateType] == 2)
  {
    [dsCopy subpredicates];
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
          v13 = [self isPredicateForMessagesInAccountObjectID:v12 accountObjectID:&v22];
          v14 = v22;
          v15 = v14;
          if (!v13)
          {
            if (iDs)
            {
              *iDs = 0;
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

    if (iDs)
    {
      v16 = v8;
      *iDs = v8;
    }

    LOBYTE(v17) = 1;
LABEL_25:
  }

  else
  {
    v21 = 0;
    v17 = [self isPredicateForMessagesInAccountObjectID:dsCopy accountObjectID:&v21];
    v8 = v21;
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v8, 0}];
      if (iDs)
      {
        v18 = v18;
        *iDs = v18;
      }
    }

    else if (iDs)
    {
      *iDs = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)mailboxScopeForPredicate:(id)predicate withMailboxTypeResolver:(id)resolver
{
  v4 = mailboxScopeForPredicate(predicate, resolver);

  return v4;
}

+ (id)threadScopeForPredicate:(id)predicate withMailboxTypeResolver:(id)resolver
{
  v34 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  resolverCopy = resolver;
  ef_simplifiedPredicate = [predicateCopy ef_simplifiedPredicate];

  v8 = ef_simplifiedPredicate;
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
    v21 = mailboxScopeForThreadWithPredicate(v8, resolverCopy);
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
  subpredicates = [v9 subpredicates];
  v11 = [subpredicates countByEnumeratingWithState:&v29 objects:v33 count:16];
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
        objc_enumerationMutation(subpredicates);
      }

      v15 = *(*(&v29 + 1) + 8 * i);
      v16 = mailboxScopeForThreadWithPredicate(v15, resolverCopy);
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
        if (hasMailboxPredicates(v15, resolverCopy))
        {
          v17 = v12;
          goto LABEL_40;
        }

        [v28 addObject:v15];
      }
    }

    v11 = [subpredicates countByEnumeratingWithState:&v29 objects:v33 count:16];
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

    subpredicates = v9;
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

+ (id)mailboxURLsForPredicate:(id)predicate
{
  v24 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = predicateCopy;
    leftExpression = [v11 leftExpression];
    if ([leftExpression expressionType] == 3)
    {
      leftExpression2 = [v11 leftExpression];
      keyPath = [leftExpression2 keyPath];
      v15 = [keyPath isEqualToString:@"mailboxObjectIDs.url.absoluteString"];

      if (!v15)
      {
LABEL_14:

        goto LABEL_15;
      }

      leftExpression = [v11 rightExpression];
      constantValue = [leftExpression constantValue];
      [v5 addObject:constantValue];
    }

    goto LABEL_14;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  subpredicates = [predicateCopy subpredicates];
  v7 = [subpredicates countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(subpredicates);
        }

        v10 = [self mailboxURLsForPredicate:*(*(&v19 + 1) + 8 * i)];
        [v5 addObjectsFromArray:v10];
      }

      v7 = [subpredicates countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)predicateStrippingSpotlightOnlyTerms:(id)terms
{
  v3 = [self _predicateStrippingSpotlightOnlyTerms:terms];
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

+ (id)_predicateStrippingSpotlightOnlyTerms:(id)terms
{
  v31 = *MEMORY[0x1E69E9840];
  termsCopy = terms;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = termsCopy;
  v7 = v6;
  if (isKindOfClass)
  {
    subpredicates = [v6 subpredicates];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __69__EMMessageListItemPredicates__predicateStrippingSpotlightOnlyTerms___block_invoke;
    v24[3] = &__block_descriptor_40_e34___NSPredicate_16__0__NSPredicate_8l;
    v24[4] = self;
    v9 = [subpredicates ef_compactMap:v24];

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
    leftExpression = [v7 leftExpression];
    if ([leftExpression expressionType] == 3)
    {
      leftExpression2 = [v7 leftExpression];
      keyPath = [leftExpression2 keyPath];
      if ([keyPath isEqualToString:@"body"])
      {
LABEL_9:

LABEL_10:
        v10 = 0;
        goto LABEL_18;
      }

      leftExpression3 = [v7 leftExpression];
      keyPath2 = [leftExpression3 keyPath];
      if ([keyPath2 isEqualToString:@"Spotlight"])
      {

        goto LABEL_9;
      }

      leftExpression4 = [v7 leftExpression];
      keyPath3 = [leftExpression4 keyPath];
      v21 = [keyPath3 isEqualToString:@"SpotlightQuery"];

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
      ef_publicDescription = [v7 ef_publicDescription];
      *buf = 138412802;
      v26 = v22;
      v27 = 2048;
      selfCopy = self;
      v29 = 2114;
      v30 = ef_publicDescription;
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

+ (BOOL)predicate:(id)predicate appliesToFlagChange:(id)change
{
  predicateCopy = predicate;
  v7 = [self _keyPathsForFlagChange:change];
  v8 = [self predicateFromPredicate:predicateCopy ignoringKeyPaths:v7];

  LOBYTE(v7) = [v8 isEqual:predicateCopy];
  return v7 ^ 1;
}

+ (id)_keyPathsForFlagChange:(id)change
{
  changeCopy = change;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([changeCopy readChanged])
  {
    [v4 addObject:@"flags.read"];
  }

  if ([changeCopy flaggedChanged])
  {
    [v4 addObject:@"flags.flagged"];
  }

  return v4;
}

+ (BOOL)isValidPredicate:(id)predicate forClass:(Class)class
{
  predicateCopy = predicate;
  if ([objc_opt_class() isEqual:class])
  {
    v8 = [EMThread alloc];
    v9 = objc_alloc_init(EMThreadObjectID);
    v10 = [(EMQueryingCollection *)v8 initWithObjectID:v9 query:0];
  }

  else if ([objc_opt_class() isEqual:class])
  {
    v11 = [EMMessage alloc];
    v9 = objc_alloc_init(EMMessageObjectID);
    v10 = [(EMMessage *)v11 initWithObjectID:v9 builder:&__block_literal_global_179];
  }

  else
  {
    if (![objc_opt_class() isEqual:class])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EMMessageListItemPredicates.m" lineNumber:1819 description:{@"Unknown targetClass:%@", class}];

      v13 = 0;
      v14 = 0;
      goto LABEL_8;
    }

    v12 = [EMGroupedSender alloc];
    v9 = objc_alloc_init(EMGroupedSenderObjectID);
    v10 = [(EMGroupedSender *)v12 initWithObjectID:v9 builder:&__block_literal_global_184];
  }

  v13 = v10;

  [predicateCopy evaluateWithObject:v13];
  v14 = 1;
LABEL_8:

  return v14;
}

@end