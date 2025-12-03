@interface CKDPPackageManifestItem
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLastItem:(BOOL)item;
- (void)writeTo:(id)to;
@end

@implementation CKDPPackageManifestItem

- (void)setHasLastItem:(BOOL)item
{
  if (item)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPPackageManifestItem;
  v4 = [(CKDPPackageManifestItem *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  signature = self->_signature;
  if (signature)
  {
    objc_msgSend_setObject_forKey_(v4, v5, signature, @"signature");
  }

  has = self->_has;
  if (has)
  {
    v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v5, self->_size);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"size");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_lastItem);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"lastItem");
  }

  return v6;
}

- (BOOL)readFrom:(id)from
{
  v5 = objc_msgSend_position(from, a2, from);
  if (v5 < objc_msgSend_length(from, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(from, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v82 = 0;
        v13 = objc_msgSend_position(from, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(from, v14, v15) && (v18 = objc_msgSend_position(from, v16, v17) + 1, v18 <= objc_msgSend_length(from, v19, v20)))
        {
          v21 = objc_msgSend_data(from, v16, v17);
          v24 = objc_msgSend_position(from, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v82, v24, 1);

          v28 = objc_msgSend_position(from, v26, v27);
          objc_msgSend_setPosition_(from, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(from, v16, v17);
        }

        v12 |= (v82 & 0x7F) << v10;
        if ((v82 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(from, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(from, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          v84 = 0;
          v59 = objc_msgSend_position(from, v32, v9) + 1;
          if (v59 >= objc_msgSend_position(from, v60, v61) && (v64 = objc_msgSend_position(from, v62, v63) + 1, v64 <= objc_msgSend_length(from, v65, v66)))
          {
            v67 = objc_msgSend_data(from, v62, v63);
            v70 = objc_msgSend_position(from, v68, v69);
            objc_msgSend_getBytes_range_(v67, v71, &v84, v70, 1);

            v74 = objc_msgSend_position(from, v72, v73);
            objc_msgSend_setPosition_(from, v75, v74 + 1);
          }

          else
          {
            objc_msgSend__setError(from, v62, v63);
          }

          v58 |= (v84 & 0x7F) << v56;
          if ((v84 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v30 = v57++ >= 9;
          if (v30)
          {
            LOBYTE(v76) = 0;
            goto LABEL_46;
          }
        }

        v76 = (v58 != 0) & ~objc_msgSend_hasError(from, v32, v9);
LABEL_46:
        self->_lastItem = v76;
      }

      else if (v32 == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          v83 = 0;
          v38 = objc_msgSend_position(from, v32, v9) + 1;
          if (v38 >= objc_msgSend_position(from, v39, v40) && (v43 = objc_msgSend_position(from, v41, v42) + 1, v43 <= objc_msgSend_length(from, v44, v45)))
          {
            v46 = objc_msgSend_data(from, v41, v42);
            v49 = objc_msgSend_position(from, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v83, v49, 1);

            v53 = objc_msgSend_position(from, v51, v52);
            objc_msgSend_setPosition_(from, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(from, v41, v42);
          }

          v37 |= (v83 & 0x7F) << v35;
          if ((v83 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_44;
          }
        }

        v55 = objc_msgSend_hasError(from, v32, v9) ? 0 : v37;
LABEL_44:
        self->_size = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadData();
        signature = self->_signature;
        self->_signature = v33;
      }

      else
      {
        v77 = PBReaderSkipValueWithTag();
        if (!v77)
        {
          return v77;
        }
      }

      v78 = objc_msgSend_position(from, v32, v9);
    }

    while (v78 < objc_msgSend_length(from, v79, v80));
  }

  LOBYTE(v77) = objc_msgSend_hasError(from, v8, v9) ^ 1;
  return v77;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    size = self->_size;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    lastItem = self->_lastItem;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  signature = self->_signature;
  if (signature)
  {
    v8 = toCopy;
    objc_msgSend_setSignature_(toCopy, v5, signature);
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_size;
    *(toCopy + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 24) = self->_lastItem;
    *(toCopy + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_signature, v11, zone);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  has = self->_has;
  if (has)
  {
    *(v10 + 8) = self->_size;
    *(v10 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 24) = self->_lastItem;
    *(v10 + 28) |= 2u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_11;
  }

  signature = self->_signature;
  v9 = equalCopy[2];
  if (signature | v9)
  {
    if (!objc_msgSend_isEqual_(signature, v7, v9))
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_size != equalCopy[1])
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_11;
  }

  v10 = (*(equalCopy + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }

    if (self->_lastItem)
    {
      if ((equalCopy[3] & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_11;
    }

    v10 = 1;
  }

LABEL_12:

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_signature, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_size;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v5 ^ v4 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_lastItem;
  return v5 ^ v4 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = *(fromCopy + 2);
  if (v6)
  {
    v8 = fromCopy;
    objc_msgSend_setSignature_(self, v5, v6);
    fromCopy = v8;
  }

  v7 = *(fromCopy + 28);
  if (v7)
  {
    self->_size = *(fromCopy + 1);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 28);
  }

  if ((v7 & 2) != 0)
  {
    self->_lastItem = *(fromCopy + 24);
    *&self->_has |= 2u;
  }
}

@end