@interface CKCDPStopContainerResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKCDPStopContainerResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPStopContainerResponse;
  v4 = [(CKCDPStopContainerResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v6 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_success);
    objc_msgSend_setObject_forKey_(v5, v7, v6, @"success");
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
        v59 = 0;
        v13 = objc_msgSend_position(from, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(from, v14, v15) && (v18 = objc_msgSend_position(from, v16, v17) + 1, v18 <= objc_msgSend_length(from, v19, v20)))
        {
          v21 = objc_msgSend_data(from, v16, v17);
          v24 = objc_msgSend_position(from, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v59, v24, 1);

          v28 = objc_msgSend_position(from, v26, v27);
          objc_msgSend_setPosition_(from, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(from, v16, v17);
        }

        v12 |= (v59 & 0x7F) << v10;
        if ((v59 & 0x80) == 0)
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
      if ((v31 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          v60 = 0;
          v36 = objc_msgSend_position(from, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(from, v37, v38) && (v41 = objc_msgSend_position(from, v39, v40) + 1, v41 <= objc_msgSend_length(from, v42, v43)))
          {
            v44 = objc_msgSend_data(from, v39, v40);
            v47 = objc_msgSend_position(from, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v60, v47, 1);

            v51 = objc_msgSend_position(from, v49, v50);
            objc_msgSend_setPosition_(from, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(from, v39, v40);
          }

          v35 |= (v60 & 0x7F) << v33;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            LOBYTE(v53) = 0;
            goto LABEL_30;
          }
        }

        v53 = (v35 != 0) & ~objc_msgSend_hasError(from, v32, v9);
LABEL_30:
        self->_success = v53;
      }

      else
      {
        v54 = PBReaderSkipValueWithTag();
        if (!v54)
        {
          return v54;
        }
      }

      v55 = objc_msgSend_position(from, v32, v9);
    }

    while (v55 < objc_msgSend_length(from, v56, v57));
  }

  LOBYTE(v54) = objc_msgSend_hasError(from, v8, v9) ^ 1;
  return v54;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 8) = self->_success;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  result = objc_msgSend_init(v7, v8, v9);
  if (*&self->_has)
  {
    *(result + 8) = self->_success;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_4;
  }

  v7 = (equalCopy[12] & 1) == 0;
  if (*&self->_has)
  {
    if ((equalCopy[12] & 1) == 0)
    {
LABEL_4:
      v7 = 0;
      goto LABEL_5;
    }

    if (self->_success)
    {
      if ((equalCopy[8] & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (equalCopy[8])
    {
      goto LABEL_4;
    }

    v7 = 1;
  }

LABEL_5:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_success;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_success = *(from + 8);
    *&self->_has |= 1u;
  }
}

@end