@interface BCSWebPresentmentLocalizedString
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCSWebPresentmentLocalizedString

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSWebPresentmentLocalizedString;
  v4 = [(BCSWebPresentmentLocalizedString *)&v8 description];
  v5 = [(BCSWebPresentmentLocalizedString *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  locale = self->_locale;
  if (locale)
  {
    [v3 setObject:locale forKey:@"locale"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_locale)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_text)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    isDefault = self->_isDefault;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_locale)
  {
    [v4 setLocale:?];
    v4 = v5;
  }

  if (self->_text)
  {
    [v5 setText:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_isDefault;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_locale copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_text copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_isDefault;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  locale = self->_locale;
  if (locale | *(v4 + 1))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_8;
    }
  }

  text = self->_text;
  if (text | *(v4 + 2))
  {
    if (![(NSString *)text isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_isDefault)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(BCSWebPresentmentLocalizedString *)self setLocale:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(BCSWebPresentmentLocalizedString *)self setText:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_isDefault = v4[24];
    *&self->_has |= 1u;
  }
}

@end