@interface SGMIMetricsTrialMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SGMIMetricsTrialMetadata

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(SGMIMetricsTrialMetadata *)self setExperimentId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(SGMIMetricsTrialMetadata *)self setTreatmentId:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_deploymentId = fromCopy[2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(equalCopy + 2))
  {
    if (![(NSString *)experimentId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(equalCopy + 3))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_deploymentId == *(equalCopy + 2))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_experimentId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_treatmentId copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_deploymentId;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_experimentId)
  {
    [toCopy setExperimentId:?];
    toCopy = v5;
  }

  if (self->_treatmentId)
  {
    [v5 setTreatmentId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_deploymentId;
    *(toCopy + 32) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_treatmentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    deploymentId = self->_deploymentId;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  experimentId = self->_experimentId;
  if (experimentId)
  {
    [dictionary setObject:experimentId forKey:@"experimentId"];
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
  dictionaryRepresentation = [(SGMIMetricsTrialMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end