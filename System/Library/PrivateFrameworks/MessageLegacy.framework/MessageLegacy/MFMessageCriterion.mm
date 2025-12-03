@interface MFMessageCriterion
+ (id)VIPSenderMessageCriterion;
+ (id)andCompoundCriterionWithCriteria:(id)criteria;
+ (id)ccMeCriterion;
+ (id)criterionExcludingMailboxes:(id)mailboxes;
+ (id)criterionForAccount:(id)account;
+ (id)criterionForConversationID:(int64_t)d;
+ (id)criterionForDateReceivedOlderThanDate:(id)date;
+ (id)criterionForLibraryID:(id)d;
+ (id)criterionForMailbox:(id)mailbox;
+ (id)criterionForMailboxURL:(id)l;
+ (id)criterionForNotDeletedConversationID:(int64_t)d;
+ (id)defaultsArrayFromCriteria:(id)criteria;
+ (id)expressionForDate:(id)date;
+ (id)flaggedMessageCriterion;
+ (id)hasAttachmentsCriterion;
+ (id)includesMeCriterion;
+ (id)messageIsDeletedCriterion:(BOOL)criterion;
+ (id)messageIsJournaledCriterion:(BOOL)criterion;
+ (id)messageIsServerSearchResultCriterion:(BOOL)criterion;
+ (id)notCriterionWithCriterion:(id)criterion;
+ (id)orCompoundCriterionWithCriteria:(id)criteria;
+ (id)readMessageCriterion;
+ (id)stringForCriterionType:(int64_t)type;
+ (id)threadMuteMessageCriterion;
+ (id)threadNotifyMessageCriterion;
+ (id)toMeCriterion;
+ (id)todayMessageCriterion;
+ (id)unreadMessageCriterion;
+ (int64_t)criterionTypeForString:(id)string;
+ (void)_updateAddressComments:(id)comments;
- (BOOL)_evaluateAttachmentCriterion:(id)criterion;
- (BOOL)_evaluateCompoundCriterion:(id)criterion;
- (BOOL)_evaluateConversationIDCriterion:(id)criterion;
- (BOOL)_evaluateDateCriterion:(id)criterion;
- (BOOL)_evaluateFlagCriterion:(id)criterion;
- (BOOL)_evaluateFullNameCriterion:(id)criterion;
- (BOOL)_evaluateHeaderCriterion:(id)criterion;
- (BOOL)_evaluateMailboxCriterion:(id)criterion;
- (BOOL)_evaluatePartOfStructure:(id)structure;
- (BOOL)_evaluateSenderHeaderCriterion:(id)criterion;
- (BOOL)doesMessageSatisfyCriterion:(id)criterion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isVIPCriterion;
- (MFMessageCriterion)init;
- (MFMessageCriterion)initWithCriterion:(id)criterion expression:(id)expression;
- (NSArray)criteria;
- (NSString)criterionIdentifier;
- (NSString)expression;
- (id)_headersRequiredForEvaluation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateFromExpression;
- (id)descriptionWithDepth:(unsigned int)depth;
- (id)dictionaryRepresentation;
- (id)simplifiedCriterion;
- (id)simplifyOnce;
- (id)stringForMessageRuleQualifier:(int)qualifier;
- (int)messageRuleQualifierForString:(id)string;
- (int64_t)criterionType;
- (unint64_t)hash;
- (void)dealloc;
- (void)setCriteria:(id)criteria;
- (void)setCriterionIdentifier:(id)identifier;
- (void)setDateIsRelative:(BOOL)relative;
- (void)setExpression:(id)expression;
- (void)setIncludeRelatedMessages:(BOOL)messages;
@end

@implementation MFMessageCriterion

+ (id)defaultsArrayFromCriteria:(id)criteria
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [criteria countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(criteria);
        }

        dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
        if (dictionaryRepresentation)
        {
          v10 = dictionaryRepresentation;
          if (!v6)
          {
            v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(criteria, "count")}];
          }

          [v6 addObject:v10];
        }
      }

      v5 = [criteria countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (MFMessageCriterion)init
{
  v7.receiver = self;
  v7.super_class = MFMessageCriterion;
  v2 = [(MFMessageCriterion *)&v7 init];
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    v5 = CFUUIDCreateString(v3, v4);

    v2->_uniqueId = &v5->isa;
    v2->_type = -1;
  }

  return v2;
}

