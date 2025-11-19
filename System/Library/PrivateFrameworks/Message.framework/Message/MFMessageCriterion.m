@interface MFMessageCriterion
+ (id)_criterionForDateReceivedBetween:(id)a3 endDate:(id)a4;
+ (id)_criterionForDateReceivedBetweenDateComponents:(id)a3 endDateComponents:(id)a4;
+ (id)_todayDateComponents;
+ (id)andCompoundCriterionWithCriteria:(id)a3;
+ (id)ccMeCriterion;
+ (id)criteriaFromDefaultsArray:(id)a3;
+ (id)criterionExcludingMailboxes:(id)a3;
+ (id)criterionForAccount:(id)a3;
+ (id)criterionForCategorizationHasUserOverride;
+ (id)criterionForCategoryType:(unint64_t)a3;
+ (id)criterionForConversationID:(int64_t)a3;
+ (id)criterionForDateReceivedNewerThanDate:(id)a3;
+ (id)criterionForDateReceivedOlderThanDate:(id)a3;
+ (id)criterionForDocumentID:(id)a3;
+ (id)criterionForFlagColor:(unint64_t)a3;
+ (id)criterionForLibraryID:(id)a3;
+ (id)criterionForMailbox:(id)a3;
+ (id)criterionForMailboxURL:(id)a3;
+ (id)criterionForNotDeletedConversationID:(int64_t)a3;
+ (id)defaultsArrayFromCriteria:(id)a3;
+ (id)defaultsDictionaryFromCriterion:(id)a3;
+ (id)expressionForDate:(id)a3;
+ (id)flaggedMessageCriterion;
+ (id)followUpMessageCriterion;
+ (id)hasAttachmentsCriterion;
+ (id)includesMeCriterion;
+ (id)lastWeekMessageCriterion;
+ (id)matchEverythingCriterion;
+ (id)matchNothingCriterion;
+ (id)messageCriterionForUnsubscribeTypeNotMatching:(int64_t)a3;
+ (id)messageIsDeletedCriterion:(BOOL)a3;
+ (id)messageIsJournaledCriterion:(BOOL)a3;
+ (id)messageIsServerSearchResultCriterion:(BOOL)a3;
+ (id)notCriterionWithCriterion:(id)a3;
+ (id)orCompoundCriterionWithCriteria:(id)a3;
+ (id)readLaterMessageCriterion;
+ (id)readMessageCriterion;
+ (id)sendLaterMessageCriterion;
+ (id)senderIsVIPCriterion:(BOOL)a3;
+ (id)stringForCriterionType:(int64_t)a3;
+ (id)threadMuteMessageCriterion;
+ (id)threadNotifyMessageCriterion;
+ (id)toMeCriterion;
+ (id)todayMessageCriterion;
+ (id)unreadMessageCriterion;
+ (id)yesterdayMessageCriterion;
+ (int64_t)criterionTypeForString:(id)a3;
- (BOOL)_containsNotCriterion;
- (BOOL)_evaluateAccountCriterion:(id)a3;
- (BOOL)_evaluateAttachmentCriterion:(id)a3;
- (BOOL)_evaluateCompoundCriterion:(id)a3;
- (BOOL)_evaluateConversationIDCriterion:(id)a3;
- (BOOL)_evaluateDateCriterion:(id)a3;
- (BOOL)_evaluateFlagColorCriterion:(id)a3;
- (BOOL)_evaluateFlagCriterion:(id)a3;
- (BOOL)_evaluateFullNameCriterion:(id)a3;
- (BOOL)_evaluateHeaderCriterion:(id)a3;
- (BOOL)_evaluateIsDigitallySignedCriterion:(id)a3;
- (BOOL)_evaluateIsEncryptedCriterion:(id)a3;
- (BOOL)_evaluateMailboxCriterion:(id)a3;
- (BOOL)_evaluateNotCriterion:(id)a3;
- (BOOL)_evaluatePartOfStructure:(id)a3;
- (BOOL)_evaluateReadLaterCriterion:(id)a3;
- (BOOL)_evaluateSenderBucketCriterion:(id)a3;
- (BOOL)_evaluateSenderHeaderCriterion:(id)a3;
- (BOOL)doesMessageSatisfyCriterion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresBody;
- (MFMessageCriterion)criterionForSQL;
- (MFMessageCriterion)init;
- (MFMessageCriterion)initWithCriterion:(id)a3 expression:(id)a4;
- (MFMessageCriterion)initWithType:(int64_t)a3 qualifier:(int64_t)a4 expression:(id)a5;
- (NSString)criterionIdentifier;
- (NSString)description;
- (NSString)ef_publicDescription;
- (NSString)expression;
- (id)SQLExpressionWithTables:(unsigned int *)a3 baseTable:(unsigned int)a4 protectedDataAvailable:(BOOL)a5 searchableIndexManager:(id)a6 mailboxIDs:(id)a7 propertyMapper:(id)a8;
- (id)_SQLExpressionForMailboxCriterion;
- (id)_attributesForHeaderCriterion;
- (id)_collapsedMessageNumberCriterion:(id)a3 allMustBeSatisfied:(BOOL)a4 collapsedIndexes:(id *)a5;
- (id)_comparisonOperationMatchingValue:(id)a3 qualifier:(int64_t)a4;
- (id)_criterionForSQL;
- (id)_evaluateFTSCriterionWithIndexManager:(id)a3 mailboxIDs:(id)a4;
- (id)_headersRequiredForEvaluation;
- (id)_queryWithAttributes:(id)a3 matchingValue:(id)a4;
- (id)_queryWithAttributes:(id)a3 matchingValue:(id)a4 qualifier:(int64_t)a5;
- (id)_resolveWithIndexManager:(id)a3 mailboxIDs:(id)a4;
- (id)_spotlightQuerySearchString:(id *)a3 hasSuggestion:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)criteriaForSpotlightCriteria:(id)a3;
- (id)criteriaSatisfyingPredicate:(void *)a3;
- (id)criterionByApplyingTransform:(id)a3;
- (id)daSearchPredicate;
- (id)dateFromExpression;
- (id)dictionaryRepresentation;
- (id)extractedDateCriterion;
- (id)extractedUnreadCriterion;
- (id)fixOnce;
- (id)simplifiedCriterion;
- (id)simplifyOnce;
- (id)spotlightQueryExpressionWithBundleID:(id)a3;
- (id)stringForMessageRuleQualifier:(int64_t)a3;
- (id)unreadCountCriterion;
- (int64_t)criterionType;
- (int64_t)messageRuleQualifierForString:(id)a3;
- (unint64_t)hash;
- (unsigned)bestBaseTable;
- (void)_addCriteriaSatisfyingPredicate:(void *)a3 toCollector:(id)a4;
- (void)setCriteria:(id)a3;
- (void)setCriterionIdentifier:(id)a3;
- (void)setCriterionType:(int64_t)a3;
- (void)setDateIsRelative:(BOOL)a3;
- (void)setExpression:(id)a3;
- (void)setIncludeRelatedMessages:(BOOL)a3;
- (void)tokenizeUsingTokenizationHandler:(id)a3;
@end

@implementation MFMessageCriterion

