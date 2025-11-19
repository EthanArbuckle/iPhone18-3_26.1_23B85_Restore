@interface CRKASMConcreteLocation
- (BOOL)isEqual:(id)a3;
- (CRKASMConcreteLocation)initWithBackingLocation:(id)a3;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CRKASMConcreteLocation

- (CRKASMConcreteLocation)initWithBackingLocation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKASMConcreteLocation;
  v5 = [(CRKASMConcreteLocation *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectID];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 locationName];
    v10 = [v9 copy];
    name = v5->_name;
    v5->_name = v10;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(CRKASMConcreteLocation *)self identifier];
  v4 = [v3 hash];
  v5 = [(CRKASMConcreteLocation *)self name];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [@"identifier name"];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_12;
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

  else if ([(CRKASMConcreteLocation *)v9 isMemberOfClass:objc_opt_class()])
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
          v18 = [(CRKASMConcreteLocation *)v8 valueForKey:v16];
          v19 = [(CRKASMConcreteLocation *)v17 valueForKey:v16];

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
  v5 = [(CRKASMConcreteLocation *)self identifier];
  v6 = [(CRKASMConcreteLocation *)self name];
  v7 = [v3 stringWithFormat:@"<%@: %p { identifier = %@, name = %@ }>", v4, self, v5, v6];

  return v7;
}

@end