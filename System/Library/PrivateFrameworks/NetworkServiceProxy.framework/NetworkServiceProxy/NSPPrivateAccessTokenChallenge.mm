@interface NSPPrivateAccessTokenChallenge
- (NSObject)initWithType:(void *)type issuerName:(void *)name redemptionContext:(void *)context originNames:(void *)names credentialContext:;
- (NSPPrivateAccessTokenChallenge)initWithData:(id)data;
- (id)challengeDataForTokenType:(void *)type issuerName:(void *)name redemptionContext:(void *)context originInfo:(void *)info credentialContext:;
- (id)initARCChallengeWithIssuerName:(id)name;
- (id)initARCChallengeWithIssuerName:(id)name redemptionContext:(id)context originNames:(id)names credentialContext:(id)credentialContext;
- (id)initATHMChallengeWithIssuerName:(id)name;
- (id)initRSABlindSignatureChallengeWithIssuerName:(id)name redemptionNonce:(id)nonce originNames:(id)names;
- (id)initRateLimitedRSABlindSignatureChallengeWithIssuerName:(id)name redemptionNonce:(id)nonce originNames:(id)names;
@end

@implementation NSPPrivateAccessTokenChallenge

- (id)challengeDataForTokenType:(void *)type issuerName:(void *)name redemptionContext:(void *)context originInfo:(void *)info credentialContext:
{
  typeCopy = type;
  nameCopy = name;
  contextCopy = context;
  infoCopy = info;
  v15 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v27 = __rev16(a2);
  [v15 appendBytes:&v27 length:2];
  uTF8String = [typeCopy UTF8String];
  v26 = bswap32(strlen(uTF8String)) >> 16;
  [v15 appendBytes:&v26 length:2];
  [v15 appendBytes:uTF8String length:strlen(uTF8String)];
  v25 = 32 * (nameCopy != 0);
  [v15 appendBytes:&v25 length:1];
  if (nameCopy)
  {
    [v15 appendData:nameCopy];
  }

  if (contextCopy)
  {
    uTF8String2 = [contextCopy UTF8String];
    v24 = bswap32(strlen(uTF8String2)) >> 16;
    [v15 appendBytes:&v24 length:2];
    v18 = strlen(uTF8String2);
    v19 = v15;
    v20 = uTF8String2;
  }

  else
  {
    v23 = 0;
    v20 = &v23;
    v19 = v15;
    v18 = 2;
  }

  [v19 appendBytes:v20 length:v18];
  if ([self tokenType] == 58796)
  {
    v22 = 32 * (infoCopy != 0);
    [v15 appendBytes:&v22 length:1];
    if (infoCopy)
    {
      [v15 appendData:infoCopy];
    }
  }

  return v15;
}

- (NSPPrivateAccessTokenChallenge)initWithData:(id)data
{
  *&v68[5] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy)
  {
    v38 = nplog_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *v68 = "[NSPPrivateAccessTokenChallenge initWithData:]";
      v39 = "%s called with null data";
      goto LABEL_90;
    }

LABEL_64:

    goto LABEL_15;
  }

  v6 = [dataCopy length];
  bytes = [v5 bytes];
  if (!v6)
  {
    v38 = nplog_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *v68 = "[NSPPrivateAccessTokenChallenge initWithData:]";
      v39 = "%s called with null remainingLength";
      goto LABEL_90;
    }

    goto LABEL_64;
  }

  v8 = bytes;
  if (!bytes)
  {
    v38 = nplog_obj();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_64;
    }

    *buf = 136315138;
    *v68 = "[NSPPrivateAccessTokenChallenge initWithData:]";
    v39 = "%s called with null cursor";
LABEL_90:
    _os_log_fault_impl(&dword_1AE7E2000, v38, OS_LOG_TYPE_FAULT, v39, buf, 0xCu);
    goto LABEL_64;
  }

  v66.receiver = self;
  v66.super_class = NSPPrivateAccessTokenChallenge;
  v9 = [(NSPPrivateAccessTokenChallenge *)&v66 init];
  if (!v9)
  {
    self = nplog_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1AE7E2000, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

    goto LABEL_15;
  }

  v10 = v9;
  if (v6 == 1)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Invalid challenge length";
LABEL_8:
      v13 = v11;
      v14 = 2;
LABEL_31:
      _os_log_error_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v9->_tokenType = bswap32(*v8) >> 16;
  if (![(NSPPrivateAccessTokenChallenge *)v9 isSupportedTokenType])
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    tokenType = [(NSPPrivateAccessTokenChallenge *)v10 tokenType];
    *buf = 67109120;
    v68[0] = tokenType;
    v12 = "Unsupported token type %u";
    goto LABEL_30;
  }

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Invalid challenge length";
      goto LABEL_8;
    }

