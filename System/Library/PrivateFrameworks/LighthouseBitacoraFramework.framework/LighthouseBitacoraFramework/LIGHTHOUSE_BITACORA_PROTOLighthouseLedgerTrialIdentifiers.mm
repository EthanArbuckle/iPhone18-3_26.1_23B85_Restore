@interface LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_experimentIdentifiers)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_bmltIdentifiers)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  experimentIdentifiers = self->_experimentIdentifiers;
  v10 = v4;
  if (experimentIdentifiers)
  {
    objc_msgSend_setExperimentIdentifiers_(v4, v5, experimentIdentifiers, v6, v7);
    v4 = v10;
  }

  bmltIdentifiers = self->_bmltIdentifiers;
  if (bmltIdentifiers)
  {
    objc_msgSend_setBmltIdentifiers_(v10, v5, bmltIdentifiers, v6, v7);
    v4 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_copyWithZone_(self->_experimentIdentifiers, v15, a3, v16, v17);
  v19 = v14[2];
  v14[2] = v18;

  v23 = objc_msgSend_copyWithZone_(self->_bmltIdentifiers, v20, a3, v21, v22);
  v24 = v14[1];
  v14[1] = v23;

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5, v7, v8) && ((experimentIdentifiers = self->_experimentIdentifiers, v13 = v4[2], !(experimentIdentifiers | v13)) || objc_msgSend_isEqual_(experimentIdentifiers, v9, v13, v10, v11)))
  {
    bmltIdentifiers = self->_bmltIdentifiers;
    v15 = v4[1];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  experimentIdentifiers = self->_experimentIdentifiers;
  v8 = v4[2];
  v11 = v4;
  if (experimentIdentifiers)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(experimentIdentifiers, v4, v8, v5, v6);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    objc_msgSend_setExperimentIdentifiers_(self, v4, v8, v5, v6);
  }

  v4 = v11;
LABEL_7:
  bmltIdentifiers = self->_bmltIdentifiers;
  v10 = v4[1];
  if (bmltIdentifiers)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(bmltIdentifiers, v4, v10, v5, v6);
    }
  }

  else if (v10)
  {
    objc_msgSend_setBmltIdentifiers_(self, v4, v10, v5, v6);
  }

  MEMORY[0x2821F96F8]();
}

@end