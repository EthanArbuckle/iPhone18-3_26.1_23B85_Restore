@interface CSItemSummary(MailUIPredicates)
- (id)_datePredicate;
- (id)_flagStatusPredicate;
- (id)_messagePredicate;
- (id)_personPredicate;
- (id)_readStatusPredicate;
- (id)_senderContainsPredicate;
- (id)mui_messageListSearchPredicate;
- (void)_messagePredicate;
- (void)_personPredicate;
- (void)_senderContainsPredicate;
- (void)mui_messageListSearchPredicate;
@end

@implementation CSItemSummary(MailUIPredicates)

- (id)mui_messageListSearchPredicate
{
  type = [self type];
  v3 = [type isEqual:*MEMORY[0x277CC22F8]];

  if (v3)
  {
    _personPredicate = [self _personPredicate];
  }

  else
  {
    type2 = [self type];
    v6 = [type2 isEqual:*MEMORY[0x277CC2300]];

    if (v6)
    {
      _personPredicate = [self _datePredicate];
    }

    else
    {
      type3 = [self type];
      v8 = [type3 isEqual:*MEMORY[0x277CC2308]];

      if (v8)
      {
        _personPredicate = [self _messagePredicate];
      }

      else
      {
        type4 = [self type];
        v10 = [type4 isEqual:*MEMORY[0x277CC22F0]];

        if (v10)
        {
          _personPredicate = [self _attachmentPredicate];
        }

        else
        {
          v11 = [MEMORY[0x277CC3528] log];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [(CSItemSummary(MailUIPredicates) *)self mui_messageListSearchPredicate];
          }

          _personPredicate = 0;
        }
      }
    }
  }

  return _personPredicate;
}

- (id)_messagePredicate
{
  v12[2] = *MEMORY[0x277D85DE8];
  textQuery = [self textQuery];
  if ([textQuery length])
  {
    textScope = [self textScope];
    if (textScope == 2)
    {
      v4 = [MEMORY[0x277D06E10] spotlightBodySearchPredicateForValue:textQuery];
      goto LABEL_9;
    }

    if (textScope == 1)
    {
      v4 = [MEMORY[0x277D06E10] spotlightSubjectSearchPredicateForValue:textQuery operator:99];
LABEL_9:
      v6 = v4;
      goto LABEL_11;
    }

    v7 = MEMORY[0x277CCA920];
    v8 = [MEMORY[0x277D06E10] spotlightSubjectSearchPredicateForValue:textQuery operator:99];
    v12[0] = v8;
    v9 = [MEMORY[0x277D06E10] spotlightBodySearchPredicateForValue:textQuery];
    v12[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v6 = [v7 orPredicateWithSubpredicates:v10];
  }

  else
  {
    v5 = [MEMORY[0x277CC3528] log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CSItemSummary(MailUIPredicates) _messagePredicate];
    }

    v6 = 0;
  }

LABEL_11:

  return v6;
}

- (id)_personPredicate
{
  v17[1] = *MEMORY[0x277D85DE8];
  emailAddresses = [self emailAddresses];
  if ([emailAddresses count] || (objc_msgSend(self, "name"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, !v5))
  {
    v3 = 4;
  }

  else
  {
    name = [self name];
    v17[0] = name;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

    v3 = 99;
    emailAddresses = v7;
  }

  if (![emailAddresses count])
  {
    v9 = [MEMORY[0x277CC3528] log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CSItemSummary(MailUIPredicates) _personPredicate];
    }

    goto LABEL_22;
  }

  contactScope = [self contactScope];
  v9 = 0;
  if (contactScope > 1)
  {
    if (contactScope == 2)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __51__CSItemSummary_MailUIPredicates___personPredicate__block_invoke_2;
      v15[3] = &__block_descriptor_40_e31___NSPredicate_16__0__NSString_8l;
      v15[4] = v3;
      v10 = v15;
    }

    else
    {
      if (contactScope != 3)
      {
        goto LABEL_20;
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__CSItemSummary_MailUIPredicates___personPredicate__block_invoke_3;
      v14[3] = &__block_descriptor_40_e31___NSPredicate_16__0__NSString_8l;
      v14[4] = v3;
      v10 = v14;
    }

    goto LABEL_19;
  }

  if (contactScope)
  {
    if (contactScope != 1)
    {
      goto LABEL_20;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__CSItemSummary_MailUIPredicates___personPredicate__block_invoke;
    v16[3] = &__block_descriptor_40_e31___NSPredicate_16__0__NSString_8l;
    v16[4] = v3;
    v10 = v16;
LABEL_19:
    v9 = [emailAddresses ef_map:v10];
    goto LABEL_20;
  }

  v11 = [MEMORY[0x277CC3528] log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(CSItemSummary(MailUIPredicates) *)self _personPredicate];
  }

  v9 = 0;
LABEL_20:
  if ([v9 count])
  {
    v12 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v9];
    goto LABEL_23;
  }

