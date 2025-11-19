@interface HKMCWristTemperature
+ (id)wristTemperatureFromWristTemperatureSample:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKMCWristTemperature)initWithCoder:(id)a3;
- (HKMCWristTemperature)initWithQuantity:(id)a3 watchBundleIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCWristTemperature

- (HKMCWristTemperature)initWithQuantity:(id)a3 watchBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKMCWristTemperature;
  v9 = [(HKMCWristTemperature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_quantity, a3);
    objc_storeStrong(&v10->_watchBundleIdentifier, a4);
  }

  return v10;
}

+ (id)wristTemperatureFromWristTemperatureSample:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 quantity];
  v7 = [v4 sourceRevision];

  v8 = [v7 source];
  v9 = [v8 bundleIdentifier];
  v10 = [v5 initWithQuantity:v6 watchBundleIdentifier:v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  quantity = self->_quantity;
  v5 = a3;
  [v5 encodeObject:quantity forKey:@"Quantity"];
  [v5 encodeObject:self->_watchBundleIdentifier forKey:@"WatchBundleIdentifier"];
}

- (HKMCWristTemperature)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKMCWristTemperature;
  v5 = [(HKMCWristTemperature *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Quantity"];
    quantity = v5->_quantity;
    v5->_quantity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WatchBundleIdentifier"];
    watchBundleIdentifier = v5->_watchBundleIdentifier;
    v5->_watchBundleIdentifier = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(HKMCWristTemperature *)self quantity];
      v9 = [(HKMCWristTemperature *)v7 quantity];
      if (v8 == v9)
      {
        goto LABEL_9;
      }

      v10 = [(HKMCWristTemperature *)v7 quantity];
      if (!v10)
      {
        v11 = 0;
        goto LABEL_12;
      }

      v3 = v10;
      v4 = [(HKMCWristTemperature *)self quantity];
      v5 = [(HKMCWristTemperature *)v7 quantity];
      if ([v4 isEqual:v5])
      {
LABEL_9:
        v12 = [(HKMCWristTemperature *)self watchBundleIdentifier];
        v13 = [(HKMCWristTemperature *)v7 watchBundleIdentifier];
        v11 = [v12 isEqual:v13];

        if (v8 == v9)
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