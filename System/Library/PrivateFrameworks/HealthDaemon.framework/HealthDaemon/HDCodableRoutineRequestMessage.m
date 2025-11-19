@interface HDCodableRoutineRequestMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequestType:(id)a3;
- (int)requestType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableRoutineRequestMessage

- (int)requestType
{
  if (*&self->_has)
  {
    return self->_requestType;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsRequestType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FetchLocation"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FetchNextLocations"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ScenarioTriggered"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableRoutineRequestMessage;
  v4 = [(HDCodableRoutineRequestMessage *)&v8 description];
  v5 = [(HDCodableRoutineRequestMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = self->_requestType - 1;
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_requestType];
    }

    else
    {
      v5 = off_278625100[v4];
    }

    [v3 setObject:v5 forKey:@"requestType"];
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [v3 setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  fetchLocationRequest = self->_fetchLocationRequest;
  if (fetchLocationRequest)
  {
    v8 = [(HDCodableRoutineLocationRequest *)fetchLocationRequest dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"fetchLocationRequest"];
  }

  scenarioTriggeredRequest = self->_scenarioTriggeredRequest;
  if (scenarioTriggeredRequest)
  {
    v10 = [(HDCodableRoutineScenarioTriggeredRequest *)scenarioTriggeredRequest dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"scenarioTriggeredRequest"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    requestType = self->_requestType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_fetchLocationRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_scenarioTriggeredRequest)
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
    v4[6] = self->_requestType;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_requestIdentifier)
  {
    [v4 setRequestIdentifier:?];
    v4 = v5;
  }

  if (self->_fetchLocationRequest)
  {
    [v5 setFetchLocationRequest:?];
    v4 = v5;
  }

  if (self->_scenarioTriggeredRequest)
  {
    [v5 setScenarioTriggeredRequest:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_requestType;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_requestIdentifier copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(HDCodableRoutineLocationRequest *)self->_fetchLocationRequest copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(HDCodableRoutineScenarioTriggeredRequest *)self->_scenarioTriggeredRequest copyWithZone:a3];
  v12 = v6[4];
  v6[4] = v11;

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
    if ((*(v4 + 40) & 1) == 0 || self->_requestType != *(v4 + 6))
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

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier | *(v4 + 2) && ![(NSString *)requestIdentifier isEqual:?])
  {
    goto LABEL_13;
  }

  fetchLocationRequest = self->_fetchLocationRequest;
  if (fetchLocationRequest | *(v4 + 1))
  {
    if (![(HDCodableRoutineLocationRequest *)fetchLocationRequest isEqual:?])
    {
      goto LABEL_13;
    }
  }

  scenarioTriggeredRequest = self->_scenarioTriggeredRequest;
  if (scenarioTriggeredRequest | *(v4 + 4))
  {
    v9 = [(HDCodableRoutineScenarioTriggeredRequest *)scenarioTriggeredRequest isEqual:?];
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
    v3 = 2654435761 * self->_requestType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_requestIdentifier hash]^ v3;
  v5 = [(HDCodableRoutineLocationRequest *)self->_fetchLocationRequest hash];
  return v4 ^ v5 ^ [(HDCodableRoutineScenarioTriggeredRequest *)self->_scenarioTriggeredRequest hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[10])
  {
    self->_requestType = v4[6];
    *&self->_has |= 1u;
  }

  v10 = v4;
  if (*(v4 + 2))
  {
    [(HDCodableRoutineRequestMessage *)self setRequestIdentifier:?];
    v5 = v10;
  }

  fetchLocationRequest = self->_fetchLocationRequest;
  v7 = *(v5 + 1);
  if (fetchLocationRequest)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(HDCodableRoutineLocationRequest *)fetchLocationRequest mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(HDCodableRoutineRequestMessage *)self setFetchLocationRequest:?];
  }

  v5 = v10;
LABEL_11:
  scenarioTriggeredRequest = self->_scenarioTriggeredRequest;
  v9 = *(v5 + 4);
  if (scenarioTriggeredRequest)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    scenarioTriggeredRequest = [(HDCodableRoutineScenarioTriggeredRequest *)scenarioTriggeredRequest mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    scenarioTriggeredRequest = [(HDCodableRoutineRequestMessage *)self setScenarioTriggeredRequest:?];
  }

  v5 = v10;
LABEL_17:

  MEMORY[0x2821F96F8](scenarioTriggeredRequest, v5);
}

@end