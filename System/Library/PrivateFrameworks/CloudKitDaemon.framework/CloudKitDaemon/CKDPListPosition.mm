@interface CKDPListPosition
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_CKLogToFileHandle:(id)handle atDepth:(int)depth;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsReversed:(BOOL)reversed;
- (void)writeTo:(id)to;
@end

@implementation CKDPListPosition

- (void)_CKLogToFileHandle:(id)handle atDepth:(int)depth
{
  handleCopy = handle;
  if (objc_msgSend_hasIndex(self, v5, v6))
  {
    v9 = MEMORY[0x277CCACA8];
    if (objc_msgSend_isReversed(self, v7, v8))
    {
      v12 = @"R";
    }

    else
    {
      v12 = &stru_28385ED00;
    }

    v13 = objc_msgSend_index(self, v10, v11);
    v15 = objc_msgSend_stringWithFormat_(v9, v14, @"%@%d", v12, v13);
    objc_msgSend_CKWriteString_(handleCopy, v16, v15);
  }
}

- (void)setHasIsReversed:(BOOL)reversed
{
  if (reversed)
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
  v11.super_class = CKDPListPosition;
  v4 = [(CKDPListPosition *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  has = self->_has;
  if (has)
  {
    v7 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_index);
    objc_msgSend_setObject_forKey_(v5, v8, v7, @"index");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_isReversed);
    objc_msgSend_setObject_forKey_(v5, v10, v9, @"is_reversed");
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    index = self->_index;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isReversed = self->_isReversed;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_index;
    *(toCopy + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 12) = self->_isReversed;
    *(toCopy + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  result = objc_msgSend_init(v7, v8, v9);
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_index;
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 12) = self->_isReversed;
    *(result + 16) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_index != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 16))
  {
    goto LABEL_9;
  }

  v7 = (*(equalCopy + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0)
    {
LABEL_9:
      v7 = 0;
      goto LABEL_10;
    }

    if (self->_isReversed)
    {
      if ((*(equalCopy + 12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (*(equalCopy + 12))
    {
      goto LABEL_9;
    }

    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_index;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_isReversed;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if (v5)
  {
    self->_index = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_isReversed = *(fromCopy + 12);
    *&self->_has |= 2u;
  }
}

@end