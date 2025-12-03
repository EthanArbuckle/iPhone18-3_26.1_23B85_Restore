@interface MFMessageCriterion
+ (id)_criterionForDateReceivedBetween:(id)between endDate:(id)date;
+ (id)_criterionForDateReceivedBetweenDateComponents:(id)components endDateComponents:(id)dateComponents;
+ (id)_todayDateComponents;
+ (id)andCompoundCriterionWithCriteria:(id)criteria;
+ (id)ccMeCriterion;
+ (id)criteriaFromDefaultsArray:(id)array;
+ (id)criterionExcludingMailboxes:(id)mailboxes;
+ (id)criterionForAccount:(id)account;
+ (id)criterionForCategorizationHasUserOverride;
+ (id)criterionForCategoryType:(unint64_t)type;
+ (id)criterionForConversationID:(int64_t)d;
+ (id)criterionForDateReceivedNewerThanDate:(id)date;
+ (id)criterionForDateReceivedOlderThanDate:(id)date;
+ (id)criterionForDocumentID:(id)d;
+ (id)criterionForFlagColor:(unint64_t)color;
+ (id)criterionForLibraryID:(id)d;
+ (id)criterionForMailbox:(id)mailbox;
+ (id)criterionForMailboxURL:(id)l;
+ (id)criterionForNotDeletedConversationID:(int64_t)d;
+ (id)defaultsArrayFromCriteria:(id)criteria;
+ (id)defaultsDictionaryFromCriterion:(id)criterion;
+ (id)expressionForDate:(id)date;
+ (id)flaggedMessageCriterion;
+ (id)followUpMessageCriterion;
+ (id)hasAttachmentsCriterion;
+ (id)includesMeCriterion;
+ (id)lastWeekMessageCriterion;
+ (id)matchEverythingCriterion;
+ (id)matchNothingCriterion;
+ (id)messageCriterionForUnsubscribeTypeNotMatching:(int64_t)matching;
+ (id)messageIsDeletedCriterion:(BOOL)criterion;
+ (id)messageIsJournaledCriterion:(BOOL)criterion;
+ (id)messageIsServerSearchResultCriterion:(BOOL)criterion;
+ (id)notCriterionWithCriterion:(id)criterion;
+ (id)orCompoundCriterionWithCriteria:(id)criteria;
+ (id)readLaterMessageCriterion;
+ (id)readMessageCriterion;
+ (id)sendLaterMessageCriterion;
+ (id)senderIsVIPCriterion:(BOOL)criterion;
+ (id)stringForCriterionType:(int64_t)type;
+ (id)threadMuteMessageCriterion;
+ (id)threadNotifyMessageCriterion;
+ (id)toMeCriterion;
+ (id)todayMessageCriterion;
+ (id)unreadMessageCriterion;
+ (id)yesterdayMessageCriterion;
+ (int64_t)criterionTypeForString:(id)string;
- (BOOL)_containsNotCriterion;
- (BOOL)_evaluateAccountCriterion:(id)criterion;
- (BOOL)_evaluateAttachmentCriterion:(id)criterion;
- (BOOL)_evaluateCompoundCriterion:(id)criterion;
- (BOOL)_evaluateConversationIDCriterion:(id)criterion;
- (BOOL)_evaluateDateCriterion:(id)criterion;
- (BOOL)_evaluateFlagColorCriterion:(id)criterion;
- (BOOL)_evaluateFlagCriterion:(id)criterion;
- (BOOL)_evaluateFullNameCriterion:(id)criterion;
- (BOOL)_evaluateHeaderCriterion:(id)criterion;
- (BOOL)_evaluateIsDigitallySignedCriterion:(id)criterion;
- (BOOL)_evaluateIsEncryptedCriterion:(id)criterion;
- (BOOL)_evaluateMailboxCriterion:(id)criterion;
- (BOOL)_evaluateNotCriterion:(id)criterion;
- (BOOL)_evaluatePartOfStructure:(id)structure;
- (BOOL)_evaluateReadLaterCriterion:(id)criterion;
- (BOOL)_evaluateSenderBucketCriterion:(id)criterion;
- (BOOL)_evaluateSenderHeaderCriterion:(id)criterion;
- (BOOL)doesMessageSatisfyCriterion:(id)criterion;
- (BOOL)isEqual:(id)equal;
- (BOOL)requiresBody;
- (MFMessageCriterion)criterionForSQL;
- (MFMessageCriterion)init;
- (MFMessageCriterion)initWithCriterion:(id)criterion expression:(id)expression;
- (MFMessageCriterion)initWithType:(int64_t)type qualifier:(int64_t)qualifier expression:(id)expression;
- (NSString)criterionIdentifier;
- (NSString)description;
- (NSString)ef_publicDescription;
- (NSString)expression;
- (id)SQLExpressionWithTables:(unsigned int *)tables baseTable:(unsigned int)table protectedDataAvailable:(BOOL)available searchableIndexManager:(id)manager mailboxIDs:(id)ds propertyMapper:(id)mapper;
- (id)_SQLExpressionForMailboxCriterion;
- (id)_attributesForHeaderCriterion;
- (id)_collapsedMessageNumberCriterion:(id)criterion allMustBeSatisfied:(BOOL)satisfied collapsedIndexes:(id *)indexes;
- (id)_comparisonOperationMatchingValue:(id)value qualifier:(int64_t)qualifier;
- (id)_criterionForSQL;
- (id)_evaluateFTSCriterionWithIndexManager:(id)manager mailboxIDs:(id)ds;
- (id)_headersRequiredForEvaluation;
- (id)_queryWithAttributes:(id)attributes matchingValue:(id)value;
- (id)_queryWithAttributes:(id)attributes matchingValue:(id)value qualifier:(int64_t)qualifier;
- (id)_resolveWithIndexManager:(id)manager mailboxIDs:(id)ds;
- (id)_spotlightQuerySearchString:(id *)string hasSuggestion:(BOOL)suggestion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)criteriaForSpotlightCriteria:(id)criteria;
- (id)criteriaSatisfyingPredicate:(void *)predicate;
- (id)criterionByApplyingTransform:(id)transform;
- (id)daSearchPredicate;
- (id)dateFromExpression;
- (id)dictionaryRepresentation;
- (id)extractedDateCriterion;
- (id)extractedUnreadCriterion;
- (id)fixOnce;
- (id)simplifiedCriterion;
- (id)simplifyOnce;
- (id)spotlightQueryExpressionWithBundleID:(id)d;
- (id)stringForMessageRuleQualifier:(int64_t)qualifier;
- (id)unreadCountCriterion;
- (int64_t)criterionType;
- (int64_t)messageRuleQualifierForString:(id)string;
- (unint64_t)hash;
- (unsigned)bestBaseTable;
- (void)_addCriteriaSatisfyingPredicate:(void *)predicate toCollector:(id)collector;
- (void)setCriteria:(id)criteria;
- (void)setCriterionIdentifier:(id)identifier;
- (void)setCriterionType:(int64_t)type;
- (void)setDateIsRelative:(BOOL)relative;
- (void)setExpression:(id)expression;
- (void)setIncludeRelatedMessages:(BOOL)messages;
- (void)tokenizeUsingTokenizationHandler:(id)handler;
@end

@implementation MFMessageCriterion

- (MFMessageCriterion)init
{
  v7.receiver = self;
  v7.super_class = MFMessageCriterion;
  v2 = [(MFMessageCriterion *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uniqueId = v2->_uniqueId;
    v2->_uniqueId = uUIDString;

    v2->_type = -1;
  }

  return v2;
}

+ (id)unreadMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:27 qualifier:7 expression:@"MessageIsRead"];
  [(MFMessageCriterion *)v2 setName:@"UnreadCriterion"];

  return v2;
}

+ (id)threadNotifyMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:27 qualifier:3 expression:@"MessageConversationIsVIP"];
  [(MFMessageCriterion *)v2 setName:@"ThreadNotifyCriterionName"];

  return v2;
}

+ (id)sendLaterMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:49 qualifier:7 expression:0];
  [(MFMessageCriterion *)v2 setName:@"SendLaterCriterion"];

  return v2;
}

+ (id)includesMeCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:27 qualifier:3 expression:@"MessageToOrCcContainsAccountAddress"];
  [(MFMessageCriterion *)v2 setName:@"IncludesMeCriterion"];

  return v2;
}

+ (id)threadMuteMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:27 qualifier:3 expression:@"MessageConversationIsMuted"];
  [(MFMessageCriterion *)v2 setName:@"ThreadMuteCriterionName"];

  return v2;
}

- (int64_t)criterionType
{
  result = self->_type;
  if (result == -1)
  {
    result = [objc_opt_class() criterionTypeForString:self->_criterionIdentifier];
    self->_type = result;
  }

  return result;
}

- (NSString)expression
{
  expression = self->_expression;
  if (!expression)
  {
    commaSeparatedString = [(EFInt64Set *)self->_libraryIdentifiers commaSeparatedString];
    v5 = self->_expression;
    self->_expression = commaSeparatedString;

    expression = self->_expression;
  }

  return expression;
}

+ (id)flaggedMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:27 qualifier:3 expression:@"MessageIsFlagged"];
  [(MFMessageCriterion *)v2 setUseFlaggedForUnreadCount:1];
  [(MFMessageCriterion *)v2 setName:@"FlaggedCriterion"];

  return v2;
}

+ (id)hasAttachmentsCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:27 qualifier:3 expression:@"MFMessageHasAttachments"];
  [(MFMessageCriterion *)v2 setName:@"HasAttachmentsCriterion"];

  return v2;
}

+ (id)todayMessageCriterion
{
  v2 = [MFMessageCriterion alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 1];
  v4 = [(MFMessageCriterion *)v2 initWithType:11 qualifier:5 expression:v3];

  [(MFMessageCriterion *)v4 setDateUnits:1];
  [(MFMessageCriterion *)v4 setDateIsRelative:1];
  [(MFMessageCriterion *)v4 setName:@"TodayCriterion"];

  return v4;
}

