@interface CRKAnnotatedCredential
- (BOOL)isEqual:(id)a3;
- (CRKAnnotatedCredential)initWithCredential:(id)a3 annotation:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRKAnnotatedCredential

- (CRKAnnotatedCredential)initWithCredential:(id)a3 annotation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRKAnnotatedCredential;
  v9 = [(CRKAnnotatedCredential *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credential, a3);
    v11 = [v8 copy];
    annotation = v10->_annotation;
    v10->_annotation = v11;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(CRKAnnotatedCredential *)self credential];
  v4 = [v3 hash];
  v5 = [(CRKAnnotatedCredential *)self annotation];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [@"credential annotation"];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_11;
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

  else if ([(CRKAnnotatedCredential *)v9 isMemberOfClass:objc_opt_class()])
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
          v18 = [(CRKAnnotatedCredential *)v8 valueForKey:v16];
          v19 = [(CRKAnnotatedCredential *)v17 valueForKey:v16];

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
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKAnnotatedCredential *)self credential];
  v6 = [(CRKAnnotatedCredential *)self annotation];
  v7 = [v3 stringWithFormat:@"<%@: %p { credential = %@, annotation = %@ }>", v4, self, v5, v6];

  return v7;
}

@end