@interface IDSRegistrationAccountStatusMetric
- (IDSRegistrationAccountStatusMetric)initWithAccountType:(int)a3 serviceIdentifier:(id)a4 doesExist:(BOOL)a5 isEnabled:(BOOL)a6 isUserDisabled:(BOOL)a7 isiCloudSignedIn:(BOOL)a8 doesMatchiCloudAccount:(BOOL)a9 isiTunesSignedIn:(BOOL)a10 registrationError:(int64_t)a11 registrationErrorReason:(int)a12 registrationStatus:(int64_t)a13 accountRegistrationStatus:(int)a14 hasEverRegistered:(BOOL)a15 lastRegistrationFailureError:(int64_t)a16 timeIntervalSinceLastRegistrationFailure:(double)a17 timeIntervalSinceLastRegistrationSuccess:(double)a18 accountSecurityLevel:(int64_t)a19 areAllAliasesSelected:(BOOL)a20 areAllSelectedAliasesRegistered:(BOOL)a21 numberOfSelected:(int64_t)a22 numberOfVetted:(int64_t)a23 numberOfUnselectReasonUnknown:(int64_t)a24 numberOfUnselectReasonAlertDenial:(int64_t)a25 numberOfUnselectReasonClientCall:(int64_t)a26 numberOfUnselectReasonBadAlias:(int64_t)a27 numberOfUnselectReasonUpdateInfo:(int64_t)a28 isProdEnvironment:(BOOL)a29;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
@end

@implementation IDSRegistrationAccountStatusMetric

- (IDSRegistrationAccountStatusMetric)initWithAccountType:(int)a3 serviceIdentifier:(id)a4 doesExist:(BOOL)a5 isEnabled:(BOOL)a6 isUserDisabled:(BOOL)a7 isiCloudSignedIn:(BOOL)a8 doesMatchiCloudAccount:(BOOL)a9 isiTunesSignedIn:(BOOL)a10 registrationError:(int64_t)a11 registrationErrorReason:(int)a12 registrationStatus:(int64_t)a13 accountRegistrationStatus:(int)a14 hasEverRegistered:(BOOL)a15 lastRegistrationFailureError:(int64_t)a16 timeIntervalSinceLastRegistrationFailure:(double)a17 timeIntervalSinceLastRegistrationSuccess:(double)a18 accountSecurityLevel:(int64_t)a19 areAllAliasesSelected:(BOOL)a20 areAllSelectedAliasesRegistered:(BOOL)a21 numberOfSelected:(int64_t)a22 numberOfVetted:(int64_t)a23 numberOfUnselectReasonUnknown:(int64_t)a24 numberOfUnselectReasonAlertDenial:(int64_t)a25 numberOfUnselectReasonClientCall:(int64_t)a26 numberOfUnselectReasonBadAlias:(int64_t)a27 numberOfUnselectReasonUpdateInfo:(int64_t)a28 isProdEnvironment:(BOOL)a29
{
  v37 = a4;
  v43.receiver = self;
  v43.super_class = IDSRegistrationAccountStatusMetric;
  v38 = [(IDSRegistrationAccountStatusMetric *)&v43 init];
  v39 = v38;
  if (v38)
  {
    v38->_accountType = a3;
    v40 = [v37 copy];
    serviceIdentifier = v39->_serviceIdentifier;
    v39->_serviceIdentifier = v40;

    v39->_doesExist = a5;
    v39->_isEnabled = a6;
    v39->_isUserDisabled = a7;
    v39->_isiCloudSignedIn = a8;
    v39->_doesMatchiCloudAccount = a9;
    v39->_isiTunesSignedIn = a10;
    v39->_registrationError = a11;
    v39->_registrationStatus = a13;
    v39->_registrationErrorReason = a12;
    v39->_accountRegistrationStatus = a14;
    v39->_hasEverRegistered = a15;
    v39->_lastRegistrationFailureError = a16;
    v39->_timeIntervalSinceLastRegistrationFailure = a17;
    v39->_timeIntervalSinceLastRegistrationSuccess = a18;
    v39->_areAllAliasesSelected = a20;
    v39->_areAllSelectedAliasesRegistered = a21;
    v39->_accountSecurityLevel = a19;
    v39->_numberOfSelected = a22;
    v39->_numberOfVetted = a23;
    v39->_numberOfUnselectReasonUnknown = a24;
    v39->_numberOfUnselectReasonAlertDenial = a25;
    v39->_numberOfUnselectReasonClientCall = a26;
    v39->_numberOfUnselectReasonBadAlias = a27;
    v39->_numberOfUnselectReasonUpdateInfo = a28;
    v39->_isProdEnvironment = a29;
  }

  return v39;
}

