@interface MFMessageCriterion
+ (id)VIPSenderMessageCriterion;
+ (id)andCompoundCriterionWithCriteria:(id)a3;
+ (id)ccMeCriterion;
+ (id)criterionExcludingMailboxes:(id)a3;
+ (id)criterionForAccount:(id)a3;
+ (id)criterionForConversationID:(int64_t)a3;
+ (id)criterionForDateReceivedOlderThanDate:(id)a3;
+ (id)criterionForLibraryID:(id)a3;
+ (id)criterionForMailbox:(id)a3;
+ (id)criterionForMailboxURL:(id)a3;
+ (id)criterionForNotDeletedConversationID:(int64_t)a3;
+ (id)defaultsArrayFromCriteria:(id)a3;
+ (id)expressionForDate:(id)a3;
+ (id)flaggedMessageCriterion;
+ (id)hasAttachmentsCriterion;
+ (id)includesMeCriterion;
+ (id)messageIsDeletedCriterion:(BOOL)a3;
+ (id)messageIsJournaledCriterion:(BOOL)a3;
+ (id)messageIsServerSearchResultCriterion:(BOOL)a3;
+ (id)notCriterionWithCriterion:(id)a3;
+ (id)orCompoundCriterionWithCriteria:(id)a3;
+ (id)readMessageCriterion;
+ (id)stringForCriterionType:(int64_t)a3;
+ (id)threadMuteMessageCriterion;
+ (id)threadNotifyMessageCriterion;
+ (id)toMeCriterion;
+ (id)todayMessageCriterion;
+ (id)unreadMessageCriterion;
+ (int64_t)criterionTypeForString:(id)a3;
+ (void)_updateAddressComments:(id)a3;
- (BOOL)_evaluateAttachmentCriterion:(id)a3;
- (BOOL)_evaluateCompoundCriterion:(id)a3;
- (BOOL)_evaluateConversationIDCriterion:(id)a3;
- (BOOL)_evaluateDateCriterion:(id)a3;
- (BOOL)_evaluateFlagCriterion:(id)a3;
- (BOOL)_evaluateFullNameCriterion:(id)a3;
- (BOOL)_evaluateHeaderCriterion:(id)a3;
- (BOOL)_evaluateMailboxCriterion:(id)a3;
- (BOOL)_evaluatePartOfStructure:(id)a3;
- (BOOL)_evaluateSenderHeaderCriterion:(id)a3;
- (BOOL)doesMessageSatisfyCriterion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isVIPCriterion;
- (MFMessageCriterion)init;
- (MFMessageCriterion)initWithCriterion:(id)a3 expression:(id)a4;
- (NSArray)criteria;
- (NSString)criterionIdentifier;
- (NSString)expression;
- (id)_headersRequiredForEvaluation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dateFromExpression;
- (id)descriptionWithDepth:(unsigned int)a3;
- (id)dictionaryRepresentation;
- (id)simplifiedCriterion;
- (id)simplifyOnce;
- (id)stringForMessageRuleQualifier:(int)a3;
- (int)messageRuleQualifierForString:(id)a3;
- (int64_t)criterionType;
- (unint64_t)hash;
- (void)dealloc;
- (void)setCriteria:(id)a3;
- (void)setCriterionIdentifier:(id)a3;
- (void)setDateIsRelative:(BOOL)a3;
- (void)setExpression:(id)a3;
- (void)setIncludeRelatedMessages:(BOOL)a3;
@end

@implementation MFMessageCriterion

