@interface _BMWalletPaymentsCommerceFoundInLibraryNode
+ (id)ClassicOrder;
+ (id)ExtractedOrder;
+ (id)OrderEmail;
+ (id)TrackedOrder;
+ (id)Transaction;
+ (id)configurationForClassicOrder;
+ (id)configurationForExtractedOrder;
+ (id)configurationForOrderEmail;
+ (id)configurationForTrackedOrder;
+ (id)configurationForTransaction;
+ (id)storeConfigurationForClassicOrder;
+ (id)storeConfigurationForExtractedOrder;
+ (id)storeConfigurationForOrderEmail;
+ (id)storeConfigurationForTrackedOrder;
+ (id)storeConfigurationForTransaction;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMWalletPaymentsCommerceFoundInLibraryNode

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"ClassicOrder"])
  {
    v5 = [a1 ClassicOrder];
LABEL_11:
    v6 = v5;
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"ExtractedOrder"])
  {
    v5 = [a1 ExtractedOrder];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"OrderEmail"])
  {
    v5 = [a1 OrderEmail];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"TrackedOrder"])
  {
    v5 = [a1 TrackedOrder];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"Transaction"])
  {
    v5 = [a1 Transaction];
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMWalletPaymentsCommerceClassicOrder validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMWalletPaymentsCommerceExtractedOrder validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMWalletPaymentsCommerceOrderEmail validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMWalletPaymentsCommerceTrackedOrder validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMWalletPaymentsCommerceTransaction validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = [v2 copy];

  return v8;
}

+ (id)configurationForTransaction
{
  v3 = [a1 storeConfigurationForTransaction];
  v4 = [a1 syncPolicyForTransaction];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A7A70774-0D38-47A8-A16A-6B6E34D439B5"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"WalletPaymentsCommerce.FoundIn.Transaction" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Passbook" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTransaction
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:518400.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"WalletPaymentsCommerce.FoundIn.Transaction" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)configurationForTrackedOrder
{
  v3 = [a1 storeConfigurationForTrackedOrder];
  v4 = [a1 syncPolicyForTrackedOrder];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"AC249E13-C8DD-489B-9DB8-BE11B025E6B4"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"WalletPaymentsCommerce.FoundIn.TrackedOrder" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Passbook" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTrackedOrder
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:15724800.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"WalletPaymentsCommerce.FoundIn.TrackedOrder" domain:0 segmentSize:0x80000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)configurationForOrderEmail
{
  v3 = [a1 storeConfigurationForOrderEmail];
  v4 = [a1 syncPolicyForOrderEmail];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"83647A09-1519-4B2E-99F4-B765AA483C54"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"WalletPaymentsCommerce.FoundIn.OrderEmail" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Passbook" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForOrderEmail
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:15724800.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"WalletPaymentsCommerce.FoundIn.OrderEmail" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)configurationForExtractedOrder
{
  v3 = [a1 storeConfigurationForExtractedOrder];
  v4 = [a1 syncPolicyForExtractedOrder];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4FE9805C-227A-4479-961F-A8F2E51256ED"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"WalletPaymentsCommerce.FoundIn.ExtractedOrder" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Passbook" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForExtractedOrder
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:*MEMORY[0x1E698F100]];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"WalletPaymentsCommerce.FoundIn.ExtractedOrder" domain:0 segmentSize:0x80000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)configurationForClassicOrder
{
  v3 = [a1 storeConfigurationForClassicOrder];
  v4 = [a1 syncPolicyForClassicOrder];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4E93F4AC-0B75-4F0A-B090-27DC43B310FB"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"WalletPaymentsCommerce.FoundIn.ClassicOrder" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Passbook" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForClassicOrder
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:15724800.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"WalletPaymentsCommerce.FoundIn.ClassicOrder" domain:0 segmentSize:0x80000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)Transaction
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForTransaction];
  v3 = +[BMWalletPaymentsCommerceTransaction columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"WalletPaymentsCommerce.FoundIn.Transaction" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"WalletPaymentsCommerce.FoundIn.Transaction" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)TrackedOrder
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForTrackedOrder];
  v3 = +[BMWalletPaymentsCommerceTrackedOrder columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"WalletPaymentsCommerce.FoundIn.TrackedOrder" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"WalletPaymentsCommerce.FoundIn.TrackedOrder" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)OrderEmail
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForOrderEmail];
  v3 = +[BMWalletPaymentsCommerceOrderEmail columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"WalletPaymentsCommerce.FoundIn.OrderEmail" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"WalletPaymentsCommerce.FoundIn.OrderEmail" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)ExtractedOrder
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForExtractedOrder];
  v3 = +[BMWalletPaymentsCommerceExtractedOrder columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"WalletPaymentsCommerce.FoundIn.ExtractedOrder" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"WalletPaymentsCommerce.FoundIn.ExtractedOrder" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)ClassicOrder
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForClassicOrder];
  v3 = +[BMWalletPaymentsCommerceClassicOrder columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"WalletPaymentsCommerce.FoundIn.ClassicOrder" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"WalletPaymentsCommerce.FoundIn.ClassicOrder" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end