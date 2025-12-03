@interface _CDSpotlightCoalescedDeletionOperation
- (BOOL)addDeletion:(id)deletion;
- (_CDSpotlightCoalescedDeletionOperation)init;
- (_CDSpotlightCoalescedDeletionOperation)initWithBundleIdToIdentifiers:(id)identifiers bundleIdToCompletionBlocks:(id)blocks bundleIdToDomainIdentifiers:(id)domainIdentifiers bundleIdToDomainCompletionBlocks:(id)completionBlocks;
- (id)description;
- (void)enumerateDeletionPredicatesAndCompletionsWithBlock:(id)block;
@end

@implementation _CDSpotlightCoalescedDeletionOperation

- (_CDSpotlightCoalescedDeletionOperation)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(_CDSpotlightCoalescedDeletionOperation *)self initWithBundleIdToIdentifiers:v3 bundleIdToCompletionBlocks:v4 bundleIdToDomainIdentifiers:v5 bundleIdToDomainCompletionBlocks:v6];

  return v7;
}

- (_CDSpotlightCoalescedDeletionOperation)initWithBundleIdToIdentifiers:(id)identifiers bundleIdToCompletionBlocks:(id)blocks bundleIdToDomainIdentifiers:(id)domainIdentifiers bundleIdToDomainCompletionBlocks:(id)completionBlocks
{
  identifiersCopy = identifiers;
  blocksCopy = blocks;
  domainIdentifiersCopy = domainIdentifiers;
  completionBlocksCopy = completionBlocks;
  v20.receiver = self;
  v20.super_class = _CDSpotlightCoalescedDeletionOperation;
  v15 = [(_CDSpotlightCoalescedDeletionOperation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleIdToItemIdentifiers, identifiers);
    objc_storeStrong(&v16->_bundleIdToItemCompletionBlocks, blocks);
    objc_storeStrong(&v16->_bundleIdToDomainIdentifiers, domainIdentifiers);
    objc_storeStrong(&v16->_bundleIdToDomainCompletionBlocks, completionBlocks);
    v17 = os_transaction_create();
    transaction = v16->_transaction;
    v16->_transaction = v17;
  }

  return v16;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    v6 = self->_bundleIdToItemIdentifiers;
    bundleIdToDomainIdentifiers = self->_bundleIdToDomainIdentifiers;
  }

  else
  {
    v6 = 0;
    bundleIdToDomainIdentifiers = 0;
  }

  bundleIdToDomainIdentifiers = [v3 initWithFormat:@"%@ - itemIdentifierIds: %@, domainIdentifierIds: %@", v5, v6, bundleIdToDomainIdentifiers];

  return bundleIdToDomainIdentifiers;
}

- (void)enumerateDeletionPredicatesAndCompletionsWithBlock:(id)block
{
  blockCopy = block;
  bundleIdToItemIdentifiers = self->_bundleIdToItemIdentifiers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93___CDSpotlightCoalescedDeletionOperation_enumerateDeletionPredicatesAndCompletionsWithBlock___block_invoke;
  v11[3] = &unk_1E7368FD8;
  v11[4] = self;
  v6 = blockCopy;
  v12 = v6;
  [(NSMutableDictionary *)bundleIdToItemIdentifiers enumerateKeysAndObjectsUsingBlock:v11];
  bundleIdToDomainIdentifiers = self->_bundleIdToDomainIdentifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93___CDSpotlightCoalescedDeletionOperation_enumerateDeletionPredicatesAndCompletionsWithBlock___block_invoke_2;
  v9[3] = &unk_1E7369000;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(NSMutableDictionary *)bundleIdToDomainIdentifiers enumerateKeysAndObjectsUsingBlock:v9];
}

