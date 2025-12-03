@interface SGMIMetricsAggregatedAccuracyLogs
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SGMIMetricsAggregatedAccuracyLogs

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 60))
  {
    self->_hoursSinceReference = *(fromCopy + 14);
    *&self->_has |= 1u;
  }

  activeTrialMetadata = self->_activeTrialMetadata;
  v7 = v5[3];
  v18 = v5;
  if (activeTrialMetadata)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(SGMIMetricsTrialMetadata *)activeTrialMetadata mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(SGMIMetricsAggregatedAccuracyLogs *)self setActiveTrialMetadata:?];
  }

  v5 = v18;
LABEL_9:
  activeAggregatedAccuracyLogForThePastFourWeeks = self->_activeAggregatedAccuracyLogForThePastFourWeeks;
  v9 = v5[1];
  if (activeAggregatedAccuracyLogForThePastFourWeeks)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(SGMIMetricsAggregatedAccuracyLog *)activeAggregatedAccuracyLogForThePastFourWeeks mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(SGMIMetricsAggregatedAccuracyLogs *)self setActiveAggregatedAccuracyLogForThePastFourWeeks:?];
  }

  v5 = v18;
LABEL_15:
  activeAggregatedAccuracyLogSinceModelInitialization = self->_activeAggregatedAccuracyLogSinceModelInitialization;
  v11 = v5[2];
  if (activeAggregatedAccuracyLogSinceModelInitialization)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(SGMIMetricsAggregatedAccuracyLog *)activeAggregatedAccuracyLogSinceModelInitialization mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(SGMIMetricsAggregatedAccuracyLogs *)self setActiveAggregatedAccuracyLogSinceModelInitialization:?];
  }

  v5 = v18;
LABEL_21:
  backgroundTrialMetadata = self->_backgroundTrialMetadata;
  v13 = v5[6];
  if (backgroundTrialMetadata)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(SGMIMetricsTrialMetadata *)backgroundTrialMetadata mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(SGMIMetricsAggregatedAccuracyLogs *)self setBackgroundTrialMetadata:?];
  }

  v5 = v18;
LABEL_27:
  backgroundAggregatedAccuracyLogForThePastFourWeeks = self->_backgroundAggregatedAccuracyLogForThePastFourWeeks;
  v15 = v5[4];
  if (backgroundAggregatedAccuracyLogForThePastFourWeeks)
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(SGMIMetricsAggregatedAccuracyLog *)backgroundAggregatedAccuracyLogForThePastFourWeeks mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(SGMIMetricsAggregatedAccuracyLogs *)self setBackgroundAggregatedAccuracyLogForThePastFourWeeks:?];
  }

  v5 = v18;
