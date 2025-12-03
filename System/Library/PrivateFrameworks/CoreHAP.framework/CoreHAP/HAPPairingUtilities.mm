@interface HAPPairingUtilities
+ (BOOL)parseAddPairingResponse:(id)response error:(id *)error;
+ (BOOL)parseRemovePairingResponse:(id)response error:(id *)error;
+ (id)createAddPairingRequestForPairingIdentity:(id)identity error:(id *)error;
+ (id)createListPairingsRequest:(id *)request;
+ (id)createRemovePairingRequestForPairingIdentity:(id)identity error:(id *)error;
+ (id)parseListPairingsResponse:(id)response error:(id *)error;
@end

@implementation HAPPairingUtilities

+ (id)parseListPairingsResponse:(id)response error:(id *)error
{
  responseCopy = response;
  [responseCopy bytes];
  [responseCopy length];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:16];
  v7 = verifyResponseStateAndError(responseCopy);
  if (v7)
  {
    if (!error)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = TLV8GetOrCopyCoalesced();
    if (v8)
    {
      v7 = v8;
      v15 = 0;
      v11 = 0;
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      v10 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
      v11 = [v9 initWithData:v10 encoding:4];

      if (v11)
      {
        v12 = TLV8GetOrCopyCoalesced();
        if (v12)
        {
          v7 = v12;
          v15 = 0;
        }

        else
        {
          v13 = objc_alloc(MEMORY[0x277D0F8B0]);
          v14 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
          v15 = [v13 initWithPairingKeyData:v14];

          if (v15)
          {
            v16 = TLV8Get();
            if (v16)
            {
              v7 = v16;
            }

            else
            {
              v7 = 4294960553;
            }
          }

          else
          {
            v7 = 4294960596;
          }
        }
      }

      else
      {
        v15 = 0;
        v7 = 4294960568;
      }
    }

    if (!error)
    {
      goto LABEL_14;
    }
  }

  *error = [MEMORY[0x277CCA9B8] errorWithOSStatus:v7];
LABEL_14:

  return 0;
}

+ (id)createListPairingsRequest:(id *)request
{
  v9 = *MEMORY[0x277D85DE8];
  TLV8BufferInit();
  appended = appendRequestMethodAndState();
  if (!appended)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
    if (v6)
    {
      v5 = v6;
      TLV8BufferFree();
      goto LABEL_7;
    }

    appended = 4294960568;
  }

  TLV8BufferFree();
  if (request)
  {
    [MEMORY[0x277CCA9B8] errorWithOSStatus:appended];
    *request = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (BOOL)parseRemovePairingResponse:(id)response error:(id *)error
{
  v5 = verifyResponseStateAndError(response);
  v6 = v5;
  if (error && v5)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithOSStatus:v5];
  }

  return v6 == 0;
}

+ (id)createRemovePairingRequestForPairingIdentity:(id)identity error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  TLV8BufferInit();
  appended = appendRequestMethodAndState();
  if (appended)
  {
    goto LABEL_2;
  }

  identifier = [identityCopy identifier];
  v9 = [identifier dataUsingEncoding:4];

  if (!v9)
  {
    appended = 4294960568;
LABEL_14:

    goto LABEL_2;
  }

  [v9 bytes];
  [v9 length];
  v10 = TLV8BufferAppend();
  if (v10)
  {
    appended = v10;
    goto LABEL_14;
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  if (v11)
  {
    v7 = v11;
    TLV8BufferFree();
    goto LABEL_9;
  }

  appended = 4294960568;
LABEL_2:
  TLV8BufferFree();
  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithOSStatus:appended];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)parseAddPairingResponse:(id)response error:(id *)error
{
  v5 = verifyResponseStateAndError(response);
  v6 = v5;
  if (error && v5)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithOSStatus:v5];
  }

  return v6 == 0;
}

+ (id)createAddPairingRequestForPairingIdentity:(id)identity error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  TLV8BufferInit();
  appended = appendRequestMethodAndState();
  if (appended)
  {
    goto LABEL_2;
  }

  identifier = [identityCopy identifier];
  v9 = [identifier dataUsingEncoding:4];

  if (!v9)
  {
    v7 = 4294960568;
LABEL_17:

    goto LABEL_6;
  }

  [v9 bytes];
  [v9 length];
  v10 = TLV8BufferAppend();
  if (v10)
  {
    v7 = v10;
    goto LABEL_17;
  }

  publicKey = [identityCopy publicKey];
  data = [publicKey data];
  [data bytes];
  data2 = [publicKey data];
  [data2 length];
  v7 = TLV8BufferAppend();

  if (!v7)
  {
    [identityCopy permissions];
    appended = TLV8BufferAppendUInt64();
    if (appended)
    {
LABEL_2:
      v7 = appended;
      goto LABEL_6;
    }

    v17 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
    if (v17)
    {
      v14 = v17;
      TLV8BufferFree();
      goto LABEL_9;
    }

    v7 = 4294960568;
  }

LABEL_6:
  TLV8BufferFree();
  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithOSStatus:v7];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_9:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end