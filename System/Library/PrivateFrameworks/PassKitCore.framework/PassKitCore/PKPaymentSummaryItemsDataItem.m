@interface PKPaymentSummaryItemsDataItem
- (NSArray)paymentSummaryItems;
- (NSString)currencyCode;
@end

@implementation PKPaymentSummaryItemsDataItem

- (NSString)currencyCode
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 currencyCode];

  return v3;
}

- (NSArray)paymentSummaryItems
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 paymentSummaryItems];

  return v3;
}

@end