LABEL_14:

    self = v10;
LABEL_15:
    v10 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v17 = bswap32(v8[1]) >> 16;
  v18 = v6 - 4;
  if (v6 - 4 < v17 || ((v17 - 257) >> 8) != 255)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109120;
    v68[0] = v17;
    v12 = "Invalid issuer name length %u";
    goto LABEL_30;
  }

  v19 = malloc_type_calloc(1uLL, (v17 + 1), 0x4C6E16EDuLL);
  if (!v19)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109120;
    v68[0] = v17 + 1;
    v12 = "calloc of %u bytes failed";
    goto LABEL_30;
  }

  v20 = v19;
  v21 = v8 + 2;
  memcpy(v19, v8 + 2, v17);
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v20];
  objc_setProperty_atomic(v10, v23, v22, 24);

  free(v20);
  issuerName = [(NSPPrivateAccessTokenChallenge *)v10 issuerName];

  if (!issuerName)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Invalid origin name";
    goto LABEL_8;
  }

  if (v18 == v17)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Invalid challenge length";
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v26 = v21 + v17;
  v27 = v21 + v17;
  v30 = *v27;
  v28 = (v27 + 1);
  v29 = v30;
  v31 = v18 + ~v17;
  v32 = v31 - v30;
  if (v31 < v30)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109376;
    v68[0] = v29;
    LOWORD(v68[1]) = 2048;
    *(&v68[1] + 2) = v31;
    v12 = "Invalid nonce length %u, cannot fit in %zu";
    goto LABEL_37;
  }

  if (v29)
  {
    if (v29 != 32)
    {
      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 67109120;
      v68[0] = v29;
      v12 = "Invalid nonce length %u";
      goto LABEL_30;
    }

    v33 = [MEMORY[0x1E695DEF0] dataWithBytes:v28 length:v29];
    objc_setProperty_atomic(v10, v34, v33, 32);

    redemptionContext = [(NSPPrivateAccessTokenChallenge *)v10 redemptionContext];

    if (!redemptionContext)
    {
      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v12 = "Invalid nonce";
      goto LABEL_8;
    }

    v28 = (v26 + 33);
    v31 = v32;
  }

  if ([(NSPPrivateAccessTokenChallenge *)v10 typeRequiresRedemptionNonce])
  {
    redemptionNonce = [(NSPPrivateAccessTokenChallenge *)v10 redemptionNonce];

    if (!redemptionNonce)
    {
      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v12 = "Redemption nonce is required";
      goto LABEL_8;
    }
  }

  if (v31 <= 1)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Invalid challenge length";
    goto LABEL_8;
  }

  v37 = __rev16(*v28);
  if (v31 - 2 < v37)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109376;
    v68[0] = v37;
    LOWORD(v68[1]) = 2048;
    *(&v68[1] + 2) = v31 - 2;
    v12 = "Invalid origin info length %u, cannot fit in %zu";
    goto LABEL_37;
  }

  if (v37 >= 0xA01)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109120;
    v68[0] = v37;
    v12 = "Invalid origin info length %u";
    goto LABEL_30;
  }

  if (*v28)
  {
    v40 = malloc_type_calloc(1uLL, (v37 + 1), 0xCF19D43DuLL);
    if (!v40)
    {
      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 67109120;
      v68[0] = v37 + 1;
      v12 = "calloc of %u bytes failed";
      goto LABEL_30;
    }

    v41 = v40;
    memcpy(v40, v28 + 1, v37);
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];
    objc_setProperty_atomic(v10, v43, v42, 64);

    free(v41);
    v45 = [objc_getProperty(v10 v44];
    objc_setProperty_atomic(v10, v46, v45, 48);

    originNames = [(NSPPrivateAccessTokenChallenge *)v10 originNames];
    firstObject = [originNames firstObject];
    objc_setProperty_atomic(v10, v49, firstObject, 40);
  }

  if ([(NSPPrivateAccessTokenChallenge *)v10 typeRequiresOriginName]&& !objc_getProperty(v10, v50, 64, 1))
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Origin name is required";
    goto LABEL_8;
  }

  if ([(NSPPrivateAccessTokenChallenge *)v10 tokenType]== 58796)
  {
    if (v31 == 2)
    {
      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v12 = "Invalid challenge length";
      goto LABEL_8;
    }

    v52 = *(v28 + 2);
    if (v31 - 3 < v52)
    {
      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 67109376;
      v68[0] = v52;
      LOWORD(v68[1]) = 2048;
      *(&v68[1] + 2) = v31 - 3;
      v12 = "Invalid credential context length %u, cannot fit in %zu";
LABEL_37:
      v13 = v11;
      v14 = 18;
      goto LABEL_31;
    }

    if (*(v28 + 2))
    {
      if (v52 == 32)
      {
        v53 = [MEMORY[0x1E695DEF0] dataWithBytes:v28 + 3 length:v52];
        objc_setProperty_atomic(v10, v54, v53, 56);

        credentialContext = [(NSPPrivateAccessTokenChallenge *)v10 credentialContext];

        if (!credentialContext)
        {
          v11 = nplog_obj();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          *buf = 0;
          v12 = "Invalid credential context";
          goto LABEL_8;
        }

        goto LABEL_86;
      }

      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 67109120;
      v68[0] = v52;
      v12 = "Invalid credential context length %u";
LABEL_30:
      v13 = v11;
      v14 = 8;
      goto LABEL_31;
    }
  }

