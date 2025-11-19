@interface NSPPrivateAccessTokenResponse
- (NSObject)initWithChallenge:(void *)a3 nonce:(void *)a4 tokenKey:(void *)a5 keyID:(void *)a6 authenticator:;
@end

@implementation NSPPrivateAccessTokenResponse

- (NSObject)initWithChallenge:(void *)a3 nonce:(void *)a4 tokenKey:(void *)a5 keyID:(void *)a6 authenticator:
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (!a1)
  {
    v23 = 0;
    goto LABEL_23;
  }

  if (!v11)
  {
    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v26 = "%s called with null challenge";
    goto LABEL_45;
  }

  if (!v13)
  {
    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v26 = "%s called with null tokenKey";
    goto LABEL_45;
  }

  if (!v15)
  {
    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v26 = "%s called with null authenticator";
    goto LABEL_45;
  }

  if ([v11 tokenType] != 2 && objc_msgSend(v11, "tokenType") != 3)
  {
    if ([v11 tokenType] != 58796)
    {
      goto LABEL_9;
    }

    if (!v12)
    {
      v22 = nplog_obj();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }

      *md = 136315138;
      *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
      v26 = "%s called with null nonce";
      goto LABEL_45;
    }

    if ([v12 length] == 4)
    {
LABEL_9:
      v17 = [v11 challengeData];
      if (([v11 tokenType] == 2 || objc_msgSend(v11, "tokenType") == 3 || objc_msgSend(v11, "tokenType") == 58796) && !v17)
      {
        v27 = nplog_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *md = 136315138;
          *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
          _os_log_fault_impl(&dword_1AE7E2000, v27, OS_LOG_TYPE_FAULT, "%s called with null challengeData", md, 0xCu);
        }

        v17 = 0;
        v23 = 0;
        v22 = a1;
      }

      else
      {
        v29.receiver = a1;
        v29.super_class = NSPPrivateAccessTokenResponse;
        v18 = [&v29 init];
        if (v18)
        {
          v19 = v18;
          v20 = objc_alloc_init(MEMORY[0x1E695DF88]);
          v28 = __rev16([v11 tokenType]);
          [v20 appendBytes:&v28 length:2];
          if ([v11 tokenType] == 2 || objc_msgSend(v11, "tokenType") == 3 || objc_msgSend(v11, "tokenType") == 58796)
          {
            [v20 appendData:v12];
            *md = 0u;
            v31 = 0u;
            CC_SHA256([v17 bytes], objc_msgSend(v17, "length"), md);
            [v20 appendBytes:md length:32];
          }

          if (v14)
          {
            [v20 appendData:v14];
          }

          else
          {
            *md = 0u;
            v31 = 0u;
            CC_SHA256([v13 bytes], objc_msgSend(v13, "length"), md);
            [v20 appendBytes:md length:32];
          }

          [v20 appendData:v16];
          objc_setProperty_atomic(v19, v21, v20, 8);
          v22 = v19;

          v23 = v22;
        }

        else
        {
          v22 = nplog_obj();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            *md = 0;
            _os_log_fault_impl(&dword_1AE7E2000, v22, OS_LOG_TYPE_FAULT, "[super init] failed", md, 2u);
          }

          v23 = 0;
        }
      }

      goto LABEL_22;
    }

    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v26 = "%s called with null (nonce.length == 4)";
LABEL_45:
    _os_log_fault_impl(&dword_1AE7E2000, v22, OS_LOG_TYPE_FAULT, v26, md, 0xCu);
    goto LABEL_47;
  }

  if (!v12)
  {
    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v26 = "%s called with null nonce";
    goto LABEL_45;
  }

  if ([v12 length] == 32)
  {
    goto LABEL_9;
  }

  v22 = nplog_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v26 = "%s called with null (nonce.length == 32)";
    goto LABEL_45;
  }

LABEL_47:
  v23 = 0;
  v17 = a1;
LABEL_22:

LABEL_23:
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

@end