- (MFMessageCriterion)initWithCriterion:(id)criterion expression:(id)expression
{
  v6 = [(MFMessageCriterion *)self init];
  v7 = v6;
  if (v6)
  {
    [(MFMessageCriterion *)v6 setCriterionIdentifier:criterion];
    [(MFMessageCriterion *)v7 setExpression:expression];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFMessageCriterion;
  [(MFMessageCriterion *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self != equal)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSString isEqualToString:](-[MFMessageCriterion criterionIdentifier](self, "criterionIdentifier"), "isEqualToString:", [equal criterionIdentifier]);
      if (!v5)
      {
        return v5;
      }

      qualifier = [(MFMessageCriterion *)self qualifier];
      if (qualifier != [equal qualifier])
      {
        goto LABEL_6;
      }

      includeRemoteBodyContent = [(MFMessageCriterion *)self includeRemoteBodyContent];
      if (includeRemoteBodyContent != [equal includeRemoteBodyContent])
      {
        goto LABEL_6;
      }

      if ([(MFMessageCriterion *)self criterionType]!= 24)
      {
        v5 = -[NSString isEqualToString:](-[MFMessageCriterion expression](self, "expression"), "isEqualToString:", [equal expression]);
        if (!v5)
        {
          return v5;
        }

        goto LABEL_13;
      }

      if (-[NSArray isEqualToArray:](-[MFMessageCriterion criteria](self, "criteria"), "isEqualToArray:", [equal criteria]))
      {
LABEL_13:
        LOBYTE(v5) = 1;
        return v5;
      }
    }

LABEL_6:
    LOBYTE(v5) = 0;
    return v5;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (unint64_t)hash
{
  if ([(MFMessageCriterion *)self criterionType]== 24)
  {
    criteria = [(MFMessageCriterion *)self criteria];
  }

  else
  {
    criteria = [(MFMessageCriterion *)self expression];
  }

  return [(NSArray *)criteria hash];
}

- (id)descriptionWithDepth:(unsigned int)depth
{
  depth = [MEMORY[0x277CCAB68] stringWithCapacity:4 * depth];
  if (depth)
  {
    depthCopy = depth;
    do
    {
      --depthCopy;
      [depth appendString:@"    "];
    }

    while (depthCopy);
  }

  if ([(MFMessageCriterion *)self criterionType]== 24)
  {
    criteria = [(MFMessageCriterion *)self criteria];
    string = [MEMORY[0x277CCAB68] string];
    v9 = [(NSArray *)criteria count];
    if (v9)
    {
      v10 = v9;
      [string appendString:@"\n"];
      v11 = v10 - 1;
      do
      {
        [string appendString:{objc_msgSend(-[NSArray objectAtIndex:](criteria, "objectAtIndex:", v11--), "descriptionWithDepth:", depth + 1)}];
      }

      while (v11 != -1);
    }

    else
    {
      [string appendString:@"(none)"];
    }

    v18 = MEMORY[0x277CCACA8];
    criterionIdentifier = [(MFMessageCriterion *)self criterionIdentifier];
    if ([(MFMessageCriterion *)self name])
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@  Name: %@\n", depth, -[MFMessageCriterion name](self, "name")];
    }

    else
    {
      v20 = &stru_2869ED3E0;
    }

    allCriteriaMustBeSatisfied = [(MFMessageCriterion *)self allCriteriaMustBeSatisfied];
    v22 = @"No";
    if (allCriteriaMustBeSatisfied)
    {
      v22 = @"Yes";
    }

    return [v18 stringWithFormat:@"%@Criterion: %@\n%@%@  All criteria must be satisfied: %@\n%@  Criteria: %@", depth, criterionIdentifier, v20, depth, v22, depth, string];
  }

  else if ([(MFMessageCriterion *)self criterionType]== 25)
  {
    if ([(NSArray *)[(MFMessageCriterion *)self criteria] count])
    {
      v12 = [-[NSArray firstObject](-[MFMessageCriterion criteria](self "criteria")];
    }

    else
    {
      v12 = 0;
    }

    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@Criterion: %@\n%@ Sub-Criterion: \n%@", depth, -[MFMessageCriterion criterionIdentifier](self, "criterionIdentifier"), depth, v12, v24, v25, v26];
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    criterionIdentifier2 = [(MFMessageCriterion *)self criterionIdentifier];
    _qualifierString = [(MFMessageCriterion *)self _qualifierString];
    expression = [(MFMessageCriterion *)self expression];
    if ([(MFMessageCriterion *)self name])
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@  Name: %@\n", depth, -[MFMessageCriterion name](self, "name")];
    }

    else
    {
      v17 = &stru_2869ED3E0;
    }

    return [v13 stringWithFormat:@"%@Criterion: %@\n%@  Qualifier: %@\n%@  Expression: %@\n%@", depth, criterionIdentifier2, depth, _qualifierString, depth, expression, v17];
  }
}

