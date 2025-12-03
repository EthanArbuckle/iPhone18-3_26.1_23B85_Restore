@interface CKDPZoneCryptoFeatureRequirements
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)minimumSchemaVersion;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRevision:(BOOL)revision;
- (void)writeTo:(id)to;
@end

@implementation CKDPZoneCryptoFeatureRequirements

- (int)minimumSchemaVersion
{
  if (*&self->_has)
  {
    return self->_minimumSchemaVersion;
  }

  else
  {
    return 1;
  }
}

- (void)setHasRevision:(BOOL)revision
{
  if (revision)
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
  v11.super_class = CKDPZoneCryptoFeatureRequirements;
  v4 = [(CKDPZoneCryptoFeatureRequirements *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  has = self->_has;
  if (has)
  {
    v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_minimumSchemaVersion);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"minimumSchemaVersion");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_revision);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"revision");
  }

  requiredZoneCryptoFeatures = self->_requiredZoneCryptoFeatures;
  if (requiredZoneCryptoFeatures)
  {
    v13 = objc_msgSend_dictionaryRepresentation(requiredZoneCryptoFeatures, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"requiredZoneCryptoFeatures");
  }

  requiredRecordCryptoFeatures = self->_requiredRecordCryptoFeatures;
  if (requiredRecordCryptoFeatures)
  {
    v16 = objc_msgSend_dictionaryRepresentation(requiredRecordCryptoFeatures, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v17, v16, @"requiredRecordCryptoFeatures");
  }

  requiredFieldCryptoFeatures = self->_requiredFieldCryptoFeatures;
  if (requiredFieldCryptoFeatures)
  {
    v19 = objc_msgSend_dictionaryRepresentation(requiredFieldCryptoFeatures, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v20, v19, @"requiredFieldCryptoFeatures");
  }

  permittedZoneCryptoFeatures = self->_permittedZoneCryptoFeatures;
  if (permittedZoneCryptoFeatures)
  {
    v22 = objc_msgSend_dictionaryRepresentation(permittedZoneCryptoFeatures, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v23, v22, @"permittedZoneCryptoFeatures");
  }

  permittedRecordCryptoFeatures = self->_permittedRecordCryptoFeatures;
  if (permittedRecordCryptoFeatures)
  {
    v25 = objc_msgSend_dictionaryRepresentation(permittedRecordCryptoFeatures, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v26, v25, @"permittedRecordCryptoFeatures");
  }

  permittedFieldCryptoFeatures = self->_permittedFieldCryptoFeatures;
  if (permittedFieldCryptoFeatures)
  {
    v28 = objc_msgSend_dictionaryRepresentation(permittedFieldCryptoFeatures, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v29, v28, @"permittedFieldCryptoFeatures");
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v31 = objc_msgSend_dictionaryRepresentation(zoneIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v32, v31, @"zoneIdentifier");
  }

  requiredAdopterFeatures = self->_requiredAdopterFeatures;
  if (requiredAdopterFeatures)
  {
    v34 = objc_msgSend_dictionaryRepresentation(requiredAdopterFeatures, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v35, v34, @"requiredAdopterFeatures");
  }

  lastModifiedTimestamp = self->_lastModifiedTimestamp;
  if (lastModifiedTimestamp)
  {
    v37 = objc_msgSend_dictionaryRepresentation(lastModifiedTimestamp, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v38, v37, @"lastModifiedTimestamp");
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
        LOBYTE(v87) = 0;
        v13 = objc_msgSend_position(from, v8, v9, v87) + 1;
        if (v13 >= objc_msgSend_position(from, v14, v15) && (v18 = objc_msgSend_position(from, v16, v17) + 1, v18 <= objc_msgSend_length(from, v19, v20)))
        {
          v21 = objc_msgSend_data(from, v16, v17);
          v24 = objc_msgSend_position(from, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v87, v24, 1);

          v28 = objc_msgSend_position(from, v26, v27);
          objc_msgSend_setPosition_(from, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(from, v16, v17);
        }

        v12 |= (v87 & 0x7F) << v10;
        if ((v87 & 0x80) == 0)
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
      if ((v31 >> 3) <= 5)
      {
        if (v32 <= 2)
        {
          if (v32 == 1)
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            *&self->_has |= 1u;
            while (1)
            {
              LOBYTE(v87) = 0;
              v60 = objc_msgSend_position(from, v32, v9, v87) + 1;
              if (v60 >= objc_msgSend_position(from, v61, v62) && (v65 = objc_msgSend_position(from, v63, v64) + 1, v65 <= objc_msgSend_length(from, v66, v67)))
              {
                v68 = objc_msgSend_data(from, v63, v64);
                v71 = objc_msgSend_position(from, v69, v70);
                objc_msgSend_getBytes_range_(v68, v72, &v87, v71, 1);

                v75 = objc_msgSend_position(from, v73, v74);
                objc_msgSend_setPosition_(from, v76, v75 + 1);
              }

              else
              {
                objc_msgSend__setError(from, v63, v64);
              }

              v59 |= (v87 & 0x7F) << v57;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v30 = v58++ >= 9;
              if (v30)
              {
                v56 = 0;
                goto LABEL_83;
              }
            }

            if (objc_msgSend_hasError(from, v32, v9))
            {
              v56 = 0;
            }

            else
            {
              v56 = v59;
            }

LABEL_83:
            v85 = 16;
            goto LABEL_88;
          }

          if (v32 == 2)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *&self->_has |= 2u;
            while (1)
            {
              LOBYTE(v87) = 0;
              v39 = objc_msgSend_position(from, v32, v9, v87) + 1;
              if (v39 >= objc_msgSend_position(from, v40, v41) && (v44 = objc_msgSend_position(from, v42, v43) + 1, v44 <= objc_msgSend_length(from, v45, v46)))
              {
                v47 = objc_msgSend_data(from, v42, v43);
                v50 = objc_msgSend_position(from, v48, v49);
                objc_msgSend_getBytes_range_(v47, v51, &v87, v50, 1);

                v54 = objc_msgSend_position(from, v52, v53);
                objc_msgSend_setPosition_(from, v55, v54 + 1);
              }

              else
              {
                objc_msgSend__setError(from, v42, v43);
              }

              v38 |= (v87 & 0x7F) << v36;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v30 = v37++ >= 9;
              if (v30)
              {
                v56 = 0;
                goto LABEL_87;
              }
            }

            if (objc_msgSend_hasError(from, v32, v9))
            {
              v56 = 0;
            }

            else
            {
              v56 = v38;
            }

LABEL_87:
            v85 = 80;
LABEL_88:
            *(&self->super.super.isa + v85) = v56;
            goto LABEL_76;
          }
        }

        else
        {
          switch(v32)
          {
            case 3:
              v33 = objc_alloc_init(CKDPZoneCryptoFeatureSet);
              objc_storeStrong(&self->_requiredZoneCryptoFeatures, v33);
              v87 = 0;
              v88 = 0;
              if (!PBReaderPlaceMark() || !sub_225387834(v33, from, v80))
              {
LABEL_90:

                return 0;
              }

              goto LABEL_75;
            case 4:
              v33 = objc_alloc_init(CKDPRecordCryptoFeatureSet);
              objc_storeStrong(&self->_requiredRecordCryptoFeatures, v33);
              v87 = 0;
              v88 = 0;
              if (!PBReaderPlaceMark() || !sub_22531CCC0(v33, from, v77))
              {
                goto LABEL_90;
              }

              goto LABEL_75;
            case 5:
              v33 = objc_alloc_init(CKDPFieldCryptoFeatureSet);
              objc_storeStrong(&self->_requiredFieldCryptoFeatures, v33);
              v87 = 0;
              v88 = 0;
              if (!PBReaderPlaceMark() || !sub_2252F5068(v33, from, v35))
              {
                goto LABEL_90;
              }

              goto LABEL_75;
          }
        }
      }

      else if (v32 > 8)
      {
        switch(v32)
        {
          case 9:
            v33 = objc_alloc_init(MEMORY[0x277CBC278]);
            objc_storeStrong(&self->_zoneIdentifier, v33);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
            {
              goto LABEL_90;
            }

            goto LABEL_75;
          case 0xA:
            v33 = objc_alloc_init(CKDPAdopterFeatureSet);
            objc_storeStrong(&self->_requiredAdopterFeatures, v33);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !sub_2252D859C(v33, from, v79))
            {
              goto LABEL_90;
            }

            goto LABEL_75;
          case 0xB:
            v33 = objc_alloc_init(MEMORY[0x277CBC240]);
            objc_storeStrong(&self->_lastModifiedTimestamp, v33);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
            {
              goto LABEL_90;
            }

            goto LABEL_75;
        }
      }

      else
      {
        switch(v32)
        {
          case 6:
            v33 = objc_alloc_init(CKDPZonePermittedCryptoFeatureSet);
            objc_storeStrong(&self->_permittedZoneCryptoFeatures, v33);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !sub_225388C28(v33, from, v81))
            {
              goto LABEL_90;
            }

            goto LABEL_75;
          case 7:
            v33 = objc_alloc_init(CKDPRecordPermittedCryptoFeatureSet);
            objc_storeStrong(&self->_permittedRecordCryptoFeatures, v33);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !sub_225324758(v33, from, v78))
            {
              goto LABEL_90;
            }

            goto LABEL_75;
          case 8:
            v33 = objc_alloc_init(CKDPFieldPermittedCryptoFeatureSet);
            objc_storeStrong(&self->_permittedFieldCryptoFeatures, v33);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !sub_2252F6140(v33, from, v34))
            {
              goto LABEL_90;
            }

