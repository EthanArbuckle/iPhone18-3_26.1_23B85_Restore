@interface HMDDataStreamMessageCoder
+ (BOOL)_decodeOPACKFrame:(id)a3 receivedHeader:(id *)a4 receivedPayload:(id *)a5 error:(id *)a6;
+ (BOOL)_decryptEncryptedOPACKFrame:(id)a3 sessionEncryption:(id)a4 receivedHeader:(id *)a5 receivedPayload:(id *)a6 error:(id *)a7;
+ (BOOL)_unpackUnencryptedOPACKFrame:(id)a3 receivedHeader:(id *)a4 receivedPayload:(id *)a5 error:(id *)a6;
+ (BOOL)readHeaderFromPartialData:(const char *)a3 length:(unint64_t)a4 frameType:(unsigned __int8 *)a5 payloadLength:(unint64_t *)a6;
+ (BOOL)readHeaderFromPartialData:(id)a3 frameType:(unsigned __int8 *)a4 payloadLength:(unint64_t *)a5;
+ (id)_buildUnencryptedOPACKHeader:(id)a3 payload:(id)a4 error:(id *)a5;
+ (id)_encodeOPACKHeader:(id)a3 payload:(id)a4 error:(id *)a5;
+ (id)_encryptEncryptedOPACKHeader:(id)a3 payload:(id)a4 sessionEncryption:(id)a5 error:(id *)a6;
+ (id)eventHeaderForProtocol:(id)a3 topic:(id)a4;
+ (id)requestHeaderForProtocol:(id)a3 topic:(id)a4 identifier:(id)a5;
@end

@implementation HMDDataStreamMessageCoder

+ (id)requestHeaderForProtocol:(id)a3 topic:(id)a4 identifier:(id)a5
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"protocol";
  v14[1] = @"request";
  v15[0] = a3;
  v15[1] = a4;
  v14[2] = @"id";
  v15[2] = a5;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)eventHeaderForProtocol:(id)a3 topic:(id)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"protocol";
  v11[1] = @"event";
  v12[0] = a3;
  v12[1] = a4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)readHeaderFromPartialData:(const char *)a3 length:(unint64_t)a4 frameType:(unsigned __int8 *)a5 payloadLength:(unint64_t *)a6
{
  if (a4 >= 4)
  {
    if (a5)
    {
      *a5 = *a3;
    }

    if (a6)
    {
      *a6 = (*(a3 + 1) << 16) | (*(a3 + 2) << 8) | *(a3 + 3);
    }
  }

  return a4 > 3;
}

+ (BOOL)readHeaderFromPartialData:(id)a3 frameType:(unsigned __int8 *)a4 payloadLength:(unint64_t *)a5
{
  if (dispatch_data_get_size(a3) < 4)
  {
    return 0;
  }

  subrange = dispatch_data_create_subrange(a3, 0, 4uLL);
  v12 = 0;
  buffer_ptr = 0;
  v10 = dispatch_data_create_map(subrange, &buffer_ptr, &v12);

  v8 = v10 != 0;
  if (v10)
  {
    if (a4)
    {
      *a4 = *buffer_ptr;
    }

    if (a5)
    {
      *a5 = (*(buffer_ptr + 1) << 16) | (*(buffer_ptr + 2) << 8) | *(buffer_ptr + 3);
    }
  }

  return v8;
}

