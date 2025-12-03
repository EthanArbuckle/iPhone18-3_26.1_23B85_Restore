@interface HMDRemoteEventRouterProtoServerMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMessage:(id)message;
- (int)message;
- (unint64_t)hash;
- (void)clearOneofValuesForMessage;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setChangeRegistrationsResponse:(id)response;
- (void)setConnectResponse:(id)response;
- (void)setMultiHopFetchEventsResponse:(id)response;
- (void)setUpdatedEvents:(id)events;
- (void)writeTo:(id)to;
@end

@implementation HMDRemoteEventRouterProtoServerMessage

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 56))
  {
    self->_message = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  v14 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(HMDRemoteEventRouterProtoServerMessage *)self setIdentifier:?];
    v5 = v14;
  }

  updatedEvents = self->_updatedEvents;
  v7 = v5[6];
  if (updatedEvents)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(HMDRemoteEventRouterProtoEventsMessage *)updatedEvents mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(HMDRemoteEventRouterProtoServerMessage *)self setUpdatedEvents:?];
  }

  v5 = v14;
LABEL_11:
  connectResponse = self->_connectResponse;
  v9 = v5[2];
  if (connectResponse)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    [(HMDRemoteEventRouterProtoConnectResponse *)connectResponse mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    [(HMDRemoteEventRouterProtoServerMessage *)self setConnectResponse:?];
  }

  v5 = v14;
LABEL_17:
  changeRegistrationsResponse = self->_changeRegistrationsResponse;
  v11 = v5[1];
  if (changeRegistrationsResponse)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    [(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)changeRegistrationsResponse mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    [(HMDRemoteEventRouterProtoServerMessage *)self setChangeRegistrationsResponse:?];
  }

  v5 = v14;
LABEL_23:
  multiHopFetchEventsResponse = self->_multiHopFetchEventsResponse;
  v13 = v5[5];
  if (multiHopFetchEventsResponse)
  {
    if (!v13)
    {
      goto LABEL_29;
    }

    [(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse *)multiHopFetchEventsResponse mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_29;
    }

    [(HMDRemoteEventRouterProtoServerMessage *)self setMultiHopFetchEventsResponse:?];
  }

  v5 = v14;
