@interface LNPropertyMetadata
- (BOOL)isEqual:(id)equal;
- (LNPropertyMetadata)initWithCoder:(id)coder;
- (LNPropertyMetadata)initWithIdentifier:(id)identifier valueType:(id)type title:(id)title capabilities:(unint64_t)capabilities updateActionIdentifier:(id)actionIdentifier optional:(BOOL)optional spotlightAttributeKey:(id)key spotlightCustomAttributeKey:(id)self0;
- (id)copyWithDescriptiveMetadataFromProperty:(id)property usingLibraryKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNPropertyMetadata

- (id)copyWithDescriptiveMetadataFromProperty:(id)property usingLibraryKey:(id)key
{
  propertyCopy = property;
  v6 = [(LNPropertyMetadata *)self copy];
  v7 = v6[4];
  if (!v7 || ([v7 key], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, !v9))
  {
    title = [propertyCopy title];
    v11 = v6[4];
    v6[4] = title;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_55:

      goto LABEL_56;
    }

    valueType = [(LNPropertyMetadata *)self valueType];
    valueType2 = [(LNPropertyMetadata *)v6 valueType];
    v9 = valueType;
    v10 = valueType2;
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

    identifier = [(LNPropertyMetadata *)self identifier];
    identifier2 = [(LNPropertyMetadata *)v6 identifier];
    v14 = identifier;
    v18 = identifier2;
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

    title = [(LNPropertyMetadata *)self title];
    title2 = [(LNPropertyMetadata *)v6 title];
    v20 = title;
    v24 = title2;
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
    updateActionIdentifier = [(LNPropertyMetadata *)self updateActionIdentifier];
    updateActionIdentifier2 = [(LNPropertyMetadata *)v6 updateActionIdentifier];
    v20 = updateActionIdentifier;
    v28 = updateActionIdentifier2;
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
          capabilities = [(LNPropertyMetadata *)self capabilities];
          if (capabilities != [(LNPropertyMetadata *)v6 capabilities])
          {
            goto LABEL_32;
          }

          isOptional = [(LNPropertyMetadata *)self isOptional];
          if (isOptional != [(LNPropertyMetadata *)v6 isOptional])
          {
            goto LABEL_32;
          }

          spotlightAttributeKey = [(LNPropertyMetadata *)self spotlightAttributeKey];
          spotlightAttributeKey2 = [(LNPropertyMetadata *)v6 spotlightAttributeKey];
          v20 = spotlightAttributeKey;
          v37 = spotlightAttributeKey2;
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

          spotlightCustomAttributeKey = [(LNPropertyMetadata *)self spotlightCustomAttributeKey];
          spotlightCustomAttributeKey2 = [(LNPropertyMetadata *)v6 spotlightCustomAttributeKey];
          v43 = spotlightCustomAttributeKey;
          v44 = spotlightCustomAttributeKey2;
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
  valueType = [(LNPropertyMetadata *)self valueType];
  v4 = [valueType hash];
  identifier = [(LNPropertyMetadata *)self identifier];
  v6 = [identifier hash] ^ v4;
  title = [(LNPropertyMetadata *)self title];
  v8 = [title hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(LNPropertyMetadata *)self identifier];
  valueType = [(LNPropertyMetadata *)self valueType];
  title = [(LNPropertyMetadata *)self title];
  selfCopy = self;
  v10 = objc_opt_new();
  if (([(LNPropertyMetadata *)selfCopy capabilities]& 1) != 0)
  {
    v11 = MEMORY[0x1E696AEC0];
    updateActionIdentifier = [(LNPropertyMetadata *)selfCopy updateActionIdentifier];
    v13 = [v11 stringWithFormat:@"U<%@>", updateActionIdentifier];
    [v10 addObject:v13];
  }

  if (([(LNPropertyMetadata *)selfCopy capabilities]& 2) != 0)
  {
    [v10 addObject:@"Def"];
  }

  v14 = [v10 componentsJoinedByString:@"|"];

  if ([(LNPropertyMetadata *)selfCopy isOptional])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  spotlightAttributeKey = [(LNPropertyMetadata *)selfCopy spotlightAttributeKey];
  spotlightCustomAttributeKey = [(LNPropertyMetadata *)selfCopy spotlightCustomAttributeKey];
  v18 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, valueType: %@, title: %@, capabilities: %@, isOptional: %@, spotlightAttributeKey: %@, spotlightCustomAttributeKey: %@>", v5, selfCopy, identifier, valueType, title, v14, v15, spotlightAttributeKey, spotlightCustomAttributeKey];

  return v18;
}

