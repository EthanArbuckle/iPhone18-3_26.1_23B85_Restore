@interface LNQuerySortingOptionMetadata
- (BOOL)isEqual:(id)equal;
- (LNQuerySortingOptionMetadata)initWithCoder:(id)coder;
- (LNQuerySortingOptionMetadata)initWithPropertyIdentifier:(id)identifier entityType:(id)type;
- (LNStaticDeferredLocalizedString)title;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNQuerySortingOptionMetadata

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
LABEL_20:

      goto LABEL_21;
    }

    propertyIdentifier = [(LNQuerySortingOptionMetadata *)self propertyIdentifier];
    propertyIdentifier2 = [(LNQuerySortingOptionMetadata *)v6 propertyIdentifier];
    v9 = propertyIdentifier;
    v10 = propertyIdentifier2;
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
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    entityType = [(LNQuerySortingOptionMetadata *)self entityType];
    entityType2 = [(LNQuerySortingOptionMetadata *)v6 entityType];
    v14 = entityType;
    v17 = entityType2;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqualToString:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  propertyIdentifier = [(LNQuerySortingOptionMetadata *)self propertyIdentifier];
  v4 = [propertyIdentifier hash];
  entityType = [(LNQuerySortingOptionMetadata *)self entityType];
  v6 = [entityType hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  propertyIdentifier = [(LNQuerySortingOptionMetadata *)self propertyIdentifier];
  entityType = [(LNQuerySortingOptionMetadata *)self entityType];
  v8 = [v3 stringWithFormat:@"<%@: %p, propertyIdentifier: %@, entityType: %@>", v5, self, propertyIdentifier, entityType];

  return v8;
}

- (LNQuerySortingOptionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"propertyIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityType"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNQuerySortingOptionMetadata *)self initWithPropertyIdentifier:v5 entityType:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  propertyIdentifier = [(LNQuerySortingOptionMetadata *)self propertyIdentifier];
  [coderCopy encodeObject:propertyIdentifier forKey:@"propertyIdentifier"];

  entityType = [(LNQuerySortingOptionMetadata *)self entityType];
  [coderCopy encodeObject:entityType forKey:@"entityType"];
}

- (LNQuerySortingOptionMetadata)initWithPropertyIdentifier:(id)identifier entityType:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  v9 = typeCopy;
  if (identifierCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNQuerySortingOptionMetadata.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"propertyIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNQuerySortingOptionMetadata.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"entityType"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNQuerySortingOptionMetadata;
  v10 = [(LNQuerySortingOptionMetadata *)&v19 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    propertyIdentifier = v10->_propertyIdentifier;
    v10->_propertyIdentifier = v11;

    v13 = [v9 copy];
    entityType = v10->_entityType;
    v10->_entityType = v13;

    v15 = v10;
  }

  return v10;
}

- (LNStaticDeferredLocalizedString)title
{
  v2 = [[LNStaticDeferredLocalizedString alloc] initWithKey:&stru_1F02ED148 table:&stru_1F02ED148 bundleURL:0];

  return v2;
}

@end