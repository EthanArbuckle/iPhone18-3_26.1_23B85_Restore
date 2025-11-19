@interface HMDRemoteEventRouterProtoServerMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMessage:(id)a3;
- (int)message;
- (unint64_t)hash;
- (void)clearOneofValuesForMessage;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setChangeRegistrationsResponse:(id)a3;
- (void)setConnectResponse:(id)a3;
- (void)setMultiHopFetchEventsResponse:(id)a3;
- (void)setUpdatedEvents:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMDRemoteEventRouterProtoServerMessage

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 56))
  {
    self->_message = *(v4 + 8);
    *&self->_has |= 1u;
  }

  v14 = v4;
  if (*(v4 + 3))
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

    multiHopFetchEventsResponse = [(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse *)multiHopFetchEventsResponse mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_29;
    }

    multiHopFetchEventsResponse = [(HMDRemoteEventRouterProtoServerMessage *)self setMultiHopFetchEventsResponse:?];
  }

  v5 = v14;
LABEL_29:

  MEMORY[0x2821F96F8](multiHopFetchEventsResponse, v5);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_message != *(v4 + 8))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 3) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_17;
  }

  updatedEvents = self->_updatedEvents;
  if (updatedEvents | *(v4 + 6))
  {
    if (![(HMDRemoteEventRouterProtoEventsMessage *)updatedEvents isEqual:?])
    {
      goto LABEL_17;
    }
  }

  connectResponse = self->_connectResponse;
  if (connectResponse | *(v4 + 2))
  {
    if (![(HMDRemoteEventRouterProtoConnectResponse *)connectResponse isEqual:?])
    {
      goto LABEL_17;
    }
  }

  changeRegistrationsResponse = self->_changeRegistrationsResponse;
  if (changeRegistrationsResponse | *(v4 + 1))
  {
    if (![(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)changeRegistrationsResponse isEqual:?])
    {
      goto LABEL_17;
    }
  }

  multiHopFetchEventsResponse = self->_multiHopFetchEventsResponse;
  if (multiHopFetchEventsResponse | *(v4 + 5))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_message;
    *(v5 + 56) |= 1u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(HMDRemoteEventRouterProtoEventsMessage *)self->_updatedEvents copyWithZone:a3];
  v10 = v6[6];
  v6[6] = v9;

  v11 = [(HMDRemoteEventRouterProtoConnectResponse *)self->_connectResponse copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)self->_changeRegistrationsResponse copyWithZone:a3];
  v14 = v6[1];
  v6[1] = v13;

  v15 = [(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse *)self->_multiHopFetchEventsResponse copyWithZone:a3];
  v16 = v6[5];
  v6[5] = v15;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_message;
    *(v4 + 56) |= 1u;
  }

  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_updatedEvents)
  {
    [v5 setUpdatedEvents:?];
    v4 = v5;
  }

  if (self->_connectResponse)
  {
    [v5 setConnectResponse:?];
    v4 = v5;
  }

  if (self->_changeRegistrationsResponse)
  {
    [v5 setChangeRegistrationsResponse:?];
    v4 = v5;
  }

  if (self->_multiHopFetchEventsResponse)
  {
    [v5 setMultiHopFetchEventsResponse:?];
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

  if (self->_updatedEvents)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_connectResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_changeRegistrationsResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_multiHopFetchEventsResponse)
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
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoConnectResponseReadFrom(v15, a3))
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
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoConnectResponseReadFrom(v15, a3))
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
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoMultiHopFetchEventsResponseReadFrom(v15, a3))
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
                goto LABEL_48;
              }
            }

            [a3 hasError];
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
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoEventsMessageReadFrom(v15, a3))
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
      v23 = [a3 position];
    }

    while (v23 < [a3 length]);
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

  updatedEvents = self->_updatedEvents;
  if (updatedEvents)
  {
    v7 = [(HMDRemoteEventRouterProtoEventsMessage *)updatedEvents dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"updatedEvents"];
  }

  connectResponse = self->_connectResponse;
  if (connectResponse)
  {
    v9 = [(HMDRemoteEventRouterProtoConnectResponse *)connectResponse dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"connectResponse"];
  }

  changeRegistrationsResponse = self->_changeRegistrationsResponse;
  if (changeRegistrationsResponse)
  {
    v11 = [(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)changeRegistrationsResponse dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"changeRegistrationsResponse"];
  }

  multiHopFetchEventsResponse = self->_multiHopFetchEventsResponse;
  if (multiHopFetchEventsResponse)
  {
    v13 = [(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse *)multiHopFetchEventsResponse dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"multiHopFetchEventsResponse"];
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
      v15 = off_27972F4C0[message];
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
  v5 = [(HMDRemoteEventRouterProtoServerMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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

- (int)StringAsMessage:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"updatedEvents"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"connectResponse"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"changeRegistrationsResponse"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"multiHopFetchEventsResponse"])
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

- (void)setMultiHopFetchEventsResponse:(id)a3
{
  v4 = a3;
  [(HMDRemoteEventRouterProtoServerMessage *)self clearOneofValuesForMessage];
  *&self->_has |= 1u;
  self->_message = 4;
  multiHopFetchEventsResponse = self->_multiHopFetchEventsResponse;
  self->_multiHopFetchEventsResponse = v4;
}

- (void)setChangeRegistrationsResponse:(id)a3
{
  v4 = a3;
  [(HMDRemoteEventRouterProtoServerMessage *)self clearOneofValuesForMessage];
  *&self->_has |= 1u;
  self->_message = 3;
  changeRegistrationsResponse = self->_changeRegistrationsResponse;
  self->_changeRegistrationsResponse = v4;
}

- (void)setConnectResponse:(id)a3
{
  v4 = a3;
  [(HMDRemoteEventRouterProtoServerMessage *)self clearOneofValuesForMessage];
  *&self->_has |= 1u;
  self->_message = 2;
  connectResponse = self->_connectResponse;
  self->_connectResponse = v4;
}

- (void)setUpdatedEvents:(id)a3
{
  v4 = a3;
  [(HMDRemoteEventRouterProtoServerMessage *)self clearOneofValuesForMessage];
  *&self->_has |= 1u;
  self->_message = 1;
  updatedEvents = self->_updatedEvents;
  self->_updatedEvents = v4;
}

@end