@interface AccountPendingFamilyMember
+ (BOOL)deleteAccountPendingFamilyMembersForAccountPID:(id)a3 inDatabase:(id)a4;
+ (id)_accountPendingFamilyMembersWithQuery:(id)a3;
+ (id)_predicateForAltDSID:(id)a3 accountPID:(id)a4;
+ (id)_predicateForDisplayedNotification:(BOOL)a3;
+ (id)_predicateForDisplayedNotification:(BOOL)a3 accountPID:(id)a4;
+ (id)_predicateForInviteEmail:(id)a3 accountPID:(id)a4;
+ (id)_propertySettersForAccountPendingFamilyMember;
+ (id)_propertyValuesAccountPendingFamilyMember:(id)a3;
+ (id)accountPendingFamilyMembersForAccountIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)accountPendingFamilyMembersWithDisplayedNotification:(BOOL)a3 inDatabase:(id)a4;
+ (id)anyInDatabase:(id)a3 inviteEmail:(id)a4 forAccountPID:(id)a5;
+ (id)associationPropertyForEntityClass:(Class)a3;
+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4;
+ (void)deleteAccountPendingFamilyMember:(id)a3 inDatabase:(id)a4;
+ (void)deleteAccountPendingFamilyMembersWithAccountIdentifier:(id)a3 altDSIDs:(id)a4 inDatabase:(id)a5;
+ (void)insertOrUpdateAccountPendingFamilyMembers:(id)a3 inDatabase:(id)a4;
- (AccountPendingFamilyMember)initWithPendingMember:(id)a3 accountPID:(id)a4 inDatabase:(id)a5;
- (void)updateWithAccountPendingFamilyMember:(id)a3;
@end

@implementation AccountPendingFamilyMember

+ (id)associationPropertyForEntityClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return @"account_pid";
  }

  else
  {
    return 0;
  }
}

+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v9 = v7;
  if (v7 == @"pears.a" || v7 && (v8 = [(__CFString *)v7 isEqualToString:@"pears.a"], v9, v8))
  {
    [v6 addObject:@"JOIN pears ON pears.pid = account_pending_family_member.account_pid"];
  }
}

+ (void)insertOrUpdateAccountPendingFamilyMembers:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v25;
    *&v9 = 138412290;
    v20 = v9;
    v21 = a1;
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
        v14 = [v13 accountIdentifier];
        v15 = [Account anyInDatabase:v7 withIdentifier:v14];

        if (v15)
        {
          v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v15 persistentID]);
          v17 = [v13 inviteEmail];
          if (v17)
          {
            v18 = [v21 anyInDatabase:v7 inviteEmail:v17 forAccountPID:v16];
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

- (AccountPendingFamilyMember)initWithPendingMember:(id)a3 accountPID:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding account pending family %@", &v15, 0xCu);
  }

  v12 = [objc_opt_class() _propertyValuesAccountPendingFamilyMember:v8];
  [v12 setObject:v9 forKey:@"account_pid"];
  v13 = [(SQLiteEntity *)self initWithPropertyValues:v12 inDatabase:v10];

  return v13;
}

- (void)updateWithAccountPendingFamilyMember:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _propertyValuesAccountPendingFamilyMember:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)anyInDatabase:(id)a3 inviteEmail:(id)a4 forAccountPID:(id)a5
{
  v8 = a3;
  v9 = [a1 _predicateForInviteEmail:a4 accountPID:a5];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  return v10;
}

+ (id)accountPendingFamilyMembersWithDisplayedNotification:(BOOL)a3 inDatabase:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [a1 _predicateForDisplayedNotification:v4];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _accountPendingFamilyMembersWithQuery:v8];

  return v9;
}

+ (id)accountPendingFamilyMembersForAccountIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [Account anyInDatabase:v6 withIdentifier:a3];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v10 = [a1 _predicateForAccountPID:v9];
    v11 = [a1 queryWithDatabase:v6 predicate:v10];

    v12 = [a1 _accountPendingFamilyMembersWithQuery:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)deleteAccountPendingFamilyMembersForAccountPID:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  LOBYTE(v7) = [v8 deleteAllEntities];
  return v7;
}

+ (void)deleteAccountPendingFamilyMember:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accountIdentifier];
  v9 = [Account anyInDatabase:v7 withIdentifier:v8];

  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleting account pending family member %@", &v15, 0xCu);
    }

    v11 = [v6 inviteEmail];
    v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 persistentID]);
    v13 = [a1 _predicateForInviteEmail:v11 accountPID:v12];
    v14 = [a1 queryWithDatabase:v7 predicate:v13];

    [v14 deleteAllEntities];
  }
}

+ (void)deleteAccountPendingFamilyMembersWithAccountIdentifier:(id)a3 altDSIDs:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = v8;
  v11 = [Account anyInDatabase:v10 withIdentifier:v8];
  if (v11)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v9;
    obj = v9;
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
          v18 = [a1 _predicateForAltDSID:v16 accountPID:v17];
          v19 = [a1 queryWithDatabase:v10 predicate:v18];

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

    v9 = v21;
  }
}

+ (id)_predicateForInviteEmail:(id)a3 accountPID:(id)a4
{
  v6 = a3;
  v7 = [a1 _predicateForAccountPID:a4];
  v12[0] = v7;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"invite_email" equalToValue:v6];

  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

+ (id)_predicateForAltDSID:(id)a3 accountPID:(id)a4
{
  v6 = a3;
  v7 = [a1 _predicateForAccountPID:a4];
  v12[0] = v7;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"alt_dsid" equalToValue:v6];

  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

+ (id)_predicateForDisplayedNotification:(BOOL)a3 accountPID:(id)a4
{
  v4 = a3;
  v6 = [a1 _predicateForAccountPID:a4];
  v11[0] = v6;
  v7 = [a1 _predicateForDisplayedNotification:v4];
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)_predicateForDisplayedNotification:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"displayed_notification" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesAccountPendingFamilyMember:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 inviteEmail];
  [v4 setObjectOrNull:v5 forKey:@"invite_email"];

  v6 = [v3 altDSID];
  [v4 setObjectOrNull:v6 forKey:@"alt_dsid"];

  v7 = [v3 inviteDate];
  v8 = _SQLValueForDate();
  [v4 setObjectOrNull:v8 forKey:@"invite_date"];

  v9 = [v3 displayedNotification];
  [v4 setBool:v9 forKey:@"displayed_notification"];

  return v4;
}

+ (id)_accountPendingFamilyMembersWithQuery:(id)a3
{
  v4 = a3;
  v5 = [a1 _propertySettersForAccountPendingFamilyMember];
  v6 = objc_alloc_init(NSMutableSet);
  v7 = [v5 allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F871C;
  v12[3] = &unk_10083C998;
  v15 = a1;
  v13 = v5;
  v8 = v6;
  v14 = v8;
  v9 = v5;
  [v4 enumeratePersistentIDsAndProperties:v7 usingBlock:v12];

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