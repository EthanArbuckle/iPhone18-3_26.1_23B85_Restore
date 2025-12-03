@interface LNStaticDeferredLocalizedStringWithAlternatives
- (BOOL)isEqual:(id)equal;
- (LNStaticDeferredLocalizedStringWithAlternatives)initWithCoder:(id)coder;
- (LNStaticDeferredLocalizedStringWithAlternatives)initWithKey:(id)key defaultValue:(id)value table:(id)table bundleURL:(id)l alternatives:(id)alternatives;
- (LNStaticDeferredLocalizedStringWithAlternatives)initWithLocalizedStringResource:(id)resource alternatives:(id)alternatives;
- (id)bundleURL;
- (id)defaultValue;
- (id)description;
- (id)key;
- (id)localizedStringForLocaleIdentifier:(id)identifier kind:(id)kind;
- (id)table;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNStaticDeferredLocalizedStringWithAlternatives

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  alternatives = [(LNStaticDeferredLocalizedStringWithAlternatives *)self alternatives];
  [coderCopy encodeObject:alternatives forKey:@"alternatives"];
}

- (LNStaticDeferredLocalizedStringWithAlternatives)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"table"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alternatives"];
    self = [(LNStaticDeferredLocalizedStringWithAlternatives *)self initWithKey:v5 defaultValue:v7 table:v6 bundleURL:v8 alternatives:v9];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  alternatives = [(LNStaticDeferredLocalizedStringWithAlternatives *)self alternatives];
  v7 = [v3 stringWithFormat:@"<%@: %p, strings: %@>", v5, self, alternatives];

  return v7;
}

- (unint64_t)hash
{
  alternatives = [(LNStaticDeferredLocalizedStringWithAlternatives *)self alternatives];
  v3 = [alternatives hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      alternatives = [(LNStaticDeferredLocalizedStringWithAlternatives *)self alternatives];
      alternatives2 = [(LNStaticDeferredLocalizedStringWithAlternatives *)v6 alternatives];
      v9 = [alternatives isEqualToDictionary:alternatives2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)bundleURL
{
  v4.receiver = self;
  v4.super_class = LNStaticDeferredLocalizedStringWithAlternatives;
  bundleURL = [(LNStaticDeferredLocalizedString *)&v4 bundleURL];

  return bundleURL;
}

- (id)table
{
  v4.receiver = self;
  v4.super_class = LNStaticDeferredLocalizedStringWithAlternatives;
  table = [(LNStaticDeferredLocalizedString *)&v4 table];

  return table;
}

- (id)defaultValue
{
  v4.receiver = self;
  v4.super_class = LNStaticDeferredLocalizedStringWithAlternatives;
  defaultValue = [(LNStaticDeferredLocalizedString *)&v4 defaultValue];

  return defaultValue;
}

- (id)key
{
  v4.receiver = self;
  v4.super_class = LNStaticDeferredLocalizedStringWithAlternatives;
  v2 = [(LNStaticDeferredLocalizedString *)&v4 key];

  return v2;
}

- (id)localizedStringForLocaleIdentifier:(id)identifier kind:(id)kind
{
  kindCopy = kind;
  if (kindCopy)
  {
    identifierCopy = identifier;
    alternatives = [(LNStaticDeferredLocalizedStringWithAlternatives *)self alternatives];
    v9 = [alternatives objectForKey:kindCopy];
    v10 = [v9 localizedStringForLocaleIdentifier:identifierCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = LNStaticDeferredLocalizedStringWithAlternatives;
    identifierCopy2 = identifier;
    v10 = [(LNStaticDeferredLocalizedString *)&v13 localizedStringForLocaleIdentifier:identifierCopy2];
  }

  return v10;
}

- (LNStaticDeferredLocalizedStringWithAlternatives)initWithLocalizedStringResource:(id)resource alternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  v11.receiver = self;
  v11.super_class = LNStaticDeferredLocalizedStringWithAlternatives;
  v7 = [(LNStaticDeferredLocalizedString *)&v11 initWithLocalizedStringResource:resource alternatives:alternativesCopy];
  if (alternativesCopy && [alternativesCopy count])
  {
    v8 = [alternativesCopy copy];
    alternatives = v7->_alternatives;
    v7->_alternatives = v8;
  }

  return v7;
}

- (LNStaticDeferredLocalizedStringWithAlternatives)initWithKey:(id)key defaultValue:(id)value table:(id)table bundleURL:(id)l alternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  v17.receiver = self;
  v17.super_class = LNStaticDeferredLocalizedStringWithAlternatives;
  v13 = [(LNStaticDeferredLocalizedString *)&v17 initWithKey:key defaultValue:value table:table bundleURL:l alternatives:alternativesCopy];
  if (alternativesCopy)
  {
    [alternativesCopy count];
    v14 = [alternativesCopy copy];
    alternatives = v13->_alternatives;
    v13->_alternatives = v14;
  }

  return v13;
}

@end