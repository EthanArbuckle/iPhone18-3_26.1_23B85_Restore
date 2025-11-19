@interface DDSAssertion
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAssertion:(id)a3;
- (DDSAssertion)initWithCoder:(id)a3;
- (DDSAssertion)initWithQuery:(id)a3;
- (DDSAssetPolicy)policy;
- (NSSet)assertionIdentifiers;
- (NSSet)clientIdentifiers;
- (id)addDescriptorWithAssertionID:(id)a3 clientID:(id)a4 policy:(id)a5;
- (id)assertionIDsForClientID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dumpDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateDescription;
- (void)removeDescriptorWithAssertionID:(id)a3;
- (void)removeDescriptorWithClientID:(id)a3;
@end

@implementation DDSAssertion

- (DDSAssertion)initWithQuery:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DDSAssertion;
  v6 = [(DDSAssertion *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    descriptors = v7->_descriptors;
    v7->_descriptors = v8;
  }

  return v7;
}

- (id)addDescriptorWithAssertionID:(id)a3 clientID:(id)a4 policy:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v26 = a5;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [(DDSAssertion *)self descriptors];
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [v15 assertionIdentifier];
        if ([v16 isEqualToString:v8])
        {
          v17 = [v15 clientIdentifier];
          v18 = [v17 isEqualToString:v9];

          if (v18)
          {

            v22 = DefaultLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v32 = v8;
              _os_log_impl(&dword_1DF7C6000, v22, OS_LOG_TYPE_DEFAULT, "Descriptor with assertion id: %{public}@ already added.", buf, 0xCu);
            }

            v20 = 0;
            v19 = v26;
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v19 = v26;
  v20 = [[DDSAssertDescriptor alloc] initWithPolicy:v26 assertionID:v8 clientID:v9];
  v21 = [(DDSAssertion *)self descriptors];
  [v21 addObject:v20];

  [(DDSAssertion *)self invalidateDescription];
LABEL_16:

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (NSSet)clientIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(DDSAssertion *)self descriptors];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__DDSAssertion_clientIdentifiers__block_invoke;
  v7[3] = &unk_1E86C6010;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __33__DDSAssertion_clientIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 clientIdentifier];
  [v2 addObject:v3];
}

- (NSSet)assertionIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(DDSAssertion *)self descriptors];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__DDSAssertion_assertionIdentifiers__block_invoke;
  v7[3] = &unk_1E86C6010;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __36__DDSAssertion_assertionIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 assertionIdentifier];
  [v2 addObject:v3];
}

- (id)assertionIDsForClientID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [(DDSAssertion *)self descriptors];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__DDSAssertion_assertionIDsForClientID___block_invoke;
  v12[3] = &unk_1E86C6038;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

void __40__DDSAssertion_assertionIDsForClientID___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 clientIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v7 assertionIdentifier];
    [v5 addObject:v6];
  }
}

- (DDSAssetPolicy)policy
{
  v3 = objc_alloc_init(DDSAssetPolicy);
  [(DDSAssetPolicy *)v3 setPreferredDownloadFrequency:0x7FFFFFFFLL];
  v4 = [(DDSAssertion *)self descriptors];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__DDSAssertion_policy__block_invoke;
  v7[3] = &unk_1E86C6010;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __22__DDSAssertion_policy__block_invoke(uint64_t a1, void *a2)
{
  v8 = [a2 policy];
  if ([*(a1 + 32) downloadWithoutPower])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v8 downloadWithoutPower];
  }

  [*(a1 + 32) setDownloadWithoutPower:v3];
  if ([*(a1 + 32) downloadOverCellular])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v8 downloadOverCellular];
  }

  [*(a1 + 32) setDownloadOverCellular:v4];
  v5 = [*(a1 + 32) preferredDownloadFrequency];
  v6 = [v8 preferredDownloadFrequency];
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  [*(a1 + 32) setPreferredDownloadFrequency:v7];
}

- (void)removeDescriptorWithClientID:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v5 = [(DDSAssertion *)self descriptors];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __45__DDSAssertion_removeDescriptorWithClientID___block_invoke;
  v11 = &unk_1E86C6060;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  [v5 enumerateObjectsUsingBlock:&v8];

  v7 = [(DDSAssertion *)self descriptors:v8];
  [v7 removeObject:v15[5]];

  [(DDSAssertion *)self invalidateDescription];
  _Block_object_dispose(&v14, 8);
}