- (id)dictionaryRepresentation
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  _qualifierString = [(MFMessageCriterion *)self _qualifierString];
  [v3 setObject:self->_uniqueId forKey:@"CriterionUniqueId"];
  criterionIdentifier = self->_criterionIdentifier;
  if (criterionIdentifier && ![(NSString *)criterionIdentifier isEqualToString:&stru_2869ED3E0])
  {
    [v3 setObject:self->_criterionIdentifier forKey:@"Header"];
  }

  expression = self->_expression;
  if (expression && ![(NSString *)expression isEqualToString:&stru_2869ED3E0])
  {
    [v3 setObject:self->_expression forKey:@"Expression"];
  }

  if (_qualifierString && ([_qualifierString isEqualToString:&stru_2869ED3E0] & 1) == 0)
  {
    [v3 setObject:_qualifierString forKey:@"Qualifier"];
  }

  if ([(MFMessageCriterion *)self criterionType]== 7)
  {
    v7 = [MailAccount accountWithPath:self->_expression];
    if (v7)
    {
      v22 = @"Account";
      v23[0] = v7;
      [v3 setObject:objc_msgSend(+[MailAccount URLForInfo:](MailAccount forKey:{"URLForInfo:", objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v23, &v22, 1)), "absoluteString"), @"AccountURL"}];
    }
  }

  name = self->_name;
  if (name && ![(NSString *)name isEqualToString:&stru_2869ED3E0])
  {
    [v3 setObject:self->_name forKey:@"Name"];
  }

  if ([(MFMessageCriterion *)self criterionType]== 24)
  {
    if ([(NSArray *)self->_criteria count])
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_criteria, "count")}];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      criteria = self->_criteria;
      v11 = [(NSArray *)criteria countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(criteria);
            }

            [v9 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "dictionaryRepresentation")}];
          }

          v12 = [(NSArray *)criteria countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }

      [v3 setObject:v9 forKey:@"Criteria"];
    }

    [v3 mf_setBool:*(self + 68) & 1 forKey:@"AllCriteriaMustBeSatisfied"];
  }

  else if ([(MFMessageCriterion *)self criterionType]== 11 || [(MFMessageCriterion *)self criterionType]== 28)
  {
    [v3 mf_setBool:(*(self + 68) >> 1) & 1 forKey:@"DateIsRelative"];
    [v3 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%d", self->_dateUnitType), @"DateUnitType"}];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_alloc(objc_opt_class()) initWithType:-[MFMessageCriterion criterionType](self qualifier:"criterionType") expression:{-[MFMessageCriterion qualifier](self, "qualifier"), -[MFMessageCriterion expression](self, "expression")}];
  *(v5 + 8) = [(NSString *)self->_criterionIdentifier copyWithZone:zone];
  *(v5 + 32) = [(NSString *)self->_name copyWithZone:zone];
  *(v5 + 40) = [(NSString *)self->_uniqueId copyWithZone:zone];
  *(v5 + 56) = [(NSArray *)self->_criteria copyWithZone:zone];
  *(v5 + 72) = [(NSArray *)self->_requiredHeaders copyWithZone:zone];
  *(v5 + 64) = self->_dateUnitType;
  v6 = *(v5 + 68) & 0xFE | *(self + 68) & 1;
  *(v5 + 68) = v6;
  v7 = v6 & 0xFFFFFFFD | (2 * ((*(self + 68) >> 1) & 1));
  *(v5 + 68) = v7;
  *(v5 + 88) = self->_libraryIdentifiers;
  *(v5 + 80) = self->_preferFullTextSearch;
  *(v5 + 81) = self->_useFlaggedForUnreadCount;
  *(v5 + 68) = *(self + 68) & 4 | v7 & 0xFB;
  *(v5 + 82) = self->_expressionIsSanitized;
  *(v5 + 83) = self->_includeRemoteBodyContent;
  return v5;
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
  criterionIdentifier = self->_criterionIdentifier;
  v6 = [identifier caseInsensitiveCompare:@"To or Cc"];
  identifierCopy = @"AnyRecipient";
  if (v6)
  {
    identifierCopy = identifier;
  }

  self->_criterionIdentifier = identifierCopy;

  self->_type = -1;
}

- (NSString)expression
{
  result = self->_expression;
  if (!result)
  {
    result = [(NSIndexSet *)self->_libraryIdentifiers mf_commaSeparatedString];
    self->_expression = result;
  }

  return result;
}

- (void)setExpression:(id)expression
{
  expression = self->_expression;
  self->_expression = [expression copy];
}

- (id)_headersRequiredForEvaluation
{
  v26[5] = *MEMORY[0x277D85DE8];
  result = self->_requiredHeaders;
  if (!result)
  {
    _MFLockGlobalLock();
    if (self->_requiredHeaders)
    {
LABEL_26:
      _MFUnlockGlobalLock();
      result = self->_requiredHeaders;
      goto LABEL_27;
    }

    criterionType = [(MFMessageCriterion *)self criterionType];
    if (criterionType <= 18)
    {
      if ((criterionType - 14) < 2 || criterionType == 9)
      {
        v7 = *MEMORY[0x277D06F50];
        v26[0] = *MEMORY[0x277D07038];
        v26[1] = v7;
        v8 = *MEMORY[0x277D07008];
        v26[2] = *MEMORY[0x277D07028];
        v26[3] = v8;
        v26[4] = *MEMORY[0x277D06F48];
        v5 = MEMORY[0x277CBEA60];
        v6 = v26;
        v9 = 5;
LABEL_24:
        v11 = [v5 arrayWithObjects:v6 count:v9];
LABEL_25:
        self->_requiredHeaders = v11;
        goto LABEL_26;
      }
    }

    else
    {
      if ((criterionType - 19) < 3)
      {
        v23 = *MEMORY[0x277D07060];
        v5 = MEMORY[0x277CBEA60];
        v6 = &v23;
LABEL_23:
        v9 = 1;
        goto LABEL_24;
      }

      if (criterionType == 38)
      {
        v25 = *MEMORY[0x277D07038];
        v5 = MEMORY[0x277CBEA60];
        v6 = &v25;
        goto LABEL_23;
      }

      if (criterionType == 39)
      {
        v24 = *MEMORY[0x277D06F50];
        v5 = MEMORY[0x277CBEA60];
        v6 = &v24;
        goto LABEL_23;
      }
    }

    v10 = [(NSString *)[(MFMessageCriterion *)self criterionIdentifier] componentsSeparatedByString:@" or "];
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v10, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = [MEMORY[0x277D24F40] uniqueHeaderKeyStringForString:*(*(&v18 + 1) + 8 * i)];
          if (v16)
          {
            [v11 addObject:v16];
          }
        }

        v13 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    goto LABEL_25;
  }

LABEL_27:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)_updateAddressComments:(id)comments
{
  v16 = *MEMORY[0x277D85DE8];
  if (_allAddressComments)
  {
    [_allAddressComments removeAllObjects];
  }

  else
  {
    _allAddressComments = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v3 = [MailAccount allEmailAddressesIncludingFullUserName:1 includeReceiveAliases:1];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [objc_msgSend(*(*(&v11 + 1) + 8 * i) "mf_addressComment")];
        if (v8)
        {
          v9 = v8;
          if (![MailAccount accountContainingEmailAddress:v8])
          {
            [_allAddressComments addObject:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_evaluateCompoundCriterion:(id)criterion
{
  v19 = *MEMORY[0x277D85DE8];
  allCriteriaMustBeSatisfied = [(MFMessageCriterion *)self allCriteriaMustBeSatisfied];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  criteria = [(MFMessageCriterion *)self criteria];
  v7 = [(NSArray *)criteria countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(criteria);
      }

      v11 = [*(*(&v14 + 1) + 8 * v10) doesMessageSatisfyCriterion:criterion];
      if (allCriteriaMustBeSatisfied != v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSArray *)criteria countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_evaluateFlagCriterion:(id)criterion
{
  v11[1] = *MEMORY[0x277D85DE8];
  expression = [(MFMessageCriterion *)self expression];
  v11[0] = &unk_286A05370;
  v5 = MFMessageFlagsByApplyingDictionary(0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&expression count:1]);
  messageFlags = [criterion messageFlags];
  v7 = [(MFMessageCriterion *)self qualifier]== 3;
  v8 = *MEMORY[0x277D85DE8];
  return v7 ^ ((messageFlags & v5) == 0);
}

- (BOOL)_evaluateHeaderCriterion:(id)criterion
{
  v37 = *MEMORY[0x277D85DE8];
  expression = [(MFMessageCriterion *)self expression];
  qualifier = [(MFMessageCriterion *)self qualifier];
  if (qualifier == 3 || expression && [(NSString *)expression length])
  {
    headers = [criterion headers];
    v32 = 0u;
    v33 = 0u;
    v7 = qualifier == 4;
    v34 = 0u;
    v35 = 0u;
    obj = [(MFMessageCriterion *)self _headersRequiredForEvaluation];
    v28 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v28)
    {
      v27 = *v33;
      LOBYTE(v8) = 1;
LABEL_6:
      v9 = 0;
      while (1)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        if ((v8 & 1) == 0)
        {
          break;
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = [headers copyHeadersForKey:v10];
        v31 = [MEMORY[0x277D24F40] isStructuredHeaderKey:v10];
        v12 = [v11 count];
        v13 = v12;
        v29 = v9;
        if (qualifier != 3 || v12)
        {
          if (v12)
          {
            v14 = 0;
            v30 = v11;
            while (1)
            {
              v15 = [v11 objectAtIndex:v14];
              if (v15 && (v16 = v15, [(NSString *)expression length]))
              {
                if (v31)
                {
                  v17 = [objc_msgSend(MEMORY[0x277D24F40] addressListFromEncodedString:{v16), "ef_flatMap:", &__block_literal_global_6}];
                }

                else
                {
                  v17 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v16, 0}];
                }

                v18 = v17;
                v19 = [v17 count];
                if (v19)
                {
                  v20 = v19;
                  v21 = 1;
                  do
                  {
                    v22 = -[MFMessageCriterion _evaluatePartOfStructure:](self, "_evaluatePartOfStructure:", [v18 objectAtIndex:v21 - 1]);
                    if (qualifier == 4)
                    {
                      v8 = v22;
                    }

                    else
                    {
                      v8 = !v22;
                    }

                    if (qualifier == 4)
                    {
                      v7 &= v22;
                    }

                    else
                    {
                      v7 = v22;
                    }

                    if (v21 >= v20)
                    {
                      break;
                    }

                    ++v21;
                  }

                  while ((v8 & 1) != 0);
                }

                else
                {
                  v8 = 1;
                }

                v11 = v30;
                if (!v8)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                LOBYTE(v8) = 1;
              }

              if (++v14 >= v13)
              {
                goto LABEL_37;
              }
            }
          }
        }

        else
        {
          v7 |= [(NSString *)expression length]== 0;
        }

        LOBYTE(v8) = 1;
LABEL_37:

        v9 = v29 + 1;
        if (v29 + 1 == v28)
        {
          v28 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v28)
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

  v23 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t __47__MFMessageCriterion__evaluateHeaderCriterion___block_invoke(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [a2 mf_addressComment];
  v4 = [a2 mf_uncommentedAddress];
  if (v4 && v3)
  {
    v12[0] = v4;
    v12[1] = v3;
    v5 = MEMORY[0x277CBEA60];
    v6 = v12;
    v7 = 2;
  }

  else
  {
    if (v4)
    {
      v11 = v4;
      v5 = MEMORY[0x277CBEA60];
      v6 = &v11;
    }

    else
    {
      if (!v3)
      {
        result = MEMORY[0x277CBEBF8];
        goto LABEL_10;
      }

      v10 = v3;
      v5 = MEMORY[0x277CBEA60];
      v6 = &v10;
    }

    v7 = 1;
  }

  result = [v5 arrayWithObjects:v6 count:v7];
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_evaluateSenderHeaderCriterion:(id)criterion
{
  firstSender = [criterion firstSender];
  mf_addressComment = [firstSender mf_addressComment];
  if (-[MFMessageCriterion _evaluatePartOfStructure:](self, "_evaluatePartOfStructure:", [firstSender mf_uncommentedAddress]))
  {
    return 1;
  }

  return [(MFMessageCriterion *)self _evaluatePartOfStructure:mf_addressComment];
}

- (BOOL)_evaluatePartOfStructure:(id)structure
{
  if (structure)
  {
    expression = [(MFMessageCriterion *)self expression];
    qualifier = [(MFMessageCriterion *)self qualifier];
    if (qualifier > 2)
    {
      switch(qualifier)
      {
        case 7:
          return [structure localizedCaseInsensitiveCompare:expression] != 0;
        case 4:
          v9 = 1;
LABEL_18:
          v10 = 385;
          goto LABEL_19;
        case 3:
          return [structure localizedCaseInsensitiveCompare:expression] == 0;
      }

LABEL_17:
      v9 = 0;
      goto LABEL_18;
    }

    if (qualifier == 1)
    {
      v9 = 0;
      v10 = 393;
    }

    else
    {
      if (qualifier != 2)
      {
        goto LABEL_17;
      }

      v9 = 0;
      v10 = 397;
    }

LABEL_19:
    v11 = [structure length];
    return v9 ^ ([structure rangeOfString:expression options:v10 range:0 locale:{v11, objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale")}] != 0x7FFFFFFFFFFFFFFFLL);
  }

  return [(MFMessageCriterion *)self qualifier]== 4;
}

- (BOOL)_evaluateFullNameCriterion:(id)criterion
{
  v48 = *MEMORY[0x277D85DE8];
  headers = [criterion headers];
  array = [MEMORY[0x277CBEB18] array];
  copyAddressListForTo = [headers copyAddressListForTo];
  if ([copyAddressListForTo count])
  {
    [array addObjectsFromArray:copyAddressListForTo];
  }

  copyAddressListForCc = [headers copyAddressListForCc];
  if ([copyAddressListForCc count])
  {
    [array addObjectsFromArray:copyAddressListForCc];
  }

  array2 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = [array countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(array);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [objc_msgSend(v14 "mf_addressComment")];
        if (v15)
        {
          v16 = v15;
          if ([v14 caseInsensitiveCompare:v15])
          {
            [array2 addObject:v16];
          }
        }
      }

      v11 = [array countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v11);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = _allAddressComments;
  v18 = [_allAddressComments countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * j);
        v23 = [array2 count];
        if (v23)
        {
          v24 = v23 - 1;
          while (![objc_msgSend(array2 objectAtIndex:{v24), "isEqualToString:", v22}])
          {
            if (v24-- == 0)
            {
              goto LABEL_27;
            }
          }

          v28 = MFLogGeneral();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v32 = [objc_msgSend(criterion "subject")];
            uTF8String = [v22 UTF8String];
            *buf = 138543618;
            v43 = v32;
            v44 = 2080;
            v45 = uTF8String;
            _os_log_debug_impl(&dword_258BDA000, v28, OS_LOG_TYPE_DEBUG, "[LogJunkMailActivity] '%{public}@' is addressed to known full name '%s'", buf, 0x16u);
          }

          v27 = 1;
          goto LABEL_34;
        }

LABEL_27:
        ;
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
      v27 = 0;
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_34:
  v29 = [(MFMessageCriterion *)self criterionType]!= 14;
  v30 = *MEMORY[0x277D85DE8];
  return v27 ^ v29;
}

- (BOOL)_evaluateAttachmentCriterion:(id)criterion
{
  v24 = *MEMORY[0x277D85DE8];
  expression = [(MFMessageCriterion *)self expression];
  if (expression)
  {
    v6 = expression;
    if (-[NSString isEqualToString:](expression, "isEqualToString:", &stru_2869ED3E0) || (v7 = [criterion messageBodyUpdatingFlags:0], v8 = +[MFActivityMonitor currentMonitor](MFActivityMonitor, "currentMonitor"), v9 = objc_msgSend(v8, "error"), objc_msgSend(v8, "setError:", 0), objc_msgSend(criterion, "calculateAttachmentInfoFromBody:", v7), v10 = objc_msgSend(objc_msgSend(v8, "error"), "code"), objc_msgSend(v8, "setError:", v9), (v10 - 1037) > 0xFFFFFFFFFFFFFFFDLL))
    {
      LOBYTE(expression) = 0;
    }

    else
    {
      expression = [criterion numberOfAttachments];
      if (expression)
      {
        qualifier = [(MFMessageCriterion *)self qualifier];
        attachments = [v7 attachments];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        expression = [attachments countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (expression)
        {
          v13 = expression;
          v14 = *v20;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(attachments);
              }

              v16 = [objc_msgSend(*(*(&v19 + 1) + 8 * i) "mimePart")];
              switch(qualifier)
              {
                case 3:
                  if ([v16 isEqualToString:v6])
                  {
LABEL_23:
                    LOBYTE(expression) = 1;
                    goto LABEL_22;
                  }

                  break;
                case 2:
                  if ([v16 hasSuffix:v6])
                  {
                    goto LABEL_23;
                  }

                  break;
                case 1:
                  if ([v16 hasPrefix:v6])
                  {
                    goto LABEL_23;
                  }

                  break;
                default:
                  LOBYTE(expression) = qualifier == 4 * ([v16 rangeOfString:v6 options:1] == 0x7FFFFFFFFFFFFFFFLL);
                  goto LABEL_22;
              }
            }

            v13 = [attachments countByEnumeratingWithState:&v19 objects:v23 count:16];
            LOBYTE(expression) = 0;
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

LABEL_22:
  v17 = *MEMORY[0x277D85DE8];
  return expression;
}

- (BOOL)_evaluateDateCriterion:(id)criterion
{
  expression = [(MFMessageCriterion *)self expression];
  qualifier = [(MFMessageCriterion *)self qualifier];
  criterionType = [(MFMessageCriterion *)self criterionType];
  if (!expression)
  {
    return 0;
  }

  v8 = criterionType;
  if ([(NSString *)expression intValue]< 1)
  {
    return 0;
  }

  if (v8 == 11)
  {
    dateReceived = [criterion dateReceived];
  }

  else
  {
    if (v8 != 10)
    {
      return 0;
    }

    dateReceived = [criterion dateSent];
  }

  [dateReceived timeIntervalSince1970];
  v11 = v10;
  [(NSString *)expression doubleValue];
  if (qualifier == 6)
  {
    return v11 >= v12;
  }

  return qualifier == 5 && v11 <= v12;
}

- (BOOL)_evaluateConversationIDCriterion:(id)criterion
{
  v14 = *MEMORY[0x277D85DE8];
  longLongValue = [(NSString *)[(MFMessageCriterion *)self expression] longLongValue];
  if ([(MFMessageCriterion *)self qualifier]== 3)
  {
    result = [criterion conversationID] == longLongValue;
  }

  else if ([(MFMessageCriterion *)self qualifier]== 7)
  {
    result = [criterion conversationID] != longLongValue;
  }

  else
  {
    v7 = MFLogGeneral();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v8)
    {
      v10 = 134218240;
      qualifier = [(MFMessageCriterion *)self qualifier];
      v12 = 2048;
      criterionType = [(MFMessageCriterion *)self criterionType];
      _os_log_impl(&dword_258BDA000, v7, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled qualifier %ld for type %ld", &v10, 0x16u);
      result = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_evaluateMailboxCriterion:(id)criterion
{
  if ([(MFMessageCriterion *)self qualifier]!= 3)
  {
    return 0;
  }

  expression = [(MFMessageCriterion *)self expression];
  originalMailboxURL = [criterion originalMailboxURL];

  return [(NSString *)expression isEqualToString:originalMailboxURL];
}

- (BOOL)doesMessageSatisfyCriterion:(id)criterion
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [(MFMessageCriterion *)self criterionType]- 1;
  result = 1;
  switch(v5)
  {
    case 0:
    case 8:
    case 37:
    case 38:
      v7 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateHeaderCriterion:criterion];
      break;
    case 2:
    case 3:
      v9 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateAddressBookCriterion:criterion];
      break;
    case 6:
      v18 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateAccountCriterion:criterion];
      break;
    case 7:
      goto LABEL_55;
    case 9:
    case 10:
      v8 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateDateCriterion:criterion];
      break;
    case 11:
    case 12:
      v10 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateAddressHistoryCriterion:criterion];
      break;
    case 13:
    case 14:
      v11 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateFullNameCriterion:criterion];
      break;
    case 15:
      v19 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateIsDigitallySignedCriterion:criterion];
      break;
    case 16:
      v20 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateIsEncryptedCriterion:criterion];
      break;
    case 17:
      v22 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateAttachmentCriterion:criterion];
      break;
    case 18:
      v21 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluatePriorityIsHighCriterion:criterion];
      break;
    case 19:
      v12 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluatePriorityIsNormalCriterion:criterion];
      break;
    case 20:
      v16 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluatePriorityIsLowCriterion:criterion];
      break;
    case 21:
      v23 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateMailboxCriterion:criterion];
      break;
    case 23:
      v13 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateCompoundCriterion:criterion];
      break;
    case 25:
      v15 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateFlagCriterion:criterion];
      break;
    case 32:
      v14 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateConversationIDCriterion:criterion];
      break;
    case 33:
      v17 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateSenderHeaderCriterion:criterion];
      break;
    default:
      v24 = MFLogGeneral();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v25)
      {
        v27 = 134217984;
        criterionType = [(MFMessageCriterion *)self criterionType];
        _os_log_impl(&dword_258BDA000, v24, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled criterion type %ld", &v27, 0xCu);
        result = 0;
      }

LABEL_55:
      v26 = *MEMORY[0x277D85DE8];
      break;
  }

  return result;
}

