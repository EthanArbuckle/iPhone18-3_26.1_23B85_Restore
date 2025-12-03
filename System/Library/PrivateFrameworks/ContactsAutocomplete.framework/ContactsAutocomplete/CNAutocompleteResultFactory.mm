@interface CNAutocompleteResultFactory
+ (CNAutocompleteResultFactory)factoryWithPriorityDomain:(id)domain sendingAddress:(id)address;
- (CNAutocompleteResultFactory)initWithPriorityDomain:(id)domain sendingAddress:(id)address;
- (id)MAIDGroupResultWithDisplayName:(id)name groupIdentifier:(id)identifier membersProvider:(id)provider;
- (id)MAIDResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components userInfo:(id)info;
- (id)calendarServerResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components userInfo:(id)info;
- (id)directoryServerResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components;
- (id)duetGroupResultWithDisplayName:(id)name groupIdentifier:(id)identifier membersProvider:(id)provider;
- (id)duetResultWithDisplayName:(id)name value:(id)value contactIdentifier:(id)identifier;
- (id)extensionGroupResultWithDisplayName:(id)name groupIdentifier:(id)identifier membersProvider:(id)provider;
- (id)extensionResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components;
- (id)frequentRecentResultWithDisplayName:(id)name value:(id)value lastSendingAddress:(id)address date:(id)date group:(BOOL)group completesChosenGroup:(BOOL)chosenGroup;
- (id)infrequentRecentResultWithDisplayName:(id)name value:(id)value lastSendingAddress:(id)address dateCount:(unint64_t)count date:(id)date group:(BOOL)group completesChosenGroup:(BOOL)chosenGroup;
- (id)localContactResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components contactIdentifier:(id)identifier;
- (id)localGroupResultWithDisplayName:(id)name groupIdentifier:(id)identifier;
- (id)localGroupResultWithDisplayName:(id)name groupIdentifier:(id)identifier membersProvider:(id)provider;
- (id)suggestedResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components;
- (void)applyLastSendingAddressBitToResult:(id)result;
- (void)applyPreferredDomainBitToResult:(id)result;
- (void)applySearchContextToResult:(id)result;
@end

@implementation CNAutocompleteResultFactory

+ (CNAutocompleteResultFactory)factoryWithPriorityDomain:(id)domain sendingAddress:(id)address
{
  addressCopy = address;
  domainCopy = domain;
  v8 = [[self alloc] initWithPriorityDomain:domainCopy sendingAddress:addressCopy];

  return v8;
}

- (CNAutocompleteResultFactory)initWithPriorityDomain:(id)domain sendingAddress:(id)address
{
  domainCopy = domain;
  addressCopy = address;
  v8 = [(CNAutocompleteResultFactory *)self init];
  if (v8)
  {
    v9 = [domainCopy copy];
    preferredDomain = v8->_preferredDomain;
    v8->_preferredDomain = v9;

    v11 = [addressCopy copy];
    sendingAddress = v8->_sendingAddress;
    v8->_sendingAddress = v11;

    v13 = v8;
  }

  return v8;
}

- (id)localContactResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components contactIdentifier:(id)identifier
{
  v7 = [CNAutocompleteResult contactResultWithDisplayName:name value:value nameComponents:components identifier:identifier];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v7];
  [v7 setSourceType:2];

  return v7;
}

- (id)localGroupResultWithDisplayName:(id)name groupIdentifier:(id)identifier
{
  v5 = [CNAutocompleteResult groupResultWithDisplayName:name identifier:identifier];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v5];
  [v5 setSourceType:2];

  return v5;
}

- (id)localGroupResultWithDisplayName:(id)name groupIdentifier:(id)identifier membersProvider:(id)provider
{
  providerCopy = provider;
  v9 = [(CNAutocompleteResultFactory *)self localGroupResultWithDisplayName:name groupIdentifier:identifier];
  [v9 setMembersProvider:providerCopy];

  return v9;
}

- (id)duetGroupResultWithDisplayName:(id)name groupIdentifier:(id)identifier membersProvider:(id)provider
{
  providerCopy = provider;
  v9 = [(CNAutocompleteResultFactory *)self localGroupResultWithDisplayName:name groupIdentifier:identifier];
  [v9 setMembersProvider:providerCopy];

  [v9 setSourceType:16];

  return v9;
}