- (BOOL)addDeletion:(id)deletion
{
  deletionCopy = deletion;
  v5 = deletionCopy;
  if (deletionCopy)
  {
    deletionCopy = deletionCopy[1];
  }

  if ([deletionCopy isEqualToString:@"identifiers"])
  {
    if (v5)
    {
      v6 = v5[2];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(NSMutableDictionary *)self->_bundleIdToItemIdentifiers objectForKeyedSubscript:v6];

    if (!v7)
    {
      v8 = objc_opt_new();
      if (v5)
      {
        v9 = v5[2];
      }

      else
      {
        v9 = 0;
      }

      [(NSMutableDictionary *)self->_bundleIdToItemIdentifiers setObject:v8 forKeyedSubscript:v9];
    }

    if (v5)
    {
      v10 = v5[2];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(NSMutableDictionary *)self->_bundleIdToItemCompletionBlocks objectForKeyedSubscript:v10];

    if (!v11)
    {
      v12 = objc_opt_new();
      if (v5)
      {
        v13 = v5[2];
      }

      else
      {
        v13 = 0;
      }

      [(NSMutableDictionary *)self->_bundleIdToItemCompletionBlocks setObject:v12 forKeyedSubscript:v13];
    }

    if (v5)
    {
      v14 = v5[2];
    }

    else
    {
      v14 = 0;
    }

    v15 = [(NSMutableDictionary *)self->_bundleIdToItemIdentifiers objectForKeyedSubscript:v14];
    v16 = [v15 count];
    if (v5)
    {
      v17 = v5[3];
    }

    else
    {
      v17 = 0;
    }

    [v15 unionSet:v17];
    v18 = [v15 count] > v16;
    if (!v5 || !v5[5])
    {
      goto LABEL_24;
    }

    bundleIdToItemCompletionBlocks = self->_bundleIdToItemCompletionBlocks;
    goto LABEL_23;
  }

  if (v5)
  {
    v23 = v5[1];
  }

  else
  {
    v23 = 0;
  }

  if (![v23 isEqualToString:@"domainIdentifiers"])
  {
    v18 = 0;
    goto LABEL_48;
  }

  if (v5)
  {
    v24 = v5[2];
  }

  else
  {
    v24 = 0;
  }

  v25 = [(NSMutableDictionary *)self->_bundleIdToDomainIdentifiers objectForKeyedSubscript:v24];

  if (!v25)
  {
    v26 = objc_opt_new();
    if (v5)
    {
      v27 = v5[2];
    }

    else
    {
      v27 = 0;
    }

    [(NSMutableDictionary *)self->_bundleIdToDomainIdentifiers setObject:v26 forKeyedSubscript:v27];
  }

  if (v5)
  {
    v28 = v5[2];
  }

  else
  {
    v28 = 0;
  }

  v29 = [(NSMutableDictionary *)self->_bundleIdToItemCompletionBlocks objectForKeyedSubscript:v28];

  if (!v29)
  {
    v30 = objc_opt_new();
    if (v5)
    {
      v31 = v5[2];
    }

    else
    {
      v31 = 0;
    }

    [(NSMutableDictionary *)self->_bundleIdToItemCompletionBlocks setObject:v30 forKeyedSubscript:v31];
  }

  if (v5)
  {
    v32 = v5[2];
  }

  else
  {
    v32 = 0;
  }

  v33 = [(NSMutableDictionary *)self->_bundleIdToDomainIdentifiers objectForKeyedSubscript:v32];
  v15 = v33;
  if (v5)
  {
    v34 = v5[4];
  }

  else
  {
    v34 = 0;
  }

  v18 = [v33 addDomainsFromSet:v34];
  if (v5 && v5[5])
  {
    bundleIdToItemCompletionBlocks = self->_bundleIdToDomainCompletionBlocks;
LABEL_23:
    v20 = v5[2];
    v21 = [(NSMutableDictionary *)bundleIdToItemCompletionBlocks objectForKeyedSubscript:v20];
    v22 = MEMORY[0x193B00C50](v5[5]);
    [v21 addObject:v22];
  }

LABEL_24:

LABEL_48:
  return v18;
}

@end