+ (id)defaultsArrayFromCriteria:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
        if (v9)
        {
          v10 = v9;
          if (!v6)
          {
            v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
          }

          [v6 addObject:v10];
        }
      }

      v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (MFMessageCriterion)initWithCriterion:(id)a3 expression:(id)a4
{
  v6 = [(MFMessageCriterion *)self init];
  v7 = v6;
  if (v6)
  {
    [(MFMessageCriterion *)v6 setCriterionIdentifier:a3];
    [(MFMessageCriterion *)v7 setExpression:a4];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFMessageCriterion;
  [(MFMessageCriterion *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSString isEqualToString:](-[MFMessageCriterion criterionIdentifier](self, "criterionIdentifier"), "isEqualToString:", [a3 criterionIdentifier]);
      if (!v5)
      {
        return v5;
      }

      v6 = [(MFMessageCriterion *)self qualifier];
      if (v6 != [a3 qualifier])
      {
        goto LABEL_6;
      }

      v7 = [(MFMessageCriterion *)self includeRemoteBodyContent];
      if (v7 != [a3 includeRemoteBodyContent])
      {
        goto LABEL_6;
      }

      if ([(MFMessageCriterion *)self criterionType]!= 24)
      {
        v5 = -[NSString isEqualToString:](-[MFMessageCriterion expression](self, "expression"), "isEqualToString:", [a3 expression]);
        if (!v5)
        {
          return v5;
        }

        goto LABEL_13;
      }

      if (-[NSArray isEqualToArray:](-[MFMessageCriterion criteria](self, "criteria"), "isEqualToArray:", [a3 criteria]))
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
    v3 = [(MFMessageCriterion *)self criteria];
  }

  else
  {
    v3 = [(MFMessageCriterion *)self expression];
  }

  return [(NSArray *)v3 hash];
}

- (id)descriptionWithDepth:(unsigned int)a3
{
  v5 = [MEMORY[0x277CCAB68] stringWithCapacity:4 * a3];
  if (a3)
  {
    v6 = a3;
    do
    {
      --v6;
      [v5 appendString:@"    "];
    }

    while (v6);
  }

  if ([(MFMessageCriterion *)self criterionType]== 24)
  {
    v7 = [(MFMessageCriterion *)self criteria];
    v8 = [MEMORY[0x277CCAB68] string];
    v9 = [(NSArray *)v7 count];
    if (v9)
    {
      v10 = v9;
      [v8 appendString:@"\n"];
      v11 = v10 - 1;
      do
      {
        [v8 appendString:{objc_msgSend(-[NSArray objectAtIndex:](v7, "objectAtIndex:", v11--), "descriptionWithDepth:", a3 + 1)}];
      }

      while (v11 != -1);
    }

    else
    {
      [v8 appendString:@"(none)"];
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [(MFMessageCriterion *)self criterionIdentifier];
    if ([(MFMessageCriterion *)self name])
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@  Name: %@\n", v5, -[MFMessageCriterion name](self, "name")];
    }

    else
    {
      v20 = &stru_2869ED3E0;
    }

    v21 = [(MFMessageCriterion *)self allCriteriaMustBeSatisfied];
    v22 = @"No";
    if (v21)
    {
      v22 = @"Yes";
    }

    return [v18 stringWithFormat:@"%@Criterion: %@\n%@%@  All criteria must be satisfied: %@\n%@  Criteria: %@", v5, v19, v20, v5, v22, v5, v8];
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

    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@Criterion: %@\n%@ Sub-Criterion: \n%@", v5, -[MFMessageCriterion criterionIdentifier](self, "criterionIdentifier"), v5, v12, v24, v25, v26];
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [(MFMessageCriterion *)self criterionIdentifier];
    v15 = [(MFMessageCriterion *)self _qualifierString];
    v16 = [(MFMessageCriterion *)self expression];
    if ([(MFMessageCriterion *)self name])
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@  Name: %@\n", v5, -[MFMessageCriterion name](self, "name")];
    }

    else
    {
      v17 = &stru_2869ED3E0;
    }

    return [v13 stringWithFormat:@"%@Criterion: %@\n%@  Qualifier: %@\n%@  Expression: %@\n%@", v5, v14, v5, v15, v5, v16, v17];
  }
}

