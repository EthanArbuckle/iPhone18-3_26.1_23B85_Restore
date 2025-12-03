@interface LIGHTHOUSE_BITACORA_PROTOScheduleStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOScheduleStatus

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = LIGHTHOUSE_BITACORA_PROTOScheduleStatus;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOScheduleStatus *)&v15 description];
  v9 = objc_msgSend_dictionaryRepresentation(self, v5, v6, v7, v8);
  v13 = objc_msgSend_stringWithFormat_(v3, v10, @"%@ %@", v11, v12, v4, v9);

  return v13;
}

- (id)dictionaryRepresentation
{
  v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  if (*&self->_has)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v6, self->_scheduled, v7, v8);
    objc_msgSend_setObject_forKey_(v9, v11, v10, @"scheduled", v12);
  }

  return v9;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    scheduled = self->_scheduled;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 8) = self->_scheduled;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  result = objc_msgSend_init(v9, v10, v11, v12, v13);
  if (*&self->_has)
  {
    *(result + 8) = self->_scheduled;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5, v7, v8))
  {
    goto LABEL_4;
  }

  v9 = (equalCopy[12] & 1) == 0;
  if (*&self->_has)
  {
    if ((equalCopy[12] & 1) == 0)
    {
LABEL_4:
      v9 = 0;
      goto LABEL_5;
    }

    if (self->_scheduled)
    {
      if ((equalCopy[8] & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (equalCopy[8])
    {
      goto LABEL_4;
    }

    v9 = 1;
  }

LABEL_5:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_scheduled;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_scheduled = *(from + 8);
    *&self->_has |= 1u;
  }
}

@end