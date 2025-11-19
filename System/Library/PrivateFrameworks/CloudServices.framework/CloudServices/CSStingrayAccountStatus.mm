@interface CSStingrayAccountStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSStingrayAccountStatus

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CSStingrayAccountStatus;
  v4 = [(CSStingrayAccountStatus *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  stingrayRecord = self->_stingrayRecord;
  if (stingrayRecord)
  {
    v8 = objc_msgSend_dictionaryRepresentation(stingrayRecord, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"stingrayRecord");
  }

  gfRecord = self->_gfRecord;
  if (gfRecord)
  {
    v11 = objc_msgSend_dictionaryRepresentation(gfRecord, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"gfRecord");
  }

  dbrRecord = self->_dbrRecord;
  if (dbrRecord)
  {
    v14 = objc_msgSend_dictionaryRepresentation(dbrRecord, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"dbrRecord");
  }

  fdeRecord = self->_fdeRecord;
  if (fdeRecord)
  {
    v17 = objc_msgSend_dictionaryRepresentation(fdeRecord, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"fdeRecord");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_stingrayRecord)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_gfRecord)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_dbrRecord)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_fdeRecord)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  stingrayRecord = self->_stingrayRecord;
  v10 = v4;
  if (stingrayRecord)
  {
    objc_msgSend_setStingrayRecord_(v4, v5, stingrayRecord);
    v4 = v10;
  }

  gfRecord = self->_gfRecord;
  if (gfRecord)
  {
    objc_msgSend_setGfRecord_(v10, v5, gfRecord);
    v4 = v10;
  }

  dbrRecord = self->_dbrRecord;
  if (dbrRecord)
  {
    objc_msgSend_setDbrRecord_(v10, v5, dbrRecord);
    v4 = v10;
  }

  fdeRecord = self->_fdeRecord;
  if (fdeRecord)
  {
    objc_msgSend_setFdeRecord_(v10, v5, fdeRecord);
    v4 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_stingrayRecord, v11, a3);
  v13 = v10[4];
  v10[4] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_gfRecord, v14, a3);
  v16 = v10[3];
  v10[3] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_dbrRecord, v17, a3);
  v19 = v10[1];
  v10[1] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_fdeRecord, v20, a3);
  v22 = v10[2];
  v10[2] = v21;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((stingrayRecord = self->_stingrayRecord, v9 = v4[4], !(stingrayRecord | v9)) || objc_msgSend_isEqual_(stingrayRecord, v7, v9)) && ((gfRecord = self->_gfRecord, v11 = v4[3], !(gfRecord | v11)) || objc_msgSend_isEqual_(gfRecord, v7, v11)) && ((dbrRecord = self->_dbrRecord, v13 = v4[1], !(dbrRecord | v13)) || objc_msgSend_isEqual_(dbrRecord, v7, v13)))
  {
    fdeRecord = self->_fdeRecord;
    v15 = v4[2];
    if (fdeRecord | v15)
    {
      isEqual = objc_msgSend_isEqual_(fdeRecord, v7, v15);
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
  v4 = objc_msgSend_hash(self->_stingrayRecord, a2, v2);
  v7 = objc_msgSend_hash(self->_gfRecord, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_dbrRecord, v8, v9);
  return v7 ^ v10 ^ objc_msgSend_hash(self->_fdeRecord, v11, v12);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  stingrayRecord = self->_stingrayRecord;
  v13 = v4;
  v6 = v4[4];
  if (stingrayRecord)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(stingrayRecord, v4, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setStingrayRecord_(self, v4, v6);
  }

  gfRecord = self->_gfRecord;
  v8 = v13[3];
  if (gfRecord)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(gfRecord, v13, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setGfRecord_(self, v13, v8);
  }

  dbrRecord = self->_dbrRecord;
  v10 = v13[1];
  if (dbrRecord)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(dbrRecord, v13, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setDbrRecord_(self, v13, v10);
  }

  fdeRecord = self->_fdeRecord;
  v12 = v13[2];
  if (fdeRecord)
  {
    if (v12)
    {
      objc_msgSend_mergeFrom_(fdeRecord, v13, v12);
    }
  }

  else if (v12)
  {
    objc_msgSend_setFdeRecord_(self, v13, v12);
  }
}

@end