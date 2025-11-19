@interface LNPropertyMetadata
- (BOOL)isEqual:(id)a3;
- (LNPropertyMetadata)initWithCoder:(id)a3;
- (LNPropertyMetadata)initWithIdentifier:(id)a3 valueType:(id)a4 title:(id)a5 capabilities:(unint64_t)a6 updateActionIdentifier:(id)a7 optional:(BOOL)a8 spotlightAttributeKey:(id)a9 spotlightCustomAttributeKey:(id)a10;
- (id)copyWithDescriptiveMetadataFromProperty:(id)a3 usingLibraryKey:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNPropertyMetadata

- (id)copyWithDescriptiveMetadataFromProperty:(id)a3 usingLibraryKey:(id)a4
{
  v5 = a3;
  v6 = [(LNPropertyMetadata *)self copy];
  v7 = v6[4];
  if (!v7 || ([v7 key], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, !v9))
  {
    v10 = [v5 title];
    v11 = v6[4];
    v6[4] = v10;
  }

  return v6;
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
LABEL_55:

      goto LABEL_56;
    }

    v7 = [(LNPropertyMetadata *)self valueType];
    v8 = [(LNPropertyMetadata *)v6 valueType];
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
        goto LABEL_53;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_54:

        goto LABEL_55;
      }
    }

    v16 = [(LNPropertyMetadata *)self identifier];
    v17 = [(LNPropertyMetadata *)v6 identifier];
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
        goto LABEL_52;
      }

      v21 = [v14 isEqualToString:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_53:

        goto LABEL_54;
      }
    }

    v22 = [(LNPropertyMetadata *)self title];
    v23 = [(LNPropertyMetadata *)v6 title];
    v20 = v22;
    v24 = v23;
    v19 = v24;
    v54 = v20;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v25 = v24;
      if (!v20 || !v24)
      {
        goto LABEL_51;
      }

      v12 = [v20 isEqual:v24];

      if (!v12)
      {
        goto LABEL_52;
      }
    }

    v53 = v19;
    v26 = [(LNPropertyMetadata *)self updateActionIdentifier];
    v27 = [(LNPropertyMetadata *)v6 updateActionIdentifier];
    v20 = v26;
    v28 = v27;
    v29 = v28;
    v52 = v20;
    if (v20 != v28)
    {
      LOBYTE(v12) = 0;
      v30 = v28;
      if (v20)
      {
        v19 = v53;
        if (v28)
        {
          v31 = v28;
          v32 = [v20 isEqual:v28];
          v51 = v31;

          if (!v32)
          {
LABEL_32:
            LOBYTE(v12) = 0;
            v19 = v53;
            v25 = v51;
LABEL_51:

            v20 = v54;
LABEL_52:

            goto LABEL_53;
          }

LABEL_30:
          v33 = [(LNPropertyMetadata *)self capabilities];
          if (v33 != [(LNPropertyMetadata *)v6 capabilities])
          {
            goto LABEL_32;
          }

          v34 = [(LNPropertyMetadata *)self isOptional];
          if (v34 != [(LNPropertyMetadata *)v6 isOptional])
          {
            goto LABEL_32;
          }

          v35 = [(LNPropertyMetadata *)self spotlightAttributeKey];
          v36 = [(LNPropertyMetadata *)v6 spotlightAttributeKey];
          v20 = v35;
          v37 = v36;
          v50 = v37;
          if (v20 == v37)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            if (!v20)
            {
              v38 = v37;
              v39 = 0;
              v19 = v53;
              goto LABEL_48;
            }

            v38 = v37;
            v39 = v20;
            v19 = v53;
            if (!v37)
            {
LABEL_48:
              v45 = v39;

              goto LABEL_49;
            }

            v40 = [v20 isEqual:v37];

            if (!v40)
            {
              LOBYTE(v12) = 0;
              v19 = v53;
LABEL_49:
              v30 = v50;
              v29 = v51;
              goto LABEL_50;
            }
          }

          v41 = [(LNPropertyMetadata *)self spotlightCustomAttributeKey];
          v42 = [(LNPropertyMetadata *)v6 spotlightCustomAttributeKey];
          v43 = v41;
          v44 = v42;
          v49 = v44;
          if (v43 == v44)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            LOBYTE(v12) = 0;
            if (v43)
            {
              v19 = v53;
              if (v44)
              {
                LOBYTE(v12) = [v43 isEqual:v44];
              }

              goto LABEL_46;
            }
          }

          v19 = v53;
LABEL_46:

          v38 = v49;
          v39 = v43;
          goto LABEL_48;
        }
      }

      else
      {
        v19 = v53;
      }

LABEL_50:
      v46 = v20;
      v47 = v29;

      v25 = v47;
      v20 = v52;
      goto LABEL_51;
    }

    v51 = v28;

    goto LABEL_30;
  }

  LOBYTE(v12) = 1;