+ (id)_buildUnencryptedOPACKHeader:(id)a3 payload:(id)a4 error:(id *)a5
{
  v6 = [HMDDataStreamMessageCoder _encodeOPACKHeader:a3 payload:a4 error:?];
  v7 = v6;
  if (!v6)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = [v6 length];
  if ((v8 + 4) >= 0x100000)
  {
    if (a5)
    {
      [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1052];
      *a5 = v9 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v11[0] = 3;
  v11[1] = BYTE2(v8);
  v11[2] = BYTE1(v8);
  v11[3] = v8;
  v9 = [MEMORY[0x277CBEB28] dataWithCapacity:?];
  [v9 appendBytes:v11 length:4];
  [v9 appendData:v7];
LABEL_7:

  return v9;
}

+ (id)_encryptEncryptedOPACKHeader:(id)a3 payload:(id)a4 sessionEncryption:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = [HMDDataStreamMessageCoder _encodeOPACKHeader:a3 payload:a4 error:a6];
  v11 = v10;
  if (!v10)
  {
LABEL_5:
    v14 = 0;
    goto LABEL_7;
  }

  v12 = [v10 length];
  v13 = v12 + 20;
  if ((v12 + 20) >= 0x100000)
  {
    if (a6)
    {
      [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1052];
      *a6 = v14 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v18[0] = 1;
  v18[1] = BYTE2(v12);
  v18[2] = BYTE1(v12);
  v18[3] = v12;
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:4];
  v16 = [v9 encrypt:v11 additionalAuthenticatedData:v15];

  v14 = [MEMORY[0x277CBEB28] dataWithCapacity:v13];
  [v14 appendBytes:v18 length:4];
  [v14 appendData:v16];

LABEL_7:

  return v14;
}

+ (id)_encodeOPACKHeader:(id)a3 payload:(id)a4 error:(id *)a5
{
  v7 = a4;
  v18 = 0;
  v8 = MEMORY[0x259C022D0](a3, 0, &v18);
  if (v18)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
    v11 = MEMORY[0x259C022D0](v7, 0, &v18);
    v12 = v11;
    if (v18 || !v11)
    {
      if (a5)
      {
        v15 = HMErrorFromOSStatus();
        goto LABEL_15;
      }
    }

    else
    {
      v13 = [v8 length];
      v14 = [v12 length];
      if (v13 < 0x100)
      {
        v17 = v13;
        v10 = [MEMORY[0x277CBEB28] dataWithCapacity:v13 + v14 + 1];
        [v10 appendBytes:&v17 length:1];
        [v10 appendData:v8];
        [v10 appendData:v12];
        goto LABEL_19;
      }

      if (a5)
      {
        v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1052];
LABEL_15:
        v10 = 0;
        *a5 = v15;
LABEL_19:

        goto LABEL_20;
      }
    }

    v10 = 0;
    goto LABEL_19;
  }

  if (a5)
  {
    HMErrorFromOSStatus();
    *a5 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_20:

  return v10;
}

+ (BOOL)_unpackUnencryptedOPACKFrame:(id)a3 receivedHeader:(id *)a4 receivedPayload:(id *)a5 error:(id *)a6
{
  v9 = a3;
  if ([v9 length] > 3)
  {
    v11 = [v9 subdataWithRange:{4, objc_msgSend(v9, "length") - 4}];
    v10 = [HMDDataStreamMessageCoder _decodeOPACKFrame:v11 receivedHeader:a4 receivedPayload:a5 error:a6];
  }

  else if (a6)
  {
    [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1050];
    *a6 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_decodeOPACKFrame:(id)a3 receivedHeader:(id *)a4 receivedPayload:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [v9 bytes];
  v11 = [v9 length];

  if (v11 && v11 - 1 >= *v10)
  {
    v13 = *v10;
    v14 = OPACKDecodeBytes();
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = OPACKDecodeBytes();
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (a4)
        {
          v16 = v14;
          *a4 = v14;
        }

        if (a5)
        {
          v17 = v15;
          *a5 = v15;
        }

        v12 = 1;
      }

      else if (a6)
      {
        [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1052];
        *a6 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else if (a6)
    {
      [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1052];
      *a6 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (a6)
  {
    [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1050];
    *a6 = v12 = 0;
  }

  else
  {
    return 0;
  }

  return v12;
}

+ (BOOL)_decryptEncryptedOPACKFrame:(id)a3 sessionEncryption:(id)a4 receivedHeader:(id *)a5 receivedPayload:(id *)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  if ([v11 length] > 0x13)
  {
    v14 = [v11 bytes];
    v15 = [v11 length];
    v21 = 0;
    v16 = [v12 decrypt:v14 + 4 length:v15 - 20 additionalAuthData:v14 additionalAuthDataLength:4 authTagData:v14 + v15 - 16 authTagDataLength:16 error:&v21];
    v17 = v21;
    v18 = v17;
    if (v17)
    {
      if (a7)
      {
        v19 = v17;
        v13 = 0;
        *a7 = v18;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = [HMDDataStreamMessageCoder _decodeOPACKFrame:v16 receivedHeader:a5 receivedPayload:a6 error:a7];
    }
  }

  else if (a7)
  {
    [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1050];
    *a7 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end