- (int)messageRuleQualifierForString:(id)string
{
  if ([string isEqualToString:@"BeginsWith"])
  {
    return 1;
  }

  if ([string isEqualToString:@"EndsWith"])
  {
    return 2;
  }

  if ([string isEqualToString:@"IsEqualTo"])
  {
    return 3;
  }

  if ([string isEqualToString:@"IsNotEqualTo"])
  {
    return 7;
  }

  if ([string isEqualToString:@"DoesNotContain"])
  {
    return 4;
  }

  if ([string isEqualToString:@"IsLessThan"])
  {
    return 5;
  }

  if ([string isEqualToString:@"IsGreaterThan"])
  {
    return 6;
  }

  if ([string isEqualToString:@"ASCIIContains"])
  {
    return 8;
  }

  return 0;
}

- (id)stringForMessageRuleQualifier:(int)qualifier
{
  if (qualifier > 8)
  {
    return 0;
  }

  else
  {
    return off_2798B6AB8[qualifier];
  }
}

+ (int64_t)criterionTypeForString:(id)string
{
  if ([string isEqualToString:@"Header"])
  {
    return 1;
  }

  if ([string isEqualToString:@"Body"])
  {
    return 2;
  }

  if ([string isEqualToString:@"SenderIsInAddressBook"])
  {
    return 3;
  }

  if ([string isEqualToString:@"SenderIsNotInAddressBook"])
  {
    return 4;
  }

  if ([string isEqualToString:@"SenderHeader"])
  {
    return 34;
  }

  if ([string isEqualToString:@"Account"])
  {
    return 7;
  }

  if ([string isEqualToString:@"AnyMessage"])
  {
    return 8;
  }

  if ([string isEqualToString:@"AnyRecipient"])
  {
    return 9;
  }

  if ([string isEqualToString:@"DateReceived"])
  {
    return 11;
  }

  if ([string isEqualToString:@"DateLastViewed"])
  {
    return 28;
  }

  if ([string isEqualToString:@"DateSent"])
  {
    return 10;
  }

  if ([string isEqualToString:@"SenderIsInAddressHistory"])
  {
    return 12;
  }

  if ([string isEqualToString:@"SenderIsNotInAddressHistory"])
  {
    return 13;
  }

  if ([string isEqualToString:@"AnyRecipientIncludesFullName"])
  {
    return 14;
  }

  if ([string isEqualToString:@"NoRecipientIncludesFullName"])
  {
    return 15;
  }

  if ([string isEqualToString:@"IsDigitallySigned"])
  {
    return 16;
  }

  if ([string isEqualToString:@"IsEncrypted"])
  {
    return 17;
  }

  if ([string isEqualToString:@"PriorityIsNormal"])
  {
    return 20;
  }

  if ([string isEqualToString:@"PriorityIsHigh"])
  {
    return 19;
  }

  if ([string isEqualToString:@"PriorityIsLow"])
  {
    return 21;
  }

  if ([string isEqualToString:@"AnyAttachment"])
  {
    return 18;
  }

  if ([string isEqualToString:@"Mailbox"])
  {
    return 22;
  }

  if ([string isEqualToString:@"MessageNumber"])
  {
    return 23;
  }

  if ([string isEqualToString:@"ExternalID"])
  {
    return 35;
  }

  if ([string isEqualToString:@"Compound"])
  {
    return 24;
  }

  if ([string isEqualToString:@"Flag"])
  {
    return 26;
  }

  if ([string isEqualToString:@"NotInTrashMailbox"])
  {
    return 27;
  }

  if ([string isEqualToString:@"ContainsAttachments"])
  {
    return 29;
  }

  if ([string isEqualToString:@"SpotlightSearch"])
  {
    return 32;
  }

  if ([string isEqualToString:@"ConversationID"])
  {
    return 33;
  }

  if ([string isEqualToString:@"Negation"])
  {
    return 25;
  }

  if ([string isEqualToString:@"MessageIdHash"])
  {
    return 36;
  }

  if ([string isEqualToString:@"ListIDHash"])
  {
    return 37;
  }

  if ([string isEqualToString:@"ToRecipient"])
  {
    return 38;
  }

  if ([string isEqualToString:@"CcRecipient"])
  {
    return 39;
  }

  return 1;
}

