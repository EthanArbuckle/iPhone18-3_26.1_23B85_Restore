@interface CKDPLocale
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPLocale

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPLocale;
  v4 = [(CKDPLocale *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  languageCode = self->_languageCode;
  if (languageCode)
  {
    objc_msgSend_setObject_forKey_(v4, v5, languageCode, @"languageCode");
  }

  regionCode = self->_regionCode;
  if (regionCode)
  {
    objc_msgSend_setObject_forKey_(v6, v5, regionCode, @"regionCode");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_languageCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_regionCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  languageCode = self->_languageCode;
  v8 = v4;
  if (languageCode)
  {
    objc_msgSend_setLanguageCode_(v4, v5, languageCode);
    v4 = v8;
  }

  regionCode = self->_regionCode;
  if (regionCode)
  {
    objc_msgSend_setRegionCode_(v8, v5, regionCode);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_languageCode, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_regionCode, v14, a3);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((languageCode = self->_languageCode, v9 = v4[1], !(languageCode | v9)) || objc_msgSend_isEqual_(languageCode, v7, v9)))
  {
    regionCode = self->_regionCode;
    v11 = v4[2];
    if (regionCode | v11)
    {
      isEqual = objc_msgSend_isEqual_(regionCode, v7, v11);
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
  v6 = v4[1];
  v8 = v4;
  if (v6)
  {
    objc_msgSend_setLanguageCode_(self, v5, v6);
    v4 = v8;
  }

  v7 = v4[2];
  if (v7)
  {
    objc_msgSend_setRegionCode_(self, v5, v7);
    v4 = v8;
  }
}

@end