- (MFMessageCriterion)init
{
  v7.receiver = self;
  v7.super_class = MFMessageCriterion;
  v2 = [(MFMessageCriterion *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    uniqueId = v2->_uniqueId;
    v2->_uniqueId = v4;

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
    v4 = [(EFInt64Set *)self->_libraryIdentifiers commaSeparatedString];
    v5 = self->_expression;
    self->_expression = v4;

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
  v5 = [a1 expressionForDate:v3];
  v6 = [(MFMessageCriterion *)v4 initWithType:47 qualifier:5 expression:v5];

  v7 = [MFMessageCriterion alloc];
  v8 = [a1 expressionForDate:v3];
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
  v3 = [(MFMessageCriterion *)self _criterionForSQL];
  v4 = [(MFMessageCriterion *)self suggestion];
  [v3 setSuggestion:v4];

  return v3;
}

- (id)_criterionForSQL
{
  v2 = self;
  v3 = 0;
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      v5 = [(MFMessageCriterion *)v2 simplifiedCriterion];

      v6 = [v5 fixOnce];

      if (v6 == v2)
      {
        v3 = v6;
        goto LABEL_10;
      }

      v3 = v6;

      if (!v3)
      {
        break;
      }

      v2 = v3;
      if (v4++ >= 9)
      {
        goto LABEL_10;
      }
    }

    v2 = 0;
  }

LABEL_10:

  return v3;
}

- (id)simplifiedCriterion
{
  v2 = self;
  v3 = 0;
  for (i = 0; ; v2 = i)
  {
    v5 = [(MFMessageCriterion *)v2 simplifyOnce];

    if (v5 == v2 || v3 > 9)
    {
      break;
    }

    i = v5;

    ++v3;
  }

  return v5;
}

- (id)simplifyOnce
{
  if ([(MFMessageCriterion *)self criterionType]== 25)
  {
    v23 = [(MFMessageCriterion *)self criteria];
    v3 = [v23 count];
    v4 = v3;
    if (v3)
    {
      if (v3 == 1)
      {
        v5 = [v23 lastObject];
        v6 = [v5 simplifiedCriterion];

        v7 = v6;
        if (v6)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = [v23 objectAtIndex:v9];
        v11 = [v10 simplifiedCriterion];
        if ([v11 criterionType] == 25 && ((v12 = -[MFMessageCriterion allCriteriaMustBeSatisfied](self, "allCriteriaMustBeSatisfied"), v12 == objc_msgSend(v11, "allCriteriaMustBeSatisfied")) || (objc_msgSend(v11, "criteria"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, !v14)))
        {
          if (!v7)
          {
            v18 = objc_alloc_init(MFMessageCriterion);
            [(MFMessageCriterion *)v18 setCriterionType:25];
            [(MFMessageCriterion *)v18 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
            v19 = [MEMORY[0x1E695DF70] array];

            v20 = [v23 subarrayWithRange:{0, v9}];
            [v19 addObjectsFromArray:v20];

            v8 = v19;
            v7 = v18;
          }

          v21 = [v11 criteria];
          [v8 addObjectsFromArray:v21];
        }

        else
        {
          if (v11 == v10 || v7)
          {
            v16 = v8;
            v15 = v7;
          }

          else
          {
            v15 = objc_alloc_init(MFMessageCriterion);
            [(MFMessageCriterion *)v15 setCriterionType:25];
            [(MFMessageCriterion *)v15 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
            v16 = [MEMORY[0x1E695DF70] array];

            v17 = [v23 subarrayWithRange:{0, v9}];
            [v16 addObjectsFromArray:v17];
          }

          v8 = v16;
          v7 = v15;
          [v16 addObject:v11];
        }

        ++v9;
      }

      while (v4 != v9);
      if (v7)
      {
        [(MFMessageCriterion *)v7 setCriteria:v8];

        goto LABEL_24;
      }
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_23:
  v7 = self;
LABEL_24:

  return v7;
}

- (id)fixOnce
{
  v2 = self;
  if ([(MFMessageCriterion *)self criterionType]== 25)
  {
    v15 = v2;
    v3 = [(MFMessageCriterion *)v15 criteria];
    v4 = [v3 count];
    if (v4)
    {
      v14 = v2;
      v5 = 0;
      v6 = 0;
      for (i = 0; i != v4; ++i)
      {
        v8 = [v3 objectAtIndex:{i, v14}];
        v9 = [v8 _criterionForSQL];
        if (v9 != v8 && !v5)
        {
          v10 = objc_alloc_init(MFMessageCriterion);
          [(MFMessageCriterion *)v10 setCriterionType:25];
          [(MFMessageCriterion *)v10 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)v15 allCriteriaMustBeSatisfied]];
          v11 = [MEMORY[0x1E695DF70] array];

          v12 = [v3 subarrayWithRange:{0, i}];
          [v11 addObjectsFromArray:v12];

          v6 = v11;
          v5 = v10;
        }

        [v6 addObject:v9];
      }

      v2 = v14;
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

  v5 = v2;
LABEL_13:

  return v5;
}

- (unsigned)bestBaseTable
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (-[MFMessageCriterion criterionType](self, "criterionType") == 25 && (-[MFMessageCriterion allCriteriaMustBeSatisfied](self, "allCriteriaMustBeSatisfied") || (-[MFMessageCriterion criteria](self, "criteria"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4 == 1)))
  {
    v5 = [(MFMessageCriterion *)self criteria];
  }

  else
  {
    v22[0] = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  }

  v6 = v5;
  v7 = 0;
  v8 = [v5 count];
  if (v8)
  {
    while (1)
    {
      v9 = [v6 objectAtIndex:--v8];
      v10 = [(MFMessageCriterion *)v9 qualifier];
      v11 = [(MFMessageCriterion *)v9 criterionType];
      v12 = [(MFMessageCriterion *)v9 expression];
      if (v11 > 0x33)
      {
        goto LABEL_14;
      }

      if (v11 != 27)
      {
        break;
      }

      if ([@"MFMessageHasAttachments" isEqual:v12] & 1) != 0 || (objc_msgSend(@"MessageIsRead", "isEqual:", v12) & 1) != 0 || (objc_msgSend(@"MessageIsFlagged", "isEqual:", v12))
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

    if (((1 << v11) & 0x9881401001800) != 0)
    {
      goto LABEL_36;
    }

LABEL_14:
    if (v11 != 23 || v10 != 3)
    {
      if (v11 == 25)
      {
        if (v9 == self)
        {
          v14 = [(MFMessageCriterion *)self criteria];
          v15 = [v14 count];
          if (v15)
          {
            v16 = v15 - 1;
            do
            {
              v17 = [v14 objectAtIndex:v16];
              v18 = [v17 bestBaseTable];

              v19 = v16-- != 0;
            }

            while (v19 && v18 > 0x1F);
            if (v18 > 0x1F)
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
          v13 = [(MFMessageCriterion *)v9 bestBaseTable];
          if (v13 > v7)
          {
            v7 = v13;
          }
        }
      }

      else if (v11 == 5 && v7 <= 8)
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
  v4 = [(MFMessageCriterion *)self expression];
  v5 = [(MFMessageCriterion *)self qualifier];
  v6 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"url"];
  v7 = v6;
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v8 = [v6 beginsWith:v4 caseSensitive:0];
        goto LABEL_21;
      }

      if (v5 == 2)
      {
        v8 = [v6 endsWith:v4 caseSensitive:0];
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v5 <= 6)
  {
    if (v5 != 3)
    {
      if (v5 == 4)
      {
        v8 = [v6 doesNotContain:v4 caseSensitive:0];
LABEL_21:
        v9 = v8;
        v15 = MEMORY[0x1E696AEC0];
        v11 = [v8 ef_SQLExpression];
        v14 = [v15 stringWithFormat:@"mailbox IN (SELECT ROWID FROM mailboxes WHERE %@)", v11];
        goto LABEL_22;
      }

      goto LABEL_14;
    }

LABEL_13:
    v9 = [v6 equalTo:v4];
    goto LABEL_15;
  }

  if (v5 == 7)
  {
    goto LABEL_13;
  }

  if (v5 == 8)
  {
LABEL_12:
    v8 = [v6 contains:v4 caseSensitive:0];
    goto LABEL_21;
  }

LABEL_14:
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"CriterionAdditions.m" lineNumber:985 description:@"Qualifier not supported"];

  v9 = 0;
LABEL_15:
  if (v5 <= 6)
  {
    if (v5 != 3)
    {
      goto LABEL_25;
    }

LABEL_19:
    v11 = expressionForOperator(v5);
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v9 ef_SQLExpression];
    v14 = [v12 stringWithFormat:@"mailbox %@ IFNULL((SELECT ROWID FROM mailboxes WHERE %@), -1)", v11, v13];

    goto LABEL_22;
  }

  if (v5 == 7)
  {
    goto LABEL_19;
  }

LABEL_25:
  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"CriterionAdditions.m" lineNumber:1008 description:@"Qualifier not supported"];
  v14 = 0;
LABEL_22:

  return v14;
}

- (BOOL)_containsNotCriterion
{
  v3 = [(MFMessageCriterion *)self criterionType];
  if (v3 == 26)
  {
    return 1;
  }

  if (v3 != 25)
  {
    return 0;
  }

  v4 = [(MFMessageCriterion *)self criteria];
  v5 = [v4 ef_any:&__block_literal_global_2];

  return v5;
}

- (id)_evaluateFTSCriterionWithIndexManager:(id)a3 mailboxIDs:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MFMessageCriterion *)self criterionType];
  if (v8 == 25)
  {
    if ([(MFMessageCriterion *)self _containsNotCriterion])
    {
      v13 = [(MFMessageCriterion *)self criteria];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __89__MFMessageCriterion_LibraryAdditions___evaluateFTSCriterionWithIndexManager_mailboxIDs___block_invoke;
      v31[3] = &unk_1E7AA2410;
      v32 = v6;
      v33 = v7;
      v14 = [v13 ef_map:v31];

      v12 = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)v12 setCriterionType:25];
      [(MFMessageCriterion *)v12 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
      [(MFMessageCriterion *)v12 setCriteria:v14];

      goto LABEL_14;
    }
  }

  else if (v8 == 26)
  {
    v9 = [(MFMessageCriterion *)self criteria];
    v10 = [v9 firstObject];

    v11 = [v10 _evaluateFTSCriterionWithIndexManager:v6 mailboxIDs:v7];
    v12 = [MFMessageCriterion notCriterionWithCriterion:v11];

    goto LABEL_14;
  }

  v15 = objc_opt_class();
  v16 = [v6 index];
  v17 = [v16 searchableIndexBundleID];
  v18 = [(MFMessageCriterion *)self spotlightQueryExpressionWithBundleID:v17];
  v19 = [v15 searchableItemResultForExpression:v18];

  v20 = [MEMORY[0x1E699B810] indexSet];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = [v19 identifiers];
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v22)
  {
    v23 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v21);
        }

        [v20 addIndex:{objc_msgSend(*(*(&v27 + 1) + 8 * i), "integerValue")}];
      }

      v22 = [v21 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v22);
  }

  v12 = [[MFMessageCriterion alloc] initWithType:24 qualifier:3 expression:0];
  [(MFMessageCriterion *)v12 setLibraryIdentifiers:v20];

