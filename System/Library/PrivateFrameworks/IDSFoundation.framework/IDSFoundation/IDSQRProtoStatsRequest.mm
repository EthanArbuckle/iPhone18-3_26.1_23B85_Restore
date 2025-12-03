@interface IDSQRProtoStatsRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasP2pConnection:(BOOL)connection;
- (void)setHasReceivedPackets:(BOOL)packets;
- (void)setHasSentPackets:(BOOL)packets;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoStatsRequest

- (void)setHasSentPackets:(BOOL)packets
{
  if (packets)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasReceivedPackets:(BOOL)packets
{
  if (packets)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasP2pConnection:(BOOL)connection
{
  if (connection)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoStatsRequest;
  v4 = [(IDSQRProtoStatsRequest *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoStatsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_clientTimestampNtp];
  [dictionary setObject:v4 forKey:@"client_timestamp_ntp"];

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_clientLatencyMs];
    [dictionary setObject:v8 forKey:@"client_latency_ms"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sentPackets];
  [dictionary setObject:v9 forKey:@"sent_packets"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_receivedPackets];
  [dictionary setObject:v10 forKey:@"received_packets"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_p2pConnection];
    [dictionary setObject:v6 forKey:@"p2p_connection"];
  }

LABEL_6:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[3] = self->_clientTimestampNtp;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_clientLatencyMs;
    *(toCopy + 28) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[5] = self->_sentPackets;
  *(toCopy + 28) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  toCopy[4] = self->_receivedPackets;
  *(toCopy + 28) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(toCopy + 24) = self->_p2pConnection;
    *(toCopy + 28) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = self->_clientTimestampNtp;
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_clientLatencyMs;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_sentPackets;
  *(result + 28) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 4) = self->_receivedPackets;
  *(result + 28) |= 2u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 24) = self->_p2pConnection;
  *(result + 28) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_clientTimestampNtp != *(equalCopy + 3))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_clientLatencyMs != *(equalCopy + 2))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_sentPackets != *(equalCopy + 5))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_receivedPackets != *(equalCopy + 4))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_20;
  }

  v5 = (*(equalCopy + 28) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 28) & 8) == 0)
    {
LABEL_20:
      v5 = 0;
      goto LABEL_21;
    }

    if (self->_p2pConnection)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_20;
    }

    v5 = 1;
  }

LABEL_21:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_clientLatencyMs;
  }

  else
  {
    v2 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_sentPackets;
  }

  else
  {
    v3 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_receivedPackets;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v5 = 0;
    return v2 ^ v3 ^ v4 ^ v5 ^ (2654435761 * self->_clientTimestampNtp);
  }

  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v5 = 2654435761 * self->_p2pConnection;
  return v2 ^ v3 ^ v4 ^ v5 ^ (2654435761 * self->_clientTimestampNtp);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_clientTimestampNtp = *(fromCopy + 3);
  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_clientLatencyMs = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_sentPackets = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 28);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_receivedPackets = *(fromCopy + 4);
  *&self->_has |= 2u;
  if ((*(fromCopy + 28) & 8) != 0)
  {
LABEL_5:
    self->_p2pConnection = *(fromCopy + 24);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end