@interface PKServiceProviderOrder
- (PKServiceProviderOrder)init;
- (PKServiceProviderOrder)initWithCoder:(id)coder;
- (id)_itemDictionary;
- (id)_paymentInstrumentDictionary;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKServiceProviderOrder

- (PKServiceProviderOrder)init
{
  v9.receiver = self;
  v9.super_class = PKServiceProviderOrder;
  v2 = [(PKServiceProviderOrder *)&v9 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;

    dictionary = [MEMORY[0x1E695DF20] dictionary];
    serviceProviderData = v2->_serviceProviderData;
    v2->_serviceProviderData = dictionary;

    v2->_paymentInstrumentType = 1;
  }

  return v2;
}

- (PKServiceProviderOrder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = PKServiceProviderOrder;
  v5 = [(PKServiceProviderOrder *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemDescription"];
    itemDescription = v5->_itemDescription;
    v5->_itemDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderIdentifier"];
    serviceProviderIdentifier = v5->_serviceProviderIdentifier;
    v5->_serviceProviderIdentifier = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v12 setWithObjects:{v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"serviceProviderData"];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentInstrumentType"];
    v5->_paymentInstrumentType = [@"Applet" isEqualToString:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletValue"];
    appletValue = v5->_appletValue;
    v5->_appletValue = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_itemDescription forKey:@"itemDescription"];
  [coderCopy encodeObject:self->_serviceProviderIdentifier forKey:@"serviceProviderIdentifier"];
  [coderCopy encodeObject:self->_serviceProviderData forKey:@"serviceProviderData"];
  if (self->_paymentInstrumentType == 1)
  {
    v5 = @"Applet";
  }

  else
  {
    v5 = @"Unknown";
  }

  [coderCopy encodeObject:v5 forKey:@"paymentInstrumentType"];
  [coderCopy encodeObject:self->_appletValue forKey:@"appletValue"];
  [coderCopy encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKeyedSubscript:@"orderId"];
  }

  _itemDictionary = [(PKServiceProviderOrder *)self _itemDictionary];
  if (_itemDictionary)
  {
    [v4 setObject:_itemDictionary forKeyedSubscript:@"item"];
  }

  v7 = [v4 copy];

  return v7;
}

- (id)_itemDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  itemDescription = self->_itemDescription;
  if (itemDescription)
  {
    [dictionary setObject:itemDescription forKeyedSubscript:@"description"];
  }

  serviceProviderIdentifier = self->_serviceProviderIdentifier;
  if (serviceProviderIdentifier)
  {
    [v4 setObject:serviceProviderIdentifier forKeyedSubscript:@"serviceProviderIdentifier"];
  }

  serviceProviderData = [(PKServiceProviderOrder *)self serviceProviderData];
  if (serviceProviderData)
  {
    [v4 setObject:serviceProviderData forKeyedSubscript:@"serviceProviderData"];
  }

  _paymentInstrumentDictionary = [(PKServiceProviderOrder *)self _paymentInstrumentDictionary];
  if (_paymentInstrumentDictionary)
  {
    [v4 setObject:_paymentInstrumentDictionary forKeyedSubscript:@"paymentInstrument"];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  if (self->_paymentInstrumentType == 1)
  {
    v5 = @"Applet";
  }

  else
  {
    v5 = @"Unknown";
  }

  [dictionary setObject:v5 forKeyedSubscript:@"type"];
  if (self->_paymentInstrumentType == 1)
  {
    appletValue = self->_appletValue;
    if (appletValue)
    {
      hexEncoding = [(NSData *)appletValue hexEncoding];
      [v4 setObject:hexEncoding forKeyedSubscript:@"value"];

      serviceProviderIdentifier = self->_serviceProviderIdentifier;
      if (serviceProviderIdentifier)
      {
        v9 = [(NSString *)serviceProviderIdentifier dataUsingEncoding:4];
        sHA256Hash = [v9 SHA256Hash];
        hexEncoding2 = [sHA256Hash hexEncoding];
        [v4 setObject:hexEncoding2 forKeyedSubscript:@"merchantId"];
      }
    }
  }

  v12 = [v4 copy];

  return v12;
}

@end