@interface CKDPAdopterCapabilitiesCheckRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFieldLevelCapabilities:(id)a3;
- (void)addRecordLevelCapabilities:(id)a3;
- (void)addZoneLevelCapabilities:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPAdopterCapabilitiesCheckRequest

+ (id)options
{
  if (qword_280D54F20 != -1)
  {
    dispatch_once(&qword_280D54F20, &unk_28385DC80);
  }

  v3 = qword_280D54F18;

  return v3;
}

- (void)addZoneLevelCapabilities:(id)a3
{
  v4 = a3;
  zoneLevelCapabilities = self->_zoneLevelCapabilities;
  v8 = v4;
  if (!zoneLevelCapabilities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_zoneLevelCapabilities;
    self->_zoneLevelCapabilities = v6;

    v4 = v8;
    zoneLevelCapabilities = self->_zoneLevelCapabilities;
  }

  objc_msgSend_addObject_(zoneLevelCapabilities, v4, v4);
}

- (void)addRecordLevelCapabilities:(id)a3
{
  v4 = a3;
  recordLevelCapabilities = self->_recordLevelCapabilities;
  v8 = v4;
  if (!recordLevelCapabilities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_recordLevelCapabilities;
    self->_recordLevelCapabilities = v6;

    v4 = v8;
    recordLevelCapabilities = self->_recordLevelCapabilities;
  }

  objc_msgSend_addObject_(recordLevelCapabilities, v4, v4);
}

