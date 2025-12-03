@interface AppletSubcredentialRangingSuspensionReasons
+ (BOOL)deleteRangingSuspensionReasonsForCredential:(id)credential inDatabase:(id)database;
+ (id)_predicateForAppletSubcredentialPID:(int64_t)d;
+ (id)_predicateForPaymentApplicationPID:(int64_t)d;
+ (id)insertOrUpdateSubcredentialRangingSuspensionReasonForCredential:(id)credential withReasons:(unint64_t)reasons inDatabase:(id)database;
+ (unint64_t)suspensionReasonsForCredential:(id)credential inDatabase:(id)database;
+ (unint64_t)suspensionReasonsForCredentialIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier secureElementIdentifier:(id)elementIdentifier inDatabase:(id)database;
+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins;
- (AppletSubcredentialRangingSuspensionReasons)initWithSubcredential:(id)subcredential withRangingSuspensionReasons:(unint64_t)reasons inDatabase:(id)database;
@end

@implementation AppletSubcredentialRangingSuspensionReasons

+ (id)insertOrUpdateSubcredentialRangingSuspensionReasonForCredential:(id)credential withReasons:(unint64_t)reasons inDatabase:(id)database
{
  credentialCopy = credential;
  databaseCopy = database;
  v10 = [self _predicateForAppletSubcredentialPID:{objc_msgSend(credentialCopy, "persistentID")}];
  v11 = [self anyInDatabase:databaseCopy predicate:v10];

  if (v11)
  {
    v12 = [NSNumber numberWithUnsignedInteger:reasons];
    [v11 setValue:v12 forProperty:@"ranging_suspension_reasons"];
  }

  else
  {
    v11 = [[self alloc] initWithSubcredential:credentialCopy withRangingSuspensionReasons:reasons inDatabase:databaseCopy];
  }

  return v11;
}

- (AppletSubcredentialRangingSuspensionReasons)initWithSubcredential:(id)subcredential withRangingSuspensionReasons:(unint64_t)reasons inDatabase:(id)database
{
  subcredentialCopy = subcredential;
  databaseCopy = database;
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
  v10 = subcredentialCopy;
  v19 = &v21;
  reasonsCopy = reasons;
  v16 = v10;
  selfCopy = self;
  v17 = selfCopy;
  v12 = databaseCopy;
  v18 = v12;
  sub_1005D4424(v12, v15);
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);
  return v13;
}

+ (unint64_t)suspensionReasonsForCredential:(id)credential inDatabase:(id)database
{
  credentialCopy = credential;
  databaseCopy = database;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [self _predicateForAppletSubcredentialPID:{objc_msgSend(credentialCopy, "persistentID")}];
  v22[0] = v8;
  v9 = [self _predicateForPaymentApplicationPID:{objc_msgSend(credentialCopy, "paymentApplicationPID")}];
  v22[1] = v9;
  v10 = [NSArray arrayWithObjects:v22 count:2];
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v12 = [self queryWithDatabase:databaseCopy predicate:v11];
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

+ (unint64_t)suspensionReasonsForCredentialIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier secureElementIdentifier:(id)elementIdentifier inDatabase:(id)database
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  elementIdentifierCopy = elementIdentifier;
  databaseCopy = database;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v14 = [self _predicateForAppletSubcredentialIdentifier:identifierCopy];
  v29[0] = v14;
  v15 = [self _predicateForPaymentApplicationIdentifier:applicationIdentifierCopy];
  v29[1] = v15;
  v16 = [self _predicateForPaymentApplicationSecureElementIdentifier:elementIdentifierCopy];
  v29[2] = v16;
  v17 = [NSArray arrayWithObjects:v29 count:3];
  v18 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v17];

  v19 = [self queryWithDatabase:databaseCopy predicate:v18];
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

+ (BOOL)deleteRangingSuspensionReasonsForCredential:(id)credential inDatabase:(id)database
{
  databaseCopy = database;
  credentialCopy = credential;
  v8 = [self _predicateForAppletSubcredentialPID:{objc_msgSend(credentialCopy, "persistentID")}];
  v15[0] = v8;
  paymentApplicationPID = [credentialCopy paymentApplicationPID];

  v10 = [self _predicateForPaymentApplicationPID:paymentApplicationPID];
  v15[1] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:2];
  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];

  v13 = [self queryWithDatabase:databaseCopy predicate:v12];

  LOBYTE(self) = [v13 deleteAllEntities];
  return self;
}

+ (id)_predicateForAppletSubcredentialPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"applet_subcredential_pid" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPaymentApplicationPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"payment_application_pid" equalToValue:v3];

  return v4;
}

+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins
{
  propertyCopy = property;
  joinsCopy = joins;
  if ([propertyCopy isEqualToString:@"whitney.b"])
  {
    [joinsCopy addObject:@"JOIN whitney ON whitney.pid = applet_subcredential_pid"];
  }

  if (([propertyCopy isEqualToString:@"payment_application.aid"] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"payment_application.seid"))
  {
    [joinsCopy addObject:@"JOIN payment_application ON payment_application.pid = payment_application_pid"];
  }
}

@end