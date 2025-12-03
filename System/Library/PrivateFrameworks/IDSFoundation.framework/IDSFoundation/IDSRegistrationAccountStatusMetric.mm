@interface IDSRegistrationAccountStatusMetric
- (IDSRegistrationAccountStatusMetric)initWithAccountType:(int)type serviceIdentifier:(id)identifier doesExist:(BOOL)exist isEnabled:(BOOL)enabled isUserDisabled:(BOOL)disabled isiCloudSignedIn:(BOOL)in doesMatchiCloudAccount:(BOOL)account isiTunesSignedIn:(BOOL)self0 registrationError:(int64_t)self1 registrationErrorReason:(int)self2 registrationStatus:(int64_t)self3 accountRegistrationStatus:(int)self4 hasEverRegistered:(BOOL)self5 lastRegistrationFailureError:(int64_t)self6 timeIntervalSinceLastRegistrationFailure:(double)self7 timeIntervalSinceLastRegistrationSuccess:(double)self8 accountSecurityLevel:(int64_t)self9 areAllAliasesSelected:(BOOL)selected areAllSelectedAliasesRegistered:(BOOL)aliasesRegistered numberOfSelected:(int64_t)ofSelected numberOfVetted:(int64_t)vetted numberOfUnselectReasonUnknown:(int64_t)unknown numberOfUnselectReasonAlertDenial:(int64_t)denial numberOfUnselectReasonClientCall:(int64_t)call numberOfUnselectReasonBadAlias:(int64_t)alias numberOfUnselectReasonUpdateInfo:(int64_t)info isProdEnvironment:(BOOL)environment;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
@end

@implementation IDSRegistrationAccountStatusMetric

- (IDSRegistrationAccountStatusMetric)initWithAccountType:(int)type serviceIdentifier:(id)identifier doesExist:(BOOL)exist isEnabled:(BOOL)enabled isUserDisabled:(BOOL)disabled isiCloudSignedIn:(BOOL)in doesMatchiCloudAccount:(BOOL)account isiTunesSignedIn:(BOOL)self0 registrationError:(int64_t)self1 registrationErrorReason:(int)self2 registrationStatus:(int64_t)self3 accountRegistrationStatus:(int)self4 hasEverRegistered:(BOOL)self5 lastRegistrationFailureError:(int64_t)self6 timeIntervalSinceLastRegistrationFailure:(double)self7 timeIntervalSinceLastRegistrationSuccess:(double)self8 accountSecurityLevel:(int64_t)self9 areAllAliasesSelected:(BOOL)selected areAllSelectedAliasesRegistered:(BOOL)aliasesRegistered numberOfSelected:(int64_t)ofSelected numberOfVetted:(int64_t)vetted numberOfUnselectReasonUnknown:(int64_t)unknown numberOfUnselectReasonAlertDenial:(int64_t)denial numberOfUnselectReasonClientCall:(int64_t)call numberOfUnselectReasonBadAlias:(int64_t)alias numberOfUnselectReasonUpdateInfo:(int64_t)info isProdEnvironment:(BOOL)environment
{
  identifierCopy = identifier;
  v43.receiver = self;
  v43.super_class = IDSRegistrationAccountStatusMetric;
  v38 = [(IDSRegistrationAccountStatusMetric *)&v43 init];
  v39 = v38;
  if (v38)
  {
    v38->_accountType = type;
    v40 = [identifierCopy copy];
    serviceIdentifier = v39->_serviceIdentifier;
    v39->_serviceIdentifier = v40;

    v39->_doesExist = exist;
    v39->_isEnabled = enabled;
    v39->_isUserDisabled = disabled;
    v39->_isiCloudSignedIn = in;
    v39->_doesMatchiCloudAccount = account;
    v39->_isiTunesSignedIn = signedIn;
    v39->_registrationError = error;
    v39->_registrationStatus = status;
    v39->_registrationErrorReason = reason;
    v39->_accountRegistrationStatus = registrationStatus;
    v39->_hasEverRegistered = registered;
    v39->_lastRegistrationFailureError = failureError;
    v39->_timeIntervalSinceLastRegistrationFailure = failure;
    v39->_timeIntervalSinceLastRegistrationSuccess = success;
    v39->_areAllAliasesSelected = selected;
    v39->_areAllSelectedAliasesRegistered = aliasesRegistered;
    v39->_accountSecurityLevel = level;
    v39->_numberOfSelected = ofSelected;
    v39->_numberOfVetted = vetted;
    v39->_numberOfUnselectReasonUnknown = unknown;
    v39->_numberOfUnselectReasonAlertDenial = denial;
    v39->_numberOfUnselectReasonClientCall = call;
    v39->_numberOfUnselectReasonBadAlias = alias;
    v39->_numberOfUnselectReasonUpdateInfo = info;
    v39->_isProdEnvironment = environment;
  }

  return v39;
}

