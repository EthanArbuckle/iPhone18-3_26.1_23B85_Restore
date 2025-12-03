@interface PKPaymentSummaryItemsDataItem
- (NSArray)paymentSummaryItems;
- (NSString)currencyCode;
@end

@implementation PKPaymentSummaryItemsDataItem

- (NSString)currencyCode
{
  model = [(PKPaymentDataItem *)self model];
  currencyCode = [model currencyCode];

  return currencyCode;
}

- (NSArray)paymentSummaryItems
{
  model = [(PKPaymentDataItem *)self model];
  paymentSummaryItems = [model paymentSummaryItems];

  return paymentSummaryItems;
}

@end