@interface BMPBPhotosKnowledgeGraphEnrichmentEntity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCategory:(BOOL)category;
- (void)writeTo:(id)to;
@end

@implementation BMPBPhotosKnowledgeGraphEnrichmentEntity

- (void)setHasCategory:(BOOL)category
{
  if (category)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBPhotosKnowledgeGraphEnrichmentEntity;
  v4 = [(BMPBPhotosKnowledgeGraphEnrichmentEntity *)&v8 description];
  dictionaryRepresentation = [(BMPBPhotosKnowledgeGraphEnrichmentEntity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
    [v4 setObject:v6 forKey:@"score"];
  }

  language = self->_language;
  if (language)
  {
    [v4 setObject:language forKey:@"language"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_category];
    [v4 setObject:v8 forKey:@"category"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    category = self->_category;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_score;
    *(toCopy + 40) |= 1u;
  }

  if (self->_language)
  {
    [v5 setLanguage:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 4) = self->_category;
    *(toCopy + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_score;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_language copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_category;
    *(v5 + 40) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  name = self->_name;
  if (name | *(equalCopy + 4))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 40);
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_score != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_16;
  }

  language = self->_language;
  if (language | *(equalCopy + 3))
  {
    if (![(NSString *)language isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    has = self->_has;
  }

  v9 = (*(equalCopy + 40) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_category != *(equalCopy + 4))
    {
      goto LABEL_16;
    }

    v9 = 1;
  }

LABEL_17:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score < 0.0)
    {
      score = -score;
    }

    *v4.i64 = floor(score + 0.5);
    v8 = (score - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = [(NSString *)self->_language hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_category;
  }

  else
  {
    v11 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentEntity *)self setName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 40))
  {
    self->_score = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentEntity *)self setLanguage:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 40) & 2) != 0)
  {
    self->_category = *(fromCopy + 4);
    *&self->_has |= 2u;
  }
}

@end