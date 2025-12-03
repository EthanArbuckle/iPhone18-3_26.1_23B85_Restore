@interface LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers *)&v15 description];
  v9 = objc_msgSend_dictionaryRepresentation(self, v5, v6, v7, v8);
  v13 = objc_msgSend_stringWithFormat_(v3, v10, @"%@ %@", v11, v12, v4, v9);

  return v13;
}

- (id)dictionaryRepresentation
{
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  experimentIdentifiers = self->_experimentIdentifiers;
  if (experimentIdentifiers)
  {
    v12 = objc_msgSend_dictionaryRepresentation(experimentIdentifiers, v6, v7, v8, v9);
    objc_msgSend_setObject_forKey_(v10, v13, v12, @"experimentIdentifiers", v14);
  }

  bmltIdentifiers = self->_bmltIdentifiers;
  if (bmltIdentifiers)
  {
    v16 = objc_msgSend_dictionaryRepresentation(bmltIdentifiers, v6, v7, v8, v9);
    objc_msgSend_setObject_forKey_(v10, v17, v16, @"bmltIdentifiers", v18);
  }

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_experimentIdentifiers)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_bmltIdentifiers)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  experimentIdentifiers = self->_experimentIdentifiers;
  v10 = toCopy;
  if (experimentIdentifiers)
  {
    objc_msgSend_setExperimentIdentifiers_(toCopy, v5, experimentIdentifiers, v6, v7);
    toCopy = v10;
  }

  bmltIdentifiers = self->_bmltIdentifiers;
  if (bmltIdentifiers)
  {
    objc_msgSend_setBmltIdentifiers_(v10, v5, bmltIdentifiers, v6, v7);
    toCopy = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_copyWithZone_(self->_experimentIdentifiers, v15, zone, v16, v17);
  v19 = v14[2];
  v14[2] = v18;

  v23 = objc_msgSend_copyWithZone_(self->_bmltIdentifiers, v20, zone, v21, v22);
  v24 = v14[1];
  v14[1] = v23;

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5, v7, v8) && ((experimentIdentifiers = self->_experimentIdentifiers, v13 = equalCopy[2], !(experimentIdentifiers | v13)) || objc_msgSend_isEqual_(experimentIdentifiers, v9, v13, v10, v11)))
  {
    bmltIdentifiers = self->_bmltIdentifiers;
    v15 = equalCopy[1];
    if (bmltIdentifiers | v15)
    {
      isEqual = objc_msgSend_isEqual_(bmltIdentifiers, v9, v15, v10, v11);
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  experimentIdentifiers = self->_experimentIdentifiers;
  v8 = fromCopy[2];
  v11 = fromCopy;
  if (experimentIdentifiers)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(experimentIdentifiers, fromCopy, v8, v5, v6);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    objc_msgSend_setExperimentIdentifiers_(self, fromCopy, v8, v5, v6);
  }

  fromCopy = v11;
LABEL_7:
  bmltIdentifiers = self->_bmltIdentifiers;
  v10 = fromCopy[1];
  if (bmltIdentifiers)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(bmltIdentifiers, fromCopy, v10, v5, v6);
    }
  }

  else if (v10)
  {
    objc_msgSend_setBmltIdentifiers_(self, fromCopy, v10, v5, v6);
  }

  MEMORY[0x2821F96F8]();
}

@end