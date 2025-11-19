@interface CKDPAssetUploadTokenRetrieveRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)authPutTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAuthPutType:(id)a3;
- (int)authPutType;
- (unint64_t)hash;
- (void)addAssets:(id)a3;
- (void)addContentRequestHeaders:(id)a3;
- (void)addUploads:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAuthPutType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPAssetUploadTokenRetrieveRequest

+ (id)options
{
  if (qword_280D54EC0 != -1)
  {
    dispatch_once(&qword_280D54EC0, &unk_28385DD20);
  }

  v3 = qword_280D54EB8;

  return v3;
}

- (void)addAssets:(id)a3
{
  v4 = a3;
  assets = self->_assets;
  v8 = v4;
  if (!assets)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_assets;
    self->_assets = v6;

    v4 = v8;
    assets = self->_assets;
  }

  objc_msgSend_addObject_(assets, v4, v4);
}

- (void)addUploads:(id)a3
{
  v4 = a3;
  uploads = self->_uploads;
  v8 = v4;
  if (!uploads)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_uploads;
    self->_uploads = v6;

    v4 = v8;
    uploads = self->_uploads;
  }

  objc_msgSend_addObject_(uploads, v4, v4);
}

- (void)addContentRequestHeaders:(id)a3
{
  v4 = a3;
  contentRequestHeaders = self->_contentRequestHeaders;
  v8 = v4;
  if (!contentRequestHeaders)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_contentRequestHeaders;
    self->_contentRequestHeaders = v6;

    v4 = v8;
    contentRequestHeaders = self->_contentRequestHeaders;
  }

  objc_msgSend_addObject_(contentRequestHeaders, v4, v4);
}

- (int)authPutType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_authPutType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasAuthPutType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)authPutTypeAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854C800[a3 - 1];
  }

  return v4;
}

