@interface PKAutoFillAppleCashCardDescriptor
- (CGImage)artwork;
- (PKAutoFillAppleCashCardDescriptor)initWithCoder:(id)coder;
- (PKAutoFillAppleCashCardDescriptor)initWithVirtualCard:(id)card;
- (PKCurrencyAmount)balance;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAutoFillAppleCashCardDescriptor

- (PKAutoFillAppleCashCardDescriptor)initWithVirtualCard:(id)card
{
  cardCopy = card;
  balance = [cardCopy balance];

  if (balance)
  {
    v8.receiver = self;
    v8.super_class = PKAutoFillAppleCashCardDescriptor;
    v6 = [(PKAutoFillVirtualCardDescriptor *)&v8 _initWithVirtualCard:cardCopy type:3];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (PKCurrencyAmount)balance
{
  virtualCard = [(PKAutoFillVirtualCardDescriptor *)self virtualCard];
  balance = [virtualCard balance];

  return balance;
}

- (CGImage)artwork
{
  v2 = PKPassKitCoreBundle();
  v3 = [PKImage imageNamed:@"HeroCard_AppleCash" inBundle:v2];
  imageRef = [v3 imageRef];

  return imageRef;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = PKAutoFillAppleCashCardDescriptor;
  [(PKAutoFillVirtualCardDescriptor *)&v3 encodeWithCoder:coder];
}

- (PKAutoFillAppleCashCardDescriptor)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PKAutoFillAppleCashCardDescriptor;
  return [(PKAutoFillVirtualCardDescriptor *)&v4 initWithCoder:coder];
}

@end