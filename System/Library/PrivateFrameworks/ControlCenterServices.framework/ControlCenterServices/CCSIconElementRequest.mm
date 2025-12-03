@interface CCSIconElementRequest
- (CCSIconElementRequest)initWithCoder:(id)coder;
- (CCSIconElementRequest)initWithIntent:(int64_t)intent controlKind:(id)kind controlType:(unint64_t)type extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier size:(unint64_t)size;
- (CCSIconElementRequest)initWithIntent:(int64_t)intent moduleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier moduleSize:(int64_t)size;
- (CCSIconElementRequest)initWithIntent:(int64_t)intent moduleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier size:(unint64_t)size;
- (id)_controlSizeString:(unint64_t)string;
- (id)_controlTypeString:(unint64_t)string;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CCSIconElementRequest

- (CCSIconElementRequest)initWithIntent:(int64_t)intent moduleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier size:(unint64_t)size
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v17.receiver = self;
  v17.super_class = CCSIconElementRequest;
  v13 = [(CCSIconElementRequest *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_elementType = 1;
    intentConfiguration = v13->_intentConfiguration;
    v13->_intent = intent;
    v13->_intentConfiguration = 0;

    objc_storeStrong(&v14->_moduleIdentifier, identifier);
    objc_storeStrong(&v14->_containerBundleIdentifier, bundleIdentifier);
    v14->_size = size;
  }

  return v14;
}

- (CCSIconElementRequest)initWithIntent:(int64_t)intent moduleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier moduleSize:(int64_t)size
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v17.receiver = self;
  v17.super_class = CCSIconElementRequest;
  v13 = [(CCSIconElementRequest *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_elementType = 0;
    intentConfiguration = v13->_intentConfiguration;
    v13->_intent = intent;
    v13->_intentConfiguration = 0;

    objc_storeStrong(&v14->_moduleIdentifier, identifier);
    objc_storeStrong(&v14->_containerBundleIdentifier, bundleIdentifier);
    v14->_moduleSize = size;
  }

  return v14;
}

