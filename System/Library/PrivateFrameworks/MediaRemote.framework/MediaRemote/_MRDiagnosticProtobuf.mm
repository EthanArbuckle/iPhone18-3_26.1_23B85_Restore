@interface _MRDiagnosticProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRDiagnosticProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRDiagnosticProtobuf;
  v4 = [(_MRDiagnosticProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRDiagnosticProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateGenerated];
    [dictionary setObject:v4 forKey:@"dateGenerated"];
  }

  diagnosticInfo = self->_diagnosticInfo;
  if (diagnosticInfo)
  {
    [dictionary setObject:diagnosticInfo forKey:@"diagnosticInfo"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    dateGenerated = self->_dateGenerated;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_diagnosticInfo)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_dateGenerated;
    *(toCopy + 24) |= 1u;
  }

  if (self->_diagnosticInfo)
  {
    v5 = toCopy;
    [toCopy setDiagnosticInfo:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_dateGenerated;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_diagnosticInfo copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_dateGenerated != *(equalCopy + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  diagnosticInfo = self->_diagnosticInfo;
  if (diagnosticInfo | *(equalCopy + 2))
  {
    v7 = [(NSString *)diagnosticInfo isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    dateGenerated = self->_dateGenerated;
    if (dateGenerated < 0.0)
    {
      dateGenerated = -dateGenerated;
    }

    *v2.i64 = floor(dateGenerated + 0.5);
    v6 = (dateGenerated - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v4 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return [(NSString *)self->_diagnosticInfo hash]^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    self->_dateGenerated = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(_MRDiagnosticProtobuf *)self setDiagnosticInfo:?];
    fromCopy = v5;
  }
}

@end