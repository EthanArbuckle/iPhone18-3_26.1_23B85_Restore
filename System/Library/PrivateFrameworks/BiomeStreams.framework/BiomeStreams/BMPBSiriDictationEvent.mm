@interface BMPBSiriDictationEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBSiriDictationEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSiriDictationEvent;
  v4 = [(BMPBSiriDictationEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBSiriDictationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [dictionary setObject:v4 forKey:@"absoluteTimestamp"];
  }

  recognizedText = self->_recognizedText;
  if (recognizedText)
  {
    [dictionary setObject:recognizedText forKey:@"recognizedText"];
  }

  correctedText = self->_correctedText;
  if (correctedText)
  {
    [dictionary setObject:correctedText forKey:@"correctedText"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_recognizedText)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_correctedText)
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
    toCopy[1] = *&self->_absoluteTimestamp;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_recognizedText)
  {
    [toCopy setRecognizedText:?];
    toCopy = v5;
  }

  if (self->_correctedText)
  {
    [v5 setCorrectedText:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_recognizedText copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_correctedText copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  recognizedText = self->_recognizedText;
  if (recognizedText | *(equalCopy + 3) && ![(NSString *)recognizedText isEqual:?])
  {
    goto LABEL_11;
  }

  correctedText = self->_correctedText;
  if (correctedText | *(equalCopy + 2))
  {
    v8 = [(NSString *)correctedText isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
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

  v9 = [(NSString *)self->_recognizedText hash]^ v5;
  return v9 ^ [(NSString *)self->_correctedText hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    self->_absoluteTimestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(BMPBSiriDictationEvent *)self setRecognizedText:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(BMPBSiriDictationEvent *)self setCorrectedText:?];
    fromCopy = v5;
  }
}

@end