@interface IDSQRProtoStatsResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasReceivedPackets:(BOOL)packets;
- (void)setHasSentPackets:(BOOL)packets;
- (void)setHasUplinkBandwidth:(BOOL)bandwidth;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoStatsResponse

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

- (void)setHasUplinkBandwidth:(BOOL)bandwidth
{
  if (bandwidth)
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
  v8.super_class = IDSQRProtoStatsResponse;
  v4 = [(IDSQRProtoStatsResponse *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoStatsResponse *)self dictionaryRepresentation];
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
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_serverTimestampMs];
    [dictionary setObject:v8 forKey:@"server_timestamp_ms"];

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
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uplinkBandwidth];
    [dictionary setObject:v6 forKey:@"uplink_bandwidth"];
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
    PBDataWriterWriteUint64Field();
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
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[4] = self->_clientTimestampNtp;
  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_serverTimestampMs;
    *(toCopy + 32) |= 1u;
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

  toCopy[6] = self->_sentPackets;
  *(toCopy + 32) |= 4u;
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
  toCopy[5] = self->_receivedPackets;
  *(toCopy + 32) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    toCopy[7] = self->_uplinkBandwidth;
    *(toCopy + 32) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 4) = self->_clientTimestampNtp;
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_serverTimestampMs;
    *(result + 32) |= 1u;
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

  *(result + 6) = self->_sentPackets;
  *(result + 32) |= 4u;
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
  *(result + 5) = self->_receivedPackets;
  *(result + 32) |= 2u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 7) = self->_uplinkBandwidth;
  *(result + 32) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_clientTimestampNtp != *(equalCopy + 4))
  {
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_serverTimestampMs != *(equalCopy + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_22:
    v5 = 0;
    goto LABEL_23;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_sentPackets != *(equalCopy + 6))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_receivedPackets != *(equalCopy + 5))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_22;
  }

  v5 = (*(equalCopy + 32) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 32) & 8) == 0 || self->_uplinkBandwidth != *(equalCopy + 7))
    {
      goto LABEL_22;
    }

    v5 = 1;
  }

LABEL_23:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_serverTimestampMs;
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
  v5 = 2654435761 * self->_uplinkBandwidth;
  return v2 ^ v3 ^ v4 ^ v5 ^ (2654435761 * self->_clientTimestampNtp);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_clientTimestampNtp = *(fromCopy + 4);
  v5 = *(fromCopy + 32);
  if (v5)
  {
    self->_serverTimestampMs = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 32);
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

  else if ((*(fromCopy + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_sentPackets = *(fromCopy + 6);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 32);
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
  self->_receivedPackets = *(fromCopy + 5);
  *&self->_has |= 2u;
  if ((*(fromCopy + 32) & 8) != 0)
  {
LABEL_5:
    self->_uplinkBandwidth = *(fromCopy + 7);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end