- (CCSIconElementRequest)initWithIntent:(int64_t)intent controlKind:(id)kind controlType:(unint64_t)type extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier size:(unint64_t)size
{
  kindCopy = kind;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v22.receiver = self;
  v22.super_class = CCSIconElementRequest;
  v18 = [(CCSIconElementRequest *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_elementType = 2;
    intentConfiguration = v18->_intentConfiguration;
    v18->_intentConfiguration = 0;

    v19->_intent = intent;
    objc_storeStrong(&v19->_controlKind, kind);
    v19->_controlType = type;
    objc_storeStrong(&v19->_extensionBundleIdentifier, identifier);
    objc_storeStrong(&v19->_containerBundleIdentifier, bundleIdentifier);
    v19->_size = size;
  }

  return v19;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  intent = self->_intent;
  if (intent > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_278E0F288[intent];
  }

  [v3 appendString:v6 withName:@"kCSSIconElementRequestIntent"];
  intentDescription = [(INIntent *)self->_intentConfiguration intentDescription];
  [v4 appendString:intentDescription withName:@"kCSSIconElementRequestIntentConfiguration"];

  v8 = [(CCSIconElementRequest *)self _controlTypeString:self->_controlType];
  [v4 appendString:v8 withName:@"kCSSIconElementRequestControlType"];

  v9 = [(CCSIconElementRequest *)self _controlSizeString:self->_size];
  [v4 appendString:v9 withName:@"kCSSIconElementRequestSize"];

  v10 = NSStringFromCCSModuleSize(self->_moduleSize);
  [v4 appendString:v10 withName:@"kCSSIconElementRequestModuleSize"];

  [v4 appendString:self->_moduleIdentifier withName:@"kCSSIconElementRequestModuleIdentifier"];
  [v4 appendString:self->_controlKind withName:@"kCSSIconElementRequestControlKind"];
  [v4 appendString:self->_extensionBundleIdentifier withName:@"kCSSIconElementRequestExtensionBundleIdentifier"];
  [v4 appendString:self->_containerBundleIdentifier withName:@"kCSSIconElementRequestContainerBundleIdentifier"];
  elementType = self->_elementType;
  if (elementType > 2)
  {
    v12 = @"unknown";
  }

  else
  {
    v12 = off_278E0F2A8[elementType];
  }

  [v4 appendString:v12 withName:@"kCSSIconElementRequestElementType"];
  build = [v4 build];

  return build;
}

- (CCSIconElementRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"kCSSIconElementRequestIntent"];
  v6 = [coderCopy decodeIntegerForKey:@"kCSSIconElementRequestElementType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCSSIconElementRequestContainerBundleIdentifier"];
  switch(v6)
  {
    case 2:
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCSSIconElementRequestControlKind"];
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCSSIconElementRequestIntentConfiguration"];
      v12 = [coderCopy decodeIntegerForKey:@"kCSSIconElementRequestControlType"];
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCSSIconElementRequestExtensionBundleIdentifier"];
      v10 = -[CCSIconElementRequest initWithIntent:controlKind:controlType:extensionBundleIdentifier:containerBundleIdentifier:size:]([CCSIconElementRequest alloc], "initWithIntent:controlKind:controlType:extensionBundleIdentifier:containerBundleIdentifier:size:", v5, v8, v12, v13, v7, [coderCopy decodeIntegerForKey:@"kCSSIconElementRequestSize"]);

      [(CCSIconElementRequest *)v10 setIntentConfiguration:v11];
      self = v11;
      goto LABEL_8;
    case 1:
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCSSIconElementRequestModuleIdentifier"];
      v9 = -[CCSIconElementRequest initWithIntent:moduleIdentifier:containerBundleIdentifier:size:]([CCSIconElementRequest alloc], "initWithIntent:moduleIdentifier:containerBundleIdentifier:size:", v5, v8, v7, [coderCopy decodeIntegerForKey:@"kCSSIconElementRequestSize"]);
      goto LABEL_6;
    case 0:
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCSSIconElementRequestModuleIdentifier"];
      v9 = -[CCSIconElementRequest initWithIntent:moduleIdentifier:containerBundleIdentifier:moduleSize:]([CCSIconElementRequest alloc], "initWithIntent:moduleIdentifier:containerBundleIdentifier:moduleSize:", v5, v8, v7, [coderCopy decodeIntegerForKey:@"kCSSIconElementRequestModuleSize"]);
LABEL_6:
      v10 = v9;
LABEL_8:

      self = v10;
      break;
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  intent = self->_intent;
  coderCopy = coder;
  [coderCopy encodeInteger:intent forKey:@"kCSSIconElementRequestIntent"];
  [coderCopy encodeObject:self->_intentConfiguration forKey:@"kCSSIconElementRequestIntentConfiguration"];
  [coderCopy encodeInteger:self->_controlType forKey:@"kCSSIconElementRequestControlType"];
  [coderCopy encodeInteger:self->_size forKey:@"kCSSIconElementRequestSize"];
  [coderCopy encodeInteger:self->_moduleSize forKey:@"kCSSIconElementRequestModuleSize"];
  [coderCopy encodeObject:self->_moduleIdentifier forKey:@"kCSSIconElementRequestModuleIdentifier"];
  [coderCopy encodeObject:self->_controlKind forKey:@"kCSSIconElementRequestControlKind"];
  [coderCopy encodeObject:self->_extensionBundleIdentifier forKey:@"kCSSIconElementRequestExtensionBundleIdentifier"];
  [coderCopy encodeObject:self->_containerBundleIdentifier forKey:@"kCSSIconElementRequestContainerBundleIdentifier"];
  [coderCopy encodeInteger:self->_elementType forKey:@"kCSSIconElementRequestElementType"];
}

- (id)_controlTypeString:(unint64_t)string
{
  if (string - 1 > 2)
  {
    return @"CHSControlTypeUnknown";
  }

  else
  {
    return off_278E0F2C0[string - 1];
  }
}

- (id)_controlSizeString:(unint64_t)string
{
  if (string - 1 > 2)
  {
    return @"CHSControlSize1x1";
  }

  else
  {
    return off_278E0F2D8[string - 1];
  }
}

@end