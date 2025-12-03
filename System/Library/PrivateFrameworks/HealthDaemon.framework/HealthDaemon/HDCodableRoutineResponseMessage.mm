@interface HDCodableRoutineResponseMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequestType:(id)type;
- (int)requestType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsRequestType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"FetchLocation"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"FetchNextLocations"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ScenarioTriggered"])
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
  dictionaryRepresentation = [(HDCodableRoutineResponseMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

    [dictionary setObject:v5 forKey:@"requestType"];
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [dictionary setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  fetchLocationResponse = self->_fetchLocationResponse;
  if (fetchLocationResponse)
  {
    dictionaryRepresentation = [(HDCodableRoutineLocationResponse *)fetchLocationResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"fetchLocationResponse"];
  }

  fetchNextLocationResponse = self->_fetchNextLocationResponse;
  if (fetchNextLocationResponse)
  {
    dictionaryRepresentation2 = [(HDCodableRoutinePredictedLocationsResponse *)fetchNextLocationResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"fetchNextLocationResponse"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [dictionary setObject:errorDescription forKey:@"errorDescription"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    requestType = self->_requestType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_fetchLocationResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_fetchNextLocationResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_errorDescription)
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
    toCopy[10] = self->_requestType;
    *(toCopy + 44) |= 1u;
  }

  v5 = toCopy;
  if (self->_requestIdentifier)
  {
    [toCopy setRequestIdentifier:?];
    toCopy = v5;
  }

  if (self->_fetchLocationResponse)
  {
    [v5 setFetchLocationResponse:?];
    toCopy = v5;
  }

  if (self->_fetchNextLocationResponse)
  {
    [v5 setFetchNextLocationResponse:?];
    toCopy = v5;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_requestType;
    *(v5 + 44) |= 1u;
  }

  v7 = [(NSString *)self->_requestIdentifier copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(HDCodableRoutineLocationResponse *)self->_fetchLocationResponse copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(HDCodableRoutinePredictedLocationsResponse *)self->_fetchNextLocationResponse copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  v13 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v14 = v6[1];
  v6[1] = v13;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_requestType != *(equalCopy + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 44))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier | *(equalCopy + 4) && ![(NSString *)requestIdentifier isEqual:?])
  {
    goto LABEL_15;
  }

  fetchLocationResponse = self->_fetchLocationResponse;
  if (fetchLocationResponse | *(equalCopy + 2))
  {
    if (![(HDCodableRoutineLocationResponse *)fetchLocationResponse isEqual:?])
    {
      goto LABEL_15;
    }
  }

  fetchNextLocationResponse = self->_fetchNextLocationResponse;
  if (fetchNextLocationResponse | *(equalCopy + 3))
  {
    if (![(HDCodableRoutinePredictedLocationsResponse *)fetchNextLocationResponse isEqual:?])
    {
      goto LABEL_15;
    }
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 44))
  {
    self->_requestType = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  v10 = fromCopy;
  if (*(fromCopy + 4))
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