LABEL_14:
  v25 = *MEMORY[0x1E69E9840];

  return v12;
}

id __89__MFMessageCriterion_LibraryAdditions___evaluateFTSCriterionWithIndexManager_mailboxIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _evaluateFTSCriterionWithIndexManager:*(a1 + 32) mailboxIDs:*(a1 + 40)];

  return v2;
}

- (id)_collapsedMessageNumberCriterion:(id)a3 allMustBeSatisfied:(BOOL)a4 collapsedIndexes:(id *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = a3;
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
        v13 = [v12 criterionType];
        v14 = [v12 libraryIdentifiers];
        v15 = [v12 qualifier];
        if (v13 == 24 && v15 == 3 && v14 != 0)
        {
          if (v9)
          {
            [v8 addIndex:v7];
            if (!v6)
            {
              v18 = [v9 libraryIdentifiers];
              v6 = [v18 mutableCopy];
            }

            if (a4)
            {
              [v6 intersectIndexes:v14];
            }

            else
            {
              [v6 addIndexes:v14];
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
      if (a5 && v20)
      {
        v21 = v8;
        *a5 = v8;
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

- (id)_resolveWithIndexManager:(id)a3 mailboxIDs:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v36 = a4;
  if ([(MFMessageCriterion *)self canUseSearchableIndex])
  {
    v6 = [(MFMessageCriterion *)self _evaluateFTSCriterionWithIndexManager:v35 mailboxIDs:v36];
    goto LABEL_49;
  }

  if ([(MFMessageCriterion *)self criterionType]!= 25)
  {
    v9 = 0;
    goto LABEL_45;
  }

  v7 = [(MFMessageCriterion *)self suggestion];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v8 = 0;
  }

  v32 = [(MFMessageCriterion *)self criteria];
  v33 = [(MFMessageCriterion *)self allCriteriaMustBeSatisfied];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v32;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  v34 = self;
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
      v16 = [v15 canUseSearchableIndex];
      v17 = v16;
      if (!v16)
      {
        if ([v15 criterionType] == 25)
        {
          v18 = [v15 _resolveWithIndexManager:v35 mailboxIDs:v36];
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
  v22 = [(MFMessageCriterion *)v34 suggestion];
  v23 = v22 == 0;

  v12 = 0;
  if (!v23)
  {
LABEL_35:
    v24 = objc_alloc_init(MFMessageCriterion);
    [(MFMessageCriterion *)v24 setCriterionType:25];
    [(MFMessageCriterion *)v24 setAllCriteriaMustBeSatisfied:v33];
    [(MFMessageCriterion *)v24 setCriteria:v12];
    v25 = [(MFMessageCriterion *)v34 suggestion];
    [(MFMessageCriterion *)v24 setSuggestion:v25];

    v26 = [(MFMessageCriterion *)v24 _evaluateFTSCriterionWithIndexManager:v35 mailboxIDs:v36];
    [v8 addObject:v26];
  }

  if (v8)
  {
    v38 = 0;
    v27 = [(MFMessageCriterion *)v34 _collapsedMessageNumberCriterion:v8 allMustBeSatisfied:v33 collapsedIndexes:&v38];
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
      [(MFMessageCriterion *)v9 setAllCriteriaMustBeSatisfied:v33];
      [(MFMessageCriterion *)v9 setCriteria:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  self = v34;
LABEL_45:
  if (v9)
  {
    v29 = v9;
  }

  else
  {
    v29 = self;
  }

  v6 = v29;

LABEL_49:
  v30 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)SQLExpressionWithTables:(unsigned int *)a3 baseTable:(unsigned int)a4 protectedDataAvailable:(BOOL)a5 searchableIndexManager:(id)a6 mailboxIDs:(id)a7 propertyMapper:(id)a8
{
  v15 = a6;
  v16 = a7;
  v21 = a8;
  v22 = v15;
  v17 = [(MFMessageCriterion *)self _resolveWithIndexManager:v15 mailboxIDs:v16];
  LOBYTE(self) = [v17 hasLibraryIDCriterion];
  v18 = objc_alloc_init(_MFSQLGenerationContext);
  objc_storeStrong(&v18->searchableIndexManager, a6);
  objc_storeStrong(&v18->mailboxIDs, a7);
  v18->tables = *a3;
  v18->baseTable = a4;
  objc_storeStrong(&v18->propertyMapper, a8);
  v18->usedBaseTable = 0;
  v18->haveLibraryIDCriterion = self;
  v18->protectedDataAvailable = a5;
  v19 = [v17 SQLExpressionWithContext:v18 depth:0];
  *a3 = v18->tables;

  return v19;
}

- (void)_addCriteriaSatisfyingPredicate:(void *)a3 toCollector:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ((a3)(self))
  {
    [v6 addObject:self];
  }

  else if ([(MFMessageCriterion *)self criterionType]== 25)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(MFMessageCriterion *)self criteria];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v10++) _addCriteriaSatisfyingPredicate:a3 toCollector:v6];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)criteriaSatisfyingPredicate:(void *)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  [(MFMessageCriterion *)self _addCriteriaSatisfyingPredicate:a3 toCollector:v5];

  return v5;
}

- (id)criterionByApplyingTransform:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v18 = self;
LABEL_22:
    v17 = v18;
    goto LABEL_26;
  }

  v21 = self;
  if ([(MFMessageCriterion *)self criterionType]!= 25)
  {
    v18 = v4[2](v4, self);
    goto LABEL_22;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(MFMessageCriterion *)self criteria];
  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
        v12 = [v11 criterionByApplyingTransform:v4];
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
            v15 = [(MFMessageCriterion *)v21 criteria];
            v16 = [v15 subarrayWithRange:{0, v7}];
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
        v17 = [v8 lastObject];
      }

      else if ([v8 count])
      {
        v17 = objc_alloc_init(MFMessageCriterion);
        [(MFMessageCriterion *)v17 setCriterionType:25];
        [(MFMessageCriterion *)v17 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)v21 allCriteriaMustBeSatisfied]];
        [(MFMessageCriterion *)v17 setCriteria:v8];
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_25;
    }
  }

  else
  {
  }

  v17 = v21;
  v8 = 0;