LABEL_86:
  objc_setProperty_atomic(v10, v51, v5, 16);
  if (os_variant_allows_internal_security_policies())
  {
    issuerName2 = [(NSPPrivateAccessTokenChallenge *)v10 issuerName];
    v57 = [issuerName2 containsString:@";"];

    if (v57)
    {
      issuerName3 = [(NSPPrivateAccessTokenChallenge *)v10 issuerName];
      v59 = [issuerName3 componentsSeparatedByString:@""];;
      self = [v59 firstObject];

      LODWORD(v59) = [(NSPPrivateAccessTokenChallenge *)v10 tokenType];
      redemptionContext2 = [(NSPPrivateAccessTokenChallenge *)v10 redemptionContext];
      v62 = objc_getProperty(v10, v61, 64, 1);
      credentialContext2 = [(NSPPrivateAccessTokenChallenge *)v10 credentialContext];
      v64 = [(NSPPrivateAccessTokenChallenge *)v10 challengeDataForTokenType:v59 issuerName:self redemptionContext:redemptionContext2 originInfo:v62 credentialContext:credentialContext2];

      objc_setProperty_atomic(v10, v65, v64, 16);
      goto LABEL_16;
    }
  }

LABEL_17:

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NSObject)initWithType:(void *)type issuerName:(void *)name redemptionContext:(void *)context originNames:(void *)names credentialContext:
{
  v51 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  nameCopy = name;
  contextCopy = context;
  namesCopy = names;
  if (!self)
  {
    selfCopy = 0;
    goto LABEL_20;
  }

  if (nameCopy && [nameCopy length] != 32)
  {
    v38 = nplog_obj();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
LABEL_26:

      goto LABEL_27;
    }

    *buf = 136315138;
    v50 = "[NSPPrivateAccessTokenChallenge initWithType:issuerName:redemptionContext:originNames:credentialContext:]";
    v39 = "%s called with null (redemptionContext.length == 32)";
LABEL_29:
    _os_log_fault_impl(&dword_1AE7E2000, v38, OS_LOG_TYPE_FAULT, v39, buf, 0xCu);
    goto LABEL_26;
  }

  if (namesCopy && [namesCopy length] != 32)
  {
    v38 = nplog_obj();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    *buf = 136315138;
    v50 = "[NSPPrivateAccessTokenChallenge initWithType:issuerName:redemptionContext:originNames:credentialContext:]";
    v39 = "%s called with null (credentialContext.length == 32)";
    goto LABEL_29;
  }

  v47.receiver = self;
  v47.super_class = NSPPrivateAccessTokenChallenge;
  v15 = [&v47 init];
  if (v15)
  {
    v17 = v15;
    v15[4] = a2;
    objc_setProperty_atomic(v15, v16, typeCopy, 24);
    objc_setProperty_atomic(v17, v18, nameCopy, 32);
    objc_setProperty_atomic(v17, v19, contextCopy, 48);
    originNames = [v17 originNames];
    firstObject = [originNames firstObject];
    objc_setProperty_atomic(v17, v22, firstObject, 40);

    originNames2 = [v17 originNames];
    v24 = [originNames2 count];

    if (v24)
    {
      v40 = a2;
      v41 = contextCopy;
      v42 = typeCopy;
      v24 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      originNames3 = [v17 originNames];
      v27 = [originNames3 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v44;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v44 != v29)
            {
              objc_enumerationMutation(originNames3);
            }

            v31 = *(*(&v43 + 1) + 8 * i);
            if ([v24 length])
            {
              [v24 appendString:{@", "}];
            }

            [v24 appendString:v31];
          }

          v28 = [originNames3 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v28);
      }

      objc_setProperty_atomic(v17, v32, v24, 64);
      contextCopy = v41;
      typeCopy = v42;
      a2 = v40;
    }

    objc_setProperty_atomic(v17, v25, namesCopy, 56);
    v33 = [(NSPPrivateAccessTokenChallenge *)v17 challengeDataForTokenType:a2 issuerName:typeCopy redemptionContext:nameCopy originInfo:v24 credentialContext:namesCopy];
    objc_setProperty_atomic(v17, v34, v33, 16);

    self = v17;
    selfCopy = self;
    goto LABEL_19;
  }

  self = nplog_obj();
  if (os_log_type_enabled(self, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1AE7E2000, self, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
  }

LABEL_27:
  selfCopy = 0;
LABEL_19:

LABEL_20:
  v36 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)initRSABlindSignatureChallengeWithIssuerName:(id)name redemptionNonce:(id)nonce originNames:(id)names
{
  selfCopy = self;
  v12 = *MEMORY[0x1E69E9840];
  if (name)
  {
    selfCopy = [(NSPPrivateAccessTokenChallenge *)&self->super initWithType:name issuerName:nonce redemptionContext:names originNames:0 credentialContext:?];
    v6 = selfCopy;
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315138;
      v11 = "[NSPPrivateAccessTokenChallenge initRSABlindSignatureChallengeWithIssuerName:redemptionNonce:originNames:]";
      _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, "%s called with null issuerName", &v10, 0xCu);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)initRateLimitedRSABlindSignatureChallengeWithIssuerName:(id)name redemptionNonce:(id)nonce originNames:(id)names
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  nonceCopy = nonce;
  namesCopy = names;
  v11 = namesCopy;
  if (!nameCopy)
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315138;
      v18 = "[NSPPrivateAccessTokenChallenge initRateLimitedRSABlindSignatureChallengeWithIssuerName:redemptionNonce:originNames:]";
      v16 = "%s called with null issuerName";
      goto LABEL_13;
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_5;
  }

  if (!nonceCopy)
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315138;
      v18 = "[NSPPrivateAccessTokenChallenge initRateLimitedRSABlindSignatureChallengeWithIssuerName:redemptionNonce:originNames:]";
      v16 = "%s called with null redemptionNonce";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (![namesCopy count])
  {
    v15 = nplog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v17 = 136315138;
    v18 = "[NSPPrivateAccessTokenChallenge initRateLimitedRSABlindSignatureChallengeWithIssuerName:redemptionNonce:originNames:]";
    v16 = "%s called with null originNames.count";
LABEL_13:
    _os_log_fault_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_FAULT, v16, &v17, 0xCu);
    goto LABEL_11;
  }

  self = [(NSPPrivateAccessTokenChallenge *)&self->super initWithType:nameCopy issuerName:nonceCopy redemptionContext:v11 originNames:0 credentialContext:?];
  selfCopy = self;