LABEL_75:
            PBReaderRecallMark();

            goto LABEL_76;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_76:
      v82 = objc_msgSend_position(from, v32, v9);
    }

    while (v82 < objc_msgSend_length(from, v83, v84));
  }

  return objc_msgSend_hasError(from, v8, v9) ^ 1;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    minimumSchemaVersion = self->_minimumSchemaVersion;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    revision = self->_revision;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_requiredZoneCryptoFeatures)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_requiredRecordCryptoFeatures)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_requiredFieldCryptoFeatures)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_permittedZoneCryptoFeatures)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_permittedRecordCryptoFeatures)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_permittedFieldCryptoFeatures)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_requiredAdopterFeatures)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_lastModifiedTimestamp)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[4] = self->_minimumSchemaVersion;
    *(toCopy + 96) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[20] = self->_revision;
    *(toCopy + 96) |= 2u;
  }

  requiredZoneCryptoFeatures = self->_requiredZoneCryptoFeatures;
  v16 = toCopy;
  if (requiredZoneCryptoFeatures)
  {
    objc_msgSend_setRequiredZoneCryptoFeatures_(toCopy, v5, requiredZoneCryptoFeatures);
    toCopy = v16;
  }

  requiredRecordCryptoFeatures = self->_requiredRecordCryptoFeatures;
  if (requiredRecordCryptoFeatures)
  {
    objc_msgSend_setRequiredRecordCryptoFeatures_(v16, v5, requiredRecordCryptoFeatures);
    toCopy = v16;
  }

  requiredFieldCryptoFeatures = self->_requiredFieldCryptoFeatures;
  if (requiredFieldCryptoFeatures)
  {
    objc_msgSend_setRequiredFieldCryptoFeatures_(v16, v5, requiredFieldCryptoFeatures);
    toCopy = v16;
  }

  permittedZoneCryptoFeatures = self->_permittedZoneCryptoFeatures;
  if (permittedZoneCryptoFeatures)
  {
    objc_msgSend_setPermittedZoneCryptoFeatures_(v16, v5, permittedZoneCryptoFeatures);
    toCopy = v16;
  }

  permittedRecordCryptoFeatures = self->_permittedRecordCryptoFeatures;
  if (permittedRecordCryptoFeatures)
  {
    objc_msgSend_setPermittedRecordCryptoFeatures_(v16, v5, permittedRecordCryptoFeatures);
    toCopy = v16;
  }

  permittedFieldCryptoFeatures = self->_permittedFieldCryptoFeatures;
  if (permittedFieldCryptoFeatures)
  {
    objc_msgSend_setPermittedFieldCryptoFeatures_(v16, v5, permittedFieldCryptoFeatures);
    toCopy = v16;
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v16, v5, zoneIdentifier);
    toCopy = v16;
  }

  requiredAdopterFeatures = self->_requiredAdopterFeatures;
  if (requiredAdopterFeatures)
  {
    objc_msgSend_setRequiredAdopterFeatures_(v16, v5, requiredAdopterFeatures);
    toCopy = v16;
  }

  lastModifiedTimestamp = self->_lastModifiedTimestamp;
  if (lastModifiedTimestamp)
  {
    objc_msgSend_setLastModifiedTimestamp_(v16, v5, lastModifiedTimestamp);
    toCopy = v16;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  has = self->_has;
  if (has)
  {
    *(v10 + 16) = self->_minimumSchemaVersion;
    *(v10 + 96) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 80) = self->_revision;
    *(v10 + 96) |= 2u;
  }

  v14 = objc_msgSend_copyWithZone_(self->_requiredZoneCryptoFeatures, v11, zone);
  v15 = v12[9];
  v12[9] = v14;

  v17 = objc_msgSend_copyWithZone_(self->_requiredRecordCryptoFeatures, v16, zone);
  v18 = v12[8];
  v12[8] = v17;

  v20 = objc_msgSend_copyWithZone_(self->_requiredFieldCryptoFeatures, v19, zone);
  v21 = v12[7];
  v12[7] = v20;

  v23 = objc_msgSend_copyWithZone_(self->_permittedZoneCryptoFeatures, v22, zone);
  v24 = v12[5];
  v12[5] = v23;

  v26 = objc_msgSend_copyWithZone_(self->_permittedRecordCryptoFeatures, v25, zone);
  v27 = v12[4];
  v12[4] = v26;

  v29 = objc_msgSend_copyWithZone_(self->_permittedFieldCryptoFeatures, v28, zone);
  v30 = v12[3];
  v12[3] = v29;

  v32 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v31, zone);
  v33 = v12[11];
  v12[11] = v32;

  v35 = objc_msgSend_copyWithZone_(self->_requiredAdopterFeatures, v34, zone);
  v36 = v12[6];
  v12[6] = v35;

  v38 = objc_msgSend_copyWithZone_(self->_lastModifiedTimestamp, v37, zone);
  v39 = v12[1];
  v12[1] = v38;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_30;
  }

  v8 = *(equalCopy + 96);
  if (*&self->_has)
  {
    if ((equalCopy[12] & 1) == 0 || self->_minimumSchemaVersion != *(equalCopy + 4))
    {
      goto LABEL_30;
    }
  }

  else if (equalCopy[12])
  {
LABEL_30:
    isEqual = 0;
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[12] & 2) == 0 || self->_revision != *(equalCopy + 20))
    {
      goto LABEL_30;
    }
  }

  else if ((equalCopy[12] & 2) != 0)
  {
    goto LABEL_30;
  }

  requiredZoneCryptoFeatures = self->_requiredZoneCryptoFeatures;
  v10 = equalCopy[9];
  if (requiredZoneCryptoFeatures | v10 && !objc_msgSend_isEqual_(requiredZoneCryptoFeatures, v7, v10))
  {
    goto LABEL_30;
  }

  requiredRecordCryptoFeatures = self->_requiredRecordCryptoFeatures;
  v12 = equalCopy[8];
  if (requiredRecordCryptoFeatures | v12)
  {
    if (!objc_msgSend_isEqual_(requiredRecordCryptoFeatures, v7, v12))
    {
      goto LABEL_30;
    }
  }

  requiredFieldCryptoFeatures = self->_requiredFieldCryptoFeatures;
  v14 = equalCopy[7];
  if (requiredFieldCryptoFeatures | v14)
  {
    if (!objc_msgSend_isEqual_(requiredFieldCryptoFeatures, v7, v14))
    {
      goto LABEL_30;
    }
  }

  permittedZoneCryptoFeatures = self->_permittedZoneCryptoFeatures;
  v16 = equalCopy[5];
  if (permittedZoneCryptoFeatures | v16)
  {
    if (!objc_msgSend_isEqual_(permittedZoneCryptoFeatures, v7, v16))
    {
      goto LABEL_30;
    }
  }

  permittedRecordCryptoFeatures = self->_permittedRecordCryptoFeatures;
  v18 = equalCopy[4];
  if (permittedRecordCryptoFeatures | v18)
  {
    if (!objc_msgSend_isEqual_(permittedRecordCryptoFeatures, v7, v18))
    {
      goto LABEL_30;
    }
  }

  permittedFieldCryptoFeatures = self->_permittedFieldCryptoFeatures;
  v20 = equalCopy[3];
  if (permittedFieldCryptoFeatures | v20)
  {
    if (!objc_msgSend_isEqual_(permittedFieldCryptoFeatures, v7, v20))
    {
      goto LABEL_30;
    }
  }

  zoneIdentifier = self->_zoneIdentifier;
  v22 = equalCopy[11];
  if (zoneIdentifier | v22)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v22))
    {
      goto LABEL_30;
    }
  }

  requiredAdopterFeatures = self->_requiredAdopterFeatures;
  v24 = equalCopy[6];
  if (requiredAdopterFeatures | v24)
  {
    if (!objc_msgSend_isEqual_(requiredAdopterFeatures, v7, v24))
    {
      goto LABEL_30;
    }
  }

  lastModifiedTimestamp = self->_lastModifiedTimestamp;
  v26 = equalCopy[1];
  if (lastModifiedTimestamp | v26)
  {
    isEqual = objc_msgSend_isEqual_(lastModifiedTimestamp, v7, v26);
  }

  else
  {
    isEqual = 1;
  }

