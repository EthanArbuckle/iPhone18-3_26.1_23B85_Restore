@interface FTiMessageRequestMMCSUploadToken
- (FTiMessageRequestMMCSUploadToken)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation FTiMessageRequestMMCSUploadToken

- (FTiMessageRequestMMCSUploadToken)init
{
  v10.receiver = self;
  v10.super_class = FTiMessageRequestMMCSUploadToken;
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

- (void)dealloc
{
  objc_msgSend_setResponseAuthToken_(self, a2, 0);
  objc_msgSend_setResponseRequestURL_(self, v3, 0);
  objc_msgSend_setResponseRequestorID_(self, v4, 0);
  objc_msgSend_setLength_(self, v5, 0);
  objc_msgSend_setTopic_(self, v6, 0);
  objc_msgSend_setSignature_(self, v7, 0);
  objc_msgSend_setContentBody_(self, v8, 0);
  objc_msgSend_setContentHeaders_(self, v9, 0);
  objc_msgSend_setResponseContentHeaders_(self, v10, 0);
  objc_msgSend_setSenderID_(self, v11, 0);
  objc_msgSend_setDestinationID_(self, v12, 0);
  objc_msgSend_setAnonymousSenderID_(self, v13, 0);
  objc_msgSend_setSessionToken_(self, v14, 0);
  objc_msgSend_setPushToken_(self, v15, 0);
  v16.receiver = self;
  v16.super_class = FTiMessageRequestMMCSUploadToken;
  [(FTiMessageRequestMMCSUploadToken *)&v16 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v66.receiver = self;
  v66.super_class = FTiMessageRequestMMCSUploadToken;
  v4 = [(IDSMessage *)&v66 copyWithZone:a3];
  v7 = objc_msgSend_responseAuthToken(self, v5, v6);
  objc_msgSend_setResponseAuthToken_(v4, v8, v7);

  v11 = objc_msgSend_responseRequestURL(self, v9, v10);
  objc_msgSend_setResponseRequestURL_(v4, v12, v11);

  v15 = objc_msgSend_responseRequestorID(self, v13, v14);
  objc_msgSend_setResponseRequestorID_(v4, v16, v15);

  v19 = objc_msgSend_length(self, v17, v18);
  objc_msgSend_setLength_(v4, v20, v19);

  v23 = objc_msgSend_signature(self, v21, v22);
  objc_msgSend_setSignature_(v4, v24, v23);

  v27 = objc_msgSend_contentBody(self, v25, v26);
  objc_msgSend_setContentBody_(v4, v28, v27);

  v31 = objc_msgSend_contentHeaders(self, v29, v30);
  objc_msgSend_setContentHeaders_(v4, v32, v31);

  v35 = objc_msgSend_contentVersion(self, v33, v34);
  objc_msgSend_setContentVersion_(v4, v36, v35);
  v39 = objc_msgSend_responseContentHeaders(self, v37, v38);
  objc_msgSend_setResponseContentHeaders_(v4, v40, v39);

  v43 = objc_msgSend_responseContentVersion(self, v41, v42);
  objc_msgSend_setResponseContentVersion_(v4, v44, v43);
  v47 = objc_msgSend_senderID(self, v45, v46);
  objc_msgSend_setSenderID_(v4, v48, v47);

  v51 = objc_msgSend_destinationID(self, v49, v50);
  objc_msgSend_setDestinationID_(v4, v52, v51);

  v55 = objc_msgSend_anonymousSenderID(self, v53, v54);
  objc_msgSend_setAnonymousSenderID_(v4, v56, v55);

  v59 = objc_msgSend_sessionToken(self, v57, v58);
  objc_msgSend_setSessionToken_(v4, v60, v59);

  v63 = objc_msgSend_pushToken(self, v61, v62);
  objc_msgSend_setPushToken_(v4, v64, v63);

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_addObject_(v2, v3, @"mS");
  objc_msgSend_addObject_(v2, v4, @"mL");

  return v2;
}

- (id)messageBody
{
  v41.receiver = self;
  v41.super_class = FTiMessageRequestMMCSUploadToken;
  v3 = [(IDSMessage *)&v41 messageBody];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  v9 = objc_msgSend_signature(self, v7, v8);
  if (v9)
  {
    CFDictionarySetValue(v6, @"mS", v9);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867F68();
  }

  v12 = objc_msgSend_length(self, v10, v11);
  if (v12)
  {
    CFDictionarySetValue(v6, @"mL", v12);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254868004();
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

  v24 = objc_msgSend_contentBody(self, v22, v23);
  if (v24)
  {
    CFDictionarySetValue(v6, @"cB", v24);
  }

  v27 = objc_msgSend_pushToken(self, v25, v26);
  if (v27)
  {
    CFDictionarySetValue(v6, @"t", v27);
  }

  v30 = objc_msgSend_anonymousSenderID(self, v28, v29);
  if (v30)
  {
    CFDictionarySetValue(v6, @"sI", v30);
  }

  v33 = objc_msgSend_sessionToken(self, v31, v32);
  if (v33)
  {
    CFDictionarySetValue(v6, @"sT", v33);
  }

  v36 = objc_msgSend_senderID(self, v34, v35);
  if (v36)
  {
    CFDictionarySetValue(v6, @"sP", v36);
  }

  v39 = objc_msgSend_destinationID(self, v37, v38);
  if (v39)
  {
    CFDictionarySetValue(v6, @"tP", v39);
  }

  return v6;
}

- (void)handleResponseDictionary:(id)a3
{
  v22 = a3;
  v6 = objc_msgSend_objectForKey_(v22, v4, @"mA");
  if (v6)
  {
    objc_msgSend_setResponseAuthToken_(self, v5, v6);
  }

  v8 = objc_msgSend_objectForKey_(v22, v5, @"mR");
  if (v8)
  {
    objc_msgSend_setResponseRequestURL_(self, v7, v8);
  }

  v10 = objc_msgSend_objectForKey_(v22, v7, @"mU");
  if (v10)
  {
    objc_msgSend_setResponseRequestorID_(self, v9, v10);
  }

  v11 = objc_msgSend_objectForKey_(v22, v9, @"cV");
  v14 = objc_msgSend_intValue(v11, v12, v13);
  objc_msgSend_setResponseContentVersion_(self, v15, v14);

  v17 = objc_msgSend_objectForKey_(v22, v16, @"cH");
  objc_msgSend_setResponseContentHeaders_(self, v18, v17);

  v20 = objc_msgSend_objectForKey_(v22, v19, @"cB");
  objc_msgSend_setResponseContentBody_(self, v21, v20);
}

@end