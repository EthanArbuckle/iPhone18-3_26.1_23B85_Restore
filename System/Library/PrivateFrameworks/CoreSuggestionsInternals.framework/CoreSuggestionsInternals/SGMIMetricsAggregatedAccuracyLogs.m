@interface SGMIMetricsAggregatedAccuracyLogs
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGMIMetricsAggregatedAccuracyLogs

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 60))
  {
    self->_hoursSinceReference = *(v4 + 14);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 60);
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_hoursSinceReference != *(v4 + 14))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 60))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  activeTrialMetadata = self->_activeTrialMetadata;
  if (activeTrialMetadata | *(v4 + 3) && ![(SGMIMetricsTrialMetadata *)activeTrialMetadata isEqual:?])
  {
    goto LABEL_19;
  }

  activeAggregatedAccuracyLogForThePastFourWeeks = self->_activeAggregatedAccuracyLogForThePastFourWeeks;
  if (activeAggregatedAccuracyLogForThePastFourWeeks | *(v4 + 1))
  {
    if (![(SGMIMetricsAggregatedAccuracyLog *)activeAggregatedAccuracyLogForThePastFourWeeks isEqual:?])
    {
      goto LABEL_19;
    }
  }

  activeAggregatedAccuracyLogSinceModelInitialization = self->_activeAggregatedAccuracyLogSinceModelInitialization;
  if (activeAggregatedAccuracyLogSinceModelInitialization | *(v4 + 2))
  {
    if (![(SGMIMetricsAggregatedAccuracyLog *)activeAggregatedAccuracyLogSinceModelInitialization isEqual:?])
    {
      goto LABEL_19;
    }
  }

  backgroundTrialMetadata = self->_backgroundTrialMetadata;
  if (backgroundTrialMetadata | *(v4 + 6))
  {
    if (![(SGMIMetricsTrialMetadata *)backgroundTrialMetadata isEqual:?])
    {
      goto LABEL_19;
    }
  }

  backgroundAggregatedAccuracyLogForThePastFourWeeks = self->_backgroundAggregatedAccuracyLogForThePastFourWeeks;
  if (backgroundAggregatedAccuracyLogForThePastFourWeeks | *(v4 + 4))
  {
    if (![(SGMIMetricsAggregatedAccuracyLog *)backgroundAggregatedAccuracyLogForThePastFourWeeks isEqual:?])
    {
      goto LABEL_19;
    }
  }

  backgroundAggregatedAccuracyLogSinceModelInitialization = self->_backgroundAggregatedAccuracyLogSinceModelInitialization;
  if (backgroundAggregatedAccuracyLogSinceModelInitialization | *(v4 + 5))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 56) = self->_hoursSinceReference;
    *(v5 + 60) |= 1u;
  }

  v7 = [(SGMIMetricsTrialMetadata *)self->_activeTrialMetadata copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(SGMIMetricsAggregatedAccuracyLog *)self->_activeAggregatedAccuracyLogForThePastFourWeeks copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(SGMIMetricsAggregatedAccuracyLog *)self->_activeAggregatedAccuracyLogSinceModelInitialization copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(SGMIMetricsTrialMetadata *)self->_backgroundTrialMetadata copyWithZone:a3];
  v14 = v6[6];
  v6[6] = v13;

  v15 = [(SGMIMetricsAggregatedAccuracyLog *)self->_backgroundAggregatedAccuracyLogForThePastFourWeeks copyWithZone:a3];
  v16 = v6[4];
  v6[4] = v15;

  v17 = [(SGMIMetricsAggregatedAccuracyLog *)self->_backgroundAggregatedAccuracyLogSinceModelInitialization copyWithZone:a3];
  v18 = v6[5];
  v6[5] = v17;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[14] = self->_hoursSinceReference;
    *(v4 + 60) |= 1u;
  }

  v5 = v4;
  if (self->_activeTrialMetadata)
  {
    [v4 setActiveTrialMetadata:?];
    v4 = v5;
  }

  if (self->_activeAggregatedAccuracyLogForThePastFourWeeks)
  {
    [v5 setActiveAggregatedAccuracyLogForThePastFourWeeks:?];
    v4 = v5;
  }

  if (self->_activeAggregatedAccuracyLogSinceModelInitialization)
  {
    [v5 setActiveAggregatedAccuracyLogSinceModelInitialization:?];
    v4 = v5;
  }

  if (self->_backgroundTrialMetadata)
  {
    [v5 setBackgroundTrialMetadata:?];
    v4 = v5;
  }

  if (self->_backgroundAggregatedAccuracyLogForThePastFourWeeks)
  {
    [v5 setBackgroundAggregatedAccuracyLogForThePastFourWeeks:?];
    v4 = v5;
  }

  if (self->_backgroundAggregatedAccuracyLogSinceModelInitialization)
  {
    [v5 setBackgroundAggregatedAccuracyLogSinceModelInitialization:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    hoursSinceReference = self->_hoursSinceReference;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_activeTrialMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_activeAggregatedAccuracyLogForThePastFourWeeks)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_activeAggregatedAccuracyLogSinceModelInitialization)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_backgroundTrialMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_backgroundAggregatedAccuracyLogForThePastFourWeeks)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_backgroundAggregatedAccuracyLogSinceModelInitialization)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hoursSinceReference];
    [v3 setObject:v4 forKey:@"hoursSinceReference"];
  }

  activeTrialMetadata = self->_activeTrialMetadata;
  if (activeTrialMetadata)
  {
    v6 = [(SGMIMetricsTrialMetadata *)activeTrialMetadata dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"activeTrialMetadata"];
  }

  activeAggregatedAccuracyLogForThePastFourWeeks = self->_activeAggregatedAccuracyLogForThePastFourWeeks;
  if (activeAggregatedAccuracyLogForThePastFourWeeks)
  {
    v8 = [(SGMIMetricsAggregatedAccuracyLog *)activeAggregatedAccuracyLogForThePastFourWeeks dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"activeAggregatedAccuracyLogForThePastFourWeeks"];
  }

  activeAggregatedAccuracyLogSinceModelInitialization = self->_activeAggregatedAccuracyLogSinceModelInitialization;
  if (activeAggregatedAccuracyLogSinceModelInitialization)
  {
    v10 = [(SGMIMetricsAggregatedAccuracyLog *)activeAggregatedAccuracyLogSinceModelInitialization dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"activeAggregatedAccuracyLogSinceModelInitialization"];
  }

  backgroundTrialMetadata = self->_backgroundTrialMetadata;
  if (backgroundTrialMetadata)
  {
    v12 = [(SGMIMetricsTrialMetadata *)backgroundTrialMetadata dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"backgroundTrialMetadata"];
  }

  backgroundAggregatedAccuracyLogForThePastFourWeeks = self->_backgroundAggregatedAccuracyLogForThePastFourWeeks;
  if (backgroundAggregatedAccuracyLogForThePastFourWeeks)
  {
    v14 = [(SGMIMetricsAggregatedAccuracyLog *)backgroundAggregatedAccuracyLogForThePastFourWeeks dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"backgroundAggregatedAccuracyLogForThePastFourWeeks"];
  }

  backgroundAggregatedAccuracyLogSinceModelInitialization = self->_backgroundAggregatedAccuracyLogSinceModelInitialization;
  if (backgroundAggregatedAccuracyLogSinceModelInitialization)
  {
    v16 = [(SGMIMetricsAggregatedAccuracyLog *)backgroundAggregatedAccuracyLogSinceModelInitialization dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"backgroundAggregatedAccuracyLogSinceModelInitialization"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsAggregatedAccuracyLogs;
  v4 = [(SGMIMetricsAggregatedAccuracyLogs *)&v8 description];
  v5 = [(SGMIMetricsAggregatedAccuracyLogs *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end