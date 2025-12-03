@interface _BMWalletLibraryNode
+ (id)SettledTransaction;
+ (id)Transaction;
+ (id)configurationForSettledTransaction;
+ (id)configurationForTransaction;
+ (id)storeConfigurationForSettledTransaction;
+ (id)storeConfigurationForTransaction;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMWalletLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"SettledTransaction"])
  {
    settledTransaction = [self SettledTransaction];
LABEL_5:
    v6 = settledTransaction;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"Transaction"])
  {
    settledTransaction = [self Transaction];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMWalletSettledTransaction validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMWalletTransaction validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForTransaction
{
  storeConfigurationForTransaction = [self storeConfigurationForTransaction];
  syncPolicyForTransaction = [self syncPolicyForTransaction];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B5D7D18C-D5BF-4A5B-84E2-243225E9E434"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Wallet.Transaction" eventClass:objc_opt_class() storeConfig:storeConfigurationForTransaction syncPolicy:syncPolicyForTransaction legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Passbook" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTransaction
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Wallet.Transaction" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForSettledTransaction
{
  storeConfigurationForSettledTransaction = [self storeConfigurationForSettledTransaction];
  syncPolicyForSettledTransaction = [self syncPolicyForSettledTransaction];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8B6D95DC-4558-4C80-B88B-870671A5C1E0"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Wallet.SettledTransaction" eventClass:objc_opt_class() storeConfig:storeConfigurationForSettledTransaction syncPolicy:syncPolicyForSettledTransaction legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Passbook" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSettledTransaction
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Wallet.SettledTransaction" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Transaction
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTransaction = [self configurationForTransaction];
  v3 = +[BMWalletTransaction columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Wallet.Transaction" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Wallet.Transaction" schema:v9 configuration:configurationForTransaction];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)SettledTransaction
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSettledTransaction = [self configurationForSettledTransaction];
  v3 = +[BMWalletSettledTransaction columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Wallet.SettledTransaction" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Wallet.SettledTransaction" schema:v9 configuration:configurationForSettledTransaction];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end