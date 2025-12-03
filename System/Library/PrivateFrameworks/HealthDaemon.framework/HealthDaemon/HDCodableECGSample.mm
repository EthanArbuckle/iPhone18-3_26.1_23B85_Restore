@interface HDCodableECGSample
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPrivateClassification:(BOOL)classification;
- (void)setHasSymptomsStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation HDCodableECGSample

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HDCodableECGSample sample](self, "sample"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 applyToObject:objectCopy], v5, v6))
  {
    voltagePayload = [(HDCodableECGSample *)self voltagePayload];
    [objectCopy _setPayload:voltagePayload];

    [objectCopy _setPrivateClassification:{-[HDCodableECGSample privateClassification](self, "privateClassification")}];
    [objectCopy _setSymptomsStatus:{-[HDCodableECGSample symptomsStatus](self, "symptomsStatus")}];
    if (*&self->_has)
    {
      v8 = MEMORY[0x277CCD7E8];
      [(HDCodableECGSample *)self averageHeartRateInBPM];
      v9 = [v8 _quantityWithBeatsPerMinute:?];
      [objectCopy _setAverageHeartRate:v9];
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setHasPrivateClassification:(BOOL)classification
{
  if (classification)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSymptomsStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableECGSample;
  v4 = [(HDCodableECGSample *)&v8 description];
  dictionaryRepresentation = [(HDCodableECGSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(HDCodableSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_privateClassification];
    [dictionary setObject:v7 forKey:@"privateClassification"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_averageHeartRateInBPM];
    [dictionary setObject:v8 forKey:@"averageHeartRateInBPM"];
  }

  voltagePayload = self->_voltagePayload;
  if (voltagePayload)
  {
    [dictionary setObject:voltagePayload forKey:@"voltagePayload"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_symptomsStatus];
    [dictionary setObject:v10 forKey:@"symptomsStatus"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    privateClassification = self->_privateClassification;
    PBDataWriterWriteInt64Field();
    toCopy = v9;
    has = self->_has;
  }

  if (has)
  {
    averageHeartRateInBPM = self->_averageHeartRateInBPM;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

  if (self->_voltagePayload)
  {
    PBDataWriterWriteDataField();
    toCopy = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    symptomsStatus = self->_symptomsStatus;
    PBDataWriterWriteInt64Field();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_privateClassification;
    *(toCopy + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_averageHeartRateInBPM;
    *(toCopy + 48) |= 1u;
  }

  if (self->_voltagePayload)
  {
    [v6 setVoltagePayload:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 3) = self->_symptomsStatus;
    *(toCopy + 48) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_privateClassification;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_averageHeartRateInBPM;
    *(v5 + 48) |= 1u;
  }

  v9 = [(NSData *)self->_voltagePayload copyWithZone:zone];
  v10 = *(v5 + 40);
  *(v5 + 40) = v9;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_symptomsStatus;
    *(v5 + 48) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 4))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_21;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 48);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_privateClassification != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_averageHeartRateInBPM != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_21;
  }

  voltagePayload = self->_voltagePayload;
  if (voltagePayload | *(equalCopy + 5))
  {
    if (![(NSData *)voltagePayload isEqual:?])
    {
LABEL_21:
      v9 = 0;
      goto LABEL_22;
    }

    has = self->_has;
    v7 = *(equalCopy + 48);
  }

  v9 = (v7 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_symptomsStatus != *(equalCopy + 3))
    {
      goto LABEL_21;
    }

    v9 = 1;
  }

LABEL_22:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSample *)self->_sample hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_privateClassification;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  averageHeartRateInBPM = self->_averageHeartRateInBPM;
  if (averageHeartRateInBPM < 0.0)
  {
    averageHeartRateInBPM = -averageHeartRateInBPM;
  }

  *v4.i64 = floor(averageHeartRateInBPM + 0.5);
  v8 = (averageHeartRateInBPM - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  v11 = [(NSData *)self->_voltagePayload hash];
  if ((*&self->_has & 4) != 0)
  {
    v12 = 2654435761 * self->_symptomsStatus;
  }

  else
  {
    v12 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 4);
  v8 = fromCopy;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    sample = [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    sample = [(HDCodableECGSample *)self setSample:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 48);
  if ((v7 & 2) != 0)
  {
    self->_privateClassification = *(fromCopy + 2);
    *&self->_has |= 2u;
    v7 = *(fromCopy + 48);
  }

  if (v7)
  {
    self->_averageHeartRateInBPM = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    sample = [(HDCodableECGSample *)self setVoltagePayload:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 48) & 4) != 0)
  {
    self->_symptomsStatus = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

  MEMORY[0x2821F96F8](sample, fromCopy);
}

@end