LABEL_25:

LABEL_26:
  v19 = *MEMORY[0x1E69E9840];

  return v17;
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

- (id)spotlightQueryExpressionWithBundleID:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v27 = a3;
  v28 = 0;
  v4 = [(MFMessageCriterion *)self suggestion];
  v5 = [(MFMessageCriterion *)self _spotlightQuerySearchString:&v28 hasSuggestion:v4 != 0];
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
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == '%@'", *MEMORY[0x1E6964230], v27];
    v31[1] = v13;
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
  v23 = [(MFMessageCriterion *)self suggestion];
  v24 = [v22 expressionWithQueryString:v21 searchString:v6 updatedSuggestion:v23];

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

  v3 = [(MFMessageCriterion *)self criterionIdentifier];
  if ([*MEMORY[0x1E699B178] isEqual:v3])
  {
    v9[0] = *MEMORY[0x1E6964B58];
    v4 = v9;
  }

  else
  {
    if (([*MEMORY[0x1E699B180] isEqual:v3] & 1) == 0 && !objc_msgSend(*MEMORY[0x1E699B098], "isEqual:", v3))
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

- (id)_comparisonOperationMatchingValue:(id)a3 qualifier:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 em_stringForQuotingWithCharacter:39];
  if (a4 >= 9)
  {
    __assert_rtn("[MFMessageCriterion(MFLibrarySearchableIndexAdditions) _comparisonOperationMatchingValue:qualifier:]", "LibrarySearchableIndex.m", 114, "0 && unexpected qualifier type");
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:off_1E7AA2EC0[a4], v6];

  return v7;
}

- (id)_queryWithAttributes:(id)a3 matchingValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFMessageCriterion *)self _queryWithAttributes:v6 matchingValue:v7 qualifier:[(MFMessageCriterion *)self qualifier]];

  return v8;
}

- (id)_queryWithAttributes:(id)a3 matchingValue:(id)a4 qualifier:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MFMessageCriterion *)self _comparisonOperationMatchingValue:v9 qualifier:a5];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __102__MFMessageCriterion_MFLibrarySearchableIndexAdditions___queryWithAttributes_matchingValue_qualifier___block_invoke;
  v16[3] = &unk_1E7AA2DE8;
  v11 = v10;
  v17 = v11;
  v12 = [v8 ef_map:v16];
  if (a5 == 7)
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