+ (id)followUpMessageCriterion
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [MFMessageCriterion alloc];
  v5 = [self expressionForDate:v3];
  v6 = [(MFMessageCriterion *)v4 initWithType:47 qualifier:5 expression:v5];

  v7 = [MFMessageCriterion alloc];
  v8 = [self expressionForDate:v3];
  v9 = [(MFMessageCriterion *)v7 initWithType:48 qualifier:6 expression:v8];

  v14[0] = v6;
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v11 = [MFMessageCriterion andCompoundCriterionWithCriteria:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (MFMessageCriterion)criterionForSQL
{
  _criterionForSQL = [(MFMessageCriterion *)self _criterionForSQL];
  suggestion = [(MFMessageCriterion *)self suggestion];
  [_criterionForSQL setSuggestion:suggestion];

  return _criterionForSQL;
}

- (id)_criterionForSQL
{
  selfCopy = self;
  v3 = 0;
  if (selfCopy)
  {
    v4 = 0;
    while (1)
    {
      simplifiedCriterion = [(MFMessageCriterion *)selfCopy simplifiedCriterion];

      fixOnce = [simplifiedCriterion fixOnce];

      if (fixOnce == selfCopy)
      {
        v3 = fixOnce;
        goto LABEL_10;
      }

      v3 = fixOnce;

      if (!v3)
      {
        break;
      }

      selfCopy = v3;
      if (v4++ >= 9)
      {
        goto LABEL_10;
      }
    }

    selfCopy = 0;
  }

LABEL_10:

  return v3;
}

- (id)simplifiedCriterion
{
  selfCopy = self;
  v3 = 0;
  for (i = 0; ; selfCopy = i)
  {
    simplifyOnce = [(MFMessageCriterion *)selfCopy simplifyOnce];

    if (simplifyOnce == selfCopy || v3 > 9)
    {
      break;
    }

    i = simplifyOnce;

    ++v3;
  }

  return simplifyOnce;
}

- (id)simplifyOnce
{
  if ([(MFMessageCriterion *)self criterionType]== 25)
  {
    criteria = [(MFMessageCriterion *)self criteria];
    v3 = [criteria count];
    v4 = v3;
    if (v3)
    {
      if (v3 == 1)
      {
        lastObject = [criteria lastObject];
        simplifiedCriterion = [lastObject simplifiedCriterion];

        selfCopy = simplifiedCriterion;
        if (simplifiedCriterion)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      selfCopy = 0;
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = [criteria objectAtIndex:v9];
        simplifiedCriterion2 = [v10 simplifiedCriterion];
        if ([simplifiedCriterion2 criterionType] == 25 && ((v12 = -[MFMessageCriterion allCriteriaMustBeSatisfied](self, "allCriteriaMustBeSatisfied"), v12 == objc_msgSend(simplifiedCriterion2, "allCriteriaMustBeSatisfied")) || (objc_msgSend(simplifiedCriterion2, "criteria"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, !v14)))
        {
          if (!selfCopy)
          {
            v18 = objc_alloc_init(MFMessageCriterion);
            [(MFMessageCriterion *)v18 setCriterionType:25];
            [(MFMessageCriterion *)v18 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
            array = [MEMORY[0x1E695DF70] array];

            v20 = [criteria subarrayWithRange:{0, v9}];
            [array addObjectsFromArray:v20];

            v8 = array;
            selfCopy = v18;
          }

          criteria2 = [simplifiedCriterion2 criteria];
          [v8 addObjectsFromArray:criteria2];
        }

        else
        {
          if (simplifiedCriterion2 == v10 || selfCopy)
          {
            array2 = v8;
            v15 = selfCopy;
          }

          else
          {
            v15 = objc_alloc_init(MFMessageCriterion);
            [(MFMessageCriterion *)v15 setCriterionType:25];
            [(MFMessageCriterion *)v15 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
            array2 = [MEMORY[0x1E695DF70] array];

            v17 = [criteria subarrayWithRange:{0, v9}];
            [array2 addObjectsFromArray:v17];
          }

          v8 = array2;
          selfCopy = v15;
          [array2 addObject:simplifiedCriterion2];
        }

        ++v9;
      }

      while (v4 != v9);
      if (selfCopy)
      {
        [(MFMessageCriterion *)selfCopy setCriteria:v8];

        goto LABEL_24;
      }
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_23:
  selfCopy = self;
LABEL_24:

  return selfCopy;
}

- (id)fixOnce
{
  selfCopy = self;
  if ([(MFMessageCriterion *)self criterionType]== 25)
  {
    v15 = selfCopy;
    criteria = [(MFMessageCriterion *)v15 criteria];
    v4 = [criteria count];
    if (v4)
    {
      v14 = selfCopy;
      v5 = 0;
      v6 = 0;
      for (i = 0; i != v4; ++i)
      {
        v8 = [criteria objectAtIndex:{i, v14}];
        _criterionForSQL = [v8 _criterionForSQL];
        if (_criterionForSQL != v8 && !v5)
        {
          v10 = objc_alloc_init(MFMessageCriterion);
          [(MFMessageCriterion *)v10 setCriterionType:25];
          [(MFMessageCriterion *)v10 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)v15 allCriteriaMustBeSatisfied]];
          array = [MEMORY[0x1E695DF70] array];

          v12 = [criteria subarrayWithRange:{0, i}];
          [array addObjectsFromArray:v12];

          v6 = array;
          v5 = v10;
        }

        [v6 addObject:_criterionForSQL];
      }

      selfCopy = v14;
      if (v5)
      {
        [(MFMessageCriterion *)v5 setCriteria:v6];

        goto LABEL_13;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v5 = selfCopy;
LABEL_13:

  return v5;
}

- (unsigned)bestBaseTable
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (-[MFMessageCriterion criterionType](self, "criterionType") == 25 && (-[MFMessageCriterion allCriteriaMustBeSatisfied](self, "allCriteriaMustBeSatisfied") || (-[MFMessageCriterion criteria](self, "criteria"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4 == 1)))
  {
    criteria = [(MFMessageCriterion *)self criteria];
  }

  else
  {
    v22[0] = self;
    criteria = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  }

  v6 = criteria;
  v7 = 0;
  v8 = [criteria count];
  if (v8)
  {
    while (1)
    {
      v9 = [v6 objectAtIndex:--v8];
      qualifier = [(MFMessageCriterion *)v9 qualifier];
      criterionType = [(MFMessageCriterion *)v9 criterionType];
      expression = [(MFMessageCriterion *)v9 expression];
      if (criterionType > 0x33)
      {
        goto LABEL_14;
      }

      if (criterionType != 27)
      {
        break;
      }

      if ([@"MFMessageHasAttachments" isEqual:expression] & 1) != 0 || (objc_msgSend(@"MessageIsRead", "isEqual:", expression) & 1) != 0 || (objc_msgSend(@"MessageIsFlagged", "isEqual:", expression))
      {
LABEL_36:

        v7 = 32;
        goto LABEL_37;
      }

LABEL_34:

      if (!v8)
      {
        goto LABEL_37;
      }
    }

    if (((1 << criterionType) & 0x9881401001800) != 0)
    {
      goto LABEL_36;
    }

LABEL_14:
    if (criterionType != 23 || qualifier != 3)
    {
      if (criterionType == 25)
      {
        if (v9 == self)
        {
          criteria2 = [(MFMessageCriterion *)self criteria];
          v15 = [criteria2 count];
          if (v15)
          {
            v16 = v15 - 1;
            do
            {
              v17 = [criteria2 objectAtIndex:v16];
              bestBaseTable = [v17 bestBaseTable];

              v19 = v16-- != 0;
            }

            while (v19 && bestBaseTable > 0x1F);
            if (bestBaseTable > 0x1F)
            {
              v7 = 32;
            }
          }

          else
          {
            v7 = 32;
          }
        }

        else
        {
          bestBaseTable2 = [(MFMessageCriterion *)v9 bestBaseTable];
          if (bestBaseTable2 > v7)
          {
            v7 = bestBaseTable2;
          }
        }
      }

      else if (criterionType == 5 && v7 <= 8)
      {
        v7 = 8;
      }
    }

    goto LABEL_34;
  }

LABEL_37:

  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_SQLExpressionForMailboxCriterion
{
  expression = [(MFMessageCriterion *)self expression];
  qualifier = [(MFMessageCriterion *)self qualifier];
  v6 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"url"];
  v7 = v6;
  if (qualifier <= 2)
  {
    if (qualifier)
    {
      if (qualifier == 1)
      {
        v8 = [v6 beginsWith:expression caseSensitive:0];
        goto LABEL_21;
      }

      if (qualifier == 2)
      {
        v8 = [v6 endsWith:expression caseSensitive:0];
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (qualifier <= 6)
  {
    if (qualifier != 3)
    {
      if (qualifier == 4)
      {
        v8 = [v6 doesNotContain:expression caseSensitive:0];
LABEL_21:
        v9 = v8;
        v15 = MEMORY[0x1E696AEC0];
        ef_SQLExpression = [v8 ef_SQLExpression];
        v14 = [v15 stringWithFormat:@"mailbox IN (SELECT ROWID FROM mailboxes WHERE %@)", ef_SQLExpression];
        goto LABEL_22;
      }

      goto LABEL_14;
    }

LABEL_13:
    v9 = [v6 equalTo:expression];
    goto LABEL_15;
  }

  if (qualifier == 7)
  {
    goto LABEL_13;
  }

  if (qualifier == 8)
  {
LABEL_12:
    v8 = [v6 contains:expression caseSensitive:0];
    goto LABEL_21;
  }

LABEL_14:
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CriterionAdditions.m" lineNumber:985 description:@"Qualifier not supported"];

  v9 = 0;
LABEL_15:
  if (qualifier <= 6)
  {
    if (qualifier != 3)
    {
      goto LABEL_25;
    }

LABEL_19:
    ef_SQLExpression = expressionForOperator(qualifier);
    v12 = MEMORY[0x1E696AEC0];
    ef_SQLExpression2 = [v9 ef_SQLExpression];
    v14 = [v12 stringWithFormat:@"mailbox %@ IFNULL((SELECT ROWID FROM mailboxes WHERE %@), -1)", ef_SQLExpression, ef_SQLExpression2];

    goto LABEL_22;
  }

  if (qualifier == 7)
  {
    goto LABEL_19;
  }

LABEL_25:
  ef_SQLExpression = [MEMORY[0x1E696AAA8] currentHandler];
  [ef_SQLExpression handleFailureInMethod:a2 object:self file:@"CriterionAdditions.m" lineNumber:1008 description:@"Qualifier not supported"];
  v14 = 0;
LABEL_22:

  return v14;
}

- (BOOL)_containsNotCriterion
{
  criterionType = [(MFMessageCriterion *)self criterionType];
  if (criterionType == 26)
  {
    return 1;
  }

  if (criterionType != 25)
  {
    return 0;
  }

  criteria = [(MFMessageCriterion *)self criteria];
  v5 = [criteria ef_any:&__block_literal_global_2];

  return v5;
}

- (id)_evaluateFTSCriterionWithIndexManager:(id)manager mailboxIDs:(id)ds
{
  v35 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  dsCopy = ds;
  criterionType = [(MFMessageCriterion *)self criterionType];
  if (criterionType == 25)
  {
    if ([(MFMessageCriterion *)self _containsNotCriterion])
    {
      criteria = [(MFMessageCriterion *)self criteria];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __89__MFMessageCriterion_LibraryAdditions___evaluateFTSCriterionWithIndexManager_mailboxIDs___block_invoke;
      v31[3] = &unk_1E7AA2410;
      v32 = managerCopy;
      v33 = dsCopy;
      v14 = [criteria ef_map:v31];

      v12 = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)v12 setCriterionType:25];
      [(MFMessageCriterion *)v12 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
      [(MFMessageCriterion *)v12 setCriteria:v14];

      goto LABEL_14;
    }
  }

  else if (criterionType == 26)
  {
    criteria2 = [(MFMessageCriterion *)self criteria];
    firstObject = [criteria2 firstObject];

    v11 = [firstObject _evaluateFTSCriterionWithIndexManager:managerCopy mailboxIDs:dsCopy];
    v12 = [MFMessageCriterion notCriterionWithCriterion:v11];

    goto LABEL_14;
  }

  v15 = objc_opt_class();
  index = [managerCopy index];
  searchableIndexBundleID = [index searchableIndexBundleID];
  v18 = [(MFMessageCriterion *)self spotlightQueryExpressionWithBundleID:searchableIndexBundleID];
  v19 = [v15 searchableItemResultForExpression:v18];

  indexSet = [MEMORY[0x1E699B810] indexSet];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  identifiers = [v19 identifiers];
  v22 = [identifiers countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v22)
  {
    v23 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(identifiers);
        }

        [indexSet addIndex:{objc_msgSend(*(*(&v27 + 1) + 8 * i), "integerValue")}];
      }

      v22 = [identifiers countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v22);
  }

  v12 = [[MFMessageCriterion alloc] initWithType:24 qualifier:3 expression:0];
  [(MFMessageCriterion *)v12 setLibraryIdentifiers:indexSet];

LABEL_14:
  v25 = *MEMORY[0x1E69E9840];

  return v12;
}

id __89__MFMessageCriterion_LibraryAdditions___evaluateFTSCriterionWithIndexManager_mailboxIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _evaluateFTSCriterionWithIndexManager:*(a1 + 32) mailboxIDs:*(a1 + 40)];

  return v2;
}

- (id)_collapsedMessageNumberCriterion:(id)criterion allMustBeSatisfied:(BOOL)satisfied collapsedIndexes:(id *)indexes
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = criterion;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        criterionType = [v12 criterionType];
        libraryIdentifiers = [v12 libraryIdentifiers];
        qualifier = [v12 qualifier];
        if (criterionType == 24 && qualifier == 3 && libraryIdentifiers != 0)
        {
          if (v9)
          {
            [v8 addIndex:v7];
            if (!v6)
            {
              libraryIdentifiers2 = [v9 libraryIdentifiers];
              v6 = [libraryIdentifiers2 mutableCopy];
            }

            if (satisfied)
            {
              [v6 intersectIndexes:libraryIdentifiers];
            }

            else
            {
              [v6 addIndexes:libraryIdentifiers];
            }
          }

          else
          {
            v19 = [MEMORY[0x1E696AD50] indexSetWithIndex:v7];

            v9 = v12;
            v8 = v19;
          }
        }

        ++v7;
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);

    if (v6)
    {
      v20 = [[MFMessageCriterion alloc] initWithType:24 qualifier:3 expression:0];
      [(MFMessageCriterion *)v20 setLibraryIdentifiers:v6];
      if (indexes && v20)
      {
        v21 = v8;
        *indexes = v8;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {

    v20 = 0;
    v6 = 0;
    v8 = 0;
    v9 = 0;
  }

  v22 = v20;

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)_resolveWithIndexManager:(id)manager mailboxIDs:(id)ds
{
  v44 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  dsCopy = ds;
  if ([(MFMessageCriterion *)self canUseSearchableIndex])
  {
    v6 = [(MFMessageCriterion *)self _evaluateFTSCriterionWithIndexManager:managerCopy mailboxIDs:dsCopy];
    goto LABEL_49;
  }

  if ([(MFMessageCriterion *)self criterionType]!= 25)
  {
    v9 = 0;
    goto LABEL_45;
  }

  suggestion = [(MFMessageCriterion *)self suggestion];
  if (suggestion)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v8 = 0;
  }

  criteria = [(MFMessageCriterion *)self criteria];
  allCriteriaMustBeSatisfied = [(MFMessageCriterion *)self allCriteriaMustBeSatisfied];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = criteria;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  selfCopy = self;
  if (!v10)
  {

    goto LABEL_34;
  }

  v11 = 0;
  v12 = 0;
  v13 = *v40;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v40 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v39 + 1) + 8 * i);
      canUseSearchableIndex = [v15 canUseSearchableIndex];
      v17 = canUseSearchableIndex;
      if (!canUseSearchableIndex)
      {
        if ([v15 criterionType] == 25)
        {
          v18 = [v15 _resolveWithIndexManager:managerCopy mailboxIDs:dsCopy];
          v19 = v18;
          if (v18 != v15)
          {

            v15 = v19;
            if (v8)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }

          if (!v8)
          {
            goto LABEL_29;
          }
        }

        else if (!v8)
        {
          goto LABEL_29;
        }

LABEL_25:
        if (v8)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (v12)
      {
        [v12 addObject:v15];
        goto LABEL_25;
      }

      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v15, 0}];
      if (v8)
      {
        goto LABEL_27;
      }

LABEL_26:
      v20 = MEMORY[0x1E695DF70];
      v21 = [obj subarrayWithRange:{0, v11}];
      v8 = [v20 arrayWithArray:v21];

LABEL_27:
      if ((v17 & 1) == 0)
      {
        [v8 addObject:v15];
      }

LABEL_29:

      ++v11;
    }

    v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v10);

  if (v12)
  {
    goto LABEL_35;
  }

