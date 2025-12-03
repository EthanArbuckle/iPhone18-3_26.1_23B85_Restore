@interface PKPassBarcodeSettings
- (PKPassBarcodeSettings)initWithCoder:(id)coder;
- (PKPassBarcodeSettings)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassBarcodeSettings

- (PKPassBarcodeSettings)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v8.receiver = self;
    v8.super_class = PKPassBarcodeSettings;
    v5 = [(PKPassBarcodeSettings *)&v8 init];
    if (v5)
    {
      *(v5 + 1) = [dictionaryCopy PKIntegerForKey:@"initialBarcodeFetchCount"];
      v6 = [dictionaryCopy PKURLForKey:@"barcodeServiceURL"];
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

- (PKPassBarcodeSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassBarcodeSettings;
  v5 = [(PKPassBarcodeSettings *)&v9 init];
  if (v5)
  {
    v5->_initialBarcodeFetchCount = [coderCopy decodeIntegerForKey:@"initialBarcodeFetchCount"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"barcodeServiceURL"];
    barcodeServiceURL = v5->_barcodeServiceURL;
    v5->_barcodeServiceURL = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  initialBarcodeFetchCount = self->_initialBarcodeFetchCount;
  coderCopy = coder;
  [coderCopy encodeInteger:initialBarcodeFetchCount forKey:@"initialBarcodeFetchCount"];
  [coderCopy encodeObject:self->_barcodeServiceURL forKey:@"barcodeServiceURL"];
}

@end