- (id)criteriaForSpotlightCriteria:(id)a3
{
  v3 = a3;
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
  [v3 enumerateObjectsUsingBlock:v20];
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

- (id)_spotlightQuerySearchString:(id *)a3 hasSuggestion:(BOOL)a4
{
  v48[2] = *MEMORY[0x1E69E9840];
  if ([(MFMessageCriterion *)self criterionType]== 25)
  {
    v7 = [(MFMessageCriterion *)self criteria];
    v8 = [(MFMessageCriterion *)self criteriaForSpotlightCriteria:v7];
    [(MFMessageCriterion *)self setCriteria:v8];
  }

  v9 = [(MFMessageCriterion *)self criterionType];
  v10 = 0;
  if (v9 > 24)
  {
    if (v9 > 39)
    {
      if ((v9 - 40) >= 2)
      {
        goto LABEL_34;
      }

      goto LABEL_19;
    }

    switch(v9)
    {
      case 25:
        v38 = 0;
        v39 = &v38;
        v40 = 0x3032000000;
        v41 = __Block_byref_object_copy__3;
        v42 = __Block_byref_object_dispose__3;
        v43 = 0;
        v23 = [(MFMessageCriterion *)self criteria];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __99__MFMessageCriterion_MFLibrarySearchableIndexAdditions___spotlightQuerySearchString_hasSuggestion___block_invoke;
        v36[3] = &unk_1E7AA2EA0;
        v36[4] = &v38;
        v37 = a4;
        v24 = [v23 ef_compactMap:v36];

        if ([(MFMessageCriterion *)self allCriteriaMustBeSatisfied])
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        v10 = [MEMORY[0x1E699AE78] queryStringByJoiningQueries:v24 withOperand:v25];
        *a3 = v39[5];

        _Block_object_dispose(&v38, 8);
        break;
      case 33:
        [(MFMessageCriterion *)self expression];
        *a3 = v10 = 0;
        break;
      case 35:
        if (!a4)
        {
          v13 = *MEMORY[0x1E6963D00];
          v47[0] = *MEMORY[0x1E6963D18];
          v47[1] = v13;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
          v15 = [(MFMessageCriterion *)self expression];
          v10 = [(MFMessageCriterion *)self _queryWithAttributes:v14 matchingValue:v15];

          break;
        }

        goto LABEL_29;
    }
  }

  else
  {
    if (v9 > 8)
    {
      if (v9 != 9)
      {
        if (v9 != 11)
        {
          if (v9 == 23)
          {
            v45 = *MEMORY[0x1E69645B0];
            v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
            v12 = [(MFMessageCriterion *)self expression];
            v10 = [(MFMessageCriterion *)self _queryWithAttributes:v11 matchingValue:v12];
          }

          goto LABEL_34;
        }

        if (!a4)
        {
          v26 = MEMORY[0x1E695DF00];
          v27 = [(MFMessageCriterion *)self expression];
          [v27 doubleValue];
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
      if (!a4)
      {
        v18 = *MEMORY[0x1E69649F0];
        v48[0] = *MEMORY[0x1E69649F8];
        v48[1] = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
        v20 = [(MFMessageCriterion *)self expression];
        v10 = [(MFMessageCriterion *)self _queryWithAttributes:v19 matchingValue:v20];

        goto LABEL_34;
      }

      goto LABEL_29;
    }

    if (v9 == 1)
    {
      if (!a4)
      {
        v21 = [(MFMessageCriterion *)self _attributesForHeaderCriterion];
        if ([v21 count])
        {
          v22 = [(MFMessageCriterion *)self expression];
          v10 = [(MFMessageCriterion *)self _queryWithAttributes:v21 matchingValue:v22];
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_34;
      }

      goto LABEL_29;
    }

    if (v9 == 2)
    {
      v46 = *MEMORY[0x1E6964BB0];
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      v17 = [(MFMessageCriterion *)self expression];
      v10 = [(MFMessageCriterion *)self _queryWithAttributes:v16 matchingValue:v17];
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
  v2 = [(MFMessageCriterion *)self useFlaggedForUnreadCount];
  v3 = [MFMessageCriterion alloc];
  if (v2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 7;
  }

  v5 = MFMessageIsFlagged;
  if (!v2)
  {
    v5 = MessageIsRead;
  }

  v6 = [(MFMessageCriterion *)v3 initWithType:27 qualifier:v4 expression:*v5];

  return v6;
}

+ (id)criteriaFromDefaultsArray:(id)a3
{
  v3 = [a1 criteriaFromDefaultsArray:a3 removingRecognizedKeys:1];

  return v3;
}

+ (id)defaultsArrayFromCriteria:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) dictionaryRepresentation];
        if (v8)
        {
          if (!v4)
          {
            v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
          }

          [v4 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)defaultsDictionaryFromCriterion:(id)a3
{
  v3 = [a3 dictionaryRepresentation];

  return v3;
}

- (MFMessageCriterion)initWithCriterion:(id)a3 expression:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFMessageCriterion *)self init];
  v9 = v8;
  if (v8)
  {
    [(MFMessageCriterion *)v8 setCriterionIdentifier:v6];
    [(MFMessageCriterion *)v9 setExpression:v7];
  }

  return v9;
}

- (MFMessageCriterion)initWithType:(int64_t)a3 qualifier:(int64_t)a4 expression:(id)a5
{
  v8 = a5;
  v9 = [(MFMessageCriterion *)self init];
  v10 = v9;
  if (v9)
  {
    [(MFMessageCriterion *)v9 setCriterionType:a3];
    [(MFMessageCriterion *)v10 setQualifier:a4];
    [(MFMessageCriterion *)v10 setExpression:v8];
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MFMessageCriterion *)self criterionIdentifier];
      v7 = [(MFMessageCriterion *)v5 criterionIdentifier];
      v8 = [v6 isEqualToString:v7];

      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }

      v9 = [(MFMessageCriterion *)self qualifier];
      if (v9 != [(MFMessageCriterion *)v5 qualifier])
      {
        goto LABEL_10;
      }

      v10 = [(MFMessageCriterion *)self suggestion];
      v11 = [(MFMessageCriterion *)v5 suggestion];
      v12 = EFObjectsAreEqual();

      if (v12)
      {
        if ([(MFMessageCriterion *)self criterionType]== 25)
        {
          v13 = [(MFMessageCriterion *)self criteria];
          v14 = [(MFMessageCriterion *)v5 criteria];
          v15 = [v13 isEqualToArray:v14];
        }

        else
        {
          v13 = [(MFMessageCriterion *)self expression];
          v14 = [(MFMessageCriterion *)v5 expression];
          if (v13 == v14)
          {
            v15 = 1;
          }

          else
          {
            v17 = [(MFMessageCriterion *)self expression];
            v18 = [(MFMessageCriterion *)v5 expression];
            v15 = [v17 isEqualToString:v18];
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
  v4 = [(MFMessageCriterion *)self _qualifierString];
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

  if (v4 && ([v4 isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    [v3 setObject:v4 forKey:@"Qualifier"];
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

      v11 = [v10 absoluteString];
      [v3 setObject:v11 forKey:@"AccountURL"];
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

            v18 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
            [v13 addObject:v18];
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
    v19 = [(MFMessageCriterion *)self criterionType];
    if (v19 <= 0x30 && ((1 << v19) & 0x1880000001C00) != 0)
    {
      [v3 mf_setBool:(*(self + 72) >> 1) & 1 forKey:@"DateIsRelative"];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", self->_dateUnitType];
      [v3 setObject:v20 forKey:@"DateUnitType"];
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(MFMessageCriterion *)self criterionType];
  v7 = [(MFMessageCriterion *)self qualifier];
  v8 = [(MFMessageCriterion *)self expression];
  v9 = [v5 initWithType:v6 qualifier:v7 expression:v8];

  v10 = [(NSString *)self->_criterionIdentifier copyWithZone:a3];
  v11 = *(v9 + 8);
  *(v9 + 8) = v10;

  v12 = [(NSString *)self->_name copyWithZone:a3];
  v13 = *(v9 + 32);
  *(v9 + 32) = v12;

  v14 = [(NSString *)self->_uniqueId copyWithZone:a3];
  v15 = *(v9 + 40);
  *(v9 + 40) = v14;

  v16 = [(NSArray *)self->_criteria copyWithZone:a3];
  v17 = *(v9 + 56);
  *(v9 + 56) = v16;

  v18 = [(NSArray *)self->_requiredHeaders copyWithZone:a3];
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

- (void)setCriterionType:(int64_t)a3
{
  v4 = [objc_opt_class() stringForCriterionType:a3];
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

- (void)setCriterionIdentifier:(id)a3
{
  v7 = a3;
  if ([(__CFString *)v7 caseInsensitiveCompare:@"To or Cc"])
  {
    v4 = v7;
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

- (void)setExpression:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
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

    v4 = [(MFMessageCriterion *)self criterionType];
    if (v4 <= 19)
    {
      if ((v4 - 15) < 2 || v4 == 9)
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
      if ((v4 - 20) < 3)
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

      if (v4 == 40)
      {
        v26 = *MEMORY[0x1E699B180];
        v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
        goto LABEL_23;
      }

      if (v4 == 41)
      {
        v25 = *MEMORY[0x1E699B098];
        v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        goto LABEL_23;
      }
    }

    v8 = [(MFMessageCriterion *)self criterionIdentifier];
    v9 = [v8 componentsSeparatedByString:@" or "];

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

- (BOOL)_evaluateCompoundCriterion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFMessageCriterion *)self allCriteriaMustBeSatisfied];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(MFMessageCriterion *)self criteria];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = [*(*(&v13 + 1) + 8 * v9) doesMessageSatisfyCriterion:v4];
      if (v5 != v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)_evaluateNotCriterion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(MFMessageCriterion *)self criteria];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) doesMessageSatisfyCriterion:v4])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)_evaluateFlagCriterion:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v11 = v5;
  v12[0] = &unk_1F2775970;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v7 = MFMessageFlagsByApplyingDictionary(0, v6);
  v8 = [v4 messageFlags];
  LOBYTE(self) = [(MFMessageCriterion *)self qualifier]== 3;

  v9 = *MEMORY[0x1E69E9840];
  return ((v8 & v7) == 0) ^ self;
}

- (BOOL)_evaluateFlagColorCriterion:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v6 = [v5 integerValue];

  v7 = [v4 messageFlags];
  v8 = [(MFMessageCriterion *)self qualifier];
  LODWORD(self) = (((v7 >> 41) & 7) == v6) & (v7 >> 4);
  LOBYTE(v6) = v8 != 3;

  return self ^ v6;
}

