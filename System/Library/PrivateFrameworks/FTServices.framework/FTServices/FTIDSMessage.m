@interface FTIDSMessage
- (FTIDSMessage)init;
- (id)additionalMessageHeaders;
- (id)additionalMessageHeadersForOutgoingPush;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addAuthUserID:(id)a3 certificate:(id)a4 privateKey:(__SecKey *)a5 publicKey:(__SecKey *)a6;
- (void)dealloc;
- (void)setIdentityPrivateKey:(__SecKey *)a3;
- (void)setIdentityPublicKey:(__SecKey *)a3;
- (void)setPushPrivateKey:(__SecKey *)a3;
- (void)setPushPublicKey:(__SecKey *)a3;
@end

@implementation FTIDSMessage

- (FTIDSMessage)init
{
  v6.receiver = self;
  v6.super_class = FTIDSMessage;
  v2 = [(IDSBaseMessage *)&v6 init];
  if (v2)
  {
    IMGetConferenceSettings();
    v3 = 0;
    v4 = [v3 lastObject];
    [(IDSBaseMessage *)v2 setTopic:v4];

    [(IDSBaseMessage *)v2 setWantsResponse:1];
    [(IDSBaseMessage *)v2 setRetryCount:&unk_1F09D07A0];
  }

  return v2;
}

