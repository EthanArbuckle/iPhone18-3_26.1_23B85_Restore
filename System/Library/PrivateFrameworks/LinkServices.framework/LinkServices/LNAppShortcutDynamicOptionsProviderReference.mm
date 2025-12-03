@interface LNAppShortcutDynamicOptionsProviderReference
- (BOOL)isEqual:(id)equal;
- (LNAppShortcutDynamicOptionsProviderReference)initWithAppShortcutsProviderMangledTypeName:(id)name parameterIdentifier:(id)identifier appShortcutIndex:(int64_t)index optionsProviderIndex:(int64_t)providerIndex;
- (LNAppShortcutDynamicOptionsProviderReference)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAppShortcutDynamicOptionsProviderReference

- (LNAppShortcutDynamicOptionsProviderReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appShortcutsProviderMangledTypeName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  v7 = [coderCopy decodeIntegerForKey:@"appShortcutIndex"];
  v8 = [coderCopy decodeIntegerForKey:@"optionsProviderIndex"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(LNAppShortcutDynamicOptionsProviderReference *)self initWithAppShortcutsProviderMangledTypeName:v5 parameterIdentifier:v6 appShortcutIndex:v7 optionsProviderIndex:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LNAppShortcutDynamicOptionsProviderReference;
  coderCopy = coder;
  [(LNDynamicOptionsProviderReference *)&v6 encodeWithCoder:coderCopy];
  v5 = [(LNAppShortcutDynamicOptionsProviderReference *)self appShortcutsProviderMangledTypeName:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"appShortcutsProviderMangledTypeName"];

  [coderCopy encodeInteger:-[LNAppShortcutDynamicOptionsProviderReference appShortcutIndex](self forKey:{"appShortcutIndex"), @"appShortcutIndex"}];
  [coderCopy encodeInteger:-[LNAppShortcutDynamicOptionsProviderReference optionsProviderIndex](self forKey:{"optionsProviderIndex"), @"optionsProviderIndex"}];
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = LNAppShortcutDynamicOptionsProviderReference;
  v3 = [(LNDynamicOptionsProviderReference *)&v5 hash];
  return [(NSString *)self->_appShortcutsProviderMangledTypeName hash]^ v3;
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
    v16.receiver = self;
    v16.super_class = LNAppShortcutDynamicOptionsProviderReference;
    if ([(LNDynamicOptionsProviderReference *)&v16 isEqual:equalCopy])
    {
      v5 = equalCopy;
      if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }

      appShortcutsProviderMangledTypeName = [(LNAppShortcutDynamicOptionsProviderReference *)self appShortcutsProviderMangledTypeName];
      appShortcutsProviderMangledTypeName2 = [(LNAppShortcutDynamicOptionsProviderReference *)v5 appShortcutsProviderMangledTypeName];
      v8 = appShortcutsProviderMangledTypeName;
      v9 = appShortcutsProviderMangledTypeName2;
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

      appShortcutIndex = [(LNAppShortcutDynamicOptionsProviderReference *)self appShortcutIndex];
      if (appShortcutIndex == [(LNAppShortcutDynamicOptionsProviderReference *)v5 appShortcutIndex])
      {
        optionsProviderIndex = [(LNAppShortcutDynamicOptionsProviderReference *)self optionsProviderIndex];
        v12 = optionsProviderIndex == [(LNAppShortcutDynamicOptionsProviderReference *)v5 optionsProviderIndex];
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
  appShortcutsProviderMangledTypeName = [(LNAppShortcutDynamicOptionsProviderReference *)self appShortcutsProviderMangledTypeName];
  parameterIdentifier = [(LNDynamicOptionsProviderReference *)self parameterIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNAppShortcutDynamicOptionsProviderReference appShortcutIndex](self, "appShortcutIndex")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNAppShortcutDynamicOptionsProviderReference optionsProviderIndex](self, "optionsProviderIndex")}];
  v10 = [v3 stringWithFormat:@"<%@: %p, appShortcutsProviderMangledTypeName: %@, parameterIdentifier: %@, appShortcutIndex: %@, optionsProviderIndex: %@>", v5, self, appShortcutsProviderMangledTypeName, parameterIdentifier, v8, v9];

  return v10;
}

- (LNAppShortcutDynamicOptionsProviderReference)initWithAppShortcutsProviderMangledTypeName:(id)name parameterIdentifier:(id)identifier appShortcutIndex:(int64_t)index optionsProviderIndex:(int64_t)providerIndex
{
  nameCopy = name;
  identifierCopy = identifier;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAppShortcutDynamicOptionsProviderReference.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"appShortcutsProviderMangledTypeName"}];
  }

  v19.receiver = self;
  v19.super_class = LNAppShortcutDynamicOptionsProviderReference;
  v13 = [(LNDynamicOptionsProviderReference *)&v19 initWithParameterIdentifier:identifierCopy];
  if (v13)
  {
    v14 = [nameCopy copy];
    appShortcutsProviderMangledTypeName = v13->_appShortcutsProviderMangledTypeName;
    v13->_appShortcutsProviderMangledTypeName = v14;

    v13->_appShortcutIndex = index;
    v13->_optionsProviderIndex = providerIndex;
    v16 = v13;
  }

  return v13;
}

@end