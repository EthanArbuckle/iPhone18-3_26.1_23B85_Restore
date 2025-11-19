@interface BMPBNewsArticleViewEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBNewsArticleViewEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBNewsArticleViewEvent;
  v4 = [(BMPBNewsArticleViewEvent *)&v8 description];
  v5 = [(BMPBNewsArticleViewEvent *)self dictionaryRepresentation];
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

  if (self->_summary)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_publication)
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
    *(v4 + 80) |= 1u;
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

  if (self->_summary)
  {
    [v5 setSummary:?];
    v4 = v5;
  }

  if (self->_publication)
  {
    [v5 setPublication:?];
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
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  v8 = [(NSString *)self->_domainId copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 80) |= 1u;
  }

  v10 = [(NSString *)self->_title copyWithZone:a3];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  v12 = [(NSString *)self->_content copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_summary copyWithZone:a3];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(NSString *)self->_publication copyWithZone:a3];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(NSString *)self->_contentProtection copyWithZone:a3];
  v19 = *(v5 + 24);
  *(v5 + 24) = v18;

  v20 = [(NSString *)self->_personaId copyWithZone:a3];
  v21 = *(v5 + 40);
  *(v5 + 40) = v20;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(v4 + 9))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  domainId = self->_domainId;
  if (domainId | *(v4 + 4))
  {
    if (![(NSString *)domainId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v7 = *(v4 + 80);
  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 80))
  {
LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  title = self->_title;
  if (title | *(v4 + 8) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_23;
  }

  content = self->_content;
  if (content | *(v4 + 2))
  {
    if (![(NSString *)content isEqual:?])
    {
      goto LABEL_23;
    }
  }

  summary = self->_summary;
  if (summary | *(v4 + 7))
  {
    if (![(NSString *)summary isEqual:?])
    {
      goto LABEL_23;
    }
  }

  publication = self->_publication;
  if (publication | *(v4 + 6))
  {
    if (![(NSString *)publication isEqual:?])
    {
      goto LABEL_23;
    }
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(v4 + 3))
  {
    if (![(NSString *)contentProtection isEqual:?])
    {
      goto LABEL_23;
    }
  }

  personaId = self->_personaId;
  if (personaId | *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 9))
  {
    [(BMPBNewsArticleViewEvent *)self setUniqueId:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(BMPBNewsArticleViewEvent *)self setDomainId:?];
    v4 = v5;
  }

  if (v4[10])
  {
    self->_absoluteTimestamp = v4[1];
    *&self->_has |= 1u;
  }

  if (*(v4 + 8))
  {
    [(BMPBNewsArticleViewEvent *)self setTitle:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(BMPBNewsArticleViewEvent *)self setContent:?];
    v4 = v5;
  }

  if (*(v4 + 7))
  {
    [(BMPBNewsArticleViewEvent *)self setSummary:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(BMPBNewsArticleViewEvent *)self setPublication:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(BMPBNewsArticleViewEvent *)self setContentProtection:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(BMPBNewsArticleViewEvent *)self setPersonaId:?];
    v4 = v5;
  }
}

@end