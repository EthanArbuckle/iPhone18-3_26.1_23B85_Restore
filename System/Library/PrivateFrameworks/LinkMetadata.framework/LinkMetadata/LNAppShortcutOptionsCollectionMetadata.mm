@interface LNAppShortcutOptionsCollectionMetadata
- (BOOL)isEqual:(id)equal;
- (LNAppShortcutOptionsCollectionMetadata)initWithCoder:(id)coder;
- (LNAppShortcutOptionsCollectionMetadata)initWithTitle:(id)title systemImageName:(id)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAppShortcutOptionsCollectionMetadata

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

    title = [(LNAppShortcutOptionsCollectionMetadata *)self title];
    title2 = [(LNAppShortcutOptionsCollectionMetadata *)v6 title];
    v9 = title;
    v10 = title2;
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

    systemImageName = [(LNAppShortcutOptionsCollectionMetadata *)self systemImageName];
    systemImageName2 = [(LNAppShortcutOptionsCollectionMetadata *)v6 systemImageName];
    v14 = systemImageName;
    v17 = systemImageName2;
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
  title = [(LNAppShortcutOptionsCollectionMetadata *)self title];
  v4 = [title hash];
  systemImageName = [(LNAppShortcutOptionsCollectionMetadata *)self systemImageName];
  v6 = [systemImageName hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  title = [(LNAppShortcutOptionsCollectionMetadata *)self title];
  systemImageName = [(LNAppShortcutOptionsCollectionMetadata *)self systemImageName];
  v8 = [v3 stringWithFormat:@"<%@: %p, title: %@, systemImageName: %@>", v5, self, title, systemImageName];

  return v8;
}

- (LNAppShortcutOptionsCollectionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];

  if (v5)
  {
    self = [(LNAppShortcutOptionsCollectionMetadata *)self initWithTitle:v5 systemImageName:v6];
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
  title = [(LNAppShortcutOptionsCollectionMetadata *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  systemImageName = [(LNAppShortcutOptionsCollectionMetadata *)self systemImageName];
  [coderCopy encodeObject:systemImageName forKey:@"systemImageName"];
}

- (LNAppShortcutOptionsCollectionMetadata)initWithTitle:(id)title systemImageName:(id)name
{
  titleCopy = title;
  nameCopy = name;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAppShortcutOptionsCollectionMetadata.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v17.receiver = self;
  v17.super_class = LNAppShortcutOptionsCollectionMetadata;
  v9 = [(LNAppShortcutOptionsCollectionMetadata *)&v17 init];
  if (v9)
  {
    v10 = [titleCopy copy];
    title = v9->_title;
    v9->_title = v10;

    v12 = [nameCopy copy];
    systemImageName = v9->_systemImageName;
    v9->_systemImageName = v12;

    v14 = v9;
  }

  return v9;
}

@end