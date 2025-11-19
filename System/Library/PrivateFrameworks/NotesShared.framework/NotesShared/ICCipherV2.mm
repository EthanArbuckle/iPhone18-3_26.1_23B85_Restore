@interface ICCipherV2
+ (id)decryptData:(id)a3 withKey:(id)a4 additionalAuthenticatedData:(id)a5 error:(id *)a6;
+ (id)deserializedData:(id)a3 initializationVector:(id *)a4 tag:(id *)a5;
+ (id)encryptData:(id)a3 withKey:(id)a4 additionalAuthenticatedData:(id)a5 error:(id *)a6;
+ (id)serializedData:(id)a3 initializationVector:(id)a4 tag:(id)a5;
+ (id)unwrapKey:(id)a3 withWrapper:(id)a4 error:(id *)a5;
+ (id)wrapKey:(id)a3 withWrapper:(id)a4 error:(id *)a5;
@end

@implementation ICCipherV2

+ (id)wrapKey:(id)a3 withWrapper:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[ICAESCipherUtils _ic_wrap:withWrapper:standardKeyLength:standardWrappedKeyLength:error:](ICAESCipherUtils, "_ic_wrap:withWrapper:standardKeyLength:standardWrappedKeyLength:error:", v9, v8, 32, [a1 standardWrappedKeyLength], a5);

  return v10;
}

+ (id)unwrapKey:(id)a3 withWrapper:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[ICAESCipherUtils _ic_unwrap:withWrapper:standardKeyLength:standardWrappedKeyLength:error:](ICAESCipherUtils, "_ic_unwrap:withWrapper:standardKeyLength:standardWrappedKeyLength:error:", v9, v8, 32, [a1 standardWrappedKeyLength], a5);

  return v10;
}

+ (id)encryptData:(id)a3 withKey:(id)a4 additionalAuthenticatedData:(id)a5 error:(id *)a6
{
  v12 = 0;
  v13 = 0;
  v7 = [ICAESCipherUtils _ic_encrypt:a3 withCipherKey:a4 standardKeyLength:32 additionalAuthenticatedData:a5 outputTag:&v13 standardTagLength:16 outputInitializationVector:&v12 standardInitializationVectorLength:32 error:a6];
  v8 = v13;
  v9 = v12;
  v10 = [a1 serializedData:v7 initializationVector:v9 tag:v8];

  return v10;
}

+ (id)decryptData:(id)a3 withKey:(id)a4 additionalAuthenticatedData:(id)a5 error:(id *)a6
{
  v27[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v22 = 0;
    v23 = 0;
    v13 = [a1 deserializedData:v10 initializationVector:&v23 tag:&v22];
    v14 = v23;
    v15 = v22;
    if (v15 && v14 && v13)
    {
      v16 = [ICAESCipherUtils _ic_decrypt:v13 withCipherKey:v11 standardKeyLength:32 additionalAuthenticatedData:v12 inputTag:v15 standardTagLength:16 inputInitializationVector:v14 standardInitializationVectorLength:32 error:a6];
    }

    else
    {
      if (a6)
      {
        v21 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CCA450];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"cipherData cannot be parsed"];
        v25 = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        *a6 = [v21 errorWithDomain:@"com.apple.notes.cipher" code:17 userInfo:v19];
      }

      v16 = 0;
    }

    goto LABEL_12;
  }

  if (a6)
  {
    v17 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"cipherData is nil"];
    v27[0] = v15;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v17 errorWithDomain:@"com.apple.notes.cipher" code:16 userInfo:v14];
    *a6 = v16 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:

  return v16;
}

+ (id)serializedData:(id)a3 initializationVector:(id)a4 tag:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 mutableCopy];
  [v9 appendData:v8];

  [v9 appendData:v7];
  v10 = [v9 copy];

  return v10;
}

+ (id)deserializedData:(id)a3 initializationVector:(id *)a4 tag:(id *)a5
{
  v7 = a3;
  if ([v7 length] >= 0x30)
  {
    if (a4)
    {
      *a4 = [v7 subdataWithRange:{objc_msgSend(v7, "length") - 48, 32}];
    }

    if (a5)
    {
      *a5 = [v7 subdataWithRange:{objc_msgSend(v7, "length") - 16, 16}];
    }

    v8 = [v7 subdataWithRange:{0, objc_msgSend(v7, "length") - 48}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end