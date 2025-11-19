@interface PKAutoFillVirtualCardDescriptor
- (CGImage)artwork;
- (PKAutoFillVirtualCardDescriptor)initWithCoder:(id)a3;
- (id)_initWithVirtualCard:(id)a3 type:(unint64_t)a4;
- (id)urlToCardDetails;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAutoFillVirtualCardDescriptor

- (id)_initWithVirtualCard:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = PKAutoFillVirtualCardDescriptor;
  v8 = [(PKAutoFillCardDescriptor *)&v15 _initWithType:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 12, a3);
    v10 = [v7 identifier];
    [v9 setIdentifier:v10];

    v11 = [v7 displayName];
    [v9 setCardNickname:v11];

    v12 = [v7 displayablePANSuffix];
    [v9 setDisplayableLastFour:v12];

    v13 = [v7 lastAutoFilledBySafari];
    [v9 setLastUsage:v13];
  }

  return v9;
}

- (id)urlToCardDetails
{
  if (+[PKWalletVisibility isWalletVisible])
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v3 setScheme:@"wallet"];
    [v3 setHost:@"virtualCard"];
    v4 = [(PKVirtualCard *)self->_virtualCard identifier];
    v5 = [@"/" stringByAppendingFormat:@"%@/%@", v4, @"details"];
    [v3 setPath:v5];

    v6 = [v3 URL];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"prefs:root=PASSBOOK&path="];
    [v3 appendString:@"virtualCard"];
    [v3 appendString:@"/"];
    v7 = [(PKVirtualCard *)self->_virtualCard identifier];
    [v3 appendString:v7];

    [v3 appendString:@"/"];
    [v3 appendString:@"details"];
    v8 = MEMORY[0x1E695DFF8];
    v9 = [v3 copy];
    v6 = [v8 URLWithString:v9];
  }

  return v6;
}

- (CGImage)artwork
{
  if ([(PKVirtualCard *)self->_virtualCard type]== 1)
  {
    v3 = PKPassKitUIFoundationBundle();
    v4 = [PKImage imageNamed:@"AppleCardAutoFillCreditCardIconLarge" inBundle:v3];
    v5 = [v4 imageRef];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKAutoFillVirtualCardDescriptor;
    return [(PKAutoFillCardDescriptor *)&v7 artwork];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKAutoFillVirtualCardDescriptor;
  v4 = a3;
  [(PKAutoFillCardDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_virtualCard forKey:{@"virtualCard", v5.receiver, v5.super_class}];
}

- (PKAutoFillVirtualCardDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKAutoFillVirtualCardDescriptor;
  v5 = [(PKAutoFillCardDescriptor *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"virtualCard"];
    virtualCard = v5->_virtualCard;
    v5->_virtualCard = v6;
  }

  return v5;
}

@end