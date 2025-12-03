@interface CKDPRecordFieldValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)_CKLogToFileHandle:(id)handle atDepth:(int)depth;
- (void)addListValue:(id)value;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsEncrypted:(BOOL)encrypted;
- (void)setHasSignedValue:(BOOL)value;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordFieldValue

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (void)_CKLogToFileHandle:(id)handle atDepth:(int)depth
{
  v59 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v7 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_dictionaryRepresentation(self, v8, v9);
  v12 = objc_msgSend_standaloneTranslatorWithDatabaseScope_(CKDProtocolTranslator, v11, 2);
  v14 = objc_msgSend_objectRepresentationFromFieldValue_(v12, v13, self);

  if (!v14)
  {
    if ((objc_msgSend_hasMergeableValue(self, v15, v16) & 1) != 0 || objc_msgSend_hasEncryptedMergeableValue(self, v17, v18))
    {
      v19 = objc_msgSend_mergeableValue(self, v17, v18);
      v22 = v19;
      if (v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = objc_msgSend_encryptedMergeableValue(self, v20, v21);
      }

      v14 = v23;
    }

    else
    {
      v14 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = sub_225199CCC();
    objc_msgSend_writeData_(handleCopy, v25, v24);

    v26 = sub_2251995B8();
    objc_msgSend_writeData_(handleCopy, v27, v26);

    sub_22519960C(depth + 1, handleCopy);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v28 = v14;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v54, v58, 16);
    if (v30)
    {
      v32 = v30;
      v33 = *v55;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v55 != v33)
          {
            objc_enumerationMutation(v28);
          }

          objc_msgSend__CKLogToFileHandle_atDepth_(*(*(&v54 + 1) + 8 * i), v31, handleCopy, (depth + 1), v54);
          v35 = sub_2251995B8();
          objc_msgSend_writeData_(handleCopy, v36, v35);
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v54, v58, 16);
      }

      while (v32);
    }

    sub_22519960C(depth, handleCopy);
    v37 = sub_225199D74();
  }

  else
  {
    v39 = sub_22519AF58();
    objc_msgSend_writeData_(handleCopy, v40, v39);

    v42 = objc_msgSend_objectForKeyedSubscript_(v10, v41, @"type");
    objc_msgSend_CKWriteString_(handleCopy, v43, v42);

    v44 = sub_22519AFAC();
    objc_msgSend_writeData_(handleCopy, v45, v44);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_21;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_21;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_21;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
LABEL_35:
      v49 = sub_22519B000();
      objc_msgSend_writeData_(handleCopy, v50, v49);

      objc_msgSend__CKLogToFileHandle_atDepth_(v14, v51, handleCopy, (depth + 1));
      v52 = sub_22519B000();
      objc_msgSend_writeData_(handleCopy, v53, v52);
    }

    else
    {
LABEL_21:
      objc_msgSend__CKLogToFileHandle_atDepth_(v14, v46, handleCopy, (depth + 1));
    }

    v37 = sub_22519AA58();
  }

  v47 = v37;
  objc_msgSend_writeData_(handleCopy, v38, v37, v54);

  objc_autoreleasePoolPop(v7);
  v48 = *MEMORY[0x277D85DE8];
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)typeAsString:(int)string
{
  v4 = string - 1;
  if (string - 1) < 0x1F && ((0x799FFFFFu >> v4))
  {
    v5 = off_27854CA40[v4];
  }

  else
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  return v5;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"bytesType"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"dateType"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"stringType"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v8, @"locationType"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v9, @"referenceType"))
  {
    v6 = 5;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v10, @"assetType"))
  {
    v6 = 6;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v11, @"int64Type"))
  {
    v6 = 7;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v12, @"doubleType"))
  {
    v6 = 8;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v13, @"emptyList"))
  {
    v6 = 9;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v14, @"dateListType"))
  {
    v6 = 10;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v15, @"bytesListType"))
  {
    v6 = 11;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v16, @"locationListType"))
  {
    v6 = 12;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v17, @"referenceListType"))
  {
    v6 = 13;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v18, @"assetListType"))
  {
    v6 = 14;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v19, @"stringListType"))
  {
    v6 = 15;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v20, @"listType"))
  {
    v6 = 16;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v21, @"int64ListType"))
  {
    v6 = 17;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v22, @"doubleListType"))
  {
    v6 = 18;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v23, @"packageType"))
  {
    v6 = 19;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v24, @"encryptedBytesType"))
  {
    v6 = 20;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v25, @"encryptedBytesListType"))
  {
    v6 = 21;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v26, @"streamingAsset"))
  {
    v6 = 24;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v27, @"streamingAssetList"))
  {
    v6 = 25;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v28, @"mergeableValueType"))
  {
    v6 = 28;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v29, @"encryptedMergeableValueType"))
  {
    v6 = 29;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v30, @"tupleType"))
  {
    v6 = 30;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v31, @"tupleListType"))
  {
    v6 = 31;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setHasSignedValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addListValue:(id)value
{
  valueCopy = value;
  listValues = self->_listValues;
  v8 = valueCopy;
  if (!listValues)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_listValues;
    self->_listValues = v6;

    valueCopy = v8;
    listValues = self->_listValues;
  }

  objc_msgSend_addObject_(listValues, valueCopy, valueCopy);
}

