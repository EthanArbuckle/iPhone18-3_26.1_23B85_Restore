@interface HMDRemoteEventRouterProtoMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequest:(id)request;
- (int)request;
- (unint64_t)hash;
- (void)clearOneofValuesForRequest;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setChangeRegistrations:(id)registrations;
- (void)setConnect:(id)connect;
- (void)setDisconnect:(id)disconnect;
- (void)setFetchEvents:(id)events;
- (void)setKeepAlive:(id)alive;
- (void)writeTo:(id)to;
@end

@implementation HMDRemoteEventRouterProtoMessage

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 60))
  {
    self->_request = *(fromCopy + 14);
    *&self->_has |= 1u;
  }

  v16 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(HMDRemoteEventRouterProtoMessage *)self setIdentifier:?];
    v5 = v16;
  }

  connect = self->_connect;
  v7 = v5[2];
  if (connect)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(HMDRemoteEventRouterProtoConnectMessage *)connect mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(HMDRemoteEventRouterProtoMessage *)self setConnect:?];
  }

  v5 = v16;
LABEL_11:
  changeRegistrations = self->_changeRegistrations;
  v9 = v5[1];
  if (changeRegistrations)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)changeRegistrations mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    [(HMDRemoteEventRouterProtoMessage *)self setChangeRegistrations:?];
  }

  v5 = v16;
LABEL_17:
  keepAlive = self->_keepAlive;
  v11 = v5[6];
  if (keepAlive)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    [(HMDRemoteEventRouterProtoKeepAliveMessage *)keepAlive mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    [(HMDRemoteEventRouterProtoMessage *)self setKeepAlive:?];
  }

  v5 = v16;
LABEL_23:
  disconnect = self->_disconnect;
  v13 = v5[3];
  if (disconnect)
  {
    if (!v13)
    {
      goto LABEL_29;
    }

    [(HMDRemoteEventRouterProtoDisconnectMessage *)disconnect mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_29;
    }

    [(HMDRemoteEventRouterProtoMessage *)self setDisconnect:?];
  }

  v5 = v16;
LABEL_29:
  fetchEvents = self->_fetchEvents;
  v15 = v5[4];
  if (fetchEvents)
  {
    if (!v15)
    {
      goto LABEL_35;
    }

    [(HMDRemoteEventRouterProtoFetchEventsMessage *)fetchEvents mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_35;
    }

    [(HMDRemoteEventRouterProtoMessage *)self setFetchEvents:?];
  }

  v5 = v16;
