@interface HMDSiriEndpointSessionStateTLV
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDSiriEndpointSessionStateTLV)init;
- (HMDSiriEndpointSessionStateTLV)initWithSessionState:(id)state hubIdentifier:(id)identifier;
- (NSString)description;
- (NSUUID)hubUUID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDSiriEndpointSessionStateTLV

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  sessionState = [(HMDSiriEndpointSessionStateTLV *)self sessionState];
  hubIdentifier = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];
  v6 = [v3 stringWithFormat:@"<HMDSiriEndpointSessionStateTLV sessionState=%@, hubIdentifier=%@>", sessionState, hubIdentifier];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      sessionState = [(HMDSiriEndpointSessionStateTLV *)self sessionState];
      sessionState2 = [(HMDSiriEndpointSessionStateTLV *)v6 sessionState];
      if (sessionState != sessionState2)
      {
        sessionState3 = [(HMDSiriEndpointSessionStateTLV *)self sessionState];
        sessionState4 = [(HMDSiriEndpointSessionStateTLV *)v6 sessionState];
        if (![sessionState3 isEqual:sessionState4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = sessionState3;
      }

      hubIdentifier = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];
      hubIdentifier2 = [(HMDSiriEndpointSessionStateTLV *)v6 hubIdentifier];
      if (hubIdentifier == hubIdentifier2)
      {
        v10 = 1;
      }

      else
      {
        hubIdentifier3 = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];
        hubIdentifier4 = [(HMDSiriEndpointSessionStateTLV *)v6 hubIdentifier];
        v10 = [hubIdentifier3 isEqual:hubIdentifier4];
      }

      sessionState3 = v16;
      if (sessionState == sessionState2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDSiriEndpointSessionStateTLV allocWithZone:zone];
  sessionState = [(HMDSiriEndpointSessionStateTLV *)self sessionState];
  hubIdentifier = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];
  v7 = [(HMDSiriEndpointSessionStateTLV *)v4 initWithSessionState:sessionState hubIdentifier:hubIdentifier];

  return v7;
}

- (id)serializeWithError:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  TLV8BufferInit();
  sessionState = [(HMDSiriEndpointSessionStateTLV *)self sessionState];

  if (sessionState)
  {
    sessionState2 = [(HMDSiriEndpointSessionStateTLV *)self sessionState];
    v24 = 0;
    v7 = [sessionState2 serializeWithError:&v24];
    v8 = v24;

    if (v8)
    {
      goto LABEL_6;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_21:
      if (error)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *error = v13 = 0;
        goto LABEL_26;
      }

      v8 = 0;
      goto LABEL_25;
    }
  }

  hubIdentifier = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];

  if (!hubIdentifier)
  {
LABEL_23:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:?];
    v8 = 0;
    goto LABEL_26;
  }

  hubIdentifier2 = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];
  v23 = 0;
  v7 = [hubIdentifier2 serializeWithError:&v23];
  v8 = v23;

  if (!v8)
  {
    bytes = [v7 bytes];
    v15 = bytes + [v7 length];
    do
    {
      if ((v15 - bytes) >= 255)
      {
        v16 = 255;
      }

      else
      {
        v16 = v15 - bytes;
      }

      v17 = TLV8BufferAppend();
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      bytes += v18;
      if (v17)
      {
        v19 = 1;
      }

      else
      {
        v19 = bytes >= v15;
      }
    }

    while (!v19);
    v20 = v17;

    if (v20)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

LABEL_6:

  if (error)
  {
    v12 = v8;
    v13 = 0;
    *error = v8;
    goto LABEL_26;
  }

LABEL_25:
  v13 = 0;
LABEL_26:
  TLV8BufferFree();

  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v9 = 0;
    v10 = 0;
LABEL_16:
    [(HMDSiriEndpointSessionStateTLV *)self setSessionState:v10, errorCopy];
    [(HMDSiriEndpointSessionStateTLV *)self setHubIdentifier:v9];
    v11 = 0;
    v18 = 1;
    goto LABEL_23;
  }

  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = bytes + v8;
  while (1)
  {
    v29 = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    if (TLV8GetNext())
    {
      if (errorCopy)
      {
        HMErrorFromOSStatus();
        *errorCopy = v18 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (!v28)
    {
      break;
    }

    if (v29 == 2)
    {
      v24 = v11;
      v13 = HAPTLVParseContiguousTlvs();
      v15 = v24;

      if (!v15)
      {
        v23 = 0;
        v17 = [MEMORY[0x277CBEA90] parsedFromData:v13 error:&v23];
        v15 = v23;
        v16 = v9;
        v9 = v17;
LABEL_10:
      }

      v11 = v15;
      goto LABEL_12;
    }

    if (v29 == 1)
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v25 = v11;
      v14 = [HMDSiriEndpointSessionStateTypeWrapper parsedFromData:v13 error:&v25];
      v15 = v25;

      v16 = v10;
      v10 = v14;
      goto LABEL_10;
    }

LABEL_12:
    if (v26 >= v12)
    {
      if (!v11)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v11 = v19;
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (errorCopy)
  {
    v20 = v11;
    v18 = 0;
    *errorCopy = v11;
    goto LABEL_23;
  }

LABEL_22:
  v18 = 0;
LABEL_23:

  return v18;
}

- (HMDSiriEndpointSessionStateTLV)initWithSessionState:(id)state hubIdentifier:(id)identifier
{
  stateCopy = state;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HMDSiriEndpointSessionStateTLV;
  v9 = [(HMDSiriEndpointSessionStateTLV *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionState, state);
    objc_storeStrong(&v10->_hubIdentifier, identifier);
  }

  return v10;
}

- (HMDSiriEndpointSessionStateTLV)init
{
  v3.receiver = self;
  v3.super_class = HMDSiriEndpointSessionStateTLV;
  return [(HMDSiriEndpointSessionStateTLV *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDSiriEndpointSessionStateTLV);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDSiriEndpointSessionStateTLV *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (NSUUID)hubUUID
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v9[1] = 0;
  hubIdentifier = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];
  [hubIdentifier getBytes:v9 length:16];

  v3 = 0;
  for (i = 15; i > v3; --i)
  {
    v5 = *(v9 + v3);
    *(v9 + v3) = *(v9 + i);
    *(v9 + i) = v5;
    ++v3;
  }

  hmf_zeroUUID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v9];
  if (!hmf_zeroUUID)
  {
    hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  }

  v7 = *MEMORY[0x277D85DE8];

  return hmf_zeroUUID;
}

@end