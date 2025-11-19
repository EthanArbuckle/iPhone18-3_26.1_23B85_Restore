@interface IDSQRProtoStatsResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasReceivedPackets:(BOOL)a3;
- (void)setHasSentPackets:(BOOL)a3;
- (void)setHasUplinkBandwidth:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoStatsResponse

- (void)setHasSentPackets:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasReceivedPackets:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUplinkBandwidth:(BOOL)a3
{
  if (a3)
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
  v5 = [(IDSQRProtoStatsResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_clientTimestampNtp];
  [v3 setObject:v4 forKey:@"client_timestamp_ntp"];

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_serverTimestampMs];
    [v3 setObject:v8 forKey:@"server_timestamp_ms"];

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
  [v3 setObject:v9 forKey:@"sent_packets"];

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
  [v3 setObject:v10 forKey:@"received_packets"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uplinkBandwidth];
    [v3 setObject:v6 forKey:@"uplink_bandwidth"];
  }

LABEL_6:

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[4] = self->_clientTimestampNtp;
  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_serverTimestampMs;
    *(v4 + 32) |= 1u;
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

  v4[6] = self->_sentPackets;
  *(v4 + 32) |= 4u;
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
  v4[5] = self->_receivedPackets;
  *(v4 + 32) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v4[7] = self->_uplinkBandwidth;
    *(v4 + 32) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_clientTimestampNtp != *(v4 + 4))
  {
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_serverTimestampMs != *(v4 + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_22:
    v5 = 0;
    goto LABEL_23;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_sentPackets != *(v4 + 6))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_receivedPackets != *(v4 + 5))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_22;
  }

  v5 = (*(v4 + 32) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0 || self->_uplinkBandwidth != *(v4 + 7))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_clientTimestampNtp = *(v4 + 4);
  v5 = *(v4 + 32);
  if (v5)
  {
    self->_serverTimestampMs = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
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

  else if ((*(v4 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_sentPackets = *(v4 + 6);
  *&self->_has |= 4u;
  v5 = *(v4 + 32);
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
  self->_receivedPackets = *(v4 + 5);
  *&self->_has |= 2u;
  if ((*(v4 + 32) & 8) != 0)
  {
LABEL_5:
    self->_uplinkBandwidth = *(v4 + 7);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end