LABEL_31:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_minimumSchemaVersion;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_revision;
LABEL_6:
  v6 = v5 ^ v4 ^ objc_msgSend_hash(self->_requiredZoneCryptoFeatures, a2, v2);
  v9 = objc_msgSend_hash(self->_requiredRecordCryptoFeatures, v7, v8);
  v12 = v6 ^ v9 ^ objc_msgSend_hash(self->_requiredFieldCryptoFeatures, v10, v11);
  v15 = objc_msgSend_hash(self->_permittedZoneCryptoFeatures, v13, v14);
  v18 = v15 ^ objc_msgSend_hash(self->_permittedRecordCryptoFeatures, v16, v17);
  v21 = v12 ^ v18 ^ objc_msgSend_hash(self->_permittedFieldCryptoFeatures, v19, v20);
  v24 = objc_msgSend_hash(self->_zoneIdentifier, v22, v23);
  v27 = v24 ^ objc_msgSend_hash(self->_requiredAdopterFeatures, v25, v26);
  return v21 ^ v27 ^ objc_msgSend_hash(self->_lastModifiedTimestamp, v28, v29);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 96);
  if (v6)
  {
    self->_minimumSchemaVersion = fromCopy[4];
    *&self->_has |= 1u;
    v6 = *(fromCopy + 96);
  }

  if ((v6 & 2) != 0)
  {
    self->_revision = fromCopy[20];
    *&self->_has |= 2u;
  }

  requiredZoneCryptoFeatures = self->_requiredZoneCryptoFeatures;
  v8 = *(v5 + 9);
  v25 = v5;
  if (requiredZoneCryptoFeatures)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    objc_msgSend_mergeFrom_(requiredZoneCryptoFeatures, v5, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    objc_msgSend_setRequiredZoneCryptoFeatures_(self, v5, v8);
  }

  v5 = v25;
