@interface MUPayloadEncryption
+ (id)sharedInstance;
- (MUPayloadEncryption)init;
- (id)decryptData:(id)data;
- (id)encryptData:(id)data;
- (void)initializeKey;
@end

@implementation MUPayloadEncryption

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MUPayloadEncryption_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = _sharedInstance;

  return v2;
}

uint64_t __37__MUPayloadEncryption_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _sharedInstance;
  _sharedInstance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (MUPayloadEncryption)init
{
  v3.receiver = self;
  v3.super_class = MUPayloadEncryption;
  result = [(MUPayloadEncryption *)&v3 init];
  if (result)
  {
    *&result->_keyInitialized = 0;
  }

  return result;
}

- (id)encryptData:(id)data
{
  __buf[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (!dataCopy)
  {
    goto LABEL_7;
  }

  if (!self->_keyInitialized)
  {
    [(MUPayloadEncryption *)self initializeKey];
  }

  if (self->_haveKey)
  {
    dataOut = [dataCopy length];
    AKLog();
    generateRandomKey(__buf);
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:__buf length:{16, dataOut}];
    v6 = [dataCopy length];
    v7 = [v5 length] + v6;
    dataOutAvailable = (v7 + 31) & 0xFFFFFFFFFFFFFFF0;
    v9 = [MEMORY[0x277CBEB28] dataWithCapacity:dataOutAvailable];
    [v9 appendData:v5];
    [v9 appendData:dataCopy];
    [v9 setLength:dataOutAvailable];
    v14 = 0;
    v10 = CCCrypt(0, 0, 1u, self->_key, 0x10uLL, 0, [v9 mutableBytes], v7, objc_msgSend(v9, "mutableBytes"), dataOutAvailable, &v14);
    if (v10)
    {
      NSLog(&cfstr_Mupayloadencry_2.isa, v10);
      v11 = 0;
    }

    else
    {
      [v9 length];
      AKLog();
      v11 = v9;
    }
  }

  else
  {
LABEL_7:
    AKLog();
    v11 = 0;
  }

  return v11;
}

- (id)decryptData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_8;
  }

  if (!self->_keyInitialized)
  {
    [(MUPayloadEncryption *)self initializeKey];
  }

  if (self->_haveKey)
  {
    dataOut = [v5 length];
    AKLog();
    v11 = 0;
    v6 = malloc_type_malloc([v5 length], 0xF5119A56uLL);
    v7 = CCCrypt(1u, 0, 1u, self->_key, 0x10uLL, 0, [v5 bytes], objc_msgSend(v5, "length") - 16, v6, objc_msgSend(v5, "length") - 16, &v11);
    if (v7)
    {
      NSLog(&cfstr_Mupayloadencry_6.isa, v7);
      v8 = 0;
    }

    else
    {
      v8 = [MEMORY[0x277CBEA90] dataWithBytes:v6 + 16 length:v11 - 16];
      [v8 length];
      AKLog();
    }

    free(v6);
  }

  else
  {
LABEL_8:
    AKLog();
    v8 = 0;
  }

  return v8;
}

- (void)initializeKey
{
  v32[7] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_keyInitialized)
  {
    selfCopy->_haveKey = 0;
    result = 0;
    v3 = *MEMORY[0x277CDC228];
    v4 = *MEMORY[0x277CDC238];
    v5 = *MEMORY[0x277CDC550];
    v31[0] = *MEMORY[0x277CDC228];
    v31[1] = v5;
    v6 = *MEMORY[0x277CBED28];
    v32[0] = v4;
    v32[1] = v6;
    v7 = *MEMORY[0x277CDBEC8];
    v8 = *MEMORY[0x277CDC140];
    v31[2] = *MEMORY[0x277CDBEC8];
    v31[3] = v8;
    v32[2] = @"com.apple.Markup";
    v32[3] = v6;
    v9 = *MEMORY[0x277CDC120];
    v10 = *MEMORY[0x277CDBF20];
    v31[4] = *MEMORY[0x277CDC120];
    v31[5] = v10;
    v25 = v10;
    v32[4] = @"Sketch Service Privacy";
    v32[5] = @"Sketch Service";
    v11 = *MEMORY[0x277CDC428];
    v31[6] = *MEMORY[0x277CDC428];
    v12 = *MEMORY[0x277CDC438];
    v32[6] = *MEMORY[0x277CDC438];
    query = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:7];
    v13 = SecItemCopyMatching(query, &result);
    if (v13 == -25300)
    {
      generateRandomKey(selfCopy->_key);
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:selfCopy->_key length:16];
      v24 = [v16 base64EncodedDataWithOptions:0];

      v29[0] = v3;
      v29[1] = v9;
      v30[0] = v4;
      v30[1] = @"Sketch Service Privacy";
      v29[2] = *MEMORY[0x277CDC080];
      v29[3] = v7;
      v30[2] = @"Sketch Service Privacy";
      v30[3] = @"com.apple.Markup";
      v30[4] = v6;
      v17 = *MEMORY[0x277CDBF88];
      v29[4] = v8;
      v29[5] = v17;
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"Used for the encryption of image edit state metadata for the Markup service. Deletion will make it impossible for Markup to modify annotations that were previously placed on an image using Markup." value:&stru_286962590 table:@"MUPayloadEncryption"];
      v30[5] = v19;
      v30[6] = @"Sketch Service";
      v20 = *MEMORY[0x277CDC5E8];
      v29[6] = v25;
      v29[7] = v20;
      v30[7] = v24;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:8];

      cf = 0;
      v21 = SecItemAdd(v14, &cf);
      if (v21)
      {
        NSLog(&cfstr_CouldnTAddKeyT.isa, v21);
      }

      else
      {
        selfCopy->_haveKey = 1;
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      if (v13)
      {
        NSLog(&cfstr_Secitemcopymat.isa, v13, &stru_286962590);
LABEL_16:
        selfCopy->_keyInitialized = 1;

        goto LABEL_17;
      }

      v24 = [result mutableCopy];
      v14 = [v24 objectForKey:v25];
      v15 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:query];
      [v15 removeObjectForKey:v5];
      [v15 setObject:v6 forKey:*MEMORY[0x277CDC558]];
      [v15 setObject:v12 forKey:v11];
      [v15 setObject:v4 forKey:v3];
      [v15 setValue:v14 forKey:v25];
      cf = 0;
      if (!SecItemCopyMatching(v15, &cf))
      {
        v22 = cf;
        if (cf)
        {
          v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedData:cf options:0];

          if (v23)
          {
            [v23 getBytes:selfCopy->_key length:16];
            selfCopy->_haveKey = 1;
          }
        }
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  objc_sync_exit(selfCopy);
}

@end