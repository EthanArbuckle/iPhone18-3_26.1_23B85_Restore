@interface SGMIMetricsTrialMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGMIMetricsTrialMetadata

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(SGMIMetricsTrialMetadata *)self setExperimentId:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(SGMIMetricsTrialMetadata *)self setTreatmentId:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_deploymentId = v4[2];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentId hash];
  v4 = [(NSString *)self->_treatmentId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_deploymentId;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(v4 + 2))
  {
    if (![(NSString *)experimentId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(v4 + 3))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_deploymentId == *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_experimentId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_treatmentId copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_deploymentId;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_experimentId)
  {
    [v4 setExperimentId:?];
    v4 = v5;
  }

  if (self->_treatmentId)
  {
    [v5 setTreatmentId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_deploymentId;
    *(v4 + 32) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_treatmentId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    deploymentId = self->_deploymentId;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  experimentId = self->_experimentId;
  if (experimentId)
  {
    [v3 setObject:experimentId forKey:@"experimentId"];
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    [v4 setObject:treatmentId forKey:@"treatmentId"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentId];
    [v4 setObject:v7 forKey:@"deploymentId"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsTrialMetadata;
  v4 = [(SGMIMetricsTrialMetadata *)&v8 description];
  v5 = [(SGMIMetricsTrialMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end