- (NSString)description
{
  v23 = MEMORY[0x1E696AEC0];
  v22 = [(IDSRegistrationAccountStatusMetric *)self name];
  v21 = [(IDSRegistrationAccountStatusMetric *)self accountType];
  v20 = [(IDSRegistrationAccountStatusMetric *)self serviceIdentifier];
  v19 = [(IDSRegistrationAccountStatusMetric *)self doesExist];
  v18 = [(IDSRegistrationAccountStatusMetric *)self isEnabled];
  v17 = [(IDSRegistrationAccountStatusMetric *)self isUserDisabled];
  v16 = [(IDSRegistrationAccountStatusMetric *)self isiCloudSignedIn];
  v15 = [(IDSRegistrationAccountStatusMetric *)self doesMatchiCloudAccount];
  v14 = [(IDSRegistrationAccountStatusMetric *)self isiTunesSignedIn];
  v13 = [(IDSRegistrationAccountStatusMetric *)self registrationError];
  v12 = [(IDSRegistrationAccountStatusMetric *)self registrationErrorReason];
  v11 = [(IDSRegistrationAccountStatusMetric *)self registrationStatus];
  v10 = [(IDSRegistrationAccountStatusMetric *)self accountRegistrationStatus];
  v9 = [(IDSRegistrationAccountStatusMetric *)self hasEverRegistered];
  v8 = [(IDSRegistrationAccountStatusMetric *)self lastRegistrationFailureError];
  [(IDSRegistrationAccountStatusMetric *)self timeIntervalSinceLastRegistrationFailure];
  v4 = v3;
  [(IDSRegistrationAccountStatusMetric *)self timeIntervalSinceLastRegistrationSuccess];
  v6 = [v23 stringWithFormat:@"%@: <type: %d, service: %@, exist: %ld, enabled: %ld, userDisabled: %ld, iCloudSignedIn: %ld, doesMatchiCloud: %ld, iTunesSignedIn: %ld, error: %ld, errorReason: %d, status: %ld, accountStatus: %d, hasEverRegistered: %ld, lastFailError: %ld, timeSinceFail: %f, timeSinceSuccess: %f, securityLevel: %ld, allAliasesSelected: %ld, allSelectedAliasesRegistered: %ld, numVetted: %ld, numUnselectUnknown: %ld, numUnselectAlertDenial: %ld, numUnselectClientCall: %ld, numUnselectBadAlias: %ld, numUnselecUpdateInfo: %ld, isProd: %ld>", v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v11, v10, v9, v8, v4, v5, -[IDSRegistrationAccountStatusMetric accountSecurityLevel](self, "accountSecurityLevel"), -[IDSRegistrationAccountStatusMetric areAllAliasesSelected](self, "areAllAliasesSelected"), -[IDSRegistrationAccountStatusMetric areAllSelectedAliasesRegistered](self, "areAllSelectedAliasesRegistered"), -[IDSRegistrationAccountStatusMetric numberOfVetted](self, "numberOfVetted"), -[IDSRegistrationAccountStatusMetric numberOfUnselectReasonUnknown](self, "numberOfUnselectReasonUnknown"), -[IDSRegistrationAccountStatusMetric numberOfUnselectReasonAlertDenial](self, "numberOfUnselectReasonAlertDenial"), -[IDSRegistrationAccountStatusMetric numberOfUnselectReasonClientCall](self, "numberOfUnselectReasonClientCall"), -[IDSRegistrationAccountStatusMetric numberOfUnselectReasonBadAlias](self, "numberOfUnselectReasonBadAlias"), -[IDSRegistrationAccountStatusMetric numberOfUnselectReasonUpdateInfo](self, "numberOfUnselectReasonUpdateInfo"), -[IDSRegistrationAccountStatusMetric isProdEnvironment](self, "isProdEnvironment")];

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

  v5 = [(IDSRegistrationAccountStatusMetric *)self serviceIdentifier];
  if (v5)
  {
    CFDictionarySetValue(v3, @"ServiceIdentifier", v5);
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