@interface CKDPZoneRetrieveResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAnonymousZoneInfo:(id)info;
- (void)addZoneSummary:(id)summary;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPZoneRetrieveResponse

- (void)addZoneSummary:(id)summary
{
  summaryCopy = summary;
  zoneSummarys = self->_zoneSummarys;
  v8 = summaryCopy;
  if (!zoneSummarys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_zoneSummarys;
    self->_zoneSummarys = v6;

    summaryCopy = v8;
    zoneSummarys = self->_zoneSummarys;
  }

  objc_msgSend_addObject_(zoneSummarys, summaryCopy, summaryCopy);
}

- (void)addAnonymousZoneInfo:(id)info
{
  infoCopy = info;
  anonymousZoneInfos = self->_anonymousZoneInfos;
  v8 = infoCopy;
  if (!anonymousZoneInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_anonymousZoneInfos;
    self->_anonymousZoneInfos = v6;

    infoCopy = v8;
    anonymousZoneInfos = self->_anonymousZoneInfos;
  }

  objc_msgSend_addObject_(anonymousZoneInfos, infoCopy, infoCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneRetrieveResponse;
  v4 = [(CKDPZoneRetrieveResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_zoneSummarys, v5, v6))
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = objc_msgSend_count(self->_zoneSummarys, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v14 = self->_zoneSummarys;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v49, v54, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v50;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v50 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = objc_msgSend_dictionaryRepresentation(*(*(&v49 + 1) + 8 * i), v17, v18);
          objc_msgSend_addObject_(v13, v23, v22);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v49, v54, 16);
      }

      while (v19);
    }

    objc_msgSend_setObject_forKey_(v4, v24, v13, @"zoneSummary");
  }

  continuationMarker = self->_continuationMarker;
  if (continuationMarker)
  {
    objc_msgSend_setObject_forKey_(v4, v7, continuationMarker, @"continuationMarker");
  }

  if (objc_msgSend_count(self->_anonymousZoneInfos, v7, continuationMarker))
  {
    v26 = objc_alloc(MEMORY[0x277CBEB18]);
    v29 = objc_msgSend_count(self->_anonymousZoneInfos, v27, v28);
    v31 = objc_msgSend_initWithCapacity_(v26, v30, v29);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v32 = self->_anonymousZoneInfos;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v45, v53, 16);
    if (v34)
    {
      v37 = v34;
      v38 = *v46;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v46 != v38)
          {
            objc_enumerationMutation(v32);
          }

          v40 = objc_msgSend_dictionaryRepresentation(*(*(&v45 + 1) + 8 * j), v35, v36, v45);
          objc_msgSend_addObject_(v31, v41, v40);
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v45, v53, 16);
      }

      while (v37);
    }

    objc_msgSend_setObject_forKey_(v4, v42, v31, @"anonymousZoneInfo");
  }

  v43 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v32 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_zoneSummarys;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v26, v31, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v26, v31, 16);
    }

    while (v8);
  }

  if (self->_continuationMarker)
  {
    PBDataWriterWriteDataField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->_anonymousZoneInfos;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v22, v30, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v22, v30, 16);
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (objc_msgSend_zoneSummarysCount(self, v4, v5))
  {
    objc_msgSend_clearZoneSummarys(toCopy, v6, v7);
    v10 = objc_msgSend_zoneSummarysCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_zoneSummaryAtIndex_(self, v6, i);
        objc_msgSend_addZoneSummary_(toCopy, v14, v13);
      }
    }
  }

  continuationMarker = self->_continuationMarker;
  if (continuationMarker)
  {
    objc_msgSend_setContinuationMarker_(toCopy, v6, continuationMarker);
  }

  if (objc_msgSend_anonymousZoneInfosCount(self, v6, continuationMarker))
  {
    objc_msgSend_clearAnonymousZoneInfos(toCopy, v16, v17);
    v20 = objc_msgSend_anonymousZoneInfosCount(self, v18, v19);
    if (v20)
    {
      v22 = v20;
      for (j = 0; j != v22; ++j)
      {
        v24 = objc_msgSend_anonymousZoneInfoAtIndex_(self, v21, j);
        objc_msgSend_addAnonymousZoneInfo_(toCopy, v25, v24);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = self->_zoneSummarys;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v38, v43, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v39;
    do
    {
      v17 = 0;
      do
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v38 + 1) + 8 * v17), v14, zone);
        objc_msgSend_addZoneSummary_(v10, v19, v18);

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v38, v43, 16);
    }

    while (v15);
  }

  v21 = objc_msgSend_copyWithZone_(self->_continuationMarker, v20, zone);
  v22 = v10[2];
  v10[2] = v21;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = self->_anonymousZoneInfos;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v34, v42, 16);
  if (v25)
  {
    v27 = v25;
    v28 = *v35;
    do
    {
      v29 = 0;
      do
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v23);
        }

        v30 = objc_msgSend_copyWithZone_(*(*(&v34 + 1) + 8 * v29), v26, zone, v34);
        objc_msgSend_addAnonymousZoneInfo_(v10, v31, v30);

        ++v29;
      }

      while (v27 != v29);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v34, v42, 16);
    }

    while (v27);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((zoneSummarys = self->_zoneSummarys, v9 = equalCopy[3], !(zoneSummarys | v9)) || objc_msgSend_isEqual_(zoneSummarys, v7, v9)) && ((continuationMarker = self->_continuationMarker, v11 = equalCopy[2], !(continuationMarker | v11)) || objc_msgSend_isEqual_(continuationMarker, v7, v11)))
  {
    anonymousZoneInfos = self->_anonymousZoneInfos;
    v13 = equalCopy[1];
    if (anonymousZoneInfos | v13)
    {
      isEqual = objc_msgSend_isEqual_(anonymousZoneInfos, v7, v13);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_zoneSummarys, a2, v2);
  v7 = objc_msgSend_hash(self->_continuationMarker, v5, v6) ^ v4;
  return v7 ^ objc_msgSend_hash(self->_anonymousZoneInfos, v8, v9);
}

- (void)mergeFrom:(id)from
{
  v32 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = *(fromCopy + 3);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v26, v31, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addZoneSummary_(self, v8, *(*(&v26 + 1) + 8 * i));
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v26, v31, 16);
    }

    while (v9);
  }

  v13 = *(fromCopy + 2);
  if (v13)
  {
    objc_msgSend_setContinuationMarker_(self, v12, v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = *(fromCopy + 1);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v22, v30, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v23;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v14);
        }

        objc_msgSend_addAnonymousZoneInfo_(self, v17, *(*(&v22 + 1) + 8 * j), v22);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v22, v30, 16);
    }

    while (v18);
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end