LABEL_33:
  backgroundAggregatedAccuracyLogSinceModelInitialization = self->_backgroundAggregatedAccuracyLogSinceModelInitialization;
  v17 = v5[5];
  if (backgroundAggregatedAccuracyLogSinceModelInitialization)
  {
    if (v17)
    {
      [(SGMIMetricsAggregatedAccuracyLog *)backgroundAggregatedAccuracyLogSinceModelInitialization mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(SGMIMetricsAggregatedAccuracyLogs *)self setBackgroundAggregatedAccuracyLogSinceModelInitialization:?];
  }

  MEMORY[0x2821F96F8]();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_hoursSinceReference;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SGMIMetricsTrialMetadata *)self->_activeTrialMetadata hash]^ v3;
  v5 = [(SGMIMetricsAggregatedAccuracyLog *)self->_activeAggregatedAccuracyLogForThePastFourWeeks hash];
  v6 = v4 ^ v5 ^ [(SGMIMetricsAggregatedAccuracyLog *)self->_activeAggregatedAccuracyLogSinceModelInitialization hash];
  v7 = [(SGMIMetricsTrialMetadata *)self->_backgroundTrialMetadata hash];
  v8 = v7 ^ [(SGMIMetricsAggregatedAccuracyLog *)self->_backgroundAggregatedAccuracyLogForThePastFourWeeks hash];
  return v6 ^ v8 ^ [(SGMIMetricsAggregatedAccuracyLog *)self->_backgroundAggregatedAccuracyLogSinceModelInitialization hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 60);
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_hoursSinceReference != *(equalCopy + 14))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 60))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  activeTrialMetadata = self->_activeTrialMetadata;
  if (activeTrialMetadata | *(equalCopy + 3) && ![(SGMIMetricsTrialMetadata *)activeTrialMetadata isEqual:?])
  {
    goto LABEL_19;
  }

  activeAggregatedAccuracyLogForThePastFourWeeks = self->_activeAggregatedAccuracyLogForThePastFourWeeks;
  if (activeAggregatedAccuracyLogForThePastFourWeeks | *(equalCopy + 1))
  {
    if (![(SGMIMetricsAggregatedAccuracyLog *)activeAggregatedAccuracyLogForThePastFourWeeks isEqual:?])
    {
      goto LABEL_19;
    }
  }

  activeAggregatedAccuracyLogSinceModelInitialization = self->_activeAggregatedAccuracyLogSinceModelInitialization;
  if (activeAggregatedAccuracyLogSinceModelInitialization | *(equalCopy + 2))
  {
    if (![(SGMIMetricsAggregatedAccuracyLog *)activeAggregatedAccuracyLogSinceModelInitialization isEqual:?])
    {
      goto LABEL_19;
    }
  }

  backgroundTrialMetadata = self->_backgroundTrialMetadata;
  if (backgroundTrialMetadata | *(equalCopy + 6))
  {
    if (![(SGMIMetricsTrialMetadata *)backgroundTrialMetadata isEqual:?])
    {
      goto LABEL_19;
    }
  }

  backgroundAggregatedAccuracyLogForThePastFourWeeks = self->_backgroundAggregatedAccuracyLogForThePastFourWeeks;
  if (backgroundAggregatedAccuracyLogForThePastFourWeeks | *(equalCopy + 4))
  {
    if (![(SGMIMetricsAggregatedAccuracyLog *)backgroundAggregatedAccuracyLogForThePastFourWeeks isEqual:?])
    {
      goto LABEL_19;
    }
  }

  backgroundAggregatedAccuracyLogSinceModelInitialization = self->_backgroundAggregatedAccuracyLogSinceModelInitialization;
  if (backgroundAggregatedAccuracyLogSinceModelInitialization | *(equalCopy + 5))
  {
    v12 = [(SGMIMetricsAggregatedAccuracyLog *)backgroundAggregatedAccuracyLogSinceModelInitialization isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 56) = self->_hoursSinceReference;
    *(v5 + 60) |= 1u;
  }

  v7 = [(SGMIMetricsTrialMetadata *)self->_activeTrialMetadata copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(SGMIMetricsAggregatedAccuracyLog *)self->_activeAggregatedAccuracyLogForThePastFourWeeks copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(SGMIMetricsAggregatedAccuracyLog *)self->_activeAggregatedAccuracyLogSinceModelInitialization copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(SGMIMetricsTrialMetadata *)self->_backgroundTrialMetadata copyWithZone:zone];
  v14 = v6[6];
  v6[6] = v13;

  v15 = [(SGMIMetricsAggregatedAccuracyLog *)self->_backgroundAggregatedAccuracyLogForThePastFourWeeks copyWithZone:zone];
  v16 = v6[4];
  v6[4] = v15;

  v17 = [(SGMIMetricsAggregatedAccuracyLog *)self->_backgroundAggregatedAccuracyLogSinceModelInitialization copyWithZone:zone];
  v18 = v6[5];
  v6[5] = v17;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[14] = self->_hoursSinceReference;
    *(toCopy + 60) |= 1u;
  }

  v5 = toCopy;
  if (self->_activeTrialMetadata)
  {
    [toCopy setActiveTrialMetadata:?];
    toCopy = v5;
  }

  if (self->_activeAggregatedAccuracyLogForThePastFourWeeks)
  {
    [v5 setActiveAggregatedAccuracyLogForThePastFourWeeks:?];
    toCopy = v5;
  }

  if (self->_activeAggregatedAccuracyLogSinceModelInitialization)
  {
    [v5 setActiveAggregatedAccuracyLogSinceModelInitialization:?];
    toCopy = v5;
  }

  if (self->_backgroundTrialMetadata)
  {
    [v5 setBackgroundTrialMetadata:?];
    toCopy = v5;
  }

  if (self->_backgroundAggregatedAccuracyLogForThePastFourWeeks)
  {
    [v5 setBackgroundAggregatedAccuracyLogForThePastFourWeeks:?];
    toCopy = v5;
  }

  if (self->_backgroundAggregatedAccuracyLogSinceModelInitialization)
  {
    [v5 setBackgroundAggregatedAccuracyLogSinceModelInitialization:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    hoursSinceReference = self->_hoursSinceReference;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_activeTrialMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_activeAggregatedAccuracyLogForThePastFourWeeks)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_activeAggregatedAccuracyLogSinceModelInitialization)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_backgroundTrialMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_backgroundAggregatedAccuracyLogForThePastFourWeeks)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_backgroundAggregatedAccuracyLogSinceModelInitialization)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hoursSinceReference];
    [dictionary setObject:v4 forKey:@"hoursSinceReference"];
  }

  activeTrialMetadata = self->_activeTrialMetadata;
  if (activeTrialMetadata)
  {
    dictionaryRepresentation = [(SGMIMetricsTrialMetadata *)activeTrialMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"activeTrialMetadata"];
  }

  activeAggregatedAccuracyLogForThePastFourWeeks = self->_activeAggregatedAccuracyLogForThePastFourWeeks;
  if (activeAggregatedAccuracyLogForThePastFourWeeks)
  {
    dictionaryRepresentation2 = [(SGMIMetricsAggregatedAccuracyLog *)activeAggregatedAccuracyLogForThePastFourWeeks dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"activeAggregatedAccuracyLogForThePastFourWeeks"];
  }

  activeAggregatedAccuracyLogSinceModelInitialization = self->_activeAggregatedAccuracyLogSinceModelInitialization;
  if (activeAggregatedAccuracyLogSinceModelInitialization)
  {
    dictionaryRepresentation3 = [(SGMIMetricsAggregatedAccuracyLog *)activeAggregatedAccuracyLogSinceModelInitialization dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"activeAggregatedAccuracyLogSinceModelInitialization"];
  }

  backgroundTrialMetadata = self->_backgroundTrialMetadata;
  if (backgroundTrialMetadata)
  {
    dictionaryRepresentation4 = [(SGMIMetricsTrialMetadata *)backgroundTrialMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"backgroundTrialMetadata"];
  }

  backgroundAggregatedAccuracyLogForThePastFourWeeks = self->_backgroundAggregatedAccuracyLogForThePastFourWeeks;
  if (backgroundAggregatedAccuracyLogForThePastFourWeeks)
  {
    dictionaryRepresentation5 = [(SGMIMetricsAggregatedAccuracyLog *)backgroundAggregatedAccuracyLogForThePastFourWeeks dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"backgroundAggregatedAccuracyLogForThePastFourWeeks"];
  }

  backgroundAggregatedAccuracyLogSinceModelInitialization = self->_backgroundAggregatedAccuracyLogSinceModelInitialization;
  if (backgroundAggregatedAccuracyLogSinceModelInitialization)
  {
    dictionaryRepresentation6 = [(SGMIMetricsAggregatedAccuracyLog *)backgroundAggregatedAccuracyLogSinceModelInitialization dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"backgroundAggregatedAccuracyLogSinceModelInitialization"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsAggregatedAccuracyLogs;
  v4 = [(SGMIMetricsAggregatedAccuracyLogs *)&v8 description];
  dictionaryRepresentation = [(SGMIMetricsAggregatedAccuracyLogs *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end