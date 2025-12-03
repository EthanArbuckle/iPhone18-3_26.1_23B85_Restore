@interface IDSDAccountMetrics
+ (BOOL)areAllAliasesSelectedOnAccount:(id)account;
+ (BOOL)areAllSelectedAliasesRegisteredOnAccount:(id)account;
+ (BOOL)isAccountsFrameworkAvailable;
+ (BOOL)isProductionEnvironment;
+ (BOOL)isiCloudAccountMatchingAccount:(id)account;
+ (BOOL)isiCloudSignedIn;
+ (BOOL)isiTunesSignedIn;
+ (double)timeSinceDateOnAccount:(id)account;
+ (double)timeSinceLastRegistrationFailureOnAccount:(id)account;
+ (double)timeSinceLastRegistrationSuccessOnAccount:(id)account;
+ (id)registrationAccountStatusMetricForAccount:(id)account;
+ (id)registrationAccountStatusMetricForNonexistentAccountWithType:(int)type serviceIdentifier:(id)identifier;
+ (int64_t)accountSecurityLevelForAccount:(id)account;
@end

@implementation IDSDAccountMetrics

+ (BOOL)isAccountsFrameworkAvailable
{
  isAccountsFrameworkAvailable = [IMWeakLinkClass() isAccountsFrameworkAvailable];
  if (isAccountsFrameworkAvailable)
  {
    v3 = +[IDSDataMigrationTracker sharedInstance];
    hasPerformedMigration = [v3 hasPerformedMigration];

    LOBYTE(isAccountsFrameworkAvailable) = hasPerformedMigration;
  }

  return isAccountsFrameworkAvailable;
}

+ (BOOL)isiCloudSignedIn
{
  isAccountsFrameworkAvailable = [self isAccountsFrameworkAvailable];
  if (isAccountsFrameworkAvailable)
  {
    v3 = +[IDSDAccountController sharedInstance];
    isiCloudSignedIn = [v3 isiCloudSignedIn];

    LOBYTE(isAccountsFrameworkAvailable) = isiCloudSignedIn;
  }

  return isAccountsFrameworkAvailable;
}

+ (BOOL)isiTunesSignedIn
{
  isAccountsFrameworkAvailable = [self isAccountsFrameworkAvailable];
  if (isAccountsFrameworkAvailable)
  {
    v3 = +[IDSDAccountController sharedInstance];
    isiTunesSignedIn = [v3 isiTunesSignedIn];

    LOBYTE(isAccountsFrameworkAvailable) = isiTunesSignedIn;
  }

  return isAccountsFrameworkAvailable;
}

