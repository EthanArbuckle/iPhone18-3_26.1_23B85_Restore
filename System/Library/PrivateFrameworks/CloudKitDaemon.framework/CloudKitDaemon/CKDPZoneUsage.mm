@interface CKDPZoneUsage
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

@implementation CKDPZoneUsage

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
  v11.super_class = CKDPZoneUsage;
  v4 = [(CKDPZoneUsage *)&v11 description];
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

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v19 = objc_msgSend_dictionaryRepresentation(zoneIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v20, v19, @"zoneIdentifier");
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
        LOBYTE(v60) = 0;
        v13 = objc_msgSend_position(from, v8, v9, v60) + 1;
        if (v13 >= objc_msgSend_position(from, v14, v15) && (v18 = objc_msgSend_position(from, v16, v17) + 1, v18 <= objc_msgSend_length(from, v19, v20)))
        {
          v21 = objc_msgSend_data(from, v16, v17);
          v24 = objc_msgSend_position(from, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(from, v26, v27);
          objc_msgSend_setPosition_(from, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(from, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
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
      if ((v31 >> 3) <= 2)
      {
        if (v32 == 1)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v60) = 0;
            v38 = objc_msgSend_position(from, v32, v9, v60) + 1;
            if (v38 >= objc_msgSend_position(from, v39, v40) && (v43 = objc_msgSend_position(from, v41, v42) + 1, v43 <= objc_msgSend_length(from, v44, v45)))
            {
              v46 = objc_msgSend_data(from, v41, v42);
              v49 = objc_msgSend_position(from, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v60, v49, 1);

              v53 = objc_msgSend_position(from, v51, v52);
              objc_msgSend_setPosition_(from, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(from, v41, v42);
            }

            v37 |= (v60 & 0x7F) << v35;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_48;
            }
          }

          if (objc_msgSend_hasError(from, v32, v9))
          {
            v55 = 0;
          }

          else
          {
            v55 = v37;
          }

LABEL_48:
          self->_version = v55;
          goto LABEL_49;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBC240]);
          objc_storeStrong(&self->_time, v33);
          v60 = 0;
          v61 = 0;
          if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
          {
LABEL_51:

            return 0;
          }

          goto LABEL_33;
        }
      }

      else
      {
        switch(v32)
        {
          case 3:
            v33 = objc_alloc_init(MEMORY[0x277CBC250]);
            v34 = 8;
LABEL_31:
            objc_storeStrong((&self->super.super.isa + v34), v33);
            v60 = 0;
            v61 = 0;
            if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
            {
              goto LABEL_51;
            }

            goto LABEL_33;
          case 4:
            v33 = objc_alloc_init(MEMORY[0x277CBC250]);
            v34 = 24;
            goto LABEL_31;
          case 5:
            v33 = objc_alloc_init(MEMORY[0x277CBC278]);
            objc_storeStrong(&self->_zoneIdentifier, v33);
            v60 = 0;
            v61 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
            {
              goto LABEL_51;
            }

LABEL_33:
            PBReaderRecallMark();

            goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v56 = objc_msgSend_position(from, v32, v9);
    }

    while (v56 < objc_msgSend_length(from, v57, v58));
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

  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_version;
    *(toCopy + 48) |= 1u;
  }

  time = self->_time;
  v10 = toCopy;
  if (time)
  {
    objc_msgSend_setTime_(toCopy, v5, time);
    toCopy = v10;
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    objc_msgSend_setDeviceIdentifier_(v10, v5, deviceIdentifier);
    toCopy = v10;
  }

  userIdentifier = self->_userIdentifier;
  if (userIdentifier)
  {
    objc_msgSend_setUserIdentifier_(v10, v5, userIdentifier);
    toCopy = v10;
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v10, v5, zoneIdentifier);
    toCopy = v10;
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
    *(v10 + 32) = self->_version;
    *(v10 + 48) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_time, v11, zone);
  v14 = v12[2];
  v12[2] = v13;

  v16 = objc_msgSend_copyWithZone_(self->_deviceIdentifier, v15, zone);
  v17 = v12[1];
  v12[1] = v16;

  v19 = objc_msgSend_copyWithZone_(self->_userIdentifier, v18, zone);
  v20 = v12[3];
  v12[3] = v19;

  v22 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v21, zone);
  v23 = v12[5];
  v12[5] = v22;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_15;
  }

  v8 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((equalCopy[6] & 1) == 0 || self->_version != *(equalCopy + 8))
    {
      goto LABEL_15;
    }
  }

  else if (equalCopy[6])
  {
LABEL_15:
    isEqual = 0;
    goto LABEL_16;
  }

  time = self->_time;
  v10 = equalCopy[2];
  if (time | v10 && !objc_msgSend_isEqual_(time, v7, v10))
  {
    goto LABEL_15;
  }

  deviceIdentifier = self->_deviceIdentifier;
  v12 = equalCopy[1];
  if (deviceIdentifier | v12)
  {
    if (!objc_msgSend_isEqual_(deviceIdentifier, v7, v12))
    {
      goto LABEL_15;
    }
  }

  userIdentifier = self->_userIdentifier;
  v14 = equalCopy[3];
  if (userIdentifier | v14)
  {
    if (!objc_msgSend_isEqual_(userIdentifier, v7, v14))
    {
      goto LABEL_15;
    }
  }

  zoneIdentifier = self->_zoneIdentifier;
  v16 = equalCopy[5];
  if (zoneIdentifier | v16)
  {
    isEqual = objc_msgSend_isEqual_(zoneIdentifier, v7, v16);
  }

  else
  {
    isEqual = 1;
  }

LABEL_16:

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
  return v11 ^ objc_msgSend_hash(self->_zoneIdentifier, v12, v13);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[12])
  {
    self->_version = fromCopy[8];
    *&self->_has |= 1u;
  }

  time = self->_time;
  v7 = v5[2];
  v14 = v5;
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

  v5 = v14;
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

  v5 = v14;
LABEL_15:
  userIdentifier = self->_userIdentifier;
  v11 = v5[3];
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

  v5 = v14;
LABEL_21:
  zoneIdentifier = self->_zoneIdentifier;
  v13 = v5[5];
  if (zoneIdentifier)
  {
    if (v13)
    {
      objc_msgSend_mergeFrom_(zoneIdentifier, v5, v13);
    }
  }

  else if (v13)
  {
    objc_msgSend_setZoneIdentifier_(self, v5, v13);
  }

  MEMORY[0x2821F96F8]();
}

@end