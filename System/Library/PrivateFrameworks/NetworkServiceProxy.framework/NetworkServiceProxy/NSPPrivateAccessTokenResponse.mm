@interface NSPPrivateAccessTokenResponse
- (NSObject)initWithChallenge:(void *)challenge nonce:(void *)nonce tokenKey:(void *)key keyID:(void *)d authenticator:;
@end

@implementation NSPPrivateAccessTokenResponse

- (NSObject)initWithChallenge:(void *)challenge nonce:(void *)nonce tokenKey:(void *)key keyID:(void *)d authenticator:
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a2;
  challengeCopy = challenge;
  nonceCopy = nonce;
  keyCopy = key;
  dCopy = d;
  v16 = dCopy;
  if (!self)
  {
    v23 = 0;
    goto LABEL_23;
  }

  if (!v11)
  {
    selfCopy = nplog_obj();
    if (!os_log_type_enabled(selfCopy, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v26 = "%s called with null challenge";
    goto LABEL_45;
  }

  if (!nonceCopy)
  {
    selfCopy = nplog_obj();
    if (!os_log_type_enabled(selfCopy, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v26 = "%s called with null tokenKey";
    goto LABEL_45;
  }

  if (!dCopy)
  {
    selfCopy = nplog_obj();
    if (!os_log_type_enabled(selfCopy, OS_LOG_TYPE_FAULT))
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

    if (!challengeCopy)
    {
      selfCopy = nplog_obj();
      if (!os_log_type_enabled(selfCopy, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }

      *md = 136315138;
      *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
      v26 = "%s called with null nonce";
      goto LABEL_45;
    }

    if ([challengeCopy length] == 4)
    {
LABEL_9:
      selfCopy2 = [v11 challengeData];
      if (([v11 tokenType] == 2 || objc_msgSend(v11, "tokenType") == 3 || objc_msgSend(v11, "tokenType") == 58796) && !selfCopy2)
      {
        v27 = nplog_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *md = 136315138;
          *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
          _os_log_fault_impl(&dword_1AE7E2000, v27, OS_LOG_TYPE_FAULT, "%s called with null challengeData", md, 0xCu);
        }

        selfCopy2 = 0;
        v23 = 0;
        selfCopy = self;
      }

      else
      {
        v29.receiver = self;
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
            [v20 appendData:challengeCopy];
            *md = 0u;
            v31 = 0u;
            CC_SHA256([selfCopy2 bytes], objc_msgSend(selfCopy2, "length"), md);
            [v20 appendBytes:md length:32];
          }

          if (keyCopy)
          {
            [v20 appendData:keyCopy];
          }

          else
          {
            *md = 0u;
            v31 = 0u;
            CC_SHA256([nonceCopy bytes], objc_msgSend(nonceCopy, "length"), md);
            [v20 appendBytes:md length:32];
          }

          [v20 appendData:v16];
          objc_setProperty_atomic(v19, v21, v20, 8);
          selfCopy = v19;

          v23 = selfCopy;
        }

        else
        {
          selfCopy = nplog_obj();
          if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_FAULT))
          {
            *md = 0;
            _os_log_fault_impl(&dword_1AE7E2000, selfCopy, OS_LOG_TYPE_FAULT, "[super init] failed", md, 2u);
          }

          v23 = 0;
        }
      }

      goto LABEL_22;
    }

    selfCopy = nplog_obj();
    if (!os_log_type_enabled(selfCopy, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v26 = "%s called with null (nonce.length == 4)";
LABEL_45:
    _os_log_fault_impl(&dword_1AE7E2000, selfCopy, OS_LOG_TYPE_FAULT, v26, md, 0xCu);
    goto LABEL_47;
  }

  if (!challengeCopy)
  {
    selfCopy = nplog_obj();
    if (!os_log_type_enabled(selfCopy, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v26 = "%s called with null nonce";
    goto LABEL_45;
  }

  if ([challengeCopy length] == 32)
  {
    goto LABEL_9;
  }

  selfCopy = nplog_obj();
  if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_FAULT))
  {
    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v26 = "%s called with null (nonce.length == 32)";
    goto LABEL_45;
  }

LABEL_47:
  v23 = 0;
  selfCopy2 = self;
LABEL_22:

LABEL_23:
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

@end