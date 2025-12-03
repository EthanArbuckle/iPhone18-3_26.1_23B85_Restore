@interface BCSCallToAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BCSCallToAction

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSCallToAction;
  v4 = [(BCSCallToAction *)&v8 description];
  dictionaryRepresentation = [(BCSCallToAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  language = self->_language;
  if (language)
  {
    [dictionary setObject:language forKey:@"language"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDefault];
    [v4 setObject:v8 forKey:@"is_default"];
  }

  body = self->_body;
  if (body)
  {
    [v4 setObject:body forKey:@"body"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_language)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_subtitle)
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

  if (self->_body)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_language)
  {
    [toCopy setLanguage:?];
    toCopy = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    toCopy = v5;
  }

  if (self->_subtitle)
  {
    [v5 setSubtitle:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[40] = self->_isDefault;
    toCopy[44] |= 1u;
  }

  if (self->_body)
  {
    [v5 setBody:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_language copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_title copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_subtitle copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_isDefault;
    *(v5 + 44) |= 1u;
  }

  v12 = [(NSString *)self->_body copyWithZone:zone];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  language = self->_language;
  if (language | *(equalCopy + 2))
  {
    if (![(NSString *)language isEqual:?])
    {
      goto LABEL_13;
    }
  }

  title = self->_title;
  if (title | *(equalCopy + 4))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_13;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(equalCopy + 3))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v8 = *(equalCopy + 44);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((*(equalCopy + 44) & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(equalCopy + 40);
  if (!self->_isDefault)
  {
LABEL_9:
    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if ((*(equalCopy + 40) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  body = self->_body;
  if (body | *(equalCopy + 1))
  {
    v10 = [(NSString *)body isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_language hash];
  v4 = [(NSString *)self->_title hash];
  v5 = [(NSString *)self->_subtitle hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_isDefault;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_body hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(BCSCallToAction *)self setLanguage:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(BCSCallToAction *)self setTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(BCSCallToAction *)self setSubtitle:?];
    fromCopy = v5;
  }

  if (fromCopy[44])
  {
    self->_isDefault = fromCopy[40];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(BCSCallToAction *)self setBody:?];
    fromCopy = v5;
  }
}

@end