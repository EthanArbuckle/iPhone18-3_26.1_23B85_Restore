@interface MUIMailboxFilterContext
+ (id)contextWithMailboxes:(id)a3 focus:(id)a4 isFilteringAvailable:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (MUIMailboxFilterContext)initWithMailboxes:(id)a3 focus:(id)a4 isFilteringAvailable:(BOOL)a5;
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
  v2 = [(MUIMailboxFilterContext *)self mailboxes];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v5 ^= [*(*(&v9 + 1) + 8 * i) hash];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MUIMailboxFilterContext)initWithMailboxes:(id)a3 focus:(id)a4 isFilteringAvailable:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    [MUIMailboxFilterContext initWithMailboxes:a2 focus:self isFilteringAvailable:?];
  }

  v15.receiver = self;
  v15.super_class = MUIMailboxFilterContext;
  v11 = [(MUIMailboxFilterContext *)&v15 init];
  if (v11)
  {
    v12 = [v9 copy];
    mailboxes = v11->_mailboxes;
    v11->_mailboxes = v12;

    objc_storeStrong(&v11->_focus, a4);
    v11->_isFilteringAvailable = a5;
  }

  return v11;
}

+ (id)contextWithMailboxes:(id)a3 focus:(id)a4 isFilteringAvailable:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithMailboxes:v9 focus:v8 isFilteringAvailable:v5];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MUIMailboxFilterContext *)self mailboxes];
    v7 = [v5 mailboxes];

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