- (void)setHasIsEncrypted:(BOOL)encrypted
{
  if (encrypted)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordFieldValue;
  v4 = [(CKDPRecordFieldValue *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if ((*&self->_has & 4) != 0)
  {
    v6 = self->_type - 1;
    if (v6 < 0x1F && ((0x799FFFFFu >> v6) & 1) != 0)
    {
      v7 = off_27854CA40[v6];
      objc_msgSend_setObject_forKey_(v5, v4, v7, @"type");
    }

    else
    {
      v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_type);
      objc_msgSend_setObject_forKey_(v5, v8, v7, @"type");
    }
  }

  bytesValue = self->_bytesValue;
  if (bytesValue)
  {
    objc_msgSend_setObject_forKey_(v5, v4, bytesValue, @"bytesValue");
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_signedValue);
    objc_msgSend_setObject_forKey_(v5, v12, v11, @"signedValue");

    has = self->_has;
  }

  if (has)
  {
    v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v4, bytesValue, self->_ckDoubleValue);
    objc_msgSend_setObject_forKey_(v5, v14, v13, @"ckDoubleValue");
  }

  dateValue = self->_dateValue;
  if (dateValue)
  {
    v16 = objc_msgSend_dictionaryRepresentation(dateValue, v4, bytesValue);
    objc_msgSend_setObject_forKey_(v5, v17, v16, @"dateValue");
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    objc_msgSend_setObject_forKey_(v5, v4, stringValue, @"stringValue");
  }

  locationValue = self->_locationValue;
  if (locationValue)
  {
    v20 = objc_msgSend_dictionaryRepresentation(locationValue, v4, stringValue);
    objc_msgSend_setObject_forKey_(v5, v21, v20, @"locationValue");
  }

  referenceValue = self->_referenceValue;
  if (referenceValue)
  {
    v23 = objc_msgSend_dictionaryRepresentation(referenceValue, v4, stringValue);
    objc_msgSend_setObject_forKey_(v5, v24, v23, @"referenceValue");
  }

  assetValue = self->_assetValue;
  if (assetValue)
  {
    v26 = objc_msgSend_dictionaryRepresentation(assetValue, v4, stringValue);
    objc_msgSend_setObject_forKey_(v5, v27, v26, @"assetValue");
  }

  if (objc_msgSend_count(self->_listValues, v4, stringValue))
  {
    v30 = objc_alloc(MEMORY[0x277CBEB18]);
    v33 = objc_msgSend_count(self->_listValues, v31, v32);
    v35 = objc_msgSend_initWithCapacity_(v30, v34, v33);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v36 = self->_listValues;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v66, v70, 16);
    if (v38)
    {
      v41 = v38;
      v42 = *v67;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v67 != v42)
          {
            objc_enumerationMutation(v36);
          }

          v44 = objc_msgSend_dictionaryRepresentation(*(*(&v66 + 1) + 8 * i), v39, v40);
          objc_msgSend_addObject_(v35, v45, v44);
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v66, v70, 16);
      }

      while (v41);
    }

    objc_msgSend_setObject_forKey_(v5, v46, v35, @"listValue");
  }

  packageValue = self->_packageValue;
  if (packageValue)
  {
    v48 = objc_msgSend_dictionaryRepresentation(packageValue, v28, v29);
    objc_msgSend_setObject_forKey_(v5, v49, v48, @"packageValue");
  }

  streamingAssetValue = self->_streamingAssetValue;
  if (streamingAssetValue)
  {
    v51 = objc_msgSend_dictionaryRepresentation(streamingAssetValue, v28, v29);
    objc_msgSend_setObject_forKey_(v5, v52, v51, @"streamingAssetValue");
  }

  mergeableValue = self->_mergeableValue;
  if (mergeableValue)
  {
    v54 = objc_msgSend_dictionaryRepresentation(mergeableValue, v28, v29);
    objc_msgSend_setObject_forKey_(v5, v55, v54, @"mergeableValue");
  }

  encryptedMergeableValue = self->_encryptedMergeableValue;
  if (encryptedMergeableValue)
  {
    v57 = objc_msgSend_dictionaryRepresentation(encryptedMergeableValue, v28, v29);
    objc_msgSend_setObject_forKey_(v5, v58, v57, @"encryptedMergeableValue");
  }

  if ((*&self->_has & 8) != 0)
  {
    v59 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v28, self->_isEncrypted);
    objc_msgSend_setObject_forKey_(v5, v60, v59, @"isEncrypted");
  }

  appliedCryptoFeatures = self->_appliedCryptoFeatures;
  if (appliedCryptoFeatures)
  {
    v62 = objc_msgSend_dictionaryRepresentation(appliedCryptoFeatures, v28, v29);
    objc_msgSend_setObject_forKey_(v5, v63, v62, @"appliedCryptoFeatures");
  }

  v64 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_bytesValue)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    signedValue = self->_signedValue;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if (has)
  {
    ckDoubleValue = self->_ckDoubleValue;
    PBDataWriterWriteDoubleField();
  }

  if (self->_dateValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_locationValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_referenceValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_assetValue)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_listValues;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v19, v23, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v16, &v19, v23, 16);
    }

    while (v12);
  }

  if (self->_packageValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    isEncrypted = self->_isEncrypted;
    PBDataWriterWriteBOOLField();
  }

  if (self->_appliedCryptoFeatures)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_streamingAssetValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_mergeableValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_encryptedMergeableValue)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[30] = self->_type;
    *(toCopy + 128) |= 4u;
  }

  bytesValue = self->_bytesValue;
  v28 = toCopy;
  if (bytesValue)
  {
    objc_msgSend_setBytesValue_(toCopy, v5, bytesValue);
    toCopy = v28;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_signedValue;
    *(toCopy + 128) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_ckDoubleValue;
    *(toCopy + 128) |= 1u;
  }

  dateValue = self->_dateValue;
  if (dateValue)
  {
    objc_msgSend_setDateValue_(v28, v5, dateValue);
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    objc_msgSend_setStringValue_(v28, v5, stringValue);
  }

  locationValue = self->_locationValue;
  if (locationValue)
  {
    objc_msgSend_setLocationValue_(v28, v5, locationValue);
  }

  referenceValue = self->_referenceValue;
  if (referenceValue)
  {
    objc_msgSend_setReferenceValue_(v28, v5, referenceValue);
  }

  assetValue = self->_assetValue;
  if (assetValue)
  {
    objc_msgSend_setAssetValue_(v28, v5, assetValue);
  }

  if (objc_msgSend_listValuesCount(self, v5, assetValue))
  {
    objc_msgSend_clearListValues(v28, v13, v14);
    v17 = objc_msgSend_listValuesCount(self, v15, v16);
    if (v17)
    {
      v18 = v17;
      for (i = 0; i != v18; ++i)
      {
        v20 = objc_msgSend_listValueAtIndex_(self, v13, i);
        objc_msgSend_addListValue_(v28, v21, v20);
      }
    }
  }

  packageValue = self->_packageValue;
  if (packageValue)
  {
    objc_msgSend_setPackageValue_(v28, v13, packageValue);
  }

  v23 = v28;
  if ((*&self->_has & 8) != 0)
  {
    v28[124] = self->_isEncrypted;
    v28[128] |= 8u;
  }

  appliedCryptoFeatures = self->_appliedCryptoFeatures;
  if (appliedCryptoFeatures)
  {
    objc_msgSend_setAppliedCryptoFeatures_(v28, v13, appliedCryptoFeatures);
    v23 = v28;
  }

  streamingAssetValue = self->_streamingAssetValue;
  if (streamingAssetValue)
  {
    objc_msgSend_setStreamingAssetValue_(v28, v13, streamingAssetValue);
    v23 = v28;
  }

  mergeableValue = self->_mergeableValue;
  if (mergeableValue)
  {
    objc_msgSend_setMergeableValue_(v28, v13, mergeableValue);
    v23 = v28;
  }

  encryptedMergeableValue = self->_encryptedMergeableValue;
  if (encryptedMergeableValue)
  {
    objc_msgSend_setEncryptedMergeableValue_(v28, v13, encryptedMergeableValue);
    v23 = v28;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 120) = self->_type;
    *(v10 + 128) |= 4u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_bytesValue, v11, zone);
  v14 = *(v12 + 40);
  *(v12 + 40) = v13;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v12 + 16) = self->_signedValue;
    *(v12 + 128) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v12 + 8) = self->_ckDoubleValue;
    *(v12 + 128) |= 1u;
  }

  v17 = objc_msgSend_copyWithZone_(self->_dateValue, v15, zone);
  v18 = *(v12 + 48);
  *(v12 + 48) = v17;

  v20 = objc_msgSend_copyWithZone_(self->_stringValue, v19, zone);
  v21 = *(v12 + 112);
  *(v12 + 112) = v20;

  v23 = objc_msgSend_copyWithZone_(self->_locationValue, v22, zone);
  v24 = *(v12 + 72);
  *(v12 + 72) = v23;

  v26 = objc_msgSend_copyWithZone_(self->_referenceValue, v25, zone);
  v27 = *(v12 + 96);
  *(v12 + 96) = v26;

  v29 = objc_msgSend_copyWithZone_(self->_assetValue, v28, zone);
  v30 = *(v12 + 32);
  *(v12 + 32) = v29;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v31 = self->_listValues;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v57, v61, 16);
  if (v33)
  {
    v35 = v33;
    v36 = *v58;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v58 != v36)
        {
          objc_enumerationMutation(v31);
        }

        v38 = objc_msgSend_copyWithZone_(*(*(&v57 + 1) + 8 * i), v34, zone, v57);
        objc_msgSend_addListValue_(v12, v39, v38);
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v57, v61, 16);
    }

    while (v35);
  }

  v41 = objc_msgSend_copyWithZone_(self->_packageValue, v40, zone);
  v42 = *(v12 + 88);
  *(v12 + 88) = v41;

  if ((*&self->_has & 8) != 0)
  {
    *(v12 + 124) = self->_isEncrypted;
    *(v12 + 128) |= 8u;
  }

  v44 = objc_msgSend_copyWithZone_(self->_appliedCryptoFeatures, v43, zone, v57);
  v45 = *(v12 + 24);
  *(v12 + 24) = v44;

  v47 = objc_msgSend_copyWithZone_(self->_streamingAssetValue, v46, zone);
  v48 = *(v12 + 104);
  *(v12 + 104) = v47;

  v50 = objc_msgSend_copyWithZone_(self->_mergeableValue, v49, zone);
  v51 = *(v12 + 80);
  *(v12 + 80) = v50;

  v53 = objc_msgSend_copyWithZone_(self->_encryptedMergeableValue, v52, zone);
  v54 = *(v12 + 56);
  *(v12 + 56) = v53;

  v55 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_45;
  }

  has = self->_has;
  v9 = *(equalCopy + 128);
  if ((has & 4) != 0)
  {
    if ((equalCopy[16] & 4) == 0 || self->_type != *(equalCopy + 30))
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[16] & 4) != 0)
  {
    goto LABEL_45;
  }

  bytesValue = self->_bytesValue;
  v11 = equalCopy[5];
  if (bytesValue | v11)
  {
    if (!objc_msgSend_isEqual_(bytesValue, v7, v11))
    {
      goto LABEL_45;
    }

    has = self->_has;
    v9 = *(equalCopy + 128);
  }

  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_signedValue != equalCopy[2])
    {
      goto LABEL_45;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_45;
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_ckDoubleValue != *(equalCopy + 1))
    {
      goto LABEL_45;
    }
  }

  else if (v9)
  {
    goto LABEL_45;
  }

  dateValue = self->_dateValue;
  v13 = equalCopy[6];
  if (dateValue | v13 && !objc_msgSend_isEqual_(dateValue, v7, v13))
  {
    goto LABEL_45;
  }

  stringValue = self->_stringValue;
  v15 = equalCopy[14];
  if (stringValue | v15)
  {
    if (!objc_msgSend_isEqual_(stringValue, v7, v15))
    {
      goto LABEL_45;
    }
  }

  locationValue = self->_locationValue;
  v17 = equalCopy[9];
  if (locationValue | v17)
  {
    if (!objc_msgSend_isEqual_(locationValue, v7, v17))
    {
      goto LABEL_45;
    }
  }

  referenceValue = self->_referenceValue;
  v19 = equalCopy[12];
  if (referenceValue | v19)
  {
    if (!objc_msgSend_isEqual_(referenceValue, v7, v19))
    {
      goto LABEL_45;
    }
  }

  assetValue = self->_assetValue;
  v21 = equalCopy[4];
  if (assetValue | v21)
  {
    if (!objc_msgSend_isEqual_(assetValue, v7, v21))
    {
      goto LABEL_45;
    }
  }

  listValues = self->_listValues;
  v23 = equalCopy[8];
  if (listValues | v23)
  {
    if (!objc_msgSend_isEqual_(listValues, v7, v23))
    {
      goto LABEL_45;
    }
  }

  packageValue = self->_packageValue;
  v25 = equalCopy[11];
  if (packageValue | v25)
  {
    if (!objc_msgSend_isEqual_(packageValue, v7, v25))
    {
      goto LABEL_45;
    }
  }

  v26 = *(equalCopy + 128);
  if ((*&self->_has & 8) == 0)
  {
    if ((equalCopy[16] & 8) == 0)
    {
      goto LABEL_36;
    }

LABEL_45:
    isEqual = 0;
    goto LABEL_46;
  }

  if ((equalCopy[16] & 8) == 0)
  {
    goto LABEL_45;
  }

  v37 = *(equalCopy + 124);
  if (self->_isEncrypted)
  {
    if ((*(equalCopy + 124) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (*(equalCopy + 124))
  {
    goto LABEL_45;
  }

LABEL_36:
  appliedCryptoFeatures = self->_appliedCryptoFeatures;
  v28 = equalCopy[3];
  if (appliedCryptoFeatures | v28 && !objc_msgSend_isEqual_(appliedCryptoFeatures, v7, v28))
  {
    goto LABEL_45;
  }

  streamingAssetValue = self->_streamingAssetValue;
  v30 = equalCopy[13];
  if (streamingAssetValue | v30)
  {
    if (!objc_msgSend_isEqual_(streamingAssetValue, v7, v30))
    {
      goto LABEL_45;
    }
  }

  mergeableValue = self->_mergeableValue;
  v32 = equalCopy[10];
  if (mergeableValue | v32)
  {
    if (!objc_msgSend_isEqual_(mergeableValue, v7, v32))
    {
      goto LABEL_45;
    }
  }

  encryptedMergeableValue = self->_encryptedMergeableValue;
  v34 = equalCopy[7];
  if (encryptedMergeableValue | v34)
  {
    isEqual = objc_msgSend_isEqual_(encryptedMergeableValue, v7, v34);
  }

  else
  {
    isEqual = 1;
  }

LABEL_46:

  return isEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v47 = 2654435761 * self->_type;
  }

  else
  {
    v47 = 0;
  }

  v46 = objc_msgSend_hash(self->_bytesValue, a2, v2);
  if ((*&self->_has & 2) != 0)
  {
    v45 = 2654435761 * self->_signedValue;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v45 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  ckDoubleValue = self->_ckDoubleValue;
  if (ckDoubleValue < 0.0)
  {
    ckDoubleValue = -ckDoubleValue;
  }

  *v6.i64 = floor(ckDoubleValue + 0.5);
  v9 = (ckDoubleValue - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v7, v6).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_12:
  v12 = objc_msgSend_hash(self->_dateValue, v4, v5);
  v15 = objc_msgSend_hash(self->_stringValue, v13, v14);
  v18 = objc_msgSend_hash(self->_locationValue, v16, v17);
  v21 = objc_msgSend_hash(self->_referenceValue, v19, v20);
  v24 = objc_msgSend_hash(self->_assetValue, v22, v23);
  v27 = objc_msgSend_hash(self->_listValues, v25, v26);
  v30 = objc_msgSend_hash(self->_packageValue, v28, v29);
  if ((*&self->_has & 8) != 0)
  {
    v33 = 2654435761 * self->_isEncrypted;
  }

  else
  {
    v33 = 0;
  }

  v34 = v46 ^ v47 ^ v45 ^ v11 ^ v12 ^ v15 ^ v18 ^ v21 ^ v24 ^ v27 ^ v30 ^ v33;
  v35 = objc_msgSend_hash(self->_appliedCryptoFeatures, v31, v32);
  v38 = v35 ^ objc_msgSend_hash(self->_streamingAssetValue, v36, v37);
  v41 = v38 ^ objc_msgSend_hash(self->_mergeableValue, v39, v40);
  return v34 ^ v41 ^ objc_msgSend_hash(self->_encryptedMergeableValue, v42, v43);
}

- (void)mergeFrom:(id)from
{
  v42 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = fromCopy;
  if ((*(fromCopy + 128) & 4) != 0)
  {
    self->_type = *(fromCopy + 30);
    *&self->_has |= 4u;
  }

  v7 = *(fromCopy + 5);
  if (v7)
  {
    objc_msgSend_setBytesValue_(self, v5, v7);
  }

  v8 = *(v6 + 128);
  if ((v8 & 2) != 0)
  {
    self->_signedValue = *(v6 + 2);
    *&self->_has |= 2u;
    v8 = *(v6 + 128);
  }

  if (v8)
  {
    self->_ckDoubleValue = *(v6 + 1);
    *&self->_has |= 1u;
  }

  dateValue = self->_dateValue;
  v10 = *(v6 + 6);
  if (dateValue)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(dateValue, v5, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setDateValue_(self, v5, v10);
  }

  v11 = *(v6 + 14);
  if (v11)
  {
    objc_msgSend_setStringValue_(self, v5, v11);
  }

  locationValue = self->_locationValue;
  v13 = *(v6 + 9);
  if (locationValue)
  {
    if (v13)
    {
      objc_msgSend_mergeFrom_(locationValue, v5, v13);
    }
  }

  else if (v13)
  {
    objc_msgSend_setLocationValue_(self, v5, v13);
  }

  referenceValue = self->_referenceValue;
  v15 = *(v6 + 12);
  if (referenceValue)
  {
    if (v15)
    {
      objc_msgSend_mergeFrom_(referenceValue, v5, v15);
    }
  }

  else if (v15)
  {
    objc_msgSend_setReferenceValue_(self, v5, v15);
  }

  assetValue = self->_assetValue;
  v17 = *(v6 + 4);
  if (assetValue)
  {
    if (v17)
    {
      objc_msgSend_mergeFrom_(assetValue, v5, v17);
    }
  }

  else if (v17)
  {
    objc_msgSend_setAssetValue_(self, v5, v17);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = *(v6 + 8);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v37, v41, 16);
  if (v20)
  {
    v22 = v20;
    v23 = *v38;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v18);
        }

        objc_msgSend_addListValue_(self, v21, *(*(&v37 + 1) + 8 * i), v37);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v37, v41, 16);
    }

    while (v22);
  }

  packageValue = self->_packageValue;
  v27 = *(v6 + 11);
  if (packageValue)
  {
    if (v27)
    {
      objc_msgSend_mergeFrom_(packageValue, v25, v27);
    }
  }

  else if (v27)
  {
    objc_msgSend_setPackageValue_(self, v25, v27);
  }

  if ((*(v6 + 128) & 8) != 0)
  {
    self->_isEncrypted = *(v6 + 124);
    *&self->_has |= 8u;
  }

  appliedCryptoFeatures = self->_appliedCryptoFeatures;
  v29 = *(v6 + 3);
  if (appliedCryptoFeatures)
  {
    if (v29)
    {
      objc_msgSend_mergeFrom_(appliedCryptoFeatures, v25, v29);
    }
  }

  else if (v29)
  {
    objc_msgSend_setAppliedCryptoFeatures_(self, v25, v29);
  }

  streamingAssetValue = self->_streamingAssetValue;
  v31 = *(v6 + 13);
  if (streamingAssetValue)
  {
    if (v31)
    {
      objc_msgSend_mergeFrom_(streamingAssetValue, v25, v31);
    }
  }

  else if (v31)
  {
    objc_msgSend_setStreamingAssetValue_(self, v25, v31);
  }

  mergeableValue = self->_mergeableValue;
  v33 = *(v6 + 10);
  if (mergeableValue)
  {
    if (v33)
    {
      objc_msgSend_mergeFrom_(mergeableValue, v25, v33);
    }
  }

  else if (v33)
  {
    objc_msgSend_setMergeableValue_(self, v25, v33);
  }

  encryptedMergeableValue = self->_encryptedMergeableValue;
  v35 = *(v6 + 7);
  if (encryptedMergeableValue)
  {
    if (v35)
    {
      objc_msgSend_mergeFrom_(encryptedMergeableValue, v25, v35);
    }
  }

  else if (v35)
  {
    objc_msgSend_setEncryptedMergeableValue_(self, v25, v35);
  }

  v36 = *MEMORY[0x277D85DE8];
}

@end