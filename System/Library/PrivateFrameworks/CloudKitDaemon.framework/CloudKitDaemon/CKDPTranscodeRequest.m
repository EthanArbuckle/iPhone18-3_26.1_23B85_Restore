@interface CKDPTranscodeRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPTranscodeRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPTranscodeRequest;
  v4 = [(CKDPTranscodeRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  record = self->_record;
  if (record)
  {
    v8 = objc_msgSend_dictionaryRepresentation(record, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"record");
  }

  constructedAssetDownloadParameters = self->_constructedAssetDownloadParameters;
  if (constructedAssetDownloadParameters)
  {
    objc_msgSend_setObject_forKey_(v6, v4, constructedAssetDownloadParameters, @"constructedAssetDownloadParameters");
  }

  return v6;
}

- (BOOL)readFrom:(id)a3
{
  v5 = objc_msgSend_position(a3, a2, a3);
  if (v5 < objc_msgSend_length(a3, v6, v7))
  {
    while (1)
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
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a3, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a3, v14, v15) && (v18 = objc_msgSend_position(a3, v16, v17) + 1, v18 <= objc_msgSend_length(a3, v19, v20)))
        {
          v21 = objc_msgSend_data(a3, v16, v17);
          v24 = objc_msgSend_position(a3, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a3, v26, v27);
          objc_msgSend_setPosition_(a3, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a3, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
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

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        constructedAssetDownloadParameters = objc_alloc_init(MEMORY[0x277CBC200]);
        objc_storeStrong(&self->_record, constructedAssetDownloadParameters);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !CKCodeRecordTransportReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v36 = objc_msgSend_position(a3, v34, v35);
      if (v36 >= objc_msgSend_length(a3, v37, v38))
      {
        return objc_msgSend_hasError(a3, v8, v9) ^ 1;
      }
    }

    v33 = PBReaderReadData();
    constructedAssetDownloadParameters = self->_constructedAssetDownloadParameters;
    self->_constructedAssetDownloadParameters = v33;
LABEL_23:

    goto LABEL_25;
  }

  return objc_msgSend_hasError(a3, v8, v9) ^ 1;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_record)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_constructedAssetDownloadParameters)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  record = self->_record;
  v8 = v4;
  if (record)
  {
    objc_msgSend_setRecord_(v4, v5, record);
    v4 = v8;
  }

  constructedAssetDownloadParameters = self->_constructedAssetDownloadParameters;
  if (constructedAssetDownloadParameters)
  {
    objc_msgSend_setConstructedAssetDownloadParameters_(v8, v5, constructedAssetDownloadParameters);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_record, v11, a3);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_constructedAssetDownloadParameters, v14, a3);
  v16 = v10[1];
  v10[1] = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((record = self->_record, v9 = v4[2], !(record | v9)) || objc_msgSend_isEqual_(record, v7, v9)))
  {
    constructedAssetDownloadParameters = self->_constructedAssetDownloadParameters;
    v11 = v4[1];
    if (constructedAssetDownloadParameters | v11)
    {
      isEqual = objc_msgSend_isEqual_(constructedAssetDownloadParameters, v7, v11);
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  record = self->_record;
  v6 = v4[2];
  v8 = v4;
  if (record)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(record, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setRecord_(self, v4, v6);
  }

  v4 = v8;
LABEL_7:
  v7 = v4[1];
  if (v7)
  {
    objc_msgSend_setConstructedAssetDownloadParameters_(self, v4, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end