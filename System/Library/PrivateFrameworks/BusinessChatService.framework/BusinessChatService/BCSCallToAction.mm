@interface BCSCallToAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCSCallToAction

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSCallToAction;
  v4 = [(BCSCallToAction *)&v8 description];
  v5 = [(BCSCallToAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  language = self->_language;
  if (language)
  {
    [v3 setObject:language forKey:@"language"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_language)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_subtitle)
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

  if (self->_body)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_language)
  {
    [v4 setLanguage:?];
    v4 = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    v4 = v5;
  }

  if (self->_subtitle)
  {
    [v5 setSubtitle:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[40] = self->_isDefault;
    v4[44] |= 1u;
  }

  if (self->_body)
  {
    [v5 setBody:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_language copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_subtitle copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_isDefault;
    *(v5 + 44) |= 1u;
  }

  v12 = [(NSString *)self->_body copyWithZone:a3];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  language = self->_language;
  if (language | *(v4 + 2))
  {
    if (![(NSString *)language isEqual:?])
    {
      goto LABEL_13;
    }
  }

  title = self->_title;
  if (title | *(v4 + 4))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_13;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(v4 + 3))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v8 = *(v4 + 44);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((*(v4 + 44) & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(v4 + 40);
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

  if ((*(v4 + 40) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  body = self->_body;
  if (body | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(BCSCallToAction *)self setLanguage:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(BCSCallToAction *)self setTitle:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(BCSCallToAction *)self setSubtitle:?];
    v4 = v5;
  }

  if (v4[44])
  {
    self->_isDefault = v4[40];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(BCSCallToAction *)self setBody:?];
    v4 = v5;
  }
}

@end