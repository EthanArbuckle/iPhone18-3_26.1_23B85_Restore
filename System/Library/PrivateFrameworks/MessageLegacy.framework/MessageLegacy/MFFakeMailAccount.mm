@interface MFFakeMailAccount
- (BOOL)shouldFetchAgainWithError:(id)error foregroundRequest:(BOOL)request;
- (MFFakeMailAccount)init;
- (MFFakeMailAccount)initWithURL:(id)l rootMailboxUid:(id)uid;
- (id)powerAssertionIdentifierWithPrefix:(id)prefix;
- (void)setCachedConnection:(id)connection;
@end

@implementation MFFakeMailAccount

- (MFFakeMailAccount)init
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"account://test"];
  v4 = [(MFFakeMailAccount *)self initWithURL:v3];

  return v4;
}

- (MFFakeMailAccount)initWithURL:(id)l rootMailboxUid:(id)uid
{
  lCopy = l;
  uidCopy = uid;
  v13.receiver = self;
  v13.super_class = MFFakeMailAccount;
  v9 = [(MFAccount *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAC60]);
    flagChangesLock = v9->_flagChangesLock;
    v9->_flagChangesLock = v10;

    objc_storeStrong(&v9->_URL, l);
    objc_storeStrong(&v9->super._rootMailboxUid, uid);
  }

  return v9;
}

- (id)powerAssertionIdentifierWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  displayName = [(MFFakeMailAccount *)self displayName];
  if ([displayName length])
  {
    displayName2 = [(MFFakeMailAccount *)self displayName];
  }

  else
  {
    displayName2 = &stru_2869ED3E0;
  }

  uniqueId = [(MFFakeMailAccount *)self uniqueId];
  v8 = [prefixCopy stringByAppendingFormat:@"-%@-(%@)", uniqueId, displayName2];

  return v8;
}

- (void)setCachedConnection:(id)connection
{
  connectionCopy = connection;
  if (self->_cachedConnection != connectionCopy)
  {
    v6 = connectionCopy;
    objc_storeStrong(&self->_cachedConnection, connection);
    connectionCopy = v6;
  }
}

- (BOOL)shouldFetchAgainWithError:(id)error foregroundRequest:(BOOL)request
{
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = domain;
  if (!errorCopy)
  {
    goto LABEL_11;
  }

  if ([domain isEqualToString:*MEMORY[0x277CCA670]])
  {
    request = 0;
    goto LABEL_12;
  }

  if (![v7 isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    if ([v7 isEqualToString:@"MFMessageErrorDomain"])
    {
      code = [errorCopy code];
      if ((code - 1032) <= 0x1B)
      {
        request = 0x7FFFF7Eu >> (code - 8);
      }

      else
      {
        request = 1;
      }

      goto LABEL_12;
    }

LABEL_11:
    request = 1;
    goto LABEL_12;
  }

  if ([errorCopy code] != 60)
  {
    request = 1;
  }

LABEL_12:

  return request;
}

@end