LABEL_35:
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_request;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_identifier hash]^ v3;
  v5 = [(HMDRemoteEventRouterProtoConnectMessage *)self->_connect hash];
  v6 = v4 ^ v5 ^ [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self->_changeRegistrations hash];
  v7 = [(HMDRemoteEventRouterProtoKeepAliveMessage *)self->_keepAlive hash];
  v8 = v7 ^ [(HMDRemoteEventRouterProtoDisconnectMessage *)self->_disconnect hash];
  return v6 ^ v8 ^ [(HMDRemoteEventRouterProtoFetchEventsMessage *)self->_fetchEvents hash];
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
    if ((*(equalCopy + 60) & 1) == 0 || self->_request != *(equalCopy + 14))
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

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 5) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_19;
  }

  connect = self->_connect;
  if (connect | *(equalCopy + 2))
  {
    if (![(HMDRemoteEventRouterProtoConnectMessage *)connect isEqual:?])
    {
      goto LABEL_19;
    }
  }

  changeRegistrations = self->_changeRegistrations;
  if (changeRegistrations | *(equalCopy + 1))
  {
    if (![(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)changeRegistrations isEqual:?])
    {
      goto LABEL_19;
    }
  }

  keepAlive = self->_keepAlive;
  if (keepAlive | *(equalCopy + 6))
  {
    if (![(HMDRemoteEventRouterProtoKeepAliveMessage *)keepAlive isEqual:?])
    {
      goto LABEL_19;
    }
  }

  disconnect = self->_disconnect;
  if (disconnect | *(equalCopy + 3))
  {
    if (![(HMDRemoteEventRouterProtoDisconnectMessage *)disconnect isEqual:?])
    {
      goto LABEL_19;
    }
  }

  fetchEvents = self->_fetchEvents;
  if (fetchEvents | *(equalCopy + 4))
  {
    v12 = [(HMDRemoteEventRouterProtoFetchEventsMessage *)fetchEvents isEqual:?];
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
    *(v5 + 56) = self->_request;
    *(v5 + 60) |= 1u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(HMDRemoteEventRouterProtoConnectMessage *)self->_connect copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self->_changeRegistrations copyWithZone:zone];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(HMDRemoteEventRouterProtoKeepAliveMessage *)self->_keepAlive copyWithZone:zone];
  v14 = v6[6];
  v6[6] = v13;

  v15 = [(HMDRemoteEventRouterProtoDisconnectMessage *)self->_disconnect copyWithZone:zone];
  v16 = v6[3];
  v6[3] = v15;

  v17 = [(HMDRemoteEventRouterProtoFetchEventsMessage *)self->_fetchEvents copyWithZone:zone];
  v18 = v6[4];
  v6[4] = v17;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[14] = self->_request;
    *(toCopy + 60) |= 1u;
  }

  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_connect)
  {
    [v5 setConnect:?];
    toCopy = v5;
  }

  if (self->_changeRegistrations)
  {
    [v5 setChangeRegistrations:?];
    toCopy = v5;
  }

  if (self->_keepAlive)
  {
    [v5 setKeepAlive:?];
    toCopy = v5;
  }

  if (self->_disconnect)
  {
    [v5 setDisconnect:?];
    toCopy = v5;
  }

  if (self->_fetchEvents)
  {
    [v5 setFetchEvents:?];
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

  if (self->_connect)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_changeRegistrations)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_keepAlive)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_disconnect)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_fetchEvents)
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
      if ((v13 >> 3) <= 2)
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
                goto LABEL_52;
              }
            }

            [from hasError];
            goto LABEL_52;
          case 1:
            v22 = PBReaderReadString();
            identifier = self->_identifier;
            self->_identifier = v22;

            goto LABEL_52;
          case 2:
            [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
            *&self->_has |= 1u;
            self->_request = 1;
            v15 = objc_alloc_init(HMDRemoteEventRouterProtoConnectMessage);
            objc_storeStrong(&self->_connect, v15);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoConnectMessageReadFrom(v15, from))
            {
LABEL_57:

              return 0;
            }

            goto LABEL_51;
        }
      }

      else if (v14 > 4)
      {
        if (v14 == 5)
        {
          [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
          *&self->_has |= 1u;
          self->_request = 4;
          v15 = objc_alloc_init(HMDRemoteEventRouterProtoDisconnectMessage);
          objc_storeStrong(&self->_disconnect, v15);
          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoDisconnectMessageReadFrom(from))
          {
            goto LABEL_57;
          }

          goto LABEL_51;
        }

        if (v14 == 7)
        {
          [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
          *&self->_has |= 1u;
          self->_request = 5;
          v15 = objc_alloc_init(HMDRemoteEventRouterProtoFetchEventsMessage);
          objc_storeStrong(&self->_fetchEvents, v15);
          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoFetchEventsMessageReadFrom(v15, from))
          {
            goto LABEL_57;
          }

          goto LABEL_51;
        }
      }

      else
      {
        if (v14 == 3)
        {
          [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
          *&self->_has |= 1u;
          self->_request = 2;
          v15 = objc_alloc_init(HMDRemoteEventRouterProtoChangeRegistrationsMessage);
          objc_storeStrong(&self->_changeRegistrations, v15);
          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoChangeRegistrationsMessageReadFrom(v15, from))
          {
            goto LABEL_57;
          }

          goto LABEL_51;
        }

        if (v14 == 4)
        {
          [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
          *&self->_has |= 1u;
          self->_request = 3;
          v15 = objc_alloc_init(HMDRemoteEventRouterProtoKeepAliveMessage);
          objc_storeStrong(&self->_keepAlive, v15);
          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoDisconnectMessageReadFrom(from))
          {
            goto LABEL_57;
          }

LABEL_51:
          PBReaderRecallMark();

          goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
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

  connect = self->_connect;
  if (connect)
  {
    dictionaryRepresentation = [(HMDRemoteEventRouterProtoConnectMessage *)connect dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"connect"];
  }

  changeRegistrations = self->_changeRegistrations;
  if (changeRegistrations)
  {
    dictionaryRepresentation2 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)changeRegistrations dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"changeRegistrations"];
  }

  keepAlive = self->_keepAlive;
  if (keepAlive)
  {
    dictionaryRepresentation3 = [(HMDRemoteEventRouterProtoKeepAliveMessage *)keepAlive dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"keepAlive"];
  }

  disconnect = self->_disconnect;
  if (disconnect)
  {
    dictionaryRepresentation4 = [(HMDRemoteEventRouterProtoDisconnectMessage *)disconnect dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"disconnect"];
  }

  fetchEvents = self->_fetchEvents;
  if (fetchEvents)
  {
    dictionaryRepresentation5 = [(HMDRemoteEventRouterProtoFetchEventsMessage *)fetchEvents dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"fetchEvents"];
  }

  if (*&self->_has)
  {
    request = self->_request;
    if (request >= 6)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_request];
    }

    else
    {
      v17 = off_2786881E0[request];
    }

    [v4 setObject:v17 forKey:@"Request"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDRemoteEventRouterProtoMessage;
  v4 = [(HMDRemoteEventRouterProtoMessage *)&v8 description];
  dictionaryRepresentation = [(HMDRemoteEventRouterProtoMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)clearOneofValuesForRequest
{
  *&self->_has &= ~1u;
  self->_request = 0;
  connect = self->_connect;
  self->_connect = 0;

  changeRegistrations = self->_changeRegistrations;
  self->_changeRegistrations = 0;

  keepAlive = self->_keepAlive;
  self->_keepAlive = 0;

  disconnect = self->_disconnect;
  self->_disconnect = 0;

  fetchEvents = self->_fetchEvents;
  self->_fetchEvents = 0;
}

- (int)StringAsRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([requestCopy isEqualToString:@"connect"])
  {
    v4 = 1;
  }

  else if ([requestCopy isEqualToString:@"changeRegistrations"])
  {
    v4 = 2;
  }

  else if ([requestCopy isEqualToString:@"keepAlive"])
  {
    v4 = 3;
  }

  else if ([requestCopy isEqualToString:@"disconnect"])
  {
    v4 = 4;
  }

  else if ([requestCopy isEqualToString:@"fetchEvents"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)request
{
  if (*&self->_has)
  {
    return self->_request;
  }

  else
  {
    return 0;
  }
}

- (void)setFetchEvents:(id)events
{
  eventsCopy = events;
  [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 5;
  fetchEvents = self->_fetchEvents;
  self->_fetchEvents = eventsCopy;
}

- (void)setDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 4;
  disconnect = self->_disconnect;
  self->_disconnect = disconnectCopy;
}

- (void)setKeepAlive:(id)alive
{
  aliveCopy = alive;
  [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 3;
  keepAlive = self->_keepAlive;
  self->_keepAlive = aliveCopy;
}

- (void)setChangeRegistrations:(id)registrations
{
  registrationsCopy = registrations;
  [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 2;
  changeRegistrations = self->_changeRegistrations;
  self->_changeRegistrations = registrationsCopy;
}

- (void)setConnect:(id)connect
{
  connectCopy = connect;
  [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 1;
  connect = self->_connect;
  self->_connect = connectCopy;
}

@end