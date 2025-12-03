@interface Account
+ (id)_propertySettersForAccount;
- (id)account;
@end

@implementation Account

+ (id)_propertySettersForAccount
{
  v4[0] = @"d";
  v4[1] = @"i";
  v5[0] = &stru_10084F030;
  v5[1] = &stru_10084F050;
  v4[2] = @"block_all_account_access";
  v4[3] = @"j";
  v5[2] = &stru_10084F070;
  v5[3] = &stru_10084F090;
  v4[4] = @"p";
  v4[5] = @"c";
  v5[4] = &stru_10084F0B0;
  v5[5] = &stru_10084F0D0;
  v4[6] = @"e";
  v4[7] = @"a";
  v5[6] = &stru_10084F0F0;
  v5[7] = &stru_10084F110;
  v4[8] = @"b";
  v4[9] = @"f";
  v5[8] = &stru_10084F130;
  v5[9] = &stru_10084F150;
  v4[10] = @"g";
  v4[11] = @"h";
  v5[10] = &stru_10084F170;
  v5[11] = &stru_10084F190;
  v4[12] = @"cloud_store_zone_names";
  v4[13] = @"k";
  v5[12] = &stru_10084F1B0;
  v5[13] = &stru_10084F1D0;
  v4[14] = @"l";
  v4[15] = @"m";
  v5[14] = &stru_10084F1F0;
  v5[15] = &stru_10084F210;
  v4[16] = @"n";
  v4[17] = @"o";
  v5[16] = &stru_10084F230;
  v5[17] = &stru_10084F250;
  v4[18] = @"transaction_source.identifier";
  v5[18] = &stru_10084F270;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:19];

  return v2;
}

- (id)account
{
  v3 = objc_alloc_init(PKAccount);
  v4 = +[Account _propertySettersForAccount];
  allKeys = [v4 allKeys];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000789C;
  v33[3] = &unk_10083C240;
  v6 = v4;
  v34 = v6;
  v7 = v3;
  v35 = v7;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v33];

  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  v10 = [AccountAdditionalPushTopics accountAdditionalPushTopicsForAccountPID:persistentID inDatabase:database];
  [v7 setAdditionalPushTopics:v10];
  v11 = [AccountFetchPeriods accountFetchPeriodsForAccountPID:persistentID inDatabase:database];
  [v7 setFetchPeriods:v11];
  type = [v7 type];
  if (type == 4)
  {
    v26 = [SavingsAccountDetails accountDetailsForAccountPID:persistentID inDatabase:database];
    [v7 setDetails:v26];

    persistentID2 = [(SQLiteEntity *)self persistentID];
    database2 = [(SQLiteEntity *)self database];
    v25 = [SavingsAccountFeatureDescriptor savingsAccountFeatureDescriptorsForAccountPID:persistentID2 inDatabase:database2];
    goto LABEL_8;
  }

  if (type == 3)
  {
    v22 = [AppleBalanceAccountDetails accountDetailsForAccountPID:persistentID inDatabase:database];
    [v7 setDetails:v22];

    persistentID3 = [(SQLiteEntity *)self persistentID];
    database2 = [(SQLiteEntity *)self database];
    v25 = [AppleBalanceAccountFeatureDescriptor appleBalanceAccountFeatureDescriptorsForAccountPID:persistentID3 inDatabase:database2];
LABEL_8:
    v16 = v25;

    [v7 setSupportedFeatures:v16];
    goto LABEL_9;
  }

  if (type != 1)
  {
    goto LABEL_10;
  }

  v13 = [CreditAccountDetails creditAccountDetailsForAccountPID:persistentID inDatabase:database];
  [v7 setDetails:v13];

  persistentID4 = [(SQLiteEntity *)self persistentID];
  database3 = [(SQLiteEntity *)self database];
  v16 = [CreditAccountFeatureDescriptor creditAccountFeatureDescriptorsForAccountPID:persistentID4 inDatabase:database3];

  [v7 setSupportedFeatures:v16];
  v17 = [(SQLiteEntity *)self valueForProperty:@"e"];
  integerValue = [v17 integerValue];

  if (integerValue == 1)
  {
    persistentID5 = [(SQLiteEntity *)self persistentID];
    database4 = [(SQLiteEntity *)self database];
    v21 = [AccountUser countOfActivePrimaryUsersForAccountPID:persistentID5 inDatabase:database4];

    [v7 setCoOwner:v21 > 1];
  }

LABEL_9:

LABEL_10:
  accountIdentifier = [v7 accountIdentifier];

  if (accountIdentifier)
  {
    v29 = v7;
  }

  else
  {
    v30 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Account does not have an account identifier", v32, 2u);
    }

    v29 = 0;
  }

  return v29;
}

@end