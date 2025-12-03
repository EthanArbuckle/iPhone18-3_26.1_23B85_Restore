@interface BCSCallerIdLocalizedString
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BCSCallerIdLocalizedString

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSCallerIdLocalizedString;
  v4 = [(BCSCallerIdLocalizedString *)&v8 description];
  dictionaryRepresentation = [(BCSCallerIdLocalizedString *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  locale = self->_locale;
  if (locale)
  {
    [dictionary setObject:locale forKey:@"locale"];
  }

  text = self->_text;
  if (text)
  {
    [v4 setObject:text forKey:@"text"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDefault];
    [v4 setObject:v7 forKey:@"is_default"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_locale)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_text)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    isDefault = self->_isDefault;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_locale)
  {
    [toCopy setLocale:?];
    toCopy = v5;
  }

  if (self->_text)
  {
    [v5 setText:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_isDefault;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_locale copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_text copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_isDefault;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  locale = self->_locale;
  if (locale | *(equalCopy + 1))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_8;
    }
  }

  text = self->_text;
  if (text | *(equalCopy + 2))
  {
    if (![(NSString *)text isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_isDefault)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_locale hash];
  v4 = [(NSString *)self->_text hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_isDefault;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(BCSCallerIdLocalizedString *)self setLocale:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(BCSCallerIdLocalizedString *)self setText:?];
    fromCopy = v5;
  }

  if (fromCopy[28])
  {
    self->_isDefault = fromCopy[24];
    *&self->_has |= 1u;
  }
}

@end