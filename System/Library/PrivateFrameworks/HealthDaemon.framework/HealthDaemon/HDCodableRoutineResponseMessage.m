@interface HDCodableRoutineResponseMessage
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

@implementation HDCodableRoutineResponseMessage

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
  v8.super_class = HDCodableRoutineResponseMessage;
  v4 = [(HDCodableRoutineResponseMessage *)&v8 description];
  v5 = [(HDCodableRoutineResponseMessage *)self dictionaryRepresentation];
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
      v5 = off_278627728[v4];
    }

    [v3 setObject:v5 forKey:@"requestType"];
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [v3 setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  fetchLocationResponse = self->_fetchLocationResponse;
  if (fetchLocationResponse)
  {
    v8 = [(HDCodableRoutineLocationResponse *)fetchLocationResponse dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"fetchLocationResponse"];
  }

  fetchNextLocationResponse = self->_fetchNextLocationResponse;
  if (fetchNextLocationResponse)
  {
    v10 = [(HDCodableRoutinePredictedLocationsResponse *)fetchNextLocationResponse dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"fetchNextLocationResponse"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v3 setObject:errorDescription forKey:@"errorDescription"];
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

  if (self->_fetchLocationResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_fetchNextLocationResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_errorDescription)
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
    v4[10] = self->_requestType;
    *(v4 + 44) |= 1u;
  }

  v5 = v4;
  if (self->_requestIdentifier)
  {
    [v4 setRequestIdentifier:?];
    v4 = v5;
  }

  if (self->_fetchLocationResponse)
  {
    [v5 setFetchLocationResponse:?];
    v4 = v5;
  }

  if (self->_fetchNextLocationResponse)
  {
    [v5 setFetchNextLocationResponse:?];
    v4 = v5;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_requestType;
    *(v5 + 44) |= 1u;
  }

  v7 = [(NSString *)self->_requestIdentifier copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(HDCodableRoutineLocationResponse *)self->_fetchLocationResponse copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(HDCodableRoutinePredictedLocationsResponse *)self->_fetchNextLocationResponse copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  v13 = [(NSString *)self->_errorDescription copyWithZone:a3];
  v14 = v6[1];
  v6[1] = v13;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_requestType != *(v4 + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 44))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier | *(v4 + 4) && ![(NSString *)requestIdentifier isEqual:?])
  {
    goto LABEL_15;
  }

  fetchLocationResponse = self->_fetchLocationResponse;
  if (fetchLocationResponse | *(v4 + 2))
  {
    if (![(HDCodableRoutineLocationResponse *)fetchLocationResponse isEqual:?])
    {
      goto LABEL_15;
    }
  }

  fetchNextLocationResponse = self->_fetchNextLocationResponse;
  if (fetchNextLocationResponse | *(v4 + 3))
  {
    if (![(HDCodableRoutinePredictedLocationsResponse *)fetchNextLocationResponse isEqual:?])
    {
      goto LABEL_15;
    }
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(v4 + 1))
  {
    v10 = [(NSString *)errorDescription isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
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
  v5 = [(HDCodableRoutineLocationResponse *)self->_fetchLocationResponse hash];
  v6 = v4 ^ v5 ^ [(HDCodableRoutinePredictedLocationsResponse *)self->_fetchNextLocationResponse hash];
  return v6 ^ [(NSString *)self->_errorDescription hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 44))
  {
    self->_requestType = *(v4 + 10);
    *&self->_has |= 1u;
  }

  v10 = v4;
  if (*(v4 + 4))
  {
    [(HDCodableRoutineResponseMessage *)self setRequestIdentifier:?];
    v5 = v10;
  }

  fetchLocationResponse = self->_fetchLocationResponse;
  v7 = v5[2];
  if (fetchLocationResponse)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(HDCodableRoutineLocationResponse *)fetchLocationResponse mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(HDCodableRoutineResponseMessage *)self setFetchLocationResponse:?];
  }

  v5 = v10;
LABEL_11:
  fetchNextLocationResponse = self->_fetchNextLocationResponse;
  v9 = v5[3];
  if (fetchNextLocationResponse)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    fetchNextLocationResponse = [(HDCodableRoutinePredictedLocationsResponse *)fetchNextLocationResponse mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    fetchNextLocationResponse = [(HDCodableRoutineResponseMessage *)self setFetchNextLocationResponse:?];
  }

  v5 = v10;
LABEL_17:
  if (v5[1])
  {
    fetchNextLocationResponse = [(HDCodableRoutineResponseMessage *)self setErrorDescription:?];
    v5 = v10;
  }

  MEMORY[0x2821F96F8](fetchNextLocationResponse, v5);
}

@end