LABEL_22:
  v12 = 0;
LABEL_23:

  return v12;
}

- (id)_senderContainsPredicate
{
  v11[2] = *MEMORY[0x277D85DE8];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    self = 0;
    goto LABEL_15;
  }

  senderContainsSearchString = [self senderContainsSearchString];
  if (![senderContainsSearchString length])
  {
    v5 = [MEMORY[0x277CC3528] log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CSItemSummary(MailUIPredicates) _senderContainsPredicate];
    }

    self = 0;
    goto LABEL_14;
  }

  senderContainsScope = [self senderContainsScope];
  switch(senderContainsScope)
  {
    case 2:
      v6 = MEMORY[0x277CCA920];
      v7 = [MEMORY[0x277D06E10] spotlightSenderSearchPredicateForValue:senderContainsSearchString operator:99];
      v11[0] = v7;
      v8 = [MEMORY[0x277D06E10] spotlightRecipientSearchPredicateForValue:senderContainsSearchString operator:99];
      v11[1] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
      self = [v6 orPredicateWithSubpredicates:v9];

      break;
    case 1:
      v4 = [MEMORY[0x277D06E10] spotlightRecipientSearchPredicateForValue:senderContainsSearchString operator:99];
      goto LABEL_12;
    case 0:
      v4 = [MEMORY[0x277D06E10] spotlightSenderSearchPredicateForValue:senderContainsSearchString operator:99];
LABEL_12:
      self = v4;
      break;
  }

LABEL_14:

LABEL_15:

  return self;
}

- (id)_datePredicate
{
  v20[2] = *MEMORY[0x277D85DE8];
  dateFrom = [self dateFrom];

  v3 = MEMORY[0x277D06BE8];
  if (dateFrom)
  {
    v4 = MEMORY[0x277CCA918];
    v5 = [MEMORY[0x277CCA9C0] expressionForKeyPath:*MEMORY[0x277D06BE8]];
    v6 = MEMORY[0x277CCA9C0];
    dateFrom2 = [self dateFrom];
    v8 = [v6 expressionForConstantValue:dateFrom2];
    dateFrom = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:2 options:0];
  }

  dateTo = [self dateTo];

  if (dateTo)
  {
    v10 = MEMORY[0x277CCA918];
    v11 = [MEMORY[0x277CCA9C0] expressionForKeyPath:*v3];
    v12 = MEMORY[0x277CCA9C0];
    dateTo2 = [self dateTo];
    v14 = [v12 expressionForConstantValue:dateTo2];
    v15 = [v10 predicateWithLeftExpression:v11 rightExpression:v14 modifier:0 type:0 options:0];

    if (dateFrom && v15)
    {
      v16 = MEMORY[0x277CCA920];
      v20[0] = dateFrom;
      v20[1] = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      v18 = [v16 andPredicateWithSubpredicates:v17];

      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
  }

  if (!dateFrom)
  {
    goto LABEL_11;
  }

  v18 = dateFrom;
LABEL_10:

  v15 = v18;
LABEL_11:

  return v15;
}

- (id)_readStatusPredicate
{
  statusValue = [self statusValue];
  if (statusValue == 2)
  {
    predicateForUnreadMessages = [MEMORY[0x277D06E08] predicateForUnreadMessages];
  }

  else if (statusValue == 1)
  {
    predicateForUnreadMessages = [MEMORY[0x277D06E08] predicateForReadMessages];
  }

  else
  {
    predicateForUnreadMessages = 0;
  }

  return predicateForUnreadMessages;
}

- (id)_flagStatusPredicate
{
  statusValue = [self statusValue];
  if (statusValue == 2)
  {
    predicateForUnflaggedMessages = [MEMORY[0x277D06E08] predicateForUnflaggedMessages];
  }

  else if (statusValue == 1)
  {
    predicateForUnflaggedMessages = [MEMORY[0x277D06E08] predicateForFlaggedMessages];
  }

  else
  {
    predicateForUnflaggedMessages = 0;
  }

  return predicateForUnflaggedMessages;
}

- (void)mui_messageListSearchPredicate
{
  type = [self type];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_messagePredicate
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214A5E000, v0, OS_LOG_TYPE_ERROR, "_CSSuggestionTokenKindMessage token:%@ does not have valid textQuery.", v1, 0xCu);
}

- (void)_personPredicate
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214A5E000, v0, OS_LOG_TYPE_ERROR, "_CSSuggestionTokenKindPerson token:%@ does not have valid email addresses.", v1, 0xCu);
}

- (void)_senderContainsPredicate
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_214A5E000, v1, OS_LOG_TYPE_ERROR, "_CSSuggestionTokenKindSenderContains token:%@ does not have valid senderContainsSearchString:%@.", v2, 0x16u);
}

@end