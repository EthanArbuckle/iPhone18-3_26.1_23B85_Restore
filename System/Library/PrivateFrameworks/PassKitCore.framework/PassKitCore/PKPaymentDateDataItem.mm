@interface PKPaymentDateDataItem
- (PKPaymentDateDataItem)initWithModel:(id)a3;
@end

@implementation PKPaymentDateDataItem

- (PKPaymentDateDataItem)initWithModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentDateDataItem;
  return [(PKPaymentDataItem *)&v4 initWithModel:a3];
}

@end