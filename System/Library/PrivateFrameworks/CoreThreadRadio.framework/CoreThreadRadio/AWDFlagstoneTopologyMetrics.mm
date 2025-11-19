@interface AWDFlagstoneTopologyMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)fEDCountAtIndex:(unint64_t)a3;
- (unsigned)nodeCountAtIndex:(unint64_t)a3;
- (unsigned)routerCountAtIndex:(unint64_t)a3;
- (unsigned)sEDCountAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasMaxChangeinNodeCount:(BOOL)a3;
- (void)setHasPercTopologyChangeTimeInstances:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDFlagstoneTopologyMetrics

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDFlagstoneTopologyMetrics;
  [(AWDFlagstoneTopologyMetrics *)&v3 dealloc];
}

- (unsigned)nodeCountAtIndex:(unint64_t)a3
{
  p_nodeCounts = &self->_nodeCounts;
  count = self->_nodeCounts.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_nodeCounts->list[a3];
}

- (unsigned)routerCountAtIndex:(unint64_t)a3
{
  p_routerCounts = &self->_routerCounts;
  count = self->_routerCounts.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_routerCounts->list[a3];
}

- (unsigned)fEDCountAtIndex:(unint64_t)a3
{
  p_fEDCounts = &self->_fEDCounts;
  count = self->_fEDCounts.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_fEDCounts->list[a3];
}

- (unsigned)sEDCountAtIndex:(unint64_t)a3
{
  p_sEDCounts = &self->_sEDCounts;
  count = self->_sEDCounts.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_sEDCounts->list[a3];
}

- (void)setHasMaxChangeinNodeCount:(BOOL)a3
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

- (void)setHasPercTopologyChangeTimeInstances:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDFlagstoneTopologyMetrics;
  v3 = [(AWDFlagstoneTopologyMetrics *)&v7 description];
  v4 = [(AWDFlagstoneTopologyMetrics *)self dictionaryRepresentation];
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

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"node_count"];

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"router_count"];

  v9 = PBRepeatedUInt32NSArray();
  [v3 setObject:v9 forKey:@"FED_count"];

  v10 = PBRepeatedUInt32NSArray();
  [v3 setObject:v10 forKey:@"SED_count"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [NSNumber numberWithUnsignedInt:self->_maxChangeinNodeCount];
    [v3 setObject:v12 forKey:@"maxChangeinNodeCount"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v13 = [NSNumber numberWithUnsignedInt:self->_percTopologyChangeTimeInstances];
    [v3 setObject:v13 forKey:@"percTopologyChangeTimeInstances"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v16;
  }

  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    v4 = v16;
  }

  if (self->_nodeCounts.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_nodeCounts.list[v6];
      PBDataWriterWriteUint32Field();
      v4 = v16;
      ++v6;
    }

    while (v6 < self->_nodeCounts.count);
  }

  if (self->_routerCounts.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_routerCounts.list[v8];
      PBDataWriterWriteUint32Field();
      v4 = v16;
      ++v8;
    }

    while (v8 < self->_routerCounts.count);
  }

  if (self->_fEDCounts.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_fEDCounts.list[v10];
      PBDataWriterWriteUint32Field();
      v4 = v16;
      ++v10;
    }

    while (v10 < self->_fEDCounts.count);
  }

  if (self->_sEDCounts.count)
  {
    v12 = 0;
    do
    {
      v13 = self->_sEDCounts.list[v12];
      PBDataWriterWriteUint32Field();
      v4 = v16;
      ++v12;
    }

    while (v12 < self->_sEDCounts.count);
  }

  if ((*&self->_has & 2) != 0)
  {
    maxChangeinNodeCount = self->_maxChangeinNodeCount;
    PBDataWriterWriteUint32Field();
    v4 = v16;
    if ((*&self->_has & 4) == 0)
    {
LABEL_19:

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_19;
  }

  percTopologyChangeTimeInstances = self->_percTopologyChangeTimeInstances;
  PBDataWriterWriteUint32Field();
  v4 = v16;

LABEL_21:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[13] = self->_timestamp;
    *(v4 + 128) |= 1u;
  }

  v17 = v4;
  if (self->_header)
  {
    [v4 setHeader:?];
  }

  if ([(AWDFlagstoneTopologyMetrics *)self nodeCountsCount])
  {
    [v17 clearNodeCounts];
    v5 = [(AWDFlagstoneTopologyMetrics *)self nodeCountsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v17 addNodeCount:{-[AWDFlagstoneTopologyMetrics nodeCountAtIndex:](self, "nodeCountAtIndex:", i)}];
      }
    }
  }

  if ([(AWDFlagstoneTopologyMetrics *)self routerCountsCount])
  {
    [v17 clearRouterCounts];
    v8 = [(AWDFlagstoneTopologyMetrics *)self routerCountsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [v17 addRouterCount:{-[AWDFlagstoneTopologyMetrics routerCountAtIndex:](self, "routerCountAtIndex:", j)}];
      }
    }
  }

  if ([(AWDFlagstoneTopologyMetrics *)self fEDCountsCount])
  {
    [v17 clearFEDCounts];
    v11 = [(AWDFlagstoneTopologyMetrics *)self fEDCountsCount];
    if (v11)
    {
      v12 = v11;
      for (k = 0; k != v12; ++k)
      {
        [v17 addFEDCount:{-[AWDFlagstoneTopologyMetrics fEDCountAtIndex:](self, "fEDCountAtIndex:", k)}];
      }
    }
  }

  if ([(AWDFlagstoneTopologyMetrics *)self sEDCountsCount])
  {
    [v17 clearSEDCounts];
    v14 = [(AWDFlagstoneTopologyMetrics *)self sEDCountsCount];
    if (v14)
    {
      v15 = v14;
      for (m = 0; m != v15; ++m)
      {
        [v17 addSEDCount:{-[AWDFlagstoneTopologyMetrics sEDCountAtIndex:](self, "sEDCountAtIndex:", m)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v17 + 30) = self->_maxChangeinNodeCount;
    *(v17 + 128) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
LABEL_23:

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_23;
  }

  *(v17 + 31) = self->_percTopologyChangeTimeInstances;
  *(v17 + 128) |= 4u;

LABEL_25:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[13] = self->_timestamp;
    *(v5 + 128) |= 1u;
  }

  v7 = [(AWDHeaderInfoS *)self->_header copyWithZone:a3];
  v8 = v6[14];
  v6[14] = v7;

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 30) = self->_maxChangeinNodeCount;
    *(v6 + 128) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    return v6;
  }

  *(v6 + 31) = self->_percTopologyChangeTimeInstances;
  *(v6 + 128) |= 4u;
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(v4 + 128);
  if (*&self->_has)
  {
    if ((*(v4 + 128) & 1) == 0 || self->_timestamp != *(v4 + 13))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 128))
  {
LABEL_22:
    v7 = 0;
    goto LABEL_23;
  }

  header = self->_header;
  if (header | *(v4 + 14) && ![(AWDHeaderInfoS *)header isEqual:?]|| !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 128) & 2) == 0 || self->_maxChangeinNodeCount != *(v4 + 30))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 128) & 2) != 0)
  {
    goto LABEL_22;
  }

  v7 = (*(v4 + 128) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 128) & 4) == 0 || self->_percTopologyChangeTimeInstances != *(v4 + 31))
    {
      goto LABEL_22;
    }

    v7 = 1;
  }