LABEL_11:
  requiredRecordCryptoFeatures = self->_requiredRecordCryptoFeatures;
  v10 = *(v5 + 8);
  if (requiredRecordCryptoFeatures)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    objc_msgSend_mergeFrom_(requiredRecordCryptoFeatures, v5, v10);
  }

  else
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    objc_msgSend_setRequiredRecordCryptoFeatures_(self, v5, v10);
  }

  v5 = v25;
LABEL_17:
  requiredFieldCryptoFeatures = self->_requiredFieldCryptoFeatures;
  v12 = *(v5 + 7);
  if (requiredFieldCryptoFeatures)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    objc_msgSend_mergeFrom_(requiredFieldCryptoFeatures, v5, v12);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    objc_msgSend_setRequiredFieldCryptoFeatures_(self, v5, v12);
  }

  v5 = v25;
LABEL_23:
  permittedZoneCryptoFeatures = self->_permittedZoneCryptoFeatures;
  v14 = *(v5 + 5);
  if (permittedZoneCryptoFeatures)
  {
    if (!v14)
    {
      goto LABEL_29;
    }

    objc_msgSend_mergeFrom_(permittedZoneCryptoFeatures, v5, v14);
  }

  else
  {
    if (!v14)
    {
      goto LABEL_29;
    }

    objc_msgSend_setPermittedZoneCryptoFeatures_(self, v5, v14);
  }

  v5 = v25;