- (id)dictionaryRepresentation
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v4 = [(MFMessageCriterion *)self _qualifierString];
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

  if (v4 && ([v4 isEqualToString:&stru_2869ED3E0] & 1) == 0)
  {
    [v3 setObject:v4 forKey:@"Qualifier"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_alloc(objc_opt_class()) initWithType:-[MFMessageCriterion criterionType](self qualifier:"criterionType") expression:{-[MFMessageCriterion qualifier](self, "qualifier"), -[MFMessageCriterion expression](self, "expression")}];
  *(v5 + 8) = [(NSString *)self->_criterionIdentifier copyWithZone:a3];
  *(v5 + 32) = [(NSString *)self->_name copyWithZone:a3];
  *(v5 + 40) = [(NSString *)self->_uniqueId copyWithZone:a3];
  *(v5 + 56) = [(NSArray *)self->_criteria copyWithZone:a3];
  *(v5 + 72) = [(NSArray *)self->_requiredHeaders copyWithZone:a3];
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

- (void)setCriterionIdentifier:(id)a3
{
  criterionIdentifier = self->_criterionIdentifier;
  v6 = [a3 caseInsensitiveCompare:@"To or Cc"];
  v7 = @"AnyRecipient";
  if (v6)
  {
    v7 = a3;
  }

  self->_criterionIdentifier = v7;

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

- (void)setExpression:(id)a3
{
  expression = self->_expression;
  self->_expression = [a3 copy];
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

    v4 = [(MFMessageCriterion *)self criterionType];
    if (v4 <= 18)
    {
      if ((v4 - 14) < 2 || v4 == 9)
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
      if ((v4 - 19) < 3)
      {
        v23 = *MEMORY[0x277D07060];
        v5 = MEMORY[0x277CBEA60];
        v6 = &v23;
LABEL_23:
        v9 = 1;
        goto LABEL_24;
      }

      if (v4 == 38)
      {
        v25 = *MEMORY[0x277D07038];
        v5 = MEMORY[0x277CBEA60];
        v6 = &v25;
        goto LABEL_23;
      }

      if (v4 == 39)
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

+ (void)_updateAddressComments:(id)a3
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

- (BOOL)_evaluateCompoundCriterion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(MFMessageCriterion *)self allCriteriaMustBeSatisfied];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(MFMessageCriterion *)self criteria];
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v14 + 1) + 8 * v10) doesMessageSatisfyCriterion:a3];
      if (v5 != v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)_evaluateFlagCriterion:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = [(MFMessageCriterion *)self expression];
  v11[0] = &unk_286A05370;
  v5 = MFMessageFlagsByApplyingDictionary(0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1]);
  v6 = [a3 messageFlags];
  v7 = [(MFMessageCriterion *)self qualifier]== 3;
  v8 = *MEMORY[0x277D85DE8];
  return v7 ^ ((v6 & v5) == 0);
}

