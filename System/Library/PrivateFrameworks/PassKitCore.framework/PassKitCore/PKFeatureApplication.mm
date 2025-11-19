@interface PKFeatureApplication
- (BOOL)hasSufficientOTBForInstallmentConfiguration:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)authenticationSignaturePayload;
- (PKFeatureApplication)initWithCoder:(id)a3;
- (PKFeatureApplication)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFeatureApplication

- (PKFeatureApplication)initWithDictionary:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = PKFeatureApplication;
  v5 = [(PKFeatureApplication *)&v47 init];
  if (!v5)
  {
LABEL_37:
    v45 = v5;
    goto LABEL_38;
  }

  v6 = [v4 PKStringForKey:@"applicationIdentifier"];
  applicationIdentifier = v5->_applicationIdentifier;
  v5->_applicationIdentifier = v6;

  if (![(NSString *)v5->_applicationIdentifier length])
  {
    v10 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v43 = "Error: Application identifier missing";
LABEL_25:
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, v43, buf, 2u);
    }

LABEL_32:

    goto LABEL_33;
  }

  v8 = [v4 PKURLForKey:@"applicationBaseURL"];
  applicationBaseURL = v5->_applicationBaseURL;
  v5->_applicationBaseURL = v8;

  if (!v5->_applicationBaseURL)
  {
    v10 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v43 = "Error: Application baseURL missing";
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  v10 = [v4 PKStringForKey:@"featureIdentifier"];
  v11 = PKFeatureIdentifierFromString(v10);
  v5->_feature = v11;
  if (!v11)
  {
    v12 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v10;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Error: Feature identifier: %@ unknown", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v12 = [v4 PKStringForKey:@"applicationType"];
  v13 = PKFeatureApplicationTypeFromString(v12);
  v5->_applicationType = v13;
  if (!v13)
  {
    v44 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v12;
      _os_log_impl(&dword_1AD337000, v44, OS_LOG_TYPE_DEFAULT, "Error: Application type: %@ unknown", buf, 0xCu);
    }

LABEL_31:
    goto LABEL_32;
  }

  v14 = [v4 PKStringForKey:@"updateUserInfoSubType"];
  v5->_updateUserInfoSubType = PKFeatureApplicationUpdateUserInfoSubTypeFromString(v14);
  v15 = [v4 PKStringForKey:@"applicationState"];
  v5->_applicationState = PKFeatureApplicationStateFromString(v15);
  v16 = [v4 PKStringForKey:@"applicationStateReason"];
  v5->_applicationStateReason = PKFeatureApplicationStateReasonFromString(v16);
  applicationState = v5->_applicationState;
  if (applicationState)
  {
    v18 = v5->_applicationState;
    if (applicationState == 6)
    {
      v19 = [v4 PKDictionaryForKey:@"offerDetails"];
      if (v19 || ([v4 PKDictionaryForKey:@"offer"], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v20 = v19;
        v21 = [[PKFeatureApplicationOfferDetails alloc] initWithDictionary:v19];
        applicationOfferDetails = v5->_applicationOfferDetails;
        v5->_applicationOfferDetails = v21;
      }

      v18 = v5->_applicationState;
    }

    if (v18 == 7)
    {
      v23 = [v4 PKDictionaryForKey:@"declineDetails"];
      if (v23)
      {
        v24 = [[PKFeatureApplicationDeclineDetails alloc] initWithDictionary:v23];
        declineDetails = v5->_declineDetails;
        v5->_declineDetails = v24;
      }
    }

    v26 = [v4 PKStringForKey:@"applicationTermsIdentifier"];
    applicationTermsIdentifier = v5->_applicationTermsIdentifier;
    v5->_applicationTermsIdentifier = v26;

    v28 = [v4 PKDateForKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v28;

    v30 = [v4 PKStringForKey:@"businessChatIdentifier"];
    businessChatIdentifier = v5->_businessChatIdentifier;
    v5->_businessChatIdentifier = v30;

    v32 = [v4 PKStringForKey:@"coreIDVServiceProviderName"];
    coreIDVServiceProviderName = v5->_coreIDVServiceProviderName;
    v5->_coreIDVServiceProviderName = v32;

    v34 = [v4 PKStringForKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v34;

    v36 = [v4 PKStringForKey:@"referenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v36;

    if (v5->_applicationType == 2)
    {
      v38 = [v4 PKDictionaryForKey:@"invitationDetails"];
      if (v38)
      {
        v39 = [[PKFeatureApplicationInvitationDetails alloc] initWithDictionary:v38];
        invitationDetails = v5->_invitationDetails;
        v5->_invitationDetails = v39;
      }
    }

    v41 = [v4 PKStringForKey:@"preliminaryAssessmentIdentifier"];
    preliminaryAssessmentIdentifier = v5->_preliminaryAssessmentIdentifier;
    v5->_preliminaryAssessmentIdentifier = v41;
  }

  else
  {
    preliminaryAssessmentIdentifier = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(preliminaryAssessmentIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, preliminaryAssessmentIdentifier, OS_LOG_TYPE_DEFAULT, "Error: Application state unknown", buf, 2u);
    }
  }

  if (applicationState)
  {
    goto LABEL_37;
  }

LABEL_33:
  v45 = 0;
LABEL_38:

  return v45;
}

- (BOOL)hasSufficientOTBForInstallmentConfiguration:(id)a3
{
  v4 = [a3 openToBuyThresholdAmount];
  v5 = [(PKFeatureApplicationOfferDetails *)self->_applicationOfferDetails creditLimit];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v7 = [v5 compare:v4] != -1;
  }

  return v7;
}

- (NSData)authenticationSignaturePayload
{
  if (self->_applicationType == 2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v4 = [(PKFeatureApplicationInvitationDetails *)self->_invitationDetails accountUserAltDSID];
    [v3 appendString:v4];

    v5 = PKAccountAccessLevelToString([(PKFeatureApplicationInvitationDetails *)self->_invitationDetails accountUserAccessLevel]);
    [v3 appendString:v5];

    if ([(NSString *)self->_accountIdentifier length])
    {
      [v3 appendString:self->_accountIdentifier];
    }

    v6 = [v3 dataUsingEncoding:4];
    v7 = [v6 SHA256Hash];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PKFeatureApplication)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = PKFeatureApplication;
  v5 = [(PKFeatureApplication *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationBaseURL"];
    applicationBaseURL = v5->_applicationBaseURL;
    v5->_applicationBaseURL = v8;

    v5->_feature = [v4 decodeIntegerForKey:@"feature"];
    v5->_applicationType = [v4 decodeIntegerForKey:@"applicationType"];
    v5->_updateUserInfoSubType = [v4 decodeIntegerForKey:@"updateUserInfoSubType"];
    v5->_applicationState = [v4 decodeIntegerForKey:@"applicationState"];
    v5->_applicationStateReason = [v4 decodeIntegerForKey:@"applicationStateReason"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationTermsIdentifier"];
    applicationTermsIdentifier = v5->_applicationTermsIdentifier;
    v5->_applicationTermsIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationOfferDetails"];
    applicationOfferDetails = v5->_applicationOfferDetails;
    v5->_applicationOfferDetails = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"declineDetails"];
    declineDetails = v5->_declineDetails;
    v5->_declineDetails = v14;

    v5->_applicationStateDirty = [v4 decodeBoolForKey:@"applicationStateDirty"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"businessChatIdentifier"];
    businessChatIdentifier = v5->_businessChatIdentifier;
    v5->_businessChatIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coreIDVServiceProviderName"];
    coreIDVServiceProviderName = v5->_coreIDVServiceProviderName;
    v5->_coreIDVServiceProviderName = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationDetails"];
    invitationDetails = v5->_invitationDetails;
    v5->_invitationDetails = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preliminaryAssessmentIdentifier"];
    preliminaryAssessmentIdentifier = v5->_preliminaryAssessmentIdentifier;
    v5->_preliminaryAssessmentIdentifier = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  applicationIdentifier = self->_applicationIdentifier;
  v5 = a3;
  [v5 encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];
  [v5 encodeObject:self->_applicationBaseURL forKey:@"applicationBaseURL"];
  [v5 encodeInteger:self->_applicationState forKey:@"applicationState"];
  [v5 encodeInteger:self->_applicationType forKey:@"applicationType"];
  [v5 encodeInteger:self->_updateUserInfoSubType forKey:@"updateUserInfoSubType"];
  [v5 encodeInteger:self->_feature forKey:@"feature"];
  [v5 encodeInteger:self->_applicationStateReason forKey:@"applicationStateReason"];
  [v5 encodeObject:self->_applicationTermsIdentifier forKey:@"applicationTermsIdentifier"];
  [v5 encodeObject:self->_applicationOfferDetails forKey:@"applicationOfferDetails"];
  [v5 encodeObject:self->_declineDetails forKey:@"declineDetails"];
  [v5 encodeBool:self->_applicationStateDirty forKey:@"applicationStateDirty"];
  [v5 encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [v5 encodeObject:self->_businessChatIdentifier forKey:@"businessChatIdentifier"];
  [v5 encodeObject:self->_coreIDVServiceProviderName forKey:@"coreIDVServiceProviderName"];
  [v5 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [v5 encodeObject:self->_referenceIdentifier forKey:@"referenceIdentifier"];
  [v5 encodeObject:self->_invitationDetails forKey:@"invitationDetails"];
  [v5 encodeObject:self->_preliminaryAssessmentIdentifier forKey:@"preliminaryAssessmentIdentifier"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"applicationIdentifier: '%@'; ", self->_applicationIdentifier];
  [v3 appendFormat:@"applicationBaseURL: '%@'; ", self->_applicationBaseURL];
  v4 = PKFeatureApplicationStateToString(self->_applicationState);
  [v3 appendFormat:@"state: '%@'; ", v4];

  v5 = PKFeatureApplicationStateReasonToString(self->_applicationStateReason);
  [v3 appendFormat:@"applicationStateReason: '%@'; ", v5];

  v6 = PKFeatureIdentifierToString(self->_feature);
  [v3 appendFormat:@"feature: '%@'; ", v6];

  v7 = PKFeatureApplicationTypeToString(self->_applicationType);
  [v3 appendFormat:@"applicationType: '%@'; ", v7];

  v8 = self->_updateUserInfoSubType - 1;
  if (v8 > 3)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E79E0888[v8];
  }

  [v3 appendFormat:@"updateUserInfoSubType: '%@'; ", v9];
  [v3 appendFormat:@"applicationTermsIdentifier: '%@'; ", self->_applicationTermsIdentifier];
  v10 = [(PKFeatureApplicationOfferDetails *)self->_applicationOfferDetails description];
  [v3 appendFormat:@"offerDetails: %@; ", v10];

  v11 = [(PKFeatureApplicationDeclineDetails *)self->_declineDetails description];
  [v3 appendFormat:@"declineDetails: %@; ", v11];

  if (self->_applicationStateDirty)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v3 appendFormat:@"applicationStateDirty: %@; ", v12];
  v13 = [(NSDate *)self->_lastUpdated description];
  [v3 appendFormat:@"lastUpdated: %@; ", v13];

  [v3 appendFormat:@"businessChatIdentifier: %@; ", self->_businessChatIdentifier];
  [v3 appendFormat:@"coreIDVServiceProviderName: %@; ", self->_coreIDVServiceProviderName];
  [v3 appendFormat:@"accountIdentifier: '%@'; ", self->_accountIdentifier];
  [v3 appendFormat:@"referenceIdentifier: '%@'; ", self->_referenceIdentifier];
  [v3 appendFormat:@"invitationDetails: '%@'; ", self->_invitationDetails];
  [v3 appendFormat:@"preliminaryAssessmentIdentifier: '%@'; ", self->_preliminaryAssessmentIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_39;
  }

  applicationIdentifier = self->_applicationIdentifier;
  v6 = v4[2];
  if (applicationIdentifier && v6)
  {
    if (([(NSString *)applicationIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (applicationIdentifier != v6)
  {
    goto LABEL_39;
  }

  applicationBaseURL = self->_applicationBaseURL;
  v8 = v4[3];
  if (applicationBaseURL && v8)
  {
    if (([(NSURL *)applicationBaseURL isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (applicationBaseURL != v8)
  {
    goto LABEL_39;
  }

  if (self->_feature != v4[4])
  {
    goto LABEL_39;
  }

  applicationOfferDetails = self->_applicationOfferDetails;
  v10 = v4[10];
  if (applicationOfferDetails && v10)
  {
    if (![(PKFeatureApplicationOfferDetails *)applicationOfferDetails isEqual:?])
    {
      goto LABEL_39;
    }
  }

  else if (applicationOfferDetails != v10)
  {
    goto LABEL_39;
  }

  declineDetails = self->_declineDetails;
  v12 = v4[11];
  if (declineDetails && v12)
  {
    if (![(PKFeatureApplicationDeclineDetails *)declineDetails isEqual:?])
    {
      goto LABEL_39;
    }
  }

  else if (declineDetails != v12)
  {
    goto LABEL_39;
  }

  if (self->_applicationState != v4[8] || self->_applicationType != v4[5] || self->_updateUserInfoSubType != v4[7] || self->_applicationStateReason != v4[9])
  {
    goto LABEL_39;
  }

  v13 = v4[12];
  v14 = self->_applicationTermsIdentifier;
  v15 = v13;
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    LOBYTE(v17) = 0;
    if (!v14 || !v15)
    {
      goto LABEL_72;
    }

    v17 = [(NSString *)v14 isEqualToString:v15];

    if (!v17)
    {
      goto LABEL_40;
    }
  }

  if (self->_applicationStateDirty != *(v4 + 8))
  {
    goto LABEL_39;
  }

  lastUpdated = self->_lastUpdated;
  v19 = v4[13];
  if (lastUpdated && v19)
  {
    if (([(NSDate *)lastUpdated isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (lastUpdated != v19)
  {
    goto LABEL_39;
  }

  v21 = v4[14];
  v14 = self->_businessChatIdentifier;
  v22 = v21;
  v16 = v22;
  if (v14 != v22)
  {
    LOBYTE(v17) = 0;
    if (v14 && v22)
    {
      v17 = [(NSString *)v14 isEqualToString:v22];

      if (!v17)
      {
        goto LABEL_40;
      }

      goto LABEL_47;
    }

LABEL_72:

    goto LABEL_40;
  }

LABEL_47:
  coreIDVServiceProviderName = self->_coreIDVServiceProviderName;
  v24 = v4[15];
  if (coreIDVServiceProviderName && v24)
  {
    if (([(NSString *)coreIDVServiceProviderName isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (coreIDVServiceProviderName != v24)
  {
    goto LABEL_39;
  }

  accountIdentifier = self->_accountIdentifier;
  v26 = v4[16];
  if (accountIdentifier && v26)
  {
    if (([(NSString *)accountIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (accountIdentifier != v26)
  {
    goto LABEL_39;
  }

  referenceIdentifier = self->_referenceIdentifier;
  v28 = v4[6];
  if (referenceIdentifier && v28)
  {
    if (([(NSString *)referenceIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (referenceIdentifier != v28)
  {
    goto LABEL_39;
  }

  invitationDetails = self->_invitationDetails;
  v30 = v4[17];
  if (invitationDetails && v30)
  {
    if ([(PKFeatureApplicationInvitationDetails *)invitationDetails isEqual:?])
    {
LABEL_67:
      preliminaryAssessmentIdentifier = self->_preliminaryAssessmentIdentifier;
      v32 = v4[18];
      v14 = preliminaryAssessmentIdentifier;
      v33 = v32;
      v16 = v33;
      if (v14 == v33)
      {
        LOBYTE(v17) = 1;
      }

      else
      {
        LOBYTE(v17) = 0;
        if (v14 && v33)
        {
          LOBYTE(v17) = [(NSString *)v14 isEqualToString:v33];
        }
      }

      goto LABEL_72;
    }
  }

  else if (invitationDetails == v30)
  {
    goto LABEL_67;
  }

LABEL_39:
  LOBYTE(v17) = 0;
LABEL_40:

  return v17;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_applicationIdentifier];
  [v3 safelyAddObject:self->_applicationOfferDetails];
  [v3 safelyAddObject:self->_declineDetails];
  [v3 safelyAddObject:self->_applicationBaseURL];
  [v3 safelyAddObject:self->_applicationTermsIdentifier];
  [v3 safelyAddObject:self->_lastUpdated];
  [v3 safelyAddObject:self->_businessChatIdentifier];
  [v3 safelyAddObject:self->_coreIDVServiceProviderName];
  [v3 safelyAddObject:self->_accountIdentifier];
  [v3 safelyAddObject:self->_referenceIdentifier];
  [v3 safelyAddObject:self->_invitationDetails];
  [v3 safelyAddObject:self->_preliminaryAssessmentIdentifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_applicationState - v4 + 32 * v4;
  v6 = self->_applicationStateReason - v5 + 32 * v5;
  v7 = self->_feature - v6 + 32 * v6;
  v8 = self->_applicationType - v7 + 32 * v7;
  v9 = self->_updateUserInfoSubType - v8 + 32 * v8;
  v10 = self->_applicationStateDirty - v9 + 32 * v9;

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKFeatureApplication allocWithZone:](PKFeatureApplication init];
  v6 = [(NSString *)self->_applicationIdentifier copyWithZone:a3];
  applicationIdentifier = v5->_applicationIdentifier;
  v5->_applicationIdentifier = v6;

  v8 = [(PKFeatureApplicationOfferDetails *)self->_applicationOfferDetails copyWithZone:a3];
  applicationOfferDetails = v5->_applicationOfferDetails;
  v5->_applicationOfferDetails = v8;

  v10 = [(PKFeatureApplicationDeclineDetails *)self->_declineDetails copyWithZone:a3];
  declineDetails = v5->_declineDetails;
  v5->_declineDetails = v10;

  v12 = [(NSURL *)self->_applicationBaseURL copyWithZone:a3];
  applicationBaseURL = v5->_applicationBaseURL;
  v5->_applicationBaseURL = v12;

  v14 = [(NSString *)self->_applicationTermsIdentifier copyWithZone:a3];
  applicationTermsIdentifier = v5->_applicationTermsIdentifier;
  v5->_applicationTermsIdentifier = v14;

  v16 = [(NSDate *)self->_lastUpdated copyWithZone:a3];
  lastUpdated = v5->_lastUpdated;
  v5->_lastUpdated = v16;

  v5->_applicationState = self->_applicationState;
  v5->_applicationStateReason = self->_applicationStateReason;
  v5->_feature = self->_feature;
  v5->_applicationStateReason = self->_applicationStateReason;
  objc_storeStrong(&v5->_businessChatIdentifier, self->_businessChatIdentifier);
  objc_storeStrong(&v5->_coreIDVServiceProviderName, self->_coreIDVServiceProviderName);
  v5->_updateUserInfoSubType = self->_updateUserInfoSubType;
  v5->_applicationType = self->_applicationType;
  v18 = [(NSString *)self->_accountIdentifier copyWithZone:a3];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v18;

  v20 = [(NSString *)self->_referenceIdentifier copyWithZone:a3];
  referenceIdentifier = v5->_referenceIdentifier;
  v5->_referenceIdentifier = v20;

  v22 = [(PKFeatureApplicationInvitationDetails *)self->_invitationDetails copyWithZone:a3];
  invitationDetails = v5->_invitationDetails;
  v5->_invitationDetails = v22;

  v24 = [(NSString *)self->_preliminaryAssessmentIdentifier copyWithZone:a3];
  preliminaryAssessmentIdentifier = v5->_preliminaryAssessmentIdentifier;
  v5->_preliminaryAssessmentIdentifier = v24;

  return v5;
}

@end