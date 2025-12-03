@interface LNSubstitutionValue
- (LNSubstitutionValue)initWithCoder:(id)coder;
- (LNSubstitutionValue)initWithParameterIdentifier:(id)identifier title:(id)title titleKey:(id)key value:(id)value optionsCollectionTitle:(id)collectionTitle systemImageName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSubstitutionValue

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameterIdentifier = [(LNSubstitutionValue *)self parameterIdentifier];
  [coderCopy encodeObject:parameterIdentifier forKey:@"parameterIdentifier"];

  title = [(LNSubstitutionValue *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  titleKey = [(LNSubstitutionValue *)self titleKey];
  [coderCopy encodeObject:titleKey forKey:@"titleKey"];

  value = [(LNSubstitutionValue *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  optionsCollectionTitle = [(LNSubstitutionValue *)self optionsCollectionTitle];
  [coderCopy encodeObject:optionsCollectionTitle forKey:@"optionsCollectionTitle"];

  systemImageName = [(LNSubstitutionValue *)self systemImageName];
  [coderCopy encodeObject:systemImageName forKey:@"systemImageName"];
}

- (LNSubstitutionValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleKey"];
      if (v7)
      {
        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
        v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optionsCollectionTitle"];
        v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];
        self = [(LNSubstitutionValue *)self initWithParameterIdentifier:v5 title:v6 titleKey:v7 value:v8 optionsCollectionTitle:v9 systemImageName:v10];

        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNSubstitutionValue)initWithParameterIdentifier:(id)identifier title:(id)title titleKey:(id)key value:(id)value optionsCollectionTitle:(id)collectionTitle systemImageName:(id)name
{
  identifierCopy = identifier;
  titleCopy = title;
  keyCopy = key;
  valueCopy = value;
  collectionTitleCopy = collectionTitle;
  nameCopy = name;
  if (identifierCopy)
  {
    if (titleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNSubstitutionValue.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];

    if (titleCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNSubstitutionValue.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"title"}];

LABEL_3:
  v32.receiver = self;
  v32.super_class = LNSubstitutionValue;
  v20 = [(LNSubstitutionValue *)&v32 init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    parameterIdentifier = v20->_parameterIdentifier;
    v20->_parameterIdentifier = v21;

    v23 = [titleCopy copy];
    title = v20->_title;
    v20->_title = v23;

    v25 = [keyCopy copy];
    titleKey = v20->_titleKey;
    v20->_titleKey = v25;

    objc_storeStrong(&v20->_value, value);
    objc_storeStrong(&v20->_optionsCollectionTitle, collectionTitle);
    objc_storeStrong(&v20->_systemImageName, name);
    v27 = v20;
  }

  return v20;
}

@end