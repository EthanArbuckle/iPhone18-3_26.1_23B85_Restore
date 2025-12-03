@interface PKFeatureApplication
- (BOOL)hasSufficientOTBForInstallmentConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (NSData)authenticationSignaturePayload;
- (PKFeatureApplication)initWithCoder:(id)coder;
- (PKFeatureApplication)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFeatureApplication

- (PKFeatureApplication)initWithDictionary:(id)dictionary
{
  v50 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v47.receiver = self;
  v47.super_class = PKFeatureApplication;
  v5 = [(PKFeatureApplication *)&v47 init];
  if (!v5)
  {
LABEL_37:
    v45 = v5;
    goto LABEL_38;
  }

  v6 = [dictionaryCopy PKStringForKey:@"applicationIdentifier"];
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

  v8 = [dictionaryCopy PKURLForKey:@"applicationBaseURL"];
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

  v10 = [dictionaryCopy PKStringForKey:@"featureIdentifier"];
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

  v12 = [dictionaryCopy PKStringForKey:@"applicationType"];
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

  v14 = [dictionaryCopy PKStringForKey:@"updateUserInfoSubType"];
  v5->_updateUserInfoSubType = PKFeatureApplicationUpdateUserInfoSubTypeFromString(v14);
  v15 = [dictionaryCopy PKStringForKey:@"applicationState"];
  v5->_applicationState = PKFeatureApplicationStateFromString(v15);
  v16 = [dictionaryCopy PKStringForKey:@"applicationStateReason"];
  v5->_applicationStateReason = PKFeatureApplicationStateReasonFromString(v16);
  applicationState = v5->_applicationState;
  if (applicationState)
  {
    v18 = v5->_applicationState;
    if (applicationState == 6)
    {
      v19 = [dictionaryCopy PKDictionaryForKey:@"offerDetails"];
      if (v19 || ([dictionaryCopy PKDictionaryForKey:@"offer"], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
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
      v23 = [dictionaryCopy PKDictionaryForKey:@"declineDetails"];
      if (v23)
      {
        v24 = [[PKFeatureApplicationDeclineDetails alloc] initWithDictionary:v23];
        declineDetails = v5->_declineDetails;
        v5->_declineDetails = v24;
      }
    }

    v26 = [dictionaryCopy PKStringForKey:@"applicationTermsIdentifier"];
    applicationTermsIdentifier = v5->_applicationTermsIdentifier;
    v5->_applicationTermsIdentifier = v26;

    v28 = [dictionaryCopy PKDateForKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v28;

    v30 = [dictionaryCopy PKStringForKey:@"businessChatIdentifier"];
    businessChatIdentifier = v5->_businessChatIdentifier;
    v5->_businessChatIdentifier = v30;

    v32 = [dictionaryCopy PKStringForKey:@"coreIDVServiceProviderName"];
    coreIDVServiceProviderName = v5->_coreIDVServiceProviderName;
    v5->_coreIDVServiceProviderName = v32;

    v34 = [dictionaryCopy PKStringForKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v34;

    v36 = [dictionaryCopy PKStringForKey:@"referenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v36;

    if (v5->_applicationType == 2)
    {
      v38 = [dictionaryCopy PKDictionaryForKey:@"invitationDetails"];
      if (v38)
      {
        v39 = [[PKFeatureApplicationInvitationDetails alloc] initWithDictionary:v38];
        invitationDetails = v5->_invitationDetails;
        v5->_invitationDetails = v39;
      }
    }

    v41 = [dictionaryCopy PKStringForKey:@"preliminaryAssessmentIdentifier"];
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

- (BOOL)hasSufficientOTBForInstallmentConfiguration:(id)configuration
{
  openToBuyThresholdAmount = [configuration openToBuyThresholdAmount];
  creditLimit = [(PKFeatureApplicationOfferDetails *)self->_applicationOfferDetails creditLimit];
  v6 = creditLimit;
  v7 = 0;
  if (openToBuyThresholdAmount && creditLimit)
  {
    v7 = [creditLimit compare:openToBuyThresholdAmount] != -1;
  }

  return v7;
}

- (NSData)authenticationSignaturePayload
{
  if (self->_applicationType == 2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    accountUserAltDSID = [(PKFeatureApplicationInvitationDetails *)self->_invitationDetails accountUserAltDSID];
    [v3 appendString:accountUserAltDSID];

    v5 = PKAccountAccessLevelToString([(PKFeatureApplicationInvitationDetails *)self->_invitationDetails accountUserAccessLevel]);
    [v3 appendString:v5];

    if ([(NSString *)self->_accountIdentifier length])
    {
      [v3 appendString:self->_accountIdentifier];
    }

    v6 = [v3 dataUsingEncoding:4];
    sHA256Hash = [v6 SHA256Hash];
  }

  else
  {
    sHA256Hash = 0;
  }

  return sHA256Hash;
}

- (PKFeatureApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = PKFeatureApplication;
  v5 = [(PKFeatureApplication *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBaseURL"];
    applicationBaseURL = v5->_applicationBaseURL;
    v5->_applicationBaseURL = v8;

    v5->_feature = [coderCopy decodeIntegerForKey:@"feature"];
    v5->_applicationType = [coderCopy decodeIntegerForKey:@"applicationType"];
    v5->_updateUserInfoSubType = [coderCopy decodeIntegerForKey:@"updateUserInfoSubType"];
    v5->_applicationState = [coderCopy decodeIntegerForKey:@"applicationState"];
    v5->_applicationStateReason = [coderCopy decodeIntegerForKey:@"applicationStateReason"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationTermsIdentifier"];
    applicationTermsIdentifier = v5->_applicationTermsIdentifier;
    v5->_applicationTermsIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationOfferDetails"];
    applicationOfferDetails = v5->_applicationOfferDetails;
    v5->_applicationOfferDetails = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"declineDetails"];
    declineDetails = v5->_declineDetails;
    v5->_declineDetails = v14;

    v5->_applicationStateDirty = [coderCopy decodeBoolForKey:@"applicationStateDirty"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"businessChatIdentifier"];
    businessChatIdentifier = v5->_businessChatIdentifier;
    v5->_businessChatIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coreIDVServiceProviderName"];
    coreIDVServiceProviderName = v5->_coreIDVServiceProviderName;
    v5->_coreIDVServiceProviderName = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationDetails"];
    invitationDetails = v5->_invitationDetails;
    v5->_invitationDetails = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preliminaryAssessmentIdentifier"];
    preliminaryAssessmentIdentifier = v5->_preliminaryAssessmentIdentifier;
    v5->_preliminaryAssessmentIdentifier = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  applicationIdentifier = self->_applicationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];
  [coderCopy encodeObject:self->_applicationBaseURL forKey:@"applicationBaseURL"];
  [coderCopy encodeInteger:self->_applicationState forKey:@"applicationState"];
  [coderCopy encodeInteger:self->_applicationType forKey:@"applicationType"];
  [coderCopy encodeInteger:self->_updateUserInfoSubType forKey:@"updateUserInfoSubType"];
  [coderCopy encodeInteger:self->_feature forKey:@"feature"];
  [coderCopy encodeInteger:self->_applicationStateReason forKey:@"applicationStateReason"];
  [coderCopy encodeObject:self->_applicationTermsIdentifier forKey:@"applicationTermsIdentifier"];
  [coderCopy encodeObject:self->_applicationOfferDetails forKey:@"applicationOfferDetails"];
  [coderCopy encodeObject:self->_declineDetails forKey:@"declineDetails"];
  [coderCopy encodeBool:self->_applicationStateDirty forKey:@"applicationStateDirty"];
  [coderCopy encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [coderCopy encodeObject:self->_businessChatIdentifier forKey:@"businessChatIdentifier"];
  [coderCopy encodeObject:self->_coreIDVServiceProviderName forKey:@"coreIDVServiceProviderName"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_referenceIdentifier forKey:@"referenceIdentifier"];
  [coderCopy encodeObject:self->_invitationDetails forKey:@"invitationDetails"];
  [coderCopy encodeObject:self->_preliminaryAssessmentIdentifier forKey:@"preliminaryAssessmentIdentifier"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_39;
  }

  applicationIdentifier = self->_applicationIdentifier;
  v6 = equalCopy[2];
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
  v8 = equalCopy[3];
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

  if (self->_feature != equalCopy[4])
  {
    goto LABEL_39;
  }

  applicationOfferDetails = self->_applicationOfferDetails;
  v10 = equalCopy[10];
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
  v12 = equalCopy[11];
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

  if (self->_applicationState != equalCopy[8] || self->_applicationType != equalCopy[5] || self->_updateUserInfoSubType != equalCopy[7] || self->_applicationStateReason != equalCopy[9])
  {
    goto LABEL_39;
  }

  v13 = equalCopy[12];
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

  if (self->_applicationStateDirty != *(equalCopy + 8))
  {
    goto LABEL_39;
  }

  lastUpdated = self->_lastUpdated;
  v19 = equalCopy[13];
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

  v21 = equalCopy[14];
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
  v24 = equalCopy[15];
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
  v26 = equalCopy[16];
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
  v28 = equalCopy[6];
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
  v30 = equalCopy[17];
  if (invitationDetails && v30)
  {
    if ([(PKFeatureApplicationInvitationDetails *)invitationDetails isEqual:?])
    {
LABEL_67:
      preliminaryAssessmentIdentifier = self->_preliminaryAssessmentIdentifier;
      v32 = equalCopy[18];
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_applicationIdentifier];
  [array safelyAddObject:self->_applicationOfferDetails];
  [array safelyAddObject:self->_declineDetails];
  [array safelyAddObject:self->_applicationBaseURL];
  [array safelyAddObject:self->_applicationTermsIdentifier];
  [array safelyAddObject:self->_lastUpdated];
  [array safelyAddObject:self->_businessChatIdentifier];
  [array safelyAddObject:self->_coreIDVServiceProviderName];
  [array safelyAddObject:self->_accountIdentifier];
  [array safelyAddObject:self->_referenceIdentifier];
  [array safelyAddObject:self->_invitationDetails];
  [array safelyAddObject:self->_preliminaryAssessmentIdentifier];
  v4 = PKCombinedHash(17, array);
  v5 = self->_applicationState - v4 + 32 * v4;
  v6 = self->_applicationStateReason - v5 + 32 * v5;
  v7 = self->_feature - v6 + 32 * v6;
  v8 = self->_applicationType - v7 + 32 * v7;
  v9 = self->_updateUserInfoSubType - v8 + 32 * v8;
  v10 = self->_applicationStateDirty - v9 + 32 * v9;

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKFeatureApplication allocWithZone:](PKFeatureApplication init];
  v6 = [(NSString *)self->_applicationIdentifier copyWithZone:zone];
  applicationIdentifier = v5->_applicationIdentifier;
  v5->_applicationIdentifier = v6;

  v8 = [(PKFeatureApplicationOfferDetails *)self->_applicationOfferDetails copyWithZone:zone];
  applicationOfferDetails = v5->_applicationOfferDetails;
  v5->_applicationOfferDetails = v8;

  v10 = [(PKFeatureApplicationDeclineDetails *)self->_declineDetails copyWithZone:zone];
  declineDetails = v5->_declineDetails;
  v5->_declineDetails = v10;

  v12 = [(NSURL *)self->_applicationBaseURL copyWithZone:zone];
  applicationBaseURL = v5->_applicationBaseURL;
  v5->_applicationBaseURL = v12;

  v14 = [(NSString *)self->_applicationTermsIdentifier copyWithZone:zone];
  applicationTermsIdentifier = v5->_applicationTermsIdentifier;
  v5->_applicationTermsIdentifier = v14;

  v16 = [(NSDate *)self->_lastUpdated copyWithZone:zone];
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
  v18 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v18;

  v20 = [(NSString *)self->_referenceIdentifier copyWithZone:zone];
  referenceIdentifier = v5->_referenceIdentifier;
  v5->_referenceIdentifier = v20;

  v22 = [(PKFeatureApplicationInvitationDetails *)self->_invitationDetails copyWithZone:zone];
  invitationDetails = v5->_invitationDetails;
  v5->_invitationDetails = v22;

  v24 = [(NSString *)self->_preliminaryAssessmentIdentifier copyWithZone:zone];
  preliminaryAssessmentIdentifier = v5->_preliminaryAssessmentIdentifier;
  v5->_preliminaryAssessmentIdentifier = v24;

  return v5;
}

@end