@interface CKCDPCodeServiceResponseAssetAuthorizationResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addResponseHeaders:(id)headers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKCDPCodeServiceResponseAssetAuthorizationResponse

- (void)addResponseHeaders:(id)headers
{
  headersCopy = headers;
  responseHeaders = self->_responseHeaders;
  v8 = headersCopy;
  if (!responseHeaders)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_responseHeaders;
    self->_responseHeaders = v6;

    headersCopy = v8;
    responseHeaders = self->_responseHeaders;
  }

  objc_msgSend_addObject_(responseHeaders, headersCopy, headersCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCodeServiceResponseAssetAuthorizationResponse;
  v4 = [(CKCDPCodeServiceResponseAssetAuthorizationResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  responseUUID = self->_responseUUID;
  if (responseUUID)
  {
    objc_msgSend_setObject_forKey_(v4, v5, responseUUID, @"responseUUID");
  }

  authGetResponseBody = self->_authGetResponseBody;
  if (authGetResponseBody)
  {
    objc_msgSend_setObject_forKey_(v6, v5, authGetResponseBody, @"authGetResponseBody");
  }

  if (objc_msgSend_count(self->_responseHeaders, v5, authGetResponseBody))
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v12 = objc_msgSend_count(self->_responseHeaders, v10, v11);
    v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = self->_responseHeaders;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v28, v32, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v29;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v15);
          }

          v23 = objc_msgSend_dictionaryRepresentation(*(*(&v28 + 1) + 8 * i), v18, v19, v28);
          objc_msgSend_addObject_(v14, v24, v23);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v28, v32, 16);
      }

      while (v20);
    }

    objc_msgSend_setObject_forKey_(v6, v25, v14, @"responseHeaders");
  }

  v26 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_responseUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_authGetResponseBody)
  {
    PBDataWriterWriteDataField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_responseHeaders;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v14, v18, 16);
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  responseUUID = self->_responseUUID;
  if (responseUUID)
  {
    objc_msgSend_setResponseUUID_(toCopy, v4, responseUUID);
  }

  authGetResponseBody = self->_authGetResponseBody;
  if (authGetResponseBody)
  {
    objc_msgSend_setAuthGetResponseBody_(toCopy, v4, authGetResponseBody);
  }

  if (objc_msgSend_responseHeadersCount(self, v4, authGetResponseBody))
  {
    objc_msgSend_clearResponseHeaders(toCopy, v7, v8);
    v11 = objc_msgSend_responseHeadersCount(self, v9, v10);
    if (v11)
    {
      v13 = v11;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_msgSend_responseHeadersAtIndex_(self, v12, i);
        objc_msgSend_addResponseHeaders_(toCopy, v16, v15);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_responseUUID, v11, zone);
  v13 = v10[3];
  v10[3] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_authGetResponseBody, v14, zone);
  v16 = v10[1];
  v10[1] = v15;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = self->_responseHeaders;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v28, v32, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v29;
    do
    {
      v23 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_copyWithZone_(*(*(&v28 + 1) + 8 * v23), v20, zone, v28);
        objc_msgSend_addResponseHeaders_(v10, v25, v24);

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v28, v32, 16);
    }

    while (v21);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((responseUUID = self->_responseUUID, v9 = equalCopy[3], !(responseUUID | v9)) || objc_msgSend_isEqual_(responseUUID, v7, v9)) && ((authGetResponseBody = self->_authGetResponseBody, v11 = equalCopy[1], !(authGetResponseBody | v11)) || objc_msgSend_isEqual_(authGetResponseBody, v7, v11)))
  {
    responseHeaders = self->_responseHeaders;
    v13 = equalCopy[2];
    if (responseHeaders | v13)
    {
      isEqual = objc_msgSend_isEqual_(responseHeaders, v7, v13);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_responseUUID, a2, v2);
  v7 = objc_msgSend_hash(self->_authGetResponseBody, v5, v6) ^ v4;
  return v7 ^ objc_msgSend_hash(self->_responseHeaders, v8, v9);
}

- (void)mergeFrom:(id)from
{
  v21 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = *(fromCopy + 3);
  if (v6)
  {
    objc_msgSend_setResponseUUID_(self, v4, v6);
  }

  v7 = *(fromCopy + 1);
  if (v7)
  {
    objc_msgSend_setAuthGetResponseBody_(self, v4, v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = *(fromCopy + 2);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addResponseHeaders_(self, v11, *(*(&v16 + 1) + 8 * i), v16);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v20, 16);
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end