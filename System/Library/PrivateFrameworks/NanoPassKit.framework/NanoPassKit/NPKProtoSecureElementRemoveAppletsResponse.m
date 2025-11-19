@interface NPKProtoSecureElementRemoveAppletsResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoSecureElementRemoveAppletsResponse

- (void)setHasSuccess:(BOOL)a3
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
  v8.receiver = self;
  v8.super_class = NPKProtoSecureElementRemoveAppletsResponse;
  v4 = [(NPKProtoSecureElementRemoveAppletsResponse *)&v8 description];
  v5 = [(NPKProtoSecureElementRemoveAppletsResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v5 forKey:@"pending"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [v3 setObject:v6 forKey:@"success"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    success = self->_success;
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
    v4[8] = self->_pending;
    v4[12] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[9] = self->_success;
    v4[12] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 8) = self->_pending;
    *(result + 12) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 9) = self->_success;
    *(result + 12) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((v4[12] & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if ((v4[12] & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v4[8];
  if (self->_pending)
  {
    if ((v4[8] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v4[8])
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = (v4[12] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[12] & 2) != 0)
    {
      if (self->_success)
      {
        if (v4[9])
        {
          goto LABEL_18;
        }
      }

      else if (!v4[9])
      {
LABEL_18:
        v5 = 1;
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_pending;
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
  v3 = 2654435761 * self->_success;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[12];
  if (v5)
  {
    self->_pending = v4[8];
    *&self->_has |= 1u;
    v5 = v4[12];
  }

  if ((v5 & 2) != 0)
  {
    self->_success = v4[9];
    *&self->_has |= 2u;
  }
}

@end