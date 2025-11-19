@interface CRKASMConcreteRoster
- (BOOL)isEqual:(id)a3;
- (CRKASMConcreteRoster)initWithOrganization:(id)a3 user:(id)a4 courses:(id)a5 certificateVendor:(id)a6;
- (NSSet)allTrustedUserCertificates;
- (NSString)description;
- (id)allTrustedUserIdentifiers;
- (unint64_t)hash;
@end

@implementation CRKASMConcreteRoster

- (CRKASMConcreteRoster)initWithOrganization:(id)a3 user:(id)a4 courses:(id)a5 certificateVendor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = CRKASMConcreteRoster;
  v15 = [(CRKASMConcreteRoster *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_organization, a3);
    objc_storeStrong(&v16->_user, a4);
    v17 = [v13 copy];
    courses = v16->_courses;
    v16->_courses = v17;

    objc_storeStrong(&v16->_certificateVendor, a6);
  }

  return v16;
}

- (NSSet)allTrustedUserCertificates
{
  v3 = [(CRKASMConcreteRoster *)self certificateVendor];
  v4 = [(CRKASMConcreteRoster *)self allTrustedUserIdentifiers];
  v5 = [v3 certificatesForUserIdentifiers:v4];

  return v5;
}

- (id)allTrustedUserIdentifiers
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(CRKASMConcreteRoster *)self courses];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 trustedUsers];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v18 + 1) + 8 * j) identifier];
              [v3 addObject:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];

  return v16;
}

- (unint64_t)hash
{
  v3 = [(CRKASMConcreteRoster *)self organization];
  v4 = [v3 hash];
  v5 = [(CRKASMConcreteRoster *)self user];
  v6 = [v5 hash] ^ v4;
  v7 = [(CRKASMConcreteRoster *)self courses];
  v8 = [v7 hash];
  v9 = [(CRKASMConcreteRoster *)self certificateVendor];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CFSTR(""organization user];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke;
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

  else if ([(CRKASMConcreteRoster *)v9 isMemberOfClass:objc_opt_class()])
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
          v18 = [(CRKASMConcreteRoster *)v8 valueForKey:v16];
          v19 = [(CRKASMConcreteRoster *)v17 valueForKey:v16];

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

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKASMConcreteRoster *)self courses];
  v6 = [(CRKASMConcreteRoster *)self user];
  v7 = [(CRKASMConcreteRoster *)self organization];
  v8 = [v3 stringWithFormat:@"<%@: %p { courses = %@, user = %@, organization = %@ }>", v4, self, v5, v6, v7];

  return v8;
}

@end