@interface CKDPAncestryEtag
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)validationTypeAsString:(int)string;
- (int)validationType;
- (unint64_t)hash;
- (void)addAncestorInformation:(id)information;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPAncestryEtag

- (void)addAncestorInformation:(id)information
{
  informationCopy = information;
  ancestorInformations = self->_ancestorInformations;
  v8 = informationCopy;
  if (!ancestorInformations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ancestorInformations;
    self->_ancestorInformations = v6;

    informationCopy = v8;
    ancestorInformations = self->_ancestorInformations;
  }

  objc_msgSend_addObject_(ancestorInformations, informationCopy, informationCopy);
}

- (int)validationType
{
  if (*&self->_has)
  {
    return self->_validationType;
  }

  else
  {
    return 1;
  }
}

- (id)validationTypeAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"fullAncestry";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAncestryEtag;
  v4 = [(CKDPAncestryEtag *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_ancestorInformations, v5, v6))
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = objc_msgSend_count(self->_ancestorInformations, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = self->_ancestorInformations;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v29, v33, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = objc_msgSend_dictionaryRepresentation(*(*(&v29 + 1) + 8 * i), v17, v18);
          objc_msgSend_addObject_(v13, v23, v22);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v29, v33, 16);
      }

      while (v19);
    }

    objc_msgSend_setObject_forKey_(v4, v24, v13, @"ancestorInformation");
  }

  if (*&self->_has)
  {
    if (self->_validationType == 1)
    {
      v25 = @"fullAncestry";
      objc_msgSend_setObject_forKey_(v4, v7, @"fullAncestry", @"validationType");
    }

    else
    {
      v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"(unknown: %i)", self->_validationType);
      objc_msgSend_setObject_forKey_(v4, v26, v25, @"validationType");
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_ancestorInformations;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v15, v19, 16);
    }

    while (v8);
  }

  if (*&self->_has)
  {
    validationType = self->_validationType;
    PBDataWriterWriteInt32Field();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (objc_msgSend_ancestorInformationsCount(self, v4, v5))
  {
    objc_msgSend_clearAncestorInformations(toCopy, v6, v7);
    v10 = objc_msgSend_ancestorInformationsCount(self, v8, v9);
    if (v10)
    {
      v12 = v10;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_ancestorInformationAtIndex_(self, v11, i);
        objc_msgSend_addAncestorInformation_(toCopy, v15, v14);
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_validationType;
    *(toCopy + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_ancestorInformations;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v26, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v22 + 1) + 8 * v17), v14, zone, v22);
        objc_msgSend_addAncestorInformation_(v10, v19, v18);

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v22, v26, 16);
    }

    while (v15);
  }

  if (*&self->_has)
  {
    *(v10 + 16) = self->_validationType;
    *(v10 + 20) |= 1u;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_8;
  }

  ancestorInformations = self->_ancestorInformations;
  v9 = equalCopy[1];
  if (ancestorInformations | v9)
  {
    if (!objc_msgSend_isEqual_(ancestorInformations, v7, v9))
    {
      goto LABEL_8;
    }
  }

  v10 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_validationType == *(equalCopy + 4))
    {
      v10 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_ancestorInformations, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_validationType;
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ v4;
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(fromCopy + 1);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addAncestorInformation_(self, v8, *(*(&v13 + 1) + 8 * v11++), v13);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v13, v17, 16);
    }

    while (v9);
  }

  if (*(fromCopy + 20))
  {
    self->_validationType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end