@interface OTSupportOctagonMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSupported:(id)supported;
- (int)supported;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation OTSupportOctagonMessage

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_supported = *(from + 2);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_supported;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_supported == *(equalCopy + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_supported;
    *(result + 12) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_supported;
    *(to + 12) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    MEMORY[0x2821A42D8](to, self->_supported, 1);
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    supported = self->_supported;
    if (supported >= 3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_supported];
    }

    else
    {
      v5 = off_278863648[supported];
    }

    [dictionary setObject:v5 forKey:@"supported"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = OTSupportOctagonMessage;
  v4 = [(OTSupportOctagonMessage *)&v8 description];
  dictionaryRepresentation = [(OTSupportOctagonMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsSupported:(id)supported
{
  supportedCopy = supported;
  if ([supportedCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([supportedCopy isEqualToString:@"supported"])
  {
    v4 = 1;
  }

  else if ([supportedCopy isEqualToString:@"not_supported"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)supported
{
  if (*&self->_has)
  {
    return self->_supported;
  }

  else
  {
    return 0;
  }
}

@end