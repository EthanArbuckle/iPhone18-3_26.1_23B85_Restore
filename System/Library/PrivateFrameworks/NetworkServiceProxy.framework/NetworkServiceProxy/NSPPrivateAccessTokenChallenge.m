@interface NSPPrivateAccessTokenChallenge
- (NSObject)initWithType:(void *)a3 issuerName:(void *)a4 redemptionContext:(void *)a5 originNames:(void *)a6 credentialContext:;
- (NSPPrivateAccessTokenChallenge)initWithData:(id)a3;
- (id)challengeDataForTokenType:(void *)a3 issuerName:(void *)a4 redemptionContext:(void *)a5 originInfo:(void *)a6 credentialContext:;
- (id)initARCChallengeWithIssuerName:(id)a3;
- (id)initARCChallengeWithIssuerName:(id)a3 redemptionContext:(id)a4 originNames:(id)a5 credentialContext:(id)a6;
- (id)initATHMChallengeWithIssuerName:(id)a3;
- (id)initRSABlindSignatureChallengeWithIssuerName:(id)a3 redemptionNonce:(id)a4 originNames:(id)a5;
- (id)initRateLimitedRSABlindSignatureChallengeWithIssuerName:(id)a3 redemptionNonce:(id)a4 originNames:(id)a5;
@end

@implementation NSPPrivateAccessTokenChallenge

- (id)challengeDataForTokenType:(void *)a3 issuerName:(void *)a4 redemptionContext:(void *)a5 originInfo:(void *)a6 credentialContext:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v27 = __rev16(a2);
  [v15 appendBytes:&v27 length:2];
  v16 = [v11 UTF8String];
  v26 = bswap32(strlen(v16)) >> 16;
  [v15 appendBytes:&v26 length:2];
  [v15 appendBytes:v16 length:strlen(v16)];
  v25 = 32 * (v12 != 0);
  [v15 appendBytes:&v25 length:1];
  if (v12)
  {
    [v15 appendData:v12];
  }

  if (v13)
  {
    v17 = [v13 UTF8String];
    v24 = bswap32(strlen(v17)) >> 16;
    [v15 appendBytes:&v24 length:2];
    v18 = strlen(v17);
    v19 = v15;
    v20 = v17;
  }

  else
  {
    v23 = 0;
    v20 = &v23;
    v19 = v15;
    v18 = 2;
  }

  [v19 appendBytes:v20 length:v18];
  if ([a1 tokenType] == 58796)
  {
    v22 = 32 * (v14 != 0);
    [v15 appendBytes:&v22 length:1];
    if (v14)
    {
      [v15 appendData:v14];
    }
  }

  return v15;
}

