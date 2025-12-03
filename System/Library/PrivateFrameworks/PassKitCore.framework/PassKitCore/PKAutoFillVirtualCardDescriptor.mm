@interface PKAutoFillVirtualCardDescriptor
- (CGImage)artwork;
- (PKAutoFillVirtualCardDescriptor)initWithCoder:(id)coder;
- (id)_initWithVirtualCard:(id)card type:(unint64_t)type;
- (id)urlToCardDetails;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAutoFillVirtualCardDescriptor

- (id)_initWithVirtualCard:(id)card type:(unint64_t)type
{
  cardCopy = card;
  v15.receiver = self;
  v15.super_class = PKAutoFillVirtualCardDescriptor;
  v8 = [(PKAutoFillCardDescriptor *)&v15 _initWithType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 12, card);
    identifier = [cardCopy identifier];
    [v9 setIdentifier:identifier];

    displayName = [cardCopy displayName];
    [v9 setCardNickname:displayName];

    displayablePANSuffix = [cardCopy displayablePANSuffix];
    [v9 setDisplayableLastFour:displayablePANSuffix];

    lastAutoFilledBySafari = [cardCopy lastAutoFilledBySafari];
    [v9 setLastUsage:lastAutoFilledBySafari];
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
    identifier = [(PKVirtualCard *)self->_virtualCard identifier];
    v5 = [@"/" stringByAppendingFormat:@"%@/%@", identifier, @"details"];
    [v3 setPath:v5];

    v6 = [v3 URL];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"prefs:root=PASSBOOK&path="];
    [v3 appendString:@"virtualCard"];
    [v3 appendString:@"/"];
    identifier2 = [(PKVirtualCard *)self->_virtualCard identifier];
    [v3 appendString:identifier2];

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
    imageRef = [v4 imageRef];

    return imageRef;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKAutoFillVirtualCardDescriptor;
    return [(PKAutoFillCardDescriptor *)&v7 artwork];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKAutoFillVirtualCardDescriptor;
  coderCopy = coder;
  [(PKAutoFillCardDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_virtualCard forKey:{@"virtualCard", v5.receiver, v5.super_class}];
}

- (PKAutoFillVirtualCardDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKAutoFillVirtualCardDescriptor;
  v5 = [(PKAutoFillCardDescriptor *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"virtualCard"];
    virtualCard = v5->_virtualCard;
    v5->_virtualCard = v6;
  }

  return v5;
}

@end