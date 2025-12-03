@interface CKDPShareUsage
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

- (BOOL)readFrom:(id)from
{
  v5 = objc_msgSend_position(from, a2, from);
  if (v5 < objc_msgSend_length(from, v6, v7))
  {
    do
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
        LOBYTE(v63) = 0;
        v13 = objc_msgSend_position(from, v8, v9, v63) + 1;
        if (v13 >= objc_msgSend_position(from, v14, v15) && (v18 = objc_msgSend_position(from, v16, v17) + 1, v18 <= objc_msgSend_length(from, v19, v20)))
        {
          v21 = objc_msgSend_data(from, v16, v17);
          v24 = objc_msgSend_position(from, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v63, v24, 1);

          v28 = objc_msgSend_position(from, v26, v27);
          objc_msgSend_setPosition_(from, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(from, v16, v17);
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
            if (!PBReaderPlaceMark() || !CKDPShareIdentifierReadFrom(v33, from, v58))
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
              v40 = objc_msgSend_position(from, v32, v9, v63) + 1;
              if (v40 >= objc_msgSend_position(from, v41, v42) && (v45 = objc_msgSend_position(from, v43, v44) + 1, v45 <= objc_msgSend_length(from, v46, v47)))
              {
                v48 = objc_msgSend_data(from, v43, v44);
                v51 = objc_msgSend_position(from, v49, v50);
                objc_msgSend_getBytes_range_(v48, v52, &v63, v51, 1);

                v55 = objc_msgSend_position(from, v53, v54);
                objc_msgSend_setPosition_(from, v56, v55 + 1);
              }

              else
              {
                objc_msgSend__setError(from, v43, v44);
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

            if (objc_msgSend_hasError(from, v32, v9))
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
      v59 = objc_msgSend_position(from, v32, v9);
    }

    while (v59 < objc_msgSend_length(from, v60, v61));
  }

  return objc_msgSend_hasError(from, v8, v9) ^ 1;
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

  if (self->_time)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_userIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_shareIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_participantHandle)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[12] = self->_version;
    *(toCopy + 52) |= 1u;
  }

  time = self->_time;
  v11 = toCopy;
  if (time)
  {
    objc_msgSend_setTime_(toCopy, v5, time);
    toCopy = v11;
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    objc_msgSend_setDeviceIdentifier_(v11, v5, deviceIdentifier);
    toCopy = v11;
  }

  userIdentifier = self->_userIdentifier;
  if (userIdentifier)
  {
    objc_msgSend_setUserIdentifier_(v11, v5, userIdentifier);
    toCopy = v11;
  }

  shareIdentifier = self->_shareIdentifier;
  if (shareIdentifier)
  {
    objc_msgSend_setShareIdentifier_(v11, v5, shareIdentifier);
    toCopy = v11;
  }

  participantHandle = self->_participantHandle;
  if (participantHandle)
  {
    objc_msgSend_setParticipantHandle_(v11, v5, participantHandle);
    toCopy = v11;
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
    *(v10 + 48) = self->_version;
    *(v10 + 52) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_time, v11, zone);
  v14 = v12[4];
  v12[4] = v13;

  v16 = objc_msgSend_copyWithZone_(self->_deviceIdentifier, v15, zone);
  v17 = v12[1];
  v12[1] = v16;

  v19 = objc_msgSend_copyWithZone_(self->_userIdentifier, v18, zone);
  v20 = v12[5];
  v12[5] = v19;

  v22 = objc_msgSend_copyWithZone_(self->_shareIdentifier, v21, zone);
  v23 = v12[3];
  v12[3] = v22;

  v25 = objc_msgSend_copyWithZone_(self->_participantHandle, v24, zone);
  v26 = v12[2];
  v12[2] = v25;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_17;
  }

  v8 = *(equalCopy + 52);
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_version != *(equalCopy + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 52))
  {
LABEL_17:
    isEqual = 0;
    goto LABEL_18;
  }

  time = self->_time;
  v10 = equalCopy[4];
  if (time | v10 && !objc_msgSend_isEqual_(time, v7, v10))
  {
    goto LABEL_17;
  }

  deviceIdentifier = self->_deviceIdentifier;
  v12 = equalCopy[1];
  if (deviceIdentifier | v12)
  {
    if (!objc_msgSend_isEqual_(deviceIdentifier, v7, v12))
    {
      goto LABEL_17;
    }
  }

  userIdentifier = self->_userIdentifier;
  v14 = equalCopy[5];
  if (userIdentifier | v14)
  {
    if (!objc_msgSend_isEqual_(userIdentifier, v7, v14))
    {
      goto LABEL_17;
    }
  }

  shareIdentifier = self->_shareIdentifier;
  v16 = equalCopy[3];
  if (shareIdentifier | v16)
  {
    if (!objc_msgSend_isEqual_(shareIdentifier, v7, v16))
    {
      goto LABEL_17;
    }
  }

  participantHandle = self->_participantHandle;
  v18 = equalCopy[2];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[13])
  {
    self->_version = fromCopy[12];
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