- (int)StringAsAuthPutType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"authorizePut"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"reReference"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"authorizeClone"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAssetUploadTokenRetrieveRequest;
  v4 = [(CKDPAssetUploadTokenRetrieveRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v92 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  type = self->_type;
  if (type)
  {
    v8 = objc_msgSend_dictionaryRepresentation(type, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"type");
  }

  field = self->_field;
  if (field)
  {
    v11 = objc_msgSend_dictionaryRepresentation(field, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"field");
  }

  if (objc_msgSend_count(self->_assets, v4, v5))
  {
    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    v18 = objc_msgSend_count(self->_assets, v16, v17);
    v20 = objc_msgSend_initWithCapacity_(v15, v19, v18);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v21 = self->_assets;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v85, v91, 16);
    if (v23)
    {
      v26 = v23;
      v27 = *v86;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v86 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = objc_msgSend_dictionaryRepresentation(*(*(&v85 + 1) + 8 * i), v24, v25);
          objc_msgSend_addObject_(v20, v30, v29);
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v85, v91, 16);
      }

      while (v26);
    }

    objc_msgSend_setObject_forKey_(v6, v31, v20, @"assets");
  }

  if (objc_msgSend_count(self->_uploads, v13, v14))
  {
    v34 = objc_alloc(MEMORY[0x277CBEB18]);
    v37 = objc_msgSend_count(self->_uploads, v35, v36);
    v39 = objc_msgSend_initWithCapacity_(v34, v38, v37);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v40 = self->_uploads;
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v81, v90, 16);
    if (v42)
    {
      v45 = v42;
      v46 = *v82;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v82 != v46)
          {
            objc_enumerationMutation(v40);
          }

          v48 = objc_msgSend_dictionaryRepresentation(*(*(&v81 + 1) + 8 * j), v43, v44);
          objc_msgSend_addObject_(v39, v49, v48);
        }

        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v81, v90, 16);
      }

      while (v45);
    }

    objc_msgSend_setObject_forKey_(v6, v50, v39, @"uploads");
  }

  if (objc_msgSend_count(self->_contentRequestHeaders, v32, v33))
  {
    v52 = objc_alloc(MEMORY[0x277CBEB18]);
    v55 = objc_msgSend_count(self->_contentRequestHeaders, v53, v54);
    v57 = objc_msgSend_initWithCapacity_(v52, v56, v55);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v58 = self->_contentRequestHeaders;
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v77, v89, 16);
    if (v60)
    {
      v63 = v60;
      v64 = *v78;
      do
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v78 != v64)
          {
            objc_enumerationMutation(v58);
          }

          v66 = objc_msgSend_dictionaryRepresentation(*(*(&v77 + 1) + 8 * k), v61, v62);
          objc_msgSend_addObject_(v57, v67, v66);
        }

        v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v77, v89, 16);
      }

      while (v63);
    }

    objc_msgSend_setObject_forKey_(v6, v68, v57, @"contentRequestHeaders");
  }

  authPutRequest = self->_authPutRequest;
  if (authPutRequest)
  {
    objc_msgSend_setObject_forKey_(v6, v51, authPutRequest, @"authPutRequest");
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v71 = self->_authPutType - 1;
    if (v71 >= 3)
    {
      v72 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v51, @"(unknown: %i)", self->_authPutType);
    }

    else
    {
      v72 = off_27854C800[v71];
    }

    objc_msgSend_setObject_forKey_(v6, v51, v72, @"authPutType");

    has = self->_has;
  }

  if (has)
  {
    v73 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v51, self->_options);
    objc_msgSend_setObject_forKey_(v6, v74, v73, @"options");
  }

  v75 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_type)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_field)
  {
    PBDataWriterWriteSubmessage();
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = self->_assets;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v41, v47, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v41, v47, 16);
    }

    while (v8);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = self->_uploads;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v37, v46, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v37 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v37, v46, 16);
    }

    while (v16);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = self->_contentRequestHeaders;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v33, v45, 16);
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v33 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v28, &v33, v45, 16);
    }

    while (v24);
  }

  if (self->_authPutRequest)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    authPutType = self->_authPutType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    options = self->_options;
    PBDataWriterWriteUint64Field();
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v36 = a3;
  type = self->_type;
  if (type)
  {
    objc_msgSend_setType_(v36, v4, type);
  }

  field = self->_field;
  if (field)
  {
    objc_msgSend_setField_(v36, v4, field);
  }

  if (objc_msgSend_assetsCount(self, v4, field))
  {
    objc_msgSend_clearAssets(v36, v7, v8);
    v11 = objc_msgSend_assetsCount(self, v9, v10);
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_assetsAtIndex_(self, v7, i);
        objc_msgSend_addAssets_(v36, v15, v14);
      }
    }
  }

  if (objc_msgSend_uploadsCount(self, v7, v8))
  {
    objc_msgSend_clearUploads(v36, v16, v17);
    v20 = objc_msgSend_uploadsCount(self, v18, v19);
    if (v20)
    {
      v21 = v20;
      for (j = 0; j != v21; ++j)
      {
        v23 = objc_msgSend_uploadsAtIndex_(self, v16, j);
        objc_msgSend_addUploads_(v36, v24, v23);
      }
    }
  }

  if (objc_msgSend_contentRequestHeadersCount(self, v16, v17))
  {
    objc_msgSend_clearContentRequestHeaders(v36, v25, v26);
    v29 = objc_msgSend_contentRequestHeadersCount(self, v27, v28);
    if (v29)
    {
      v30 = v29;
      for (k = 0; k != v30; ++k)
      {
        v32 = objc_msgSend_contentRequestHeadersAtIndex_(self, v25, k);
        objc_msgSend_addContentRequestHeaders_(v36, v33, v32);
      }
    }
  }

  authPutRequest = self->_authPutRequest;
  if (authPutRequest)
  {
    objc_msgSend_setAuthPutRequest_(v36, v25, authPutRequest);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v36 + 8) = self->_authPutType;
    *(v36 + 72) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v36 + 1) = self->_options;
    *(v36 + 72) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_type, v11, a3);
  v13 = *(v10 + 56);
  *(v10 + 56) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_field, v14, a3);
  v16 = *(v10 + 48);
  *(v10 + 48) = v15;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v17 = self->_assets;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v58, v64, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v59;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v59 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_copyWithZone_(*(*(&v58 + 1) + 8 * i), v20, a3);
        objc_msgSend_addAssets_(v10, v25, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v58, v64, 16);
    }

    while (v21);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v26 = self->_uploads;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v54, v63, 16);
  if (v28)
  {
    v30 = v28;
    v31 = *v55;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v55 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = objc_msgSend_copyWithZone_(*(*(&v54 + 1) + 8 * j), v29, a3);
        objc_msgSend_addUploads_(v10, v34, v33);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v54, v63, 16);
    }

    while (v30);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v35 = self->_contentRequestHeaders;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v50, v62, 16);
  if (v37)
  {
    v39 = v37;
    v40 = *v51;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v51 != v40)
        {
          objc_enumerationMutation(v35);
        }

        v42 = objc_msgSend_copyWithZone_(*(*(&v50 + 1) + 8 * k), v38, a3, v50);
        objc_msgSend_addContentRequestHeaders_(v10, v43, v42);
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v50, v62, 16);
    }

    while (v39);
  }

  v45 = objc_msgSend_copyWithZone_(self->_authPutRequest, v44, a3);
  v46 = *(v10 + 24);
  *(v10 + 24) = v45;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 32) = self->_authPutType;
    *(v10 + 72) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 8) = self->_options;
    *(v10 + 72) |= 1u;
  }

  v48 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_23;
  }

  type = self->_type;
  v9 = v4[7];
  if (type | v9)
  {
    if (!objc_msgSend_isEqual_(type, v7, v9))
    {
      goto LABEL_23;
    }
  }

  field = self->_field;
  v11 = v4[6];
  if (field | v11)
  {
    if (!objc_msgSend_isEqual_(field, v7, v11))
    {
      goto LABEL_23;
    }
  }

  assets = self->_assets;
  v13 = v4[2];
  if (assets | v13)
  {
    if (!objc_msgSend_isEqual_(assets, v7, v13))
    {
      goto LABEL_23;
    }
  }

  uploads = self->_uploads;
  v15 = v4[8];
  if (uploads | v15)
  {
    if (!objc_msgSend_isEqual_(uploads, v7, v15))
    {
      goto LABEL_23;
    }
  }

  contentRequestHeaders = self->_contentRequestHeaders;
  v17 = v4[5];
  if (contentRequestHeaders | v17)
  {
    if (!objc_msgSend_isEqual_(contentRequestHeaders, v7, v17))
    {
      goto LABEL_23;
    }
  }

  authPutRequest = self->_authPutRequest;
  v19 = v4[3];
  if (authPutRequest | v19)
  {
    if (!objc_msgSend_isEqual_(authPutRequest, v7, v19))
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((v4[9] & 2) == 0 || self->_authPutType != *(v4 + 8))
    {
      goto LABEL_23;
    }
  }

  else if ((v4[9] & 2) != 0)
  {
LABEL_23:
    v20 = 0;
    goto LABEL_24;
  }

  v20 = (v4[9] & 1) == 0;
  if (*&self->_has)
  {
    if ((v4[9] & 1) == 0 || self->_options != v4[1])
    {
      goto LABEL_23;
    }

    v20 = 1;
  }

