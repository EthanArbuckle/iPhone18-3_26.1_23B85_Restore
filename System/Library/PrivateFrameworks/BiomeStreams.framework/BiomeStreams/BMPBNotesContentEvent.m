@interface BMPBNotesContentEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBNotesContentEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBNotesContentEvent;
  v4 = [(BMPBNotesContentEvent *)&v8 description];
  v5 = [(BMPBNotesContentEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [v3 setObject:uniqueId forKey:@"uniqueId"];
  }

  domainId = self->_domainId;
  if (domainId)
  {
    [v4 setObject:domainId forKey:@"domainId"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v4 setObject:v7 forKey:@"absoluteTimestamp"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  content = self->_content;
  if (content)
  {
    [v4 setObject:content forKey:@"content"];
  }

  contentProtection = self->_contentProtection;
  if (contentProtection)
  {
    [v4 setObject:contentProtection forKey:@"contentProtection"];
  }

  personaId = self->_personaId;
  if (personaId)
  {
    [v4 setObject:personaId forKey:@"personaId"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_domainId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_content)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uniqueId)
  {
    [v4 setUniqueId:?];
    v4 = v5;
  }

  if (self->_domainId)
  {
    [v5 setDomainId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_absoluteTimestamp;
    *(v4 + 64) |= 1u;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    v4 = v5;
  }

  if (self->_content)
  {
    [v5 setContent:?];
    v4 = v5;
  }

  if (self->_contentProtection)
  {
    [v5 setContentProtection:?];
    v4 = v5;
  }

  if (self->_personaId)
  {
    [v5 setPersonaId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueId copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_domainId copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 64) |= 1u;
  }

  v10 = [(NSString *)self->_title copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_content copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_contentProtection copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  v16 = [(NSString *)self->_personaId copyWithZone:a3];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(v4 + 7))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  domainId = self->_domainId;
  if (domainId | *(v4 + 4))
  {
    if (![(NSString *)domainId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v7 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  title = self->_title;
  if (title | *(v4 + 6) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_19;
  }

  content = self->_content;
  if (content | *(v4 + 2))
  {
    if (![(NSString *)content isEqual:?])
    {
      goto LABEL_19;
    }
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(v4 + 3))
  {
    if (![(NSString *)contentProtection isEqual:?])
    {
      goto LABEL_19;
    }
  }

  personaId = self->_personaId;
  if (personaId | *(v4 + 5))
  {
    v12 = [(NSString *)personaId isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [(NSString *)self->_domainId hash];
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v5.i64 = floor(absoluteTimestamp + 0.5);
    v9 = (absoluteTimestamp - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = v4 ^ v3 ^ v7 ^ [(NSString *)self->_title hash];
  v12 = [(NSString *)self->_content hash];
  v13 = v12 ^ [(NSString *)self->_contentProtection hash];
  return v11 ^ v13 ^ [(NSString *)self->_personaId hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 7))
  {
    [(BMPBNotesContentEvent *)self setUniqueId:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(BMPBNotesContentEvent *)self setDomainId:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_absoluteTimestamp = v4[1];
    *&self->_has |= 1u;
  }

  if (*(v4 + 6))
  {
    [(BMPBNotesContentEvent *)self setTitle:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(BMPBNotesContentEvent *)self setContent:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(BMPBNotesContentEvent *)self setContentProtection:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(BMPBNotesContentEvent *)self setPersonaId:?];
    v4 = v5;
  }
}

@end