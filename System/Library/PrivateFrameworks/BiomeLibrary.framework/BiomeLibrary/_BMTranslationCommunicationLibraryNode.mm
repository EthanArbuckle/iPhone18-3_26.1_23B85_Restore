@interface _BMTranslationCommunicationLibraryNode
+ (id)LanguageCode;
+ (id)configurationForLanguageCode;
+ (id)storeConfigurationForLanguageCode;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMTranslationCommunicationLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"LanguageCode"])
  {
    languageCode = [self LanguageCode];
  }

  else
  {
    languageCode = 0;
  }

  return languageCode;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMTranslationLanguageCode validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForLanguageCode
{
  storeConfigurationForLanguageCode = [self storeConfigurationForLanguageCode];
  syncPolicyForLanguageCode = [self syncPolicyForLanguageCode];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2E3D9D4A-C8E6-4AD2-818A-77F5828B092A"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Translation.Communication.LanguageCode" eventClass:objc_opt_class() storeConfig:storeConfigurationForLanguageCode syncPolicy:syncPolicyForLanguageCode legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForLanguageCode
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:31536000.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Translation.Communication.LanguageCode" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)LanguageCode
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForLanguageCode = [self configurationForLanguageCode];
  v3 = +[BMTranslationLanguageCode columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Translation.Communication.LanguageCode" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Translation.Communication.LanguageCode" schema:v9 configuration:configurationForLanguageCode];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end