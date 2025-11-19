@interface NHSSRelevantWidget
- (NHSSRelevantWidget)initWithCoder:(id)a3;
- (NHSSRelevantWidget)initWithExtensionBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 widgetKind:(id)a5 confidenceCategory:(int64_t)a6 intentIndexingHash:(int64_t)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NHSSRelevantWidget

- (NHSSRelevantWidget)initWithExtensionBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 widgetKind:(id)a5 confidenceCategory:(int64_t)a6 intentIndexingHash:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = NHSSRelevantWidget;
  v16 = [(NHSSRelevantWidget *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_extensionBundleIdentifier, a3);
    objc_storeStrong(&v17->_appBundleIdentifier, a4);
    objc_storeStrong(&v17->_widgetKind, a5);
    v17->_confidenceCategory = a6;
    v17->_intentIndexingHash = a7;
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
  v6 = [v3 build];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v5 = a3;
  [v5 encodeObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [v5 encodeObject:self->_appBundleIdentifier forKey:@"appBundleIdentifier"];
  [v5 encodeObject:self->_widgetKind forKey:@"widgetKind"];
  [v5 encodeInteger:self->_confidenceCategory forKey:@"confidenceCategory"];
  [v5 encodeInt64:self->_intentIndexingHash forKey:@"intentIndexingHash"];
}

- (NHSSRelevantWidget)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widgetKind"];
  v8 = [v4 decodeIntegerForKey:@"confidenceCategory"];
  v9 = [v4 decodeInt64ForKey:@"intentIndexingHash"];

  v10 = [(NHSSRelevantWidget *)self initWithExtensionBundleIdentifier:v5 appBundleIdentifier:v6 widgetKind:v7 confidenceCategory:v8 intentIndexingHash:v9];
  return v10;
}

@end