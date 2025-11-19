@interface LNAssistantAppEntityMetadata
- (BOOL)isEqual:(id)a3;
- (LNAssistantAppEntityMetadata)initWithCoder:(id)a3;
- (LNAssistantAppEntityMetadata)initWithEntityIdentifier:(id)a3 kind:(int64_t)a4 phraseTemplates:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAssistantAppEntityMetadata

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
LABEL_22:

      goto LABEL_23;
    }

    v7 = [(LNAssistantAppEntityMetadata *)self entityIdentifier];
    v8 = [(LNAssistantAppEntityMetadata *)v6 entityIdentifier];
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
        goto LABEL_20;
      }

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v15 = [(LNAssistantAppEntityMetadata *)self kind];
    if (v15 != [(LNAssistantAppEntityMetadata *)v6 kind])
    {
      LOBYTE(v12) = 0;
LABEL_21:

      goto LABEL_22;
    }

    v16 = [(LNAssistantAppEntityMetadata *)self phraseTemplates];
    v17 = [(LNAssistantAppEntityMetadata *)v6 phraseTemplates];
    v14 = v16;
    v18 = v17;
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
  v3 = [(LNAssistantAppEntityMetadata *)self entityIdentifier];
  v4 = [v3 hash];
  v5 = [(LNAssistantAppEntityMetadata *)self kind]^ v4;
  v6 = [(LNAssistantAppEntityMetadata *)self phraseTemplates];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAssistantAppEntityMetadata *)self entityIdentifier];
  v7 = [(LNAssistantAppEntityMetadata *)self kind];
  v8 = [(LNAssistantAppEntityMetadata *)self phraseTemplates];
  v9 = [v3 stringWithFormat:@"<%@: %p, entityIdentifier: %@, kind: %ld, phraseTemplates: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAssistantAppEntityMetadata *)self entityIdentifier];
  [v4 encodeObject:v5 forKey:@"entityIdentifier"];

  [v4 encodeInteger:-[LNAssistantAppEntityMetadata kind](self forKey:{"kind"), @"kind"}];
  v6 = [(LNAssistantAppEntityMetadata *)self phraseTemplates];
  [v4 encodeObject:v6 forKey:@"phraseTemplates"];
}

- (LNAssistantAppEntityMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityIdentifier"];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"kind"];
    if (v6)
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:@"phraseTemplates"];

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

- (LNAssistantAppEntityMetadata)initWithEntityIdentifier:(id)a3 kind:(int64_t)a4 phraseTemplates:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"LNAssistantAppEntityMetadata.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"entityIdentifier"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"LNAssistantAppEntityMetadata.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"phraseTemplates"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = LNAssistantAppEntityMetadata;
  v12 = [(LNAssistantAppEntityMetadata *)&v21 init];
  if (v12)
  {
    v13 = [v9 copy];
    entityIdentifier = v12->_entityIdentifier;
    v12->_entityIdentifier = v13;

    v12->_kind = a4;
    v15 = [v11 copy];
    phraseTemplates = v12->_phraseTemplates;
    v12->_phraseTemplates = v15;

    v17 = v12;
  }

  return v12;
}

@end