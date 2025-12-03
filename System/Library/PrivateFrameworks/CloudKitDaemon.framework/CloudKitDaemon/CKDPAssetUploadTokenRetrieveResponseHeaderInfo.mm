@interface CKDPAssetUploadTokenRetrieveResponseHeaderInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPAssetUploadTokenRetrieveResponseHeaderInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAssetUploadTokenRetrieveResponseHeaderInfo;
  v4 = [(CKDPAssetUploadTokenRetrieveResponseHeaderInfo *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  headerKey = self->_headerKey;
  if (headerKey)
  {
    objc_msgSend_setObject_forKey_(v4, v5, headerKey, @"headerKey");
  }

  headerValue = self->_headerValue;
  if (headerValue)
  {
    objc_msgSend_setObject_forKey_(v6, v5, headerValue, @"headerValue");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_headerKey)
  {
    __assert_rtn("[CKDPAssetUploadTokenRetrieveResponseHeaderInfo writeTo:]", "CKDPAssetUploadTokenRetrieveResponseHeaderInfo.m", 83, "nil != self->_headerKey");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_headerValue)
  {
    __assert_rtn("[CKDPAssetUploadTokenRetrieveResponseHeaderInfo writeTo:]", "CKDPAssetUploadTokenRetrieveResponseHeaderInfo.m", 88, "nil != self->_headerValue");
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  headerKey = self->_headerKey;
  toCopy = to;
  objc_msgSend_setHeaderKey_(toCopy, v5, headerKey);
  objc_msgSend_setHeaderValue_(toCopy, v6, self->_headerValue);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_headerKey, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_headerValue, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((headerKey = self->_headerKey, v9 = equalCopy[1], !(headerKey | v9)) || objc_msgSend_isEqual_(headerKey, v7, v9)))
  {
    headerValue = self->_headerValue;
    v11 = equalCopy[2];
    if (headerValue | v11)
    {
      isEqual = objc_msgSend_isEqual_(headerValue, v7, v11);
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy[1];
  v8 = fromCopy;
  if (v6)
  {
    objc_msgSend_setHeaderKey_(self, v5, v6);
    fromCopy = v8;
  }

  v7 = fromCopy[2];
  if (v7)
  {
    objc_msgSend_setHeaderValue_(self, v5, v7);
    fromCopy = v8;
  }
}

@end