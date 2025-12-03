@interface BMPBThirdPartyAppContentEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBThirdPartyAppContentEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBThirdPartyAppContentEvent;
  v4 = [(BMPBThirdPartyAppContentEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBThirdPartyAppContentEvent *)self dictionaryRepresentation];
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

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v4 setObject:bundleId forKey:@"bundleId"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v4 setObject:v8 forKey:@"absoluteTimestamp"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  desc = self->_desc;
  if (desc)
  {
    [v4 setObject:desc forKey:@"desc"];
  }

  comment = self->_comment;
  if (comment)
  {
    [v4 setObject:comment forKey:@"comment"];
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

  if (self->_bundleId)
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

  if (self->_desc)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_comment)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_content)
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

  if (self->_bundleId)
  {
    [v5 setBundleId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_absoluteTimestamp;
    *(toCopy + 88) |= 1u;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    toCopy = v5;
  }

  if (self->_desc)
  {
    [v5 setDesc:?];
    toCopy = v5;
  }

  if (self->_comment)
  {
    [v5 setComment:?];
    toCopy = v5;
  }

  if (self->_content)
  {
    [v5 setContent:?];
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
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(NSString *)self->_domainId copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_bundleId copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 88) |= 1u;
  }

  v12 = [(NSString *)self->_title copyWithZone:zone];
  v13 = *(v5 + 72);
  *(v5 + 72) = v12;

  v14 = [(NSString *)self->_desc copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_comment copyWithZone:zone];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  v18 = [(NSString *)self->_content copyWithZone:zone];
  v19 = *(v5 + 32);
  *(v5 + 32) = v18;

  v20 = [(NSString *)self->_contentProtection copyWithZone:zone];
  v21 = *(v5 + 40);
  *(v5 + 40) = v20;

  v22 = [(NSString *)self->_personaId copyWithZone:zone];
  v23 = *(v5 + 64);
  *(v5 + 64) = v22;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(equalCopy + 10))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_25;
    }
  }

  domainId = self->_domainId;
  if (domainId | *(equalCopy + 7))
  {
    if (![(NSString *)domainId isEqual:?])
    {
      goto LABEL_25;
    }
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 2))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_25;
    }
  }

  v8 = *(equalCopy + 88);
  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 88))
  {
LABEL_25:
    v15 = 0;
    goto LABEL_26;
  }

  title = self->_title;
  if (title | *(equalCopy + 9) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_25;
  }

  desc = self->_desc;
  if (desc | *(equalCopy + 6))
  {
    if (![(NSString *)desc isEqual:?])
    {
      goto LABEL_25;
    }
  }

  comment = self->_comment;
  if (comment | *(equalCopy + 3))
  {
    if (![(NSString *)comment isEqual:?])
    {
      goto LABEL_25;
    }
  }

  content = self->_content;
  if (content | *(equalCopy + 4))
  {
    if (![(NSString *)content isEqual:?])
    {
      goto LABEL_25;
    }
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(equalCopy + 5))
  {
    if (![(NSString *)contentProtection isEqual:?])
    {
      goto LABEL_25;
    }
  }

  personaId = self->_personaId;
  if (personaId | *(equalCopy + 8))
  {
    v15 = [(NSString *)personaId isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_26:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [(NSString *)self->_domainId hash];
  v5 = [(NSString *)self->_bundleId hash];
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v6.i64 = floor(absoluteTimestamp + 0.5);
    v10 = (absoluteTimestamp - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = v4 ^ v3 ^ v5 ^ v8;
  v13 = [(NSString *)self->_title hash];
  v14 = v13 ^ [(NSString *)self->_desc hash];
  v15 = v12 ^ v14 ^ [(NSString *)self->_comment hash];
  v16 = [(NSString *)self->_content hash];
  v17 = v16 ^ [(NSString *)self->_contentProtection hash];
  return v15 ^ v17 ^ [(NSString *)self->_personaId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 10))
  {
    [(BMPBThirdPartyAppContentEvent *)self setUniqueId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 7))
  {
    [(BMPBThirdPartyAppContentEvent *)self setDomainId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(BMPBThirdPartyAppContentEvent *)self setBundleId:?];
    fromCopy = v5;
  }

  if (fromCopy[11])
  {
    self->_absoluteTimestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 9))
  {
    [(BMPBThirdPartyAppContentEvent *)self setTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(BMPBThirdPartyAppContentEvent *)self setDesc:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(BMPBThirdPartyAppContentEvent *)self setComment:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBThirdPartyAppContentEvent *)self setContent:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(BMPBThirdPartyAppContentEvent *)self setContentProtection:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 8))
  {
    [(BMPBThirdPartyAppContentEvent *)self setPersonaId:?];
    fromCopy = v5;
  }
}

@end