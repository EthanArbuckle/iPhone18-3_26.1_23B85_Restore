@interface PKSetupProductMethodCameraCapture
- (PKSetupProductMethodCameraCapture)initWithCardTypeSupport:(id)support partnerIdentifier:(id)identifier;
- (PKSetupProductMethodCameraCapture)initWithCoder:(id)coder;
- (PKSetupProductMethodCameraCapture)initWithDictionary:(id)dictionary partnerIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_decorateDescription:(id)description;
- (void)encodeWithCode:(id)code;
@end

@implementation PKSetupProductMethodCameraCapture

- (PKSetupProductMethodCameraCapture)initWithCardTypeSupport:(id)support partnerIdentifier:(id)identifier
{
  supportCopy = support;
  identifierCopy = identifier;
  if ([supportCopy count])
  {
    v13.receiver = self;
    v13.super_class = PKSetupProductMethodCameraCapture;
    v9 = [(PKSetupProductMethod *)&v13 initWithType:7 partnerIdentifier:identifierCopy];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_cardTypeSupport, support);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKSetupProductMethodCameraCapture)initWithDictionary:(id)dictionary partnerIdentifier:(id)identifier
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PKSetupProductMethodCameraCapture;
  v7 = [(PKSetupProductMethod *)&v15 initWithDictionary:dictionaryCopy partnerIdentifier:identifier];
  if (v7)
  {
    v8 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"cardTypeSupport"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__PKSetupProductMethodCameraCapture_initWithDictionary_partnerIdentifier___block_invoke;
    v13[3] = &unk_1E79CFDA8;
    v9 = v7;
    v14 = v9;
    v10 = [v8 pk_arrayByApplyingBlock:v13];
    cardTypeSupport = v9->_cardTypeSupport;
    v9->_cardTypeSupport = v10;
  }

  return v7;
}

- (void)_decorateDescription:(id)description
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodCameraCapture;
  descriptionCopy = description;
  [(PKSetupProductMethod *)&v5 _decorateDescription:descriptionCopy];
  [descriptionCopy appendFormat:@"cardTypeSupport: '%@'; ", self->_cardTypeSupport];
}

- (PKSetupProductMethodCameraCapture)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKSetupProductMethodCameraCapture;
  v5 = [(PKSetupProductMethod *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 initWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"cardTypeSupport"];
    cardTypeSupport = v5->_cardTypeSupport;
    v5->_cardTypeSupport = v9;
  }

  return v5;
}

- (void)encodeWithCode:(id)code
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodCameraCapture;
  codeCopy = code;
  [(PKSetupProductMethod *)&v5 encodeWithCoder:codeCopy];
  [codeCopy encodeObject:self->_cardTypeSupport forKey:{@"cardTypeSupport", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(PKSetupProductMethodCameraCapture);
  [(PKSetupProductMethod *)self _copyInto:v5];
  v6 = [(NSArray *)self->_cardTypeSupport copyWithZone:zone];
  cardTypeSupport = v5->_cardTypeSupport;
  v5->_cardTypeSupport = v6;

  return v5;
}

@end