- (BOOL)_evaluateHeaderCriterion:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = v4;
  v5 = [(MFMessageCriterion *)self expression];
  v30 = v5;
  v33 = [(MFMessageCriterion *)self qualifier];
  if (v33 == 3 || v5 && [v5 length])
  {
    v6 = [v4 headers];
    [(MFMessageCriterion *)self _headersRequiredForEvaluation];
    v27 = v6;
    v7 = v33 == 4;
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
        if (v33 != 3 || v31)
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

                    if (v33 == 4)
                    {
                      v9 = v19;
                    }

                    else
                    {
                      v9 = !v19;
                    }

                    if (v33 == 4)
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

- (BOOL)_evaluateSenderHeaderCriterion:(id)a3
{
  v4 = [a3 firstSender];
  v5 = [v4 emailAddressValue];
  v6 = [v5 displayName];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v4 stringValue];
  }

  v9 = v8;

  v10 = v4;
  v11 = [v10 emailAddressValue];
  v12 = [v11 simpleAddress];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v10 stringValue];
  }

  v15 = v14;

  v16 = [(MFMessageCriterion *)self _evaluatePartOfStructure:v15]|| [(MFMessageCriterion *)self _evaluatePartOfStructure:v9];
  return v16;
}

- (BOOL)_evaluatePartOfStructure:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MFMessageCriterion *)self expression];
    v6 = [(MFMessageCriterion *)self qualifier];
    if (v6 > 2)
    {
      switch(v6)
      {
        case 3:
          v7 = [v4 localizedCaseInsensitiveCompare:v5] == 0;
          goto LABEL_17;
        case 4:
          v8 = 1;
LABEL_15:
          v9 = 385;
          goto LABEL_16;
        case 7:
          v7 = [v4 localizedCaseInsensitiveCompare:v5] != 0;
LABEL_17:

          goto LABEL_18;
      }

LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    if (v6 == 1)
    {
      v8 = 0;
      v9 = 393;
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_14;
      }

      v8 = 0;
      v9 = 397;
    }

LABEL_16:
    v10 = [v4 length];
    v11 = [MEMORY[0x1E695DF58] currentLocale];
    v12 = [v4 rangeOfString:v5 options:v9 range:0 locale:{v10, v11}];

    v7 = v8 ^ (v12 != 0x7FFFFFFFFFFFFFFFLL);
    goto LABEL_17;
  }

  v7 = [(MFMessageCriterion *)self qualifier]== 4;
LABEL_18:

  return v7;
}

- (BOOL)_evaluateFullNameCriterion:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = [a3 headers];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [v23 copyAddressListForTo];
  v22 = v4;
  if ([v4 count])
  {
    [v3 addObjectsFromArray:v4];
  }

  v5 = [v23 copyAddressListForCc];
  if ([v5 count])
  {
    [v3 addObjectsFromArray:v5];
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v3;
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
        v12 = [v11 emailAddressValue];
        v13 = [v12 displayName];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [v11 stringValue];
        }

        v16 = v15;

        v17 = [v16 lowercaseString];

        if (v17 && [v11 caseInsensitiveCompare:v17])
        {
          [v6 addObject:v17];
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

- (BOOL)_evaluateIsDigitallySignedCriterion:(id)a3
{
  v3 = a3;
  v4 = [v3 messageBodyUpdatingFlags:0];
  [v3 calculateAttachmentInfoFromBody:v4];

  v5 = ([v3 messageFlags] >> 23) & 1;
  return v5;
}

- (BOOL)_evaluateIsEncryptedCriterion:(id)a3
{
  v3 = a3;
  v4 = [v3 messageBodyUpdatingFlags:0];
  [v3 calculateAttachmentInfoFromBody:v4];

  v5 = ([v3 messageFlags] >> 3) & 1;
  return v5;
}

- (BOOL)_evaluateAttachmentCriterion:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v6 = v5;
  if (v5 && ([v5 isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    v22 = [v4 messageBodyUpdatingFlags:0];
    v8 = +[MFActivityMonitor currentMonitor];
    v21 = [v8 error];
    [v8 setError:0];
    [v4 calculateAttachmentInfoFromBody:v22];
    v9 = [v8 error];
    v10 = [v9 code];

    [v8 setError:v21];
    if ((v10 - 1037) <= 0xFFFFFFFFFFFFFFFDLL && [v4 numberOfAttachments])
    {
      v11 = [(MFMessageCriterion *)self qualifier];
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

          v16 = [*(*(&v23 + 1) + 8 * v15) mimePart];
          v17 = [v16 attachmentFilename];

          switch(v11)
          {
            case 1:
              v18 = [v17 hasPrefix:v6];
              break;
            case 2:
              v18 = [v17 hasSuffix:v6];
              break;
            case 3:
              v18 = [v17 isEqualToString:v6];
              break;
            default:
              v7 = v11 == 4 * ([v17 rangeOfString:v6 options:1] == 0x7FFFFFFFFFFFFFFFLL);
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

- (BOOL)_evaluateAccountCriterion:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v6 = [MailAccount accountWithPath:v5];
  v7 = [v4 account];
  v8 = v7 == v6;

  return v8;
}

- (BOOL)_evaluateDateCriterion:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v6 = [(MFMessageCriterion *)self qualifier];
  v7 = [(MFMessageCriterion *)self criterionType];
  if (!v5)
  {
    goto LABEL_28;
  }

  v8 = v7;
  if ([v5 intValue] < 1)
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

        v12 = [v4 followUp];
        v13 = [v12 startDate];
        break;
      case '0':
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_28;
        }

        v12 = [v4 followUp];
        v13 = [v12 endDate];
        break;
      case '1':
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v4 sendLaterDate];
          goto LABEL_16;
        }

LABEL_28:
        v10 = 0;
        goto LABEL_29;
      default:
        goto LABEL_30;
    }

    v10 = v13;

    goto LABEL_22;
  }

  switch(v8)
  {
    case 10:
      v11 = [v4 dateSent];
      goto LABEL_16;
    case 11:
      goto LABEL_14;
    case 12:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v4 displayDate];
LABEL_16:
        v10 = v11;
LABEL_22:
        [v10 timeIntervalSince1970];
        v15 = v14;
        [v5 doubleValue];
        v17 = v16;
        if ([(MFMessageCriterion *)self dateIsRelative])
        {
          v18 = [v5 integerValue];
          v19 = objc_opt_new();
          v20 = [(MFMessageCriterion *)self dateUnits];
          v21 = -v18;
          if (v20 <= 1)
          {
            if (v20)
            {
              if (v20 == 1)
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
            switch(v20)
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

          v23 = [MEMORY[0x1E695DEE8] currentCalendar];
          v24 = objc_opt_new();
          v25 = [v23 dateByAddingComponents:v19 toDate:v24 options:0];

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

        if (v6 == 6)
        {
          goto LABEL_42;
        }

        if (v6 == 5 && v15 <= v17)
        {
          goto LABEL_43;
        }

LABEL_29:
        v9 = 0;
        break;
      }

LABEL_14:
      v11 = [v4 dateReceived];
      goto LABEL_16;
  }

LABEL_30:

  return v9;
}

- (BOOL)_evaluateConversationIDCriterion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v6 = [v5 longLongValue];

  if ([(MFMessageCriterion *)self qualifier]== 3)
  {
    v7 = [v4 conversationID] == v6;
  }

  else if ([(MFMessageCriterion *)self qualifier]== 7)
  {
    v7 = [v4 conversationID] != v6;
  }

  else
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = [(MFMessageCriterion *)self qualifier];
      v13 = 2048;
      v14 = [(MFMessageCriterion *)self criterionType];
      _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled qualifier %ld for type %ld", &v11, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_evaluateMailboxCriterion:(id)a3
{
  v4 = a3;
  if ([(MFMessageCriterion *)self qualifier]== 3)
  {
    v5 = [(MFMessageCriterion *)self expression];
    v6 = [v4 originalMailboxURL];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_evaluateReadLaterCriterion:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 readLater];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_evaluateSenderBucketCriterion:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "senderBucket")}];
    v6 = [v5 stringValue];

    if ([(MFMessageCriterion *)self qualifier]== 8)
    {
      v7 = [(MFMessageCriterion *)self expression];
      v8 = [v7 componentsSeparatedByString:{@", "}];

      v9 = [v8 containsObject:v6];
    }

    else
    {
      if ([(MFMessageCriterion *)self qualifier]!= 3)
      {
        v10 = 0;
        goto LABEL_9;
      }

      v8 = [(MFMessageCriterion *)self expression];
      v9 = [v8 isEqualToString:v6];
    }

    v10 = v9;

