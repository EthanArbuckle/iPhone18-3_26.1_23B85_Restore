@interface LNAppShortcutDynamicOptionsProviderReference
- (BOOL)isEqual:(id)a3;
- (LNAppShortcutDynamicOptionsProviderReference)initWithAppShortcutsProviderMangledTypeName:(id)a3 parameterIdentifier:(id)a4 appShortcutIndex:(int64_t)a5 optionsProviderIndex:(int64_t)a6;
- (LNAppShortcutDynamicOptionsProviderReference)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAppShortcutDynamicOptionsProviderReference

- (LNAppShortcutDynamicOptionsProviderReference)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appShortcutsProviderMangledTypeName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  v7 = [v4 decodeIntegerForKey:@"appShortcutIndex"];
  v8 = [v4 decodeIntegerForKey:@"optionsProviderIndex"];

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    self = [(LNAppShortcutDynamicOptionsProviderReference *)self initWithAppShortcutsProviderMangledTypeName:v5 parameterIdentifier:v6 appShortcutIndex:v7 optionsProviderIndex:v8];
    v10 = self;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LNAppShortcutDynamicOptionsProviderReference;
  v4 = a3;
  [(LNDynamicOptionsProviderReference *)&v6 encodeWithCoder:v4];
  v5 = [(LNAppShortcutDynamicOptionsProviderReference *)self appShortcutsProviderMangledTypeName:v6.receiver];
  [v4 encodeObject:v5 forKey:@"appShortcutsProviderMangledTypeName"];

  [v4 encodeInteger:-[LNAppShortcutDynamicOptionsProviderReference appShortcutIndex](self forKey:{"appShortcutIndex"), @"appShortcutIndex"}];
  [v4 encodeInteger:-[LNAppShortcutDynamicOptionsProviderReference optionsProviderIndex](self forKey:{"optionsProviderIndex"), @"optionsProviderIndex"}];
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = LNAppShortcutDynamicOptionsProviderReference;
  v3 = [(LNDynamicOptionsProviderReference *)&v5 hash];
  return [(NSString *)self->_appShortcutsProviderMangledTypeName hash]^ v3;
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
    v16.receiver = self;
    v16.super_class = LNAppShortcutDynamicOptionsProviderReference;
    if ([(LNDynamicOptionsProviderReference *)&v16 isEqual:v4])
    {
      v5 = v4;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v6 = [(LNAppShortcutDynamicOptionsProviderReference *)self appShortcutsProviderMangledTypeName];
      v7 = [(LNAppShortcutDynamicOptionsProviderReference *)v5 appShortcutsProviderMangledTypeName];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if (!v8 || !v9)
        {

          goto LABEL_17;
        }

        v11 = [v8 isEqualToString:v9];

        if (!v11)
        {
          goto LABEL_17;
        }
      }

      v13 = [(LNAppShortcutDynamicOptionsProviderReference *)self appShortcutIndex];
      if (v13 == [(LNAppShortcutDynamicOptionsProviderReference *)v5 appShortcutIndex])
      {
        v14 = [(LNAppShortcutDynamicOptionsProviderReference *)self optionsProviderIndex];
        v12 = v14 == [(LNAppShortcutDynamicOptionsProviderReference *)v5 optionsProviderIndex];
LABEL_18:

        goto LABEL_19;
      }

LABEL_17:
      v12 = 0;
      goto LABEL_18;
    }

    v12 = 0;
  }

LABEL_20:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAppShortcutDynamicOptionsProviderReference *)self appShortcutsProviderMangledTypeName];
  v7 = [(LNDynamicOptionsProviderReference *)self parameterIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNAppShortcutDynamicOptionsProviderReference appShortcutIndex](self, "appShortcutIndex")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNAppShortcutDynamicOptionsProviderReference optionsProviderIndex](self, "optionsProviderIndex")}];
  v10 = [v3 stringWithFormat:@"<%@: %p, appShortcutsProviderMangledTypeName: %@, parameterIdentifier: %@, appShortcutIndex: %@, optionsProviderIndex: %@>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (LNAppShortcutDynamicOptionsProviderReference)initWithAppShortcutsProviderMangledTypeName:(id)a3 parameterIdentifier:(id)a4 appShortcutIndex:(int64_t)a5 optionsProviderIndex:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  if (!v11)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"LNAppShortcutDynamicOptionsProviderReference.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"appShortcutsProviderMangledTypeName"}];
  }

  v19.receiver = self;
  v19.super_class = LNAppShortcutDynamicOptionsProviderReference;
  v13 = [(LNDynamicOptionsProviderReference *)&v19 initWithParameterIdentifier:v12];
  if (v13)
  {
    v14 = [v11 copy];
    appShortcutsProviderMangledTypeName = v13->_appShortcutsProviderMangledTypeName;
    v13->_appShortcutsProviderMangledTypeName = v14;

    v13->_appShortcutIndex = a5;
    v13->_optionsProviderIndex = a6;
    v16 = v13;
  }

  return v13;
}

@end