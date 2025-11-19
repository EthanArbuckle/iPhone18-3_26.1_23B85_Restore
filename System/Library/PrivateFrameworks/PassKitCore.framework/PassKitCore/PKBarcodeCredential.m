@interface PKBarcodeCredential
- (PKBarcodeCredential)initWithCoder:(id)a3;
- (PKBarcodeCredential)initWithDictionary:(id)a3;
- (id)asDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKBarcodeCredential

- (PKBarcodeCredential)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKBarcodeCredential;
  v5 = [(PKBarcodeCredential *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 objectForKey:@"expirationTimestamp"];
    v9 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v8, 0, 0);
    expirationTimestamp = v5->_expirationTimestamp;
    v5->_expirationTimestamp = v9;

    v11 = [PKEncryptedDataObject alloc];
    v12 = [v4 objectForKey:@"value"];
    v13 = [(PKEncryptedDataObject *)v11 initWithWebServiceDictionary:v12];
    value = v5->_value;
    v5->_value = v13;
  }

  return v5;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  v4 = PKW3CDateStringFromDate(self->_expirationTimestamp);
  [v3 setObject:v4 forKeyedSubscript:@"expirationTimestamp"];

  v5 = [(PKEncryptedDataObject *)self->_value asWebServiceDictionary];
  [v3 setObject:v5 forKeyedSubscript:@"value"];

  v6 = [v3 copy];

  return v6;
}

- (PKBarcodeCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKBarcodeCredential;
  v5 = [(PKBarcodeCredential *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationTimestamp"];
    expirationTimestamp = v5->_expirationTimestamp;
    v5->_expirationTimestamp = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_value forKey:@"value"];
  [v5 encodeObject:self->_expirationTimestamp forKey:@"expirationTimestamp"];
}

@end