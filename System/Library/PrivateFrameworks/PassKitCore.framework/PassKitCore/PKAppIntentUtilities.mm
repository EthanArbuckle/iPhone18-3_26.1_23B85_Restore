@interface PKAppIntentUtilities
+ (int64_t)pkBillPayAmountTypeFromType:(id)type;
+ (void)associateSearchableItem:(id)item withEntityForAccount:(id)account;
+ (void)associateSearchableItem:(id)item withEntityForPass:(id)pass;
+ (void)associateSearchableItem:(id)item withEntityForTransaction:(id)transaction;
- (PKAppIntentUtilities)init;
@end

@implementation PKAppIntentUtilities

+ (int64_t)pkBillPayAmountTypeFromType:(id)type
{
  v3 = sub_1ADB063B0();
  v5 = _s11PassKitCore18AppIntentUtilitiesC23pkBillPayAmountTypeFrom4typeSo06PKBillijK0VSS_tFZ_0(v3, v4);

  return v5;
}

+ (void)associateSearchableItem:(id)item withEntityForPass:(id)pass
{
  itemCopy = item;
  passCopy = pass;
  _s11PassKitCore18AppIntentUtilitiesC9associate14searchableItem013withEntityForA0ySo012CSSearchableI0C_So6PKPassCtFZ_0(itemCopy, passCopy);
}

+ (void)associateSearchableItem:(id)item withEntityForAccount:(id)account
{
  itemCopy = item;
  accountCopy = account;
  _s11PassKitCore18AppIntentUtilitiesC9associate14searchableItem20withEntityForAccountySo012CSSearchableI0C_So9PKAccountCtFZ_0(itemCopy, accountCopy);
}

+ (void)associateSearchableItem:(id)item withEntityForTransaction:(id)transaction
{
  itemCopy = item;
  transactionCopy = transaction;
  _s11PassKitCore18AppIntentUtilitiesC9associate14searchableItem24withEntityForTransactionySo012CSSearchableI0C_So09PKPaymentM0CtFZ_0(itemCopy, transactionCopy);
}

- (PKAppIntentUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppIntentUtilities();
  return [(PKAppIntentUtilities *)&v3 init];
}

@end