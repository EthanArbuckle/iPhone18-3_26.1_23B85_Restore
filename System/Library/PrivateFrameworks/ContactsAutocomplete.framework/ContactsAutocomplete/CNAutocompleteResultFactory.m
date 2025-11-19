@interface CNAutocompleteResultFactory
+ (CNAutocompleteResultFactory)factoryWithPriorityDomain:(id)a3 sendingAddress:(id)a4;
- (CNAutocompleteResultFactory)initWithPriorityDomain:(id)a3 sendingAddress:(id)a4;
- (id)MAIDGroupResultWithDisplayName:(id)a3 groupIdentifier:(id)a4 membersProvider:(id)a5;
- (id)MAIDResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5 userInfo:(id)a6;
- (id)calendarServerResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5 userInfo:(id)a6;
- (id)directoryServerResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5;
- (id)duetGroupResultWithDisplayName:(id)a3 groupIdentifier:(id)a4 membersProvider:(id)a5;
- (id)duetResultWithDisplayName:(id)a3 value:(id)a4 contactIdentifier:(id)a5;
- (id)extensionGroupResultWithDisplayName:(id)a3 groupIdentifier:(id)a4 membersProvider:(id)a5;
- (id)extensionResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5;
- (id)frequentRecentResultWithDisplayName:(id)a3 value:(id)a4 lastSendingAddress:(id)a5 date:(id)a6 group:(BOOL)a7 completesChosenGroup:(BOOL)a8;
- (id)infrequentRecentResultWithDisplayName:(id)a3 value:(id)a4 lastSendingAddress:(id)a5 dateCount:(unint64_t)a6 date:(id)a7 group:(BOOL)a8 completesChosenGroup:(BOOL)a9;
- (id)localContactResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5 contactIdentifier:(id)a6;
- (id)localGroupResultWithDisplayName:(id)a3 groupIdentifier:(id)a4;
- (id)localGroupResultWithDisplayName:(id)a3 groupIdentifier:(id)a4 membersProvider:(id)a5;
- (id)suggestedResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5;
- (void)applyLastSendingAddressBitToResult:(id)a3;
- (void)applyPreferredDomainBitToResult:(id)a3;
- (void)applySearchContextToResult:(id)a3;
@end

@implementation CNAutocompleteResultFactory

+ (CNAutocompleteResultFactory)factoryWithPriorityDomain:(id)a3 sendingAddress:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPriorityDomain:v7 sendingAddress:v6];

  return v8;
}

- (CNAutocompleteResultFactory)initWithPriorityDomain:(id)a3 sendingAddress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNAutocompleteResultFactory *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    preferredDomain = v8->_preferredDomain;
    v8->_preferredDomain = v9;

    v11 = [v7 copy];
    sendingAddress = v8->_sendingAddress;
    v8->_sendingAddress = v11;

    v13 = v8;
  }

  return v8;
}

- (id)localContactResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5 contactIdentifier:(id)a6
{
  v7 = [CNAutocompleteResult contactResultWithDisplayName:a3 value:a4 nameComponents:a5 identifier:a6];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v7];
  [v7 setSourceType:2];

  return v7;
}

- (id)localGroupResultWithDisplayName:(id)a3 groupIdentifier:(id)a4
{
  v5 = [CNAutocompleteResult groupResultWithDisplayName:a3 identifier:a4];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v5];
  [v5 setSourceType:2];

  return v5;
}

- (id)localGroupResultWithDisplayName:(id)a3 groupIdentifier:(id)a4 membersProvider:(id)a5
{
  v8 = a5;
  v9 = [(CNAutocompleteResultFactory *)self localGroupResultWithDisplayName:a3 groupIdentifier:a4];
  [v9 setMembersProvider:v8];

  return v9;
}

- (id)duetGroupResultWithDisplayName:(id)a3 groupIdentifier:(id)a4 membersProvider:(id)a5
{
  v8 = a5;
  v9 = [(CNAutocompleteResultFactory *)self localGroupResultWithDisplayName:a3 groupIdentifier:a4];
  [v9 setMembersProvider:v8];

  [v9 setSourceType:16];

  return v9;
}

- (id)frequentRecentResultWithDisplayName:(id)a3 value:(id)a4 lastSendingAddress:(id)a5 date:(id)a6 group:(BOOL)a7 completesChosenGroup:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (a7)
  {
    v18 = [(CNAutocompleteRecentResult *)CNAutocompleteFrequentRecentResult groupResultWithDisplayName:v14 date:v17];
    [(CNAutocompleteResultFactory *)self applySearchContextToResult:v18];
    [v18 setSourceType:1];
  }

  else
  {
    v18 = [(CNAutocompleteRecentResult *)CNAutocompleteFrequentRecentResult contactResultWithDisplayName:v14 value:v15 lastSendingAddress:v16 date:v17];
    [(CNAutocompleteResultFactory *)self applySearchContextToResult:v18];
    [v18 setSourceType:1];
    if (a8)
    {
      objc_opt_class();
      v18 = v18;
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      [v20 setCompletesChosenGroup:1];
    }
  }

  return v18;
}