+ (BOOL)isiCloudAccountMatchingAccount:(id)account
{
  accountCopy = account;
  if ([self isAccountsFrameworkAvailable])
  {
    v5 = [IDSSystemAccountAdapter alloc];
    v6 = im_primary_queue();
    v7 = [(IDSSystemAccountAdapter *)v5 initWithQueue:v6];

    v8 = [(IDSSystemAccountAdapter *)v7 iCloudSystemAccountWithError:0];
    if (v8)
    {
      dsID = [accountCopy dsID];
      if (dsID)
      {
        dSID = [v8 DSID];
        dsID2 = [accountCopy dsID];
        v12 = [dSID isEqualToString:dsID2];
      }

      else
      {
        v12 = 0;
      }

      loginID = [accountCopy loginID];
      if (loginID)
      {
        username = [v8 username];
        loginID2 = [accountCopy loginID];
        v17 = [username isEqualToString:loginID2];
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

+ (int64_t)accountSecurityLevelForAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy accountType] == 1)
  {
    dsID = [accountCopy dsID];
    loginID = [accountCopy loginID];
    if ([self isAccountsFrameworkAvailable])
    {
      iMWeakLinkClass() = [IMWeakLinkClass() sharedInstance];
      if (iMWeakLinkClass())
      {
        v8 = sub_1004508E4(dsID);
        v9 = [iMWeakLinkClass() authKitAccountWithDSID:v8];
        if (v9)
        {
          goto LABEL_10;
        }

        v14 = 0;
        v9 = [iMWeakLinkClass() authKitAccountWithAppleID:loginID error:&v14];
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
          v12 = [iMWeakLinkClass() securityLevelForAccount:v9];
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

+ (double)timeSinceDateOnAccount:(id)account
{
  if (!account)
  {
    return 0.0;
  }

  accountCopy = account;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:accountCopy];
  v6 = v5;

  return v6;
}

+ (double)timeSinceLastRegistrationFailureOnAccount:(id)account
{
  lastRegistrationFailureDate = [account lastRegistrationFailureDate];
  [self timeSinceDateOnAccount:lastRegistrationFailureDate];
  v6 = v5;

  return v6;
}

+ (double)timeSinceLastRegistrationSuccessOnAccount:(id)account
{
  lastRegistrationSuccessDate = [account lastRegistrationSuccessDate];
  [self timeSinceDateOnAccount:lastRegistrationSuccessDate];
  v6 = v5;

  return v6;
}

+ (BOOL)areAllAliasesSelectedOnAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy accountType] == 1)
  {
    aliases = [accountCopy aliases];
    v5 = [aliases __imArrayByFilteringWithBlock:&stru_100BDB360];
    v6 = [NSSet setWithArray:v5];

    vettedAliases = [accountCopy vettedAliases];
    v8 = [NSMutableSet setWithArray:vettedAliases];

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

+ (BOOL)areAllSelectedAliasesRegisteredOnAccount:(id)account
{
  accountCopy = account;
  registration = [accountCopy registration];
  registrationStatus = [registration registrationStatus];

  if (registrationStatus == 8)
  {
    if ([accountCopy accountType] == 1)
    {
      aliases = [accountCopy aliases];
      v7 = [aliases __imArrayByFilteringWithBlock:&stru_100BDB380];
      v8 = [NSSet setWithArray:v7];

      unprefixedURIStringsFromRegistration = [accountCopy unprefixedURIStringsFromRegistration];
      v10 = [NSSet setWithArray:unprefixedURIStringsFromRegistration];

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

+ (id)registrationAccountStatusMetricForAccount:(id)account
{
  accountCopy = account;
  aliases = [accountCopy aliases];
  v5 = [aliases __imArrayByFilteringWithBlock:&stru_100BDB3A0];
  v6 = [NSSet setWithArray:v5];

  vettedAliases = [accountCopy vettedAliases];
  v8 = [NSMutableSet setWithArray:vettedAliases];

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
          v19 = [accountCopy unselectReasonForAlias:v18];
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
  accountType = [accountCopy accountType];
  service = [accountCopy service];
  identifier = [service identifier];
  isEnabled = [accountCopy isEnabled];
  isUserDisabled = [accountCopy isUserDisabled];
  isiCloudSignedIn = [self isiCloudSignedIn];
  v46 = [self isiCloudAccountMatchingAccount:accountCopy];
  isiTunesSignedIn = [self isiTunesSignedIn];
  registrationError = [accountCopy registrationError];
  registrationErrorReason = [accountCopy registrationErrorReason];
  registration = [accountCopy registration];
  registrationStatus = [registration registrationStatus];
  registrationStatus2 = [accountCopy registrationStatus];
  hasEverRegistered = [accountCopy hasEverRegistered];
  lastRegistrationFailureError = [accountCopy lastRegistrationFailureError];
  [self timeSinceLastRegistrationFailureOnAccount:accountCopy];
  v22 = v21;
  [self timeSinceLastRegistrationSuccessOnAccount:accountCopy];
  v24 = v23;
  v37 = [self accountSecurityLevelForAccount:accountCopy];
  v36 = [self areAllAliasesSelectedOnAccount:accountCopy];
  v35 = [self areAllSelectedAliasesRegisteredOnAccount:accountCopy];
  v25 = [v6 count];
  v26 = [v10 count];
  LOBYTE(v34) = [self isProductionEnvironment];
  BYTE1(v33) = v35;
  LOBYTE(v33) = v36;
  BYTE4(v32) = hasEverRegistered;
  LODWORD(v32) = registrationStatus2;
  LODWORD(v31) = registrationErrorReason;
  BYTE1(v30) = isiTunesSignedIn;
  LOBYTE(v30) = v46;
  v27 = [v52 initWithAccountType:accountType serviceIdentifier:identifier doesExist:1 isEnabled:isEnabled isUserDisabled:isUserDisabled isiCloudSignedIn:isiCloudSignedIn doesMatchiCloudAccount:v22 isiTunesSignedIn:v24 registrationError:v30 registrationErrorReason:registrationError registrationStatus:v31 accountRegistrationStatus:registrationStatus hasEverRegistered:v32 lastRegistrationFailureError:lastRegistrationFailureError timeIntervalSinceLastRegistrationFailure:v37 timeIntervalSinceLastRegistrationSuccess:v33 accountSecurityLevel:v25 areAllAliasesSelected:v26 areAllSelectedAliasesRegistered:v15 numberOfSelected:v14 numberOfVetted:v13 numberOfUnselectReasonUnknown:v54 numberOfUnselectReasonAlertDenial:v55 numberOfUnselectReasonClientCall:v34 numberOfUnselectReasonBadAlias:? numberOfUnselectReasonUpdateInfo:? isProdEnvironment:?];

  v28 = +[IMRGLog registration];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Constructed registration account status metric { metric: %@ }", buf, 0xCu);
  }

  return v27;
}

+ (id)registrationAccountStatusMetricForNonexistentAccountWithType:(int)type serviceIdentifier:(id)identifier
{
  v4 = *&type;
  identifierCopy = identifier;
  v7 = [IDSRegistrationAccountStatusMetric alloc];
  isiCloudSignedIn = [self isiCloudSignedIn];
  isiTunesSignedIn = [self isiTunesSignedIn];
  LOBYTE(v17) = [self isProductionEnvironment];
  LOWORD(v16) = 0;
  BYTE4(v15) = 0;
  LODWORD(v15) = 0;
  LODWORD(v14) = -1;
  BYTE1(v13) = isiTunesSignedIn;
  LOBYTE(v13) = 0;
  v10 = [v7 initWithAccountType:v4 serviceIdentifier:identifierCopy doesExist:0 isEnabled:0 isUserDisabled:0 isiCloudSignedIn:isiCloudSignedIn doesMatchiCloudAccount:0.0 isiTunesSignedIn:0.0 registrationError:v13 registrationErrorReason:-1 registrationStatus:v14 accountRegistrationStatus:0 hasEverRegistered:v15 lastRegistrationFailureError:-1 timeIntervalSinceLastRegistrationFailure:0 timeIntervalSinceLastRegistrationSuccess:v16 accountSecurityLevel:0 areAllAliasesSelected:0 areAllSelectedAliasesRegistered:0 numberOfSelected:0 numberOfVetted:0 numberOfUnselectReasonUnknown:0 numberOfUnselectReasonAlertDenial:0 numberOfUnselectReasonClientCall:v17 numberOfUnselectReasonBadAlias:? numberOfUnselectReasonUpdateInfo:? isProdEnvironment:?];

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