LABEL_24:

  return v20;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_type, a2, v2);
  v7 = objc_msgSend_hash(self->_field, v5, v6);
  v10 = objc_msgSend_hash(self->_assets, v8, v9);
  v13 = objc_msgSend_hash(self->_uploads, v11, v12);
  v16 = objc_msgSend_hash(self->_contentRequestHeaders, v14, v15);
  v19 = objc_msgSend_hash(self->_authPutRequest, v17, v18);
  if ((*&self->_has & 2) != 0)
  {
    v20 = 2654435761 * self->_authPutType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v19 ^ v20 ^ v21;
  }

  v20 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = 2654435761u * self->_options;
  return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v19 ^ v20 ^ v21;
}

- (void)mergeFrom:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  type = self->_type;
  v7 = *(v5 + 7);
  if (type)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(type, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setType_(self, v4, v7);
  }

  field = self->_field;
  v9 = *(v5 + 6);
  if (field)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(field, v4, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setField_(self, v4, v9);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = *(v5 + 2);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v43, v49, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_addAssets_(self, v13, *(*(&v43 + 1) + 8 * i));
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v43, v49, 16);
    }

    while (v14);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = *(v5 + 8);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v39, v48, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v40;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v17);
        }

        objc_msgSend_addUploads_(self, v20, *(*(&v39 + 1) + 8 * j));
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v39, v48, 16);
    }

    while (v21);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = *(v5 + 5);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v35, v47, 16);
  if (v26)
  {
    v28 = v26;
    v29 = *v36;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(v24);
        }

        objc_msgSend_addContentRequestHeaders_(self, v27, *(*(&v35 + 1) + 8 * k), v35);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v35, v47, 16);
    }

    while (v28);
  }

  v32 = *(v5 + 3);
  if (v32)
  {
    objc_msgSend_setAuthPutRequest_(self, v31, v32);
  }

  v33 = *(v5 + 72);
  if ((v33 & 2) != 0)
  {
    self->_authPutType = *(v5 + 8);
    *&self->_has |= 2u;
    v33 = *(v5 + 72);
  }

  if (v33)
  {
    self->_options = *(v5 + 1);
    *&self->_has |= 1u;
  }

  v34 = *MEMORY[0x277D85DE8];
}

@end