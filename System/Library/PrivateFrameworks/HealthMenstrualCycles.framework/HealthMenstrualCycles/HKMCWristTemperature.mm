@interface HKMCWristTemperature
+ (id)wristTemperatureFromWristTemperatureSample:(id)sample;
- (BOOL)isEqual:(id)equal;
- (HKMCWristTemperature)initWithCoder:(id)coder;
- (HKMCWristTemperature)initWithQuantity:(id)quantity watchBundleIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCWristTemperature

- (HKMCWristTemperature)initWithQuantity:(id)quantity watchBundleIdentifier:(id)identifier
{
  quantityCopy = quantity;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HKMCWristTemperature;
  v9 = [(HKMCWristTemperature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_quantity, quantity);
    objc_storeStrong(&v10->_watchBundleIdentifier, identifier);
  }

  return v10;
}

+ (id)wristTemperatureFromWristTemperatureSample:(id)sample
{
  sampleCopy = sample;
  v5 = [self alloc];
  quantity = [sampleCopy quantity];
  sourceRevision = [sampleCopy sourceRevision];

  source = [sourceRevision source];
  bundleIdentifier = [source bundleIdentifier];
  v10 = [v5 initWithQuantity:quantity watchBundleIdentifier:bundleIdentifier];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  quantity = self->_quantity;
  coderCopy = coder;
  [coderCopy encodeObject:quantity forKey:@"Quantity"];
  [coderCopy encodeObject:self->_watchBundleIdentifier forKey:@"WatchBundleIdentifier"];
}

- (HKMCWristTemperature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKMCWristTemperature;
  v5 = [(HKMCWristTemperature *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Quantity"];
    quantity = v5->_quantity;
    v5->_quantity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WatchBundleIdentifier"];
    watchBundleIdentifier = v5->_watchBundleIdentifier;
    v5->_watchBundleIdentifier = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      quantity = [(HKMCWristTemperature *)self quantity];
      quantity2 = [(HKMCWristTemperature *)equalCopy quantity];
      if (quantity == quantity2)
      {
        goto LABEL_9;
      }

      quantity3 = [(HKMCWristTemperature *)equalCopy quantity];
      if (!quantity3)
      {
        v11 = 0;
        goto LABEL_12;
      }

      v3 = quantity3;
      quantity4 = [(HKMCWristTemperature *)self quantity];
      quantity5 = [(HKMCWristTemperature *)equalCopy quantity];
      if ([quantity4 isEqual:quantity5])
      {
LABEL_9:
        watchBundleIdentifier = [(HKMCWristTemperature *)self watchBundleIdentifier];
        watchBundleIdentifier2 = [(HKMCWristTemperature *)equalCopy watchBundleIdentifier];
        v11 = [watchBundleIdentifier isEqual:watchBundleIdentifier2];

        if (quantity == quantity2)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_12;
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

@end