LABEL_56:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNPropertyMetadata *)self valueType];
  v4 = [v3 hash];
  v5 = [(LNPropertyMetadata *)self identifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNPropertyMetadata *)self title];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNPropertyMetadata *)self identifier];
  v7 = [(LNPropertyMetadata *)self valueType];
  v8 = [(LNPropertyMetadata *)self title];
  v9 = self;
  v10 = objc_opt_new();
  if (([(LNPropertyMetadata *)v9 capabilities]& 1) != 0)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [(LNPropertyMetadata *)v9 updateActionIdentifier];
    v13 = [v11 stringWithFormat:@"U<%@>", v12];
    [v10 addObject:v13];
  }

  if (([(LNPropertyMetadata *)v9 capabilities]& 2) != 0)
  {
    [v10 addObject:@"Def"];
  }

  v14 = [v10 componentsJoinedByString:@"|"];

  if ([(LNPropertyMetadata *)v9 isOptional])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [(LNPropertyMetadata *)v9 spotlightAttributeKey];
  v17 = [(LNPropertyMetadata *)v9 spotlightCustomAttributeKey];
  v18 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, valueType: %@, title: %@, capabilities: %@, isOptional: %@, spotlightAttributeKey: %@, spotlightCustomAttributeKey: %@>", v5, v9, v6, v7, v8, v14, v15, v16, v17];

  return v18;
}

- (LNPropertyMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueType"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  if (v6)
  {
    v8 = [v4 decodeIntegerForKey:@"capabilities"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateActionIdentifier"];
    v10 = [v4 decodeBoolForKey:@"isOptional"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spotlightAttributeKey"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spotlightCustomAttributeKey"];
    self = [(LNPropertyMetadata *)self initWithIdentifier:v5 valueType:v6 title:v7 capabilities:v8 updateActionIdentifier:v9 optional:v10 spotlightAttributeKey:v11 spotlightCustomAttributeKey:v12];

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNPropertyMetadata *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNPropertyMetadata *)self valueType];
  [v4 encodeObject:v6 forKey:@"valueType"];

  v7 = [(LNPropertyMetadata *)self title];
  [v4 encodeObject:v7 forKey:@"title"];

  [v4 encodeInteger:-[LNPropertyMetadata capabilities](self forKey:{"capabilities"), @"capabilities"}];
  v8 = [(LNPropertyMetadata *)self updateActionIdentifier];
  [v4 encodeObject:v8 forKey:@"updateActionIdentifier"];

  [v4 encodeBool:-[LNPropertyMetadata isOptional](self forKey:{"isOptional"), @"isOptional"}];
  v9 = [(LNPropertyMetadata *)self spotlightAttributeKey];
  [v4 encodeObject:v9 forKey:@"spotlightAttributeKey"];

  v10 = [(LNPropertyMetadata *)self spotlightCustomAttributeKey];
  [v4 encodeObject:v10 forKey:@"spotlightCustomAttributeKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LNPropertyMetadata alloc];
  v5 = [(LNPropertyMetadata *)self identifier];
  v6 = [(LNPropertyMetadata *)self valueType];
  v7 = [(LNPropertyMetadata *)self title];
  v8 = [(LNPropertyMetadata *)self capabilities];
  v9 = [(LNPropertyMetadata *)self updateActionIdentifier];
  v10 = [(LNPropertyMetadata *)self isOptional];
  v11 = [(LNPropertyMetadata *)self spotlightAttributeKey];
  v12 = [(LNPropertyMetadata *)self spotlightCustomAttributeKey];
  v13 = [(LNPropertyMetadata *)v4 initWithIdentifier:v5 valueType:v6 title:v7 capabilities:v8 updateActionIdentifier:v9 optional:v10 spotlightAttributeKey:v11 spotlightCustomAttributeKey:v12];

  return v13;
}

- (LNPropertyMetadata)initWithIdentifier:(id)a3 valueType:(id)a4 title:(id)a5 capabilities:(unint64_t)a6 updateActionIdentifier:(id)a7 optional:(BOOL)a8 spotlightAttributeKey:(id)a9 spotlightCustomAttributeKey:(id)a10
{
  v14 = a3;
  v15 = a4;
  v30 = a5;
  v16 = a7;
  v17 = a9;
  v18 = a10;
  if (!v15)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"LNPropertyMetadata.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];
  }

  v31.receiver = self;
  v31.super_class = LNPropertyMetadata;
  v19 = [(LNPropertyMetadata *)&v31 init];
  if (v19)
  {
    v20 = [v14 copy];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [v15 copy];
    valueType = v19->_valueType;
    v19->_valueType = v22;

    objc_storeStrong(&v19->_title, a5);
    v19->_capabilities = a6;
    objc_storeStrong(&v19->_updateActionIdentifier, a7);
    v19->_optional = a8;
    objc_storeStrong(&v19->_spotlightAttributeKey, a9);
    objc_storeStrong(&v19->_spotlightCustomAttributeKey, a10);
    v24 = v19;
  }

  return v19;
}

@end