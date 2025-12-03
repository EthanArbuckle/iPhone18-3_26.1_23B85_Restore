@interface CKPCSManateeShareInvitation
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKPCSManateeShareInvitation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKPCSManateeShareInvitation;
  v4 = [(CKPCSManateeShareInvitation *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  exportedPCSData = self->_exportedPCSData;
  if (exportedPCSData)
  {
    objc_msgSend_setObject_forKey_(v4, v5, exportedPCSData, @"exportedPCSData");
  }

  shareePublicKeyData = self->_shareePublicKeyData;
  if (shareePublicKeyData)
  {
    objc_msgSend_setObject_forKey_(v6, v5, shareePublicKeyData, @"shareePublicKeyData");
  }

  return v6;
}

- (BOOL)readFrom:(id)from
{
  v5 = objc_msgSend_position(from, a2, from);
  if (v5 < objc_msgSend_length(from, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(from, v8, v9))
      {
        return objc_msgSend_hasError(from, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(from, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(from, v14, v15) && (v18 = objc_msgSend_position(from, v16, v17) + 1, v18 <= objc_msgSend_length(from, v19, v20)))
        {
          v21 = objc_msgSend_data(from, v16, v17);
          v24 = objc_msgSend_position(from, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(from, v26, v27);
          objc_msgSend_setPosition_(from, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(from, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
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

      v31 = objc_msgSend_hasError(from, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(from, v8, v9))
      {
        return objc_msgSend_hasError(from, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(from, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKPCSManateeShareInvitation__shareePublicKeyData;
LABEL_21:
        v33 = PBReaderReadData();
        v34 = *v32;
        v35 = *(&self->super.super.isa + v34);
        *(&self->super.super.isa + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(from, v36, v37);
      if (v38 >= objc_msgSend_length(from, v39, v40))
      {
        return objc_msgSend_hasError(from, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKPCSManateeShareInvitation__exportedPCSData;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(from, v8, v9) ^ 1;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_exportedPCSData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_shareePublicKeyData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  exportedPCSData = self->_exportedPCSData;
  v8 = toCopy;
  if (exportedPCSData)
  {
    objc_msgSend_setExportedPCSData_(toCopy, v5, exportedPCSData);
    toCopy = v8;
  }

  shareePublicKeyData = self->_shareePublicKeyData;
  if (shareePublicKeyData)
  {
    objc_msgSend_setShareePublicKeyData_(v8, v5, shareePublicKeyData);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_exportedPCSData, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_shareePublicKeyData, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((exportedPCSData = self->_exportedPCSData, v9 = equalCopy[1], !(exportedPCSData | v9)) || objc_msgSend_isEqual_(exportedPCSData, v7, v9)))
  {
    shareePublicKeyData = self->_shareePublicKeyData;
    v11 = equalCopy[2];
    if (shareePublicKeyData | v11)
    {
      isEqual = objc_msgSend_isEqual_(shareePublicKeyData, v7, v11);
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
    objc_msgSend_setExportedPCSData_(self, v5, v6);
    fromCopy = v8;
  }

  v7 = fromCopy[2];
  if (v7)
  {
    objc_msgSend_setShareePublicKeyData_(self, v5, v7);
    fromCopy = v8;
  }
}

@end