LABEL_9:
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (BOOL)doesMessageSatisfyCriterion:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = 1;
  switch([(MFMessageCriterion *)self criterionType])
  {
    case 1:
    case 9:
    case 40:
    case 41:
      v6 = [(MFMessageCriterion *)self _evaluateHeaderCriterion:v4];
      goto LABEL_23;
    case 3:
    case 4:
      v6 = [(MFMessageCriterion *)self _evaluateAddressBookCriterion:v4];
      goto LABEL_23;
    case 7:
      v6 = [(MFMessageCriterion *)self _evaluateAccountCriterion:v4];
      goto LABEL_23;
    case 8:
      break;
    case 10:
    case 11:
    case 12:
    case 47:
    case 48:
    case 49:
      v6 = [(MFMessageCriterion *)self _evaluateDateCriterion:v4];
      goto LABEL_23;
    case 13:
    case 14:
      v6 = [(MFMessageCriterion *)self _evaluateAddressHistoryCriterion:v4];
      goto LABEL_23;
    case 15:
    case 16:
      v6 = [(MFMessageCriterion *)self _evaluateFullNameCriterion:v4];
      goto LABEL_23;
    case 17:
      v6 = [(MFMessageCriterion *)self _evaluateIsDigitallySignedCriterion:v4];
      goto LABEL_23;
    case 18:
      v6 = [(MFMessageCriterion *)self _evaluateIsEncryptedCriterion:v4];
      goto LABEL_23;
    case 19:
      v6 = [(MFMessageCriterion *)self _evaluateAttachmentCriterion:v4];
      goto LABEL_23;
    case 20:
      v6 = [(MFMessageCriterion *)self _evaluatePriorityIsHighCriterion:v4];
      goto LABEL_23;
    case 21:
      v6 = [(MFMessageCriterion *)self _evaluatePriorityIsNormalCriterion:v4];
      goto LABEL_23;
    case 22:
      v6 = [(MFMessageCriterion *)self _evaluatePriorityIsLowCriterion:v4];
      goto LABEL_23;
    case 23:
      v6 = [(MFMessageCriterion *)self _evaluateMailboxCriterion:v4];
      goto LABEL_23;
    case 25:
      v6 = [(MFMessageCriterion *)self _evaluateCompoundCriterion:v4];
      goto LABEL_23;
    case 26:
      v6 = [(MFMessageCriterion *)self _evaluateNotCriterion:v4];
      goto LABEL_23;
    case 27:
      v6 = [(MFMessageCriterion *)self _evaluateFlagCriterion:v4];
      goto LABEL_23;
    case 28:
      v6 = [(MFMessageCriterion *)self _evaluateFlagColorCriterion:v4];
      goto LABEL_23;
    case 34:
      v6 = [(MFMessageCriterion *)self _evaluateConversationIDCriterion:v4];
      goto LABEL_23;
    case 35:
      v6 = [(MFMessageCriterion *)self _evaluateSenderHeaderCriterion:v4];
      goto LABEL_23;
    case 46:
      v6 = [(MFMessageCriterion *)self _evaluateReadLaterCriterion:v4];
      goto LABEL_23;
    case 51:
      v6 = [(MFMessageCriterion *)self _evaluateSenderBucketCriterion:v4];
LABEL_23:
      v5 = v6;
      break;
    default:
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = [(MFMessageCriterion *)self criterionType];
        _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled criterion type %ld", &v10, 0xCu);
      }

      v5 = 0;
      break;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (int64_t)messageRuleQualifierForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BeginsWith"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EndsWith"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"IsEqualTo"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"IsNotEqualTo"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"DoesNotContain"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"IsLessThan"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"IsGreaterThan"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ASCIIContains"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stringForMessageRuleQualifier:(int64_t)a3
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7AA4610[a3];
  }
}

+ (int64_t)criterionTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Header"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Body"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SenderIsInAddressBook"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SenderIsNotInAddressBook"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SenderHeader"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"Account"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AnyMessage"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"AnyRecipient"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"DateReceived"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"DisplayDate"])
  {
    v4 = 12;
  }

  else
  {
    if ([v3 isEqualToString:@"DateLastViewed"])
    {
      goto LABEL_22;
    }

    if ([v3 isEqualToString:@"DateSent"])
    {
      v4 = 10;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"SenderIsInAddressHistory"])
    {
      v4 = 13;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"SenderIsNotInAddressHistory"])
    {
      v4 = 14;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"AnyRecipientIncludesFullName"])
    {
      v4 = 15;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"NoRecipientIncludesFullName"])
    {
      v4 = 16;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"IsDigitallySigned"])
    {
      v4 = 17;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"IsEncrypted"])
    {
      v4 = 18;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"PriorityIsNormal"])
    {
      v4 = 21;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"PriorityIsHigh"])
    {
      v4 = 20;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"PriorityIsLow"])
    {
      v4 = 22;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"AnyAttachment"])
    {
      v4 = 19;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"Mailbox"])
    {
      v4 = 23;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"MessageNumber"])
    {
      v4 = 24;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"ExternalID"])
    {
      v4 = 36;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"Compound"])
    {
      v4 = 25;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"Flag"])
    {
      v4 = 27;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"FlagColor"])
    {
      v4 = 28;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"NotInTrashMailbox"])
    {
      v4 = 29;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"ContainsAttachments"])
    {
      v4 = 30;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"SpotlightSearch"])
    {
      v4 = 33;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"ConversationID"])
    {
      v4 = 34;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"Negation"])
    {
      v4 = 26;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"MessageIdHash"])
    {
      v4 = 38;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"GlobalMessageID"])
    {
      v4 = 37;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"ListIDHash"])
    {
      v4 = 39;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"DocumentID"])
    {
      v4 = 42;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"ToRecipient"])
    {
      v4 = 40;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"CcRecipient"])
    {
      v4 = 41;
      goto LABEL_79;
    }

    if ([v3 isEqualToString:@"DateLastViewed"])
    {
LABEL_22:
      v4 = 43;
    }

    else if ([v3 isEqualToString:@"CategoryType"])
    {
      v4 = 44;
    }

    else if ([v3 isEqualToString:@"CategoryUserOverrideType"])
    {
      v4 = 45;
    }

    else if ([v3 isEqualToString:@"ReadLater"])
    {
      v4 = 46;
    }

    else if ([v3 isEqualToString:@"FollowUpStartDate"])
    {
      v4 = 47;
    }

    else if ([v3 isEqualToString:@"FollowUpEndDate"])
    {
      v4 = 48;
    }

    else if ([v3 isEqualToString:@"SendLater"])
    {
      v4 = 49;
    }

    else if ([v3 isEqualToString:@"Unsubscribe"])
    {
      v4 = 50;
    }

    else if ([v3 isEqualToString:@"SenderBucket"])
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

+ (id)stringForCriterionType:(int64_t)a3
{
  if ((a3 - 1) > 0x32)
  {
    return 0;
  }

  else
  {
    return off_1E7AA4658[a3 - 1];
  }
}

