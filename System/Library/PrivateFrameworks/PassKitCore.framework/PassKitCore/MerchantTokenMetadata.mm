@interface MerchantTokenMetadata
+ (id)_propertySettersForObjectWithoutMerchantTokenId;
+ (id)merchantTokenMetadataByIdInDatabase:(id)database;
+ (id)metadataForMerchantTokenWithId:(id)id inDatabase:(id)database;
+ (id)propertyValuesWithObject:(id)object;
+ (void)deleteAllMerchantTokenMetadataInDatabase:(id)database;
+ (void)deleteMetadataForMerchantTokenWithId:(id)id inDatabase:(id)database;
+ (void)insertOrUpdateMerchantTokenMetadata:(id)metadata inDatabase:(id)database;
@end

@implementation MerchantTokenMetadata

+ (id)merchantTokenMetadataByIdInDatabase:(id)database
{
  databaseCopy = database;
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[SQLiteBooleanPredicate truePredicate];
  v7 = [self queryWithDatabase:databaseCopy predicate:v6];

  _propertySettersForObjectWithoutMerchantTokenId = [self _propertySettersForObjectWithoutMerchantTokenId];
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_propertySettersForObjectWithoutMerchantTokenId count] + 1);
  [v9 addObject:@"merchant_token_id"];
  allKeys = [_propertySettersForObjectWithoutMerchantTokenId allKeys];
  [v9 addObjectsFromArray:allKeys];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10017C194;
  v16[3] = &unk_10083C998;
  selfCopy = self;
  v17 = _propertySettersForObjectWithoutMerchantTokenId;
  v11 = v5;
  v18 = v11;
  v12 = _propertySettersForObjectWithoutMerchantTokenId;
  [v7 enumeratePersistentIDsAndProperties:v9 usingBlock:v16];
  v13 = v18;
  v14 = v11;

  return v11;
}

