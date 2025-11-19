@interface PBBProtoDidEndPasscodeCreation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoDidEndPasscodeCreation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoDidEndPasscodeCreation;
  v4 = [(PBBProtoDidEndPasscodeCreation *)&v8 description];
  v5 = [(PBBProtoDidEndPasscodeCreation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
  [v3 setObject:v4 forKey:@"success"];

  if (*&self->_has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isLong];
    [v3 setObject:v5 forKey:@"isLong"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  success = self->_success;
  v7 = v4;
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
    isLong = self->_isLong;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 9) = self->_success;
  if (*&self->_has)
  {
    *(a3 + 8) = self->_isLong;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 9) = self->_success;
  if (*&self->_has)
  {
    *(result + 8) = self->_isLong;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  v5 = v4[9];
  if (self->_success)
  {
    if ((v4[9] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v4[9])
  {
    goto LABEL_8;
  }

  v6 = (v4[12] & 1) == 0;
  if (*&self->_has)
  {
    if (v4[12])
    {
      if (self->_isLong)
      {
        if ((v4[8] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v4[8])
      {
        goto LABEL_8;
      }

      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isLong;
  }

  else
  {
    v2 = 0;
  }

  return v2 ^ (2654435761 * self->_success);
}

- (void)mergeFrom:(id)a3
{
  self->_success = *(a3 + 9);
  if (*(a3 + 12))
  {
    self->_isLong = *(a3 + 8);
    *&self->_has |= 1u;
  }
}

@end