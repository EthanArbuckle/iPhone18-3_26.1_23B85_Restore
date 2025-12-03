@interface LNAppShortcutOptionsCollection
- (BOOL)isEqual:(id)equal;
- (LNAppShortcutOptionsCollection)initWithCoder:(id)coder;
- (LNAppShortcutOptionsCollection)initWithLocalizedTitle:(id)title systemImageName:(id)name optionsProviderReference:(id)reference;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAppShortcutOptionsCollection

- (LNAppShortcutOptionsCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optionsProviderReference"];

  if (v5)
  {
    self = [(LNAppShortcutOptionsCollection *)self initWithLocalizedTitle:v5 systemImageName:v6 optionsProviderReference:v7];
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
  localizedTitle = [(LNAppShortcutOptionsCollection *)self localizedTitle];
  [coderCopy encodeObject:localizedTitle forKey:@"localizedTitle"];

  systemImageName = [(LNAppShortcutOptionsCollection *)self systemImageName];
  [coderCopy encodeObject:systemImageName forKey:@"systemImageName"];

  optionsProviderReference = [(LNAppShortcutOptionsCollection *)self optionsProviderReference];
  [coderCopy encodeObject:optionsProviderReference forKey:@"optionsProviderReference"];
}

- (unint64_t)hash
{
  localizedTitle = [(LNAppShortcutOptionsCollection *)self localizedTitle];
  v4 = [localizedTitle hash];
  systemImageName = [(LNAppShortcutOptionsCollection *)self systemImageName];
  v6 = [systemImageName hash] ^ v4;
  optionsProviderReference = [(LNAppShortcutOptionsCollection *)self optionsProviderReference];
  v8 = [optionsProviderReference hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = LNAppShortcutOptionsCollection;
    if ([(LNAppShortcutOptionsCollection *)&v24 isEqual:equalCopy])
    {
      v5 = equalCopy;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v11) = 0;
LABEL_29:

        goto LABEL_30;
      }

      localizedTitle = [(LNAppShortcutOptionsCollection *)self localizedTitle];
      localizedTitle2 = [(LNAppShortcutOptionsCollection *)v5 localizedTitle];
      v8 = localizedTitle;
      v9 = localizedTitle2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v12 = v9;
        v13 = v8;
        if (!v8 || !v9)
        {
          goto LABEL_27;
        }

        v14 = [v8 isEqualToString:v9];

        if (!v14)
        {
          LOBYTE(v11) = 0;
LABEL_28:

          goto LABEL_29;
        }
      }

      systemImageName = [(LNAppShortcutOptionsCollection *)self systemImageName];
      systemImageName2 = [(LNAppShortcutOptionsCollection *)v5 systemImageName];
      v13 = systemImageName;
      v17 = systemImageName2;
      v12 = v17;
      if (v13 == v17)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v18 = v17;
        v19 = v13;
        if (!v13 || !v17)
        {
LABEL_26:

LABEL_27:
          goto LABEL_28;
        }

        v11 = [v13 isEqualToString:v17];

        if (!v11)
        {
          goto LABEL_27;
        }
      }

      optionsProviderReference = [(LNAppShortcutOptionsCollection *)self optionsProviderReference];
      optionsProviderReference2 = [(LNAppShortcutOptionsCollection *)v5 optionsProviderReference];
      v19 = optionsProviderReference;
      v22 = optionsProviderReference2;
      v18 = v22;
      if (v19 == v22)
      {
        LOBYTE(v11) = 1;
      }

      else
      {
        LOBYTE(v11) = 0;
        if (v19 && v22)
        {
          LOBYTE(v11) = [v19 isEqual:v22];
        }
      }

      goto LABEL_26;
    }

    LOBYTE(v11) = 0;
  }

LABEL_30:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  localizedTitle = [(LNAppShortcutOptionsCollection *)self localizedTitle];
  systemImageName = [(LNAppShortcutOptionsCollection *)self systemImageName];
  optionsProviderReference = [(LNAppShortcutOptionsCollection *)self optionsProviderReference];
  v9 = [v3 stringWithFormat:@"<%@: %p, localizedTitle: %@, systemImageName: %@, optionsProviderReference: %@>", v5, self, localizedTitle, systemImageName, optionsProviderReference];

  return v9;
}

- (LNAppShortcutOptionsCollection)initWithLocalizedTitle:(id)title systemImageName:(id)name optionsProviderReference:(id)reference
{
  titleCopy = title;
  nameCopy = name;
  referenceCopy = reference;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAppShortcutOptionsCollection.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"localizedTitle"}];
  }

  v20.receiver = self;
  v20.super_class = LNAppShortcutOptionsCollection;
  v12 = [(LNAppShortcutOptionsCollection *)&v20 init];
  if (v12)
  {
    v13 = [titleCopy copy];
    localizedTitle = v12->_localizedTitle;
    v12->_localizedTitle = v13;

    v15 = [nameCopy copy];
    systemImageName = v12->_systemImageName;
    v12->_systemImageName = v15;

    objc_storeStrong(&v12->_optionsProviderReference, reference);
    v17 = v12;
  }

  return v12;
}

@end