+ (id)metadataForMerchantTokenWithId:(id)id inDatabase:(id)database
{
  idCopy = id;
  databaseCopy = database;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100005B50;
  v21 = sub_10000B1B4;
  v22 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10017C3A0;
  v12[3] = &unk_100840570;
  selfCopy = self;
  v8 = idCopy;
  v13 = v8;
  v9 = databaseCopy;
  v14 = v9;
  v15 = &v17;
  sub_1005D4424(v9, v12);
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

+ (void)insertOrUpdateMerchantTokenMetadata:(id)metadata inDatabase:(id)database
{
  metadataCopy = metadata;
  databaseCopy = database;
  [self propertyValuesWithObject:metadataCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10017C62C;
  v11[3] = &unk_100843068;
  v12 = metadataCopy;
  v14 = v13 = databaseCopy;
  selfCopy = self;
  v8 = v14;
  v9 = databaseCopy;
  v10 = metadataCopy;
  sub_1005D4424(v9, v11);
}

+ (void)deleteMetadataForMerchantTokenWithId:(id)id inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForMerchantTokenWithId:id];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteAllMerchantTokenMetadataInDatabase:(id)database
{
  databaseCopy = database;
  v6 = +[SQLiteBooleanPredicate truePredicate];
  v5 = [self queryWithDatabase:databaseCopy predicate:v6];

  [v5 deleteAllEntities];
}

+ (id)propertyValuesWithObject:(id)object
{
  objectCopy = object;
  v4 = objc_alloc_init(NSMutableDictionary);
  merchantTokenId = [objectCopy merchantTokenId];
  [v4 setObjectOrNull:merchantTokenId forKey:@"merchant_token_id"];

  currentMerchantTokenPublicKeyHash = [objectCopy currentMerchantTokenPublicKeyHash];
  [v4 setObjectOrNull:currentMerchantTokenPublicKeyHash forKey:@"current_merchant_token_public_key_hash"];

  currentMerchantTokenPublicKeyFirstSeenDate = [objectCopy currentMerchantTokenPublicKeyFirstSeenDate];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"current_merchant_token_public_key_first_seen_date"];

  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objectCopy currentMerchantTokenPrivateKeyLikelyLost]);
  [v4 setObjectOrNull:v9 forKey:@"current_merchant_token_private_key_likely_lost"];

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objectCopy needsMerchantTokenPublicKey]);
  [v4 setObjectOrNull:v10 forKey:@"needs_merchant_token_public_key"];

  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objectCopy merchantTokenPublicKeyRegistrationAttemptCount]);
  [v4 setObjectOrNull:v11 forKey:@"merchant_token_public_key_registration_attempt_count"];

  lastMerchantTokenPublicKeyRegistrationAttemptDate = [objectCopy lastMerchantTokenPublicKeyRegistrationAttemptDate];
  v13 = _SQLValueForDate();
  [v4 setObjectOrNull:v13 forKey:@"last_merchant_token_public_key_registration_attempt_date"];

  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objectCopy minimumNextMerchantTokenPublicKeyRegistrationAttemptDelay]);
  [v4 setObjectOrNull:v14 forKey:@"minimum_next_merchant_token_public_key_registration_attempt_delay"];

  usageMetadata = [objectCopy usageMetadata];
  v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [usageMetadata updateSequenceNumber]);
  [v4 setObjectOrNull:v16 forKey:@"usage_metadata_update_sequence_number"];

  usageMetadata2 = [objectCopy usageMetadata];
  updateFirstSeenDate = [usageMetadata2 updateFirstSeenDate];
  v19 = _SQLValueForDate();
  [v4 setObjectOrNull:v19 forKey:@"usage_metadata_update_first_seen_date"];

  usageMetadata3 = [objectCopy usageMetadata];
  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [usageMetadata3 fetchSequenceNumber]);
  [v4 setObjectOrNull:v21 forKey:@"usage_metadata_fetch_sequence_number"];

  usageMetadata4 = [objectCopy usageMetadata];
  lastFetchDate = [usageMetadata4 lastFetchDate];
  v24 = _SQLValueForDate();
  [v4 setObjectOrNull:v24 forKey:@"usage_metadata_last_fetch_date"];

  usageMetadata5 = [objectCopy usageMetadata];
  v26 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [usageMetadata5 fetchAttemptCount]);
  [v4 setObjectOrNull:v26 forKey:@"usage_metadata_fetch_attempt_count"];

  usageMetadata6 = [objectCopy usageMetadata];
  v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [usageMetadata6 fetchResponseCount]);
  [v4 setObjectOrNull:v28 forKey:@"usage_metadata_fetch_response_count"];

  usageMetadata7 = [objectCopy usageMetadata];
  lastFetchAttemptFailureReason = [usageMetadata7 lastFetchAttemptFailureReason];
  [v4 setObjectOrNull:lastFetchAttemptFailureReason forKey:@"usage_metadata_last_fetch_attempt_failure_reason"];

  usageMetadata8 = [objectCopy usageMetadata];

  lastFetchAttemptDate = [usageMetadata8 lastFetchAttemptDate];
  v33 = _SQLValueForDate();
  [v4 setObjectOrNull:v33 forKey:@"usage_metadata_last_fetch_attempt_date"];

  return v4;
}

+ (id)_propertySettersForObjectWithoutMerchantTokenId
{
  v4[0] = @"current_merchant_token_public_key_hash";
  v4[1] = @"current_merchant_token_public_key_first_seen_date";
  v5[0] = &stru_1008496F0;
  v5[1] = &stru_100849710;
  v4[2] = @"current_merchant_token_private_key_likely_lost";
  v4[3] = @"needs_merchant_token_public_key";
  v5[2] = &stru_100849730;
  v5[3] = &stru_100849750;
  v4[4] = @"merchant_token_public_key_registration_attempt_count";
  v4[5] = @"last_merchant_token_public_key_registration_attempt_date";
  v5[4] = &stru_100849770;
  v5[5] = &stru_100849790;
  v4[6] = @"minimum_next_merchant_token_public_key_registration_attempt_delay";
  v4[7] = @"usage_metadata_update_sequence_number";
  v5[6] = &stru_1008497B0;
  v5[7] = &stru_1008497D0;
  v4[8] = @"usage_metadata_update_first_seen_date";
  v4[9] = @"usage_metadata_fetch_sequence_number";
  v5[8] = &stru_1008497F0;
  v5[9] = &stru_100849810;
  v4[10] = @"usage_metadata_last_fetch_date";
  v4[11] = @"usage_metadata_fetch_attempt_count";
  v5[10] = &stru_100849830;
  v5[11] = &stru_100849850;
  v4[12] = @"usage_metadata_fetch_response_count";
  v4[13] = @"usage_metadata_last_fetch_attempt_failure_reason";
  v5[12] = &stru_100849870;
  v5[13] = &stru_100849890;
  v4[14] = @"usage_metadata_last_fetch_attempt_date";
  v5[14] = &stru_1008498B0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:15];

  return v2;
}

@end