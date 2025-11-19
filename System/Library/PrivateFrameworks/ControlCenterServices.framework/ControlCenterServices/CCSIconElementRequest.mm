@interface CCSIconElementRequest
- (CCSIconElementRequest)initWithCoder:(id)a3;
- (CCSIconElementRequest)initWithIntent:(int64_t)a3 controlKind:(id)a4 controlType:(unint64_t)a5 extensionBundleIdentifier:(id)a6 containerBundleIdentifier:(id)a7 size:(unint64_t)a8;
- (CCSIconElementRequest)initWithIntent:(int64_t)a3 moduleIdentifier:(id)a4 containerBundleIdentifier:(id)a5 moduleSize:(int64_t)a6;
- (CCSIconElementRequest)initWithIntent:(int64_t)a3 moduleIdentifier:(id)a4 containerBundleIdentifier:(id)a5 size:(unint64_t)a6;
- (id)_controlSizeString:(unint64_t)a3;
- (id)_controlTypeString:(unint64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CCSIconElementRequest

- (CCSIconElementRequest)initWithIntent:(int64_t)a3 moduleIdentifier:(id)a4 containerBundleIdentifier:(id)a5 size:(unint64_t)a6
{
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = CCSIconElementRequest;
  v13 = [(CCSIconElementRequest *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_elementType = 1;
    intentConfiguration = v13->_intentConfiguration;
    v13->_intent = a3;
    v13->_intentConfiguration = 0;

    objc_storeStrong(&v14->_moduleIdentifier, a4);
    objc_storeStrong(&v14->_containerBundleIdentifier, a5);
    v14->_size = a6;
  }

  return v14;
}

- (CCSIconElementRequest)initWithIntent:(int64_t)a3 moduleIdentifier:(id)a4 containerBundleIdentifier:(id)a5 moduleSize:(int64_t)a6
{
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = CCSIconElementRequest;
  v13 = [(CCSIconElementRequest *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_elementType = 0;
    intentConfiguration = v13->_intentConfiguration;
    v13->_intent = a3;
    v13->_intentConfiguration = 0;

    objc_storeStrong(&v14->_moduleIdentifier, a4);
    objc_storeStrong(&v14->_containerBundleIdentifier, a5);
    v14->_moduleSize = a6;
  }

  return v14;
}

- (CCSIconElementRequest)initWithIntent:(int64_t)a3 controlKind:(id)a4 controlType:(unint64_t)a5 extensionBundleIdentifier:(id)a6 containerBundleIdentifier:(id)a7 size:(unint64_t)a8
{
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = CCSIconElementRequest;
  v18 = [(CCSIconElementRequest *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_elementType = 2;
    intentConfiguration = v18->_intentConfiguration;
    v18->_intentConfiguration = 0;

    v19->_intent = a3;
    objc_storeStrong(&v19->_controlKind, a4);
    v19->_controlType = a5;
    objc_storeStrong(&v19->_extensionBundleIdentifier, a6);
    objc_storeStrong(&v19->_containerBundleIdentifier, a7);
    v19->_size = a8;
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
  v7 = [(INIntent *)self->_intentConfiguration intentDescription];
  [v4 appendString:v7 withName:@"kCSSIconElementRequestIntentConfiguration"];

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
  v13 = [v4 build];

  return v13;
}

- (CCSIconElementRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"kCSSIconElementRequestIntent"];
  v6 = [v4 decodeIntegerForKey:@"kCSSIconElementRequestElementType"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCSSIconElementRequestContainerBundleIdentifier"];
  switch(v6)
  {
    case 2:
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCSSIconElementRequestControlKind"];
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCSSIconElementRequestIntentConfiguration"];
      v12 = [v4 decodeIntegerForKey:@"kCSSIconElementRequestControlType"];
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCSSIconElementRequestExtensionBundleIdentifier"];
      v10 = -[CCSIconElementRequest initWithIntent:controlKind:controlType:extensionBundleIdentifier:containerBundleIdentifier:size:]([CCSIconElementRequest alloc], "initWithIntent:controlKind:controlType:extensionBundleIdentifier:containerBundleIdentifier:size:", v5, v8, v12, v13, v7, [v4 decodeIntegerForKey:@"kCSSIconElementRequestSize"]);

      [(CCSIconElementRequest *)v10 setIntentConfiguration:v11];
      self = v11;
      goto LABEL_8;
    case 1:
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCSSIconElementRequestModuleIdentifier"];
      v9 = -[CCSIconElementRequest initWithIntent:moduleIdentifier:containerBundleIdentifier:size:]([CCSIconElementRequest alloc], "initWithIntent:moduleIdentifier:containerBundleIdentifier:size:", v5, v8, v7, [v4 decodeIntegerForKey:@"kCSSIconElementRequestSize"]);
      goto LABEL_6;
    case 0:
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCSSIconElementRequestModuleIdentifier"];
      v9 = -[CCSIconElementRequest initWithIntent:moduleIdentifier:containerBundleIdentifier:moduleSize:]([CCSIconElementRequest alloc], "initWithIntent:moduleIdentifier:containerBundleIdentifier:moduleSize:", v5, v8, v7, [v4 decodeIntegerForKey:@"kCSSIconElementRequestModuleSize"]);
LABEL_6:
      v10 = v9;
LABEL_8:

      self = v10;
      break;
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  intent = self->_intent;
  v5 = a3;
  [v5 encodeInteger:intent forKey:@"kCSSIconElementRequestIntent"];
  [v5 encodeObject:self->_intentConfiguration forKey:@"kCSSIconElementRequestIntentConfiguration"];
  [v5 encodeInteger:self->_controlType forKey:@"kCSSIconElementRequestControlType"];
  [v5 encodeInteger:self->_size forKey:@"kCSSIconElementRequestSize"];
  [v5 encodeInteger:self->_moduleSize forKey:@"kCSSIconElementRequestModuleSize"];
  [v5 encodeObject:self->_moduleIdentifier forKey:@"kCSSIconElementRequestModuleIdentifier"];
  [v5 encodeObject:self->_controlKind forKey:@"kCSSIconElementRequestControlKind"];
  [v5 encodeObject:self->_extensionBundleIdentifier forKey:@"kCSSIconElementRequestExtensionBundleIdentifier"];
  [v5 encodeObject:self->_containerBundleIdentifier forKey:@"kCSSIconElementRequestContainerBundleIdentifier"];
  [v5 encodeInteger:self->_elementType forKey:@"kCSSIconElementRequestElementType"];
}

- (id)_controlTypeString:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"CHSControlTypeUnknown";
  }

  else
  {
    return off_278E0F2C0[a3 - 1];
  }
}

- (id)_controlSizeString:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"CHSControlSize1x1";
  }

  else
  {
    return off_278E0F2D8[a3 - 1];
  }
}

@end