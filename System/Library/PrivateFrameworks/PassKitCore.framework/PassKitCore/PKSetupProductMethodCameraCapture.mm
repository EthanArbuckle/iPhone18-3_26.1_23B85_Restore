@interface PKSetupProductMethodCameraCapture
- (PKSetupProductMethodCameraCapture)initWithCardTypeSupport:(id)a3 partnerIdentifier:(id)a4;
- (PKSetupProductMethodCameraCapture)initWithCoder:(id)a3;
- (PKSetupProductMethodCameraCapture)initWithDictionary:(id)a3 partnerIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_decorateDescription:(id)a3;
- (void)encodeWithCode:(id)a3;
@end

@implementation PKSetupProductMethodCameraCapture

- (PKSetupProductMethodCameraCapture)initWithCardTypeSupport:(id)a3 partnerIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v13.receiver = self;
    v13.super_class = PKSetupProductMethodCameraCapture;
    v9 = [(PKSetupProductMethod *)&v13 initWithType:7 partnerIdentifier:v8];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_cardTypeSupport, a3);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PKSetupProductMethodCameraCapture)initWithDictionary:(id)a3 partnerIdentifier:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = PKSetupProductMethodCameraCapture;
  v7 = [(PKSetupProductMethod *)&v15 initWithDictionary:v6 partnerIdentifier:a4];
  if (v7)
  {
    v8 = [v6 PKArrayContaining:objc_opt_class() forKey:@"cardTypeSupport"];
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

- (void)_decorateDescription:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodCameraCapture;
  v4 = a3;
  [(PKSetupProductMethod *)&v5 _decorateDescription:v4];
  [v4 appendFormat:@"cardTypeSupport: '%@'; ", self->_cardTypeSupport];
}

- (PKSetupProductMethodCameraCapture)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKSetupProductMethodCameraCapture;
  v5 = [(PKSetupProductMethod *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 initWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"cardTypeSupport"];
    cardTypeSupport = v5->_cardTypeSupport;
    v5->_cardTypeSupport = v9;
  }

  return v5;
}

- (void)encodeWithCode:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodCameraCapture;
  v4 = a3;
  [(PKSetupProductMethod *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_cardTypeSupport forKey:{@"cardTypeSupport", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(PKSetupProductMethodCameraCapture);
  [(PKSetupProductMethod *)self _copyInto:v5];
  v6 = [(NSArray *)self->_cardTypeSupport copyWithZone:a3];
  cardTypeSupport = v5->_cardTypeSupport;
  v5->_cardTypeSupport = v6;

  return v5;
}

@end