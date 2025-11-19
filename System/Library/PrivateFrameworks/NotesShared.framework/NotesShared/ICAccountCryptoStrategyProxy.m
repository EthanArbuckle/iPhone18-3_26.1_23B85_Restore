@interface ICAccountCryptoStrategyProxy
- (BOOL)authenticateWithPassphrase:(id)a3;
- (BOOL)canAuthenticate;
- (BOOL)hasPassphraseSet;
- (BOOL)hasSameKeyAsObject:(id)a3;
- (BOOL)isAuthenticated;
- (BOOL)isPassphraseCorrect:(id)a3;
- (BOOL)mainKeyDecryptsPrimaryData:(id)a3;
- (BOOL)mergeEncryptedDataFromRecord:(id)a3;
- (BOOL)setPassphrase:(id)a3 hint:(id)a4;
- (ICAccountCryptoStrategy)customPasswordStrategy;
- (ICAccountCryptoStrategyProxy)initWithCloudSyncingObject:(id)a3;
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

- (ICAccountCryptoStrategyProxy)initWithCloudSyncingObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICAccountCryptoStrategyProxy;
  v5 = [(ICCryptoStrategyBase *)&v13 initWithCloudSyncingObject:v4];
  if (v5)
  {
    v6 = [(ICCryptoStrategyBase *)[ICAccountCryptoStrategyV1 alloc] initWithCloudSyncingObject:v4];
    v1Strategy = v5->_v1Strategy;
    v5->_v1Strategy = v6;

    if (ICInternalSettingsIsLockedNotesV1NeoEnabled())
    {
      v8 = [(ICCryptoStrategyBase *)[ICAccountCryptoStrategyV1Neo alloc] initWithCloudSyncingObject:v4];
      v1NeoStrategy = v5->_v1NeoStrategy;
      v5->_v1NeoStrategy = v8;
    }

    v10 = [(ICCryptoStrategyBase *)[ICAccountCryptoStrategyV2 alloc] initWithCloudSyncingObject:v4];
    v2Strategy = v5->_v2Strategy;
    v5->_v2Strategy = v10;
  }

  return v5;
}

- (BOOL)canAuthenticate
{
  v2 = [(ICAccountCryptoStrategyProxy *)self currentStrategy];
  v3 = [v2 canAuthenticate];

  return v3;
}

- (BOOL)isAuthenticated
{
  v2 = [(ICAccountCryptoStrategyProxy *)self currentStrategy];
  v3 = [v2 isAuthenticated];

  return v3;
}

- (BOOL)hasSameKeyAsObject:(id)a3
{
  v4 = a3;
  v5 = [(ICAccountCryptoStrategyProxy *)self v1Strategy];
  if ([v5 hasSameKeyAsObject:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(ICAccountCryptoStrategyProxy *)self v1NeoStrategy];
    if ([v7 hasSameKeyAsObject:v4])
    {
      v6 = 1;
    }

    else
    {
      v8 = [(ICAccountCryptoStrategyProxy *)self v2Strategy];
      v6 = [v8 hasSameKeyAsObject:v4];
    }
  }

  return v6;
}

- (BOOL)mainKeyDecryptsPrimaryData:(id)a3
{
  v4 = a3;
  v5 = [v4 metadata];
  v6 = [v5 cipherVersion];

  if (v6 == 2)
  {
    v7 = [(ICAccountCryptoStrategyProxy *)self v1NeoStrategy];
  }

  else if (v6 == 1)
  {
    v7 = [(ICAccountCryptoStrategyProxy *)self v2Strategy];
  }

  else
  {
    if (v6)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v7 = [(ICAccountCryptoStrategyProxy *)self v1Strategy];
  }

  v8 = v7;
  v9 = [v7 mainKeyDecryptsPrimaryData:v4];

LABEL_9:
  return v9;
}

- (BOOL)mergeEncryptedDataFromRecord:(id)a3
{
  v4 = a3;
  v5 = [(ICAccountCryptoStrategyProxy *)self v1Strategy];
  if ([v5 mergeEncryptedDataFromRecord:v4])
  {
    v6 = [(ICAccountCryptoStrategyProxy *)self v1NeoStrategy];
    if ([v6 mergeEncryptedDataFromRecord:v4])
    {
      v7 = [(ICAccountCryptoStrategyProxy *)self v2Strategy];
      v8 = [v7 mergeEncryptedDataFromRecord:v4];
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
  v2 = [(ICAccountCryptoStrategyProxy *)self customPasswordStrategy];
  v3 = [v2 hasPassphraseSet];

  return v3;
}

- (NSString)passphraseHint
{
  v2 = [(ICAccountCryptoStrategyProxy *)self customPasswordStrategy];
  v3 = [v2 passphraseHint];

  return v3;
}

- (BOOL)setPassphrase:(id)a3 hint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__ICAccountCryptoStrategyProxy_setPassphrase_hint___block_invoke;
  v11[3] = &unk_278197028;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v9 = v7;
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
  v3 = [(ICAccountCryptoStrategyProxy *)self v1Strategy];
  [v3 removePassphrase];

  v4 = [(ICAccountCryptoStrategyProxy *)self v1NeoStrategy];
  [v4 removePassphrase];
}

- (BOOL)isPassphraseCorrect:(id)a3
{
  v4 = a3;
  v5 = [(ICAccountCryptoStrategyProxy *)self customPasswordStrategy];
  v6 = [v5 isPassphraseCorrect:v4];

  return v6;
}

- (BOOL)authenticateWithPassphrase:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ICAccountCryptoStrategyProxy_authenticateWithPassphrase___block_invoke;
  v7[3] = &unk_278197050;
  v7[4] = self;
  v5 = v4;
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