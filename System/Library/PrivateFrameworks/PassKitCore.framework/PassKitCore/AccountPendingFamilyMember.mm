@interface AccountPendingFamilyMember
+ (BOOL)deleteAccountPendingFamilyMembersForAccountPID:(id)d inDatabase:(id)database;
+ (id)_accountPendingFamilyMembersWithQuery:(id)query;
+ (id)_predicateForAltDSID:(id)d accountPID:(id)iD;
+ (id)_predicateForDisplayedNotification:(BOOL)notification;
+ (id)_predicateForDisplayedNotification:(BOOL)notification accountPID:(id)d;
+ (id)_predicateForInviteEmail:(id)email accountPID:(id)d;
+ (id)_propertySettersForAccountPendingFamilyMember;
+ (id)_propertyValuesAccountPendingFamilyMember:(id)member;
+ (id)accountPendingFamilyMembersForAccountIdentifier:(id)identifier inDatabase:(id)database;
+ (id)accountPendingFamilyMembersWithDisplayedNotification:(BOOL)notification inDatabase:(id)database;
+ (id)anyInDatabase:(id)database inviteEmail:(id)email forAccountPID:(id)d;
+ (id)associationPropertyForEntityClass:(Class)class;
+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins;
+ (void)deleteAccountPendingFamilyMember:(id)member inDatabase:(id)database;
+ (void)deleteAccountPendingFamilyMembersWithAccountIdentifier:(id)identifier altDSIDs:(id)ds inDatabase:(id)database;
+ (void)insertOrUpdateAccountPendingFamilyMembers:(id)members inDatabase:(id)database;
- (AccountPendingFamilyMember)initWithPendingMember:(id)member accountPID:(id)d inDatabase:(id)database;
- (void)updateWithAccountPendingFamilyMember:(id)member;
@end

@implementation AccountPendingFamilyMember

+ (id)associationPropertyForEntityClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return @"account_pid";
  }

  else
  {
    return 0;
  }
}

+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins
{
  propertyCopy = property;
  joinsCopy = joins;
  v7 = propertyCopy;
  v9 = v7;
  if (v7 == @"pears.a" || v7 && (v8 = [(__CFString *)v7 isEqualToString:@"pears.a"], v9, v8))
  {
    [joinsCopy addObject:@"JOIN pears ON pears.pid = account_pending_family_member.account_pid"];
  }
}

+ (void)insertOrUpdateAccountPendingFamilyMembers:(id)members inDatabase:(id)database
{
  membersCopy = members;
  databaseCopy = database;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = membersCopy;
  v8 = [membersCopy countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v25;
    *&v9 = 138412290;
    v20 = v9;
    selfCopy = self;
    do
    {
      v12 = 0;
      v22 = v10;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        accountIdentifier = [v13 accountIdentifier];
        v15 = [Account anyInDatabase:databaseCopy withIdentifier:accountIdentifier];

        if (v15)
        {
          v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v15 persistentID]);
          inviteEmail = [v13 inviteEmail];
          if (inviteEmail)
          {
            v18 = [selfCopy anyInDatabase:databaseCopy inviteEmail:inviteEmail forAccountPID:v16];
            v19 = v18;
            if (v18)
            {
              [v18 updateWithAccountPendingFamilyMember:v13];
            }

            else
            {
            }

            v10 = v22;
          }

          else
          {
            v19 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v20;
              v29 = v13;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "The account pending family member is not defined correctly. %@", buf, 0xCu);
            }
          }
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v10);
  }
}

- (AccountPendingFamilyMember)initWithPendingMember:(id)member accountPID:(id)d inDatabase:(id)database
{
  memberCopy = member;
  dCopy = d;
  databaseCopy = database;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = memberCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding account pending family %@", &v15, 0xCu);
  }

  v12 = [objc_opt_class() _propertyValuesAccountPendingFamilyMember:memberCopy];
  [v12 setObject:dCopy forKey:@"account_pid"];
  v13 = [(SQLiteEntity *)self initWithPropertyValues:v12 inDatabase:databaseCopy];

  return v13;
}

- (void)updateWithAccountPendingFamilyMember:(id)member
{
  memberCopy = member;
  v5 = [objc_opt_class() _propertyValuesAccountPendingFamilyMember:memberCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)anyInDatabase:(id)database inviteEmail:(id)email forAccountPID:(id)d
{
  databaseCopy = database;
  v9 = [self _predicateForInviteEmail:email accountPID:d];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  return v10;
}

+ (id)accountPendingFamilyMembersWithDisplayedNotification:(BOOL)notification inDatabase:(id)database
{
  notificationCopy = notification;
  databaseCopy = database;
  v7 = [self _predicateForDisplayedNotification:notificationCopy];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _accountPendingFamilyMembersWithQuery:v8];

  return v9;
}

+ (id)accountPendingFamilyMembersForAccountIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [Account anyInDatabase:databaseCopy withIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v10 = [self _predicateForAccountPID:v9];
    v11 = [self queryWithDatabase:databaseCopy predicate:v10];

    v12 = [self _accountPendingFamilyMembersWithQuery:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)deleteAccountPendingFamilyMembersForAccountPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  LOBYTE(v7) = [v8 deleteAllEntities];
  return v7;
}

+ (void)deleteAccountPendingFamilyMember:(id)member inDatabase:(id)database
{
  memberCopy = member;
  databaseCopy = database;
  accountIdentifier = [memberCopy accountIdentifier];
  v9 = [Account anyInDatabase:databaseCopy withIdentifier:accountIdentifier];

  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = memberCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleting account pending family member %@", &v15, 0xCu);
    }

    inviteEmail = [memberCopy inviteEmail];
    v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 persistentID]);
    v13 = [self _predicateForInviteEmail:inviteEmail accountPID:v12];
    v14 = [self queryWithDatabase:databaseCopy predicate:v13];

    [v14 deleteAllEntities];
  }
}

+ (void)deleteAccountPendingFamilyMembersWithAccountIdentifier:(id)identifier altDSIDs:(id)ds inDatabase:(id)database
{
  identifierCopy = identifier;
  dsCopy = ds;
  databaseCopy = database;
  v22 = identifierCopy;
  v11 = [Account anyInDatabase:databaseCopy withIdentifier:identifierCopy];
  if (v11)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = dsCopy;
    obj = dsCopy;
    v12 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v11 persistentID]);
          v18 = [self _predicateForAltDSID:v16 accountPID:v17];
          v19 = [self queryWithDatabase:databaseCopy predicate:v18];

          if ([v19 countOfEntities] >= 1)
          {
            v20 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v29 = v16;
              v30 = 2112;
              v31 = v22;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Deleting account pending family member %@ with accountID %@", buf, 0x16u);
            }

            [v19 deleteAllEntities];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v13);
    }

    dsCopy = v21;
  }
}

+ (id)_predicateForInviteEmail:(id)email accountPID:(id)d
{
  emailCopy = email;
  v7 = [self _predicateForAccountPID:d];
  v12[0] = v7;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"invite_email" equalToValue:emailCopy];

  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

+ (id)_predicateForAltDSID:(id)d accountPID:(id)iD
{
  dCopy = d;
  v7 = [self _predicateForAccountPID:iD];
  v12[0] = v7;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"alt_dsid" equalToValue:dCopy];

  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

+ (id)_predicateForDisplayedNotification:(BOOL)notification accountPID:(id)d
{
  notificationCopy = notification;
  v6 = [self _predicateForAccountPID:d];
  v11[0] = v6;
  v7 = [self _predicateForDisplayedNotification:notificationCopy];
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)_predicateForDisplayedNotification:(BOOL)notification
{
  v3 = [NSNumber numberWithBool:notification];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"displayed_notification" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesAccountPendingFamilyMember:(id)member
{
  memberCopy = member;
  v4 = objc_alloc_init(NSMutableDictionary);
  inviteEmail = [memberCopy inviteEmail];
  [v4 setObjectOrNull:inviteEmail forKey:@"invite_email"];

  altDSID = [memberCopy altDSID];
  [v4 setObjectOrNull:altDSID forKey:@"alt_dsid"];

  inviteDate = [memberCopy inviteDate];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"invite_date"];

  displayedNotification = [memberCopy displayedNotification];
  [v4 setBool:displayedNotification forKey:@"displayed_notification"];

  return v4;
}

+ (id)_accountPendingFamilyMembersWithQuery:(id)query
{
  queryCopy = query;
  _propertySettersForAccountPendingFamilyMember = [self _propertySettersForAccountPendingFamilyMember];
  v6 = objc_alloc_init(NSMutableSet);
  allKeys = [_propertySettersForAccountPendingFamilyMember allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F871C;
  v12[3] = &unk_10083C998;
  selfCopy = self;
  v13 = _propertySettersForAccountPendingFamilyMember;
  v8 = v6;
  v14 = v8;
  v9 = _propertySettersForAccountPendingFamilyMember;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:v12];

  if ([v8 count])
  {
    v10 = [v8 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_propertySettersForAccountPendingFamilyMember
{
  v4[0] = @"invite_email";
  v4[1] = @"invite_date";
  v5[0] = &stru_100845688;
  v5[1] = &stru_1008456A8;
  v4[2] = @"alt_dsid";
  v4[3] = @"displayed_notification";
  v5[2] = &stru_1008456C8;
  v5[3] = &stru_1008456E8;
  v4[4] = @"pears.a";
  v5[4] = &stru_100845708;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

@end