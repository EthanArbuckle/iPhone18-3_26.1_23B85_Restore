@interface IDSDAccountMetrics
+ (BOOL)areAllAliasesSelectedOnAccount:(id)a3;
+ (BOOL)areAllSelectedAliasesRegisteredOnAccount:(id)a3;
+ (BOOL)isAccountsFrameworkAvailable;
+ (BOOL)isProductionEnvironment;
+ (BOOL)isiCloudAccountMatchingAccount:(id)a3;
+ (BOOL)isiCloudSignedIn;
+ (BOOL)isiTunesSignedIn;
+ (double)timeSinceDateOnAccount:(id)a3;
+ (double)timeSinceLastRegistrationFailureOnAccount:(id)a3;
+ (double)timeSinceLastRegistrationSuccessOnAccount:(id)a3;
+ (id)registrationAccountStatusMetricForAccount:(id)a3;
+ (id)registrationAccountStatusMetricForNonexistentAccountWithType:(int)a3 serviceIdentifier:(id)a4;
+ (int64_t)accountSecurityLevelForAccount:(id)a3;
@end

@implementation IDSDAccountMetrics

+ (BOOL)isAccountsFrameworkAvailable
{
  v2 = [IMWeakLinkClass() isAccountsFrameworkAvailable];
  if (v2)
  {
    v3 = +[IDSDataMigrationTracker sharedInstance];
    v4 = [v3 hasPerformedMigration];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)isiCloudSignedIn
{
  v2 = [a1 isAccountsFrameworkAvailable];
  if (v2)
  {
    v3 = +[IDSDAccountController sharedInstance];
    v4 = [v3 isiCloudSignedIn];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)isiTunesSignedIn
{
  v2 = [a1 isAccountsFrameworkAvailable];
  if (v2)
  {
    v3 = +[IDSDAccountController sharedInstance];
    v4 = [v3 isiTunesSignedIn];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)isiCloudAccountMatchingAccount:(id)a3
{
  v4 = a3;
  if ([a1 isAccountsFrameworkAvailable])
  {
    v5 = [IDSSystemAccountAdapter alloc];
    v6 = im_primary_queue();
    v7 = [(IDSSystemAccountAdapter *)v5 initWithQueue:v6];

    v8 = [(IDSSystemAccountAdapter *)v7 iCloudSystemAccountWithError:0];
    if (v8)
    {
      v9 = [v4 dsID];
      if (v9)
      {
        v10 = [v8 DSID];
        v11 = [v4 dsID];
        v12 = [v10 isEqualToString:v11];
      }

      else
      {
        v12 = 0;
      }

      v14 = [v4 loginID];
      if (v14)
      {
        v15 = [v8 username];
        v16 = [v4 loginID];
        v17 = [v15 isEqualToString:v16];
      }

      else
      {
        v17 = 0;
      }

      v13 = v12 | v17;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

+ (int64_t)accountSecurityLevelForAccount:(id)a3
{
  v4 = a3;
  if ([v4 accountType] == 1)
  {
    v5 = [v4 dsID];
    v6 = [v4 loginID];
    if ([a1 isAccountsFrameworkAvailable])
    {
      v7 = [IMWeakLinkClass() sharedInstance];
      if (v7)
      {
        v8 = sub_1004508E4(v5);
        v9 = [v7 authKitAccountWithDSID:v8];
        if (v9)
        {
          goto LABEL_10;
        }

        v14 = 0;
        v9 = [v7 authKitAccountWithAppleID:v6 error:&v14];
        v10 = v14;
        if (v10)
        {
          v11 = +[IMRGLog registration];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v16 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Error fetching authkit account with AppleID. { error: %@ }", buf, 0xCu);
          }
        }

        if (v9)
        {
LABEL_10:
          v12 = [v7 securityLevelForAccount:v9];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (double)timeSinceDateOnAccount:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = a3;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5;

  return v6;
}

+ (double)timeSinceLastRegistrationFailureOnAccount:(id)a3
{
  v4 = [a3 lastRegistrationFailureDate];
  [a1 timeSinceDateOnAccount:v4];
  v6 = v5;

  return v6;
}

+ (double)timeSinceLastRegistrationSuccessOnAccount:(id)a3
{
  v4 = [a3 lastRegistrationSuccessDate];
  [a1 timeSinceDateOnAccount:v4];
  v6 = v5;

  return v6;
}

+ (BOOL)areAllAliasesSelectedOnAccount:(id)a3
{
  v3 = a3;
  if ([v3 accountType] == 1)
  {
    v4 = [v3 aliases];
    v5 = [v4 __imArrayByFilteringWithBlock:&stru_100BDB360];
    v6 = [NSSet setWithArray:v5];

    v7 = [v3 vettedAliases];
    v8 = [NSMutableSet setWithArray:v7];

    v9 = +[IDSRegistrationController registeredPhoneNumbers];
    [v8 minusSet:v9];

    v10 = [v8 isEqualToSet:v6];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (BOOL)areAllSelectedAliasesRegisteredOnAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 registration];
  v5 = [v4 registrationStatus];

  if (v5 == 8)
  {
    if ([v3 accountType] == 1)
    {
      v6 = [v3 aliases];
      v7 = [v6 __imArrayByFilteringWithBlock:&stru_100BDB380];
      v8 = [NSSet setWithArray:v7];

      v9 = [v3 unprefixedURIStringsFromRegistration];
      v10 = [NSSet setWithArray:v9];

      v11 = [v10 isEqualToSet:v8];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isProductionEnvironment
{
  v2 = IMGetEnvironmentName();
  v3 = [v2 isEqualToIgnoringCase:@"prod"];

  return v3;
}

+ (id)registrationAccountStatusMetricForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 aliases];
  v5 = [v4 __imArrayByFilteringWithBlock:&stru_100BDB3A0];
  v6 = [NSSet setWithArray:v5];

  v7 = [v3 vettedAliases];
  v8 = [NSMutableSet setWithArray:v7];

  v9 = +[IDSRegistrationController registeredPhoneNumbers];
  [v8 minusSet:v9];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v11)
  {
    v12 = v11;
    v54 = 0;
    v55 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *v57;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v57 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v56 + 1) + 8 * i);
        if (([v6 containsObject:v18] & 1) == 0)
        {
          v19 = [v3 unselectReasonForAlias:v18];
          if (v19 <= 2)
          {
            if (v19 < 3)
            {
              ++v15;
            }
          }

          else if (v19 > 4)
          {
            if (v19 == 5)
            {
              ++v54;
            }

            else if (v19 == 6)
            {
              ++v55;
            }
          }

          else if (v19 == 3)
          {
            ++v14;
          }

          else
          {
            ++v13;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v12);
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v52 = [IDSRegistrationAccountStatusMetric alloc];
  v51 = [v3 accountType];
  v20 = [v3 service];
  v50 = [v20 identifier];
  v49 = [v3 isEnabled];
  v48 = [v3 isUserDisabled];
  v47 = [a1 isiCloudSignedIn];
  v46 = [a1 isiCloudAccountMatchingAccount:v3];
  v44 = [a1 isiTunesSignedIn];
  v43 = [v3 registrationError];
  v42 = [v3 registrationErrorReason];
  v45 = [v3 registration];
  v41 = [v45 registrationStatus];
  v40 = [v3 registrationStatus];
  v39 = [v3 hasEverRegistered];
  v38 = [v3 lastRegistrationFailureError];
  [a1 timeSinceLastRegistrationFailureOnAccount:v3];
  v22 = v21;
  [a1 timeSinceLastRegistrationSuccessOnAccount:v3];
  v24 = v23;
  v37 = [a1 accountSecurityLevelForAccount:v3];
  v36 = [a1 areAllAliasesSelectedOnAccount:v3];
  v35 = [a1 areAllSelectedAliasesRegisteredOnAccount:v3];
  v25 = [v6 count];
  v26 = [v10 count];
  LOBYTE(v34) = [a1 isProductionEnvironment];
  BYTE1(v33) = v35;
  LOBYTE(v33) = v36;
  BYTE4(v32) = v39;
  LODWORD(v32) = v40;
  LODWORD(v31) = v42;
  BYTE1(v30) = v44;
  LOBYTE(v30) = v46;
  v27 = [v52 initWithAccountType:v51 serviceIdentifier:v50 doesExist:1 isEnabled:v49 isUserDisabled:v48 isiCloudSignedIn:v47 doesMatchiCloudAccount:v22 isiTunesSignedIn:v24 registrationError:v30 registrationErrorReason:v43 registrationStatus:v31 accountRegistrationStatus:v41 hasEverRegistered:v32 lastRegistrationFailureError:v38 timeIntervalSinceLastRegistrationFailure:v37 timeIntervalSinceLastRegistrationSuccess:v33 accountSecurityLevel:v25 areAllAliasesSelected:v26 areAllSelectedAliasesRegistered:v15 numberOfSelected:v14 numberOfVetted:v13 numberOfUnselectReasonUnknown:v54 numberOfUnselectReasonAlertDenial:v55 numberOfUnselectReasonClientCall:v34 numberOfUnselectReasonBadAlias:? numberOfUnselectReasonUpdateInfo:? isProdEnvironment:?];

  v28 = +[IMRGLog registration];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Constructed registration account status metric { metric: %@ }", buf, 0xCu);
  }

  return v27;
}

+ (id)registrationAccountStatusMetricForNonexistentAccountWithType:(int)a3 serviceIdentifier:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [IDSRegistrationAccountStatusMetric alloc];
  v8 = [a1 isiCloudSignedIn];
  v9 = [a1 isiTunesSignedIn];
  LOBYTE(v17) = [a1 isProductionEnvironment];
  LOWORD(v16) = 0;
  BYTE4(v15) = 0;
  LODWORD(v15) = 0;
  LODWORD(v14) = -1;
  BYTE1(v13) = v9;
  LOBYTE(v13) = 0;
  v10 = [v7 initWithAccountType:v4 serviceIdentifier:v6 doesExist:0 isEnabled:0 isUserDisabled:0 isiCloudSignedIn:v8 doesMatchiCloudAccount:0.0 isiTunesSignedIn:0.0 registrationError:v13 registrationErrorReason:-1 registrationStatus:v14 accountRegistrationStatus:0 hasEverRegistered:v15 lastRegistrationFailureError:-1 timeIntervalSinceLastRegistrationFailure:0 timeIntervalSinceLastRegistrationSuccess:v16 accountSecurityLevel:0 areAllAliasesSelected:0 areAllSelectedAliasesRegistered:0 numberOfSelected:0 numberOfVetted:0 numberOfUnselectReasonUnknown:0 numberOfUnselectReasonAlertDenial:0 numberOfUnselectReasonClientCall:v17 numberOfUnselectReasonBadAlias:? numberOfUnselectReasonUpdateInfo:? isProdEnvironment:?];

  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Constructed registration account status metric { metric: %@ }", buf, 0xCu);
  }

  return v10;
}

@end