@interface BMPBNewsArticleViewEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBNewsArticleViewEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBNewsArticleViewEvent;
  v4 = [(BMPBNewsArticleViewEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBNewsArticleViewEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [dictionary setObject:uniqueId forKey:@"uniqueId"];
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

  summary = self->_summary;
  if (summary)
  {
    [v4 setObject:summary forKey:@"summary"];
  }

  publication = self->_publication;
  if (publication)
  {
    [v4 setObject:publication forKey:@"publication"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_domainId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_content)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_summary)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_publication)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uniqueId)
  {
    [toCopy setUniqueId:?];
    toCopy = v5;
  }

  if (self->_domainId)
  {
    [v5 setDomainId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_absoluteTimestamp;
    *(toCopy + 80) |= 1u;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    toCopy = v5;
  }

  if (self->_content)
  {
    [v5 setContent:?];
    toCopy = v5;
  }

  if (self->_summary)
  {
    [v5 setSummary:?];
    toCopy = v5;
  }

  if (self->_publication)
  {
    [v5 setPublication:?];
    toCopy = v5;
  }

  if (self->_contentProtection)
  {
    [v5 setContentProtection:?];
    toCopy = v5;
  }

  if (self->_personaId)
  {
    [v5 setPersonaId:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueId copyWithZone:zone];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  v8 = [(NSString *)self->_domainId copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 80) |= 1u;
  }

  v10 = [(NSString *)self->_title copyWithZone:zone];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  v12 = [(NSString *)self->_content copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_summary copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(NSString *)self->_publication copyWithZone:zone];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(NSString *)self->_contentProtection copyWithZone:zone];
  v19 = *(v5 + 24);
  *(v5 + 24) = v18;

  v20 = [(NSString *)self->_personaId copyWithZone:zone];
  v21 = *(v5 + 40);
  *(v5 + 40) = v20;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(equalCopy + 9))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  domainId = self->_domainId;
  if (domainId | *(equalCopy + 4))
  {
    if (![(NSString *)domainId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v7 = *(equalCopy + 80);
  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 80))
  {
LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  title = self->_title;
  if (title | *(equalCopy + 8) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_23;
  }

  content = self->_content;
  if (content | *(equalCopy + 2))
  {
    if (![(NSString *)content isEqual:?])
    {
      goto LABEL_23;
    }
  }

  summary = self->_summary;
  if (summary | *(equalCopy + 7))
  {
    if (![(NSString *)summary isEqual:?])
    {
      goto LABEL_23;
    }
  }

  publication = self->_publication;
  if (publication | *(equalCopy + 6))
  {
    if (![(NSString *)publication isEqual:?])
    {
      goto LABEL_23;
    }
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(equalCopy + 3))
  {
    if (![(NSString *)contentProtection isEqual:?])
    {
      goto LABEL_23;
    }
  }

  personaId = self->_personaId;
  if (personaId | *(equalCopy + 5))
  {
    v14 = [(NSString *)personaId isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_24:

  return v14;
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
  v13 = v12 ^ [(NSString *)self->_summary hash];
  v14 = v11 ^ v13 ^ [(NSString *)self->_publication hash];
  v15 = [(NSString *)self->_contentProtection hash];
  return v14 ^ v15 ^ [(NSString *)self->_personaId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 9))
  {
    [(BMPBNewsArticleViewEvent *)self setUniqueId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBNewsArticleViewEvent *)self setDomainId:?];
    fromCopy = v5;
  }

  if (fromCopy[10])
  {
    self->_absoluteTimestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 8))
  {
    [(BMPBNewsArticleViewEvent *)self setTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(BMPBNewsArticleViewEvent *)self setContent:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 7))
  {
    [(BMPBNewsArticleViewEvent *)self setSummary:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(BMPBNewsArticleViewEvent *)self setPublication:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(BMPBNewsArticleViewEvent *)self setContentProtection:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(BMPBNewsArticleViewEvent *)self setPersonaId:?];
    fromCopy = v5;
  }
}

@end