@interface PKPaymentContentDataItem
- (PKPaymentContentDataItem)initWithContentItem:(id)item;
@end

@implementation PKPaymentContentDataItem

- (PKPaymentContentDataItem)initWithContentItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = PKPaymentContentDataItem;
  v6 = [(PKPaymentContentDataItem *)&v8 init];
  if (v6)
  {
    -[PKPaymentDataItem setType:](v6, "setType:", [objc_opt_class() dataType]);
    [(PKPaymentDataItem *)v6 setStatus:0];
    objc_storeStrong(&v6->_contentItem, item);
  }

  return v6;
}

@end