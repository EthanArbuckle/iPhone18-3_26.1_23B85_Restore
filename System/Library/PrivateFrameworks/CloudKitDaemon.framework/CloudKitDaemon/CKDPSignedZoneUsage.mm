@interface CKDPSignedZoneUsage
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)version;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPSignedZoneUsage

- (int)version
{
  if (*&self->_has)
  {
    return self->_version;
  }

  else
  {
    return 1;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPSignedZoneUsage;
  v4 = [(CKDPSignedZoneUsage *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_version);
    objc_msgSend_setObject_forKey_(v5, v7, v6, @"version");
  }

  signature = self->_signature;
  if (signature)
  {
    objc_msgSend_setObject_forKey_(v5, v4, signature, @"signature");
  }

  zoneUsage = self->_zoneUsage;
  if (zoneUsage)
  {
    objc_msgSend_setObject_forKey_(v5, v4, zoneUsage, @"zoneUsage");
  }

  return v5;
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
        v62 = 0;
        v13 = objc_msgSend_position(from, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(from, v14, v15) && (v18 = objc_msgSend_position(from, v16, v17) + 1, v18 <= objc_msgSend_length(from, v19, v20)))
        {
          v21 = objc_msgSend_data(from, v16, v17);
          v24 = objc_msgSend_position(from, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v62, v24, 1);

          v28 = objc_msgSend_position(from, v26, v27);
          objc_msgSend_setPosition_(from, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(from, v16, v17);
        }

        v12 |= (v62 & 0x7F) << v10;
        if ((v62 & 0x80) == 0)
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
        v54 = PBReaderReadData();
        v55 = 24;
      }

      else
      {
        if (v32 != 2)
        {
          if (v32 == 1)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *&self->_has |= 1u;
            while (1)
            {
              v63 = 0;
              v36 = objc_msgSend_position(from, v32, v9) + 1;
              if (v36 >= objc_msgSend_position(from, v37, v38) && (v41 = objc_msgSend_position(from, v39, v40) + 1, v41 <= objc_msgSend_length(from, v42, v43)))
              {
                v44 = objc_msgSend_data(from, v39, v40);
                v47 = objc_msgSend_position(from, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v63, v47, 1);

                v51 = objc_msgSend_position(from, v49, v50);
                objc_msgSend_setPosition_(from, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(from, v39, v40);
              }

              v35 |= (v63 & 0x7F) << v33;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                v53 = 0;
                goto LABEL_37;
              }
            }

            if (objc_msgSend_hasError(from, v32, v9))
            {
              v53 = 0;
            }

            else
            {
              v53 = v35;
            }

LABEL_37:
            self->_version = v53;
          }

          else
          {
            v57 = PBReaderSkipValueWithTag();
            if (!v57)
            {
              return v57;
            }
          }

          goto LABEL_38;
        }

        v54 = PBReaderReadData();
        v55 = 8;
      }

      v56 = *(&self->super.super.isa + v55);
      *(&self->super.super.isa + v55) = v54;

LABEL_38:
      v58 = objc_msgSend_position(from, v32, v9);
    }

    while (v58 < objc_msgSend_length(from, v59, v60));
  }

  LOBYTE(v57) = objc_msgSend_hasError(from, v8, v9) ^ 1;
  return v57;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_zoneUsage)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_version;
    *(toCopy + 32) |= 1u;
  }

  signature = self->_signature;
  v8 = toCopy;
  if (signature)
  {
    objc_msgSend_setSignature_(toCopy, v5, signature);
    toCopy = v8;
  }

  zoneUsage = self->_zoneUsage;
  if (zoneUsage)
  {
    objc_msgSend_setZoneUsage_(v8, v5, zoneUsage);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 16) = self->_version;
    *(v10 + 32) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_signature, v11, zone);
  v14 = v12[1];
  v12[1] = v13;

  v16 = objc_msgSend_copyWithZone_(self->_zoneUsage, v15, zone);
  v17 = v12[3];
  v12[3] = v16;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_11;
  }

  v8 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((equalCopy[4] & 1) == 0 || self->_version != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (equalCopy[4])
  {
LABEL_11:
    isEqual = 0;
    goto LABEL_12;
  }

  signature = self->_signature;
  v10 = equalCopy[1];
  if (signature | v10 && !objc_msgSend_isEqual_(signature, v7, v10))
  {
    goto LABEL_11;
  }

  zoneUsage = self->_zoneUsage;
  v12 = equalCopy[3];
  if (zoneUsage | v12)
  {
    isEqual = objc_msgSend_isEqual_(zoneUsage, v7, v12);
  }

  else
  {
    isEqual = 1;
  }

LABEL_12:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_version;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_signature, a2, v2) ^ v4;
  return v5 ^ objc_msgSend_hash(self->_zoneUsage, v6, v7);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 32))
  {
    self->_version = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v6 = *(fromCopy + 1);
  v8 = fromCopy;
  if (v6)
  {
    objc_msgSend_setSignature_(self, v5, v6);
    fromCopy = v8;
  }

  v7 = *(fromCopy + 3);
  if (v7)
  {
    objc_msgSend_setZoneUsage_(self, v5, v7);
    fromCopy = v8;
  }
}

@end