- (NSPPrivateAccessTokenChallenge)initWithData:(id)a3
{
  *&v68[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
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

  v6 = [v4 length];
  v7 = [v5 bytes];
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

  v8 = v7;
  if (!v7)
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

    v25 = [(NSPPrivateAccessTokenChallenge *)v10 tokenType];
    *buf = 67109120;
    v68[0] = v25;
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
  v24 = [(NSPPrivateAccessTokenChallenge *)v10 issuerName];

  if (!v24)
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

    v35 = [(NSPPrivateAccessTokenChallenge *)v10 redemptionContext];

    if (!v35)
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
    v36 = [(NSPPrivateAccessTokenChallenge *)v10 redemptionNonce];

    if (!v36)
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

    v47 = [(NSPPrivateAccessTokenChallenge *)v10 originNames];
    v48 = [v47 firstObject];
    objc_setProperty_atomic(v10, v49, v48, 40);
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

        v55 = [(NSPPrivateAccessTokenChallenge *)v10 credentialContext];

        if (!v55)
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
    v56 = [(NSPPrivateAccessTokenChallenge *)v10 issuerName];
    v57 = [v56 containsString:@";"];

    if (v57)
    {
      v58 = [(NSPPrivateAccessTokenChallenge *)v10 issuerName];
      v59 = [v58 componentsSeparatedByString:@""];;
      self = [v59 firstObject];

      LODWORD(v59) = [(NSPPrivateAccessTokenChallenge *)v10 tokenType];
      v60 = [(NSPPrivateAccessTokenChallenge *)v10 redemptionContext];
      v62 = objc_getProperty(v10, v61, 64, 1);
      v63 = [(NSPPrivateAccessTokenChallenge *)v10 credentialContext];
      v64 = [(NSPPrivateAccessTokenChallenge *)v10 challengeDataForTokenType:v59 issuerName:self redemptionContext:v60 originInfo:v62 credentialContext:v63];

      objc_setProperty_atomic(v10, v65, v64, 16);
      goto LABEL_16;
    }
  }

LABEL_17:

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NSObject)initWithType:(void *)a3 issuerName:(void *)a4 redemptionContext:(void *)a5 originNames:(void *)a6 credentialContext:
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!a1)
  {
    v35 = 0;
    goto LABEL_20;
  }

  if (v12 && [v12 length] != 32)
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

  if (v14 && [v14 length] != 32)
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

  v47.receiver = a1;
  v47.super_class = NSPPrivateAccessTokenChallenge;
  v15 = [&v47 init];
  if (v15)
  {
    v17 = v15;
    v15[4] = a2;
    objc_setProperty_atomic(v15, v16, v11, 24);
    objc_setProperty_atomic(v17, v18, v12, 32);
    objc_setProperty_atomic(v17, v19, v13, 48);
    v20 = [v17 originNames];
    v21 = [v20 firstObject];
    objc_setProperty_atomic(v17, v22, v21, 40);

    v23 = [v17 originNames];
    v24 = [v23 count];

    if (v24)
    {
      v40 = a2;
      v41 = v13;
      v42 = v11;
      v24 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v26 = [v17 originNames];
      v27 = [v26 countByEnumeratingWithState:&v43 objects:v48 count:16];
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
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v43 + 1) + 8 * i);
            if ([v24 length])
            {
              [v24 appendString:{@", "}];
            }

            [v24 appendString:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v28);
      }

      objc_setProperty_atomic(v17, v32, v24, 64);
      v13 = v41;
      v11 = v42;
      a2 = v40;
    }

    objc_setProperty_atomic(v17, v25, v14, 56);
    v33 = [(NSPPrivateAccessTokenChallenge *)v17 challengeDataForTokenType:a2 issuerName:v11 redemptionContext:v12 originInfo:v24 credentialContext:v14];
    objc_setProperty_atomic(v17, v34, v33, 16);

    a1 = v17;
    v35 = a1;
    goto LABEL_19;
  }

  a1 = nplog_obj();
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1AE7E2000, a1, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
  }

LABEL_27:
  v35 = 0;
LABEL_19:

LABEL_20:
  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

- (id)initRSABlindSignatureChallengeWithIssuerName:(id)a3 redemptionNonce:(id)a4 originNames:(id)a5
{
  v5 = self;
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [(NSPPrivateAccessTokenChallenge *)&self->super initWithType:a3 issuerName:a4 redemptionContext:a5 originNames:0 credentialContext:?];
    v6 = v5;
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

- (id)initRateLimitedRSABlindSignatureChallengeWithIssuerName:(id)a3 redemptionNonce:(id)a4 originNames:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
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

    v12 = 0;
    goto LABEL_5;
  }

  if (!v9)
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

  if (![v10 count])
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

  self = [(NSPPrivateAccessTokenChallenge *)&self->super initWithType:v8 issuerName:v9 redemptionContext:v11 originNames:0 credentialContext:?];
  v12 = self;
LABEL_5:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)initARCChallengeWithIssuerName:(id)a3 redemptionContext:(id)a4 originNames:(id)a5 credentialContext:(id)a6
{
  v6 = self;
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = [(NSPPrivateAccessTokenChallenge *)&self->super initWithType:a3 issuerName:a4 redemptionContext:a5 originNames:a6 credentialContext:?];
    v7 = v6;
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

- (id)initATHMChallengeWithIssuerName:(id)a3
{
  v3 = self;
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [(NSPPrivateAccessTokenChallenge *)&self->super initWithType:a3 issuerName:0 redemptionContext:0 originNames:0 credentialContext:?];
    v4 = v3;
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

- (id)initARCChallengeWithIssuerName:(id)a3
{
  v3 = self;
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [(NSPPrivateAccessTokenChallenge *)&self->super initWithType:a3 issuerName:0 redemptionContext:0 originNames:0 credentialContext:?];
    v4 = v3;
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