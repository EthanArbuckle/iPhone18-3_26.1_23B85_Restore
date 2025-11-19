@interface PKAutoFillAppleCashCardDescriptor
- (CGImage)artwork;
- (PKAutoFillAppleCashCardDescriptor)initWithCoder:(id)a3;
- (PKAutoFillAppleCashCardDescriptor)initWithVirtualCard:(id)a3;
- (PKCurrencyAmount)balance;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAutoFillAppleCashCardDescriptor

- (PKAutoFillAppleCashCardDescriptor)initWithVirtualCard:(id)a3
{
  v4 = a3;
  v5 = [v4 balance];

  if (v5)
  {
    v8.receiver = self;
    v8.super_class = PKAutoFillAppleCashCardDescriptor;
    v6 = [(PKAutoFillVirtualCardDescriptor *)&v8 _initWithVirtualCard:v4 type:3];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (PKCurrencyAmount)balance
{
  v2 = [(PKAutoFillVirtualCardDescriptor *)self virtualCard];
  v3 = [v2 balance];

  return v3;
}

- (CGImage)artwork
{
  v2 = PKPassKitCoreBundle();
  v3 = [PKImage imageNamed:@"HeroCard_AppleCash" inBundle:v2];
  v4 = [v3 imageRef];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = PKAutoFillAppleCashCardDescriptor;
  [(PKAutoFillVirtualCardDescriptor *)&v3 encodeWithCoder:a3];
}

- (PKAutoFillAppleCashCardDescriptor)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKAutoFillAppleCashCardDescriptor;
  return [(PKAutoFillVirtualCardDescriptor *)&v4 initWithCoder:a3];
}

@end