@interface _BMWalletPaymentsCommerceFinancialInsightsLibraryNode
+ (id)PaymentRingSuggestions;
+ (id)RecurringSendSuggestions;
+ (id)Search;
+ (id)configurationForPaymentRingSuggestions;
+ (id)configurationForRecurringSendSuggestions;
+ (id)configurationForSearch;
+ (id)storeConfigurationForPaymentRingSuggestions;
+ (id)storeConfigurationForRecurringSendSuggestions;
+ (id)storeConfigurationForSearch;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMWalletPaymentsCommerceFinancialInsightsLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"PaymentRingSuggestions"])
  {
    paymentRingSuggestions = [self PaymentRingSuggestions];
LABEL_7:
    v6 = paymentRingSuggestions;
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"RecurringSendSuggestions"])
  {
    paymentRingSuggestions = [self RecurringSendSuggestions];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"Search"])
  {
    paymentRingSuggestions = [self Search];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMWalletPaymentsCommercePaymentRingSuggestions validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMWalletPaymentsCommerceRecurringSendSuggestions validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMWalletPaymentsCommerceSearch validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

+ (id)configurationForSearch
{
  storeConfigurationForSearch = [self storeConfigurationForSearch];
  syncPolicyForSearch = [self syncPolicyForSearch];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"83F35AD2-ED5B-44A7-920F-432EDA25BFC3"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"WalletPaymentsCommerce.FinancialInsights.Search" eventClass:objc_opt_class() storeConfig:storeConfigurationForSearch syncPolicy:syncPolicyForSearch legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Passbook" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSearch
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"WalletPaymentsCommerce.FinancialInsights.Search" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForRecurringSendSuggestions
{
  storeConfigurationForRecurringSendSuggestions = [self storeConfigurationForRecurringSendSuggestions];
  syncPolicyForRecurringSendSuggestions = [self syncPolicyForRecurringSendSuggestions];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C6A77134-628C-4A51-BB0C-98C1A3865397"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"WalletPaymentsCommerce.FinancialInsights.RecurringSendSuggestions" eventClass:objc_opt_class() storeConfig:storeConfigurationForRecurringSendSuggestions syncPolicy:syncPolicyForRecurringSendSuggestions legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Passbook" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForRecurringSendSuggestions
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"WalletPaymentsCommerce.FinancialInsights.RecurringSendSuggestions" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForPaymentRingSuggestions
{
  storeConfigurationForPaymentRingSuggestions = [self storeConfigurationForPaymentRingSuggestions];
  syncPolicyForPaymentRingSuggestions = [self syncPolicyForPaymentRingSuggestions];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DFFF090C-D0BB-4A47-AA2D-5A4C912E3E49"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"WalletPaymentsCommerce.FinancialInsights.PaymentRingSuggestions" eventClass:objc_opt_class() storeConfig:storeConfigurationForPaymentRingSuggestions syncPolicy:syncPolicyForPaymentRingSuggestions legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Passbook" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPaymentRingSuggestions
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"WalletPaymentsCommerce.FinancialInsights.PaymentRingSuggestions" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Search
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSearch = [self configurationForSearch];
  v3 = +[BMWalletPaymentsCommerceSearch columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"WalletPaymentsCommerce.FinancialInsights.Search" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"WalletPaymentsCommerce.FinancialInsights.Search" schema:v9 configuration:configurationForSearch];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)RecurringSendSuggestions
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForRecurringSendSuggestions = [self configurationForRecurringSendSuggestions];
  v3 = +[BMWalletPaymentsCommerceRecurringSendSuggestions columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"WalletPaymentsCommerce.FinancialInsights.RecurringSendSuggestions" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"WalletPaymentsCommerce.FinancialInsights.RecurringSendSuggestions" schema:v9 configuration:configurationForRecurringSendSuggestions];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)PaymentRingSuggestions
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPaymentRingSuggestions = [self configurationForPaymentRingSuggestions];
  v3 = +[BMWalletPaymentsCommercePaymentRingSuggestions columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"WalletPaymentsCommerce.FinancialInsights.PaymentRingSuggestions" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"WalletPaymentsCommerce.FinancialInsights.PaymentRingSuggestions" schema:v9 configuration:configurationForPaymentRingSuggestions];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end