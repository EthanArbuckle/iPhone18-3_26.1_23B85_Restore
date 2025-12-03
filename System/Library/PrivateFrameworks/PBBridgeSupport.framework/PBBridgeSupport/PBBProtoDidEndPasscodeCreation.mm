@interface PBBProtoDidEndPasscodeCreation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoDidEndPasscodeCreation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoDidEndPasscodeCreation;
  v4 = [(PBBProtoDidEndPasscodeCreation *)&v8 description];
  dictionaryRepresentation = [(PBBProtoDidEndPasscodeCreation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
  [dictionary setObject:v4 forKey:@"success"];

  if (*&self->_has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isLong];
    [dictionary setObject:v5 forKey:@"isLong"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  success = self->_success;
  v7 = toCopy;
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
    isLong = self->_isLong;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 9) = self->_success;
  if (*&self->_has)
  {
    *(to + 8) = self->_isLong;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 9) = self->_success;
  if (*&self->_has)
  {
    *(result + 8) = self->_isLong;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  v5 = equalCopy[9];
  if (self->_success)
  {
    if ((equalCopy[9] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (equalCopy[9])
  {
    goto LABEL_8;
  }

  v6 = (equalCopy[12] & 1) == 0;
  if (*&self->_has)
  {
    if (equalCopy[12])
    {
      if (self->_isLong)
      {
        if ((equalCopy[8] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (equalCopy[8])
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

- (void)mergeFrom:(id)from
{
  self->_success = *(from + 9);
  if (*(from + 12))
  {
    self->_isLong = *(from + 8);
    *&self->_has |= 1u;
  }
}

@end