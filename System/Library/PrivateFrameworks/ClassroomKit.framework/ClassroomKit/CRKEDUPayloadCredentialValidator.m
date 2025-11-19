@interface CRKEDUPayloadCredentialValidator
- (BOOL)areCredentialsValidForOneToOneDeviceWithError:(id *)a3;
- (BOOL)areCredentialsValidForSharediPadDeviceWithError:(id *)a3;
- (BOOL)areCredentialsValidWithError:(id *)a3;
- (BOOL)hasPayloadCertificate;
- (BOOL)isInstructor;
- (BOOL)isStudent;
- (BOOL)validateAnchorsWithKeyPath:(id)a3 payloadKey:(id)a4 error:(id *)a5;
- (CRKEDUPayloadCredentialValidator)initWithPayload:(id)a3 isStub:(BOOL)a4 isEphemeralMultiUserDevice:(BOOL)a5;
@end

@implementation CRKEDUPayloadCredentialValidator

- (CRKEDUPayloadCredentialValidator)initWithPayload:(id)a3 isStub:(BOOL)a4 isEphemeralMultiUserDevice:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CRKEDUPayloadCredentialValidator;
  v10 = [(CRKEDUPayloadCredentialValidator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_payload, a3);
    v11->_stub = a4;
    v11->_ephemeralMultiUserDevice = a5;
  }

  return v11;
}

- (BOOL)areCredentialsValidWithError:(id *)a3
{
  if ([(CRKEDUPayloadCredentialValidator *)self isStub])
  {
    return 1;
  }

  if ([(CRKEDUPayloadCredentialValidator *)self isEphemeralMultiUserDevice])
  {

    return [(CRKEDUPayloadCredentialValidator *)self areCredentialsValidForSharediPadDeviceWithError:a3];
  }

  else
  {

    return [(CRKEDUPayloadCredentialValidator *)self areCredentialsValidForOneToOneDeviceWithError:a3];
  }
}

- (BOOL)areCredentialsValidForSharediPadDeviceWithError:(id *)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [(CRKEDUPayloadCredentialValidator *)self hasPayloadCertificate];
  v6 = v5 ^ [(CRKEDUPayloadCredentialValidator *)self validateLeaderAnchorsWithError:0];
  if (v6 == 1)
  {
    if (v5)
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
    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] crk_allOrNoneKeysErrorWithProvidedKeys:v9 allOrNoneKeys:v10];
    }
  }

  return v6 ^ 1;
}

- (BOOL)areCredentialsValidForOneToOneDeviceWithError:(id *)a3
{
  if (![(CRKEDUPayloadCredentialValidator *)self hasPayloadCertificate])
  {
    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] crk_missingFieldErrorWithField:@"PayloadCertificateUUID"];
    }

    return 0;
  }

  v5 = [(CRKEDUPayloadCredentialValidator *)self isStudent];
  v6 = [(CRKEDUPayloadCredentialValidator *)self isInstructor];
  if (v5 && v6)
  {
    if (a3)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = [(CRKEDUPayloadCredentialValidator *)self payload];
      v9 = [v8 userIdentifier];
      v10 = [v7 crk_topLevelUserIsBothLeaderAndMemberErrorWithUserIdentifier:v9];
LABEL_15:
      *a3 = v10;

      return 0;
    }

    return 0;
  }

  if (!v5 && !v6)
  {
    if (a3)
    {
      v12 = MEMORY[0x277CCA9B8];
      v8 = [(CRKEDUPayloadCredentialValidator *)self payload];
      v9 = [v8 userIdentifier];
      v10 = [v12 crk_topLevelUserIsNeitherLeaderNorMemberErrorWithUserIdentifier:v9];
      goto LABEL_15;
    }

    return 0;
  }

  if (v5)
  {

    return [(CRKEDUPayloadCredentialValidator *)self validateLeaderAnchorsWithError:a3];
  }

  else
  {

    return [(CRKEDUPayloadCredentialValidator *)self validateMemberAnchorsWithError:a3];
  }
}

- (BOOL)validateAnchorsWithKeyPath:(id)a3 payloadKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CRKEDUPayloadCredentialValidator *)self payload];
  v11 = [v10 valueForKeyPath:v9];

  if (!v11)
  {
    if (!a5)
    {
      v13 = 0;
      goto LABEL_9;
    }

    v14 = [MEMORY[0x277CCA9B8] crk_missingFieldErrorWithField:v8];
    goto LABEL_7;
  }

  v12 = [v11 count];
  v13 = v12 != 0;
  if (a5 && !v12)
  {
    v14 = [MEMORY[0x277CCA9B8] crk_unsupportedValueErrorWithField:v8 value:v11];
LABEL_7:
    v13 = 0;
    *a5 = v14;
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
  v3 = [(CRKEDUPayloadCredentialValidator *)self payload];
  v4 = [v3 groups];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:@"LeaderIdentifiers"];
        v10 = [(CRKEDUPayloadCredentialValidator *)self payload];
        v11 = [v10 userIdentifier];
        v12 = [v9 containsObject:v11];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(CRKEDUPayloadCredentialValidator *)self payload];
  v4 = [v3 groups];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:@"MemberIdentifiers"];
        v10 = [(CRKEDUPayloadCredentialValidator *)self payload];
        v11 = [v10 userIdentifier];
        v12 = [v9 containsObject:v11];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v2 = [(CRKEDUPayloadCredentialValidator *)self payload];
  v3 = [v2 payloadCertificateUUID];
  v4 = v3 != 0;

  return v4;
}

@end