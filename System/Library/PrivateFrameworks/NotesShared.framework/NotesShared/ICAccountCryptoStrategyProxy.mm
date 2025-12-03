@interface ICAccountCryptoStrategyProxy
- (BOOL)authenticateWithPassphrase:(id)passphrase;
- (BOOL)canAuthenticate;
- (BOOL)hasPassphraseSet;
- (BOOL)hasSameKeyAsObject:(id)object;
- (BOOL)isAuthenticated;
- (BOOL)isPassphraseCorrect:(id)correct;
- (BOOL)mainKeyDecryptsPrimaryData:(id)data;
- (BOOL)mergeEncryptedDataFromRecord:(id)record;
- (BOOL)setPassphrase:(id)passphrase hint:(id)hint;
- (ICAccountCryptoStrategy)customPasswordStrategy;
- (ICAccountCryptoStrategyProxy)initWithCloudSyncingObject:(id)object;
- (NSString)passphraseHint;
- (id)currentStrategy;
- (void)removePassphrase;
@end

@implementation ICAccountCryptoStrategyProxy

- (ICAccountCryptoStrategy)customPasswordStrategy
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__26;
  v9 = __Block_byref_object_dispose__26;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__ICAccountCryptoStrategyProxy_customPasswordStrategy__block_invoke;
  v4[3] = &unk_278196FD8;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfAccountExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __54__ICAccountCryptoStrategyProxy_customPasswordStrategy__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accountData];
  if ([v3 supportsV1Neo])
  {
    v4 = [*(a1 + 32) v1NeoStrategy];
    v5 = [v4 hasPassphraseSet];

    if (v5)
    {
      v6 = [*(a1 + 32) v1NeoStrategy];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = [*(a1 + 32) v1Strategy];
LABEL_6:
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)currentStrategy
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__26;
  v9 = __Block_byref_object_dispose__26;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ICAccountCryptoStrategyProxy_currentStrategy__block_invoke;
  v4[3] = &unk_278197000;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfAccountExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __47__ICAccountCryptoStrategyProxy_currentStrategy__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 resolvedLockedNotesMode];
  if (v3 >= 2)
  {
    if (v3 != 2)
    {
      return;
    }

    v4 = [*(a1 + 32) devicePasswordStrategy];
  }

  else
  {
    v4 = [*(a1 + 32) customPasswordStrategy];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (ICAccountCryptoStrategyProxy)initWithCloudSyncingObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = ICAccountCryptoStrategyProxy;
  v5 = [(ICCryptoStrategyBase *)&v13 initWithCloudSyncingObject:objectCopy];
  if (v5)
  {
    v6 = [(ICCryptoStrategyBase *)[ICAccountCryptoStrategyV1 alloc] initWithCloudSyncingObject:objectCopy];
    v1Strategy = v5->_v1Strategy;
    v5->_v1Strategy = v6;

    if (ICInternalSettingsIsLockedNotesV1NeoEnabled())
    {
      v8 = [(ICCryptoStrategyBase *)[ICAccountCryptoStrategyV1Neo alloc] initWithCloudSyncingObject:objectCopy];
      v1NeoStrategy = v5->_v1NeoStrategy;
      v5->_v1NeoStrategy = v8;
    }

    v10 = [(ICCryptoStrategyBase *)[ICAccountCryptoStrategyV2 alloc] initWithCloudSyncingObject:objectCopy];
    v2Strategy = v5->_v2Strategy;
    v5->_v2Strategy = v10;
  }

  return v5;
}

- (BOOL)canAuthenticate
{
  currentStrategy = [(ICAccountCryptoStrategyProxy *)self currentStrategy];
  canAuthenticate = [currentStrategy canAuthenticate];

  return canAuthenticate;
}

- (BOOL)isAuthenticated
{
  currentStrategy = [(ICAccountCryptoStrategyProxy *)self currentStrategy];
  isAuthenticated = [currentStrategy isAuthenticated];

  return isAuthenticated;
}

- (BOOL)hasSameKeyAsObject:(id)object
{
  objectCopy = object;
  v1Strategy = [(ICAccountCryptoStrategyProxy *)self v1Strategy];
  if ([v1Strategy hasSameKeyAsObject:objectCopy])
  {
    v6 = 1;
  }

  else
  {
    v1NeoStrategy = [(ICAccountCryptoStrategyProxy *)self v1NeoStrategy];
    if ([v1NeoStrategy hasSameKeyAsObject:objectCopy])
    {
      v6 = 1;
    }

    else
    {
      v2Strategy = [(ICAccountCryptoStrategyProxy *)self v2Strategy];
      v6 = [v2Strategy hasSameKeyAsObject:objectCopy];
    }
  }

  return v6;
}

