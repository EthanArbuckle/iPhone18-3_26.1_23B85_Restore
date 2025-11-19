@interface IAMTriggerKey
+ (id)nameSpacedKeyNameForName:(id)a3 bundleIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (IAMTriggerKey)initWithName:(id)a3 bundleIdentifier:(id)a4;
- (id)description;
@end

@implementation IAMTriggerKey

- (IAMTriggerKey)initWithName:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = IAMTriggerKey;
  v8 = [(IAMTriggerKey *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v11;
  }

  return v8;
}

+ (id)nameSpacedKeyNameForName:(id)a3 bundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [a3 copy];
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@::%@", v5, v6];

    v6 = v7;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IAMTriggerKey *)self nameSpacedKeyName];
  v7 = [v3 initWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      name = self->_name;
      v7 = [(IAMTriggerKey *)v5 name];
      v8 = [(NSString *)name isEqualToString:v7];

      if (v8)
      {
        bundleIdentifier = self->_bundleIdentifier;
        v10 = bundleIdentifier;
        if (!bundleIdentifier)
        {
          v8 = [(IAMTriggerKey *)v5 bundleIdentifier];
          if (!v8)
          {
            v12 = 1;
LABEL_13:

            goto LABEL_14;
          }

          v10 = self->_bundleIdentifier;
        }

        v11 = [(IAMTriggerKey *)v5 bundleIdentifier];
        v12 = [(NSString *)v10 isEqual:v11];

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