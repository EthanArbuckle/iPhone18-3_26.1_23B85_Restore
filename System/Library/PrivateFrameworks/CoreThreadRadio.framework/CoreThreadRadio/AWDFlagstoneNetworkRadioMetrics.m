@interface AWDFlagstoneNetworkRadioMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDFlagstoneNetworkRadioMetrics

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDFlagstoneNetworkRadioMetrics;
  v3 = [(AWDFlagstoneNetworkRadioMetrics *)&v7 description];
  v4 = [(AWDFlagstoneNetworkRadioMetrics *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  header = self->_header;
  if (header)
  {
    v6 = [(AWDHeaderInfoS *)header dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"header"];
  }

  sCntrsNetwork = self->_sCntrsNetwork;
  if (sCntrsNetwork)
  {
    v8 = [(AWDCountersNetworkS *)sCntrsNetwork dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"s_cntrs_network"];
  }

  sCntrsRadio = self->_sCntrsRadio;
  if (sCntrsRadio)
  {
    v10 = [(AWDCountersRadioS *)sCntrsRadio dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"s_cntrs_radio"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_sCntrsNetwork)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_sCntrsRadio)
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
    v4[1] = self->_timestamp;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_header)
  {
    [v4 setHeader:?];
    v4 = v5;
  }

  if (self->_sCntrsNetwork)
  {
    [v5 setSCntrsNetwork:?];
    v4 = v5;
  }

  if (self->_sCntrsRadio)
  {
    [v5 setSCntrsRadio:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  v7 = [(AWDHeaderInfoS *)self->_header copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(AWDCountersNetworkS *)self->_sCntrsNetwork copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(AWDCountersRadioS *)self->_sCntrsRadio copyWithZone:a3];
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
    if ((*(v4 + 40) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:

    return 0;
  }

  header = self->_header;
  if (header | *(v4 + 2) && ![(AWDHeaderInfoS *)header isEqual:?])
  {
    goto LABEL_13;
  }

  sCntrsNetwork = self->_sCntrsNetwork;
  if (sCntrsNetwork | *(v4 + 3))
  {
    if (![(AWDCountersNetworkS *)sCntrsNetwork isEqual:?])
    {
      goto LABEL_13;
    }
  }

  sCntrsRadio = self->_sCntrsRadio;
  if (sCntrsRadio | *(v4 + 4))
  {
    v10 = [(AWDCountersRadioS *)sCntrsRadio isEqual:?];

    return v10;
  }

  else
  {

    return 1;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(AWDHeaderInfoS *)self->_header hash]^ v3;
  v5 = [(AWDCountersNetworkS *)self->_sCntrsNetwork hash];
  return v4 ^ v5 ^ [(AWDCountersRadioS *)self->_sCntrsRadio hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    self->_timestamp = v4[1];
    *&self->_has |= 1u;
  }

  header = self->_header;
  v7 = v5[2];
  v12 = v5;
  if (header)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(AWDHeaderInfoS *)header mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(AWDFlagstoneNetworkRadioMetrics *)self setHeader:?];
  }

  v5 = v12;
LABEL_9:
  sCntrsNetwork = self->_sCntrsNetwork;
  v9 = v5[3];
  if (sCntrsNetwork)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDCountersNetworkS *)sCntrsNetwork mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDFlagstoneNetworkRadioMetrics *)self setSCntrsNetwork:?];
  }

  v5 = v12;
LABEL_15:
  sCntrsRadio = self->_sCntrsRadio;
  v11 = v5[4];
  if (sCntrsRadio)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(AWDCountersRadioS *)sCntrsRadio mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(AWDFlagstoneNetworkRadioMetrics *)self setSCntrsRadio:?];
  }

  v5 = v12;
LABEL_21:
}

@end