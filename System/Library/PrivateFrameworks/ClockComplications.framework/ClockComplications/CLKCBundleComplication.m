@interface CLKCBundleComplication
+ (id)complicationWithBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4;
+ (id)complicationWithBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 complicationDescriptor:(id)a5;
- (BOOL)isEqual:(id)a3;
- (CLKCBundleComplication)initWithBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 complicationDescriptor:(id)a5;
- (CLKCBundleComplication)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKCBundleComplication

+ (id)complicationWithBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 complicationDescriptor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithBundleIdentifier:v10 appBundleIdentifier:v9 complicationDescriptor:v8];

  return v11;
}

+ (id)complicationWithBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithBundleIdentifier:v7 appBundleIdentifier:v6 complicationDescriptor:0];

  return v8;
}

- (CLKCBundleComplication)initWithBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 complicationDescriptor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CLKCBundleComplication;
  v11 = [(CLKCBundleComplication *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    v14 = [v9 copy];
    appBundleIdentifier = v11->_appBundleIdentifier;
    v11->_appBundleIdentifier = v14;

    objc_storeStrong(&v11->_complicationDescriptor, a5);
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = CLKCBundleComplication;
  v4 = [(CLKCBundleComplication *)&v9 description];
  v5 = [(CLKCBundleComplication *)self bundleIdentifier];
  v6 = [(CLKCBundleComplication *)self appBundleIdentifier];
  v7 = [v3 stringWithFormat:@"%@: bundleId=%@, appBundleId=%@", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CLKCBundleComplication *)self bundleIdentifier];
    v7 = [v5 bundleIdentifier];
    if (v6 == v7 || [v6 isEqual:v7])
    {
      v8 = [(CLKCBundleComplication *)self complicationDescriptor];
      v9 = [v5 complicationDescriptor];
      if (v8 == v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = [v8 isEqual:v9];
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
  v3 = [(CLKCBundleComplication *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = [(CLKCBundleComplication *)self complicationDescriptor];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (CLKCBundleComplication)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CLKCBundleComplication;
  v5 = [(CLKCBundleComplication *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CLKCBundleComplicationBundleIdentifierKey"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CLKCBundleComplicationAppBundleIdentifierKey"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CLKCBundleComplicationComplicationDescriptorKey"];
    complicationDescriptor = v5->_complicationDescriptor;
    v5->_complicationDescriptor = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"CLKCBundleComplicationBundleIdentifierKey"];
  [v5 encodeObject:self->_appBundleIdentifier forKey:@"CLKCBundleComplicationAppBundleIdentifierKey"];
  [v5 encodeObject:self->_complicationDescriptor forKey:@"CLKCBundleComplicationComplicationDescriptorKey"];
}

@end