+ (id)stringForCriterionType:(int64_t)type
{
  if ((type - 1) > 0x26)
  {
    return 0;
  }

  else
  {
    return off_2798B6B00[type - 1];
  }
}

- (NSArray)criteria
{
  v2 = self->_criteria;

  return v2;
}

- (void)setCriteria:(id)criteria
{
  criteria = self->_criteria;
  if (criteria != criteria)
  {

    self->_criteria = [criteria copy];
  }

  [(MFMessageCriterion *)self setCriterionType:24];
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

  *(self + 68) = *(self + 68) & 0xFD | v3;
}

- (id)dateFromExpression
{
  v2 = MEMORY[0x277CBEAA8];
  [(NSString *)[(MFMessageCriterion *)self expression] doubleValue];

  return [v2 dateWithTimeIntervalSince1970:?];
}

+ (id)expressionForDate:(id)date
{
  v3 = MEMORY[0x277CCACA8];
  [date timeIntervalSince1970];
  return [v3 stringWithFormat:@"%f", v4];
}

- (id)simplifyOnce
{
  if ([(MFMessageCriterion *)self criterionType]== 24 && (v3 = [(MFMessageCriterion *)self criteria], (v4 = [(NSArray *)v3 count]) != 0))
  {
    v5 = v4;
    if (v4 == 1)
    {
      v6 = [-[NSArray lastObject](v3 "lastObject")];
    }

    else
    {
      v6 = 0;
      array = 0;
      for (i = 0; i != v5; ++i)
      {
        v10 = [(NSArray *)v3 objectAtIndex:i];
        simplifiedCriterion = [v10 simplifiedCriterion];
        if ([simplifiedCriterion criterionType] == 24 && ((v12 = -[MFMessageCriterion allCriteriaMustBeSatisfied](self, "allCriteriaMustBeSatisfied"), v12 == objc_msgSend(simplifiedCriterion, "allCriteriaMustBeSatisfied")) || !objc_msgSend(objc_msgSend(simplifiedCriterion, "criteria"), "count")))
        {
          if (!v6)
          {
            v6 = objc_alloc_init(MFMessageCriterion);
            [(MFMessageCriterion *)v6 setCriterionType:24];
            [(MFMessageCriterion *)v6 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
            array = [MEMORY[0x277CBEB18] array];
            [array addObjectsFromArray:{-[NSArray subarrayWithRange:](v3, "subarrayWithRange:", 0, i)}];
          }

          [array addObjectsFromArray:{objc_msgSend(simplifiedCriterion, "criteria")}];
        }

        else
        {
          if (simplifiedCriterion != v10 && !v6)
          {
            v6 = objc_alloc_init(MFMessageCriterion);
            [(MFMessageCriterion *)v6 setCriterionType:24];
            [(MFMessageCriterion *)v6 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
            array = [MEMORY[0x277CBEB18] array];
            [array addObjectsFromArray:{-[NSArray subarrayWithRange:](v3, "subarrayWithRange:", 0, i)}];
          }

          [array addObject:simplifiedCriterion];
        }
      }

      if (v6)
      {
        [(MFMessageCriterion *)v6 setCriteria:array];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return v6;
  }

  else
  {
    return self;
  }
}

- (id)simplifiedCriterion
{
  v2 = 0;
  do
  {
    selfCopy = self;
    self = [(MFMessageCriterion *)self simplifyOnce];
    if (self == selfCopy)
    {
      break;
    }
  }

  while (v2++ < 0xA);
  selfCopy2 = self;

  return selfCopy2;
}

+ (id)criterionForMailbox:(id)mailbox
{
  uRLString = [mailbox URLString];

  return [self criterionForMailboxURL:uRLString];
}

+ (id)criterionForMailboxURL:(id)l
{
  v3 = [[MFMessageCriterion alloc] initWithType:22 qualifier:3 expression:l];

  return v3;
}

+ (id)criterionForAccount:(id)account
{
  v3 = -[MFMessageCriterion initWithType:qualifier:expression:]([MFMessageCriterion alloc], "initWithType:qualifier:expression:", 22, 1, [account URLString]);

  return v3;
}

+ (id)criterionExcludingMailboxes:(id)mailboxes
{
  result = [mailboxes count];
  if (result)
  {
    v5 = +[MFMessageCriterion orCompoundCriterionWithCriteria:](MFMessageCriterion, "orCompoundCriterionWithCriteria:", [mailboxes ef_map:&__block_literal_global_265]);

    return [MFMessageCriterion notCriterionWithCriterion:v5];
  }

  return result;
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

  v6 = [(MFMessageCriterion *)v4 initWithType:26 qualifier:v5 expression:@"MessageIsDeleted"];

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

  v6 = [(MFMessageCriterion *)v4 initWithType:26 qualifier:v5 expression:@"MessageIsJournaled"];

  return v6;
}

+ (id)criterionForNotDeletedConversationID:(int64_t)d
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = [MFMessageCriterion messageIsDeletedCriterion:0];
  v6[1] = [MFMessageCriterion criterionForConversationID:d];
  result = +[MFMessageCriterion andCompoundCriterionWithCriteria:](MFMessageCriterion, "andCompoundCriterionWithCriteria:", [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)criterionForConversationID:(int64_t)d
{
  v3 = -[MFMessageCriterion initWithType:qualifier:expression:]([MFMessageCriterion alloc], "initWithType:qualifier:expression:", 33, 3, [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", d]);

  return v3;
}

+ (id)criterionForLibraryID:(id)d
{
  v3 = [[MFMessageCriterion alloc] initWithType:23 qualifier:3 expression:d];

  return v3;
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

  v6 = [(MFMessageCriterion *)v4 initWithType:26 qualifier:v5 expression:@"MessageIsServerSearchResult"];

  return v6;
}

+ (id)VIPSenderMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageSenderIsVIP"];
  [(MFMessageCriterion *)v2 setName:@"VIPCriterion"];

  return v2;
}

- (BOOL)isVIPCriterion
{
  if ([(MFMessageCriterion *)self criterionType]!= 26)
  {
    return 0;
  }

  expression = [(MFMessageCriterion *)self expression];

  return [(NSString *)expression isEqualToString:@"MessageSenderIsVIP"];
}

+ (id)threadNotifyMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageConversationIsVIP"];
  [(MFMessageCriterion *)v2 setName:@"ThreadNotifyCriterionName"];

  return v2;
}

+ (id)threadMuteMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageConversationIsMuted"];
  [(MFMessageCriterion *)v2 setName:@"ThreadMuteCriterionName"];

  return v2;
}

+ (id)flaggedMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageIsFlagged"];
  [(MFMessageCriterion *)v2 setUseFlaggedForUnreadCount:1];
  [(MFMessageCriterion *)v2 setName:@"FlaggedCriterion"];

  return v2;
}

+ (id)unreadMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:7 expression:@"MessageIsRead"];
  [(MFMessageCriterion *)v2 setName:@"UnreadCriterion"];

  return v2;
}

+ (id)readMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageIsRead"];
  [(MFMessageCriterion *)v2 setName:@"ReadCriterion"];

  return v2;
}

