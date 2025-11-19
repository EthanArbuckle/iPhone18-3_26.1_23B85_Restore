@interface HDCodableRoutineScenarioTriggeredRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableRoutineScenarioTriggeredRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableRoutineScenarioTriggeredRequest;
  v4 = [(HDCodableRoutineScenarioTriggeredRequest *)&v8 description];
  v5 = [(HDCodableRoutineScenarioTriggeredRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_triggerTypes];
    [v3 setObject:v4 forKey:@"triggerTypes"];
  }

  currentLocation = self->_currentLocation;
  if (currentLocation)
  {
    v6 = [(HDCodableRoutineLocation *)currentLocation dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"currentLocation"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    triggerTypes = self->_triggerTypes;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_currentLocation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_triggerTypes;
    *(v4 + 24) |= 1u;
  }

  if (self->_currentLocation)
  {
    v5 = v4;
    [v4 setCurrentLocation:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_triggerTypes;
    *(v5 + 24) |= 1u;
  }

  v7 = [(HDCodableRoutineLocation *)self->_currentLocation copyWithZone:a3];
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
    if ((*(v4 + 24) & 1) == 0 || self->_triggerTypes != *(v4 + 1))
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

  currentLocation = self->_currentLocation;
  if (currentLocation | *(v4 + 2))
  {
    v7 = [(HDCodableRoutineLocation *)currentLocation isEqual:?];
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
    v2 = 2654435761u * self->_triggerTypes;
  }

  else
  {
    v2 = 0;
  }

  return [(HDCodableRoutineLocation *)self->_currentLocation hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    self->_triggerTypes = v4[1];
    *&self->_has |= 1u;
  }

  currentLocation = self->_currentLocation;
  v7 = v5[2];
  if (currentLocation)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    currentLocation = [(HDCodableRoutineLocation *)currentLocation mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    currentLocation = [(HDCodableRoutineScenarioTriggeredRequest *)self setCurrentLocation:?];
  }

  v5 = v8;
LABEL_9:

  MEMORY[0x2821F96F8](currentLocation, v5);
}

@end