LABEL_29:
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_message;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_identifier hash]^ v3;
  v5 = [(HMDRemoteEventRouterProtoEventsMessage *)self->_updatedEvents hash];
  v6 = v4 ^ v5 ^ [(HMDRemoteEventRouterProtoConnectResponse *)self->_connectResponse hash];
  v7 = [(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)self->_changeRegistrationsResponse hash];
  return v6 ^ v7 ^ [(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse *)self->_multiHopFetchEventsResponse hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_message != *(equalCopy + 8))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 3) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_17;
  }

  updatedEvents = self->_updatedEvents;
  if (updatedEvents | *(equalCopy + 6))
  {
    if (![(HMDRemoteEventRouterProtoEventsMessage *)updatedEvents isEqual:?])
    {
      goto LABEL_17;
    }
  }

  connectResponse = self->_connectResponse;
  if (connectResponse | *(equalCopy + 2))
  {
    if (![(HMDRemoteEventRouterProtoConnectResponse *)connectResponse isEqual:?])
    {
      goto LABEL_17;
    }
  }

  changeRegistrationsResponse = self->_changeRegistrationsResponse;
  if (changeRegistrationsResponse | *(equalCopy + 1))
  {
    if (![(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)changeRegistrationsResponse isEqual:?])
    {
      goto LABEL_17;
    }
  }

  multiHopFetchEventsResponse = self->_multiHopFetchEventsResponse;
  if (multiHopFetchEventsResponse | *(equalCopy + 5))
  {
    v11 = [(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse *)multiHopFetchEventsResponse isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_message;
    *(v5 + 56) |= 1u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(HMDRemoteEventRouterProtoEventsMessage *)self->_updatedEvents copyWithZone:zone];
  v10 = v6[6];
  v6[6] = v9;

  v11 = [(HMDRemoteEventRouterProtoConnectResponse *)self->_connectResponse copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)self->_changeRegistrationsResponse copyWithZone:zone];
  v14 = v6[1];
  v6[1] = v13;

  v15 = [(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse *)self->_multiHopFetchEventsResponse copyWithZone:zone];
  v16 = v6[5];
  v6[5] = v15;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_message;
    *(toCopy + 56) |= 1u;
  }

  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_updatedEvents)
  {
    [v5 setUpdatedEvents:?];
    toCopy = v5;
  }

  if (self->_connectResponse)
  {
    [v5 setConnectResponse:?];
    toCopy = v5;
  }

  if (self->_changeRegistrationsResponse)
  {
    [v5 setChangeRegistrationsResponse:?];
    toCopy = v5;
  }

  if (self->_multiHopFetchEventsResponse)
  {
    [v5 setMultiHopFetchEventsResponse:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_updatedEvents)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_connectResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_changeRegistrationsResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_multiHopFetchEventsResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v25 & 0x7F) << v6;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 3)
      {
        switch(v14)
        {
          case 4:
            [(HMDRemoteEventRouterProtoServerMessage *)self clearOneofValuesForMessage];
            *&self->_has |= 1u;
            self->_message = 2;
            v15 = objc_alloc_init(HMDRemoteEventRouterProtoConnectResponse);
            objc_storeStrong(&self->_connectResponse, v15);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoConnectResponseReadFrom(v15, from))
            {
LABEL_52:

              return 0;
            }

            goto LABEL_47;
          case 5:
            [(HMDRemoteEventRouterProtoServerMessage *)self clearOneofValuesForMessage];
            *&self->_has |= 1u;
            self->_message = 3;
            v15 = objc_alloc_init(HMDRemoteEventRouterProtoChangeRegistrationsResponse);
            objc_storeStrong(&self->_changeRegistrationsResponse, v15);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoConnectResponseReadFrom(v15, from))
            {
              goto LABEL_52;
            }

            goto LABEL_47;
          case 6:
            [(HMDRemoteEventRouterProtoServerMessage *)self clearOneofValuesForMessage];
            *&self->_has |= 1u;
            self->_message = 4;
            v15 = objc_alloc_init(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse);
            objc_storeStrong(&self->_multiHopFetchEventsResponse, v15);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoMultiHopFetchEventsResponseReadFrom(v15, from))
            {
              goto LABEL_52;
            }

            goto LABEL_47;
        }
      }

      else
      {
        switch(v14)
        {
          case 0:
            v16 = 0;
            while (1)
            {
              LOBYTE(v25) = 0;
              v17 = [from position] + 1;
              if (v17 >= [from position] && (v18 = objc_msgSend(from, "position") + 1, v18 <= objc_msgSend(from, "length")))
              {
                data2 = [from data];
                [data2 getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              if ((v25 & 0x80000000) == 0)
              {
                break;
              }

              if (v16++ > 8)
              {
                goto LABEL_48;
              }
            }

            [from hasError];
            goto LABEL_48;
          case 1:
            v21 = PBReaderReadString();
            identifier = self->_identifier;
            self->_identifier = v21;

            goto LABEL_48;
          case 2:
            [(HMDRemoteEventRouterProtoServerMessage *)self clearOneofValuesForMessage];
            *&self->_has |= 1u;
            self->_message = 1;
            v15 = objc_alloc_init(HMDRemoteEventRouterProtoEventsMessage);
            objc_storeStrong(&self->_updatedEvents, v15);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoEventsMessageReadFrom(v15, from))
            {
              goto LABEL_52;
            }

LABEL_47:
            PBReaderRecallMark();

            goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  updatedEvents = self->_updatedEvents;
  if (updatedEvents)
  {
    dictionaryRepresentation = [(HMDRemoteEventRouterProtoEventsMessage *)updatedEvents dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"updatedEvents"];
  }

  connectResponse = self->_connectResponse;
  if (connectResponse)
  {
    dictionaryRepresentation2 = [(HMDRemoteEventRouterProtoConnectResponse *)connectResponse dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"connectResponse"];
  }

  changeRegistrationsResponse = self->_changeRegistrationsResponse;
  if (changeRegistrationsResponse)
  {
    dictionaryRepresentation3 = [(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)changeRegistrationsResponse dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"changeRegistrationsResponse"];
  }

  multiHopFetchEventsResponse = self->_multiHopFetchEventsResponse;
  if (multiHopFetchEventsResponse)
  {
    dictionaryRepresentation4 = [(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse *)multiHopFetchEventsResponse dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"multiHopFetchEventsResponse"];
  }

  if (*&self->_has)
  {
    message = self->_message;
    if (message >= 5)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_message];
    }

    else
    {
      v15 = off_278681850[message];
    }

    [v4 setObject:v15 forKey:@"Message"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDRemoteEventRouterProtoServerMessage;
  v4 = [(HMDRemoteEventRouterProtoServerMessage *)&v8 description];
  dictionaryRepresentation = [(HMDRemoteEventRouterProtoServerMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)clearOneofValuesForMessage
{
  *&self->_has &= ~1u;
  self->_message = 0;
  updatedEvents = self->_updatedEvents;
  self->_updatedEvents = 0;

  connectResponse = self->_connectResponse;
  self->_connectResponse = 0;

  changeRegistrationsResponse = self->_changeRegistrationsResponse;
  self->_changeRegistrationsResponse = 0;

  multiHopFetchEventsResponse = self->_multiHopFetchEventsResponse;
  self->_multiHopFetchEventsResponse = 0;
}

- (int)StringAsMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([messageCopy isEqualToString:@"updatedEvents"])
  {
    v4 = 1;
  }

  else if ([messageCopy isEqualToString:@"connectResponse"])
  {
    v4 = 2;
  }

  else if ([messageCopy isEqualToString:@"changeRegistrationsResponse"])
  {
    v4 = 3;
  }

  else if ([messageCopy isEqualToString:@"multiHopFetchEventsResponse"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)message
{
  if (*&self->_has)
  {
    return self->_message;
  }

  else
  {
    return 0;
  }
}

- (void)setMultiHopFetchEventsResponse:(id)response
{
  responseCopy = response;
  [(HMDRemoteEventRouterProtoServerMessage *)self clearOneofValuesForMessage];
  *&self->_has |= 1u;
  self->_message = 4;
  multiHopFetchEventsResponse = self->_multiHopFetchEventsResponse;
  self->_multiHopFetchEventsResponse = responseCopy;
}

- (void)setChangeRegistrationsResponse:(id)response
{
  responseCopy = response;
  [(HMDRemoteEventRouterProtoServerMessage *)self clearOneofValuesForMessage];
  *&self->_has |= 1u;
  self->_message = 3;
  changeRegistrationsResponse = self->_changeRegistrationsResponse;
  self->_changeRegistrationsResponse = responseCopy;
}

- (void)setConnectResponse:(id)response
{
  responseCopy = response;
  [(HMDRemoteEventRouterProtoServerMessage *)self clearOneofValuesForMessage];
  *&self->_has |= 1u;
  self->_message = 2;
  connectResponse = self->_connectResponse;
  self->_connectResponse = responseCopy;
}

- (void)setUpdatedEvents:(id)events
{
  eventsCopy = events;
  [(HMDRemoteEventRouterProtoServerMessage *)self clearOneofValuesForMessage];
  *&self->_has |= 1u;
  self->_message = 1;
  updatedEvents = self->_updatedEvents;
  self->_updatedEvents = eventsCopy;
}

@end