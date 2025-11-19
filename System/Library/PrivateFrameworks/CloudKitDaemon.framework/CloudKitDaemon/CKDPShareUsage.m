@interface CKDPShareUsage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)version;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPShareUsage

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
  v11.super_class = CKDPShareUsage;
  v4 = [(CKDPShareUsage *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v7 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_version);
    objc_msgSend_setObject_forKey_(v6, v8, v7, @"version");
  }

  time = self->_time;
  if (time)
  {
    v10 = objc_msgSend_dictionaryRepresentation(time, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"time");
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    v13 = objc_msgSend_dictionaryRepresentation(deviceIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"deviceIdentifier");
  }

  userIdentifier = self->_userIdentifier;
  if (userIdentifier)
  {
    v16 = objc_msgSend_dictionaryRepresentation(userIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v17, v16, @"userIdentifier");
  }

  shareIdentifier = self->_shareIdentifier;
  if (shareIdentifier)
  {
    v19 = objc_msgSend_dictionaryRepresentation(shareIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v20, v19, @"shareIdentifier");
  }

  participantHandle = self->_participantHandle;
  if (participantHandle)
  {
    objc_msgSend_setObject_forKey_(v6, v4, participantHandle, @"participantHandle");
  }

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
        LOBYTE(v63) = 0;
        v13 = objc_msgSend_position(a3, v8, v9, v63) + 1;
        if (v13 >= objc_msgSend_position(a3, v14, v15) && (v18 = objc_msgSend_position(a3, v16, v17) + 1, v18 <= objc_msgSend_length(a3, v19, v20)))
        {
          v21 = objc_msgSend_data(a3, v16, v17);
          v24 = objc_msgSend_position(a3, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v63, v24, 1);

          v28 = objc_msgSend_position(a3, v26, v27);
          objc_msgSend_setPosition_(a3, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a3, v16, v17);
        }

        v12 |= (v63 & 0x7F) << v10;
        if ((v63 & 0x80) == 0)
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
      if ((v31 >> 3) > 3)
      {
        switch(v32)
        {
          case 4:
            v33 = objc_alloc_init(MEMORY[0x277CBC250]);
            v34 = 40;
            goto LABEL_36;
          case 5:
            v33 = objc_alloc_init(CKDPShareIdentifier);
            objc_storeStrong(&self->_shareIdentifier, v33);
            v63 = 0;
            v64 = 0;
            if (!PBReaderPlaceMark() || !CKDPShareIdentifierReadFrom(v33, a3, v58))
            {
LABEL_53:

              return 0;
            }

            goto LABEL_46;
          case 6:
            v35 = PBReaderReadString();
            participantHandle = self->_participantHandle;
            self->_participantHandle = v35;

            goto LABEL_51;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *&self->_has |= 1u;
            while (1)
            {
              LOBYTE(v63) = 0;
              v40 = objc_msgSend_position(a3, v32, v9, v63) + 1;
              if (v40 >= objc_msgSend_position(a3, v41, v42) && (v45 = objc_msgSend_position(a3, v43, v44) + 1, v45 <= objc_msgSend_length(a3, v46, v47)))
              {
                v48 = objc_msgSend_data(a3, v43, v44);
                v51 = objc_msgSend_position(a3, v49, v50);
                objc_msgSend_getBytes_range_(v48, v52, &v63, v51, 1);

                v55 = objc_msgSend_position(a3, v53, v54);
                objc_msgSend_setPosition_(a3, v56, v55 + 1);
              }

              else
              {
                objc_msgSend__setError(a3, v43, v44);
              }

              v39 |= (v63 & 0x7F) << v37;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v30 = v38++ >= 9;
              if (v30)
              {
                v57 = 0;
                goto LABEL_50;
              }
            }

            if (objc_msgSend_hasError(a3, v32, v9))
            {
              v57 = 0;
            }

            else
            {
              v57 = v39;
            }

LABEL_50:
            self->_version = v57;
            goto LABEL_51;
          case 2:
            v33 = objc_alloc_init(MEMORY[0x277CBC240]);
            objc_storeStrong(&self->_time, v33);
            v63 = 0;
            v64 = 0;
            if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
            {
              goto LABEL_53;
            }

            goto LABEL_46;
          case 3:
            v33 = objc_alloc_init(MEMORY[0x277CBC250]);
            v34 = 8;
LABEL_36:
            objc_storeStrong((&self->super.super.isa + v34), v33);
            v63 = 0;
            v64 = 0;
            if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
            {
              goto LABEL_53;
            }

LABEL_46:
            PBReaderRecallMark();

            goto LABEL_51;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v59 = objc_msgSend_position(a3, v32, v9);
    }

    while (v59 < objc_msgSend_length(a3, v60, v61));
  }

  return objc_msgSend_hasError(a3, v8, v9) ^ 1;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_time)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_userIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_shareIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_participantHandle)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[12] = self->_version;
    *(v4 + 52) |= 1u;
  }

  time = self->_time;
  v11 = v4;
  if (time)
  {
    objc_msgSend_setTime_(v4, v5, time);
    v4 = v11;
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    objc_msgSend_setDeviceIdentifier_(v11, v5, deviceIdentifier);
    v4 = v11;
  }

  userIdentifier = self->_userIdentifier;
  if (userIdentifier)
  {
    objc_msgSend_setUserIdentifier_(v11, v5, userIdentifier);
    v4 = v11;
  }

  shareIdentifier = self->_shareIdentifier;
  if (shareIdentifier)
  {
    objc_msgSend_setShareIdentifier_(v11, v5, shareIdentifier);
    v4 = v11;
  }

  participantHandle = self->_participantHandle;
  if (participantHandle)
  {
    objc_msgSend_setParticipantHandle_(v11, v5, participantHandle);
    v4 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 48) = self->_version;
    *(v10 + 52) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_time, v11, a3);
  v14 = v12[4];
  v12[4] = v13;

  v16 = objc_msgSend_copyWithZone_(self->_deviceIdentifier, v15, a3);
  v17 = v12[1];
  v12[1] = v16;

  v19 = objc_msgSend_copyWithZone_(self->_userIdentifier, v18, a3);
  v20 = v12[5];
  v12[5] = v19;

  v22 = objc_msgSend_copyWithZone_(self->_shareIdentifier, v21, a3);
  v23 = v12[3];
  v12[3] = v22;

  v25 = objc_msgSend_copyWithZone_(self->_participantHandle, v24, a3);
  v26 = v12[2];
  v12[2] = v25;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_17;
  }

  v8 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_version != *(v4 + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 52))
  {
LABEL_17:
    isEqual = 0;
    goto LABEL_18;
  }

  time = self->_time;
  v10 = v4[4];
  if (time | v10 && !objc_msgSend_isEqual_(time, v7, v10))
  {
    goto LABEL_17;
  }

  deviceIdentifier = self->_deviceIdentifier;
  v12 = v4[1];
  if (deviceIdentifier | v12)
  {
    if (!objc_msgSend_isEqual_(deviceIdentifier, v7, v12))
    {
      goto LABEL_17;
    }
  }

  userIdentifier = self->_userIdentifier;
  v14 = v4[5];
  if (userIdentifier | v14)
  {
    if (!objc_msgSend_isEqual_(userIdentifier, v7, v14))
    {
      goto LABEL_17;
    }
  }

  shareIdentifier = self->_shareIdentifier;
  v16 = v4[3];
  if (shareIdentifier | v16)
  {
    if (!objc_msgSend_isEqual_(shareIdentifier, v7, v16))
    {
      goto LABEL_17;
    }
  }

  participantHandle = self->_participantHandle;
  v18 = v4[2];
  if (participantHandle | v18)
  {
    isEqual = objc_msgSend_isEqual_(participantHandle, v7, v18);
  }

  else
  {
    isEqual = 1;
  }

