@interface CRKASMConcreteCourse
+ (id)courseNameForClass:(id)a3;
+ (id)trustedUserIdentifierForTrustedUsers:(id)a3;
+ (id)trustedUsersFromPersons:(id)a3 environment:(id)a4;
+ (id)usersFromPersons:(id)a3 environment:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CRKASMConcreteCourse)initWithBackingClass:(id)a3 location:(id)a4 persons:(id)a5 trustedPersons:(id)a6 identityVendor:(id)a7 manageableLocationIDs:(id)a8 environment:(id)a9;
- (CRKIdentity)identity;
- (NSSet)allTrustedUserCertificates;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRKASMConcreteCourse

- (CRKASMConcreteCourse)initWithBackingClass:(id)a3 location:(id)a4 persons:(id)a5 trustedPersons:(id)a6 identityVendor:(id)a7 manageableLocationIDs:(id)a8 environment:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v44 = a7;
  v19 = a8;
  v20 = a9;
  v45.receiver = self;
  v45.super_class = CRKASMConcreteCourse;
  v21 = [(CRKASMConcreteCourse *)&v45 init];
  if (v21)
  {
    v22 = [objc_opt_class() trustedUsersFromPersons:v18 environment:v20];
    v23 = [v15 objectID];
    v24 = [v23 copy];
    backingClassObjectID = v21->_backingClassObjectID;
    v21->_backingClassObjectID = v24;

    objc_storeStrong(&v21->_identityVendor, a7);
    v26 = [v20 certificateVendor];
    certificateVendor = v21->_certificateVendor;
    v21->_certificateVendor = v26;

    v28 = MEMORY[0x277D04C00];
    v29 = [v15 objectID];
    v30 = [v28 crk_identifierWithOpaqueString:v29];
    identifier = v21->_identifier;
    v21->_identifier = v30;

    v21->_mascot = [CRKClassKitColorAndMascotUtility mascotForClass:v15];
    v21->_color = [CRKClassKitColorAndMascotUtility colorForClass:v15];
    objc_storeStrong(&v21->_trustedUsers, v22);
    v32 = [[CRKASMConcreteLocation alloc] initWithBackingLocation:v16];
    location = v21->_location;
    v21->_location = v32;

    v34 = [objc_opt_class() courseNameForClass:v15];
    name = v21->_name;
    v21->_name = v34;

    v36 = [objc_opt_class() usersFromPersons:v17 environment:v20];
    users = v21->_users;
    v21->_users = v36;

    v38 = [objc_opt_class() trustedUserIdentifierForTrustedUsers:v22];
    trustedUserIdentifiers = v21->_trustedUserIdentifiers;
    v21->_trustedUserIdentifiers = v38;

    if ([v15 isEditable])
    {
      v40 = [v16 objectID];
      v21->_editable = [v19 containsObject:v40];
    }

    else
    {
      v21->_editable = 0;
    }

    v41 = [v15 dateCreated];
    creationDate = v21->_creationDate;
    v21->_creationDate = v41;
  }

  return v21;
}

- (CRKIdentity)identity
{
  v2 = [(CRKASMConcreteCourse *)self identityVendor];
  v3 = [v2 identity];

  return v3;
}

- (NSSet)allTrustedUserCertificates
{
  v3 = [(CRKASMConcreteCourse *)self certificateVendor];
  v4 = [(CRKASMConcreteCourse *)self trustedUserIdentifiers];
  v5 = [v3 certificatesForUserIdentifiers:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(CRKASMConcreteCourse *)self identifier];
  v4 = [v3 hash];
  v5 = [(CRKASMConcreteCourse *)self name];
  v6 = [v5 hash] ^ v4;
  v7 = [(CRKASMConcreteCourse *)self mascot];
  v8 = v6 ^ v7 ^ [(CRKASMConcreteCourse *)self color];
  v9 = [(CRKASMConcreteCourse *)self isEditable];
  v10 = [(CRKASMConcreteCourse *)self users];
  v11 = v8 ^ v9 ^ [v10 hash];
  v12 = [(CRKASMConcreteCourse *)self trustedUsers];
  v13 = [v12 hash];
  v14 = [(CRKASMConcreteCourse *)self identityVendor];
  v15 = v13 ^ [v14 hash];
  v16 = [(CRKASMConcreteCourse *)self certificateVendor];
  v17 = v15 ^ [v16 hash];
  v18 = [(CRKASMConcreteCourse *)self location];
  v19 = v11 ^ v17 ^ [v18 hash];
  v20 = [(CRKASMConcreteCourse *)self creationDate];
  v21 = [v20 hash];

  return v19 ^ v21;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CFSTR(""identifier name];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_3;
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

  else if ([(CRKASMConcreteCourse *)v9 isMemberOfClass:objc_opt_class()])
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
          v18 = [(CRKASMConcreteCourse *)v8 valueForKey:v16];
          v19 = [(CRKASMConcreteCourse *)v17 valueForKey:v16];

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

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v18 = [(CRKASMConcreteCourse *)self identifier];
  v3 = [v18 stringValue];
  v4 = [(CRKASMConcreteCourse *)self name];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKASMConcreteCourse mascot](self, "mascot")}];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKASMConcreteCourse color](self, "color")}];
  v7 = [(CRKASMConcreteCourse *)self isEditable];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = v8;
  v10 = [(CRKASMConcreteCourse *)self users];
  v11 = [(CRKASMConcreteCourse *)self trustedUsers];
  v12 = [(CRKASMConcreteCourse *)self location];
  v13 = [(CRKASMConcreteCourse *)self creationDate];
  v14 = [v17 stringWithFormat:@"<%@: %p { identifier = %@, name = %@, mascot = %@, color = %@, editable = %@, users = %@, trustedUsers = %@, location = %@, creationDate = %@ }>", v16, self, v3, v4, v5, v6, v9, v10, v11, v12, v13];

  return v14;
}

+ (id)trustedUserIdentifierForTrustedUsers:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [a3 crk_mapUsingBlock:&__block_literal_global_20];
  v5 = [v3 setWithArray:v4];

  return v5;
}

+ (id)courseNameForClass:(id)a3
{
  v3 = a3;
  v4 = [v3 displayName];
  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v3 className];
    v7 = [v8 copy];
  }

  return v7;
}

+ (id)usersFromPersons:(id)a3 environment:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__CRKASMConcreteCourse_usersFromPersons_environment___block_invoke;
  v9[3] = &unk_278DC18E0;
  v10 = v5;
  v6 = v5;
  v7 = [a3 crk_mapUsingBlock:v9];

  return v7;
}

id __53__CRKASMConcreteCourse_usersFromPersons_environment___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userFactory];
  v5 = [v4 userForPerson:v3];

  return v5;
}

+ (id)trustedUsersFromPersons:(id)a3 environment:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__CRKASMConcreteCourse_trustedUsersFromPersons_environment___block_invoke;
  v9[3] = &unk_278DC1908;
  v10 = v5;
  v6 = v5;
  v7 = [a3 crk_mapUsingBlock:v9];

  return v7;
}

id __60__CRKASMConcreteCourse_trustedUsersFromPersons_environment___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userFactory];
  v5 = [v4 trustedUserForPerson:v3];

  return v5;
}

@end