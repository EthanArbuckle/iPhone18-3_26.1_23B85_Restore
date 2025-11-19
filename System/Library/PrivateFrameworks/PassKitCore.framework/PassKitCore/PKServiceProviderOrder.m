@interface PKServiceProviderOrder
- (PKServiceProviderOrder)init;
- (PKServiceProviderOrder)initWithCoder:(id)a3;
- (id)_itemDictionary;
- (id)_paymentInstrumentDictionary;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKServiceProviderOrder

- (PKServiceProviderOrder)init
{
  v9.receiver = self;
  v9.super_class = PKServiceProviderOrder;
  v2 = [(PKServiceProviderOrder *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;

    v6 = [MEMORY[0x1E695DF20] dictionary];
    serviceProviderData = v2->_serviceProviderData;
    v2->_serviceProviderData = v6;

    v2->_paymentInstrumentType = 1;
  }

  return v2;
}

- (PKServiceProviderOrder)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PKServiceProviderOrder;
  v5 = [(PKServiceProviderOrder *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemDescription"];
    itemDescription = v5->_itemDescription;
    v5->_itemDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderIdentifier"];
    serviceProviderIdentifier = v5->_serviceProviderIdentifier;
    v5->_serviceProviderIdentifier = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v12 setWithObjects:{v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"serviceProviderData"];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentInstrumentType"];
    v5->_paymentInstrumentType = [@"Applet" isEqualToString:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletValue"];
    appletValue = v5->_appletValue;
    v5->_appletValue = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  [v6 encodeObject:self->_itemDescription forKey:@"itemDescription"];
  [v6 encodeObject:self->_serviceProviderIdentifier forKey:@"serviceProviderIdentifier"];
  [v6 encodeObject:self->_serviceProviderData forKey:@"serviceProviderData"];
  if (self->_paymentInstrumentType == 1)
  {
    v5 = @"Applet";
  }

  else
  {
    v5 = @"Unknown";
  }

  [v6 encodeObject:v5 forKey:@"paymentInstrumentType"];
  [v6 encodeObject:self->_appletValue forKey:@"appletValue"];
  [v6 encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKeyedSubscript:@"orderId"];
  }

  v6 = [(PKServiceProviderOrder *)self _itemDictionary];
  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:@"item"];
  }

  v7 = [v4 copy];

  return v7;
}

- (id)_itemDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  itemDescription = self->_itemDescription;
  if (itemDescription)
  {
    [v3 setObject:itemDescription forKeyedSubscript:@"description"];
  }

  serviceProviderIdentifier = self->_serviceProviderIdentifier;
  if (serviceProviderIdentifier)
  {
    [v4 setObject:serviceProviderIdentifier forKeyedSubscript:@"serviceProviderIdentifier"];
  }

  v7 = [(PKServiceProviderOrder *)self serviceProviderData];
  if (v7)
  {
    [v4 setObject:v7 forKeyedSubscript:@"serviceProviderData"];
  }

  v8 = [(PKServiceProviderOrder *)self _paymentInstrumentDictionary];
  if (v8)
  {
    [v4 setObject:v8 forKeyedSubscript:@"paymentInstrument"];
  }

  transactionIdentifier = self->_transactionIdentifier;
  if (transactionIdentifier)
  {
    [v4 setObject:transactionIdentifier forKeyedSubscript:@"transactionIdentifier"];
  }

  v10 = [v4 copy];

  return v10;
}

- (id)_paymentInstrumentDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  if (self->_paymentInstrumentType == 1)
  {
    v5 = @"Applet";
  }

  else
  {
    v5 = @"Unknown";
  }

  [v3 setObject:v5 forKeyedSubscript:@"type"];
  if (self->_paymentInstrumentType == 1)
  {
    appletValue = self->_appletValue;
    if (appletValue)
    {
      v7 = [(NSData *)appletValue hexEncoding];
      [v4 setObject:v7 forKeyedSubscript:@"value"];

      serviceProviderIdentifier = self->_serviceProviderIdentifier;
      if (serviceProviderIdentifier)
      {
        v9 = [(NSString *)serviceProviderIdentifier dataUsingEncoding:4];
        v10 = [v9 SHA256Hash];
        v11 = [v10 hexEncoding];
        [v4 setObject:v11 forKeyedSubscript:@"merchantId"];
      }
    }
  }

  v12 = [v4 copy];

  return v12;
}

@end