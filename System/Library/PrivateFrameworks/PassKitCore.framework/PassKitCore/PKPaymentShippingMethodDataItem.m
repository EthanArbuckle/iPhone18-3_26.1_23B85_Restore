@interface PKPaymentShippingMethodDataItem
- (PKShippingMethod)shippingMethod;
@end

@implementation PKPaymentShippingMethodDataItem

- (PKShippingMethod)shippingMethod
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 shippingMethod];

  return v3;
}

@end