+ (id)includesMeCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageToOrCcContainsAccountAddress"];
  [(MFMessageCriterion *)v2 setName:@"IncludesMeCriterion"];

  return v2;
}

+ (id)toMeCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageToContainsAccountAddress"];
  [(MFMessageCriterion *)v2 setName:@"ToMeCriterionName"];

  return v2;
}

+ (id)ccMeCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageCcContainsAccountAddress"];
  [(MFMessageCriterion *)v2 setName:@"CcMeCriterionName"];

  return v2;
}

+ (id)hasAttachmentsCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MFMessageHasAttachments"];
  [(MFMessageCriterion *)v2 setName:@"HasAttachmentsCriterion"];

  return v2;
}

+ (id)todayMessageCriterion
{
  v2 = [MFMessageCriterion alloc];
  v3 = -[MFMessageCriterion initWithType:qualifier:expression:](v2, "initWithType:qualifier:expression:", 11, 5, [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1]);
  [(MFMessageCriterion *)v3 setDateUnits:1];
  [(MFMessageCriterion *)v3 setDateIsRelative:1];
  [(MFMessageCriterion *)v3 setName:@"TodayCriterion"];

  return v3;
}

+ (id)criterionForDateReceivedOlderThanDate:(id)date
{
  v3 = -[MFMessageCriterion initWithType:qualifier:expression:]([MFMessageCriterion alloc], "initWithType:qualifier:expression:", 11, 5, [self expressionForDate:date]);

  return v3;
}

