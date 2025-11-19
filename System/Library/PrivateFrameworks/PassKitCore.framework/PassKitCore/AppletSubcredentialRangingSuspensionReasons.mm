@interface AppletSubcredentialRangingSuspensionReasons
+ (BOOL)deleteRangingSuspensionReasonsForCredential:(id)a3 inDatabase:(id)a4;
+ (id)_predicateForAppletSubcredentialPID:(int64_t)a3;
+ (id)_predicateForPaymentApplicationPID:(int64_t)a3;
+ (id)insertOrUpdateSubcredentialRangingSuspensionReasonForCredential:(id)a3 withReasons:(unint64_t)a4 inDatabase:(id)a5;
+ (unint64_t)suspensionReasonsForCredential:(id)a3 inDatabase:(id)a4;
+ (unint64_t)suspensionReasonsForCredentialIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5 inDatabase:(id)a6;
+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4;
- (AppletSubcredentialRangingSuspensionReasons)initWithSubcredential:(id)a3 withRangingSuspensionReasons:(unint64_t)a4 inDatabase:(id)a5;
@end

@implementation AppletSubcredentialRangingSuspensionReasons

+ (id)insertOrUpdateSubcredentialRangingSuspensionReasonForCredential:(id)a3 withReasons:(unint64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 _predicateForAppletSubcredentialPID:{objc_msgSend(v8, "persistentID")}];
  v11 = [a1 anyInDatabase:v9 predicate:v10];

  if (v11)
  {
    v12 = [NSNumber numberWithUnsignedInteger:a4];
    [v11 setValue:v12 forProperty:@"ranging_suspension_reasons"];
  }

  else
  {
    v11 = [[a1 alloc] initWithSubcredential:v8 withRangingSuspensionReasons:a4 inDatabase:v9];
  }

  return v11;
}

- (AppletSubcredentialRangingSuspensionReasons)initWithSubcredential:(id)a3 withRangingSuspensionReasons:(unint64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100005A50;
  v25 = sub_10000B134;
  v26 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A0084;
  v15[3] = &unk_100841B00;
  v10 = v8;
  v19 = &v21;
  v20 = a4;
  v16 = v10;
  v11 = self;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  sub_1005D4424(v12, v15);
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);
  return v13;
}

+ (unint64_t)suspensionReasonsForCredential:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [a1 _predicateForAppletSubcredentialPID:{objc_msgSend(v6, "persistentID")}];
  v22[0] = v8;
  v9 = [a1 _predicateForPaymentApplicationPID:{objc_msgSend(v6, "paymentApplicationPID")}];
  v22[1] = v9;
  v10 = [NSArray arrayWithObjects:v22 count:2];
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v12 = [a1 queryWithDatabase:v7 predicate:v11];
  v21 = @"ranging_suspension_reasons";
  v13 = [NSArray arrayWithObjects:&v21 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A03A4;
  v16[3] = &unk_100841B28;
  v16[4] = &v17;
  [v12 enumeratePersistentIDsAndProperties:v13 usingBlock:v16];

  v14 = v18[3];
  _Block_object_dispose(&v17, 8);

  return v14;
}

+ (unint64_t)suspensionReasonsForCredentialIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5 inDatabase:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v14 = [a1 _predicateForAppletSubcredentialIdentifier:v10];
  v29[0] = v14;
  v15 = [a1 _predicateForPaymentApplicationIdentifier:v11];
  v29[1] = v15;
  v16 = [a1 _predicateForPaymentApplicationSecureElementIdentifier:v12];
  v29[2] = v16;
  v17 = [NSArray arrayWithObjects:v29 count:3];
  v18 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v17];

  v19 = [a1 queryWithDatabase:v13 predicate:v18];
  v28 = @"ranging_suspension_reasons";
  v20 = [NSArray arrayWithObjects:&v28 count:1];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000A066C;
  v23[3] = &unk_100841B28;
  v23[4] = &v24;
  [v19 enumeratePersistentIDsAndProperties:v20 usingBlock:v23];

  v21 = v25[3];
  _Block_object_dispose(&v24, 8);

  return v21;
}

+ (BOOL)deleteRangingSuspensionReasonsForCredential:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _predicateForAppletSubcredentialPID:{objc_msgSend(v7, "persistentID")}];
  v15[0] = v8;
  v9 = [v7 paymentApplicationPID];

  v10 = [a1 _predicateForPaymentApplicationPID:v9];
  v15[1] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:2];
  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];

  v13 = [a1 queryWithDatabase:v6 predicate:v12];

  LOBYTE(a1) = [v13 deleteAllEntities];
  return a1;
}

+ (id)_predicateForAppletSubcredentialPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"applet_subcredential_pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPaymentApplicationPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application_pid" equalToValue:v3];

  return v4;
}

+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4
{
  v6 = a3;
  v5 = a4;
  if ([v6 isEqualToString:@"whitney.b"])
  {
    [v5 addObject:@"JOIN whitney ON whitney.pid = applet_subcredential_pid"];
  }

  if (([v6 isEqualToString:@"payment_application.aid"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"payment_application.seid"))
  {
    [v5 addObject:@"JOIN payment_application ON payment_application.pid = payment_application_pid"];
  }
}

@end