- (void)setCriteria:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  criteria = self->_criteria;
  self->_criteria = v4;

  [(MFMessageCriterion *)self setCriterionType:25];
}

- (void)setDateIsRelative:(BOOL)a3
{
  if (a3)
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
  v3 = [(MFMessageCriterion *)self expression];
  [v3 doubleValue];
  v4 = [v2 dateWithTimeIntervalSince1970:?];

  return v4;
}

+ (id)expressionForDate:(id)a3
{
  v3 = MFCriterionExpressionForDate(a3);

  return v3;
}

+ (id)criterionForMailbox:(id)a3
{
  v4 = [a3 URLString];
  v5 = [a1 criterionForMailboxURL:v4];

  return v5;
}

+ (id)criterionForMailboxURL:(id)a3
{
  v3 = a3;
  v4 = [[MFMessageCriterion alloc] initWithType:23 qualifier:3 expression:v3];

  return v4;
}

+ (id)criterionForAccount:(id)a3
{
  v3 = a3;
  v4 = [MFMessageCriterion alloc];
  v5 = [v3 URLString];
  v6 = [(MFMessageCriterion *)v4 initWithType:23 qualifier:1 expression:v5];

  return v6;
}

+ (id)criterionExcludingMailboxes:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 ef_map:&__block_literal_global_338];
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

+ (id)messageIsDeletedCriterion:(BOOL)a3
{
  v3 = a3;
  v4 = [MFMessageCriterion alloc];
  if (v3)
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

+ (id)messageIsJournaledCriterion:(BOOL)a3
{
  v3 = a3;
  v4 = [MFMessageCriterion alloc];
  if (v3)
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

+ (id)criterionForNotDeletedConversationID:(int64_t)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = [MFMessageCriterion messageIsDeletedCriterion:0];
  v10[0] = v4;
  v5 = [MFMessageCriterion criterionForConversationID:a3];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [MFMessageCriterion andCompoundCriterionWithCriteria:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)criterionForConversationID:(int64_t)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", a3];
  v4 = [[MFMessageCriterion alloc] initWithType:34 qualifier:3 expression:v3];

  return v4;
}

+ (id)criterionForLibraryID:(id)a3
{
  v3 = a3;
  v4 = [[MFMessageCriterion alloc] initWithType:24 qualifier:3 expression:v3];

  return v4;
}

+ (id)criterionForDocumentID:(id)a3
{
  v3 = a3;
  v4 = [[MFMessageCriterion alloc] initWithType:42 qualifier:3 expression:v3];

  return v4;
}

+ (id)messageIsServerSearchResultCriterion:(BOOL)a3
{
  v3 = a3;
  v4 = [MFMessageCriterion alloc];
  if (v3)
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

+ (id)senderIsVIPCriterion:(BOOL)a3
{
  v3 = a3;
  v4 = [MFMessageCriterion alloc];
  if (v3)
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

+ (id)criterionForFlagColor:(unint64_t)a3
{
  v4 = [MFMessageCriterion alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v5 stringValue];
  v7 = [(MFMessageCriterion *)v4 initWithType:28 qualifier:3 expression:v6];

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

+ (id)messageCriterionForUnsubscribeTypeNotMatching:(int64_t)a3
{
  v4 = [MFMessageCriterion alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v5 stringValue];
  v7 = [(MFMessageCriterion *)v4 initWithType:50 qualifier:7 expression:v6];

  [(MFMessageCriterion *)v7 setName:@"UnsubscribeCriterion"];

  return v7;
}

+ (id)_todayDateComponents
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = objc_opt_new();
  v4 = [v2 components:542 fromDate:v3];

  return v4;
}

+ (id)_criterionForDateReceivedBetweenDateComponents:(id)a3 endDateComponents:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 dateFromComponents:v6];
  v9 = [v7 dateByAddingComponents:v5 toDate:v8 options:0];
  v10 = [MFMessageCriterion _criterionForDateReceivedBetween:v9 endDate:v8];

  return v10;
}

+ (id)_criterionForDateReceivedBetween:(id)a3 endDate:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MFMessageCriterion criterionForDateReceivedNewerThanDate:v5];
  v8 = [MFMessageCriterion criterionForDateReceivedOlderThanDate:v6];
  v13[0] = v7;
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [MFMessageCriterion andCompoundCriterionWithCriteria:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)criterionForDateReceivedOlderThanDate:(id)a3
{
  v4 = a3;
  v5 = [MFMessageCriterion alloc];
  v6 = [a1 expressionForDate:v4];
  v7 = [(MFMessageCriterion *)v5 initWithType:11 qualifier:5 expression:v6];

  return v7;
}

+ (id)criterionForDateReceivedNewerThanDate:(id)a3
{
  v4 = a3;
  v5 = [MFMessageCriterion alloc];
  v6 = [a1 expressionForDate:v4];
  v7 = [(MFMessageCriterion *)v5 initWithType:11 qualifier:6 expression:v6];

  return v7;
}

+ (id)notCriterionWithCriterion:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MFMessageCriterion);
    v8[0] = v3;
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

+ (id)andCompoundCriterionWithCriteria:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 lastObject];
    }

    else
    {
      v4 = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)v4 setCriterionType:25];
      [(MFMessageCriterion *)v4 setAllCriteriaMustBeSatisfied:1];
      [(MFMessageCriterion *)v4 setCriteria:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)orCompoundCriterionWithCriteria:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 lastObject];
    }

    else
    {
      v4 = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)v4 setCriterionType:25];
      [(MFMessageCriterion *)v4 setAllCriteriaMustBeSatisfied:0];
      [(MFMessageCriterion *)v4 setCriteria:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

+ (id)criterionForCategoryType:(unint64_t)a3
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
  v3 = [(MFMessageCriterion *)self criterionType];
  v4 = 1;
  v5 = v3 + 1;
  if ((v3 + 1) <= 0x34)
  {
    if (((1 << v5) & 0x1FFFFBF3FFFFF5) != 0)
    {
      return 0;
    }

    else if (((1 << v5) & 0xC000000) != 0)
    {
      v7 = [(MFMessageCriterion *)self criteria];
      v4 = [v7 ef_any:&__block_literal_global_347];
    }
  }

  return v4;
}

- (void)tokenizeUsingTokenizationHandler:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v6 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];
  v8 = [v7 length];

  if (!v8)
  {
    goto LABEL_5;
  }

  if (-[MFMessageCriterion qualifier](self, "qualifier") == 8 || (v9 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:v5], v9, v9))
  {
    v4[2](v4, v5);
LABEL_5:
    v10 = v5;
    goto LABEL_6;
  }

  v12 = MEMORY[0x1E695DF58];
  v13 = [(MFMessageCriterion *)self expressionLanguages];
  v14 = [v12 ef_localesFromLanguages:v13];

  v15 = [MEMORY[0x1E695DF58] preferredLanguages];
  v16 = [v5 ef_stringByRemovingUnbalancedQuotesForLanguages:v15];

  v17 = [v16 ef_stringByRemovingQuotedSubstringsForLocales:v14 tokenizationHandler:v4];

  if ([v17 length])
  {
    v10 = [v17 ef_stringByRemovingTokenizedLinksUsingTokenizationHandler:v4];

    if ([v10 length])
    {
      v18 = [v14 firstObject];
      v19 = [v10 ef_wordComponentsForLocale:v18 minimumWordLength:2];

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

            v4[2](v4, *(*(&v24 + 1) + 8 * v23++));
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

- (void)setIncludeRelatedMessages:(BOOL)a3
{
  if (a3)
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