LABEL_18:

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

  v5 = objc_msgSend_hash(self->_time, a2, v2) ^ v4;
  v8 = objc_msgSend_hash(self->_deviceIdentifier, v6, v7);
  v11 = v5 ^ v8 ^ objc_msgSend_hash(self->_userIdentifier, v9, v10);
  v14 = objc_msgSend_hash(self->_shareIdentifier, v12, v13);
  return v11 ^ v14 ^ objc_msgSend_hash(self->_participantHandle, v15, v16);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[13])
  {
    self->_version = v4[12];
    *&self->_has |= 1u;
  }

  time = self->_time;
  v7 = v5[4];
  v15 = v5;
  if (time)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_mergeFrom_(time, v5, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_setTime_(self, v5, v7);
  }

  v5 = v15;
LABEL_9:
  deviceIdentifier = self->_deviceIdentifier;
  v9 = v5[1];
  if (deviceIdentifier)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_mergeFrom_(deviceIdentifier, v5, v9);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_setDeviceIdentifier_(self, v5, v9);
  }

  v5 = v15;
LABEL_15:
  userIdentifier = self->_userIdentifier;
  v11 = v5[5];
  if (userIdentifier)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    objc_msgSend_mergeFrom_(userIdentifier, v5, v11);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    objc_msgSend_setUserIdentifier_(self, v5, v11);
  }

  v5 = v15;
LABEL_21:
  shareIdentifier = self->_shareIdentifier;
  v13 = v5[3];
  if (shareIdentifier)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    objc_msgSend_mergeFrom_(shareIdentifier, v5, v13);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    objc_msgSend_setShareIdentifier_(self, v5, v13);
  }

  v5 = v15;
LABEL_27:
  v14 = v5[2];
  if (v14)
  {
    objc_msgSend_setParticipantHandle_(self, v5, v14);
  }

  MEMORY[0x2821F96F8]();
}

@end