- (void)addFieldLevelCapabilities:(id)a3
{
  v4 = a3;
  fieldLevelCapabilities = self->_fieldLevelCapabilities;
  v8 = v4;
  if (!fieldLevelCapabilities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fieldLevelCapabilities;
    self->_fieldLevelCapabilities = v6;

    v4 = v8;
    fieldLevelCapabilities = self->_fieldLevelCapabilities;
  }

  objc_msgSend_addObject_(fieldLevelCapabilities, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAdopterCapabilitiesCheckRequest;
  v4 = [(CKDPAdopterCapabilitiesCheckRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v90 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(zoneIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"zoneIdentifier");
  }

  if (objc_msgSend_count(self->_zoneLevelCapabilities, v4, v5))
  {
    v12 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = objc_msgSend_count(self->_zoneLevelCapabilities, v13, v14);
    v17 = objc_msgSend_initWithCapacity_(v12, v16, v15);
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v18 = self->_zoneLevelCapabilities;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v83, v89, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v84;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v84 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = objc_msgSend_dictionaryRepresentation(*(*(&v83 + 1) + 8 * i), v21, v22);
          objc_msgSend_addObject_(v17, v27, v26);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v83, v89, 16);
      }

      while (v23);
    }

    objc_msgSend_setObject_forKey_(v6, v28, v17, @"zoneLevelCapabilities");
  }

  if (objc_msgSend_count(self->_recordLevelCapabilities, v10, v11))
  {
    v31 = objc_alloc(MEMORY[0x277CBEB18]);
    v34 = objc_msgSend_count(self->_recordLevelCapabilities, v32, v33);
    v36 = objc_msgSend_initWithCapacity_(v31, v35, v34);
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v37 = self->_recordLevelCapabilities;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v79, v88, 16);
    if (v39)
    {
      v42 = v39;
      v43 = *v80;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v80 != v43)
          {
            objc_enumerationMutation(v37);
          }

          v45 = objc_msgSend_dictionaryRepresentation(*(*(&v79 + 1) + 8 * j), v40, v41);
          objc_msgSend_addObject_(v36, v46, v45);
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v79, v88, 16);
      }

      while (v42);
    }

    objc_msgSend_setObject_forKey_(v6, v47, v36, @"recordLevelCapabilities");
  }

  if (objc_msgSend_count(self->_fieldLevelCapabilities, v29, v30))
  {
    v50 = objc_alloc(MEMORY[0x277CBEB18]);
    v53 = objc_msgSend_count(self->_fieldLevelCapabilities, v51, v52);
    v55 = objc_msgSend_initWithCapacity_(v50, v54, v53);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v56 = self->_fieldLevelCapabilities;
    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v75, v87, 16);
    if (v58)
    {
      v61 = v58;
      v62 = *v76;
      do
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v76 != v62)
          {
            objc_enumerationMutation(v56);
          }

          v64 = objc_msgSend_dictionaryRepresentation(*(*(&v75 + 1) + 8 * k), v59, v60, v75);
          objc_msgSend_addObject_(v55, v65, v64);
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v59, &v75, v87, 16);
      }

      while (v61);
    }

    objc_msgSend_setObject_forKey_(v6, v66, v55, @"fieldLevelCapabilities");
  }

  excludeZoneAccessBefore = self->_excludeZoneAccessBefore;
  if (excludeZoneAccessBefore)
  {
    v68 = objc_msgSend_dictionaryRepresentation(excludeZoneAccessBefore, v48, v49);
    objc_msgSend_setObject_forKey_(v6, v69, v68, @"excludeZoneAccessBefore");
  }

  if (*&self->_has)
  {
    v70 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v48, self->_excludeDevicesWithoutCapabilityCheckingSupport);
    objc_msgSend_setObject_forKey_(v6, v71, v70, @"excludeDevicesWithoutCapabilityCheckingSupport");
  }

  continuation = self->_continuation;
  if (continuation)
  {
    objc_msgSend_setObject_forKey_(v6, v48, continuation, @"continuation");
  }

  v73 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = self->_zoneLevelCapabilities;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v39, v45, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      v10 = 0;
      do
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v39 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v39, v45, 16);
    }

    while (v8);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = self->_recordLevelCapabilities;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v35, v44, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      v18 = 0;
      do
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v35 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v35, v44, 16);
    }

    while (v16);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = self->_fieldLevelCapabilities;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v31, v43, 16);
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      v26 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v31 + 1) + 8 * v26);
        PBDataWriterWriteSubmessage();
        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v28, &v31, v43, 16);
    }

    while (v24);
  }

  if (self->_excludeZoneAccessBefore)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    excludeDevicesWithoutCapabilityCheckingSupport = self->_excludeDevicesWithoutCapabilityCheckingSupport;
    PBDataWriterWriteBOOLField();
  }

  if (self->_continuation)
  {
    PBDataWriterWriteDataField();
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v36 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v36, v4, zoneIdentifier);
  }

  if (objc_msgSend_zoneLevelCapabilitiesCount(self, v4, zoneIdentifier))
  {
    objc_msgSend_clearZoneLevelCapabilities(v36, v6, v7);
    v10 = objc_msgSend_zoneLevelCapabilitiesCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_zoneLevelCapabilitiesAtIndex_(self, v6, i);
        objc_msgSend_addZoneLevelCapabilities_(v36, v14, v13);
      }
    }
  }

  if (objc_msgSend_recordLevelCapabilitiesCount(self, v6, v7))
  {
    objc_msgSend_clearRecordLevelCapabilities(v36, v15, v16);
    v19 = objc_msgSend_recordLevelCapabilitiesCount(self, v17, v18);
    if (v19)
    {
      v20 = v19;
      for (j = 0; j != v20; ++j)
      {
        v22 = objc_msgSend_recordLevelCapabilitiesAtIndex_(self, v15, j);
        objc_msgSend_addRecordLevelCapabilities_(v36, v23, v22);
      }
    }
  }

  if (objc_msgSend_fieldLevelCapabilitiesCount(self, v15, v16))
  {
    objc_msgSend_clearFieldLevelCapabilities(v36, v24, v25);
    v28 = objc_msgSend_fieldLevelCapabilitiesCount(self, v26, v27);
    if (v28)
    {
      v29 = v28;
      for (k = 0; k != v29; ++k)
      {
        v31 = objc_msgSend_fieldLevelCapabilitiesAtIndex_(self, v24, k);
        objc_msgSend_addFieldLevelCapabilities_(v36, v32, v31);
      }
    }
  }

  excludeZoneAccessBefore = self->_excludeZoneAccessBefore;
  if (excludeZoneAccessBefore)
  {
    objc_msgSend_setExcludeZoneAccessBefore_(v36, v24, excludeZoneAccessBefore);
  }

  v34 = v36;
  if (*&self->_has)
  {
    v36[56] = self->_excludeDevicesWithoutCapabilityCheckingSupport;
    v36[60] |= 1u;
  }

  continuation = self->_continuation;
  if (continuation)
  {
    objc_msgSend_setContinuation_(v36, v24, continuation);
    v34 = v36;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v11, a3);
  v13 = *(v10 + 40);
  *(v10 + 40) = v12;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v14 = self->_zoneLevelCapabilities;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v57, v63, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v58;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v58 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v57 + 1) + 8 * i), v17, a3);
        objc_msgSend_addZoneLevelCapabilities_(v10, v22, v21);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v57, v63, 16);
    }

    while (v18);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v23 = self->_recordLevelCapabilities;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v53, v62, 16);
  if (v25)
  {
    v27 = v25;
    v28 = *v54;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v54 != v28)
        {
          objc_enumerationMutation(v23);
        }

        v30 = objc_msgSend_copyWithZone_(*(*(&v53 + 1) + 8 * j), v26, a3);
        objc_msgSend_addRecordLevelCapabilities_(v10, v31, v30);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v53, v62, 16);
    }

    while (v27);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v32 = self->_fieldLevelCapabilities;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v49, v61, 16);
  if (v34)
  {
    v36 = v34;
    v37 = *v50;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(v32);
        }

        v39 = objc_msgSend_copyWithZone_(*(*(&v49 + 1) + 8 * k), v35, a3, v49);
        objc_msgSend_addFieldLevelCapabilities_(v10, v40, v39);
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v49, v61, 16);
    }

    while (v36);
  }

  v42 = objc_msgSend_copyWithZone_(self->_excludeZoneAccessBefore, v41, a3);
  v43 = *(v10 + 16);
  *(v10 + 16) = v42;

  if (*&self->_has)
  {
    *(v10 + 56) = self->_excludeDevicesWithoutCapabilityCheckingSupport;
    *(v10 + 60) |= 1u;
  }

  v45 = objc_msgSend_copyWithZone_(self->_continuation, v44, a3, v49);
  v46 = *(v10 + 8);
  *(v10 + 8) = v45;

  v47 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_17;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v9 = v4[5];
  if (zoneIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v9))
    {
      goto LABEL_17;
    }
  }

  zoneLevelCapabilities = self->_zoneLevelCapabilities;
  v11 = v4[6];
  if (zoneLevelCapabilities | v11)
  {
    if (!objc_msgSend_isEqual_(zoneLevelCapabilities, v7, v11))
    {
      goto LABEL_17;
    }
  }

  recordLevelCapabilities = self->_recordLevelCapabilities;
  v13 = v4[4];
  if (recordLevelCapabilities | v13)
  {
    if (!objc_msgSend_isEqual_(recordLevelCapabilities, v7, v13))
    {
      goto LABEL_17;
    }
  }

  fieldLevelCapabilities = self->_fieldLevelCapabilities;
  v15 = v4[3];
  if (fieldLevelCapabilities | v15)
  {
    if (!objc_msgSend_isEqual_(fieldLevelCapabilities, v7, v15))
    {
      goto LABEL_17;
    }
  }

  excludeZoneAccessBefore = self->_excludeZoneAccessBefore;
  v17 = v4[2];
  if (excludeZoneAccessBefore | v17)
  {
    if (!objc_msgSend_isEqual_(excludeZoneAccessBefore, v7, v17))
    {
      goto LABEL_17;
    }
  }

  v18 = *(v4 + 60);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((*(v4 + 60) & 1) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(v4 + 56);
  if (!self->_excludeDevicesWithoutCapabilityCheckingSupport)
  {
LABEL_13:
    if ((v18 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    isEqual = 0;
    goto LABEL_18;
  }

  if ((v4[7] & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  continuation = self->_continuation;
  v20 = v4[1];
  if (continuation | v20)
  {
    isEqual = objc_msgSend_isEqual_(continuation, v7, v20);
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
  v4 = objc_msgSend_hash(self->_zoneIdentifier, a2, v2);
  v7 = objc_msgSend_hash(self->_zoneLevelCapabilities, v5, v6);
  v10 = objc_msgSend_hash(self->_recordLevelCapabilities, v8, v9);
  v13 = objc_msgSend_hash(self->_fieldLevelCapabilities, v11, v12);
  v16 = objc_msgSend_hash(self->_excludeZoneAccessBefore, v14, v15);
  if (*&self->_has)
  {
    v19 = 2654435761 * self->_excludeDevicesWithoutCapabilityCheckingSupport;
  }

  else
  {
    v19 = 0;
  }

  return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v19 ^ objc_msgSend_hash(self->_continuation, v17, v18);
}

- (void)mergeFrom:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  v7 = *(v5 + 5);
  if (zoneIdentifier)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(zoneIdentifier, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setZoneIdentifier_(self, v4, v7);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = *(v5 + 6);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v42, v48, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v43;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addZoneLevelCapabilities_(self, v11, *(*(&v42 + 1) + 8 * i));
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v42, v48, 16);
    }

    while (v12);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = *(v5 + 4);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v38, v47, 16);
  if (v17)
  {
    v19 = v17;
    v20 = *v39;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend_addRecordLevelCapabilities_(self, v18, *(*(&v38 + 1) + 8 * j));
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v38, v47, 16);
    }

    while (v19);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = *(v5 + 3);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v34, v46, 16);
  if (v24)
  {
    v26 = v24;
    v27 = *v35;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v22);
        }

        objc_msgSend_addFieldLevelCapabilities_(self, v25, *(*(&v34 + 1) + 8 * k), v34);
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v34, v46, 16);
    }

    while (v26);
  }

  excludeZoneAccessBefore = self->_excludeZoneAccessBefore;
  v31 = *(v5 + 2);
  if (excludeZoneAccessBefore)
  {
    if (v31)
    {
      objc_msgSend_mergeFrom_(excludeZoneAccessBefore, v29, v31);
    }
  }

  else if (v31)
  {
    objc_msgSend_setExcludeZoneAccessBefore_(self, v29, v31);
  }

  if (*(v5 + 60))
  {
    self->_excludeDevicesWithoutCapabilityCheckingSupport = *(v5 + 56);
    *&self->_has |= 1u;
  }

  v32 = *(v5 + 1);
  if (v32)
  {
    objc_msgSend_setContinuation_(self, v29, v32);
  }

  v33 = *MEMORY[0x277D85DE8];
}

@end