@interface _MRDiagnosticProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRDiagnosticProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRDiagnosticProtobuf;
  v4 = [(_MRDiagnosticProtobuf *)&v8 description];
  v5 = [(_MRDiagnosticProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateGenerated];
    [v3 setObject:v4 forKey:@"dateGenerated"];
  }

  diagnosticInfo = self->_diagnosticInfo;
  if (diagnosticInfo)
  {
    [v3 setObject:diagnosticInfo forKey:@"diagnosticInfo"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    dateGenerated = self->_dateGenerated;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_diagnosticInfo)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_dateGenerated;
    *(v4 + 24) |= 1u;
  }

  if (self->_diagnosticInfo)
  {
    v5 = v4;
    [v4 setDiagnosticInfo:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_dateGenerated;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_diagnosticInfo copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_dateGenerated != *(v4 + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  diagnosticInfo = self->_diagnosticInfo;
  if (diagnosticInfo | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[3])
  {
    self->_dateGenerated = v4[1];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(_MRDiagnosticProtobuf *)self setDiagnosticInfo:?];
    v4 = v5;
  }
}

@end