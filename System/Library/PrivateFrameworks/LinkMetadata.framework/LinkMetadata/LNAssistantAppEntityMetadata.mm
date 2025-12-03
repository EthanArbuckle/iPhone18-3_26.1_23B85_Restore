@interface LNAssistantAppEntityMetadata
- (BOOL)isEqual:(id)equal;
- (LNAssistantAppEntityMetadata)initWithCoder:(id)coder;
- (LNAssistantAppEntityMetadata)initWithEntityIdentifier:(id)identifier kind:(int64_t)kind phraseTemplates:(id)templates;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAssistantAppEntityMetadata

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
LABEL_22:

      goto LABEL_23;
    }

    entityIdentifier = [(LNAssistantAppEntityMetadata *)self entityIdentifier];
    entityIdentifier2 = [(LNAssistantAppEntityMetadata *)v6 entityIdentifier];
    v9 = entityIdentifier;
    v10 = entityIdentifier2;
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
        goto LABEL_20;
      }

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_21;
      }
    }

    kind = [(LNAssistantAppEntityMetadata *)self kind];
    if (kind != [(LNAssistantAppEntityMetadata *)v6 kind])
    {
      LOBYTE(v12) = 0;
LABEL_21:

      goto LABEL_22;
    }

    phraseTemplates = [(LNAssistantAppEntityMetadata *)self phraseTemplates];
    phraseTemplates2 = [(LNAssistantAppEntityMetadata *)v6 phraseTemplates];
    v14 = phraseTemplates;
    v18 = phraseTemplates2;
    v13 = v18;
    if (v14 == v18)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v18)
      {
        LOBYTE(v12) = [v14 isEqualToArray:v18];
      }
    }

LABEL_20:
    goto LABEL_21;
  }

  LOBYTE(v12) = 1;
LABEL_23:

  return v12;
}

- (unint64_t)hash
{
  entityIdentifier = [(LNAssistantAppEntityMetadata *)self entityIdentifier];
  v4 = [entityIdentifier hash];
  v5 = [(LNAssistantAppEntityMetadata *)self kind]^ v4;
  phraseTemplates = [(LNAssistantAppEntityMetadata *)self phraseTemplates];
  v7 = [phraseTemplates hash];

  return v5 ^ v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  entityIdentifier = [(LNAssistantAppEntityMetadata *)self entityIdentifier];
  kind = [(LNAssistantAppEntityMetadata *)self kind];
  phraseTemplates = [(LNAssistantAppEntityMetadata *)self phraseTemplates];
  v9 = [v3 stringWithFormat:@"<%@: %p, entityIdentifier: %@, kind: %ld, phraseTemplates: %@>", v5, self, entityIdentifier, kind, phraseTemplates];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entityIdentifier = [(LNAssistantAppEntityMetadata *)self entityIdentifier];
  [coderCopy encodeObject:entityIdentifier forKey:@"entityIdentifier"];

  [coderCopy encodeInteger:-[LNAssistantAppEntityMetadata kind](self forKey:{"kind"), @"kind"}];
  phraseTemplates = [(LNAssistantAppEntityMetadata *)self phraseTemplates];
  [coderCopy encodeObject:phraseTemplates forKey:@"phraseTemplates"];
}

- (LNAssistantAppEntityMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityIdentifier"];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"kind"];
    if (v6)
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"phraseTemplates"];

      if (v10)
      {
        v6 = [[LNAssistantAppEntityMetadata alloc] initWithEntityIdentifier:v5 kind:v6 phraseTemplates:v10];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (LNAssistantAppEntityMetadata)initWithEntityIdentifier:(id)identifier kind:(int64_t)kind phraseTemplates:(id)templates
{
  identifierCopy = identifier;
  templatesCopy = templates;
  v11 = templatesCopy;
  if (identifierCopy)
  {
    if (templatesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAssistantAppEntityMetadata.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"entityIdentifier"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAssistantAppEntityMetadata.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"phraseTemplates"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = LNAssistantAppEntityMetadata;
  v12 = [(LNAssistantAppEntityMetadata *)&v21 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    entityIdentifier = v12->_entityIdentifier;
    v12->_entityIdentifier = v13;

    v12->_kind = kind;
    v15 = [v11 copy];
    phraseTemplates = v12->_phraseTemplates;
    v12->_phraseTemplates = v15;

    v17 = v12;
  }

  return v12;
}

@end