@interface CRKEDUPayloadCredentialValidator
- (BOOL)areCredentialsValidForOneToOneDeviceWithError:(id *)error;
- (BOOL)areCredentialsValidForSharediPadDeviceWithError:(id *)error;
- (BOOL)areCredentialsValidWithError:(id *)error;
- (BOOL)hasPayloadCertificate;
- (BOOL)isInstructor;
- (BOOL)isStudent;
- (BOOL)validateAnchorsWithKeyPath:(id)path payloadKey:(id)key error:(id *)error;
- (CRKEDUPayloadCredentialValidator)initWithPayload:(id)payload isStub:(BOOL)stub isEphemeralMultiUserDevice:(BOOL)device;
@end

@implementation CRKEDUPayloadCredentialValidator

- (CRKEDUPayloadCredentialValidator)initWithPayload:(id)payload isStub:(BOOL)stub isEphemeralMultiUserDevice:(BOOL)device
{
  payloadCopy = payload;
  v13.receiver = self;
  v13.super_class = CRKEDUPayloadCredentialValidator;
  v10 = [(CRKEDUPayloadCredentialValidator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_payload, payload);
    v11->_stub = stub;
    v11->_ephemeralMultiUserDevice = device;
  }

  return v11;
}

- (BOOL)areCredentialsValidWithError:(id *)error
{
  if ([(CRKEDUPayloadCredentialValidator *)self isStub])
  {
    return 1;
  }

  if ([(CRKEDUPayloadCredentialValidator *)self isEphemeralMultiUserDevice])
  {

    return [(CRKEDUPayloadCredentialValidator *)self areCredentialsValidForSharediPadDeviceWithError:error];
  }

  else
  {

    return [(CRKEDUPayloadCredentialValidator *)self areCredentialsValidForOneToOneDeviceWithError:error];
  }
}

- (BOOL)areCredentialsValidForSharediPadDeviceWithError:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  hasPayloadCertificate = [(CRKEDUPayloadCredentialValidator *)self hasPayloadCertificate];
  v6 = hasPayloadCertificate ^ [(CRKEDUPayloadCredentialValidator *)self validateLeaderAnchorsWithError:0];
  if (v6 == 1)
  {
    if (hasPayloadCertificate)
    {
      v7 = @"PayloadCertificateUUID";
    }

    else
    {
      v7 = @"LeaderPayloadCertificateAnchorUUID";
    }

    v8 = v7;
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v12[0] = @"PayloadCertificateUUID";
    v12[1] = @"LeaderPayloadCertificateAnchorUUID";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] crk_allOrNoneKeysErrorWithProvidedKeys:v9 allOrNoneKeys:v10];
    }
  }

  return v6 ^ 1;
}

- (BOOL)areCredentialsValidForOneToOneDeviceWithError:(id *)error
{
  if (![(CRKEDUPayloadCredentialValidator *)self hasPayloadCertificate])
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] crk_missingFieldErrorWithField:@"PayloadCertificateUUID"];
    }

    return 0;
  }

  isStudent = [(CRKEDUPayloadCredentialValidator *)self isStudent];
  isInstructor = [(CRKEDUPayloadCredentialValidator *)self isInstructor];
  if (isStudent && isInstructor)
  {
    if (error)
    {
      v7 = MEMORY[0x277CCA9B8];
      payload = [(CRKEDUPayloadCredentialValidator *)self payload];
      userIdentifier = [payload userIdentifier];
      v10 = [v7 crk_topLevelUserIsBothLeaderAndMemberErrorWithUserIdentifier:userIdentifier];
LABEL_15:
      *error = v10;

      return 0;
    }

    return 0;
  }

  if (!isStudent && !isInstructor)
  {
    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      payload = [(CRKEDUPayloadCredentialValidator *)self payload];
      userIdentifier = [payload userIdentifier];
      v10 = [v12 crk_topLevelUserIsNeitherLeaderNorMemberErrorWithUserIdentifier:userIdentifier];
      goto LABEL_15;
    }

    return 0;
  }

  if (isStudent)
  {

    return [(CRKEDUPayloadCredentialValidator *)self validateLeaderAnchorsWithError:error];
  }

  else
  {

    return [(CRKEDUPayloadCredentialValidator *)self validateMemberAnchorsWithError:error];
  }
}

- (BOOL)validateAnchorsWithKeyPath:(id)path payloadKey:(id)key error:(id *)error
{
  keyCopy = key;
  pathCopy = path;
  payload = [(CRKEDUPayloadCredentialValidator *)self payload];
  v11 = [payload valueForKeyPath:pathCopy];

  if (!v11)
  {
    if (!error)
    {
      v13 = 0;
      goto LABEL_9;
    }

    v14 = [MEMORY[0x277CCA9B8] crk_missingFieldErrorWithField:keyCopy];
    goto LABEL_7;
  }

  v12 = [v11 count];
  v13 = v12 != 0;
  if (error && !v12)
  {
    v14 = [MEMORY[0x277CCA9B8] crk_unsupportedValueErrorWithField:keyCopy value:v11];
LABEL_7:
    v13 = 0;
    *error = v14;
  }

LABEL_9:

  return v13;
}

- (BOOL)isInstructor
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  payload = [(CRKEDUPayloadCredentialValidator *)self payload];
  groups = [payload groups];

  v5 = [groups countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(groups);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:@"LeaderIdentifiers"];
        payload2 = [(CRKEDUPayloadCredentialValidator *)self payload];
        userIdentifier = [payload2 userIdentifier];
        v12 = [v9 containsObject:userIdentifier];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v6 = [groups countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)isStudent
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  payload = [(CRKEDUPayloadCredentialValidator *)self payload];
  groups = [payload groups];

  v5 = [groups countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(groups);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:@"MemberIdentifiers"];
        payload2 = [(CRKEDUPayloadCredentialValidator *)self payload];
        userIdentifier = [payload2 userIdentifier];
        v12 = [v9 containsObject:userIdentifier];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v6 = [groups countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)hasPayloadCertificate
{
  payload = [(CRKEDUPayloadCredentialValidator *)self payload];
  payloadCertificateUUID = [payload payloadCertificateUUID];
  v4 = payloadCertificateUUID != 0;

  return v4;
}

@end