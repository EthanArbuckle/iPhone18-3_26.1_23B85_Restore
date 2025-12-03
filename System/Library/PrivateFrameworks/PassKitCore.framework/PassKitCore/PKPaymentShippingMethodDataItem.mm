@interface PKPaymentShippingMethodDataItem
- (PKShippingMethod)shippingMethod;
@end

@implementation PKPaymentShippingMethodDataItem

- (PKShippingMethod)shippingMethod
{
  model = [(PKPaymentDataItem *)self model];
  shippingMethod = [model shippingMethod];

  return shippingMethod;
}

@end