LABEL_34:
  suggestion2 = [(MFMessageCriterion *)selfCopy suggestion];
  v23 = suggestion2 == 0;

  v12 = 0;
  if (!v23)
  {
LABEL_35:
    v24 = objc_alloc_init(MFMessageCriterion);
    [(MFMessageCriterion *)v24 setCriterionType:25];
    [(MFMessageCriterion *)v24 setAllCriteriaMustBeSatisfied:allCriteriaMustBeSatisfied];
    [(MFMessageCriterion *)v24 setCriteria:v12];
    suggestion3 = [(MFMessageCriterion *)selfCopy suggestion];
    [(MFMessageCriterion *)v24 setSuggestion:suggestion3];

    v26 = [(MFMessageCriterion *)v24 _evaluateFTSCriterionWithIndexManager:managerCopy mailboxIDs:dsCopy];
    [v8 addObject:v26];
  }

  if (v8)
  {
    v38 = 0;
    v27 = [(MFMessageCriterion *)selfCopy _collapsedMessageNumberCriterion:v8 allMustBeSatisfied:allCriteriaMustBeSatisfied collapsedIndexes:&v38];
    v28 = v38;
    if (v27)
    {
      [v8 removeObjectsAtIndexes:v28];
      [v8 insertObject:v27 atIndex:0];
    }

    if ([v8 count] == 1)
    {
      v9 = [v8 objectAtIndex:0];
    }

    else
    {
      v9 = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)v9 setCriterionType:25];
      [(MFMessageCriterion *)v9 setAllCriteriaMustBeSatisfied:allCriteriaMustBeSatisfied];
      [(MFMessageCriterion *)v9 setCriteria:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  self = selfCopy;
LABEL_45:
  if (v9)
  {
    selfCopy2 = v9;
  }

  else
  {
    selfCopy2 = self;
  }

  v6 = selfCopy2;

LABEL_49:
  v30 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)SQLExpressionWithTables:(unsigned int *)tables baseTable:(unsigned int)table protectedDataAvailable:(BOOL)available searchableIndexManager:(id)manager mailboxIDs:(id)ds propertyMapper:(id)mapper
{
  managerCopy = manager;
  dsCopy = ds;
  mapperCopy = mapper;
  v22 = managerCopy;
  v17 = [(MFMessageCriterion *)self _resolveWithIndexManager:managerCopy mailboxIDs:dsCopy];
  LOBYTE(self) = [v17 hasLibraryIDCriterion];
  v18 = objc_alloc_init(_MFSQLGenerationContext);
  objc_storeStrong(&v18->searchableIndexManager, manager);
  objc_storeStrong(&v18->mailboxIDs, ds);
  v18->tables = *tables;
  v18->baseTable = table;
  objc_storeStrong(&v18->propertyMapper, mapper);
  v18->usedBaseTable = 0;
  v18->haveLibraryIDCriterion = self;
  v18->protectedDataAvailable = available;
  v19 = [v17 SQLExpressionWithContext:v18 depth:0];
  *tables = v18->tables;

  return v19;
}

- (void)_addCriteriaSatisfyingPredicate:(void *)predicate toCollector:(id)collector
{
  v17 = *MEMORY[0x1E69E9840];
  collectorCopy = collector;
  if ((predicate)(self))
  {
    [collectorCopy addObject:self];
  }

  else if ([(MFMessageCriterion *)self criterionType]== 25)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    criteria = [(MFMessageCriterion *)self criteria];
    v8 = [criteria countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(criteria);
          }

          [*(*(&v12 + 1) + 8 * v10++) _addCriteriaSatisfyingPredicate:predicate toCollector:collectorCopy];
        }

        while (v8 != v10);
        v8 = [criteria countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)criteriaSatisfyingPredicate:(void *)predicate
{
  array = [MEMORY[0x1E695DF70] array];
  [(MFMessageCriterion *)self _addCriteriaSatisfyingPredicate:predicate toCollector:array];

  return array;
}

- (id)criterionByApplyingTransform:(id)transform
{
  v28 = *MEMORY[0x1E69E9840];
  transformCopy = transform;
  if (!transformCopy)
  {
    selfCopy = self;
LABEL_22:
    lastObject = selfCopy;
    goto LABEL_26;
  }

  selfCopy2 = self;
  if ([(MFMessageCriterion *)self criterionType]!= 25)
  {
    selfCopy = transformCopy[2](transformCopy, self);
    goto LABEL_22;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  criteria = [(MFMessageCriterion *)self criteria];
  obj = criteria;
  v6 = [criteria countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 criterionByApplyingTransform:transformCopy];
        v13 = v12;
        if (!v8)
        {
          if ([v12 isEqual:v11])
          {
            v8 = 0;
          }

          else
          {
            v14 = MEMORY[0x1E695DF70];
            criteria2 = [(MFMessageCriterion *)selfCopy2 criteria];
            v16 = [criteria2 subarrayWithRange:{0, v7}];
            v8 = [v14 arrayWithArray:v16];
          }
        }

        if (v13 && ([v8 containsObject:v13] & 1) == 0)
        {
          [v8 addObject:v13];
        }

        ++v7;
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);

    if (v8)
    {
      if ([v8 count] == 1)
      {
        lastObject = [v8 lastObject];
      }

      else if ([v8 count])
      {
        lastObject = objc_alloc_init(MFMessageCriterion);
        [(MFMessageCriterion *)lastObject setCriterionType:25];
        [(MFMessageCriterion *)lastObject setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)selfCopy2 allCriteriaMustBeSatisfied]];
        [(MFMessageCriterion *)lastObject setCriteria:v8];
      }

      else
      {
        lastObject = 0;
      }

      goto LABEL_25;
    }
  }

  else
  {
  }

  lastObject = selfCopy2;
  v8 = 0;
LABEL_25:

LABEL_26:
  v19 = *MEMORY[0x1E69E9840];

  return lastObject;
}

