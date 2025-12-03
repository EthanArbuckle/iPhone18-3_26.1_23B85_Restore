@interface ICCipherV2
+ (id)decryptData:(id)data withKey:(id)key additionalAuthenticatedData:(id)authenticatedData error:(id *)error;
+ (id)deserializedData:(id)data initializationVector:(id *)vector tag:(id *)tag;
+ (id)encryptData:(id)data withKey:(id)key additionalAuthenticatedData:(id)authenticatedData error:(id *)error;
+ (id)serializedData:(id)data initializationVector:(id)vector tag:(id)tag;
+ (id)unwrapKey:(id)key withWrapper:(id)wrapper error:(id *)error;
+ (id)wrapKey:(id)key withWrapper:(id)wrapper error:(id *)error;
@end

@implementation ICCipherV2

+ (id)wrapKey:(id)key withWrapper:(id)wrapper error:(id *)error
{
  wrapperCopy = wrapper;
  keyCopy = key;
  v10 = +[ICAESCipherUtils _ic_wrap:withWrapper:standardKeyLength:standardWrappedKeyLength:error:](ICAESCipherUtils, "_ic_wrap:withWrapper:standardKeyLength:standardWrappedKeyLength:error:", keyCopy, wrapperCopy, 32, [self standardWrappedKeyLength], error);

  return v10;
}

+ (id)unwrapKey:(id)key withWrapper:(id)wrapper error:(id *)error
{
  wrapperCopy = wrapper;
  keyCopy = key;
  v10 = +[ICAESCipherUtils _ic_unwrap:withWrapper:standardKeyLength:standardWrappedKeyLength:error:](ICAESCipherUtils, "_ic_unwrap:withWrapper:standardKeyLength:standardWrappedKeyLength:error:", keyCopy, wrapperCopy, 32, [self standardWrappedKeyLength], error);

  return v10;
}

+ (id)encryptData:(id)data withKey:(id)key additionalAuthenticatedData:(id)authenticatedData error:(id *)error
{
  v12 = 0;
  v13 = 0;
  v7 = [ICAESCipherUtils _ic_encrypt:data withCipherKey:key standardKeyLength:32 additionalAuthenticatedData:authenticatedData outputTag:&v13 standardTagLength:16 outputInitializationVector:&v12 standardInitializationVectorLength:32 error:error];
  v8 = v13;
  v9 = v12;
  v10 = [self serializedData:v7 initializationVector:v9 tag:v8];

  return v10;
}

+ (id)decryptData:(id)data withKey:(id)key additionalAuthenticatedData:(id)authenticatedData error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  authenticatedDataCopy = authenticatedData;
  if (dataCopy)
  {
    v22 = 0;
    v23 = 0;
    v13 = [self deserializedData:dataCopy initializationVector:&v23 tag:&v22];
    v14 = v23;
    v15 = v22;
    if (v15 && v14 && v13)
    {
      v16 = [ICAESCipherUtils _ic_decrypt:v13 withCipherKey:keyCopy standardKeyLength:32 additionalAuthenticatedData:authenticatedDataCopy inputTag:v15 standardTagLength:16 inputInitializationVector:v14 standardInitializationVectorLength:32 error:error];
    }

    else
    {
      if (error)
      {
        v21 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CCA450];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"cipherData cannot be parsed"];
        v25 = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        *error = [v21 errorWithDomain:@"com.apple.notes.cipher" code:17 userInfo:v19];
      }

      v16 = 0;
    }

    goto LABEL_12;
  }

  if (error)
  {
    v17 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"cipherData is nil"];
    v27[0] = v15;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v17 errorWithDomain:@"com.apple.notes.cipher" code:16 userInfo:v14];
    *error = v16 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:

  return v16;
}

+ (id)serializedData:(id)data initializationVector:(id)vector tag:(id)tag
{
  tagCopy = tag;
  vectorCopy = vector;
  v9 = [data mutableCopy];
  [v9 appendData:vectorCopy];

  [v9 appendData:tagCopy];
  v10 = [v9 copy];

  return v10;
}

+ (id)deserializedData:(id)data initializationVector:(id *)vector tag:(id *)tag
{
  dataCopy = data;
  if ([dataCopy length] >= 0x30)
  {
    if (vector)
    {
      *vector = [dataCopy subdataWithRange:{objc_msgSend(dataCopy, "length") - 48, 32}];
    }

    if (tag)
    {
      *tag = [dataCopy subdataWithRange:{objc_msgSend(dataCopy, "length") - 16, 16}];
    }

    v8 = [dataCopy subdataWithRange:{0, objc_msgSend(dataCopy, "length") - 48}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end