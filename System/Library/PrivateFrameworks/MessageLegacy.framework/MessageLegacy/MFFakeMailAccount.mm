@interface MFFakeMailAccount
- (BOOL)shouldFetchAgainWithError:(id)a3 foregroundRequest:(BOOL)a4;
- (MFFakeMailAccount)init;
- (MFFakeMailAccount)initWithURL:(id)a3 rootMailboxUid:(id)a4;
- (id)powerAssertionIdentifierWithPrefix:(id)a3;
- (void)setCachedConnection:(id)a3;
@end

@implementation MFFakeMailAccount

- (MFFakeMailAccount)init
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"account://test"];
  v4 = [(MFFakeMailAccount *)self initWithURL:v3];

  return v4;
}

- (MFFakeMailAccount)initWithURL:(id)a3 rootMailboxUid:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MFFakeMailAccount;
  v9 = [(MFAccount *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAC60]);
    flagChangesLock = v9->_flagChangesLock;
    v9->_flagChangesLock = v10;

    objc_storeStrong(&v9->_URL, a3);
    objc_storeStrong(&v9->super._rootMailboxUid, a4);
  }

  return v9;
}

- (id)powerAssertionIdentifierWithPrefix:(id)a3
{
  v4 = a3;
  v5 = [(MFFakeMailAccount *)self displayName];
  if ([v5 length])
  {
    v6 = [(MFFakeMailAccount *)self displayName];
  }

  else
  {
    v6 = &stru_2869ED3E0;
  }

  v7 = [(MFFakeMailAccount *)self uniqueId];
  v8 = [v4 stringByAppendingFormat:@"-%@-(%@)", v7, v6];

  return v8;
}

- (void)setCachedConnection:(id)a3
{
  v5 = a3;
  if (self->_cachedConnection != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cachedConnection, a3);
    v5 = v6;
  }
}

- (BOOL)shouldFetchAgainWithError:(id)a3 foregroundRequest:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = v6;
  if (!v5)
  {
    goto LABEL_11;
  }

  if ([v6 isEqualToString:*MEMORY[0x277CCA670]])
  {
    a4 = 0;
    goto LABEL_12;
  }

  if (![v7 isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    if ([v7 isEqualToString:@"MFMessageErrorDomain"])
    {
      v8 = [v5 code];
      if ((v8 - 1032) <= 0x1B)
      {
        a4 = 0x7FFFF7Eu >> (v8 - 8);
      }

      else
      {
        a4 = 1;
      }

      goto LABEL_12;
    }

LABEL_11:
    a4 = 1;
    goto LABEL_12;
  }

  if ([v5 code] != 60)
  {
    a4 = 1;
  }

LABEL_12:

  return a4;
}

@end