- (id)extractedDateCriterion
{
  v2 = [(MFMessageCriterion *)self criteriaSatisfyingPredicate:_isDateCriterion];
  if ([v2 count])
  {
    v3 = [MFMessageCriterion orCompoundCriterionWithCriteria:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)extractedUnreadCriterion
{
  v2 = [(MFMessageCriterion *)self criteriaSatisfyingPredicate:_isUnreadCriterion];
  if ([v2 count])
  {
    v3 = +[MFMessageCriterion unreadMessageCriterion];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)spotlightQueryExpressionWithBundleID:(id)d
{
  v31[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v28 = 0;
  suggestion = [(MFMessageCriterion *)self suggestion];
  v5 = [(MFMessageCriterion *)self _spotlightQuerySearchString:&v28 hasSuggestion:suggestion != 0];
  v6 = v28;

  v7 = *MEMORY[0x1E6963EA0];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %@", *MEMORY[0x1E6963EA0], *MEMORY[0x1E6982DA8]];
  if (v6)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = [v9 initWithFormat:@"%@ == '*'", *MEMORY[0x1E6964A30]];
    v11 = MEMORY[0x1E699AE78];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == 'com.apple.spotlight.events'", *MEMORY[0x1E6963D40]];
    v31[0] = v12;
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == '%@'", *MEMORY[0x1E6964230], dCopy];
    v31[1] = dCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v15 = [v11 queryStringByJoiningQueries:v14 withOperand:1];

    v16 = MEMORY[0x1E699AE78];
    v30[0] = v8;
    v30[1] = v10;
    v30[2] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    v18 = [v16 queryStringByJoiningQueries:v17 withOperand:2];

    v8 = v18;
  }

  if (v5)
  {
    v19 = MEMORY[0x1E699AE78];
    v29[0] = v8;
    v29[1] = v5;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v21 = [v19 queryStringByJoiningQueries:v20 withOperand:1];
  }

  else
  {
    v21 = v8;
  }

  v22 = MEMORY[0x1E699AE80];
  suggestion2 = [(MFMessageCriterion *)self suggestion];
  v24 = [v22 expressionWithQueryString:v21 searchString:v6 updatedSuggestion:suggestion2];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)_attributesForHeaderCriterion
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(MFMessageCriterion *)self criterionType]!= 1)
  {
    v5 = 0;
    goto LABEL_10;
  }

  criterionIdentifier = [(MFMessageCriterion *)self criterionIdentifier];
  if ([*MEMORY[0x1E699B178] isEqual:criterionIdentifier])
  {
    v9[0] = *MEMORY[0x1E6964B58];
    v4 = v9;
  }

  else
  {
    if (([*MEMORY[0x1E699B180] isEqual:criterionIdentifier] & 1) == 0 && !objc_msgSend(*MEMORY[0x1E699B098], "isEqual:", criterionIdentifier))
    {
      v5 = 0;
      goto LABEL_9;
    }

    v8 = *MEMORY[0x1E69649F8];
    v4 = &v8;
  }

  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
LABEL_9:

LABEL_10:
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_comparisonOperationMatchingValue:(id)value qualifier:(int64_t)qualifier
{
  valueCopy = value;
  v6 = [valueCopy em_stringForQuotingWithCharacter:39];
  if (qualifier >= 9)
  {
    __assert_rtn("[MFMessageCriterion(MFLibrarySearchableIndexAdditions) _comparisonOperationMatchingValue:qualifier:]", "LibrarySearchableIndex.m", 114, "0 && unexpected qualifier type");
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:off_1E7AA2EC0[qualifier], v6];

  return v7;
}

- (id)_queryWithAttributes:(id)attributes matchingValue:(id)value
{
  attributesCopy = attributes;
  valueCopy = value;
  v8 = [(MFMessageCriterion *)self _queryWithAttributes:attributesCopy matchingValue:valueCopy qualifier:[(MFMessageCriterion *)self qualifier]];

  return v8;
}

- (id)_queryWithAttributes:(id)attributes matchingValue:(id)value qualifier:(int64_t)qualifier
{
  attributesCopy = attributes;
  valueCopy = value;
  v10 = [(MFMessageCriterion *)self _comparisonOperationMatchingValue:valueCopy qualifier:qualifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __102__MFMessageCriterion_MFLibrarySearchableIndexAdditions___queryWithAttributes_matchingValue_qualifier___block_invoke;
  v16[3] = &unk_1E7AA2DE8;
  v11 = v10;
  v17 = v11;
  v12 = [attributesCopy ef_map:v16];
  if (qualifier == 7)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = [MEMORY[0x1E699AE78] queryStringByJoiningQueries:v12 withOperand:v13];

  return v14;
}

id __102__MFMessageCriterion_MFLibrarySearchableIndexAdditions___queryWithAttributes_matchingValue_qualifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", a2, *(a1 + 32)];

  return v2;
}

- (id)criteriaForSpotlightCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __86__MFMessageCriterion_MFLibrarySearchableIndexAdditions__criteriaForSpotlightCriteria___block_invoke;
  v20[3] = &unk_1E7AA2E10;
  v6 = v4;
  v21 = v6;
  v7 = v5;
  v22 = v7;
  [criteriaCopy enumerateObjectsUsingBlock:v20];
  if ([v7 count])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __86__MFMessageCriterion_MFLibrarySearchableIndexAdditions__criteriaForSpotlightCriteria___block_invoke_2;
    v17 = &unk_1E7AA2E58;
    v9 = v8;
    v18 = v9;
    v10 = v6;
    v19 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:&v14];
    [v9 enumerateObjectsUsingBlock:{&__block_literal_global_66, v14, v15, v16, v17}];
    [v10 addObjectsFromArray:v9];
  }

  v11 = v22;
  v12 = v6;

  return v6;
}

void __86__MFMessageCriterion_MFLibrarySearchableIndexAdditions__criteriaForSpotlightCriteria___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (_criterionCannotUseSearchableIndex(v7))
  {
    [*(a1 + 32) addObject:v7];
  }

  else
  {
    v3 = [v7 expression];
    v4 = [*(a1 + 40) objectForKeyedSubscript:v3];

    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(a1 + 40) setObject:v5 forKeyedSubscript:v3];
    }

    v6 = [*(a1 + 40) objectForKeyedSubscript:v3];
    [v6 addObject:v7];
  }
}

void __86__MFMessageCriterion_MFLibrarySearchableIndexAdditions__criteriaForSpotlightCriteria___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 ef_map:&__block_literal_global_11];
  if ([v4 containsObject:&unk_1F27757C0] && objc_msgSend(v4, "containsObject:", &unk_1F27757D8) && objc_msgSend(v4, "containsObject:", &unk_1F27757F0) && objc_msgSend(v4, "containsObject:", &unk_1F2775808) && objc_msgSend(v4, "containsObject:", &unk_1F2775820))
  {
    v5 = *(a1 + 32);
    v6 = [v7 firstObject];
    [v5 addObject:v6];
  }

  else
  {
    [*(a1 + 40) addObjectsFromArray:v7];
  }
}

id __86__MFMessageCriterion_MFLibrarySearchableIndexAdditions__criteriaForSpotlightCriteria___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "criterionType")}];

  return v3;
}

- (id)_spotlightQuerySearchString:(id *)string hasSuggestion:(BOOL)suggestion
{
  v48[2] = *MEMORY[0x1E69E9840];
  if ([(MFMessageCriterion *)self criterionType]== 25)
  {
    criteria = [(MFMessageCriterion *)self criteria];
    v8 = [(MFMessageCriterion *)self criteriaForSpotlightCriteria:criteria];
    [(MFMessageCriterion *)self setCriteria:v8];
  }

  criterionType = [(MFMessageCriterion *)self criterionType];
  v10 = 0;
  if (criterionType > 24)
  {
    if (criterionType > 39)
    {
      if ((criterionType - 40) >= 2)
      {
        goto LABEL_34;
      }

      goto LABEL_19;
    }

    switch(criterionType)
    {
      case 25:
        v38 = 0;
        v39 = &v38;
        v40 = 0x3032000000;
        v41 = __Block_byref_object_copy__3;
        v42 = __Block_byref_object_dispose__3;
        v43 = 0;
        criteria2 = [(MFMessageCriterion *)self criteria];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __99__MFMessageCriterion_MFLibrarySearchableIndexAdditions___spotlightQuerySearchString_hasSuggestion___block_invoke;
        v36[3] = &unk_1E7AA2EA0;
        v36[4] = &v38;
        suggestionCopy = suggestion;
        v24 = [criteria2 ef_compactMap:v36];

        if ([(MFMessageCriterion *)self allCriteriaMustBeSatisfied])
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        v10 = [MEMORY[0x1E699AE78] queryStringByJoiningQueries:v24 withOperand:v25];
        *string = v39[5];

        _Block_object_dispose(&v38, 8);
        break;
      case 33:
        [(MFMessageCriterion *)self expression];
        *string = v10 = 0;
        break;
      case 35:
        if (!suggestion)
        {
          v13 = *MEMORY[0x1E6963D00];
          v47[0] = *MEMORY[0x1E6963D18];
          v47[1] = v13;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
          expression = [(MFMessageCriterion *)self expression];
          v10 = [(MFMessageCriterion *)self _queryWithAttributes:v14 matchingValue:expression];

          break;
        }

        goto LABEL_29;
    }
  }

  else
  {
    if (criterionType > 8)
    {
      if (criterionType != 9)
      {
        if (criterionType != 11)
        {
          if (criterionType == 23)
          {
            v45 = *MEMORY[0x1E69645B0];
            v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
            expression2 = [(MFMessageCriterion *)self expression];
            v10 = [(MFMessageCriterion *)self _queryWithAttributes:v11 matchingValue:expression2];
          }

          goto LABEL_34;
        }

        if (!suggestion)
        {
          v26 = MEMORY[0x1E695DF00];
          expression3 = [(MFMessageCriterion *)self expression];
          [expression3 doubleValue];
          v28 = [v26 dateWithTimeIntervalSince1970:?];
          [v28 timeIntervalSinceReferenceDate];
          v30 = v29;

          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"$time.absolute(%f)", v30];
          v44 = *MEMORY[0x1E6964D10];
          v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
          v10 = [(MFMessageCriterion *)self _queryWithAttributes:v32 matchingValue:v31];

          goto LABEL_34;
        }

LABEL_29:
        v10 = 0;
        goto LABEL_34;
      }

LABEL_19:
      if (!suggestion)
      {
        v18 = *MEMORY[0x1E69649F0];
        v48[0] = *MEMORY[0x1E69649F8];
        v48[1] = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
        expression4 = [(MFMessageCriterion *)self expression];
        v10 = [(MFMessageCriterion *)self _queryWithAttributes:v19 matchingValue:expression4];

        goto LABEL_34;
      }

      goto LABEL_29;
    }

    if (criterionType == 1)
    {
      if (!suggestion)
      {
        _attributesForHeaderCriterion = [(MFMessageCriterion *)self _attributesForHeaderCriterion];
        if ([_attributesForHeaderCriterion count])
        {
          expression5 = [(MFMessageCriterion *)self expression];
          v10 = [(MFMessageCriterion *)self _queryWithAttributes:_attributesForHeaderCriterion matchingValue:expression5];
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_34;
      }

      goto LABEL_29;
    }

    if (criterionType == 2)
    {
      v46 = *MEMORY[0x1E6964BB0];
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      expression6 = [(MFMessageCriterion *)self expression];
      v10 = [(MFMessageCriterion *)self _queryWithAttributes:v16 matchingValue:expression6];
    }
  }

LABEL_34:
  if ([v10 length] && -[MFMessageCriterion qualifier](self, "qualifier") == 4)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"!(%@)", v10];

    v10 = v33;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v10;
}

id __99__MFMessageCriterion_MFLibrarySearchableIndexAdditions___spotlightQuerySearchString_hasSuggestion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = [a2 _spotlightQuerySearchString:&obj hasSuggestion:*(a1 + 40)];
  objc_storeStrong((v2 + 40), obj);

  return v3;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MFMessageCriterion *)self descriptionWithDepth:0 redacted:1];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (id)unreadCountCriterion
{
  useFlaggedForUnreadCount = [(MFMessageCriterion *)self useFlaggedForUnreadCount];
  v3 = [MFMessageCriterion alloc];
  if (useFlaggedForUnreadCount)
  {
    v4 = 3;
  }

  else
  {
    v4 = 7;
  }

  v5 = MFMessageIsFlagged;
  if (!useFlaggedForUnreadCount)
  {
    v5 = MessageIsRead;
  }

  v6 = [(MFMessageCriterion *)v3 initWithType:27 qualifier:v4 expression:*v5];

  return v6;
}

+ (id)criteriaFromDefaultsArray:(id)array
{
  v3 = [self criteriaFromDefaultsArray:array removingRecognizedKeys:1];

  return v3;
}

