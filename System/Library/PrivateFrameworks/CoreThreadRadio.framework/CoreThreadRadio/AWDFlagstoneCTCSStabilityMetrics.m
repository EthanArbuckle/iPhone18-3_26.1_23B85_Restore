@interface AWDFlagstoneCTCSStabilityMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDFlagstoneCTCSStabilityMetrics

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDFlagstoneCTCSStabilityMetrics;
  v3 = [(AWDFlagstoneCTCSStabilityMetrics *)&v7 description];
  v4 = [(AWDFlagstoneCTCSStabilityMetrics *)self dictionaryRepresentation];
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

  sCntrsStability = self->_sCntrsStability;
  if (sCntrsStability)
  {
    v8 = [(AWDCtcsReadWriteStabilityS *)sCntrsStability dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"s_cntrs_stability"];
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

  if (self->_sCntrsStability)
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
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_header)
  {
    [v4 setHeader:?];
    v4 = v5;
  }

  if (self->_sCntrsStability)
  {
    [v5 setSCntrsStability:?];
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
    *(v5 + 32) |= 1u;
  }

  v7 = [(AWDHeaderInfoS *)self->_header copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(AWDCtcsReadWriteStabilityS *)self->_sCntrsStability copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:

    return 0;
  }

  header = self->_header;
  if (header | *(v4 + 2) && ![(AWDHeaderInfoS *)header isEqual:?])
  {
    goto LABEL_11;
  }

  sCntrsStability = self->_sCntrsStability;
  if (sCntrsStability | *(v4 + 3))
  {
    v9 = [(AWDCtcsReadWriteStabilityS *)sCntrsStability isEqual:?];

    return v9;
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
  return v4 ^ [(AWDCtcsReadWriteStabilityS *)self->_sCntrsStability hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[4])
  {
    self->_timestamp = v4[1];
    *&self->_has |= 1u;
  }

  header = self->_header;
  v7 = v5[2];
  v10 = v5;
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

    [(AWDFlagstoneCTCSStabilityMetrics *)self setHeader:?];
  }

  v5 = v10;
LABEL_9:
  sCntrsStability = self->_sCntrsStability;
  v9 = v5[3];
  if (sCntrsStability)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDCtcsReadWriteStabilityS *)sCntrsStability mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDFlagstoneCTCSStabilityMetrics *)self setSCntrsStability:?];
  }

  v5 = v10;
LABEL_15:
}

@end