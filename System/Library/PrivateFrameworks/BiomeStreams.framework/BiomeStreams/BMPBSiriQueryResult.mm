@interface BMPBSiriQueryResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBSiriQueryResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSiriQueryResult;
  v4 = [(BMPBSiriQueryResult *)&v8 description];
  dictionaryRepresentation = [(BMPBSiriQueryResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  qid = self->_qid;
  if (qid)
  {
    [dictionary setObject:qid forKey:@"qid"];
  }

  domain = self->_domain;
  if (domain)
  {
    [v4 setObject:domain forKey:@"domain"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
    [v4 setObject:v7 forKey:@"confidence"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_qid)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_qid)
  {
    [toCopy setQid:?];
    toCopy = v5;
  }

  if (self->_domain)
  {
    [v5 setDomain:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_confidence;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_qid copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_domain copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_confidence;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  qid = self->_qid;
  if (qid | *(equalCopy + 3))
  {
    if (![(NSString *)qid isEqual:?])
    {
      goto LABEL_10;
    }
  }

  domain = self->_domain;
  if (domain | *(equalCopy + 2))
  {
    if (![(NSString *)domain isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_confidence == *(equalCopy + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_qid hash];
  v4 = [(NSString *)self->_domain hash];
  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v5.i64 = floor(confidence + 0.5);
    v9 = (confidence - *v5.i64) * 1.84467441e19;
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

  return v4 ^ v3 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(BMPBSiriQueryResult *)self setQid:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(BMPBSiriQueryResult *)self setDomain:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    self->_confidence = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end