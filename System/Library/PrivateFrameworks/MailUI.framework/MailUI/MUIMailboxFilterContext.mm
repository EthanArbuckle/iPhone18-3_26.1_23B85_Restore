@interface MUIMailboxFilterContext
+ (id)contextWithMailboxes:(id)mailboxes focus:(id)focus isFilteringAvailable:(BOOL)available;
- (BOOL)isEqual:(id)equal;
- (MUIMailboxFilterContext)initWithMailboxes:(id)mailboxes focus:(id)focus isFilteringAvailable:(BOOL)available;
- (unint64_t)hash;
@end

@implementation MUIMailboxFilterContext

- (unint64_t)hash
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mailboxes = [(MUIMailboxFilterContext *)self mailboxes];
  v3 = [mailboxes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(mailboxes);
        }

        v5 ^= [*(*(&v9 + 1) + 8 * i) hash];
      }

      v4 = [mailboxes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MUIMailboxFilterContext)initWithMailboxes:(id)mailboxes focus:(id)focus isFilteringAvailable:(BOOL)available
{
  mailboxesCopy = mailboxes;
  focusCopy = focus;
  if (!mailboxesCopy)
  {
    [MUIMailboxFilterContext initWithMailboxes:a2 focus:self isFilteringAvailable:?];
  }

  v15.receiver = self;
  v15.super_class = MUIMailboxFilterContext;
  v11 = [(MUIMailboxFilterContext *)&v15 init];
  if (v11)
  {
    v12 = [mailboxesCopy copy];
    mailboxes = v11->_mailboxes;
    v11->_mailboxes = v12;

    objc_storeStrong(&v11->_focus, focus);
    v11->_isFilteringAvailable = available;
  }

  return v11;
}

+ (id)contextWithMailboxes:(id)mailboxes focus:(id)focus isFilteringAvailable:(BOOL)available
{
  availableCopy = available;
  focusCopy = focus;
  mailboxesCopy = mailboxes;
  v10 = [[self alloc] initWithMailboxes:mailboxesCopy focus:focusCopy isFilteringAvailable:availableCopy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    mailboxes = [(MUIMailboxFilterContext *)self mailboxes];
    mailboxes2 = [v5 mailboxes];

    v8 = EFArraysAreEqual();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)initWithMailboxes:(uint64_t)a1 focus:(uint64_t)a2 isFilteringAvailable:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMailboxFilterContext.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"mailboxes"}];
}

@end