@interface FLGroupViewModelImpl
- (BOOL)restrictionEnabled;
- (BOOL)shouldCoalesceItems;
- (FLGroupViewModelImpl)initWithIdentifier:(id)a3;
- (id)_expirationOrInformativeText;
- (id)footerText;
- (id)items;
- (id)subtitleText;
- (void)addItem:(id)a3;
@end

@implementation FLGroupViewModelImpl

- (id)items
{
  v2 = [(NSMutableArray *)self->_mutableItems copy];

  return v2;
}

- (FLGroupViewModelImpl)initWithIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(FLGroupViewModelImpl *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (void)addItem:(id)a3
{
  v4 = a3;
  mutableItems = self->_mutableItems;
  v8 = v4;
  if (!mutableItems)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = self->_mutableItems;
    self->_mutableItems = v6;

    v4 = v8;
    mutableItems = self->_mutableItems;
  }

  [(NSMutableArray *)mutableItems addObject:v4];
}

- (id)footerText
{
  if ([(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.ndo"])
  {
    if ([(FLGroupViewModelImpl *)self shouldCoalesceItems])
    {
      v3 = [(NSMutableArray *)self->_mutableItems firstObject];
      v4 = [v3 userInfo];
      v5 = [v4 objectForKeyedSubscript:@"FLUserInfoPropertyCoalescedGroupFooterText"];

      if (v5)
      {
        v6 = [(NSMutableArray *)self->_mutableItems firstObject];
        v7 = [v6 userInfo];
        v8 = [v7 objectForKeyedSubscript:@"FLUserInfoPropertyCoalescedGroupFooterText"];

        goto LABEL_8;
      }
    }
  }

  else if ([(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.services"])
  {
    v8 = 0;
    goto LABEL_8;
  }

  v8 = [(FLGroupViewModelImpl *)self _expirationOrInformativeText];
LABEL_8:

  return v8;
}

- (id)subtitleText
{
  if ([(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.services"])
  {
    v3 = [(FLGroupViewModelImpl *)self _expirationOrInformativeText];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
        v11 = [v10 informativeFooterText];

        if (v11)
        {
          v12 = [v10 informativeFooterText];

          v7 = v12;
        }

        if ([v10 displayExpirationDate])
        {
          [v3 addObject:v10];
          v13 = [v10 formattedExpirationDate];

          v7 = v13;
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
    v14 = [v3 firstObject];
    v15 = +[FLFollowUpItem _expirationDateFormatter];
    v16 = [v14 _midnightAdjustedDate];
    v17 = [v15 stringFromDate:v16];

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

  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] == 2;

  return v3;
}

- (BOOL)shouldCoalesceItems
{
  if ([(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.account"]|| [(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.services"]|| [(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.ndo"]|| [(NSString *)self->_identifier isEqualToString:@"com.apple.followup.secure.mic"])
  {
    v3 = [(FLGroupViewModelImpl *)self items];
    v4 = [v3 count] > 1;
  }

  else
  {
    if (![(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.device"])
    {
      [(NSString *)self->_identifier isEqualToString:@"com.apple.followup.group.none"];
      return 0;
    }

    v3 = [(FLGroupViewModelImpl *)self items];
    v4 = [v3 count] > 2;
  }

  v5 = v4;

  return v5;
}

@end