+ (id)defaultsArrayFromCriteria:(id)criteria
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  criteriaCopy = criteria;
  v4 = 0;
  v5 = [criteriaCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(criteriaCopy);
        }

        dictionaryRepresentation = [*(*(&v11 + 1) + 8 * i) dictionaryRepresentation];
        if (dictionaryRepresentation)
        {
          if (!v4)
          {
            v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(criteriaCopy, "count")}];
          }

          [v4 addObject:dictionaryRepresentation];
        }
      }

      v5 = [criteriaCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)defaultsDictionaryFromCriterion:(id)criterion
{
  dictionaryRepresentation = [criterion dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (MFMessageCriterion)initWithCriterion:(id)criterion expression:(id)expression
{
  criterionCopy = criterion;
  expressionCopy = expression;
  v8 = [(MFMessageCriterion *)self init];
  v9 = v8;
  if (v8)
  {
    [(MFMessageCriterion *)v8 setCriterionIdentifier:criterionCopy];
    [(MFMessageCriterion *)v9 setExpression:expressionCopy];
  }

  return v9;
}

- (MFMessageCriterion)initWithType:(int64_t)type qualifier:(int64_t)qualifier expression:(id)expression
{
  expressionCopy = expression;
  v9 = [(MFMessageCriterion *)self init];
  v10 = v9;
  if (v9)
  {
    [(MFMessageCriterion *)v9 setCriterionType:type];
    [(MFMessageCriterion *)v10 setQualifier:qualifier];
    [(MFMessageCriterion *)v10 setExpression:expressionCopy];
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      criterionIdentifier = [(MFMessageCriterion *)self criterionIdentifier];
      criterionIdentifier2 = [(MFMessageCriterion *)v5 criterionIdentifier];
      v8 = [criterionIdentifier isEqualToString:criterionIdentifier2];

      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }

      qualifier = [(MFMessageCriterion *)self qualifier];
      if (qualifier != [(MFMessageCriterion *)v5 qualifier])
      {
        goto LABEL_10;
      }

      suggestion = [(MFMessageCriterion *)self suggestion];
      suggestion2 = [(MFMessageCriterion *)v5 suggestion];
      v12 = EFObjectsAreEqual();

      if (v12)
      {
        if ([(MFMessageCriterion *)self criterionType]== 25)
        {
          criteria = [(MFMessageCriterion *)self criteria];
          criteria2 = [(MFMessageCriterion *)v5 criteria];
          v15 = [criteria isEqualToArray:criteria2];
        }

        else
        {
          criteria = [(MFMessageCriterion *)self expression];
          criteria2 = [(MFMessageCriterion *)v5 expression];
          if (criteria == criteria2)
          {
            v15 = 1;
          }

          else
          {
            expression = [(MFMessageCriterion *)self expression];
            expression2 = [(MFMessageCriterion *)v5 expression];
            v15 = [expression isEqualToString:expression2];
          }
        }
      }

      else
      {
LABEL_10:
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  if ([(MFMessageCriterion *)self criterionType]== 25)
  {
    [(MFMessageCriterion *)self criteria];
  }

  else
  {
    [(MFMessageCriterion *)self expression];
  }
  v3 = ;
  v4 = [v3 hash];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MFMessageCriterion *)self descriptionWithDepth:0 redacted:0];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  _qualifierString = [(MFMessageCriterion *)self _qualifierString];
  [v3 setObject:self->_uniqueId forKey:@"CriterionUniqueId"];
  criterionIdentifier = self->_criterionIdentifier;
  if (criterionIdentifier && ![(NSString *)criterionIdentifier isEqualToString:&stru_1F273A5E0])
  {
    [v3 setObject:self->_criterionIdentifier forKey:@"Header"];
  }

  expression = self->_expression;
  if (expression && ![(NSString *)expression isEqualToString:&stru_1F273A5E0])
  {
    [v3 setObject:self->_expression forKey:@"Expression"];
  }

  if (_qualifierString && ([_qualifierString isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    [v3 setObject:_qualifierString forKey:@"Qualifier"];
  }

  if ([(MFMessageCriterion *)self criterionType]== 7)
  {
    v7 = [MailAccount accountWithPath:self->_expression];
    v8 = v7;
    if (v7)
    {
      v28 = @"Account";
      v29[0] = v7;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v10 = [MailAccount URLForInfo:v9];

      absoluteString = [v10 absoluteString];
      [v3 setObject:absoluteString forKey:@"AccountURL"];
    }
  }

  name = self->_name;
  if (name && ![(NSString *)name isEqualToString:&stru_1F273A5E0])
  {
    [v3 setObject:self->_name forKey:@"Name"];
  }

  if ([(MFMessageCriterion *)self criterionType]== 25)
  {
    if ([(NSArray *)self->_criteria count])
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_criteria, "count")}];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = self->_criteria;
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        v16 = *v24;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v14);
            }

            dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
            [v13 addObject:dictionaryRepresentation];
          }

          v15 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v15);
      }

      [v3 setObject:v13 forKey:@"Criteria"];
    }

    [v3 mf_setBool:*(self + 72) & 1 forKey:@"AllCriteriaMustBeSatisfied"];
  }

  else
  {
    criterionType = [(MFMessageCriterion *)self criterionType];
    if (criterionType <= 0x30 && ((1 << criterionType) & 0x1880000001C00) != 0)
    {
      [v3 mf_setBool:(*(self + 72) >> 1) & 1 forKey:@"DateIsRelative"];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", self->_dateUnitType];
      [v3 setObject:v20 forKey:@"DateUnitType"];
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  criterionType = [(MFMessageCriterion *)self criterionType];
  qualifier = [(MFMessageCriterion *)self qualifier];
  expression = [(MFMessageCriterion *)self expression];
  v9 = [v5 initWithType:criterionType qualifier:qualifier expression:expression];

  v10 = [(NSString *)self->_criterionIdentifier copyWithZone:zone];
  v11 = *(v9 + 8);
  *(v9 + 8) = v10;

  v12 = [(NSString *)self->_name copyWithZone:zone];
  v13 = *(v9 + 32);
  *(v9 + 32) = v12;

  v14 = [(NSString *)self->_uniqueId copyWithZone:zone];
  v15 = *(v9 + 40);
  *(v9 + 40) = v14;

  v16 = [(NSArray *)self->_criteria copyWithZone:zone];
  v17 = *(v9 + 56);
  *(v9 + 56) = v16;

  v18 = [(NSArray *)self->_requiredHeaders copyWithZone:zone];
  v19 = *(v9 + 80);
  *(v9 + 80) = v18;

  *(v9 + 64) = self->_dateUnitType;
  v20 = *(v9 + 72) & 0xFE | *(self + 72) & 1;
  *(v9 + 72) = v20;
  *(v9 + 72) = v20 & 0xFD | *(self + 72) & 2;
  objc_storeStrong((v9 + 112), self->_libraryIdentifiers);
  *(v9 + 88) = self->_preferFullTextSearch;
  *(v9 + 89) = self->_useFlaggedForUnreadCount;
  *(v9 + 72) = *(v9 + 72) & 0xFB | *(self + 72) & 4;
  *(v9 + 90) = self->_expressionIsSanitized;
  return v9;
}

- (void)setCriterionType:(int64_t)type
{
  v4 = [objc_opt_class() stringForCriterionType:type];
  [(MFMessageCriterion *)self setCriterionIdentifier:v4];

  self->_type = -1;
}

- (NSString)criterionIdentifier
{
  if (self->_criterionIdentifier)
  {
    return self->_criterionIdentifier;
  }

  else
  {
    return @"From";
  }
}

- (void)setCriterionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(__CFString *)identifierCopy caseInsensitiveCompare:@"To or Cc"])
  {
    v4 = identifierCopy;
  }

  else
  {

    v4 = @"AnyRecipient";
  }

  v8 = v4;
  v5 = [(__CFString *)v4 copy];
  criterionIdentifier = self->_criterionIdentifier;
  self->_criterionIdentifier = v5;

  self->_type = -1;
}

- (void)setExpression:(id)expression
{
  expressionCopy = expression;
  v4 = [expressionCopy copy];
  expression = self->_expression;
  self->_expression = v4;
}

