@interface FLGroupViewModelImpl
- (BOOL)restrictionEnabled;
- (BOOL)shouldCoalesceItems;
- (FLGroupViewModelImpl)initWithIdentifier:(id)identifier;
- (id)_expirationOrInformativeText;
- (id)footerText;
- (id)items;
- (id)subtitleText;
- (void)addItem:(id)item;
@end

@implementation FLGroupViewModelImpl

- (id)items
{
  v2 = [(NSMutableArray *)self->_mutableItems copy];

  return v2;
}

- (FLGroupViewModelImpl)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(FLGroupViewModelImpl *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  mutableItems = self->_mutableItems;
  v8 = itemCopy;
  if (!mutableItems)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = self->_mutableItems;
    self->_mutableItems = array;

    itemCopy = v8;
    mutableItems = self->_mutableItems;
  }

  [(NSMutableArray *)mutableItems addObject:itemCopy];
}

- (id)footerText
{
  if ([(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.ndo"])
  {
    if ([(FLGroupViewModelImpl *)self shouldCoalesceItems])
    {
      firstObject = [(NSMutableArray *)self->_mutableItems firstObject];
      userInfo = [firstObject userInfo];
      v5 = [userInfo objectForKeyedSubscript:@"FLUserInfoPropertyCoalescedGroupFooterText"];

      if (v5)
      {
        firstObject2 = [(NSMutableArray *)self->_mutableItems firstObject];
        userInfo2 = [firstObject2 userInfo];
        _expirationOrInformativeText = [userInfo2 objectForKeyedSubscript:@"FLUserInfoPropertyCoalescedGroupFooterText"];

        goto LABEL_8;
      }
    }
  }

  else if ([(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.services"])
  {
    _expirationOrInformativeText = 0;
    goto LABEL_8;
  }

  _expirationOrInformativeText = [(FLGroupViewModelImpl *)self _expirationOrInformativeText];
LABEL_8:

  return _expirationOrInformativeText;
}

- (id)subtitleText
{
  if ([(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.services"])
  {
    _expirationOrInformativeText = [(FLGroupViewModelImpl *)self _expirationOrInformativeText];
  }

  else
  {
    _expirationOrInformativeText = 0;
  }

  return _expirationOrInformativeText;
}

- (id)_expirationOrInformativeText
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_mutableItems;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        informativeFooterText = [v10 informativeFooterText];

        if (informativeFooterText)
        {
          informativeFooterText2 = [v10 informativeFooterText];

          v7 = informativeFooterText2;
        }

        if ([v10 displayExpirationDate])
        {
          [v3 addObject:v10];
          formattedExpirationDate = [v10 formattedExpirationDate];

          v7 = formattedExpirationDate;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if ([v3 count] >= 2)
  {
    [v3 sortUsingComparator:&__block_literal_global_9];
    firstObject = [v3 firstObject];
    v15 = +[FLFollowUpItem _expirationDateFormatter];
    _midnightAdjustedDate = [firstObject _midnightAdjustedDate];
    v17 = [v15 stringFromDate:_midnightAdjustedDate];

    v18 = MEMORY[0x277CCACA8];
    v19 = FLLoc(@"EARLIEST_ITEM_EXPIRATION_FORMAT");
    v20 = [v18 localizedStringWithFormat:v19, v17];

    v7 = v20;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __52__FLGroupViewModelImpl__expirationOrInformativeText__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 expirationDate];
  v6 = [v4 expirationDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)restrictionEnabled
{
  if (![(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.account"])
  {
    return 0;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] == 2;

  return v3;
}

- (BOOL)shouldCoalesceItems
{
  if ([(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.account"]|| [(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.services"]|| [(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.ndo"]|| [(NSString *)self->_identifier isEqualToString:@"com.apple.followup.secure.mic"])
  {
    items = [(FLGroupViewModelImpl *)self items];
    v4 = [items count] > 1;
  }

  else
  {
    if (![(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.device"])
    {
      [(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.none"];
      return 0;
    }

    items = [(FLGroupViewModelImpl *)self items];
    v4 = [items count] > 2;
  }

  v5 = v4;

  return v5;
}

@end