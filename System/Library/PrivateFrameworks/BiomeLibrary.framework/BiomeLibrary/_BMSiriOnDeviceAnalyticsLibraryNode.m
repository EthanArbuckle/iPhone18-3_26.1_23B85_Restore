@interface _BMSiriOnDeviceAnalyticsLibraryNode
+ (id)AttentionAndInvocationSampling;
+ (id)SpeakerIdSampling;
+ (id)configurationForAttentionAndInvocationSampling;
+ (id)configurationForSpeakerIdSampling;
+ (id)storeConfigurationForAttentionAndInvocationSampling;
+ (id)storeConfigurationForSpeakerIdSampling;
+ (id)streamWithName:(id)a3;
+ (id)syncPolicyForAttentionAndInvocationSampling;
+ (id)validKeyPaths;
@end

@implementation _BMSiriOnDeviceAnalyticsLibraryNode

+ (id)AttentionAndInvocationSampling
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForAttentionAndInvocationSampling];
  v3 = +[BMSiriAttentionAndInvocationSampling columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.OnDeviceAnalytics.AttentionAndInvocationSampling" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.OnDeviceAnalytics.AttentionAndInvocationSampling" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAttentionAndInvocationSampling
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 storeConfigurationForAttentionAndInvocationSampling];
  v4 = [a1 syncPolicyForAttentionAndInvocationSampling];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A6F68C23-942F-4B5B-8F96-DA14463BCC48"];
  BYTE2(v17) = 0;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.OnDeviceAnalytics.AttentionAndInvocationSampling" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForAttentionAndInvocationSampling
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:17107200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.OnDeviceAnalytics.AttentionAndInvocationSampling" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)syncPolicyForAttentionAndInvocationSampling
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v17[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v4 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:2];
  v16 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v14[0] = v6;
  v15[0] = v3;
  v7 = BMDevicePlatformAsKeyString();
  v14[1] = v7;
  v15[1] = v3;
  v8 = BMDevicePlatformAsKeyString();
  v14[2] = v8;
  v15[2] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A6F68C23-942F-4B5B-8F96-DA14463BCC48"];
  v11 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v9 syncUUID:v10 legacySyncID:0 eventClass:objc_opt_class()];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)SpeakerIdSampling
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForSpeakerIdSampling];
  v3 = +[BMSiriSpeakerIdSampling columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.OnDeviceAnalytics.SpeakerIdSampling" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.OnDeviceAnalytics.SpeakerIdSampling" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForSpeakerIdSampling
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 storeConfigurationForSpeakerIdSampling];
  v4 = [a1 syncPolicyForSpeakerIdSampling];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A055E9EC-BE22-44EF-AE89-71DB3294A7EC"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.OnDeviceAnalytics.SpeakerIdSampling" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForSpeakerIdSampling
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:17107200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.OnDeviceAnalytics.SpeakerIdSampling" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"AttentionAndInvocationSampling"])
  {
    v5 = [a1 AttentionAndInvocationSampling];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"SpeakerIdSampling"])
  {
    v5 = [a1 SpeakerIdSampling];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSiriAttentionAndInvocationSampling validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMSiriSpeakerIdSampling validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

@end