- (id)_headersRequiredForEvaluation
{
  v27[5] = *MEMORY[0x1E69E9840];
  requiredHeaders = self->_requiredHeaders;
  if (!requiredHeaders)
  {
    _MFLockGlobalLock();
    if (self->_requiredHeaders)
    {
LABEL_25:
      _MFUnlockGlobalLock();
      requiredHeaders = self->_requiredHeaders;
      goto LABEL_26;
    }

    criterionType = [(MFMessageCriterion *)self criterionType];
    if (criterionType <= 19)
    {
      if ((criterionType - 15) < 2 || criterionType == 9)
      {
        v6 = *MEMORY[0x1E699B098];
        v27[0] = *MEMORY[0x1E699B180];
        v27[1] = v6;
        v7 = *MEMORY[0x1E699B158];
        v27[2] = *MEMORY[0x1E699B170];
        v27[3] = v7;
        v27[4] = *MEMORY[0x1E699B088];
        v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:5];
        goto LABEL_23;
      }
    }

    else
    {
      if ((criterionType - 20) < 3)
      {
        v24 = *MEMORY[0x1E699B1B0];
        v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
LABEL_23:
        v10 = v5;
LABEL_24:
        v16 = self->_requiredHeaders;
        self->_requiredHeaders = v10;

        goto LABEL_25;
      }

      if (criterionType == 40)
      {
        v26 = *MEMORY[0x1E699B180];
        v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
        goto LABEL_23;
      }

      if (criterionType == 41)
      {
        v25 = *MEMORY[0x1E699B098];
        v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        goto LABEL_23;
      }
    }

    criterionIdentifier = [(MFMessageCriterion *)self criterionIdentifier];
    v9 = [criterionIdentifier componentsSeparatedByString:@" or "];

    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [MEMORY[0x1E69AD6F8] uniqueHeaderKeyStringForString:{*(*(&v19 + 1) + 8 * v14), v19}];
          if (v15)
          {
            [(NSArray *)v10 addObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    goto LABEL_24;
  }

LABEL_26:
  v17 = *MEMORY[0x1E69E9840];

  return requiredHeaders;
}

- (BOOL)_evaluateCompoundCriterion:(id)criterion
{
  v18 = *MEMORY[0x1E69E9840];
  criterionCopy = criterion;
  allCriteriaMustBeSatisfied = [(MFMessageCriterion *)self allCriteriaMustBeSatisfied];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  criteria = [(MFMessageCriterion *)self criteria];
  v7 = [criteria countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(criteria);
      }

      v10 = [*(*(&v13 + 1) + 8 * v9) doesMessageSatisfyCriterion:criterionCopy];
      if (allCriteriaMustBeSatisfied != v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [criteria countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_evaluateNotCriterion:(id)criterion
{
  v17 = *MEMORY[0x1E69E9840];
  criterionCopy = criterion;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  criteria = [(MFMessageCriterion *)self criteria];
  v6 = [criteria countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(criteria);
        }

        if ([*(*(&v12 + 1) + 8 * i) doesMessageSatisfyCriterion:criterionCopy])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [criteria countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_evaluateFlagCriterion:(id)criterion
{
  v12[1] = *MEMORY[0x1E69E9840];
  criterionCopy = criterion;
  expression = [(MFMessageCriterion *)self expression];
  v11 = expression;
  v12[0] = &unk_1F2775970;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v7 = MFMessageFlagsByApplyingDictionary(0, v6);
  messageFlags = [criterionCopy messageFlags];
  LOBYTE(self) = [(MFMessageCriterion *)self qualifier]== 3;

  v9 = *MEMORY[0x1E69E9840];
  return ((messageFlags & v7) == 0) ^ self;
}

- (BOOL)_evaluateFlagColorCriterion:(id)criterion
{
  criterionCopy = criterion;
  expression = [(MFMessageCriterion *)self expression];
  integerValue = [expression integerValue];

  messageFlags = [criterionCopy messageFlags];
  qualifier = [(MFMessageCriterion *)self qualifier];
  LODWORD(self) = (((messageFlags >> 41) & 7) == integerValue) & (messageFlags >> 4);
  LOBYTE(integerValue) = qualifier != 3;

  return self ^ integerValue;
}

- (BOOL)_evaluateHeaderCriterion:(id)criterion
{
  v39 = *MEMORY[0x1E69E9840];
  criterionCopy = criterion;
  v23 = criterionCopy;
  expression = [(MFMessageCriterion *)self expression];
  v30 = expression;
  qualifier = [(MFMessageCriterion *)self qualifier];
  if (qualifier == 3 || expression && [expression length])
  {
    headers = [criterionCopy headers];
    [(MFMessageCriterion *)self _headersRequiredForEvaluation];
    v27 = headers;
    v7 = qualifier == 4;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    obj = v35 = 0u;
    v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v8)
    {
      v26 = *v35;
      v9 = 1;
LABEL_6:
      v25 = v8;
      v10 = 0;
      while (1)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        if ((v9 & 1) == 0)
        {
          break;
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v32 = [v27 copyHeadersForKey:v11];
        v29 = [MEMORY[0x1E69AD6F8] isStructuredHeaderKey:v11];
        v31 = [v32 count];
        v28 = v10;
        if (qualifier != 3 || v31)
        {
          if (v31)
          {
            v12 = 0;
            do
            {
              v13 = [v32 objectAtIndex:v12];
              if (v13 && [v30 length])
              {
                if (v29)
                {
                  v14 = [MEMORY[0x1E69AD6F8] addressListFromEncodedString:v13];
                  v15 = [v14 ef_flatMap:&__block_literal_global_16];
                }

                else
                {
                  v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v13, 0}];
                }

                v16 = [v15 count];
                if (v16)
                {
                  v17 = 1;
                  do
                  {
                    v18 = [v15 objectAtIndex:v17 - 1];
                    v19 = [(MFMessageCriterion *)self _evaluatePartOfStructure:v18];

                    if (qualifier == 4)
                    {
                      v9 = v19;
                    }

                    else
                    {
                      v9 = !v19;
                    }

                    if (qualifier == 4)
                    {
                      v7 &= v19;
                    }

                    else
                    {
                      v7 = v19;
                    }

                    if (v17 >= v16)
                    {
                      break;
                    }

                    ++v17;
                  }

                  while ((v9 & 1) != 0);
                }

                else
                {
                  v9 = 1;
                }
              }

              else
              {
                v9 = 1;
              }

              if (++v12 < v31)
              {
                v20 = v9;
              }

              else
              {
                v20 = 0;
              }
            }

            while ((v20 & 1) != 0);
            goto LABEL_40;
          }
        }

        else
        {
          v7 |= [v30 length] == 0;
        }

        v9 = 1;
LABEL_40:

        v10 = v28 + 1;
        if (v28 + 1 == v25)
        {
          v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

id __47__MFMessageCriterion__evaluateHeaderCriterion___block_invoke(uint64_t a1, void *a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 displayName];
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

  v8 = v2;
  v9 = [v8 emailAddressValue];
  v10 = [v9 simpleAddress];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v8 stringValue];
  }

  v13 = v12;

  if (v13 && v7)
  {
    v21[0] = v13;
    v21[1] = v7;
    v14 = v21;
    v15 = 2;
LABEL_15:
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:v15];
    goto LABEL_16;
  }

  if (v13)
  {
    v20 = v13;
    v14 = &v20;
LABEL_14:
    v15 = 1;
    goto LABEL_15;
  }

  if (v7)
  {
    v19 = v7;
    v14 = &v19;
    goto LABEL_14;
  }

  v16 = MEMORY[0x1E695E0F0];
LABEL_16:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)_evaluateSenderHeaderCriterion:(id)criterion
{
  firstSender = [criterion firstSender];
  emailAddressValue = [firstSender emailAddressValue];
  displayName = [emailAddressValue displayName];
  v7 = displayName;
  if (displayName)
  {
    stringValue = displayName;
  }

  else
  {
    stringValue = [firstSender stringValue];
  }

  v9 = stringValue;

  v10 = firstSender;
  emailAddressValue2 = [v10 emailAddressValue];
  simpleAddress = [emailAddressValue2 simpleAddress];
  v13 = simpleAddress;
  if (simpleAddress)
  {
    stringValue2 = simpleAddress;
  }

  else
  {
    stringValue2 = [v10 stringValue];
  }

  v15 = stringValue2;

  v16 = [(MFMessageCriterion *)self _evaluatePartOfStructure:v15]|| [(MFMessageCriterion *)self _evaluatePartOfStructure:v9];
  return v16;
}

- (BOOL)_evaluatePartOfStructure:(id)structure
{
  structureCopy = structure;
  if (structureCopy)
  {
    expression = [(MFMessageCriterion *)self expression];
    qualifier = [(MFMessageCriterion *)self qualifier];
    if (qualifier > 2)
    {
      switch(qualifier)
      {
        case 3:
          v7 = [structureCopy localizedCaseInsensitiveCompare:expression] == 0;
          goto LABEL_17;
        case 4:
          v8 = 1;
LABEL_15:
          v9 = 385;
          goto LABEL_16;
        case 7:
          v7 = [structureCopy localizedCaseInsensitiveCompare:expression] != 0;
LABEL_17:

          goto LABEL_18;
      }

LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    if (qualifier == 1)
    {
      v8 = 0;
      v9 = 393;
    }

    else
    {
      if (qualifier != 2)
      {
        goto LABEL_14;
      }

      v8 = 0;
      v9 = 397;
    }

LABEL_16:
    v10 = [structureCopy length];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v12 = [structureCopy rangeOfString:expression options:v9 range:0 locale:{v10, currentLocale}];

    v7 = v8 ^ (v12 != 0x7FFFFFFFFFFFFFFFLL);
    goto LABEL_17;
  }

  v7 = [(MFMessageCriterion *)self qualifier]== 4;
LABEL_18:

  return v7;
}

- (BOOL)_evaluateFullNameCriterion:(id)criterion
{
  v29 = *MEMORY[0x1E69E9840];
  headers = [criterion headers];
  array = [MEMORY[0x1E695DF70] array];
  copyAddressListForTo = [headers copyAddressListForTo];
  v22 = copyAddressListForTo;
  if ([copyAddressListForTo count])
  {
    [array addObjectsFromArray:copyAddressListForTo];
  }

  copyAddressListForCc = [headers copyAddressListForCc];
  if ([copyAddressListForCc count])
  {
    [array addObjectsFromArray:copyAddressListForCc];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = array;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        emailAddressValue = [v11 emailAddressValue];
        displayName = [emailAddressValue displayName];
        v14 = displayName;
        if (displayName)
        {
          stringValue = displayName;
        }

        else
        {
          stringValue = [v11 stringValue];
        }

        v16 = stringValue;

        lowercaseString = [v16 lowercaseString];

        if (lowercaseString && [v11 caseInsensitiveCompare:lowercaseString])
        {
          [array2 addObject:lowercaseString];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v18 = [(MFMessageCriterion *)self criterionType]!= 15;
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)_evaluateIsDigitallySignedCriterion:(id)criterion
{
  criterionCopy = criterion;
  v4 = [criterionCopy messageBodyUpdatingFlags:0];
  [criterionCopy calculateAttachmentInfoFromBody:v4];

  v5 = ([criterionCopy messageFlags] >> 23) & 1;
  return v5;
}

- (BOOL)_evaluateIsEncryptedCriterion:(id)criterion
{
  criterionCopy = criterion;
  v4 = [criterionCopy messageBodyUpdatingFlags:0];
  [criterionCopy calculateAttachmentInfoFromBody:v4];

  v5 = ([criterionCopy messageFlags] >> 3) & 1;
  return v5;
}

- (BOOL)_evaluateAttachmentCriterion:(id)criterion
{
  v28 = *MEMORY[0x1E69E9840];
  criterionCopy = criterion;
  expression = [(MFMessageCriterion *)self expression];
  v6 = expression;
  if (expression && ([expression isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    v22 = [criterionCopy messageBodyUpdatingFlags:0];
    v8 = +[MFActivityMonitor currentMonitor];
    error = [v8 error];
    [v8 setError:0];
    [criterionCopy calculateAttachmentInfoFromBody:v22];
    error2 = [v8 error];
    code = [error2 code];

    [v8 setError:error];
    if ((code - 1037) <= 0xFFFFFFFFFFFFFFFDLL && [criterionCopy numberOfAttachments])
    {
      qualifier = [(MFMessageCriterion *)self qualifier];
      [v22 attachments];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v12 = v24 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = *v24;
LABEL_8:
        v15 = 0;
        while (1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v12);
          }

          mimePart = [*(*(&v23 + 1) + 8 * v15) mimePart];
          attachmentFilename = [mimePart attachmentFilename];

          switch(qualifier)
          {
            case 1:
              v18 = [attachmentFilename hasPrefix:v6];
              break;
            case 2:
              v18 = [attachmentFilename hasSuffix:v6];
              break;
            case 3:
              v18 = [attachmentFilename isEqualToString:v6];
              break;
            default:
              v7 = qualifier == 4 * ([attachmentFilename rangeOfString:v6 options:1] == 0x7FFFFFFFFFFFFFFFLL);
              goto LABEL_24;
          }

          if (v18)
          {
            v7 = 1;
LABEL_24:

            goto LABEL_25;
          }

          if (v13 == ++v15)
          {
            v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
            if (v13)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      v7 = 0;
LABEL_25:
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_evaluateAccountCriterion:(id)criterion
{
  criterionCopy = criterion;
  expression = [(MFMessageCriterion *)self expression];
  v6 = [MailAccount accountWithPath:expression];
  account = [criterionCopy account];
  v8 = account == v6;

  return v8;
}

- (BOOL)_evaluateDateCriterion:(id)criterion
{
  criterionCopy = criterion;
  expression = [(MFMessageCriterion *)self expression];
  qualifier = [(MFMessageCriterion *)self qualifier];
  criterionType = [(MFMessageCriterion *)self criterionType];
  if (!expression)
  {
    goto LABEL_28;
  }

  v8 = criterionType;
  if ([expression intValue] < 1)
  {
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0;
  if (v8 > 46)
  {
    switch(v8)
    {
      case '/':
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_28;
        }

        followUp = [criterionCopy followUp];
        startDate = [followUp startDate];
        break;
      case '0':
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_28;
        }

        followUp = [criterionCopy followUp];
        startDate = [followUp endDate];
        break;
      case '1':
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sendLaterDate = [criterionCopy sendLaterDate];
          goto LABEL_16;
        }

LABEL_28:
        v10 = 0;
        goto LABEL_29;
      default:
        goto LABEL_30;
    }

    v10 = startDate;

    goto LABEL_22;
  }

  switch(v8)
  {
    case 10:
      sendLaterDate = [criterionCopy dateSent];
      goto LABEL_16;
    case 11:
      goto LABEL_14;
    case 12:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sendLaterDate = [criterionCopy displayDate];
LABEL_16:
        v10 = sendLaterDate;
LABEL_22:
        [v10 timeIntervalSince1970];
        v15 = v14;
        [expression doubleValue];
        v17 = v16;
        if ([(MFMessageCriterion *)self dateIsRelative])
        {
          integerValue = [expression integerValue];
          v19 = objc_opt_new();
          dateUnits = [(MFMessageCriterion *)self dateUnits];
          v21 = -integerValue;
          if (dateUnits <= 1)
          {
            if (dateUnits)
            {
              if (dateUnits == 1)
              {
                [v19 setDay:v21];
              }
            }

            else
            {
              [v19 setSecond:v21];
            }
          }

          else
          {
            switch(dateUnits)
            {
              case 2:
                [v19 setWeekOfYear:v21];
                break;
              case 3:
                [v19 setMonth:v21];
                break;
              case 4:
                [v19 setYear:v21];
                break;
            }
          }

          currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
          v24 = objc_opt_new();
          v25 = [currentCalendar dateByAddingComponents:v19 toDate:v24 options:0];

          [v25 timeIntervalSince1970];
          v17 = v26;

LABEL_42:
          if (v15 >= v17)
          {
LABEL_43:
            v9 = 1;
            break;
          }

          goto LABEL_29;
        }

        if (qualifier == 6)
        {
          goto LABEL_42;
        }

        if (qualifier == 5 && v15 <= v17)
        {
          goto LABEL_43;
        }

LABEL_29:
        v9 = 0;
        break;
      }

LABEL_14:
      sendLaterDate = [criterionCopy dateReceived];
      goto LABEL_16;
  }

LABEL_30:

  return v9;
}

- (BOOL)_evaluateConversationIDCriterion:(id)criterion
{
  v15 = *MEMORY[0x1E69E9840];
  criterionCopy = criterion;
  expression = [(MFMessageCriterion *)self expression];
  longLongValue = [expression longLongValue];

  if ([(MFMessageCriterion *)self qualifier]== 3)
  {
    v7 = [criterionCopy conversationID] == longLongValue;
  }

  else if ([(MFMessageCriterion *)self qualifier]== 7)
  {
    v7 = [criterionCopy conversationID] != longLongValue;
  }

  else
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      qualifier = [(MFMessageCriterion *)self qualifier];
      v13 = 2048;
      criterionType = [(MFMessageCriterion *)self criterionType];
      _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled qualifier %ld for type %ld", &v11, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_evaluateMailboxCriterion:(id)criterion
{
  criterionCopy = criterion;
  if ([(MFMessageCriterion *)self qualifier]== 3)
  {
    expression = [(MFMessageCriterion *)self expression];
    originalMailboxURL = [criterionCopy originalMailboxURL];
    v7 = [expression isEqualToString:originalMailboxURL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_evaluateReadLaterCriterion:(id)criterion
{
  criterionCopy = criterion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    readLater = [criterionCopy readLater];
    v5 = readLater != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_evaluateSenderBucketCriterion:(id)criterion
{
  criterionCopy = criterion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(criterionCopy, "senderBucket")}];
    stringValue = [v5 stringValue];

    if ([(MFMessageCriterion *)self qualifier]== 8)
    {
      expression = [(MFMessageCriterion *)self expression];
      expression2 = [expression componentsSeparatedByString:{@", "}];

      v9 = [expression2 containsObject:stringValue];
    }

    else
    {
      if ([(MFMessageCriterion *)self qualifier]!= 3)
      {
        v10 = 0;
        goto LABEL_9;
      }

      expression2 = [(MFMessageCriterion *)self expression];
      v9 = [expression2 isEqualToString:stringValue];
    }

    v10 = v9;

LABEL_9:
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (BOOL)doesMessageSatisfyCriterion:(id)criterion
{
  v12 = *MEMORY[0x1E69E9840];
  criterionCopy = criterion;
  v5 = 1;
  switch([(MFMessageCriterion *)self criterionType])
  {
    case 1:
    case 9:
    case 40:
    case 41:
      v6 = [(MFMessageCriterion *)self _evaluateHeaderCriterion:criterionCopy];
      goto LABEL_23;
    case 3:
    case 4:
      v6 = [(MFMessageCriterion *)self _evaluateAddressBookCriterion:criterionCopy];
      goto LABEL_23;
    case 7:
      v6 = [(MFMessageCriterion *)self _evaluateAccountCriterion:criterionCopy];
      goto LABEL_23;
    case 8:
      break;
    case 10:
    case 11:
    case 12:
    case 47:
    case 48:
    case 49:
      v6 = [(MFMessageCriterion *)self _evaluateDateCriterion:criterionCopy];
      goto LABEL_23;
    case 13:
    case 14:
      v6 = [(MFMessageCriterion *)self _evaluateAddressHistoryCriterion:criterionCopy];
      goto LABEL_23;
    case 15:
    case 16:
      v6 = [(MFMessageCriterion *)self _evaluateFullNameCriterion:criterionCopy];
      goto LABEL_23;
    case 17:
      v6 = [(MFMessageCriterion *)self _evaluateIsDigitallySignedCriterion:criterionCopy];
      goto LABEL_23;
    case 18:
      v6 = [(MFMessageCriterion *)self _evaluateIsEncryptedCriterion:criterionCopy];
      goto LABEL_23;
    case 19:
      v6 = [(MFMessageCriterion *)self _evaluateAttachmentCriterion:criterionCopy];
      goto LABEL_23;
    case 20:
      v6 = [(MFMessageCriterion *)self _evaluatePriorityIsHighCriterion:criterionCopy];
      goto LABEL_23;
    case 21:
      v6 = [(MFMessageCriterion *)self _evaluatePriorityIsNormalCriterion:criterionCopy];
      goto LABEL_23;
    case 22:
      v6 = [(MFMessageCriterion *)self _evaluatePriorityIsLowCriterion:criterionCopy];
      goto LABEL_23;
    case 23:
      v6 = [(MFMessageCriterion *)self _evaluateMailboxCriterion:criterionCopy];
      goto LABEL_23;
    case 25:
      v6 = [(MFMessageCriterion *)self _evaluateCompoundCriterion:criterionCopy];
      goto LABEL_23;
    case 26:
      v6 = [(MFMessageCriterion *)self _evaluateNotCriterion:criterionCopy];
      goto LABEL_23;
    case 27:
      v6 = [(MFMessageCriterion *)self _evaluateFlagCriterion:criterionCopy];
      goto LABEL_23;
    case 28:
      v6 = [(MFMessageCriterion *)self _evaluateFlagColorCriterion:criterionCopy];
      goto LABEL_23;
    case 34:
      v6 = [(MFMessageCriterion *)self _evaluateConversationIDCriterion:criterionCopy];
      goto LABEL_23;
    case 35:
      v6 = [(MFMessageCriterion *)self _evaluateSenderHeaderCriterion:criterionCopy];
      goto LABEL_23;
    case 46:
      v6 = [(MFMessageCriterion *)self _evaluateReadLaterCriterion:criterionCopy];
      goto LABEL_23;
    case 51:
      v6 = [(MFMessageCriterion *)self _evaluateSenderBucketCriterion:criterionCopy];
LABEL_23:
      v5 = v6;
      break;
    default:
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        criterionType = [(MFMessageCriterion *)self criterionType];
        _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled criterion type %ld", &v10, 0xCu);
      }

      v5 = 0;
      break;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (int64_t)messageRuleQualifierForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"BeginsWith"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"EndsWith"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"IsEqualTo"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"IsNotEqualTo"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"DoesNotContain"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"IsLessThan"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"IsGreaterThan"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"ASCIIContains"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stringForMessageRuleQualifier:(int64_t)qualifier
{
  if (qualifier > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7AA4610[qualifier];
  }
}

+ (int64_t)criterionTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Header"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Body"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SenderIsInAddressBook"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"SenderIsNotInAddressBook"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"SenderHeader"])
  {
    v4 = 35;
  }

  else if ([stringCopy isEqualToString:@"Account"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"AnyMessage"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"AnyRecipient"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"DateReceived"])
  {
    v4 = 11;
  }

  else if ([stringCopy isEqualToString:@"DisplayDate"])
  {
    v4 = 12;
  }

  else
  {
    if ([stringCopy isEqualToString:@"DateLastViewed"])
    {
      goto LABEL_22;
    }

    if ([stringCopy isEqualToString:@"DateSent"])
    {
      v4 = 10;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"SenderIsInAddressHistory"])
    {
      v4 = 13;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"SenderIsNotInAddressHistory"])
    {
      v4 = 14;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"AnyRecipientIncludesFullName"])
    {
      v4 = 15;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"NoRecipientIncludesFullName"])
    {
      v4 = 16;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"IsDigitallySigned"])
    {
      v4 = 17;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"IsEncrypted"])
    {
      v4 = 18;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"PriorityIsNormal"])
    {
      v4 = 21;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"PriorityIsHigh"])
    {
      v4 = 20;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"PriorityIsLow"])
    {
      v4 = 22;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"AnyAttachment"])
    {
      v4 = 19;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"Mailbox"])
    {
      v4 = 23;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"MessageNumber"])
    {
      v4 = 24;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"ExternalID"])
    {
      v4 = 36;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"Compound"])
    {
      v4 = 25;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"Flag"])
    {
      v4 = 27;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"FlagColor"])
    {
      v4 = 28;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"NotInTrashMailbox"])
    {
      v4 = 29;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"ContainsAttachments"])
    {
      v4 = 30;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"SpotlightSearch"])
    {
      v4 = 33;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"ConversationID"])
    {
      v4 = 34;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"Negation"])
    {
      v4 = 26;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"MessageIdHash"])
    {
      v4 = 38;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"GlobalMessageID"])
    {
      v4 = 37;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"ListIDHash"])
    {
      v4 = 39;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"DocumentID"])
    {
      v4 = 42;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"ToRecipient"])
    {
      v4 = 40;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"CcRecipient"])
    {
      v4 = 41;
      goto LABEL_79;
    }

    if ([stringCopy isEqualToString:@"DateLastViewed"])
    {
LABEL_22:
      v4 = 43;
    }

    else if ([stringCopy isEqualToString:@"CategoryType"])
    {
      v4 = 44;
    }

    else if ([stringCopy isEqualToString:@"CategoryUserOverrideType"])
    {
      v4 = 45;
    }

    else if ([stringCopy isEqualToString:@"ReadLater"])
    {
      v4 = 46;
    }

    else if ([stringCopy isEqualToString:@"FollowUpStartDate"])
    {
      v4 = 47;
    }

    else if ([stringCopy isEqualToString:@"FollowUpEndDate"])
    {
      v4 = 48;
    }

    else if ([stringCopy isEqualToString:@"SendLater"])
    {
      v4 = 49;
    }

    else if ([stringCopy isEqualToString:@"Unsubscribe"])
    {
      v4 = 50;
    }

    else if ([stringCopy isEqualToString:@"SenderBucket"])
    {
      v4 = 51;
    }

    else
    {
      v4 = 1;
    }
  }

