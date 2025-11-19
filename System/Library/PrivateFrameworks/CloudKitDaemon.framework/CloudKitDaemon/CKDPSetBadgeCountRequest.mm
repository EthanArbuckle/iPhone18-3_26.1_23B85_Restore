@interface CKDPSetBadgeCountRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasForDevice:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPSetBadgeCountRequest

+ (id)options
{
  if (qword_280D55090 != -1)
  {
    dispatch_once(&qword_280D55090, &unk_28385DFA0);
  }

  v3 = qword_280D55088;

  return v3;
}

- (void)setHasForDevice:(BOOL)a3
{
  if (a3)
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
  v11.super_class = CKDPSetBadgeCountRequest;
  v4 = [(CKDPSetBadgeCountRequest *)&v11 description];
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
    v7 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v4, self->_badgeCount);
    objc_msgSend_setObject_forKey_(v5, v8, v7, @"badgeCount");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_forDevice);
    objc_msgSend_setObject_forKey_(v5, v10, v9, @"forDevice");
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    badgeCount = self->_badgeCount;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    forDevice = self->_forDevice;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_badgeCount;
    *(v4 + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 12) = self->_forDevice;
    *(v4 + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  result = objc_msgSend_init(v7, v8, v9);
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_badgeCount;
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 12) = self->_forDevice;
    *(result + 16) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_badgeCount != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_9;
  }

  v7 = (*(v4 + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0)
    {
LABEL_9:
      v7 = 0;
      goto LABEL_10;
    }

    if (self->_forDevice)
    {
      if ((*(v4 + 12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (*(v4 + 12))
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
    v2 = 2654435761 * self->_badgeCount;
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
  v3 = 2654435761 * self->_forDevice;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if (v5)
  {
    self->_badgeCount = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_forDevice = *(v4 + 12);
    *&self->_has |= 2u;
  }
}

@end