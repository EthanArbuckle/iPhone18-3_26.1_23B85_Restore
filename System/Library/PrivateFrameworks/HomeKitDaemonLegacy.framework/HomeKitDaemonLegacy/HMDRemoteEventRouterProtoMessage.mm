@interface HMDRemoteEventRouterProtoMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequest:(id)a3;
- (int)request;
- (unint64_t)hash;
- (void)clearOneofValuesForRequest;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setChangeRegistrations:(id)a3;
- (void)setConnect:(id)a3;
- (void)setDisconnect:(id)a3;
- (void)setFetchEvents:(id)a3;
- (void)setKeepAlive:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMDRemoteEventRouterProtoMessage

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 60))
  {
    self->_request = *(v4 + 14);
    *&self->_has |= 1u;
  }

  v16 = v4;
  if (*(v4 + 5))
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

    fetchEvents = [(HMDRemoteEventRouterProtoFetchEventsMessage *)fetchEvents mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_35;
    }

    fetchEvents = [(HMDRemoteEventRouterProtoMessage *)self setFetchEvents:?];
  }

  v5 = v16;
LABEL_35:

  MEMORY[0x2821F96F8](fetchEvents, v5);
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
    if ((*(v4 + 60) & 1) == 0 || self->_request != *(v4 + 14))
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

  identifier = self->_identifier;
  if (identifier | *(v4 + 5) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_19;
  }

  connect = self->_connect;
  if (connect | *(v4 + 2))
  {
    if (![(HMDRemoteEventRouterProtoConnectMessage *)connect isEqual:?])
    {
      goto LABEL_19;
    }
  }

  changeRegistrations = self->_changeRegistrations;
  if (changeRegistrations | *(v4 + 1))
  {
    if (![(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)changeRegistrations isEqual:?])
    {
      goto LABEL_19;
    }
  }

  keepAlive = self->_keepAlive;
  if (keepAlive | *(v4 + 6))
  {
    if (![(HMDRemoteEventRouterProtoKeepAliveMessage *)keepAlive isEqual:?])
    {
      goto LABEL_19;
    }
  }

  disconnect = self->_disconnect;
  if (disconnect | *(v4 + 3))
  {
    if (![(HMDRemoteEventRouterProtoDisconnectMessage *)disconnect isEqual:?])
    {
      goto LABEL_19;
    }
  }

  fetchEvents = self->_fetchEvents;
  if (fetchEvents | *(v4 + 4))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 56) = self->_request;
    *(v5 + 60) |= 1u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:a3];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(HMDRemoteEventRouterProtoConnectMessage *)self->_connect copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self->_changeRegistrations copyWithZone:a3];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(HMDRemoteEventRouterProtoKeepAliveMessage *)self->_keepAlive copyWithZone:a3];
  v14 = v6[6];
  v6[6] = v13;

  v15 = [(HMDRemoteEventRouterProtoDisconnectMessage *)self->_disconnect copyWithZone:a3];
  v16 = v6[3];
  v6[3] = v15;

  v17 = [(HMDRemoteEventRouterProtoFetchEventsMessage *)self->_fetchEvents copyWithZone:a3];
  v18 = v6[4];
  v6[4] = v17;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[14] = self->_request;
    *(v4 + 60) |= 1u;
  }

  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_connect)
  {
    [v5 setConnect:?];
    v4 = v5;
  }

  if (self->_changeRegistrations)
  {
    [v5 setChangeRegistrations:?];
    v4 = v5;
  }

  if (self->_keepAlive)
  {
    [v5 setKeepAlive:?];
    v4 = v5;
  }

  if (self->_disconnect)
  {
    [v5 setDisconnect:?];
    v4 = v5;
  }

  if (self->_fetchEvents)
  {
    [v5 setFetchEvents:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_connect)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_changeRegistrations)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_keepAlive)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_disconnect)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_fetchEvents)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
              v17 = [a3 position] + 1;
              if (v17 >= [a3 position] && (v18 = objc_msgSend(a3, "position") + 1, v18 <= objc_msgSend(a3, "length")))
              {
                v19 = [a3 data];
                [v19 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
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

            [a3 hasError];
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
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoConnectMessageReadFrom(v15, a3))
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
          if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoDisconnectMessageReadFrom(a3))
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
          if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoFetchEventsMessageReadFrom(v15, a3))
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
          if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoChangeRegistrationsMessageReadFrom(v15, a3))
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
          if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoDisconnectMessageReadFrom(a3))
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
      v21 = [a3 position];
    }

    while (v21 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  connect = self->_connect;
  if (connect)
  {
    v7 = [(HMDRemoteEventRouterProtoConnectMessage *)connect dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"connect"];
  }

  changeRegistrations = self->_changeRegistrations;
  if (changeRegistrations)
  {
    v9 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)changeRegistrations dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"changeRegistrations"];
  }

  keepAlive = self->_keepAlive;
  if (keepAlive)
  {
    v11 = [(HMDRemoteEventRouterProtoKeepAliveMessage *)keepAlive dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"keepAlive"];
  }

  disconnect = self->_disconnect;
  if (disconnect)
  {
    v13 = [(HMDRemoteEventRouterProtoDisconnectMessage *)disconnect dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"disconnect"];
  }

  fetchEvents = self->_fetchEvents;
  if (fetchEvents)
  {
    v15 = [(HMDRemoteEventRouterProtoFetchEventsMessage *)fetchEvents dictionaryRepresentation];
    [v4 setObject:v15 forKey:@"fetchEvents"];
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
      v17 = off_279733E30[request];
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
  v5 = [(HMDRemoteEventRouterProtoMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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

- (int)StringAsRequest:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"connect"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"changeRegistrations"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"keepAlive"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"disconnect"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"fetchEvents"])
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

- (void)setFetchEvents:(id)a3
{
  v4 = a3;
  [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 5;
  fetchEvents = self->_fetchEvents;
  self->_fetchEvents = v4;
}

- (void)setDisconnect:(id)a3
{
  v4 = a3;
  [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 4;
  disconnect = self->_disconnect;
  self->_disconnect = v4;
}

- (void)setKeepAlive:(id)a3
{
  v4 = a3;
  [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 3;
  keepAlive = self->_keepAlive;
  self->_keepAlive = v4;
}

- (void)setChangeRegistrations:(id)a3
{
  v4 = a3;
  [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 2;
  changeRegistrations = self->_changeRegistrations;
  self->_changeRegistrations = v4;
}

- (void)setConnect:(id)a3
{
  v4 = a3;
  [(HMDRemoteEventRouterProtoMessage *)self clearOneofValuesForRequest];
  *&self->_has |= 1u;
  self->_request = 1;
  connect = self->_connect;
  self->_connect = v4;
}

@end