- (BOOL)mainKeyDecryptsPrimaryData:(id)data
{
  dataCopy = data;
  metadata = [dataCopy metadata];
  cipherVersion = [metadata cipherVersion];

  if (cipherVersion == 2)
  {
    v1NeoStrategy = [(ICAccountCryptoStrategyProxy *)self v1NeoStrategy];
  }

  else if (cipherVersion == 1)
  {
    v1NeoStrategy = [(ICAccountCryptoStrategyProxy *)self v2Strategy];
  }

  else
  {
    if (cipherVersion)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v1NeoStrategy = [(ICAccountCryptoStrategyProxy *)self v1Strategy];
  }

  v8 = v1NeoStrategy;
  v9 = [v1NeoStrategy mainKeyDecryptsPrimaryData:dataCopy];

LABEL_9:
  return v9;
}

- (BOOL)mergeEncryptedDataFromRecord:(id)record
{
  recordCopy = record;
  v1Strategy = [(ICAccountCryptoStrategyProxy *)self v1Strategy];
  if ([v1Strategy mergeEncryptedDataFromRecord:recordCopy])
  {
    v1NeoStrategy = [(ICAccountCryptoStrategyProxy *)self v1NeoStrategy];
    if ([v1NeoStrategy mergeEncryptedDataFromRecord:recordCopy])
    {
      v2Strategy = [(ICAccountCryptoStrategyProxy *)self v2Strategy];
      v8 = [v2Strategy mergeEncryptedDataFromRecord:recordCopy];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasPassphraseSet
{
  customPasswordStrategy = [(ICAccountCryptoStrategyProxy *)self customPasswordStrategy];
  hasPassphraseSet = [customPasswordStrategy hasPassphraseSet];

  return hasPassphraseSet;
}

- (NSString)passphraseHint
{
  customPasswordStrategy = [(ICAccountCryptoStrategyProxy *)self customPasswordStrategy];
  passphraseHint = [customPasswordStrategy passphraseHint];

  return passphraseHint;
}

- (BOOL)setPassphrase:(id)passphrase hint:(id)hint
{
  passphraseCopy = passphrase;
  hintCopy = hint;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__ICAccountCryptoStrategyProxy_setPassphrase_hint___block_invoke;
  v11[3] = &unk_278197028;
  v11[4] = self;
  v8 = passphraseCopy;
  v12 = v8;
  v9 = hintCopy;
  v13 = v9;
  v14 = &v15;
  [(ICCryptoStrategyBase *)self performBlockIfAccountExists:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __51__ICAccountCryptoStrategyProxy_setPassphrase_hint___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) v1Strategy];
  v4 = [v3 setPassphrase:*(a1 + 40) hint:*(a1 + 48)];

  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v5 = [*(a1 + 32) v1NeoStrategy];

  if (v5)
  {
    v6 = [v11 accountDataCreateIfNecessary];
    [v6 updateSupportsV1Neo:0];
    v7 = [*(a1 + 32) v1NeoStrategy];
    v8 = [v7 setPassphrase:*(a1 + 40) hint:*(a1 + 48)];
    v9 = *(*(a1 + 56) + 8);
    if (v8)
    {
      v10 = *(v9 + 24);
    }

    else
    {
      v10 = 0;
    }

    *(v9 + 24) = v10 & 1;
  }
}

- (void)removePassphrase
{
  v1Strategy = [(ICAccountCryptoStrategyProxy *)self v1Strategy];
  [v1Strategy removePassphrase];

  v1NeoStrategy = [(ICAccountCryptoStrategyProxy *)self v1NeoStrategy];
  [v1NeoStrategy removePassphrase];
}

- (BOOL)isPassphraseCorrect:(id)correct
{
  correctCopy = correct;
  customPasswordStrategy = [(ICAccountCryptoStrategyProxy *)self customPasswordStrategy];
  v6 = [customPasswordStrategy isPassphraseCorrect:correctCopy];

  return v6;
}

- (BOOL)authenticateWithPassphrase:(id)passphrase
{
  passphraseCopy = passphrase;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ICAccountCryptoStrategyProxy_authenticateWithPassphrase___block_invoke;
  v7[3] = &unk_278197050;
  v7[4] = self;
  v5 = passphraseCopy;
  v8 = v5;
  v9 = &v10;
  [(ICCryptoStrategyBase *)self performBlockIfAccountExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __59__ICAccountCryptoStrategyProxy_authenticateWithPassphrase___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) v1Strategy];
  v3 = [v2 authenticateWithPassphrase:*(a1 + 40)];

  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v4 = [*(a1 + 32) v1NeoStrategy];
    v5 = [v4 hasPassphraseSet];

    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 32) v1NeoStrategy];
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) v1Strategy];
      v9 = [v8 passphraseHint];
      [v6 setPassphrase:v7 hint:v9];
    }
  }

  v10 = [*(a1 + 32) v1NeoStrategy];
  v11 = [v10 authenticateWithPassphrase:*(a1 + 40)];

  if (v11)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

@end