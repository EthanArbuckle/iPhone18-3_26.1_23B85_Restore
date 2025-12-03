@interface CRKASMConcreteCourse
+ (id)courseNameForClass:(id)class;
+ (id)trustedUserIdentifierForTrustedUsers:(id)users;
+ (id)trustedUsersFromPersons:(id)persons environment:(id)environment;
+ (id)usersFromPersons:(id)persons environment:(id)environment;
- (BOOL)isEqual:(id)equal;
- (CRKASMConcreteCourse)initWithBackingClass:(id)class location:(id)location persons:(id)persons trustedPersons:(id)trustedPersons identityVendor:(id)vendor manageableLocationIDs:(id)ds environment:(id)environment;
- (CRKIdentity)identity;
- (NSSet)allTrustedUserCertificates;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRKASMConcreteCourse

- (CRKASMConcreteCourse)initWithBackingClass:(id)class location:(id)location persons:(id)persons trustedPersons:(id)trustedPersons identityVendor:(id)vendor manageableLocationIDs:(id)ds environment:(id)environment
{
  classCopy = class;
  locationCopy = location;
  personsCopy = persons;
  trustedPersonsCopy = trustedPersons;
  vendorCopy = vendor;
  dsCopy = ds;
  environmentCopy = environment;
  v45.receiver = self;
  v45.super_class = CRKASMConcreteCourse;
  v21 = [(CRKASMConcreteCourse *)&v45 init];
  if (v21)
  {
    v22 = [objc_opt_class() trustedUsersFromPersons:trustedPersonsCopy environment:environmentCopy];
    objectID = [classCopy objectID];
    v24 = [objectID copy];
    backingClassObjectID = v21->_backingClassObjectID;
    v21->_backingClassObjectID = v24;

    objc_storeStrong(&v21->_identityVendor, vendor);
    certificateVendor = [environmentCopy certificateVendor];
    certificateVendor = v21->_certificateVendor;
    v21->_certificateVendor = certificateVendor;

    v28 = MEMORY[0x277D04C00];
    objectID2 = [classCopy objectID];
    v30 = [v28 crk_identifierWithOpaqueString:objectID2];
    identifier = v21->_identifier;
    v21->_identifier = v30;

    v21->_mascot = [CRKClassKitColorAndMascotUtility mascotForClass:classCopy];
    v21->_color = [CRKClassKitColorAndMascotUtility colorForClass:classCopy];
    objc_storeStrong(&v21->_trustedUsers, v22);
    v32 = [[CRKASMConcreteLocation alloc] initWithBackingLocation:locationCopy];
    location = v21->_location;
    v21->_location = v32;

    v34 = [objc_opt_class() courseNameForClass:classCopy];
    name = v21->_name;
    v21->_name = v34;

    v36 = [objc_opt_class() usersFromPersons:personsCopy environment:environmentCopy];
    users = v21->_users;
    v21->_users = v36;

    v38 = [objc_opt_class() trustedUserIdentifierForTrustedUsers:v22];
    trustedUserIdentifiers = v21->_trustedUserIdentifiers;
    v21->_trustedUserIdentifiers = v38;

    if ([classCopy isEditable])
    {
      objectID3 = [locationCopy objectID];
      v21->_editable = [dsCopy containsObject:objectID3];
    }

    else
    {
      v21->_editable = 0;
    }

    dateCreated = [classCopy dateCreated];
    creationDate = v21->_creationDate;
    v21->_creationDate = dateCreated;
  }

  return v21;
}

- (CRKIdentity)identity
{
  identityVendor = [(CRKASMConcreteCourse *)self identityVendor];
  identity = [identityVendor identity];

  return identity;
}

- (NSSet)allTrustedUserCertificates
{
  certificateVendor = [(CRKASMConcreteCourse *)self certificateVendor];
  trustedUserIdentifiers = [(CRKASMConcreteCourse *)self trustedUserIdentifiers];
  v5 = [certificateVendor certificatesForUserIdentifiers:trustedUserIdentifiers];

  return v5;
}

- (unint64_t)hash
{
  identifier = [(CRKASMConcreteCourse *)self identifier];
  v4 = [identifier hash];
  name = [(CRKASMConcreteCourse *)self name];
  v6 = [name hash] ^ v4;
  mascot = [(CRKASMConcreteCourse *)self mascot];
  v8 = v6 ^ mascot ^ [(CRKASMConcreteCourse *)self color];
  isEditable = [(CRKASMConcreteCourse *)self isEditable];
  users = [(CRKASMConcreteCourse *)self users];
  v11 = v8 ^ isEditable ^ [users hash];
  trustedUsers = [(CRKASMConcreteCourse *)self trustedUsers];
  v13 = [trustedUsers hash];
  identityVendor = [(CRKASMConcreteCourse *)self identityVendor];
  v15 = v13 ^ [identityVendor hash];
  certificateVendor = [(CRKASMConcreteCourse *)self certificateVendor];
  v17 = v15 ^ [certificateVendor hash];
  location = [(CRKASMConcreteCourse *)self location];
  v19 = v11 ^ v17 ^ [location hash];
  creationDate = [(CRKASMConcreteCourse *)self creationDate];
  v21 = [creationDate hash];

  return v19 ^ v21;
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  name = [CFSTR(""identifier name];
  v6 = [name mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_3;
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
          v18 = [(CRKASMConcreteCourse *)selfCopy valueForKey:v16];
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
  identifier = [(CRKASMConcreteCourse *)self identifier];
  stringValue = [identifier stringValue];
  name = [(CRKASMConcreteCourse *)self name];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKASMConcreteCourse mascot](self, "mascot")}];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKASMConcreteCourse color](self, "color")}];
  isEditable = [(CRKASMConcreteCourse *)self isEditable];
  v8 = @"NO";
  if (isEditable)
  {
    v8 = @"YES";
  }

  v9 = v8;
  users = [(CRKASMConcreteCourse *)self users];
  trustedUsers = [(CRKASMConcreteCourse *)self trustedUsers];
  location = [(CRKASMConcreteCourse *)self location];
  creationDate = [(CRKASMConcreteCourse *)self creationDate];
  v14 = [v17 stringWithFormat:@"<%@: %p { identifier = %@, name = %@, mascot = %@, color = %@, editable = %@, users = %@, trustedUsers = %@, location = %@, creationDate = %@ }>", v16, self, stringValue, name, v5, v6, v9, users, trustedUsers, location, creationDate];

  return v14;
}

+ (id)trustedUserIdentifierForTrustedUsers:(id)users
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [users crk_mapUsingBlock:&__block_literal_global_20];
  v5 = [v3 setWithArray:v4];

  return v5;
}

+ (id)courseNameForClass:(id)class
{
  classCopy = class;
  displayName = [classCopy displayName];
  v5 = [displayName copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    className = [classCopy className];
    v7 = [className copy];
  }

  return v7;
}

+ (id)usersFromPersons:(id)persons environment:(id)environment
{
  environmentCopy = environment;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__CRKASMConcreteCourse_usersFromPersons_environment___block_invoke;
  v9[3] = &unk_278DC18E0;
  v10 = environmentCopy;
  v6 = environmentCopy;
  v7 = [persons crk_mapUsingBlock:v9];

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

+ (id)trustedUsersFromPersons:(id)persons environment:(id)environment
{
  environmentCopy = environment;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__CRKASMConcreteCourse_trustedUsersFromPersons_environment___block_invoke;
  v9[3] = &unk_278DC1908;
  v10 = environmentCopy;
  v6 = environmentCopy;
  v7 = [persons crk_mapUsingBlock:v9];

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