LABEL_29:
  permittedRecordCryptoFeatures = self->_permittedRecordCryptoFeatures;
  v16 = *(v5 + 4);
  if (permittedRecordCryptoFeatures)
  {
    if (!v16)
    {
      goto LABEL_35;
    }

    objc_msgSend_mergeFrom_(permittedRecordCryptoFeatures, v5, v16);
  }

  else
  {
    if (!v16)
    {
      goto LABEL_35;
    }

    objc_msgSend_setPermittedRecordCryptoFeatures_(self, v5, v16);
  }

  v5 = v25;
LABEL_35:
  permittedFieldCryptoFeatures = self->_permittedFieldCryptoFeatures;
  v18 = *(v5 + 3);
  if (permittedFieldCryptoFeatures)
  {
    if (!v18)
    {
      goto LABEL_41;
    }

    objc_msgSend_mergeFrom_(permittedFieldCryptoFeatures, v5, v18);
  }

  else
  {
    if (!v18)
    {
      goto LABEL_41;
    }

    objc_msgSend_setPermittedFieldCryptoFeatures_(self, v5, v18);
  }

  v5 = v25;
LABEL_41:
  zoneIdentifier = self->_zoneIdentifier;
  v20 = *(v5 + 11);
  if (zoneIdentifier)
  {
    if (!v20)
    {
      goto LABEL_47;
    }

    objc_msgSend_mergeFrom_(zoneIdentifier, v5, v20);
  }

  else
  {
    if (!v20)
    {
      goto LABEL_47;
    }

    objc_msgSend_setZoneIdentifier_(self, v5, v20);
  }

  v5 = v25;
LABEL_47:
  requiredAdopterFeatures = self->_requiredAdopterFeatures;
  v22 = *(v5 + 6);
  if (requiredAdopterFeatures)
  {
    if (!v22)
    {
      goto LABEL_53;
    }

    objc_msgSend_mergeFrom_(requiredAdopterFeatures, v5, v22);
  }

  else
  {
    if (!v22)
    {
      goto LABEL_53;
    }

    objc_msgSend_setRequiredAdopterFeatures_(self, v5, v22);
  }

  v5 = v25;
LABEL_53:
  lastModifiedTimestamp = self->_lastModifiedTimestamp;
  v24 = *(v5 + 1);
  if (lastModifiedTimestamp)
  {
    if (v24)
    {
      objc_msgSend_mergeFrom_(lastModifiedTimestamp, v5, v24);
    }
  }

  else if (v24)
  {
    objc_msgSend_setLastModifiedTimestamp_(self, v5, v24);
  }

  MEMORY[0x2821F96F8]();
}

@end