+ (id)notCriterionWithCriterion:(id)criterion
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (criterion)
  {
    v4 = objc_alloc_init(MFMessageCriterion);
    v7[0] = criterion;
    -[MFMessageCriterion setCriteria:](v4, "setCriteria:", [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1]);
    [(MFMessageCriterion *)v4 setCriterionType:25];
    result = v4;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)andCompoundCriterionWithCriteria:(id)criteria
{
  result = [criteria count];
  if (result)
  {
    if ([criteria count] == 1)
    {
      lastObject = [criteria lastObject];
    }

    else
    {
      lastObject = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)lastObject setCriterionType:24];
      [(MFMessageCriterion *)lastObject setAllCriteriaMustBeSatisfied:1];
      [(MFMessageCriterion *)lastObject setCriteria:criteria];
    }

    return lastObject;
  }

  return result;
}

+ (id)orCompoundCriterionWithCriteria:(id)criteria
{
  result = [criteria count];
  if (result)
  {
    if ([criteria count] == 1)
    {
      lastObject = [criteria lastObject];
    }

    else
    {
      lastObject = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)lastObject setCriterionType:24];
      [(MFMessageCriterion *)lastObject setAllCriteriaMustBeSatisfied:0];
      [(MFMessageCriterion *)lastObject setCriteria:criteria];
    }

    return lastObject;
  }

  return result;
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

  *(self + 68) = *(self + 68) & 0xFB | v3;
}

@end