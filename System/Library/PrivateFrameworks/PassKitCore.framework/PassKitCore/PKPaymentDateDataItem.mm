@interface PKPaymentDateDataItem
- (PKPaymentDateDataItem)initWithModel:(id)model;
@end

@implementation PKPaymentDateDataItem

- (PKPaymentDateDataItem)initWithModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PKPaymentDateDataItem;
  return [(PKPaymentDataItem *)&v4 initWithModel:model];
}

@end