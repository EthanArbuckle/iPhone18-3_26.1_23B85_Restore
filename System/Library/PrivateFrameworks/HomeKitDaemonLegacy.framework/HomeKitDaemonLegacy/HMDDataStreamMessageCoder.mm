@interface HMDDataStreamMessageCoder
+ (BOOL)_decodeOPACKFrame:(id)frame receivedHeader:(id *)header receivedPayload:(id *)payload error:(id *)error;
+ (BOOL)_decryptEncryptedOPACKFrame:(id)frame sessionEncryption:(id)encryption receivedHeader:(id *)header receivedPayload:(id *)payload error:(id *)error;
+ (BOOL)_unpackUnencryptedOPACKFrame:(id)frame receivedHeader:(id *)header receivedPayload:(id *)payload error:(id *)error;
+ (BOOL)readHeaderFromPartialData:(const char *)data length:(unint64_t)length frameType:(unsigned __int8 *)type payloadLength:(unint64_t *)payloadLength;
+ (BOOL)readHeaderFromPartialData:(id)data frameType:(unsigned __int8 *)type payloadLength:(unint64_t *)length;
+ (id)_buildUnencryptedOPACKHeader:(id)header payload:(id)payload error:(id *)error;
+ (id)_encodeOPACKHeader:(id)header payload:(id)payload error:(id *)error;
+ (id)_encryptEncryptedOPACKHeader:(id)header payload:(id)payload sessionEncryption:(id)encryption error:(id *)error;
+ (id)eventHeaderForProtocol:(id)protocol topic:(id)topic;
+ (id)requestHeaderForProtocol:(id)protocol topic:(id)topic identifier:(id)identifier;
@end

@implementation HMDDataStreamMessageCoder

+ (id)requestHeaderForProtocol:(id)protocol topic:(id)topic identifier:(id)identifier
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"protocol";
  v14[1] = @"request";
  v15[0] = protocol;
  v15[1] = topic;
  v14[2] = @"id";
  v15[2] = identifier;
  v7 = MEMORY[0x277CBEAC0];
  identifierCopy = identifier;
  topicCopy = topic;
  protocolCopy = protocol;
  v11 = [v7 dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)eventHeaderForProtocol:(id)protocol topic:(id)topic
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"protocol";
  v11[1] = @"event";
  v12[0] = protocol;
  v12[1] = topic;
  v5 = MEMORY[0x277CBEAC0];
  topicCopy = topic;
  protocolCopy = protocol;
  v8 = [v5 dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)readHeaderFromPartialData:(const char *)data length:(unint64_t)length frameType:(unsigned __int8 *)type payloadLength:(unint64_t *)payloadLength
{
  if (length >= 4)
  {
    if (type)
    {
      *type = *data;
    }

    if (payloadLength)
    {
      *payloadLength = (*(data + 1) << 16) | (*(data + 2) << 8) | *(data + 3);
    }
  }

  return length > 3;
}

+ (BOOL)readHeaderFromPartialData:(id)data frameType:(unsigned __int8 *)type payloadLength:(unint64_t *)length
{
  if (dispatch_data_get_size(data) < 4)
  {
    return 0;
  }

  subrange = dispatch_data_create_subrange(data, 0, 4uLL);
  v12 = 0;
  buffer_ptr = 0;
  v10 = dispatch_data_create_map(subrange, &buffer_ptr, &v12);

  v8 = v10 != 0;
  if (v10)
  {
    if (type)
    {
      *type = *buffer_ptr;
    }

    if (length)
    {
      *length = (*(buffer_ptr + 1) << 16) | (*(buffer_ptr + 2) << 8) | *(buffer_ptr + 3);
    }
  }

  return v8;
}

+ (id)_buildUnencryptedOPACKHeader:(id)header payload:(id)payload error:(id *)error
{
  v6 = [HMDDataStreamMessageCoder _encodeOPACKHeader:header payload:payload error:?];
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
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1052];
      *error = v9 = 0;
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

+ (id)_encryptEncryptedOPACKHeader:(id)header payload:(id)payload sessionEncryption:(id)encryption error:(id *)error
{
  encryptionCopy = encryption;
  v10 = [HMDDataStreamMessageCoder _encodeOPACKHeader:header payload:payload error:error];
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
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1052];
      *error = v14 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v18[0] = 1;
  v18[1] = BYTE2(v12);
  v18[2] = BYTE1(v12);
  v18[3] = v12;
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:4];
  v16 = [encryptionCopy encrypt:v11 additionalAuthenticatedData:v15];

  v14 = [MEMORY[0x277CBEB28] dataWithCapacity:v13];
  [v14 appendBytes:v18 length:4];
  [v14 appendData:v16];

LABEL_7:

  return v14;
}

+ (id)_encodeOPACKHeader:(id)header payload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  v18 = 0;
  v8 = MEMORY[0x259C022D0](header, 0, &v18);
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
    v11 = MEMORY[0x259C022D0](payloadCopy, 0, &v18);
    v12 = v11;
    if (v18 || !v11)
    {
      if (error)
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

      if (error)
      {
        v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1052];
LABEL_15:
        v10 = 0;
        *error = v15;
LABEL_19:

        goto LABEL_20;
      }
    }

    v10 = 0;
    goto LABEL_19;
  }

  if (error)
  {
    HMErrorFromOSStatus();
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_20:

  return v10;
}

+ (BOOL)_unpackUnencryptedOPACKFrame:(id)frame receivedHeader:(id *)header receivedPayload:(id *)payload error:(id *)error
{
  frameCopy = frame;
  if ([frameCopy length] > 3)
  {
    v11 = [frameCopy subdataWithRange:{4, objc_msgSend(frameCopy, "length") - 4}];
    v10 = [HMDDataStreamMessageCoder _decodeOPACKFrame:v11 receivedHeader:header receivedPayload:payload error:error];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1050];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_decodeOPACKFrame:(id)frame receivedHeader:(id *)header receivedPayload:(id *)payload error:(id *)error
{
  frameCopy = frame;
  bytes = [frameCopy bytes];
  v11 = [frameCopy length];

  if (v11 && v11 - 1 >= *bytes)
  {
    v13 = *bytes;
    v14 = OPACKDecodeBytes();
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = OPACKDecodeBytes();
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (header)
        {
          v16 = v14;
          *header = v14;
        }

        if (payload)
        {
          v17 = v15;
          *payload = v15;
        }

        v12 = 1;
      }

      else if (error)
      {
        [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1052];
        *error = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1052];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1050];
    *error = v12 = 0;
  }

  else
  {
    return 0;
  }

  return v12;
}

+ (BOOL)_decryptEncryptedOPACKFrame:(id)frame sessionEncryption:(id)encryption receivedHeader:(id *)header receivedPayload:(id *)payload error:(id *)error
{
  frameCopy = frame;
  encryptionCopy = encryption;
  if ([frameCopy length] > 0x13)
  {
    bytes = [frameCopy bytes];
    v15 = [frameCopy length];
    v21 = 0;
    v16 = [encryptionCopy decrypt:bytes + 4 length:v15 - 20 additionalAuthData:bytes additionalAuthDataLength:4 authTagData:bytes + v15 - 16 authTagDataLength:16 error:&v21];
    v17 = v21;
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v19 = v17;
        v13 = 0;
        *error = v18;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = [HMDDataStreamMessageCoder _decodeOPACKFrame:v16 receivedHeader:header receivedPayload:payload error:error];
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1050];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end