LABEL_5:

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)initARCChallengeWithIssuerName:(id)name redemptionContext:(id)context originNames:(id)names credentialContext:(id)credentialContext
{
  selfCopy = self;
  v13 = *MEMORY[0x1E69E9840];
  if (name)
  {
    selfCopy = [(NSPPrivateAccessTokenChallenge *)&self->super initWithType:name issuerName:context redemptionContext:names originNames:credentialContext credentialContext:?];
    v7 = selfCopy;
  }

  else
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "[NSPPrivateAccessTokenChallenge initARCChallengeWithIssuerName:redemptionContext:originNames:credentialContext:]";
      _os_log_fault_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_FAULT, "%s called with null issuerName", &v11, 0xCu);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)initATHMChallengeWithIssuerName:(id)name
{
  selfCopy = self;
  v10 = *MEMORY[0x1E69E9840];
  if (name)
  {
    selfCopy = [(NSPPrivateAccessTokenChallenge *)&self->super initWithType:name issuerName:0 redemptionContext:0 originNames:0 credentialContext:?];
    v4 = selfCopy;
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[NSPPrivateAccessTokenChallenge initATHMChallengeWithIssuerName:]";
      _os_log_fault_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_FAULT, "%s called with null issuerName", &v8, 0xCu);
    }

    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)initARCChallengeWithIssuerName:(id)name
{
  selfCopy = self;
  v10 = *MEMORY[0x1E69E9840];
  if (name)
  {
    selfCopy = [(NSPPrivateAccessTokenChallenge *)&self->super initWithType:name issuerName:0 redemptionContext:0 originNames:0 credentialContext:?];
    v4 = selfCopy;
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[NSPPrivateAccessTokenChallenge initARCChallengeWithIssuerName:]";
      _os_log_fault_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_FAULT, "%s called with null issuerName", &v8, 0xCu);
    }

    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

@end