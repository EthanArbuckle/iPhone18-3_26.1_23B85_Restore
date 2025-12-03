@interface NHSSRelevantWidget
- (NHSSRelevantWidget)initWithCoder:(id)coder;
- (NHSSRelevantWidget)initWithExtensionBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier widgetKind:(id)kind confidenceCategory:(int64_t)category intentIndexingHash:(int64_t)hash;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NHSSRelevantWidget

- (NHSSRelevantWidget)initWithExtensionBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier widgetKind:(id)kind confidenceCategory:(int64_t)category intentIndexingHash:(int64_t)hash
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  v19.receiver = self;
  v19.super_class = NHSSRelevantWidget;
  v16 = [(NHSSRelevantWidget *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_extensionBundleIdentifier, identifier);
    objc_storeStrong(&v17->_appBundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v17->_widgetKind, kind);
    v17->_confidenceCategory = category;
    v17->_intentIndexingHash = hash;
  }

  return v17;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_extensionBundleIdentifier withName:@"extensionBundleIdentifier"];
  [v3 appendString:self->_appBundleIdentifier withName:@"appBundleIdentifier"];
  [v3 appendString:self->_widgetKind withName:@"widgetKind"];
  v4 = [v3 appendInteger:self->_confidenceCategory withName:@"confidenceCategory"];
  v5 = [v3 appendInt64:self->_intentIndexingHash withName:@"intentIndexingHash"];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [coderCopy encodeObject:self->_appBundleIdentifier forKey:@"appBundleIdentifier"];
  [coderCopy encodeObject:self->_widgetKind forKey:@"widgetKind"];
  [coderCopy encodeInteger:self->_confidenceCategory forKey:@"confidenceCategory"];
  [coderCopy encodeInt64:self->_intentIndexingHash forKey:@"intentIndexingHash"];
}

- (NHSSRelevantWidget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetKind"];
  v8 = [coderCopy decodeIntegerForKey:@"confidenceCategory"];
  v9 = [coderCopy decodeInt64ForKey:@"intentIndexingHash"];

  v10 = [(NHSSRelevantWidget *)self initWithExtensionBundleIdentifier:v5 appBundleIdentifier:v6 widgetKind:v7 confidenceCategory:v8 intentIndexingHash:v9];
  return v10;
}

@end