- (id)infrequentRecentResultWithDisplayName:(id)a3 value:(id)a4 lastSendingAddress:(id)a5 dateCount:(unint64_t)a6 date:(id)a7 group:(BOOL)a8 completesChosenGroup:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  if (a8)
  {
    v19 = [CNAutocompleteInfrequentRecentResult groupResultWithDisplayName:v15 dateCount:a6 date:v18];
    [(CNAutocompleteResultFactory *)self applySearchContextToResult:v19];
    [v19 setSourceType:1];
  }

  else
  {
    v19 = [CNAutocompleteInfrequentRecentResult contactResultWithDisplayName:v15 value:v16 lastSendingAddress:v17 dateCount:a6 date:v18];
    [(CNAutocompleteResultFactory *)self applySearchContextToResult:v19];
    [v19 setSourceType:1];
    if (a9)
    {
      objc_opt_class();
      v19 = v19;
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      [v21 setCompletesChosenGroup:1];
    }
  }

  return v19;
}

- (id)suggestedResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5
{
  v6 = [(CNAutocompleteResult *)CNAutocompleteSuggestedContactResult contactResultWithDisplayName:a3 value:a4 nameComponents:a5 identifier:0];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v6];
  [v6 setSourceType:4];

  return v6;
}

- (id)MAIDResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5 userInfo:(id)a6
{
  v10 = a6;
  v11 = [(CNAutocompleteResult *)CNAutocompleteExtensionResult contactResultWithDisplayName:a3 value:a4 nameComponents:a5 identifier:0];
  [v11 setUserInfo:v10];

  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v11];
  [v11 setSourceType:128];

  return v11;
}

- (id)MAIDGroupResultWithDisplayName:(id)a3 groupIdentifier:(id)a4 membersProvider:(id)a5
{
  v8 = a5;
  v9 = [CNAutocompleteResult groupResultWithDisplayName:a3 identifier:a4];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v9];
  [v9 setSourceType:128];
  [v9 setMembersProvider:v8];

  return v9;
}

- (id)extensionResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5
{
  v6 = [(CNAutocompleteResult *)CNAutocompleteExtensionResult contactResultWithDisplayName:a3 value:a4 nameComponents:a5 identifier:0];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v6];
  [v6 setSourceType:256];

  return v6;
}

- (id)extensionGroupResultWithDisplayName:(id)a3 groupIdentifier:(id)a4 membersProvider:(id)a5
{
  v8 = a5;
  v9 = [CNAutocompleteResult groupResultWithDisplayName:a3 identifier:a4];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v9];
  [v9 setSourceType:256];
  [v9 setMembersProvider:v8];

  return v9;
}

- (id)directoryServerResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5
{
  v6 = [(CNAutocompleteResult *)CNAutocompleteDirectoryServerResult contactResultWithDisplayName:a3 value:a4 nameComponents:a5 identifier:0];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v6];
  [v6 setSourceType:8];

  return v6;
}

- (id)calendarServerResultWithDisplayName:(id)a3 value:(id)a4 nameComponents:(id)a5 userInfo:(id)a6
{
  v7 = [CNAutocompleteCalendarServerResult contactResultWithDisplayName:a3 value:a4 nameComponents:a5 identifier:0 userInfo:a6];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v7];

  return v7;
}

- (id)duetResultWithDisplayName:(id)a3 value:(id)a4 contactIdentifier:(id)a5
{
  v6 = [(CNAutocompleteResult *)CNAutocompleteDuetContactResult contactResultWithDisplayName:a3 value:a4 nameComponents:0 identifier:a5];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v6];
  [v6 setSourceType:16];

  return v6;
}

- (void)applySearchContextToResult:(id)a3
{
  v4 = a3;
  [(CNAutocompleteResultFactory *)self applyPreferredDomainBitToResult:v4];
  [(CNAutocompleteResultFactory *)self applyLastSendingAddressBitToResult:v4];
}

- (void)applyPreferredDomainBitToResult:(id)a3
{
  v7 = a3;
  preferredDomain = self->_preferredDomain;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v5 = [v7 value];
    v6 = [v5 address];

    if ([v6 hasSuffix:self->_preferredDomain])
    {
      [v7 setHasPreferredDomain:1];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)applyLastSendingAddressBitToResult:(id)a3
{
  v10 = a3;
  sendingAddress = self->_sendingAddress;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    objc_opt_class();
    v5 = v10;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = self->_sendingAddress;
      v9 = [v7 lastSendingAddress];
      LODWORD(v8) = [(NSString *)v8 _cn_caseInsensitiveIsEqual:v9];

      if (v8)
      {
        [v7 setMatchesSendingAddress:1];
      }
    }
  }
}

@end