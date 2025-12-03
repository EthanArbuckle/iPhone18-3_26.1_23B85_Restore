@interface FTiMessageRequestMMCSDownloadToken
- (FTiMessageRequestMMCSDownloadToken)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation FTiMessageRequestMMCSDownloadToken

- (FTiMessageRequestMMCSDownloadToken)init
{
  v10.receiver = self;
  v10.super_class = FTiMessageRequestMMCSDownloadToken;
  v2 = [(IDSMessage *)&v10 init];
  if (v2)
  {
    IMGetiMessageSettings();
    v3 = 0;
    v6 = objc_msgSend_lastObject(v3, v4, v5);
    objc_msgSend_setTopic_(v2, v7, v6);

    objc_msgSend_setWantsResponse_(v2, v8, 1);
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v42.receiver = self;
  v42.super_class = FTiMessageRequestMMCSDownloadToken;
  v4 = [(IDSMessage *)&v42 copyWithZone:zone];
  v7 = objc_msgSend_owner(self, v5, v6);
  objc_msgSend_setOwner_(v4, v8, v7);

  v11 = objc_msgSend_topic(self, v9, v10);
  objc_msgSend_setTopic_(v4, v12, v11);

  v15 = objc_msgSend_responseAuthToken(self, v13, v14);
  objc_msgSend_setResponseAuthToken_(v4, v16, v15);

  v19 = objc_msgSend_responseRequestorID(self, v17, v18);
  objc_msgSend_setResponseRequestorID_(v4, v20, v19);

  v23 = objc_msgSend_signature(self, v21, v22);
  objc_msgSend_setSignature_(v4, v24, v23);

  v27 = objc_msgSend_contentVersion(self, v25, v26);
  objc_msgSend_setContentVersion_(v4, v28, v27);
  v31 = objc_msgSend_contentHeaders(self, v29, v30);
  objc_msgSend_setContentHeaders_(v4, v32, v31);

  v35 = objc_msgSend_authURLString(self, v33, v34);
  objc_msgSend_setAuthURLString_(v4, v36, v35);

  v39 = objc_msgSend_responseContentBody(self, v37, v38);
  objc_msgSend_setResponseContentBody_(v4, v40, v39);

  return v4;
}

- (void)dealloc
{
  objc_msgSend_setOwner_(self, a2, 0);
  objc_msgSend_setResponseAuthToken_(self, v3, 0);
  objc_msgSend_setResponseRequestorID_(self, v4, 0);
  objc_msgSend_setSignature_(self, v5, 0);
  objc_msgSend_setContentHeaders_(self, v6, 0);
  objc_msgSend_setAuthURLString_(self, v7, 0);
  objc_msgSend_setResponseContentBody_(self, v8, 0);
  v9.receiver = self;
  v9.super_class = FTiMessageRequestMMCSDownloadToken;
  [(FTiMessageRequestMMCSDownloadToken *)&v9 dealloc];
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_addObject_(v2, v3, @"mO");
  objc_msgSend_addObject_(v2, v4, @"mS");

  return v2;
}

- (id)messageBody
{
  v26.receiver = self;
  v26.super_class = FTiMessageRequestMMCSDownloadToken;
  messageBody = [(IDSMessage *)&v26 messageBody];
  v6 = objc_msgSend_mutableCopy(messageBody, v4, v5);

  v9 = objc_msgSend_owner(self, v7, v8);
  if (v9)
  {
    CFDictionarySetValue(v6, @"mO", v9);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867ECC();
  }

  v12 = objc_msgSend_signature(self, v10, v11);
  if (v12)
  {
    CFDictionarySetValue(v6, @"mS", v12);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867F68();
  }

  v13 = MEMORY[0x277CCABB0];
  v16 = objc_msgSend_contentVersion(self, v14, v15);
  v18 = objc_msgSend_numberWithInteger_(v13, v17, v16);
  if (v18)
  {
    CFDictionarySetValue(v6, @"cV", v18);
  }

  v21 = objc_msgSend_contentHeaders(self, v19, v20);
  if (v21)
  {
    CFDictionarySetValue(v6, @"cH", v21);
  }

  v24 = objc_msgSend_authURLString(self, v22, v23);
  if (v24)
  {
    CFDictionarySetValue(v6, @"mR", v24);
  }

  return v6;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = objc_msgSend_objectForKey_(dictionaryCopy, v4, @"mA");
  if (v6)
  {
    objc_msgSend_setResponseAuthToken_(self, v5, v6);
  }

  v8 = objc_msgSend_objectForKey_(dictionaryCopy, v5, @"mU");
  if (v8)
  {
    objc_msgSend_setResponseRequestorID_(self, v7, v8);
  }

  v9 = objc_msgSend_objectForKey_(dictionaryCopy, v7, @"cV");
  v12 = objc_msgSend_intValue(v9, v10, v11);
  objc_msgSend_setResponseContentVersion_(self, v13, v12);

  v15 = objc_msgSend_objectForKey_(dictionaryCopy, v14, @"cB");
  objc_msgSend_setResponseContentBody_(self, v16, v15);
}

@end