- (LNPropertyMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  if (v6)
  {
    v8 = [coderCopy decodeIntegerForKey:@"capabilities"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateActionIdentifier"];
    v10 = [coderCopy decodeBoolForKey:@"isOptional"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spotlightAttributeKey"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spotlightCustomAttributeKey"];
    self = [(LNPropertyMetadata *)self initWithIdentifier:v5 valueType:v6 title:v7 capabilities:v8 updateActionIdentifier:v9 optional:v10 spotlightAttributeKey:v11 spotlightCustomAttributeKey:v12];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNPropertyMetadata *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  valueType = [(LNPropertyMetadata *)self valueType];
  [coderCopy encodeObject:valueType forKey:@"valueType"];

  title = [(LNPropertyMetadata *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  [coderCopy encodeInteger:-[LNPropertyMetadata capabilities](self forKey:{"capabilities"), @"capabilities"}];
  updateActionIdentifier = [(LNPropertyMetadata *)self updateActionIdentifier];
  [coderCopy encodeObject:updateActionIdentifier forKey:@"updateActionIdentifier"];

  [coderCopy encodeBool:-[LNPropertyMetadata isOptional](self forKey:{"isOptional"), @"isOptional"}];
  spotlightAttributeKey = [(LNPropertyMetadata *)self spotlightAttributeKey];
  [coderCopy encodeObject:spotlightAttributeKey forKey:@"spotlightAttributeKey"];

  spotlightCustomAttributeKey = [(LNPropertyMetadata *)self spotlightCustomAttributeKey];
  [coderCopy encodeObject:spotlightCustomAttributeKey forKey:@"spotlightCustomAttributeKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LNPropertyMetadata alloc];
  identifier = [(LNPropertyMetadata *)self identifier];
  valueType = [(LNPropertyMetadata *)self valueType];
  title = [(LNPropertyMetadata *)self title];
  capabilities = [(LNPropertyMetadata *)self capabilities];
  updateActionIdentifier = [(LNPropertyMetadata *)self updateActionIdentifier];
  isOptional = [(LNPropertyMetadata *)self isOptional];
  spotlightAttributeKey = [(LNPropertyMetadata *)self spotlightAttributeKey];
  spotlightCustomAttributeKey = [(LNPropertyMetadata *)self spotlightCustomAttributeKey];
  v13 = [(LNPropertyMetadata *)v4 initWithIdentifier:identifier valueType:valueType title:title capabilities:capabilities updateActionIdentifier:updateActionIdentifier optional:isOptional spotlightAttributeKey:spotlightAttributeKey spotlightCustomAttributeKey:spotlightCustomAttributeKey];

  return v13;
}

- (LNPropertyMetadata)initWithIdentifier:(id)identifier valueType:(id)type title:(id)title capabilities:(unint64_t)capabilities updateActionIdentifier:(id)actionIdentifier optional:(BOOL)optional spotlightAttributeKey:(id)key spotlightCustomAttributeKey:(id)self0
{
  identifierCopy = identifier;
  typeCopy = type;
  titleCopy = title;
  actionIdentifierCopy = actionIdentifier;
  keyCopy = key;
  attributeKeyCopy = attributeKey;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNPropertyMetadata.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];
  }

  v31.receiver = self;
  v31.super_class = LNPropertyMetadata;
  v19 = [(LNPropertyMetadata *)&v31 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [typeCopy copy];
    valueType = v19->_valueType;
    v19->_valueType = v22;

    objc_storeStrong(&v19->_title, title);
    v19->_capabilities = capabilities;
    objc_storeStrong(&v19->_updateActionIdentifier, actionIdentifier);
    v19->_optional = optional;
    objc_storeStrong(&v19->_spotlightAttributeKey, key);
    objc_storeStrong(&v19->_spotlightCustomAttributeKey, attributeKey);
    v24 = v19;
  }

  return v19;
}

@end