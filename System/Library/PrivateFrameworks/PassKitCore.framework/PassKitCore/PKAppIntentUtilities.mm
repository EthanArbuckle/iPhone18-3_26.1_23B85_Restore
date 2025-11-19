@interface PKAppIntentUtilities
+ (int64_t)pkBillPayAmountTypeFromType:(id)a3;
+ (void)associateSearchableItem:(id)a3 withEntityForAccount:(id)a4;
+ (void)associateSearchableItem:(id)a3 withEntityForPass:(id)a4;
+ (void)associateSearchableItem:(id)a3 withEntityForTransaction:(id)a4;
- (PKAppIntentUtilities)init;
@end

@implementation PKAppIntentUtilities

+ (int64_t)pkBillPayAmountTypeFromType:(id)a3
{
  v3 = sub_1ADB063B0();
  v5 = _s11PassKitCore18AppIntentUtilitiesC23pkBillPayAmountTypeFrom4typeSo06PKBillijK0VSS_tFZ_0(v3, v4);

  return v5;
}

+ (void)associateSearchableItem:(id)a3 withEntityForPass:(id)a4
{
  v5 = a3;
  v6 = a4;
  _s11PassKitCore18AppIntentUtilitiesC9associate14searchableItem013withEntityForA0ySo012CSSearchableI0C_So6PKPassCtFZ_0(v5, v6);
}

+ (void)associateSearchableItem:(id)a3 withEntityForAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  _s11PassKitCore18AppIntentUtilitiesC9associate14searchableItem20withEntityForAccountySo012CSSearchableI0C_So9PKAccountCtFZ_0(v5, v6);
}

+ (void)associateSearchableItem:(id)a3 withEntityForTransaction:(id)a4
{
  v5 = a3;
  v6 = a4;
  _s11PassKitCore18AppIntentUtilitiesC9associate14searchableItem24withEntityForTransactionySo012CSSearchableI0C_So09PKPaymentM0CtFZ_0(v5, v6);
}

- (PKAppIntentUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppIntentUtilities();
  return [(PKAppIntentUtilities *)&v3 init];
}

@end