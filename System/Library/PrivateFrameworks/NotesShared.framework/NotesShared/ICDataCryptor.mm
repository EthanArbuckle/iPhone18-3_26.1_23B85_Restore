@interface ICDataCryptor
- (BOOL)isEqual:(id)equal;
- (ICDataCryptor)initWithCoder:(id)coder;
- (ICDataCryptor)initWithObjectIdentifier:(id)identifier;
- (ICDataCryptor)initWithObjectIdentifier:(id)identifier context:(id)context;
- (id)decryptData:(id)data;
- (id)description;
- (id)encryptData:(id)data;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICDataCryptor

- (ICDataCryptor)initWithObjectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[ICNoteContext sharedContext];
  snapshotManagedObjectContext = [v5 snapshotManagedObjectContext];

  v7 = [(ICDataCryptor *)self initWithObjectIdentifier:identifierCopy context:snapshotManagedObjectContext];
  return v7;
}

- (ICDataCryptor)initWithObjectIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = ICDataCryptor;
  v9 = [(ICDataCryptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectIdentifier, identifier);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objectIdentifier = [(ICDataCryptor *)self objectIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, objectIdentifier: %@>", v5, self, objectIdentifier];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  objectIdentifier = [(ICDataCryptor *)self objectIdentifier];
  objectIdentifier2 = [v5 objectIdentifier];
  v8 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == objectIdentifier)
  {
    v9 = 0;
  }

  else
  {
    v9 = objectIdentifier;
  }

  v10 = v9;
  if (v8 == objectIdentifier2)
  {
    v11 = 0;
  }

  else
  {
    v11 = objectIdentifier2;
  }

  v12 = v11;
  v13 = v12;
  if (v10 | v12)
  {
    if (v10)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v10 isEqual:v12];
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (unint64_t)hash
{
  objectIdentifier = [(ICDataCryptor *)self objectIdentifier];
  v3 = [objectIdentifier hash];
  v11 = ICHashWithHashKeys(v3, v4, v5, v6, v7, v8, v9, v10, 0);

  return v11;
}

- (id)encryptData:(id)data
{
  dataCopy = data;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19;
  v16 = __Block_byref_object_dispose__19;
  v17 = 0;
  context = [(ICDataCryptor *)self context];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__ICDataCryptor_encryptData___block_invoke;
  v9[3] = &unk_2781968D8;
  v9[4] = self;
  v11 = &v12;
  v6 = dataCopy;
  v10 = v6;
  [context performBlockAndWait:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __29__ICDataCryptor_encryptData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectIdentifier];
  v3 = [*(a1 + 32) context];
  v8 = [ICCloudSyncingObject cloudObjectWithIdentifier:v2 context:v3];

  v4 = [v8 cryptoStrategy];
  v5 = [v4 encryptSidecarData:*(a1 + 40)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)decryptData:(id)data
{
  dataCopy = data;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19;
  v16 = __Block_byref_object_dispose__19;
  v17 = 0;
  context = [(ICDataCryptor *)self context];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__ICDataCryptor_decryptData___block_invoke;
  v9[3] = &unk_2781968D8;
  v9[4] = self;
  v11 = &v12;
  v6 = dataCopy;
  v10 = v6;
  [context performBlockAndWait:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __29__ICDataCryptor_decryptData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectIdentifier];
  v3 = [*(a1 + 32) context];
  v8 = [ICCloudSyncingObject cloudObjectWithIdentifier:v2 context:v3];

  v4 = [v8 cryptoStrategy];
  v5 = [v4 decryptSidecarData:*(a1 + 40)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (ICDataCryptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ICDataCryptor;
  v5 = [(ICDataCryptor *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_objectIdentifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    objectIdentifier = v5->_objectIdentifier;
    v5->_objectIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectIdentifier = [(ICDataCryptor *)self objectIdentifier];
  v5 = NSStringFromSelector(sel_objectIdentifier);
  [coderCopy encodeObject:objectIdentifier forKey:v5];
}

@end