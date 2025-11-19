@interface LNAppShortcutOptionsCollectionMetadata
- (BOOL)isEqual:(id)a3;
- (LNAppShortcutOptionsCollectionMetadata)initWithCoder:(id)a3;
- (LNAppShortcutOptionsCollectionMetadata)initWithTitle:(id)a3 systemImageName:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAppShortcutOptionsCollectionMetadata

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
LABEL_20:

      goto LABEL_21;
    }

    v7 = [(LNAppShortcutOptionsCollectionMetadata *)self title];
    v8 = [(LNAppShortcutOptionsCollectionMetadata *)v6 title];
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
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v15 = [(LNAppShortcutOptionsCollectionMetadata *)self systemImageName];
    v16 = [(LNAppShortcutOptionsCollectionMetadata *)v6 systemImageName];
    v14 = v15;
    v17 = v16;
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
  v3 = [(LNAppShortcutOptionsCollectionMetadata *)self title];
  v4 = [v3 hash];
  v5 = [(LNAppShortcutOptionsCollectionMetadata *)self systemImageName];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAppShortcutOptionsCollectionMetadata *)self title];
  v7 = [(LNAppShortcutOptionsCollectionMetadata *)self systemImageName];
  v8 = [v3 stringWithFormat:@"<%@: %p, title: %@, systemImageName: %@>", v5, self, v6, v7];

  return v8;
}

- (LNAppShortcutOptionsCollectionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];

  if (v5)
  {
    self = [(LNAppShortcutOptionsCollectionMetadata *)self initWithTitle:v5 systemImageName:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAppShortcutOptionsCollectionMetadata *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(LNAppShortcutOptionsCollectionMetadata *)self systemImageName];
  [v4 encodeObject:v6 forKey:@"systemImageName"];
}

- (LNAppShortcutOptionsCollectionMetadata)initWithTitle:(id)a3 systemImageName:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"LNAppShortcutOptionsCollectionMetadata.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v17.receiver = self;
  v17.super_class = LNAppShortcutOptionsCollectionMetadata;
  v9 = [(LNAppShortcutOptionsCollectionMetadata *)&v17 init];
  if (v9)
  {
    v10 = [v7 copy];
    title = v9->_title;
    v9->_title = v10;

    v12 = [v8 copy];
    systemImageName = v9->_systemImageName;
    v9->_systemImageName = v12;

    v14 = v9;
  }

  return v9;
}

@end