@interface LNQueryParameterMetadata
- (BOOL)isEqual:(id)a3;
- (LNQueryParameterMetadata)initWithCoder:(id)a3;
- (LNQueryParameterMetadata)initWithPropertyIdentifier:(id)a3 localizedTitle:(id)a4 comparators:(id)a5;
- (LNQueryParameterMetadata)initWithPropertyIdentifier:(id)a3 title:(id)a4 comparators:(id)a5;
- (NSString)title;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNQueryParameterMetadata

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
LABEL_27:

      goto LABEL_28;
    }

    v7 = [(LNQueryParameterMetadata *)self propertyIdentifier];
    v8 = [(LNQueryParameterMetadata *)v6 propertyIdentifier];
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
        goto LABEL_25;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v16 = [(LNQueryParameterMetadata *)self localizedTitle];
    v17 = [(LNQueryParameterMetadata *)v6 localizedTitle];
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
        goto LABEL_22;
      }

      LODWORD(v12) = [v14 isEqual:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    v21 = [(LNQueryParameterMetadata *)self comparators];
    v22 = [(LNQueryParameterMetadata *)v6 comparators];

    if (v21 == v22)
    {
      LOBYTE(v12) = 1;
      goto LABEL_25;
    }

    v12 = [(LNQueryParameterMetadata *)self comparators];
    if (!v12)
    {
LABEL_25:

      goto LABEL_26;
    }

    v23 = [(LNQueryParameterMetadata *)v6 comparators];

    if (!v23)
    {
      LOBYTE(v12) = 0;
      goto LABEL_25;
    }

    v24 = MEMORY[0x1E695DFD8];
    v20 = [(LNQueryParameterMetadata *)self comparators];
    v19 = [v24 setWithArray:v20];
    v12 = MEMORY[0x1E695DFD8];
    v27 = [(LNQueryParameterMetadata *)v6 comparators];
    v25 = [v12 setWithArray:v27];
    LOBYTE(v12) = [v19 isEqualToSet:v25];

LABEL_22:
    goto LABEL_25;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNQueryParameterMetadata *)self propertyIdentifier];
  v4 = [v3 hash];
  v5 = [(LNQueryParameterMetadata *)self title];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNQueryParameterMetadata *)self comparators];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNQueryParameterMetadata *)self propertyIdentifier];
  v7 = [(LNQueryParameterMetadata *)self localizedTitle];
  v8 = [(LNQueryParameterMetadata *)self comparators];
  v9 = [v8 valueForKeyPath:@"description"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [v3 stringWithFormat:@"<%@: %p, propertyIdentifier: %@, localizedTitle: %@, comparators: [%@]>", v5, self, v6, v7, v10];

  return v11;
}

- (LNQueryParameterMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"propertyIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"comparators"];

  v11 = 0;
  if (v6 && v10)
  {
    self = [(LNQueryParameterMetadata *)self initWithPropertyIdentifier:v5 localizedTitle:v6 comparators:v10];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNQueryParameterMetadata *)self propertyIdentifier];
  [v4 encodeObject:v5 forKey:@"propertyIdentifier"];

  v6 = [(LNQueryParameterMetadata *)self localizedTitle];
  [v4 encodeObject:v6 forKey:@"localizedTitle"];

  v7 = [(LNQueryParameterMetadata *)self comparators];
  [v4 encodeObject:v7 forKey:@"comparators"];
}

- (LNQueryParameterMetadata)initWithPropertyIdentifier:(id)a3 localizedTitle:(id)a4 comparators:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"LNQueryParameterMetadata.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"LNQueryParameterMetadata.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"comparators"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = LNQueryParameterMetadata;
  v13 = [(LNQueryParameterMetadata *)&v24 init];
  if (v13)
  {
    v14 = [v9 copy];
    propertyIdentifier = v13->_propertyIdentifier;
    v13->_propertyIdentifier = v14;

    v16 = [v10 copy];
    localizedTitle = v13->_localizedTitle;
    v13->_localizedTitle = v16;

    v18 = [v12 copy];
    comparators = v13->_comparators;
    v13->_comparators = v18;

    v20 = v13;
  }

  return v13;
}

- (LNQueryParameterMetadata)initWithPropertyIdentifier:(id)a3 title:(id)a4 comparators:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[LNStaticDeferredLocalizedString alloc] initWithLocalizedKey:v9 bundleIdentifier:0 bundleURL:0 table:0];

  v12 = [(LNQueryParameterMetadata *)self initWithPropertyIdentifier:v10 localizedTitle:v11 comparators:v8];
  return v12;
}

- (NSString)title
{
  v2 = [(LNQueryParameterMetadata *)self localizedTitle];
  v3 = [v2 key];

  return v3;
}

@end