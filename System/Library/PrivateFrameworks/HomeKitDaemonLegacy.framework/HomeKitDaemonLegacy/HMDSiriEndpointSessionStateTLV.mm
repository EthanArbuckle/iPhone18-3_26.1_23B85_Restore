@interface HMDSiriEndpointSessionStateTLV
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDSiriEndpointSessionStateTLV)init;
- (HMDSiriEndpointSessionStateTLV)initWithSessionState:(id)a3 hubIdentifier:(id)a4;
- (NSString)description;
- (NSUUID)hubUUID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDSiriEndpointSessionStateTLV

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDSiriEndpointSessionStateTLV *)self sessionState];
  v5 = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];
  v6 = [v3 stringWithFormat:@"<HMDSiriEndpointSessionStateTLV sessionState=%@, hubIdentifier=%@>", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HMDSiriEndpointSessionStateTLV *)self sessionState];
      v8 = [(HMDSiriEndpointSessionStateTLV *)v6 sessionState];
      if (v7 != v8)
      {
        v9 = [(HMDSiriEndpointSessionStateTLV *)self sessionState];
        v3 = [(HMDSiriEndpointSessionStateTLV *)v6 sessionState];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];
      v12 = [(HMDSiriEndpointSessionStateTLV *)v6 hubIdentifier];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];
        v14 = [(HMDSiriEndpointSessionStateTLV *)v6 hubIdentifier];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDSiriEndpointSessionStateTLV allocWithZone:a3];
  v5 = [(HMDSiriEndpointSessionStateTLV *)self sessionState];
  v6 = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];
  v7 = [(HMDSiriEndpointSessionStateTLV *)v4 initWithSessionState:v5 hubIdentifier:v6];

  return v7;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HMDSiriEndpointSessionStateTLV *)self sessionState];

  if (v5)
  {
    v6 = [(HMDSiriEndpointSessionStateTLV *)self sessionState];
    v24 = 0;
    v7 = [v6 serializeWithError:&v24];
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
      if (a3)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *a3 = v13 = 0;
        goto LABEL_26;
      }

      v8 = 0;
      goto LABEL_25;
    }
  }

  v10 = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];

  if (!v10)
  {
LABEL_23:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:?];
    v8 = 0;
    goto LABEL_26;
  }

  v11 = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];
  v23 = 0;
  v7 = [v11 serializeWithError:&v23];
  v8 = v23;

  if (!v8)
  {
    v14 = [v7 bytes];
    v15 = v14 + [v7 length];
    do
    {
      if ((v15 - v14) >= 255)
      {
        v16 = 255;
      }

      else
      {
        v16 = v15 - v14;
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

      v14 += v18;
      if (v17)
      {
        v19 = 1;
      }

      else
      {
        v19 = v14 >= v15;
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

  if (a3)
  {
    v12 = v8;
    v13 = 0;
    *a3 = v8;
    goto LABEL_26;
  }

LABEL_25:
  v13 = 0;
LABEL_26:
  TLV8BufferFree();

  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 < 1)
  {
    v9 = 0;
    v10 = 0;
LABEL_16:
    [(HMDSiriEndpointSessionStateTLV *)self setSessionState:v10, v22];
    [(HMDSiriEndpointSessionStateTLV *)self setHubIdentifier:v9];
    v11 = 0;
    v18 = 1;
    goto LABEL_23;
  }

  v22 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v7 + v8;
  while (1)
  {
    v29 = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    if (TLV8GetNext())
    {
      if (v22)
      {
        HMErrorFromOSStatus();
        *v22 = v18 = 0;
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
  if (v22)
  {
    v20 = v11;
    v18 = 0;
    *v22 = v11;
    goto LABEL_23;
  }

LABEL_22:
  v18 = 0;
LABEL_23:

  return v18;
}

- (HMDSiriEndpointSessionStateTLV)initWithSessionState:(id)a3 hubIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDSiriEndpointSessionStateTLV;
  v9 = [(HMDSiriEndpointSessionStateTLV *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionState, a3);
    objc_storeStrong(&v10->_hubIdentifier, a4);
  }

  return v10;
}

- (HMDSiriEndpointSessionStateTLV)init
{
  v3.receiver = self;
  v3.super_class = HMDSiriEndpointSessionStateTLV;
  return [(HMDSiriEndpointSessionStateTLV *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDSiriEndpointSessionStateTLV);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDSiriEndpointSessionStateTLV *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
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
  v2 = [(HMDSiriEndpointSessionStateTLV *)self hubIdentifier];
  [v2 getBytes:v9 length:16];

  v3 = 0;
  for (i = 15; i > v3; --i)
  {
    v5 = *(v9 + v3);
    *(v9 + v3) = *(v9 + i);
    *(v9 + i) = v5;
    ++v3;
  }

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v9];
  if (!v6)
  {
    v6 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end