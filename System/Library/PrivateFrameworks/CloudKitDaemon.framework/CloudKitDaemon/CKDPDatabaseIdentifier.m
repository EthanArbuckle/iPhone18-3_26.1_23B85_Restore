@interface CKDPDatabaseIdentifier
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)containerTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)databaseTypeAsString:(int)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContainerType:(id)a3;
- (int)StringAsDatabaseType:(id)a3;
- (int)containerType;
- (int)databaseType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDatabaseType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPDatabaseIdentifier

- (int)databaseType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_databaseType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasDatabaseType:(BOOL)a3
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

- (id)databaseTypeAsString:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854C880[a3 - 1];
  }

  return v4;
}

- (int)StringAsDatabaseType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"privateDB"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"publicDB"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"sharedDB"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"orgDB"))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int)containerType
{
  if (*&self->_has)
  {
    return self->_containerType;
  }

  else
  {
    return 1;
  }
}

- (id)containerTypeAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"production";
  }

  else if (a3 == 2)
  {
    v4 = @"sandbox";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  return v4;
}

- (int)StringAsContainerType:(id)a3
{
  v3 = a3;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(v3, v4, @"production") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v3, v5, @"sandbox"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPDatabaseIdentifier;
  v4 = [(CKDPDatabaseIdentifier *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  containerName = self->_containerName;
  if (containerName)
  {
    objc_msgSend_setObject_forKey_(v4, v5, containerName, @"containerName");
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = self->_databaseType - 1;
    if (v8 >= 4)
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_databaseType);
    }

    else
    {
      v9 = off_27854C880[v8];
    }

    objc_msgSend_setObject_forKey_(v6, v5, v9, @"databaseType");
  }

  databaseOwnerId = self->_databaseOwnerId;
  if (databaseOwnerId)
  {
    v11 = objc_msgSend_dictionaryRepresentation(databaseOwnerId, v5, containerName);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"databaseOwnerId");
  }

  if (*&self->_has)
  {
    containerType = self->_containerType;
    if (containerType == 1)
    {
      v14 = @"production";
      objc_msgSend_setObject_forKey_(v6, v5, @"production", @"containerType");
    }

    else if (containerType == 2)
    {
      v14 = @"sandbox";
      objc_msgSend_setObject_forKey_(v6, v5, @"sandbox", @"containerType");
    }

    else
    {
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_containerType);
      objc_msgSend_setObject_forKey_(v6, v15, v14, @"containerType");
    }
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
        LOBYTE(v82[0]) = 0;
        v13 = objc_msgSend_position(a3, v8, v9, v82[0]) + 1;
        if (v13 >= objc_msgSend_position(a3, v14, v15) && (v18 = objc_msgSend_position(a3, v16, v17) + 1, v18 <= objc_msgSend_length(a3, v19, v20)))
        {
          v21 = objc_msgSend_data(a3, v16, v17);
          v24 = objc_msgSend_position(a3, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v82, v24, 1);

          v28 = objc_msgSend_position(a3, v26, v27);
          objc_msgSend_setPosition_(a3, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a3, v16, v17);
        }

        v12 |= (v82[0] & 0x7F) << v10;
        if ((v82[0] & 0x80) == 0)
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

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        break;
      }

      if (v32 != 3)
      {
        if (v32 == 4)
        {
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v82[0]) = 0;
            v57 = objc_msgSend_position(a3, v32, v9, v82[0]) + 1;
            if (v57 >= objc_msgSend_position(a3, v58, v59) && (v62 = objc_msgSend_position(a3, v60, v61) + 1, v62 <= objc_msgSend_length(a3, v63, v64)))
            {
              v65 = objc_msgSend_data(a3, v60, v61);
              v68 = objc_msgSend_position(a3, v66, v67);
              objc_msgSend_getBytes_range_(v65, v69, v82, v68, 1);

              v72 = objc_msgSend_position(a3, v70, v71);
              objc_msgSend_setPosition_(a3, v73, v72 + 1);
            }

            else
            {
              objc_msgSend__setError(a3, v60, v61);
            }

            v56 |= (v82[0] & 0x7F) << v54;
            if ((v82[0] & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v30 = v55++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_53;
            }
          }

          if (objc_msgSend_hasError(a3, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v56;
          }

LABEL_53:
          v77 = 16;
          goto LABEL_54;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_55;
      }

      v76 = objc_alloc_init(MEMORY[0x277CBC250]);
      objc_storeStrong(&self->_databaseOwnerId, v76);
      v82[0] = 0;
      v82[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v78 = objc_msgSend_position(a3, v32, v9);
      if (v78 >= objc_msgSend_length(a3, v79, v80))
      {
        return objc_msgSend_hasError(a3, v8, v9) ^ 1;
      }
    }

    if (v32 == 1)
    {
      v74 = PBReaderReadString();
      containerName = self->_containerName;
      self->_containerName = v74;

      goto LABEL_55;
    }

    if (v32 == 2)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      *&self->_has |= 2u;
      while (1)
      {
        LOBYTE(v82[0]) = 0;
        v36 = objc_msgSend_position(a3, v32, v9, v82[0]) + 1;
        if (v36 >= objc_msgSend_position(a3, v37, v38) && (v41 = objc_msgSend_position(a3, v39, v40) + 1, v41 <= objc_msgSend_length(a3, v42, v43)))
        {
          v44 = objc_msgSend_data(a3, v39, v40);
          v47 = objc_msgSend_position(a3, v45, v46);
          objc_msgSend_getBytes_range_(v44, v48, v82, v47, 1);

          v51 = objc_msgSend_position(a3, v49, v50);
          objc_msgSend_setPosition_(a3, v52, v51 + 1);
        }

        else
        {
          objc_msgSend__setError(a3, v39, v40);
        }

        v35 |= (v82[0] & 0x7F) << v33;
        if ((v82[0] & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v30 = v34++ >= 9;
        if (v30)
        {
          v53 = 0;
          goto LABEL_49;
        }
      }

      if (objc_msgSend_hasError(a3, v32, v9))
      {
        v53 = 0;
      }

      else
      {
        v53 = v35;
      }

LABEL_49:
      v77 = 32;
LABEL_54:
      *(&self->super.super.isa + v77) = v53;
      goto LABEL_55;
    }

    goto LABEL_40;
  }

  return objc_msgSend_hasError(a3, v8, v9) ^ 1;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_containerName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    databaseType = self->_databaseType;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_databaseOwnerId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (*&self->_has)
  {
    containerType = self->_containerType;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  containerName = self->_containerName;
  v8 = v4;
  if (containerName)
  {
    objc_msgSend_setContainerName_(v4, v5, containerName);
    v4 = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 8) = self->_databaseType;
    *(v4 + 36) |= 2u;
  }

  databaseOwnerId = self->_databaseOwnerId;
  if (databaseOwnerId)
  {
    objc_msgSend_setDatabaseOwnerId_(v8, v5, databaseOwnerId);
    v4 = v8;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_containerType;
    *(v4 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_containerName, v11, a3);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 32) = self->_databaseType;
    *(v10 + 36) |= 2u;
  }

  v15 = objc_msgSend_copyWithZone_(self->_databaseOwnerId, v14, a3);
  v16 = *(v10 + 24);
  *(v10 + 24) = v15;

  if (*&self->_has)
  {
    *(v10 + 16) = self->_containerType;
    *(v10 + 36) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_16;
  }

  containerName = self->_containerName;
  v9 = v4[1];
  if (containerName | v9)
  {
    if (!objc_msgSend_isEqual_(containerName, v7, v9))
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v11 = *(v4 + 36);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_databaseType != *(v4 + 8))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_16;
  }

  databaseOwnerId = self->_databaseOwnerId;
  v13 = v4[3];
  if (databaseOwnerId | v13)
  {
    if (!objc_msgSend_isEqual_(databaseOwnerId, v7, v13))
    {
LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }

    has = self->_has;
    v11 = *(v4 + 36);
  }

  v14 = (v11 & 1) == 0;
  if (has)
  {
    if ((v11 & 1) == 0 || self->_containerType != *(v4 + 4))
    {
      goto LABEL_16;
    }

    v14 = 1;
  }

LABEL_17:

  return v14;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_containerName, a2, v2);
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_databaseType;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_msgSend_hash(self->_databaseOwnerId, v4, v5);
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_containerType;
  }

  else
  {
    v9 = 0;
  }

  return v7 ^ v6 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 1);
  v8 = v4;
  if (v5)
  {
    objc_msgSend_setContainerName_(self, v4, v5);
    v4 = v8;
  }

  if ((*(v4 + 36) & 2) != 0)
  {
    self->_databaseType = *(v4 + 8);
    *&self->_has |= 2u;
  }

  databaseOwnerId = self->_databaseOwnerId;
  v7 = *(v4 + 3);
  if (databaseOwnerId)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    objc_msgSend_mergeFrom_(databaseOwnerId, v4, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    objc_msgSend_setDatabaseOwnerId_(self, v4, v7);
  }

  v4 = v8;
LABEL_11:
  if (*(v4 + 36))
  {
    self->_containerType = *(v4 + 4);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end