@interface LNActionDescriptionMetadata
- (BOOL)isEqual:(id)equal;
- (LNActionDescriptionMetadata)actionDescriptionMetadataWithIcon:(id)icon;
- (LNActionDescriptionMetadata)initWithCoder:(id)coder;
- (LNActionDescriptionMetadata)initWithDescriptionText:(id)text categoryName:(id)name searchKeywords:(id)keywords resultValueName:(id)valueName icon:(id)icon;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionDescriptionMetadata

- (LNActionDescriptionMetadata)actionDescriptionMetadataWithIcon:(id)icon
{
  iconCopy = icon;
  v5 = [(LNActionDescriptionMetadata *)self copy];
  v6 = [iconCopy copy];

  v7 = v5[5];
  v5[5] = v6;

  return v5;
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
LABEL_46:

      goto LABEL_47;
    }

    descriptionText = [(LNActionDescriptionMetadata *)self descriptionText];
    descriptionText2 = [(LNActionDescriptionMetadata *)v6 descriptionText];
    v9 = descriptionText;
    v10 = descriptionText2;
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

    searchKeywords = [(LNActionDescriptionMetadata *)self searchKeywords];
    searchKeywords2 = [(LNActionDescriptionMetadata *)v6 searchKeywords];
    v14 = searchKeywords;
    v18 = searchKeywords2;
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

    categoryName = [(LNActionDescriptionMetadata *)self categoryName];
    categoryName2 = [(LNActionDescriptionMetadata *)v6 categoryName];
    v20 = categoryName;
    v24 = categoryName2;
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
          resultValueName = [(LNActionDescriptionMetadata *)self resultValueName];
          resultValueName2 = [(LNActionDescriptionMetadata *)v6 resultValueName];
          v29 = resultValueName;
          v30 = resultValueName2;
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
          icon = [(LNActionDescriptionMetadata *)v6 icon];
          v29 = v33;
          v35 = icon;
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
  descriptionText = [(LNActionDescriptionMetadata *)self descriptionText];
  v4 = [descriptionText hash];
  searchKeywords = [(LNActionDescriptionMetadata *)self searchKeywords];
  v6 = [searchKeywords hash] ^ v4;
  categoryName = [(LNActionDescriptionMetadata *)self categoryName];
  v8 = [categoryName hash];
  resultValueName = [(LNActionDescriptionMetadata *)self resultValueName];
  v10 = v6 ^ v8 ^ [resultValueName hash];
  icon = [(LNActionDescriptionMetadata *)self icon];
  v12 = [icon hash];

  return v10 ^ v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionText = [(LNActionDescriptionMetadata *)self descriptionText];
  categoryName = [(LNActionDescriptionMetadata *)self categoryName];
  searchKeywords = [(LNActionDescriptionMetadata *)self searchKeywords];
  resultValueName = [(LNActionDescriptionMetadata *)self resultValueName];
  icon = [(LNActionDescriptionMetadata *)self icon];
  v11 = [v3 stringWithFormat:@"<%@: %p, description: %@, categoryName: %@, searchKeywords: [%@], resultValueName: %@, icon: %@>", v5, self, descriptionText, categoryName, searchKeywords, resultValueName, icon];

  return v11;
}

- (LNActionDescriptionMetadata)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptionText"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryName"];
    v7 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"searchKeywords"];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resultValueName"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    self = [(LNActionDescriptionMetadata *)self initWithDescriptionText:v5 categoryName:v6 searchKeywords:v10 resultValueName:v11 icon:v12];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  descriptionText = [(LNActionDescriptionMetadata *)self descriptionText];
  [coderCopy encodeObject:descriptionText forKey:@"descriptionText"];

  categoryName = [(LNActionDescriptionMetadata *)self categoryName];
  [coderCopy encodeObject:categoryName forKey:@"categoryName"];

  searchKeywords = [(LNActionDescriptionMetadata *)self searchKeywords];
  [coderCopy encodeObject:searchKeywords forKey:@"searchKeywords"];

  resultValueName = [(LNActionDescriptionMetadata *)self resultValueName];
  [coderCopy encodeObject:resultValueName forKey:@"resultValueName"];

  icon = [(LNActionDescriptionMetadata *)self icon];
  [coderCopy encodeObject:icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  descriptionText = [(LNActionDescriptionMetadata *)self descriptionText];
  categoryName = [(LNActionDescriptionMetadata *)self categoryName];
  searchKeywords = [(LNActionDescriptionMetadata *)self searchKeywords];
  resultValueName = [(LNActionDescriptionMetadata *)self resultValueName];
  icon = [(LNActionDescriptionMetadata *)self icon];
  v10 = [v4 initWithDescriptionText:descriptionText categoryName:categoryName searchKeywords:searchKeywords resultValueName:resultValueName icon:icon];

  return v10;
}

- (LNActionDescriptionMetadata)initWithDescriptionText:(id)text categoryName:(id)name searchKeywords:(id)keywords resultValueName:(id)valueName icon:(id)icon
{
  textCopy = text;
  nameCopy = name;
  keywordsCopy = keywords;
  valueNameCopy = valueName;
  iconCopy = icon;
  if (!textCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionDescriptionMetadata.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"actionDescription"}];
  }

  v32.receiver = self;
  v32.super_class = LNActionDescriptionMetadata;
  v18 = [(LNActionDescriptionMetadata *)&v32 init];
  if (v18)
  {
    v19 = [textCopy copy];
    descriptionText = v18->_descriptionText;
    v18->_descriptionText = v19;

    v21 = [nameCopy copy];
    categoryName = v18->_categoryName;
    v18->_categoryName = v21;

    v23 = [keywordsCopy copy];
    searchKeywords = v18->_searchKeywords;
    v18->_searchKeywords = v23;

    v25 = [valueNameCopy copy];
    resultValueName = v18->_resultValueName;
    v18->_resultValueName = v25;

    v27 = [iconCopy copy];
    icon = v18->_icon;
    v18->_icon = v27;

    v29 = v18;
  }

  return v18;
}

@end