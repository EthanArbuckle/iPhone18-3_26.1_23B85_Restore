@interface PKPassBarcodeSettings
- (PKPassBarcodeSettings)initWithCoder:(id)a3;
- (PKPassBarcodeSettings)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassBarcodeSettings

- (PKPassBarcodeSettings)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8.receiver = self;
    v8.super_class = PKPassBarcodeSettings;
    v5 = [(PKPassBarcodeSettings *)&v8 init];
    if (v5)
    {
      *(v5 + 1) = [v4 PKIntegerForKey:@"initialBarcodeFetchCount"];
      v6 = [v4 PKURLForKey:@"barcodeServiceURL"];
      self = *(v5 + 2);
      *(v5 + 2) = v6;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKPassBarcodeSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassBarcodeSettings;
  v5 = [(PKPassBarcodeSettings *)&v9 init];
  if (v5)
  {
    v5->_initialBarcodeFetchCount = [v4 decodeIntegerForKey:@"initialBarcodeFetchCount"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"barcodeServiceURL"];
    barcodeServiceURL = v5->_barcodeServiceURL;
    v5->_barcodeServiceURL = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  initialBarcodeFetchCount = self->_initialBarcodeFetchCount;
  v5 = a3;
  [v5 encodeInteger:initialBarcodeFetchCount forKey:@"initialBarcodeFetchCount"];
  [v5 encodeObject:self->_barcodeServiceURL forKey:@"barcodeServiceURL"];
}

@end