@interface LNActionDescriptionMetadata
- (BOOL)isEqual:(id)a3;
- (LNActionDescriptionMetadata)actionDescriptionMetadataWithIcon:(id)a3;
- (LNActionDescriptionMetadata)initWithCoder:(id)a3;
- (LNActionDescriptionMetadata)initWithDescriptionText:(id)a3 categoryName:(id)a4 searchKeywords:(id)a5 resultValueName:(id)a6 icon:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionDescriptionMetadata

- (LNActionDescriptionMetadata)actionDescriptionMetadataWithIcon:(id)a3
{
  v4 = a3;
  v5 = [(LNActionDescriptionMetadata *)self copy];
  v6 = [v4 copy];

  v7 = v5[5];
  v5[5] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_46:

      goto LABEL_47;
    }

    v7 = [(LNActionDescriptionMetadata *)self descriptionText];
    v8 = [(LNActionDescriptionMetadata *)v6 descriptionText];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_44;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    v16 = [(LNActionDescriptionMetadata *)self searchKeywords];
    v17 = [(LNActionDescriptionMetadata *)v6 searchKeywords];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_43;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    v22 = [(LNActionDescriptionMetadata *)self categoryName];
    v23 = [(LNActionDescriptionMetadata *)v6 categoryName];
    v20 = v22;
    v24 = v23;
    v41 = v24;
    if (v20 != v24)
    {
      LOBYTE(v12) = 0;
      if (v20)
      {
        v25 = v24;
        v26 = v20;
        if (v24)
        {
          v12 = [v20 isEqual:v24];

          if (!v12)
          {
            goto LABEL_42;
          }

LABEL_24:
          v40 = v20;
          v27 = [(LNActionDescriptionMetadata *)self resultValueName];
          v28 = [(LNActionDescriptionMetadata *)v6 resultValueName];
          v29 = v27;
          v30 = v28;
          v38 = v30;
          v39 = v29;
          if (v29 == v30)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            if (!v29)
            {
              v31 = v30;
              v20 = v40;
              goto LABEL_39;
            }

            v31 = v30;
            v20 = v40;
            if (!v30)
            {
LABEL_39:

              goto LABEL_40;
            }

            v32 = [v29 isEqual:v30];

            if (!v32)
            {
              LOBYTE(v12) = 0;
              v20 = v40;
LABEL_40:
              v25 = v38;
              v26 = v39;
              goto LABEL_41;
            }
          }

          v33 = [(LNActionDescriptionMetadata *)self icon:v38];
          v34 = [(LNActionDescriptionMetadata *)v6 icon];
          v29 = v33;
          v35 = v34;
          v36 = v35;
          if (v29 == v35)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            LOBYTE(v12) = 0;
            if (v29)
            {
              v20 = v40;
              if (v35)
              {
                LOBYTE(v12) = [v29 isEqual:v35];
              }

              goto LABEL_37;
            }
          }

          v20 = v40;
LABEL_37:

          v31 = v36;
          goto LABEL_39;
        }
      }

      else
      {
        v25 = v24;
        v26 = 0;
      }

LABEL_41:

LABEL_42:
      v19 = v41;
LABEL_43:

      goto LABEL_44;
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_47:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNActionDescriptionMetadata *)self descriptionText];
  v4 = [v3 hash];
  v5 = [(LNActionDescriptionMetadata *)self searchKeywords];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNActionDescriptionMetadata *)self categoryName];
  v8 = [v7 hash];
  v9 = [(LNActionDescriptionMetadata *)self resultValueName];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(LNActionDescriptionMetadata *)self icon];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNActionDescriptionMetadata *)self descriptionText];
  v7 = [(LNActionDescriptionMetadata *)self categoryName];
  v8 = [(LNActionDescriptionMetadata *)self searchKeywords];
  v9 = [(LNActionDescriptionMetadata *)self resultValueName];
  v10 = [(LNActionDescriptionMetadata *)self icon];
  v11 = [v3 stringWithFormat:@"<%@: %p, description: %@, categoryName: %@, searchKeywords: [%@], resultValueName: %@, icon: %@>", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

- (LNActionDescriptionMetadata)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptionText"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"categoryName"];
    v7 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"searchKeywords"];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resultValueName"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    self = [(LNActionDescriptionMetadata *)self initWithDescriptionText:v5 categoryName:v6 searchKeywords:v10 resultValueName:v11 icon:v12];

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNActionDescriptionMetadata *)self descriptionText];
  [v4 encodeObject:v5 forKey:@"descriptionText"];

  v6 = [(LNActionDescriptionMetadata *)self categoryName];
  [v4 encodeObject:v6 forKey:@"categoryName"];

  v7 = [(LNActionDescriptionMetadata *)self searchKeywords];
  [v4 encodeObject:v7 forKey:@"searchKeywords"];

  v8 = [(LNActionDescriptionMetadata *)self resultValueName];
  [v4 encodeObject:v8 forKey:@"resultValueName"];

  v9 = [(LNActionDescriptionMetadata *)self icon];
  [v4 encodeObject:v9 forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(LNActionDescriptionMetadata *)self descriptionText];
  v6 = [(LNActionDescriptionMetadata *)self categoryName];
  v7 = [(LNActionDescriptionMetadata *)self searchKeywords];
  v8 = [(LNActionDescriptionMetadata *)self resultValueName];
  v9 = [(LNActionDescriptionMetadata *)self icon];
  v10 = [v4 initWithDescriptionText:v5 categoryName:v6 searchKeywords:v7 resultValueName:v8 icon:v9];

  return v10;
}

- (LNActionDescriptionMetadata)initWithDescriptionText:(id)a3 categoryName:(id)a4 searchKeywords:(id)a5 resultValueName:(id)a6 icon:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v13)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"LNActionDescriptionMetadata.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"actionDescription"}];
  }

  v32.receiver = self;
  v32.super_class = LNActionDescriptionMetadata;
  v18 = [(LNActionDescriptionMetadata *)&v32 init];
  if (v18)
  {
    v19 = [v13 copy];
    descriptionText = v18->_descriptionText;
    v18->_descriptionText = v19;

    v21 = [v14 copy];
    categoryName = v18->_categoryName;
    v18->_categoryName = v21;

    v23 = [v15 copy];
    searchKeywords = v18->_searchKeywords;
    v18->_searchKeywords = v23;

    v25 = [v16 copy];
    resultValueName = v18->_resultValueName;
    v18->_resultValueName = v25;

    v27 = [v17 copy];
    icon = v18->_icon;
    v18->_icon = v27;

    v29 = v18;
  }

  return v18;
}

@end