- (id)frequentRecentResultWithDisplayName:(id)name value:(id)value lastSendingAddress:(id)address date:(id)date group:(BOOL)group completesChosenGroup:(BOOL)chosenGroup
{
  nameCopy = name;
  valueCopy = value;
  addressCopy = address;
  dateCopy = date;
  if (group)
  {
    v18 = [(CNAutocompleteRecentResult *)CNAutocompleteFrequentRecentResult groupResultWithDisplayName:nameCopy date:dateCopy];
    [(CNAutocompleteResultFactory *)self applySearchContextToResult:v18];
    [v18 setSourceType:1];
  }

  else
  {
    v18 = [(CNAutocompleteRecentResult *)CNAutocompleteFrequentRecentResult contactResultWithDisplayName:nameCopy value:valueCopy lastSendingAddress:addressCopy date:dateCopy];
    [(CNAutocompleteResultFactory *)self applySearchContextToResult:v18];
    [v18 setSourceType:1];
    if (chosenGroup)
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

- (id)infrequentRecentResultWithDisplayName:(id)name value:(id)value lastSendingAddress:(id)address dateCount:(unint64_t)count date:(id)date group:(BOOL)group completesChosenGroup:(BOOL)chosenGroup
{
  nameCopy = name;
  valueCopy = value;
  addressCopy = address;
  dateCopy = date;
  if (group)
  {
    v19 = [CNAutocompleteInfrequentRecentResult groupResultWithDisplayName:nameCopy dateCount:count date:dateCopy];
    [(CNAutocompleteResultFactory *)self applySearchContextToResult:v19];
    [v19 setSourceType:1];
  }

  else
  {
    v19 = [CNAutocompleteInfrequentRecentResult contactResultWithDisplayName:nameCopy value:valueCopy lastSendingAddress:addressCopy dateCount:count date:dateCopy];
    [(CNAutocompleteResultFactory *)self applySearchContextToResult:v19];
    [v19 setSourceType:1];
    if (chosenGroup)
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

- (id)suggestedResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components
{
  v6 = [(CNAutocompleteResult *)CNAutocompleteSuggestedContactResult contactResultWithDisplayName:name value:value nameComponents:components identifier:0];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v6];
  [v6 setSourceType:4];

  return v6;
}

- (id)MAIDResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components userInfo:(id)info
{
  infoCopy = info;
  v11 = [(CNAutocompleteResult *)CNAutocompleteExtensionResult contactResultWithDisplayName:name value:value nameComponents:components identifier:0];
  [v11 setUserInfo:infoCopy];

  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v11];
  [v11 setSourceType:128];

  return v11;
}

- (id)MAIDGroupResultWithDisplayName:(id)name groupIdentifier:(id)identifier membersProvider:(id)provider
{
  providerCopy = provider;
  v9 = [CNAutocompleteResult groupResultWithDisplayName:name identifier:identifier];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v9];
  [v9 setSourceType:128];
  [v9 setMembersProvider:providerCopy];

  return v9;
}

- (id)extensionResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components
{
  v6 = [(CNAutocompleteResult *)CNAutocompleteExtensionResult contactResultWithDisplayName:name value:value nameComponents:components identifier:0];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v6];
  [v6 setSourceType:256];

  return v6;
}

- (id)extensionGroupResultWithDisplayName:(id)name groupIdentifier:(id)identifier membersProvider:(id)provider
{
  providerCopy = provider;
  v9 = [CNAutocompleteResult groupResultWithDisplayName:name identifier:identifier];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v9];
  [v9 setSourceType:256];
  [v9 setMembersProvider:providerCopy];

  return v9;
}

- (id)directoryServerResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components
{
  v6 = [(CNAutocompleteResult *)CNAutocompleteDirectoryServerResult contactResultWithDisplayName:name value:value nameComponents:components identifier:0];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v6];
  [v6 setSourceType:8];

  return v6;
}

- (id)calendarServerResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components userInfo:(id)info
{
  v7 = [CNAutocompleteCalendarServerResult contactResultWithDisplayName:name value:value nameComponents:components identifier:0 userInfo:info];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v7];

  return v7;
}

- (id)duetResultWithDisplayName:(id)name value:(id)value contactIdentifier:(id)identifier
{
  v6 = [(CNAutocompleteResult *)CNAutocompleteDuetContactResult contactResultWithDisplayName:name value:value nameComponents:0 identifier:identifier];
  [(CNAutocompleteResultFactory *)self applySearchContextToResult:v6];
  [v6 setSourceType:16];

  return v6;
}

- (void)applySearchContextToResult:(id)result
{
  resultCopy = result;
  [(CNAutocompleteResultFactory *)self applyPreferredDomainBitToResult:resultCopy];
  [(CNAutocompleteResultFactory *)self applyLastSendingAddressBitToResult:resultCopy];
}

- (void)applyPreferredDomainBitToResult:(id)result
{
  resultCopy = result;
  preferredDomain = self->_preferredDomain;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    value = [resultCopy value];
    address = [value address];

    if ([address hasSuffix:self->_preferredDomain])
    {
      [resultCopy setHasPreferredDomain:1];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)applyLastSendingAddressBitToResult:(id)result
{
  resultCopy = result;
  sendingAddress = self->_sendingAddress;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    objc_opt_class();
    v5 = resultCopy;
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
      lastSendingAddress = [v7 lastSendingAddress];
      LODWORD(v8) = [(NSString *)v8 _cn_caseInsensitiveIsEqual:lastSendingAddress];

      if (v8)
      {
        [v7 setMatchesSendingAddress:1];
      }
    }
  }
}

@end