- (id)additionalMessageHeaders
{
  v11.receiver = self;
  v11.super_class = FTIDSMessage;
  v3 = [(IDSBaseMessage *)&v11 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (![(IDSBaseMessage *)self _usingOutgoingPush])
  {
    v5 = [(FTIDSMessage *)self pushToken];
    v6 = [v5 _FTStringFromBaseData];

    if (v6)
    {
      CFDictionarySetValue(Mutable, @"x-push-token", v6);
    }
  }

  if ([(FTIDSMessage *)self wantsIDSProtocolVersion])
  {
    v7 = _IDSIDProtocolVersionNumber();
    v8 = [v7 stringValue];

    if (v8)
    {
      CFDictionarySetValue(Mutable, @"x-protocol-version", v8);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1959641B4();
    }
  }

  v9 = [(FTIDSMessage *)self selfURI];
  if (v9)
  {
    CFDictionarySetValue(Mutable, @"x-id-self-uri", v9);
  }

  return Mutable;
}

- (void)dealloc
{
  [(FTIDSMessage *)self setPushPrivateKey:0];
  [(FTIDSMessage *)self setPushPublicKey:0];
  [(FTIDSMessage *)self setIdentityPrivateKey:0];
  [(FTIDSMessage *)self setIdentityPublicKey:0];
  v3.receiver = self;
  v3.super_class = FTIDSMessage;
  [(FTIDSMessage *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = FTIDSMessage;
  v4 = [(IDSBaseMessage *)&v16 copyWithZone:a3];
  v5 = [(FTIDSMessage *)self pushCertificate];
  [v4 setPushCertificate:v5];

  [v4 setPushPrivateKey:{-[FTIDSMessage pushPrivateKey](self, "pushPrivateKey")}];
  [v4 setPushPublicKey:{-[FTIDSMessage pushPublicKey](self, "pushPublicKey")}];
  v6 = [(FTIDSMessage *)self IDCertificate];
  [v4 setIDCertificate:v6];

  [v4 setIdentityPrivateKey:{-[FTIDSMessage identityPrivateKey](self, "identityPrivateKey")}];
  [v4 setIdentityPublicKey:{-[FTIDSMessage identityPublicKey](self, "identityPublicKey")}];
  v7 = [(FTIDSMessage *)self pushToken];
  [v4 setPushToken:v7];

  v8 = [(FTIDSMessage *)self selfURI];
  [v4 setSelfURI:v8];

  v9 = [(FTIDSMessage *)self publicKeyArray];
  [v4 setPublicKeyArray:v9];

  v10 = [(FTIDSMessage *)self privateKeyArray];
  [v4 setPrivateKeyArray:v10];

  v11 = [(FTIDSMessage *)self userIDArray];
  [v4 setUserIDArray:v11];

  v12 = [(FTIDSMessage *)self certDataArray];
  [v4 setCertDataArray:v12];

  v13 = [(FTIDSMessage *)self serverTimestamp];
  [v4 setServerTimestamp:v13];

  v14 = [(FTIDSMessage *)self serverTimestampReceivedDate];
  [v4 setServerTimestampReceivedDate:v14];

  return v4;
}

- (void)setPushPublicKey:(__SecKey *)a3
{
  pushPublicKey = self->_pushPublicKey;
  if (pushPublicKey != a3)
  {
    if (pushPublicKey)
    {
      CFRelease(pushPublicKey);
      self->_pushPublicKey = 0;
    }

    if (a3)
    {
      self->_pushPublicKey = a3;

      CFRetain(a3);
    }
  }
}

- (void)setIdentityPrivateKey:(__SecKey *)a3
{
  identityKey = self->_identityKey;
  if (identityKey != a3)
  {
    if (identityKey)
    {
      CFRelease(identityKey);
      self->_identityKey = 0;
    }

    if (a3)
    {
      self->_identityKey = a3;

      CFRetain(a3);
    }
  }
}

- (void)setIdentityPublicKey:(__SecKey *)a3
{
  identityPublicKey = self->_identityPublicKey;
  if (identityPublicKey != a3)
  {
    if (identityPublicKey)
    {
      CFRelease(identityPublicKey);
      self->_identityPublicKey = 0;
    }

    if (a3)
    {
      self->_identityPublicKey = a3;

      CFRetain(a3);
    }
  }
}

- (void)setPushPrivateKey:(__SecKey *)a3
{
  pushKey = self->_pushKey;
  if (pushKey != a3)
  {
    if (pushKey)
    {
      CFRelease(pushKey);
      self->_pushKey = 0;
    }

    if (a3)
    {
      self->_pushKey = a3;

      CFRetain(a3);
    }
  }
}

- (void)addAuthUserID:(id)a3 certificate:(id)a4 privateKey:(__SecKey *)a5 publicKey:(__SecKey *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if ([v10 length] && (v12 = objc_msgSend(v11, "length"), a6) && a5 && v12)
  {
    v13 = [(FTIDSMessage *)self userIDArray];
    v14 = [v13 containsObject:v10];

    if ((v14 & 1) == 0)
    {
      if (!self->_certDataArray)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        certDataArray = self->_certDataArray;
        self->_certDataArray = v15;
      }

      if (!self->_userIDArray)
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
        userIDArray = self->_userIDArray;
        self->_userIDArray = v17;
      }

      if (!self->_publicKeyArray)
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        publicKeyArray = self->_publicKeyArray;
        self->_publicKeyArray = v19;
      }

      if (!self->_privateKeyArray)
      {
        v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
        privateKeyArray = self->_privateKeyArray;
        self->_privateKeyArray = v21;
      }

      [(NSMutableArray *)self->_certDataArray addObject:v11];
      [(NSMutableArray *)self->_userIDArray addObject:v10];
      [(NSMutableArray *)self->_privateKeyArray addObject:a5];
      [(NSMutableArray *)self->_publicKeyArray addObject:a6];
    }
  }

  else
  {
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = a6;
      v31 = 2112;
      v32 = a5;
      _os_log_impl(&dword_195925000, v23, OS_LOG_TYPE_ERROR, "Passed in bogus info to FTIDSMessage (%@:%@:%@:%@)", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)additionalMessageHeadersForOutgoingPush
{
  v7.receiver = self;
  v7.super_class = FTIDSMessage;
  v3 = [(IDSBaseMessage *)&v7 additionalMessageHeadersForOutgoingPush];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v5 = [(FTIDSMessage *)self selfURI];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"x-id-self-uri", v5);
  }

  return Mutable;
}

@end