LABEL_23:

  return v7;
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

  v4 = [(AWDHeaderInfoS *)self->_header hash];
  v5 = PBRepeatedUInt32Hash();
  v6 = PBRepeatedUInt32Hash();
  v7 = PBRepeatedUInt32Hash();
  v8 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_maxChangeinNodeCount;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v9 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v10 = 2654435761 * self->_percTopologyChangeTimeInstances;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[16])
  {
    self->_timestamp = v4[13];
    *&self->_has |= 1u;
  }

  header = self->_header;
  v7 = v5[14];
  v20 = v5;
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

    [(AWDFlagstoneTopologyMetrics *)self setHeader:?];
  }

  v5 = v20;
LABEL_9:
  v8 = [v5 nodeCountsCount];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      -[AWDFlagstoneTopologyMetrics addNodeCount:](self, "addNodeCount:", [v20 nodeCountAtIndex:i]);
    }
  }

  v11 = [v20 routerCountsCount];
  if (v11)
  {
    v12 = v11;
    for (j = 0; j != v12; ++j)
    {
      -[AWDFlagstoneTopologyMetrics addRouterCount:](self, "addRouterCount:", [v20 routerCountAtIndex:j]);
    }
  }

  v14 = [v20 fEDCountsCount];
  if (v14)
  {
    v15 = v14;
    for (k = 0; k != v15; ++k)
    {
      -[AWDFlagstoneTopologyMetrics addFEDCount:](self, "addFEDCount:", [v20 fEDCountAtIndex:k]);
    }
  }

  v17 = [v20 sEDCountsCount];
  if (v17)
  {
    v18 = v17;
    for (m = 0; m != v18; ++m)
    {
      -[AWDFlagstoneTopologyMetrics addSEDCount:](self, "addSEDCount:", [v20 sEDCountAtIndex:m]);
    }
  }

  if ((*(v20 + 128) & 2) != 0)
  {
    self->_maxChangeinNodeCount = *(v20 + 30);
    *&self->_has |= 2u;
    if ((*(v20 + 128) & 4) == 0)
    {
LABEL_23:

      goto LABEL_25;
    }
  }

  else if ((*(v20 + 128) & 4) == 0)
  {
    goto LABEL_23;
  }

  self->_percTopologyChangeTimeInstances = *(v20 + 31);
  *&self->_has |= 4u;

LABEL_25:
}

@end