- (NSString)description
{
  v23 = MEMORY[0x1E696AEC0];
  name = [(IDSRegistrationAccountStatusMetric *)self name];
  accountType = [(IDSRegistrationAccountStatusMetric *)self accountType];
  serviceIdentifier = [(IDSRegistrationAccountStatusMetric *)self serviceIdentifier];
  doesExist = [(IDSRegistrationAccountStatusMetric *)self doesExist];
  isEnabled = [(IDSRegistrationAccountStatusMetric *)self isEnabled];
  isUserDisabled = [(IDSRegistrationAccountStatusMetric *)self isUserDisabled];
  isiCloudSignedIn = [(IDSRegistrationAccountStatusMetric *)self isiCloudSignedIn];
  doesMatchiCloudAccount = [(IDSRegistrationAccountStatusMetric *)self doesMatchiCloudAccount];
  isiTunesSignedIn = [(IDSRegistrationAccountStatusMetric *)self isiTunesSignedIn];
  registrationError = [(IDSRegistrationAccountStatusMetric *)self registrationError];
  registrationErrorReason = [(IDSRegistrationAccountStatusMetric *)self registrationErrorReason];
  registrationStatus = [(IDSRegistrationAccountStatusMetric *)self registrationStatus];
  accountRegistrationStatus = [(IDSRegistrationAccountStatusMetric *)self accountRegistrationStatus];
  hasEverRegistered = [(IDSRegistrationAccountStatusMetric *)self hasEverRegistered];
  lastRegistrationFailureError = [(IDSRegistrationAccountStatusMetric *)self lastRegistrationFailureError];
  [(IDSRegistrationAccountStatusMetric *)self timeIntervalSinceLastRegistrationFailure];
  v4 = v3;
  [(IDSRegistrationAccountStatusMetric *)self timeIntervalSinceLastRegistrationSuccess];
  v6 = [v23 stringWithFormat:@"%@: <type: %d, service: %@, exist: %ld, enabled: %ld, userDisabled: %ld, iCloudSignedIn: %ld, doesMatchiCloud: %ld, iTunesSignedIn: %ld, error: %ld, errorReason: %d, status: %ld, accountStatus: %d, hasEverRegistered: %ld, lastFailError: %ld, timeSinceFail: %f, timeSinceSuccess: %f, securityLevel: %ld, allAliasesSelected: %ld, allSelectedAliasesRegistered: %ld, numVetted: %ld, numUnselectUnknown: %ld, numUnselectAlertDenial: %ld, numUnselectClientCall: %ld, numUnselectBadAlias: %ld, numUnselecUpdateInfo: %ld, isProd: %ld>", name, accountType, serviceIdentifier, doesExist, isEnabled, isUserDisabled, isiCloudSignedIn, doesMatchiCloudAccount, isiTunesSignedIn, registrationError, registrationErrorReason, registrationStatus, accountRegistrationStatus, hasEverRegistered, lastRegistrationFailureError, v4, v5, -[IDSRegistrationAccountStatusMetric accountSecurityLevel](self, "accountSecurityLevel"), -[IDSRegistrationAccountStatusMetric areAllAliasesSelected](self, "areAllAliasesSelected"), -[IDSRegistrationAccountStatusMetric areAllSelectedAliasesRegistered](self, "areAllSelectedAliasesRegistered"), -[IDSRegistrationAccountStatusMetric numberOfVetted](self, "numberOfVetted"), -[IDSRegistrationAccountStatusMetric numberOfUnselectReasonUnknown](self, "numberOfUnselectReasonUnknown"), -[IDSRegistrationAccountStatusMetric numberOfUnselectReasonAlertDenial](self, "numberOfUnselectReasonAlertDenial"), -[IDSRegistrationAccountStatusMetric numberOfUnselectReasonClientCall](self, "numberOfUnselectReasonClientCall"), -[IDSRegistrationAccountStatusMetric numberOfUnselectReasonBadAlias](self, "numberOfUnselectReasonBadAlias"), -[IDSRegistrationAccountStatusMetric numberOfUnselectReasonUpdateInfo](self, "numberOfUnselectReasonUpdateInfo"), -[IDSRegistrationAccountStatusMetric isProdEnvironment](self, "isProdEnvironment")];

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[IDSRegistrationAccountStatusMetric accountType](self, "accountType")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"AccountType", v4);
  }

  serviceIdentifier = [(IDSRegistrationAccountStatusMetric *)self serviceIdentifier];
  if (serviceIdentifier)
  {
    CFDictionarySetValue(v3, @"ServiceIdentifier", serviceIdentifier);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationAccountStatusMetric doesExist](self, "doesExist")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"DoesExist", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationAccountStatusMetric isEnabled](self, "isEnabled")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"IsEnabled", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationAccountStatusMetric isUserDisabled](self, "isUserDisabled")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"IsUserDisabled", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationAccountStatusMetric isiCloudSignedIn](self, "isiCloudSignedIn")}];
  if (v9)
  {
    CFDictionarySetValue(v3, @"IsiCloudSignedIn", v9);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationAccountStatusMetric doesMatchiCloudAccount](self, "doesMatchiCloudAccount")}];
  if (v10)
  {
    CFDictionarySetValue(v3, @"DoesMatchiCloudAccount", v10);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationAccountStatusMetric isiTunesSignedIn](self, "isiTunesSignedIn")}];
  if (v11)
  {
    CFDictionarySetValue(v3, @"IsiTunesSignedIn", v11);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationAccountStatusMetric registrationError](self, "registrationError")}];
  if (v12)
  {
    CFDictionarySetValue(v3, @"RegistrationError", v12);
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[IDSRegistrationAccountStatusMetric registrationErrorReason](self, "registrationErrorReason")}];
  if (v13)
  {
    CFDictionarySetValue(v3, @"RegistrationErrorReason", v13);
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationAccountStatusMetric registrationStatus](self, "registrationStatus")}];
  if (v14)
  {
    CFDictionarySetValue(v3, @"RegistrationStatus", v14);
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[IDSRegistrationAccountStatusMetric accountRegistrationStatus](self, "accountRegistrationStatus")}];
  if (v15)
  {
    CFDictionarySetValue(v3, @"AccountRegistrationStatus", v15);
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationAccountStatusMetric hasEverRegistered](self, "hasEverRegistered")}];
  if (v16)
  {
    CFDictionarySetValue(v3, @"HasEverRegistered", v16);
  }

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationAccountStatusMetric lastRegistrationFailureError](self, "lastRegistrationFailureError")}];
  if (v17)
  {
    CFDictionarySetValue(v3, @"LastFailureError", v17);
  }

  v18 = MEMORY[0x1E696AD98];
  [(IDSRegistrationAccountStatusMetric *)self timeIntervalSinceLastRegistrationFailure];
  v19 = [v18 numberWithDouble:?];
  if (v19)
  {
    CFDictionarySetValue(v3, @"TimeIntervalSinceLastFailure", v19);
  }

  v20 = MEMORY[0x1E696AD98];
  [(IDSRegistrationAccountStatusMetric *)self timeIntervalSinceLastRegistrationSuccess];
  v21 = [v20 numberWithDouble:?];
  if (v21)
  {
    CFDictionarySetValue(v3, @"TimeIntervalSinceLastSuccess", v21);
  }

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationAccountStatusMetric accountSecurityLevel](self, "accountSecurityLevel")}];
  if (v22)
  {
    CFDictionarySetValue(v3, @"AccountSecurityLevel", v22);
  }

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationAccountStatusMetric areAllAliasesSelected](self, "areAllAliasesSelected")}];
  if (v23)
  {
    CFDictionarySetValue(v3, @"AreAllAliasesSelected", v23);
  }

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationAccountStatusMetric areAllSelectedAliasesRegistered](self, "areAllSelectedAliasesRegistered")}];
  if (v24)
  {
    CFDictionarySetValue(v3, @"AreAllSelectedAliasesRegistered", v24);
  }

  v25 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationAccountStatusMetric numberOfSelected](self, "numberOfSelected")}];
  if (v25)
  {
    CFDictionarySetValue(v3, @"NumberOfSelected", v25);
  }

  v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationAccountStatusMetric numberOfVetted](self, "numberOfVetted")}];
  if (v26)
  {
    CFDictionarySetValue(v3, @"NumberOfVetted", v26);
  }

  v27 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationAccountStatusMetric numberOfUnselectReasonUnknown](self, "numberOfUnselectReasonUnknown")}];
  if (v27)
  {
    CFDictionarySetValue(v3, @"NumberOfUnselectReasonUnknown", v27);
  }

  v28 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationAccountStatusMetric numberOfUnselectReasonAlertDenial](self, "numberOfUnselectReasonAlertDenial")}];
  if (v28)
  {
    CFDictionarySetValue(v3, @"NumberOfUnselectReasonAlertDenial", v28);
  }

  v29 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationAccountStatusMetric numberOfUnselectReasonClientCall](self, "numberOfUnselectReasonClientCall")}];
  if (v29)
  {
    CFDictionarySetValue(v3, @"NumberOfUnselectReasonClientCall", v29);
  }

  v30 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationAccountStatusMetric numberOfUnselectReasonBadAlias](self, "numberOfUnselectReasonBadAlias")}];
  if (v30)
  {
    CFDictionarySetValue(v3, @"NumberOfUnselectReasonBadAlias", v30);
  }

  v31 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationAccountStatusMetric numberOfUnselectReasonUpdateInfo](self, "numberOfUnselectReasonUpdateInfo")}];
  if (v31)
  {
    CFDictionarySetValue(v3, @"NumberOfUnselectReasonUpdateInfo", v31);
  }

  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationAccountStatusMetric isProdEnvironment](self, "isProdEnvironment")}];
  if (v32)
  {
    CFDictionarySetValue(v3, @"IsProdEnvironment", v32);
  }

  return v3;
}

@end