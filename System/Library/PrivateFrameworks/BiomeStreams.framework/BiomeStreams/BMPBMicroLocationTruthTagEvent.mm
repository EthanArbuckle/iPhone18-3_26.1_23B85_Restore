@interface BMPBMicroLocationTruthTagEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBMicroLocationTruthTagEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBMicroLocationTruthTagEvent;
  v4 = [(BMPBMicroLocationTruthTagEvent *)&v8 description];
  v5 = [(BMPBMicroLocationTruthTagEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v3 setObject:v4 forKey:@"absoluteTimestamp"];
  }

  truthTagIdentifier = self->_truthTagIdentifier;
  if (truthTagIdentifier)
  {
    [v3 setObject:truthTagIdentifier forKey:@"truthTagIdentifier"];
  }

  recordingRequestIdentifier = self->_recordingRequestIdentifier;
  if (recordingRequestIdentifier)
  {
    [v3 setObject:recordingRequestIdentifier forKey:@"recordingRequestIdentifier"];
  }

  clientBundleId = self->_clientBundleId;
  if (clientBundleId)
  {
    [v3 setObject:clientBundleId forKey:@"clientBundleId"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_truthTagIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_recordingRequestIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_clientBundleId)
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
    v4[1] = *&self->_absoluteTimestamp;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_truthTagIdentifier)
  {
    [v4 setTruthTagIdentifier:?];
    v4 = v5;
  }

  if (self->_recordingRequestIdentifier)
  {
    [v5 setRecordingRequestIdentifier:?];
    v4 = v5;
  }

  if (self->_clientBundleId)
  {
    [v5 setClientBundleId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_truthTagIdentifier copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(NSString *)self->_recordingRequestIdentifier copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_clientBundleId copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  truthTagIdentifier = self->_truthTagIdentifier;
  if (truthTagIdentifier | *(v4 + 4) && ![(NSString *)truthTagIdentifier isEqual:?])
  {
    goto LABEL_13;
  }

  recordingRequestIdentifier = self->_recordingRequestIdentifier;
  if (recordingRequestIdentifier | *(v4 + 3))
  {
    if (![(NSString *)recordingRequestIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  clientBundleId = self->_clientBundleId;
  if (clientBundleId | *(v4 + 2))
  {
    v9 = [(NSString *)clientBundleId isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v2.i64 = floor(absoluteTimestamp + 0.5);
    v7 = (absoluteTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_truthTagIdentifier hash]^ v5;
  v10 = [(NSString *)self->_recordingRequestIdentifier hash];
  return v9 ^ v10 ^ [(NSString *)self->_clientBundleId hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    self->_absoluteTimestamp = v4[1];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 4))
  {
    [(BMPBMicroLocationTruthTagEvent *)self setTruthTagIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(BMPBMicroLocationTruthTagEvent *)self setRecordingRequestIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(BMPBMicroLocationTruthTagEvent *)self setClientBundleId:?];
    v4 = v5;
  }
}

@end