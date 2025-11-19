@interface HDCodableECGSample
- (BOOL)applyToObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPrivateClassification:(BOOL)a3;
- (void)setHasSymptomsStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableECGSample

- (BOOL)applyToObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HDCodableECGSample sample](self, "sample"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 applyToObject:v4], v5, v6))
  {
    v7 = [(HDCodableECGSample *)self voltagePayload];
    [v4 _setPayload:v7];

    [v4 _setPrivateClassification:{-[HDCodableECGSample privateClassification](self, "privateClassification")}];
    [v4 _setSymptomsStatus:{-[HDCodableECGSample symptomsStatus](self, "symptomsStatus")}];
    if (*&self->_has)
    {
      v8 = MEMORY[0x277CCD7E8];
      [(HDCodableECGSample *)self averageHeartRateInBPM];
      v9 = [v8 _quantityWithBeatsPerMinute:?];
      [v4 _setAverageHeartRate:v9];
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setHasPrivateClassification:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSymptomsStatus:(BOOL)a3
{
  if (a3)
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
  v5 = [(HDCodableECGSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    v5 = [(HDCodableSample *)sample dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sample"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_privateClassification];
    [v3 setObject:v7 forKey:@"privateClassification"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_averageHeartRateInBPM];
    [v3 setObject:v8 forKey:@"averageHeartRateInBPM"];
  }

  voltagePayload = self->_voltagePayload;
  if (voltagePayload)
  {
    [v3 setObject:voltagePayload forKey:@"voltagePayload"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_symptomsStatus];
    [v3 setObject:v10 forKey:@"symptomsStatus"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    privateClassification = self->_privateClassification;
    PBDataWriterWriteInt64Field();
    v4 = v9;
    has = self->_has;
  }

  if (has)
  {
    averageHeartRateInBPM = self->_averageHeartRateInBPM;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

  if (self->_voltagePayload)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    symptomsStatus = self->_symptomsStatus;
    PBDataWriterWriteInt64Field();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sample)
  {
    [v4 setSample:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_privateClassification;
    *(v4 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_averageHeartRateInBPM;
    *(v4 + 48) |= 1u;
  }

  if (self->_voltagePayload)
  {
    [v6 setVoltagePayload:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 3) = self->_symptomsStatus;
    *(v4 + 48) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:a3];
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

  v9 = [(NSData *)self->_voltagePayload copyWithZone:a3];
  v10 = *(v5 + 40);
  *(v5 + 40) = v9;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_symptomsStatus;
    *(v5 + 48) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  sample = self->_sample;
  if (sample | *(v4 + 4))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_21;
    }
  }

  has = self->_has;
  v7 = *(v4 + 48);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_privateClassification != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_averageHeartRateInBPM != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_21;
  }

  voltagePayload = self->_voltagePayload;
  if (voltagePayload | *(v4 + 5))
  {
    if (![(NSData *)voltagePayload isEqual:?])
    {
LABEL_21:
      v9 = 0;
      goto LABEL_22;
    }

    has = self->_has;
    v7 = *(v4 + 48);
  }

  v9 = (v7 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_symptomsStatus != *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  sample = self->_sample;
  v6 = *(v4 + 4);
  v8 = v4;
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

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 48);
  if ((v7 & 2) != 0)
  {
    self->_privateClassification = *(v4 + 2);
    *&self->_has |= 2u;
    v7 = *(v4 + 48);
  }

  if (v7)
  {
    self->_averageHeartRateInBPM = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    sample = [(HDCodableECGSample *)self setVoltagePayload:?];
    v4 = v8;
  }

  if ((*(v4 + 48) & 4) != 0)
  {
    self->_symptomsStatus = *(v4 + 3);
    *&self->_has |= 4u;
  }

  MEMORY[0x2821F96F8](sample, v4);
}

@end