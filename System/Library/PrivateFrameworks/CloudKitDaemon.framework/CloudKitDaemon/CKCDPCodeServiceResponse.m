@interface CKCDPCodeServiceResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAssetAuthorizationResponses:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKCDPCodeServiceResponse

- (void)addAssetAuthorizationResponses:(id)a3
{
  v4 = a3;
  assetAuthorizationResponses = self->_assetAuthorizationResponses;
  v8 = v4;
  if (!assetAuthorizationResponses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_assetAuthorizationResponses;
    self->_assetAuthorizationResponses = v6;

    v4 = v8;
    assetAuthorizationResponses = self->_assetAuthorizationResponses;
  }

  objc_msgSend_addObject_(assetAuthorizationResponses, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCodeServiceResponse;
  v4 = [(CKCDPCodeServiceResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  serializedResult = self->_serializedResult;
  if (serializedResult)
  {
    objc_msgSend_setObject_forKey_(v4, v5, serializedResult, @"serializedResult");
  }

  error = self->_error;
  if (error)
  {
    v9 = objc_msgSend_dictionaryRepresentation(error, v5, serializedResult);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"error");
  }

  if (objc_msgSend_count(self->_assetAuthorizationResponses, v5, serializedResult))
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = objc_msgSend_count(self->_assetAuthorizationResponses, v14, v15);
    v18 = objc_msgSend_initWithCapacity_(v13, v17, v16);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = self->_assetAuthorizationResponses;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v35, v39, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v36;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = objc_msgSend_dictionaryRepresentation(*(*(&v35 + 1) + 8 * i), v22, v23, v35);
          objc_msgSend_addObject_(v18, v28, v27);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v35, v39, 16);
      }

      while (v24);
    }

    objc_msgSend_setObject_forKey_(v6, v29, v18, @"assetAuthorizationResponses");
  }

  attestationResponse = self->_attestationResponse;
  if (attestationResponse)
  {
    v31 = objc_msgSend_dictionaryRepresentation(attestationResponse, v11, v12);
    objc_msgSend_setObject_forKey_(v6, v32, v31, @"attestationResponse");
  }

  v33 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)readFrom:(id)a3
{
  v5 = objc_msgSend_position(a3, a2, a3);
  if (v5 < objc_msgSend_length(a3, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a3, v8, v9))
      {
        return objc_msgSend_hasError(a3, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v13 = objc_msgSend_position(a3, v8, v9, v45) + 1;
        if (v13 >= objc_msgSend_position(a3, v14, v15) && (v18 = objc_msgSend_position(a3, v16, v17) + 1, v18 <= objc_msgSend_length(a3, v19, v20)))
        {
          v21 = objc_msgSend_data(a3, v16, v17);
          v24 = objc_msgSend_position(a3, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v45, v24, 1);

          v28 = objc_msgSend_position(a3, v26, v27);
          objc_msgSend_setPosition_(a3, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a3, v16, v17);
        }

        v12 |= (v45 & 0x7F) << v10;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a3, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a3, v8, v9))
      {
        return objc_msgSend_hasError(a3, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a3, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          serializedResult = objc_alloc_init(CKCDPCodeServiceResponseAssetAuthorizationResponse);
          objc_msgSend_addAssetAuthorizationResponses_(self, v39, serializedResult);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !sub_2252CC958(serializedResult, a3, v40))
          {
LABEL_37:

            return 0;
          }

LABEL_33:
          PBReaderRecallMark();
LABEL_34:

          goto LABEL_35;
        }

        if (v32 == 5)
        {
          serializedResult = objc_alloc_init(CKCDPCodeServiceResponseAttestationResponse);
          objc_storeStrong(&self->_attestationResponse, serializedResult);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !sub_2252CDC0C(serializedResult, a3, v35))
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v38 = PBReaderReadData();
          serializedResult = self->_serializedResult;
          self->_serializedResult = v38;
          goto LABEL_34;
        }

        if (v32 == 2)
        {
          serializedResult = objc_alloc_init(CKCDPError);
          objc_storeStrong(&self->_error, serializedResult);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !sub_2252CF2C0(serializedResult, a3, v34))
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      v41 = objc_msgSend_position(a3, v36, v37);
    }

    while (v41 < objc_msgSend_length(a3, v42, v43));
  }

  return objc_msgSend_hasError(a3, v8, v9) ^ 1;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_serializedResult)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_assetAuthorizationResponses;
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

  if (self->_attestationResponse)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v17 = a3;
  serializedResult = self->_serializedResult;
  if (serializedResult)
  {
    objc_msgSend_setSerializedResult_(v17, v4, serializedResult);
  }

  error = self->_error;
  if (error)
  {
    objc_msgSend_setError_(v17, v4, error);
  }

  if (objc_msgSend_assetAuthorizationResponsesCount(self, v4, error))
  {
    objc_msgSend_clearAssetAuthorizationResponses(v17, v7, v8);
    v11 = objc_msgSend_assetAuthorizationResponsesCount(self, v9, v10);
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_assetAuthorizationResponsesAtIndex_(self, v7, i);
        objc_msgSend_addAssetAuthorizationResponses_(v17, v15, v14);
      }
    }
  }

  attestationResponse = self->_attestationResponse;
  if (attestationResponse)
  {
    objc_msgSend_setAttestationResponse_(v17, v7, attestationResponse);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_serializedResult, v11, a3);
  v13 = v10[4];
  v10[4] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_error, v14, a3);
  v16 = v10[3];
  v10[3] = v15;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = self->_assetAuthorizationResponses;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v31, v35, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v32;
    do
    {
      v23 = 0;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_copyWithZone_(*(*(&v31 + 1) + 8 * v23), v20, a3, v31);
        objc_msgSend_addAssetAuthorizationResponses_(v10, v25, v24);

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v31, v35, 16);
    }

    while (v21);
  }

  v27 = objc_msgSend_copyWithZone_(self->_attestationResponse, v26, a3);
  v28 = v10[2];
  v10[2] = v27;

  v29 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((serializedResult = self->_serializedResult, v9 = v4[4], !(serializedResult | v9)) || objc_msgSend_isEqual_(serializedResult, v7, v9)) && ((error = self->_error, v11 = v4[3], !(error | v11)) || objc_msgSend_isEqual_(error, v7, v11)) && ((assetAuthorizationResponses = self->_assetAuthorizationResponses, v13 = v4[1], !(assetAuthorizationResponses | v13)) || objc_msgSend_isEqual_(assetAuthorizationResponses, v7, v13)))
  {
    attestationResponse = self->_attestationResponse;
    v15 = v4[2];
    if (attestationResponse | v15)
    {
      isEqual = objc_msgSend_isEqual_(attestationResponse, v7, v15);
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
  v4 = objc_msgSend_hash(self->_serializedResult, a2, v2);
  v7 = objc_msgSend_hash(self->_error, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_assetAuthorizationResponses, v8, v9);
  return v7 ^ v10 ^ objc_msgSend_hash(self->_attestationResponse, v11, v12);
}

- (void)mergeFrom:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(v5 + 4);
  if (v6)
  {
    objc_msgSend_setSerializedResult_(self, v4, v6);
  }

  error = self->_error;
  v8 = *(v5 + 3);
  if (error)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(error, v4, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setError_(self, v4, v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = *(v5 + 1);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_addAssetAuthorizationResponses_(self, v12, *(*(&v20 + 1) + 8 * i), v20);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v24, 16);
    }

    while (v13);
  }

  attestationResponse = self->_attestationResponse;
  v18 = *(v5 + 2);
  if (attestationResponse)
  {
    if (v18)
    {
      objc_msgSend_mergeFrom_(attestationResponse, v16, v18);
    }
  }

  else if (v18)
  {
    objc_msgSend_setAttestationResponse_(self, v16, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end