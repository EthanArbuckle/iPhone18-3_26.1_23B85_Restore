@interface IAMTriggerKey
+ (id)nameSpacedKeyNameForName:(id)name bundleIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (IAMTriggerKey)initWithName:(id)name bundleIdentifier:(id)identifier;
- (id)description;
@end

@implementation IAMTriggerKey

- (IAMTriggerKey)initWithName:(id)name bundleIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = IAMTriggerKey;
  v8 = [(IAMTriggerKey *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [identifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v11;
  }

  return v8;
}

+ (id)nameSpacedKeyNameForName:(id)name bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [name copy];
  if (identifierCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@::%@", identifierCopy, v6];

    v6 = v7;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  nameSpacedKeyName = [(IAMTriggerKey *)self nameSpacedKeyName];
  v7 = [v3 initWithFormat:@"<%@: %p %@>", v5, self, nameSpacedKeyName];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = self->_name;
      name = [(IAMTriggerKey *)v5 name];
      bundleIdentifier = [(NSString *)name isEqualToString:name];

      if (bundleIdentifier)
      {
        bundleIdentifier = self->_bundleIdentifier;
        v10 = bundleIdentifier;
        if (!bundleIdentifier)
        {
          bundleIdentifier = [(IAMTriggerKey *)v5 bundleIdentifier];
          if (!bundleIdentifier)
          {
            v12 = 1;
LABEL_13:

            goto LABEL_14;
          }

          v10 = self->_bundleIdentifier;
        }

        bundleIdentifier2 = [(IAMTriggerKey *)v5 bundleIdentifier];
        v12 = [(NSString *)v10 isEqual:bundleIdentifier2];

        if (!bundleIdentifier)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v12 = 0;
      }

LABEL_14:

      goto LABEL_15;
    }

    v12 = 0;
  }

LABEL_15:

  return v12;
}

@end