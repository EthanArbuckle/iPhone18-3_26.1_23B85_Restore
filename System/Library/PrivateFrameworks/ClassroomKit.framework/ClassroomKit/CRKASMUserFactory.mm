@interface CRKASMUserFactory
- (BOOL)isEqual:(id)equal;
- (BOOL)isUser:(id)user suitableForPerson:(id)person;
- (CRKASMUserFactory)initWithConfiguration:(id)configuration certificateVendor:(id)vendor;
- (id)cachedTrustedUserForPerson:(id)person;
- (id)cachedUserForPerson:(id)person;
- (id)makeTrustedUserForPerson:(id)person;
- (id)makeUserForPerson:(id)person;
- (id)trustedUserForPerson:(id)person;
- (id)userForPerson:(id)person;
- (unint64_t)hash;
@end

@implementation CRKASMUserFactory

- (CRKASMUserFactory)initWithConfiguration:(id)configuration certificateVendor:(id)vendor
{
  configurationCopy = configuration;
  vendorCopy = vendor;
  v12.receiver = self;
  v12.super_class = CRKASMUserFactory;
  v9 = [(CRKASMUserFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_certificateVendor, vendor);
  }

  return v10;
}

- (id)userForPerson:(id)person
{
  personCopy = person;
  v5 = [(CRKASMUserFactory *)self cachedUserForPerson:personCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CRKASMUserFactory *)self makeUserForPerson:personCopy];
  }

  v8 = v7;

  return v8;
}

- (id)trustedUserForPerson:(id)person
{
  personCopy = person;
  v5 = [(CRKASMUserFactory *)self cachedTrustedUserForPerson:personCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CRKASMUserFactory *)self makeTrustedUserForPerson:personCopy];
  }

  v8 = v7;

  return v8;
}

- (id)cachedUserForPerson:(id)person
{
  personCopy = person;
  configuration = [(CRKASMUserFactory *)self configuration];
  userCache = [configuration userCache];
  objectID = [personCopy objectID];
  v8 = [userCache objectForKey:objectID];

  LODWORD(self) = [(CRKASMUserFactory *)self isUser:v8 suitableForPerson:personCopy];
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

- (id)makeUserForPerson:(id)person
{
  personCopy = person;
  v5 = [[CRKASMConcreteUser alloc] initWithBackingPerson:personCopy];
  configuration = [(CRKASMUserFactory *)self configuration];
  userCache = [configuration userCache];
  objectID = [personCopy objectID];

  [userCache setObject:v5 forKey:objectID];

  return v5;
}

- (id)cachedTrustedUserForPerson:(id)person
{
  personCopy = person;
  configuration = [(CRKASMUserFactory *)self configuration];
  trustedUserCache = [configuration trustedUserCache];
  objectID = [personCopy objectID];
  v8 = [trustedUserCache objectForKey:objectID];

  LODWORD(self) = [(CRKASMUserFactory *)self isUser:v8 suitableForPerson:personCopy];
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

- (id)makeTrustedUserForPerson:(id)person
{
  personCopy = person;
  v5 = [CRKASMConcreteTrustedUser alloc];
  certificateVendor = [(CRKASMUserFactory *)self certificateVendor];
  v7 = [(CRKASMConcreteTrustedUser *)v5 initWithBackingPerson:personCopy certificateVendor:certificateVendor];

  configuration = [(CRKASMUserFactory *)self configuration];
  trustedUserCache = [configuration trustedUserCache];
  objectID = [personCopy objectID];

  [trustedUserCache setObject:v7 forKey:objectID];

  return v7;
}

- (BOOL)isUser:(id)user suitableForPerson:(id)person
{
  userCopy = user;
  v6 = userCopy;
  if (userCopy)
  {
    v7 = userCopy;
    personCopy = person;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [CRKASMUserFactory isUser:suitableForPerson:];
    }

    backingPersonInitialModificationDate = [v7 backingPersonInitialModificationDate];
    dateLastModified = [personCopy dateLastModified];

    v11 = [backingPersonInitialModificationDate isEqualToDate:dateLastModified];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  configuration = [(CRKASMUserFactory *)self configuration];
  v3 = [configuration hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v5 = [@"configuration" componentsSeparatedByString:{@", "}];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_1;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  selfCopy = self;
  v9 = equalCopy;
  v10 = v7;
  if (selfCopy == v9)
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
          v18 = [(CRKASMUserFactory *)selfCopy valueForKey:v16];
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