void __45__DDSAssertion_removeDescriptorWithClientID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 clientIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)removeDescriptorWithAssertionID:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v5 = [(DDSAssertion *)self descriptors];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __48__DDSAssertion_removeDescriptorWithAssertionID___block_invoke;
  v11 = &unk_1E86C6060;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  [v5 enumerateObjectsUsingBlock:&v8];

  v7 = [(DDSAssertion *)self descriptors:v8];
  [v7 removeObject:v15[5]];

  [(DDSAssertion *)self invalidateDescription];
  _Block_object_dispose(&v14, 8);
}

void __48__DDSAssertion_removeDescriptorWithAssertionID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 assertionIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (DDSAssertion)initWithCoder:(id)a3
{
  v28[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = DDSAssertion;
  v5 = [(DDSAssertion *)&v27 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_query);
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];
    query = v5->_query;
    v5->_query = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_lastUpdated);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v13;

    v15 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v28[2] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    v17 = [v15 setWithArray:v16];

    v18 = NSStringFromSelector(sel_descriptors);
    v26 = 0;
    v19 = [v4 decodeTopLevelObjectOfClasses:v17 forKey:v18 error:&v26];
    v20 = v26;
    descriptors = v5->_descriptors;
    v5->_descriptors = v19;

    v6 = v5;
    if (v20)
    {
      v22 = DefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(DDSAssertion *)v20 initWithCoder:v22];
      }

      v6 = 0;
    }
  }

  v23 = v6;

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DDSAssertion *)self query];
  v6 = NSStringFromSelector(sel_query);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(DDSAssertion *)self lastUpdated];
  v8 = NSStringFromSelector(sel_lastUpdated);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(DDSAssertion *)self descriptors];
  v9 = NSStringFromSelector(sel_descriptors);
  [v4 encodeObject:v10 forKey:v9];
}

- (void)invalidateDescription
{
  description = self->_description;
  self->_description = 0;
  MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  description = self->_description;
  if (!description)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = [(DDSAssertion *)self query];
    v7 = [(DDSAssertion *)self policy];
    v8 = [v4 stringWithFormat:@"<%@: %p, query: %@, policy: %@>", v5, self, v6, v7];
    v9 = self->_description;
    self->_description = v8;

    description = self->_description;
  }

  return description;
}

- (id)dumpDescription
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (DDS_IS_INTERNAL_INSTALL())
  {
    v4 = [(DDSAssertion *)self query];
    v5 = [v4 dumpDescription];
    [v3 appendFormat:@"[\n%@\n", v5];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(DDSAssertion *)self descriptors];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) dumpDescription];
          [v3 appendFormat:@"\n%@", v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = [(DDSAssertion *)self lastUpdated];
    v13 = DDS_STRING_FROM_DATE(v12);
    [v3 appendFormat:@"\n\nUpdated: %@\n]", v13];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(DDSAssertion *)self query];
  v6 = [v4 initWithQuery:v5];

  if (v6)
  {
    v7 = [(DDSAssertion *)self descriptors];
    [v6 setDescriptors:v7];

    v8 = [(DDSAssertion *)self lastUpdated];
    [v6 setLastUpdated:v8];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DDSAssertion *)self isEqualToAssertion:v4];

  return v5;
}

- (BOOL)isEqualToAssertion:(id)a3
{
  v4 = a3;
  v5 = [(DDSAssertion *)self query];
  v6 = [v4 query];
  if (DDSObjectsAreEqualOrNil(v5, v6))
  {
    v7 = [(DDSAssertion *)self policy];
    v8 = [v4 policy];
    if (DDSObjectsAreEqualOrNil(v7, v8))
    {
      v9 = [(DDSAssertion *)self lastUpdated];
      v10 = [v4 lastUpdated];
      if ([v9 isEqualToDate:v10])
      {
        v11 = [(DDSAssertion *)self descriptors];
        v12 = [v4 descriptors];
        v13 = [v11 isEqual:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(DDSAssertion *)self query];
  v4 = [v3 hash];
  v5 = [(DDSAssertion *)self policy];
  v6 = [v5 hash] ^ v4;
  v7 = [(DDSAssertion *)self lastUpdated];
  v8 = [v7 hash];
  v9 = [(DDSAssertion *)self descriptors];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "Error decoding descriptors: (%{public}@)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end