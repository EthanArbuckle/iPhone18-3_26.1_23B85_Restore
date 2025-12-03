@interface CLKCBundleComplication
+ (id)complicationWithBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier;
+ (id)complicationWithBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier complicationDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (CLKCBundleComplication)initWithBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier complicationDescriptor:(id)descriptor;
- (CLKCBundleComplication)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKCBundleComplication

+ (id)complicationWithBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier complicationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v11 = [[self alloc] initWithBundleIdentifier:identifierCopy appBundleIdentifier:bundleIdentifierCopy complicationDescriptor:descriptorCopy];

  return v11;
}

+ (id)complicationWithBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithBundleIdentifier:identifierCopy appBundleIdentifier:bundleIdentifierCopy complicationDescriptor:0];

  return v8;
}

- (CLKCBundleComplication)initWithBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier complicationDescriptor:(id)descriptor
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  descriptorCopy = descriptor;
  v17.receiver = self;
  v17.super_class = CLKCBundleComplication;
  v11 = [(CLKCBundleComplication *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    v14 = [bundleIdentifierCopy copy];
    appBundleIdentifier = v11->_appBundleIdentifier;
    v11->_appBundleIdentifier = v14;

    objc_storeStrong(&v11->_complicationDescriptor, descriptor);
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = CLKCBundleComplication;
  v4 = [(CLKCBundleComplication *)&v9 description];
  bundleIdentifier = [(CLKCBundleComplication *)self bundleIdentifier];
  appBundleIdentifier = [(CLKCBundleComplication *)self appBundleIdentifier];
  v7 = [v3 stringWithFormat:@"%@: bundleId=%@, appBundleId=%@", v4, bundleIdentifier, appBundleIdentifier];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleIdentifier = [(CLKCBundleComplication *)self bundleIdentifier];
    bundleIdentifier2 = [v5 bundleIdentifier];
    if (bundleIdentifier == bundleIdentifier2 || [bundleIdentifier isEqual:bundleIdentifier2])
    {
      complicationDescriptor = [(CLKCBundleComplication *)self complicationDescriptor];
      complicationDescriptor2 = [v5 complicationDescriptor];
      if (complicationDescriptor == complicationDescriptor2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [complicationDescriptor isEqual:complicationDescriptor2];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  bundleIdentifier = [(CLKCBundleComplication *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  complicationDescriptor = [(CLKCBundleComplication *)self complicationDescriptor];
  v6 = [complicationDescriptor hash];

  return v6 ^ v4;
}

- (CLKCBundleComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CLKCBundleComplication;
  v5 = [(CLKCBundleComplication *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CLKCBundleComplicationBundleIdentifierKey"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CLKCBundleComplicationAppBundleIdentifierKey"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CLKCBundleComplicationComplicationDescriptorKey"];
    complicationDescriptor = v5->_complicationDescriptor;
    v5->_complicationDescriptor = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"CLKCBundleComplicationBundleIdentifierKey"];
  [coderCopy encodeObject:self->_appBundleIdentifier forKey:@"CLKCBundleComplicationAppBundleIdentifierKey"];
  [coderCopy encodeObject:self->_complicationDescriptor forKey:@"CLKCBundleComplicationComplicationDescriptorKey"];
}

@end