LABEL_79:

  return v4;
}

+ (id)stringForCriterionType:(int64_t)type
{
  if ((type - 1) > 0x32)
  {
    return 0;
  }

  else
  {
    return off_1E7AA4658[type - 1];
  }
}

- (void)setCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v4 = [criteriaCopy copy];
  criteria = self->_criteria;
  self->_criteria = v4;

  [(MFMessageCriterion *)self setCriterionType:25];
}

- (void)setDateIsRelative:(BOOL)relative
{
  if (relative)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 72) = *(self + 72) & 0xFD | v3;
}

- (id)dateFromExpression
{
  v2 = MEMORY[0x1E695DF00];
  expression = [(MFMessageCriterion *)self expression];
  [expression doubleValue];
  v4 = [v2 dateWithTimeIntervalSince1970:?];

  return v4;
}

+ (id)expressionForDate:(id)date
{
  v3 = MFCriterionExpressionForDate(date);

  return v3;
}

+ (id)criterionForMailbox:(id)mailbox
{
  uRLString = [mailbox URLString];
  v5 = [self criterionForMailboxURL:uRLString];

  return v5;
}

+ (id)criterionForMailboxURL:(id)l
{
  lCopy = l;
  v4 = [[MFMessageCriterion alloc] initWithType:23 qualifier:3 expression:lCopy];

  return v4;
}

+ (id)criterionForAccount:(id)account
{
  accountCopy = account;
  v4 = [MFMessageCriterion alloc];
  uRLString = [accountCopy URLString];
  v6 = [(MFMessageCriterion *)v4 initWithType:23 qualifier:1 expression:uRLString];

  return v6;
}

+ (id)criterionExcludingMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  if ([mailboxesCopy count])
  {
    v4 = [mailboxesCopy ef_map:&__block_literal_global_338];
    v5 = [MFMessageCriterion orCompoundCriterionWithCriteria:v4];
    v6 = [MFMessageCriterion notCriterionWithCriterion:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __50__MFMessageCriterion_criterionExcludingMailboxes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MFMessageCriterion criterionForMailbox:a2];

  return v2;
}

