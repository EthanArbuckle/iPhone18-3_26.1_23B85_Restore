@interface CRKASMUserFactory
- (BOOL)isEqual:(id)a3;
- (BOOL)isUser:(id)a3 suitableForPerson:(id)a4;
- (CRKASMUserFactory)initWithConfiguration:(id)a3 certificateVendor:(id)a4;
- (id)cachedTrustedUserForPerson:(id)a3;
- (id)cachedUserForPerson:(id)a3;
- (id)makeTrustedUserForPerson:(id)a3;
- (id)makeUserForPerson:(id)a3;
- (id)trustedUserForPerson:(id)a3;
- (id)userForPerson:(id)a3;
- (unint64_t)hash;
@end

@implementation CRKASMUserFactory

- (CRKASMUserFactory)initWithConfiguration:(id)a3 certificateVendor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRKASMUserFactory;
  v9 = [(CRKASMUserFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v10->_certificateVendor, a4);
  }

  return v10;
}

- (id)userForPerson:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMUserFactory *)self cachedUserForPerson:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CRKASMUserFactory *)self makeUserForPerson:v4];
  }

  v8 = v7;

  return v8;
}

- (id)trustedUserForPerson:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMUserFactory *)self cachedTrustedUserForPerson:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CRKASMUserFactory *)self makeTrustedUserForPerson:v4];
  }

  v8 = v7;

  return v8;
}

- (id)cachedUserForPerson:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMUserFactory *)self configuration];
  v6 = [v5 userCache];
  v7 = [v4 objectID];
  v8 = [v6 objectForKey:v7];

  LODWORD(self) = [(CRKASMUserFactory *)self isUser:v8 suitableForPerson:v4];
  if (self)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)makeUserForPerson:(id)a3
{
  v4 = a3;
  v5 = [[CRKASMConcreteUser alloc] initWithBackingPerson:v4];
  v6 = [(CRKASMUserFactory *)self configuration];
  v7 = [v6 userCache];
  v8 = [v4 objectID];

  [v7 setObject:v5 forKey:v8];

  return v5;
}

- (id)cachedTrustedUserForPerson:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMUserFactory *)self configuration];
  v6 = [v5 trustedUserCache];
  v7 = [v4 objectID];
  v8 = [v6 objectForKey:v7];

  LODWORD(self) = [(CRKASMUserFactory *)self isUser:v8 suitableForPerson:v4];
  if (self)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)makeTrustedUserForPerson:(id)a3
{
  v4 = a3;
  v5 = [CRKASMConcreteTrustedUser alloc];
  v6 = [(CRKASMUserFactory *)self certificateVendor];
  v7 = [(CRKASMConcreteTrustedUser *)v5 initWithBackingPerson:v4 certificateVendor:v6];

  v8 = [(CRKASMUserFactory *)self configuration];
  v9 = [v8 trustedUserCache];
  v10 = [v4 objectID];

  [v9 setObject:v7 forKey:v10];

  return v7;
}

- (BOOL)isUser:(id)a3 suitableForPerson:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = a4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [CRKASMUserFactory isUser:suitableForPerson:];
    }

    v9 = [v7 backingPersonInitialModificationDate];
    v10 = [v8 dateLastModified];

    v11 = [v9 isEqualToDate:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v2 = [(CRKASMUserFactory *)self configuration];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [@"configuration" componentsSeparatedByString:{@", "}];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_1;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  v8 = self;
  v9 = v4;
  v10 = v7;
  if (v8 == v9)
  {
    v21 = 1;
  }

  else if ([(CRKASMUserFactory *)v9 isMemberOfClass:objc_opt_class()])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = v10;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = v9;
          v18 = [(CRKASMUserFactory *)v8 valueForKey:v16];
          v19 = [(CRKASMUserFactory *)v17 valueForKey:v16];

          if (v18 | v19)
          {
            v20 = [v18 isEqual:v19];

            if (!v20)
            {
              v21 = 0;
              goto LABEL_16;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v21 = 1;
LABEL_16:
      v10 = v23;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)isUser:suitableForPerson:.cold.1()
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKASMUserFactory isUser:suitableForPerson:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInFunction:v0 file:@"CRKASMUserFactory.m" lineNumber:91 description:{@"expected %@, got %@", v2, v4}];
}

@end