- (BOOL)_evaluateHeaderCriterion:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [(MFMessageCriterion *)self expression];
  v6 = [(MFMessageCriterion *)self qualifier];
  if (v6 == 3 || v5 && [(NSString *)v5 length])
  {
    v26 = [a3 headers];
    v32 = 0u;
    v33 = 0u;
    v7 = v6 == 4;
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
        v11 = [v26 copyHeadersForKey:v10];
        v31 = [MEMORY[0x277D24F40] isStructuredHeaderKey:v10];
        v12 = [v11 count];
        v13 = v12;
        v29 = v9;
        if (v6 != 3 || v12)
        {
          if (v12)
          {
            v14 = 0;
            v30 = v11;
            while (1)
            {
              v15 = [v11 objectAtIndex:v14];
              if (v15 && (v16 = v15, [(NSString *)v5 length]))
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
                    if (v6 == 4)
                    {
                      v8 = v22;
                    }

                    else
                    {
                      v8 = !v22;
                    }

                    if (v6 == 4)
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
          v7 |= [(NSString *)v5 length]== 0;
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

- (BOOL)_evaluateSenderHeaderCriterion:(id)a3
{
  v4 = [a3 firstSender];
  v5 = [v4 mf_addressComment];
  if (-[MFMessageCriterion _evaluatePartOfStructure:](self, "_evaluatePartOfStructure:", [v4 mf_uncommentedAddress]))
  {
    return 1;
  }

  return [(MFMessageCriterion *)self _evaluatePartOfStructure:v5];
}

- (BOOL)_evaluatePartOfStructure:(id)a3
{
  if (a3)
  {
    v5 = [(MFMessageCriterion *)self expression];
    v6 = [(MFMessageCriterion *)self qualifier];
    if (v6 > 2)
    {
      switch(v6)
      {
        case 7:
          return [a3 localizedCaseInsensitiveCompare:v5] != 0;
        case 4:
          v9 = 1;
LABEL_18:
          v10 = 385;
          goto LABEL_19;
        case 3:
          return [a3 localizedCaseInsensitiveCompare:v5] == 0;
      }

LABEL_17:
      v9 = 0;
      goto LABEL_18;
    }

    if (v6 == 1)
    {
      v9 = 0;
      v10 = 393;
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_17;
      }

      v9 = 0;
      v10 = 397;
    }

LABEL_19:
    v11 = [a3 length];
    return v9 ^ ([a3 rangeOfString:v5 options:v10 range:0 locale:{v11, objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale")}] != 0x7FFFFFFFFFFFFFFFLL);
  }

  return [(MFMessageCriterion *)self qualifier]== 4;
}

- (BOOL)_evaluateFullNameCriterion:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = [a3 headers];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v5 copyAddressListForTo];
  if ([v7 count])
  {
    [v6 addObjectsFromArray:v7];
  }

  v8 = [v5 copyAddressListForCc];
  if ([v8 count])
  {
    [v6 addObjectsFromArray:v8];
  }

  v9 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = [v6 countByEnumeratingWithState:&v38 objects:v47 count:16];
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
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [objc_msgSend(v14 "mf_addressComment")];
        if (v15)
        {
          v16 = v15;
          if ([v14 caseInsensitiveCompare:v15])
          {
            [v9 addObject:v16];
          }
        }
      }

      v11 = [v6 countByEnumeratingWithState:&v38 objects:v47 count:16];
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
        v23 = [v9 count];
        if (v23)
        {
          v24 = v23 - 1;
          while (![objc_msgSend(v9 objectAtIndex:{v24), "isEqualToString:", v22}])
          {
            if (v24-- == 0)
            {
              goto LABEL_27;
            }
          }

          v28 = MFLogGeneral();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v32 = [objc_msgSend(a3 "subject")];
            v33 = [v22 UTF8String];
            *buf = 138543618;
            v43 = v32;
            v44 = 2080;
            v45 = v33;
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

- (BOOL)_evaluateAttachmentCriterion:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(MFMessageCriterion *)self expression];
  if (v5)
  {
    v6 = v5;
    if (-[NSString isEqualToString:](v5, "isEqualToString:", &stru_2869ED3E0) || (v7 = [a3 messageBodyUpdatingFlags:0], v8 = +[MFActivityMonitor currentMonitor](MFActivityMonitor, "currentMonitor"), v9 = objc_msgSend(v8, "error"), objc_msgSend(v8, "setError:", 0), objc_msgSend(a3, "calculateAttachmentInfoFromBody:", v7), v10 = objc_msgSend(objc_msgSend(v8, "error"), "code"), objc_msgSend(v8, "setError:", v9), (v10 - 1037) > 0xFFFFFFFFFFFFFFFDLL))
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [a3 numberOfAttachments];
      if (v5)
      {
        v11 = [(MFMessageCriterion *)self qualifier];
        v12 = [v7 attachments];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v5 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v5)
        {
          v13 = v5;
          v14 = *v20;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = [objc_msgSend(*(*(&v19 + 1) + 8 * i) "mimePart")];
              switch(v11)
              {
                case 3:
                  if ([v16 isEqualToString:v6])
                  {
LABEL_23:
                    LOBYTE(v5) = 1;
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
                  LOBYTE(v5) = v11 == 4 * ([v16 rangeOfString:v6 options:1] == 0x7FFFFFFFFFFFFFFFLL);
                  goto LABEL_22;
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
            LOBYTE(v5) = 0;
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
  return v5;
}

- (BOOL)_evaluateDateCriterion:(id)a3
{
  v5 = [(MFMessageCriterion *)self expression];
  v6 = [(MFMessageCriterion *)self qualifier];
  v7 = [(MFMessageCriterion *)self criterionType];
  if (!v5)
  {
    return 0;
  }

  v8 = v7;
  if ([(NSString *)v5 intValue]< 1)
  {
    return 0;
  }

  if (v8 == 11)
  {
    v9 = [a3 dateReceived];
  }

  else
  {
    if (v8 != 10)
    {
      return 0;
    }

    v9 = [a3 dateSent];
  }

  [v9 timeIntervalSince1970];
  v11 = v10;
  [(NSString *)v5 doubleValue];
  if (v6 == 6)
  {
    return v11 >= v12;
  }

  return v6 == 5 && v11 <= v12;
}

- (BOOL)_evaluateConversationIDCriterion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(NSString *)[(MFMessageCriterion *)self expression] longLongValue];
  if ([(MFMessageCriterion *)self qualifier]== 3)
  {
    result = [a3 conversationID] == v5;
  }

  else if ([(MFMessageCriterion *)self qualifier]== 7)
  {
    result = [a3 conversationID] != v5;
  }

  else
  {
    v7 = MFLogGeneral();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v8)
    {
      v10 = 134218240;
      v11 = [(MFMessageCriterion *)self qualifier];
      v12 = 2048;
      v13 = [(MFMessageCriterion *)self criterionType];
      _os_log_impl(&dword_258BDA000, v7, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled qualifier %ld for type %ld", &v10, 0x16u);
      result = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_evaluateMailboxCriterion:(id)a3
{
  if ([(MFMessageCriterion *)self qualifier]!= 3)
  {
    return 0;
  }

  v5 = [(MFMessageCriterion *)self expression];
  v6 = [a3 originalMailboxURL];

  return [(NSString *)v5 isEqualToString:v6];
}

- (BOOL)doesMessageSatisfyCriterion:(id)a3
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

      result = [(MFMessageCriterion *)self _evaluateHeaderCriterion:a3];
      break;
    case 2:
    case 3:
      v9 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateAddressBookCriterion:a3];
      break;
    case 6:
      v18 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateAccountCriterion:a3];
      break;
    case 7:
      goto LABEL_55;
    case 9:
    case 10:
      v8 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateDateCriterion:a3];
      break;
    case 11:
    case 12:
      v10 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateAddressHistoryCriterion:a3];
      break;
    case 13:
    case 14:
      v11 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateFullNameCriterion:a3];
      break;
    case 15:
      v19 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateIsDigitallySignedCriterion:a3];
      break;
    case 16:
      v20 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateIsEncryptedCriterion:a3];
      break;
    case 17:
      v22 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateAttachmentCriterion:a3];
      break;
    case 18:
      v21 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluatePriorityIsHighCriterion:a3];
      break;
    case 19:
      v12 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluatePriorityIsNormalCriterion:a3];
      break;
    case 20:
      v16 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluatePriorityIsLowCriterion:a3];
      break;
    case 21:
      v23 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateMailboxCriterion:a3];
      break;
    case 23:
      v13 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateCompoundCriterion:a3];
      break;
    case 25:
      v15 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateFlagCriterion:a3];
      break;
    case 32:
      v14 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateConversationIDCriterion:a3];
      break;
    case 33:
      v17 = *MEMORY[0x277D85DE8];

      result = [(MFMessageCriterion *)self _evaluateSenderHeaderCriterion:a3];
      break;
    default:
      v24 = MFLogGeneral();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v25)
      {
        v27 = 134217984;
        v28 = [(MFMessageCriterion *)self criterionType];
        _os_log_impl(&dword_258BDA000, v24, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled criterion type %ld", &v27, 0xCu);
        result = 0;
      }

LABEL_55:
      v26 = *MEMORY[0x277D85DE8];
      break;
  }

  return result;
}