+ (id)messageIsDeletedCriterion:(BOOL)criterion
{
  criterionCopy = criterion;
  v4 = [MFMessageCriterion alloc];
  if (criterionCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 7;
  }

  v6 = [(MFMessageCriterion *)v4 initWithType:27 qualifier:v5 expression:@"MessageIsDeleted"];

  return v6;
}

+ (id)messageIsJournaledCriterion:(BOOL)criterion
{
  criterionCopy = criterion;
  v4 = [MFMessageCriterion alloc];
  if (criterionCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 7;
  }

  v6 = [(MFMessageCriterion *)v4 initWithType:27 qualifier:v5 expression:@"MessageIsJournaled"];

  return v6;
}

+ (id)criterionForNotDeletedConversationID:(int64_t)d
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = [MFMessageCriterion messageIsDeletedCriterion:0];
  v10[0] = v4;
  v5 = [MFMessageCriterion criterionForConversationID:d];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [MFMessageCriterion andCompoundCriterionWithCriteria:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)criterionForConversationID:(int64_t)d
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", d];
  v4 = [[MFMessageCriterion alloc] initWithType:34 qualifier:3 expression:v3];

  return v4;
}

+ (id)criterionForLibraryID:(id)d
{
  dCopy = d;
  v4 = [[MFMessageCriterion alloc] initWithType:24 qualifier:3 expression:dCopy];

  return v4;
}

+ (id)criterionForDocumentID:(id)d
{
  dCopy = d;
  v4 = [[MFMessageCriterion alloc] initWithType:42 qualifier:3 expression:dCopy];

  return v4;
}

+ (id)messageIsServerSearchResultCriterion:(BOOL)criterion
{
  criterionCopy = criterion;
  v4 = [MFMessageCriterion alloc];
  if (criterionCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 7;
  }

  v6 = [(MFMessageCriterion *)v4 initWithType:27 qualifier:v5 expression:@"MessageIsServerSearchResult"];

  return v6;
}

+ (id)senderIsVIPCriterion:(BOOL)criterion
{
  criterionCopy = criterion;
  v4 = [MFMessageCriterion alloc];
  if (criterionCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 7;
  }

  v6 = [(MFMessageCriterion *)v4 initWithType:27 qualifier:v5 expression:@"MessageSenderIsVIP"];
  [(MFMessageCriterion *)v6 setName:@"VIPCriterion"];

  return v6;
}

+ (id)criterionForFlagColor:(unint64_t)color
{
  v4 = [MFMessageCriterion alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:color];
  stringValue = [v5 stringValue];
  v7 = [(MFMessageCriterion *)v4 initWithType:28 qualifier:3 expression:stringValue];

  [(MFMessageCriterion *)v7 setName:@"FlagColorCriterion"];

  return v7;
}

+ (id)readMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:27 qualifier:3 expression:@"MessageIsRead"];
  [(MFMessageCriterion *)v2 setName:@"ReadCriterion"];

  return v2;
}

+ (id)toMeCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:27 qualifier:3 expression:@"MessageToContainsAccountAddress"];
  [(MFMessageCriterion *)v2 setName:@"ToMeCriterionName"];

  return v2;
}

+ (id)ccMeCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:27 qualifier:3 expression:@"MessageCcContainsAccountAddress"];
  [(MFMessageCriterion *)v2 setName:@"CcMeCriterionName"];

  return v2;
}

+ (id)yesterdayMessageCriterion
{
  v2 = objc_opt_new();
  [v2 setDay:-1];
  v3 = +[MFMessageCriterion _todayDateComponents];
  v4 = [MFMessageCriterion _criterionForDateReceivedBetweenDateComponents:v2 endDateComponents:v3];

  [v4 setName:@"YesterdayCriterion"];

  return v4;
}

+ (id)lastWeekMessageCriterion
{
  v2 = objc_opt_new();
  [v2 setWeekOfYear:-1];
  v3 = +[MFMessageCriterion _todayDateComponents];
  v4 = [MFMessageCriterion _criterionForDateReceivedBetweenDateComponents:v2 endDateComponents:v3];

  [v4 setName:@"LastWeekCriterion"];

  return v4;
}

+ (id)readLaterMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:46 qualifier:7 expression:0];
  [(MFMessageCriterion *)v2 setName:@"ReadLaterCriterion"];

  return v2;
}

+ (id)messageCriterionForUnsubscribeTypeNotMatching:(int64_t)matching
{
  v4 = [MFMessageCriterion alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:matching];
  stringValue = [v5 stringValue];
  v7 = [(MFMessageCriterion *)v4 initWithType:50 qualifier:7 expression:stringValue];

  [(MFMessageCriterion *)v7 setName:@"UnsubscribeCriterion"];

  return v7;
}

+ (id)_todayDateComponents
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = objc_opt_new();
  v4 = [currentCalendar components:542 fromDate:v3];

  return v4;
}

+ (id)_criterionForDateReceivedBetweenDateComponents:(id)components endDateComponents:(id)dateComponents
{
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [currentCalendar dateFromComponents:dateComponentsCopy];
  v9 = [currentCalendar dateByAddingComponents:componentsCopy toDate:v8 options:0];
  v10 = [MFMessageCriterion _criterionForDateReceivedBetween:v9 endDate:v8];

  return v10;
}

+ (id)_criterionForDateReceivedBetween:(id)between endDate:(id)date
{
  v13[2] = *MEMORY[0x1E69E9840];
  betweenCopy = between;
  dateCopy = date;
  v7 = [MFMessageCriterion criterionForDateReceivedNewerThanDate:betweenCopy];
  v8 = [MFMessageCriterion criterionForDateReceivedOlderThanDate:dateCopy];
  v13[0] = v7;
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [MFMessageCriterion andCompoundCriterionWithCriteria:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)criterionForDateReceivedOlderThanDate:(id)date
{
  dateCopy = date;
  v5 = [MFMessageCriterion alloc];
  v6 = [self expressionForDate:dateCopy];
  v7 = [(MFMessageCriterion *)v5 initWithType:11 qualifier:5 expression:v6];

  return v7;
}

+ (id)criterionForDateReceivedNewerThanDate:(id)date
{
  dateCopy = date;
  v5 = [MFMessageCriterion alloc];
  v6 = [self expressionForDate:dateCopy];
  v7 = [(MFMessageCriterion *)v5 initWithType:11 qualifier:6 expression:v6];

  return v7;
}

+ (id)notCriterionWithCriterion:(id)criterion
{
  v8[1] = *MEMORY[0x1E69E9840];
  criterionCopy = criterion;
  if (criterionCopy)
  {
    v4 = objc_alloc_init(MFMessageCriterion);
    v8[0] = criterionCopy;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(MFMessageCriterion *)v4 setCriteria:v5];

    [(MFMessageCriterion *)v4 setCriterionType:26];
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)andCompoundCriterionWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  if ([criteriaCopy count])
  {
    if ([criteriaCopy count] == 1)
    {
      lastObject = [criteriaCopy lastObject];
    }

    else
    {
      lastObject = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)lastObject setCriterionType:25];
      [(MFMessageCriterion *)lastObject setAllCriteriaMustBeSatisfied:1];
      [(MFMessageCriterion *)lastObject setCriteria:criteriaCopy];
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

+ (id)orCompoundCriterionWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  if ([criteriaCopy count])
  {
    if ([criteriaCopy count] == 1)
    {
      lastObject = [criteriaCopy lastObject];
    }

    else
    {
      lastObject = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)lastObject setCriterionType:25];
      [(MFMessageCriterion *)lastObject setAllCriteriaMustBeSatisfied:0];
      [(MFMessageCriterion *)lastObject setCriteria:criteriaCopy];
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

+ (id)matchEverythingCriterion
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [v2 initWithFormat:@"%lld", *MEMORY[0x1E699A728]];
  v4 = [[MFMessageCriterion alloc] initWithType:24 qualifier:7 expression:v3];

  return v4;
}

+ (id)matchNothingCriterion
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [v2 initWithFormat:@"%lld", *MEMORY[0x1E699A728]];
  v4 = [[MFMessageCriterion alloc] initWithType:24 qualifier:3 expression:v3];

  return v4;
}

+ (id)criterionForCategoryType:(unint64_t)type
{
  v3 = [MFMessageCriterion alloc];
  v4 = EMStringFromCategoryType();
  v5 = [(MFMessageCriterion *)v3 initWithType:44 qualifier:0 expression:v4];

  return v5;
}

+ (id)criterionForCategorizationHasUserOverride
{
  v2 = [[MFMessageCriterion alloc] initWithType:45 qualifier:3 expression:@"1"];

  return v2;
}

- (BOOL)requiresBody
{
  criterionType = [(MFMessageCriterion *)self criterionType];
  v4 = 1;
  v5 = criterionType + 1;
  if ((criterionType + 1) <= 0x34)
  {
    if (((1 << v5) & 0x1FFFFBF3FFFFF5) != 0)
    {
      return 0;
    }

    else if (((1 << v5) & 0xC000000) != 0)
    {
      criteria = [(MFMessageCriterion *)self criteria];
      v4 = [criteria ef_any:&__block_literal_global_347];
    }
  }

  return v4;
}

- (void)tokenizeUsingTokenizationHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  expression = [(MFMessageCriterion *)self expression];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v7 = [expression stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v8 = [v7 length];

  if (!v8)
  {
    goto LABEL_5;
  }

  if (-[MFMessageCriterion qualifier](self, "qualifier") == 8 || (v9 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:expression], v9, v9))
  {
    handlerCopy[2](handlerCopy, expression);
LABEL_5:
    v10 = expression;
    goto LABEL_6;
  }

  v12 = MEMORY[0x1E695DF58];
  expressionLanguages = [(MFMessageCriterion *)self expressionLanguages];
  v14 = [v12 ef_localesFromLanguages:expressionLanguages];

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v16 = [expression ef_stringByRemovingUnbalancedQuotesForLanguages:preferredLanguages];

  v17 = [v16 ef_stringByRemovingQuotedSubstringsForLocales:v14 tokenizationHandler:handlerCopy];

  if ([v17 length])
  {
    v10 = [v17 ef_stringByRemovingTokenizedLinksUsingTokenizationHandler:handlerCopy];

    if ([v10 length])
    {
      firstObject = [v14 firstObject];
      v19 = [v10 ef_wordComponentsForLocale:firstObject minimumWordLength:2];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v21)
      {
        v22 = *v25;
        do
        {
          v23 = 0;
          do
          {
            if (*v25 != v22)
            {
              objc_enumerationMutation(v20);
            }

            handlerCopy[2](handlerCopy, *(*(&v24 + 1) + 8 * v23++));
          }

          while (v21 != v23);
          v21 = [v20 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v21);
      }
    }
  }

  else
  {
    v10 = v17;
  }

LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setIncludeRelatedMessages:(BOOL)messages
{
  if (messages)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 72) = *(self + 72) & 0xFB | v3;
}

- (id)daSearchPredicate
{
  if (daSearchPredicate_onceToken != -1)
  {
    [MFMessageCriterion(DASearch) daSearchPredicate];
  }

  v3 = daSearchPredicate_criterionConverter;

  return [v3 predicateFromMessageCriterion:self];
}

uint64_t __49__MFMessageCriterion_DASearch__daSearchPredicate__block_invoke()
{
  v0 = objc_alloc_init(_MFDASearchCriterionConverterDelegate);
  v1 = daSearchPredicate_converterDelegate;
  daSearchPredicate_converterDelegate = v0;

  v2 = objc_alloc_init(MFMessageCriterionConverter);
  v3 = daSearchPredicate_criterionConverter;
  daSearchPredicate_criterionConverter = v2;

  v4 = daSearchPredicate_converterDelegate;
  v5 = daSearchPredicate_criterionConverter;

  return [v5 setDelegate:v4];
}

@end