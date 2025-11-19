@interface HAPPairingUtilities
+ (BOOL)parseAddPairingResponse:(id)a3 error:(id *)a4;
+ (BOOL)parseRemovePairingResponse:(id)a3 error:(id *)a4;
+ (id)createAddPairingRequestForPairingIdentity:(id)a3 error:(id *)a4;
+ (id)createListPairingsRequest:(id *)a3;
+ (id)createRemovePairingRequestForPairingIdentity:(id)a3 error:(id *)a4;
+ (id)parseListPairingsResponse:(id)a3 error:(id *)a4;
@end

@implementation HAPPairingUtilities

+ (id)parseListPairingsResponse:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 bytes];
  [v5 length];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:16];
  v7 = verifyResponseStateAndError(v5);
  if (v7)
  {
    if (!a4)
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

    if (!a4)
    {
      goto LABEL_14;
    }
  }

  *a4 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v7];
LABEL_14:

  return 0;
}

+ (id)createListPairingsRequest:(id *)a3
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
  if (a3)
  {
    [MEMORY[0x277CCA9B8] errorWithOSStatus:appended];
    *a3 = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (BOOL)parseRemovePairingResponse:(id)a3 error:(id *)a4
{
  v5 = verifyResponseStateAndError(a3);
  v6 = v5;
  if (a4 && v5)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v5];
  }

  return v6 == 0;
}

+ (id)createRemovePairingRequestForPairingIdentity:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  TLV8BufferInit();
  appended = appendRequestMethodAndState();
  if (appended)
  {
    goto LABEL_2;
  }

  v8 = [v5 identifier];
  v9 = [v8 dataUsingEncoding:4];

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
  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithOSStatus:appended];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)parseAddPairingResponse:(id)a3 error:(id *)a4
{
  v5 = verifyResponseStateAndError(a3);
  v6 = v5;
  if (a4 && v5)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v5];
  }

  return v6 == 0;
}

+ (id)createAddPairingRequestForPairingIdentity:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  TLV8BufferInit();
  appended = appendRequestMethodAndState();
  if (appended)
  {
    goto LABEL_2;
  }

  v8 = [v5 identifier];
  v9 = [v8 dataUsingEncoding:4];

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

  v11 = [v5 publicKey];
  v12 = [v11 data];
  [v12 bytes];
  v13 = [v11 data];
  [v13 length];
  v7 = TLV8BufferAppend();

  if (!v7)
  {
    [v5 permissions];
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
  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithOSStatus:v7];
    *a4 = v14 = 0;
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