- (int)messageRuleQualifierForString:(id)a3
{
  if ([a3 isEqualToString:@"BeginsWith"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"EndsWith"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"IsEqualTo"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"IsNotEqualTo"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"DoesNotContain"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"IsLessThan"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"IsGreaterThan"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"ASCIIContains"])
  {
    return 8;
  }

  return 0;
}

- (id)stringForMessageRuleQualifier:(int)a3
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return off_2798B6AB8[a3];
  }
}

+ (int64_t)criterionTypeForString:(id)a3
{
  if ([a3 isEqualToString:@"Header"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"Body"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"SenderIsInAddressBook"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"SenderIsNotInAddressBook"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"SenderHeader"])
  {
    return 34;
  }

  if ([a3 isEqualToString:@"Account"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"AnyMessage"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"AnyRecipient"])
  {
    return 9;
  }

  if ([a3 isEqualToString:@"DateReceived"])
  {
    return 11;
  }

  if ([a3 isEqualToString:@"DateLastViewed"])
  {
    return 28;
  }

  if ([a3 isEqualToString:@"DateSent"])
  {
    return 10;
  }

  if ([a3 isEqualToString:@"SenderIsInAddressHistory"])
  {
    return 12;
  }

  if ([a3 isEqualToString:@"SenderIsNotInAddressHistory"])
  {
    return 13;
  }

  if ([a3 isEqualToString:@"AnyRecipientIncludesFullName"])
  {
    return 14;
  }

  if ([a3 isEqualToString:@"NoRecipientIncludesFullName"])
  {
    return 15;
  }

  if ([a3 isEqualToString:@"IsDigitallySigned"])
  {
    return 16;
  }

  if ([a3 isEqualToString:@"IsEncrypted"])
  {
    return 17;
  }

  if ([a3 isEqualToString:@"PriorityIsNormal"])
  {
    return 20;
  }

  if ([a3 isEqualToString:@"PriorityIsHigh"])
  {
    return 19;
  }

  if ([a3 isEqualToString:@"PriorityIsLow"])
  {
    return 21;
  }

  if ([a3 isEqualToString:@"AnyAttachment"])
  {
    return 18;
  }

  if ([a3 isEqualToString:@"Mailbox"])
  {
    return 22;
  }

  if ([a3 isEqualToString:@"MessageNumber"])
  {
    return 23;
  }

  if ([a3 isEqualToString:@"ExternalID"])
  {
    return 35;
  }

  if ([a3 isEqualToString:@"Compound"])
  {
    return 24;
  }

  if ([a3 isEqualToString:@"Flag"])
  {
    return 26;
  }

  if ([a3 isEqualToString:@"NotInTrashMailbox"])
  {
    return 27;
  }

  if ([a3 isEqualToString:@"ContainsAttachments"])
  {
    return 29;
  }

  if ([a3 isEqualToString:@"SpotlightSearch"])
  {
    return 32;
  }

  if ([a3 isEqualToString:@"ConversationID"])
  {
    return 33;
  }

  if ([a3 isEqualToString:@"Negation"])
  {
    return 25;
  }

  if ([a3 isEqualToString:@"MessageIdHash"])
  {
    return 36;
  }

  if ([a3 isEqualToString:@"ListIDHash"])
  {
    return 37;
  }

  if ([a3 isEqualToString:@"ToRecipient"])
  {
    return 38;
  }

  if ([a3 isEqualToString:@"CcRecipient"])
  {
    return 39;
  }

  return 1;
}

