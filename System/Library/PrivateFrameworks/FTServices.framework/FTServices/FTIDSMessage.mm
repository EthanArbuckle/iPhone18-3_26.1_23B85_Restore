@interface FTIDSMessage
- (FTIDSMessage)init;
- (id)additionalMessageHeaders;
- (id)additionalMessageHeadersForOutgoingPush;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addAuthUserID:(id)d certificate:(id)certificate privateKey:(__SecKey *)key publicKey:(__SecKey *)publicKey;
- (void)dealloc;
- (void)setIdentityPrivateKey:(__SecKey *)key;
- (void)setIdentityPublicKey:(__SecKey *)key;
- (void)setPushPrivateKey:(__SecKey *)key;
- (void)setPushPublicKey:(__SecKey *)key;
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
    lastObject = [v3 lastObject];
    [(IDSBaseMessage *)v2 setTopic:lastObject];

    [(IDSBaseMessage *)v2 setWantsResponse:1];
    [(IDSBaseMessage *)v2 setRetryCount:&unk_1F09D07A0];
  }

  return v2;
}

- (id)additionalMessageHeaders
{
  v11.receiver = self;
  v11.super_class = FTIDSMessage;
  additionalMessageHeaders = [(IDSBaseMessage *)&v11 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (![(IDSBaseMessage *)self _usingOutgoingPush])
  {
    pushToken = [(FTIDSMessage *)self pushToken];
    _FTStringFromBaseData = [pushToken _FTStringFromBaseData];

    if (_FTStringFromBaseData)
    {
      CFDictionarySetValue(Mutable, @"x-push-token", _FTStringFromBaseData);
    }
  }

  if ([(FTIDSMessage *)self wantsIDSProtocolVersion])
  {
    v7 = _IDSIDProtocolVersionNumber();
    stringValue = [v7 stringValue];

    if (stringValue)
    {
      CFDictionarySetValue(Mutable, @"x-protocol-version", stringValue);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1959641B4();
    }
  }

  selfURI = [(FTIDSMessage *)self selfURI];
  if (selfURI)
  {
    CFDictionarySetValue(Mutable, @"x-id-self-uri", selfURI);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = FTIDSMessage;
  v4 = [(IDSBaseMessage *)&v16 copyWithZone:zone];
  pushCertificate = [(FTIDSMessage *)self pushCertificate];
  [v4 setPushCertificate:pushCertificate];

  [v4 setPushPrivateKey:{-[FTIDSMessage pushPrivateKey](self, "pushPrivateKey")}];
  [v4 setPushPublicKey:{-[FTIDSMessage pushPublicKey](self, "pushPublicKey")}];
  iDCertificate = [(FTIDSMessage *)self IDCertificate];
  [v4 setIDCertificate:iDCertificate];

  [v4 setIdentityPrivateKey:{-[FTIDSMessage identityPrivateKey](self, "identityPrivateKey")}];
  [v4 setIdentityPublicKey:{-[FTIDSMessage identityPublicKey](self, "identityPublicKey")}];
  pushToken = [(FTIDSMessage *)self pushToken];
  [v4 setPushToken:pushToken];

  selfURI = [(FTIDSMessage *)self selfURI];
  [v4 setSelfURI:selfURI];

  publicKeyArray = [(FTIDSMessage *)self publicKeyArray];
  [v4 setPublicKeyArray:publicKeyArray];

  privateKeyArray = [(FTIDSMessage *)self privateKeyArray];
  [v4 setPrivateKeyArray:privateKeyArray];

  userIDArray = [(FTIDSMessage *)self userIDArray];
  [v4 setUserIDArray:userIDArray];

  certDataArray = [(FTIDSMessage *)self certDataArray];
  [v4 setCertDataArray:certDataArray];

  serverTimestamp = [(FTIDSMessage *)self serverTimestamp];
  [v4 setServerTimestamp:serverTimestamp];

  serverTimestampReceivedDate = [(FTIDSMessage *)self serverTimestampReceivedDate];
  [v4 setServerTimestampReceivedDate:serverTimestampReceivedDate];

  return v4;
}

- (void)setPushPublicKey:(__SecKey *)key
{
  pushPublicKey = self->_pushPublicKey;
  if (pushPublicKey != key)
  {
    if (pushPublicKey)
    {
      CFRelease(pushPublicKey);
      self->_pushPublicKey = 0;
    }

    if (key)
    {
      self->_pushPublicKey = key;

      CFRetain(key);
    }
  }
}

- (void)setIdentityPrivateKey:(__SecKey *)key
{
  identityKey = self->_identityKey;
  if (identityKey != key)
  {
    if (identityKey)
    {
      CFRelease(identityKey);
      self->_identityKey = 0;
    }

    if (key)
    {
      self->_identityKey = key;

      CFRetain(key);
    }
  }
}

- (void)setIdentityPublicKey:(__SecKey *)key
{
  identityPublicKey = self->_identityPublicKey;
  if (identityPublicKey != key)
  {
    if (identityPublicKey)
    {
      CFRelease(identityPublicKey);
      self->_identityPublicKey = 0;
    }

    if (key)
    {
      self->_identityPublicKey = key;

      CFRetain(key);
    }
  }
}

- (void)setPushPrivateKey:(__SecKey *)key
{
  pushKey = self->_pushKey;
  if (pushKey != key)
  {
    if (pushKey)
    {
      CFRelease(pushKey);
      self->_pushKey = 0;
    }

    if (key)
    {
      self->_pushKey = key;

      CFRetain(key);
    }
  }
}

- (void)addAuthUserID:(id)d certificate:(id)certificate privateKey:(__SecKey *)key publicKey:(__SecKey *)publicKey
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  certificateCopy = certificate;
  if ([dCopy length] && (v12 = objc_msgSend(certificateCopy, "length"), publicKey) && key && v12)
  {
    userIDArray = [(FTIDSMessage *)self userIDArray];
    v14 = [userIDArray containsObject:dCopy];

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

      [(NSMutableArray *)self->_certDataArray addObject:certificateCopy];
      [(NSMutableArray *)self->_userIDArray addObject:dCopy];
      [(NSMutableArray *)self->_privateKeyArray addObject:key];
      [(NSMutableArray *)self->_publicKeyArray addObject:publicKey];
    }
  }

  else
  {
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v26 = dCopy;
      v27 = 2112;
      v28 = certificateCopy;
      v29 = 2112;
      publicKeyCopy = publicKey;
      v31 = 2112;
      keyCopy = key;
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
  additionalMessageHeadersForOutgoingPush = [(IDSBaseMessage *)&v7 additionalMessageHeadersForOutgoingPush];
  Mutable = [additionalMessageHeadersForOutgoingPush mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  selfURI = [(FTIDSMessage *)self selfURI];
  if (selfURI)
  {
    CFDictionarySetValue(Mutable, @"x-id-self-uri", selfURI);
  }

  return Mutable;
}

@end