+ (id)stringForCriterionType:(int64_t)a3
{
  if ((a3 - 1) > 0x26)
  {
    return 0;
  }

  else
  {
    return off_2798B6B00[a3 - 1];
  }
}

- (NSArray)criteria
{
  v2 = self->_criteria;

  return v2;
}

- (void)setCriteria:(id)a3
{
  criteria = self->_criteria;
  if (criteria != a3)
  {

    self->_criteria = [a3 copy];
  }

  [(MFMessageCriterion *)self setCriterionType:24];
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

  *(self + 68) = *(self + 68) & 0xFD | v3;
}

- (id)dateFromExpression
{
  v2 = MEMORY[0x277CBEAA8];
  [(NSString *)[(MFMessageCriterion *)self expression] doubleValue];

  return [v2 dateWithTimeIntervalSince1970:?];
}

+ (id)expressionForDate:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  [a3 timeIntervalSince1970];
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
      v8 = 0;
      for (i = 0; i != v5; ++i)
      {
        v10 = [(NSArray *)v3 objectAtIndex:i];
        v11 = [v10 simplifiedCriterion];
        if ([v11 criterionType] == 24 && ((v12 = -[MFMessageCriterion allCriteriaMustBeSatisfied](self, "allCriteriaMustBeSatisfied"), v12 == objc_msgSend(v11, "allCriteriaMustBeSatisfied")) || !objc_msgSend(objc_msgSend(v11, "criteria"), "count")))
        {
          if (!v6)
          {
            v6 = objc_alloc_init(MFMessageCriterion);
            [(MFMessageCriterion *)v6 setCriterionType:24];
            [(MFMessageCriterion *)v6 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
            v8 = [MEMORY[0x277CBEB18] array];
            [v8 addObjectsFromArray:{-[NSArray subarrayWithRange:](v3, "subarrayWithRange:", 0, i)}];
          }

          [v8 addObjectsFromArray:{objc_msgSend(v11, "criteria")}];
        }

        else
        {
          if (v11 != v10 && !v6)
          {
            v6 = objc_alloc_init(MFMessageCriterion);
            [(MFMessageCriterion *)v6 setCriterionType:24];
            [(MFMessageCriterion *)v6 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
            v8 = [MEMORY[0x277CBEB18] array];
            [v8 addObjectsFromArray:{-[NSArray subarrayWithRange:](v3, "subarrayWithRange:", 0, i)}];
          }

          [v8 addObject:v11];
        }
      }

      if (v6)
      {
        [(MFMessageCriterion *)v6 setCriteria:v8];
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
    v3 = self;
    self = [(MFMessageCriterion *)self simplifyOnce];
    if (self == v3)
    {
      break;
    }
  }

  while (v2++ < 0xA);
  v5 = self;

  return v5;
}

+ (id)criterionForMailbox:(id)a3
{
  v4 = [a3 URLString];

  return [a1 criterionForMailboxURL:v4];
}

+ (id)criterionForMailboxURL:(id)a3
{
  v3 = [[MFMessageCriterion alloc] initWithType:22 qualifier:3 expression:a3];

  return v3;
}

+ (id)criterionForAccount:(id)a3
{
  v3 = -[MFMessageCriterion initWithType:qualifier:expression:]([MFMessageCriterion alloc], "initWithType:qualifier:expression:", 22, 1, [a3 URLString]);

  return v3;
}

+ (id)criterionExcludingMailboxes:(id)a3
{
  result = [a3 count];
  if (result)
  {
    v5 = +[MFMessageCriterion orCompoundCriterionWithCriteria:](MFMessageCriterion, "orCompoundCriterionWithCriteria:", [a3 ef_map:&__block_literal_global_265]);

    return [MFMessageCriterion notCriterionWithCriterion:v5];
  }

  return result;
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

  v6 = [(MFMessageCriterion *)v4 initWithType:26 qualifier:v5 expression:@"MessageIsDeleted"];

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

  v6 = [(MFMessageCriterion *)v4 initWithType:26 qualifier:v5 expression:@"MessageIsJournaled"];

  return v6;
}

+ (id)criterionForNotDeletedConversationID:(int64_t)a3
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = [MFMessageCriterion messageIsDeletedCriterion:0];
  v6[1] = [MFMessageCriterion criterionForConversationID:a3];
  result = +[MFMessageCriterion andCompoundCriterionWithCriteria:](MFMessageCriterion, "andCompoundCriterionWithCriteria:", [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)criterionForConversationID:(int64_t)a3
{
  v3 = -[MFMessageCriterion initWithType:qualifier:expression:]([MFMessageCriterion alloc], "initWithType:qualifier:expression:", 33, 3, [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", a3]);

  return v3;
}

+ (id)criterionForLibraryID:(id)a3
{
  v3 = [[MFMessageCriterion alloc] initWithType:23 qualifier:3 expression:a3];

  return v3;
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

  v3 = [(MFMessageCriterion *)self expression];

  return [(NSString *)v3 isEqualToString:@"MessageSenderIsVIP"];
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

+ (id)criterionForDateReceivedOlderThanDate:(id)a3
{
  v3 = -[MFMessageCriterion initWithType:qualifier:expression:]([MFMessageCriterion alloc], "initWithType:qualifier:expression:", 11, 5, [a1 expressionForDate:a3]);

  return v3;
}

+ (id)notCriterionWithCriterion:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = objc_alloc_init(MFMessageCriterion);
    v7[0] = a3;
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

+ (id)andCompoundCriterionWithCriteria:(id)a3
{
  result = [a3 count];
  if (result)
  {
    if ([a3 count] == 1)
    {
      v5 = [a3 lastObject];
    }

    else
    {
      v5 = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)v5 setCriterionType:24];
      [(MFMessageCriterion *)v5 setAllCriteriaMustBeSatisfied:1];
      [(MFMessageCriterion *)v5 setCriteria:a3];
    }

    return v5;
  }

  return result;
}

+ (id)orCompoundCriterionWithCriteria:(id)a3
{
  result = [a3 count];
  if (result)
  {
    if ([a3 count] == 1)
    {
      v5 = [a3 lastObject];
    }

    else
    {
      v5 = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)v5 setCriterionType:24];
      [(MFMessageCriterion *)v5 setAllCriteriaMustBeSatisfied:0];
      [(MFMessageCriterion *)v5 setCriteria:a3];
    }

    return v5;
  }

  return result;
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

  *(self + 68) = *(self + 68) & 0xFB | v3;
}

@end