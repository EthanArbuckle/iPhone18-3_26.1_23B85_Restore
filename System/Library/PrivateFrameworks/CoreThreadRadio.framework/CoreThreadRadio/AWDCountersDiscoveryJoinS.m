@interface AWDCountersDiscoveryJoinS
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unsigned)accessoryNodesCountHistogramAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCountersDiscoveryJoinS

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCountersDiscoveryJoinS;
  [(AWDCountersDiscoveryJoinS *)&v3 dealloc];
}

- (unsigned)accessoryNodesCountHistogramAtIndex:(unint64_t)a3
{
  p_accessoryNodesCountHistograms = &self->_accessoryNodesCountHistograms;
  count = self->_accessoryNodesCountHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_accessoryNodesCountHistograms->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersDiscoveryJoinS;
  v3 = [(AWDCountersDiscoveryJoinS *)&v7 description];
  v4 = [(AWDCountersDiscoveryJoinS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = PBRepeatedUInt32NSArray();
  [v3 setObject:v4 forKey:@"accessory_nodes_count_histogram"];

  sCntrsJoiner = self->_sCntrsJoiner;
  if (sCntrsJoiner)
  {
    v6 = [(AWDCountersJoinerS *)sCntrsJoiner dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"s_cntrs_joiner"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_accessoryNodesCountHistograms.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_accessoryNodesCountHistograms.list[v5];
      PBDataWriterWriteUint32Field();
      v4 = v7;
      ++v5;
    }

    while (v5 < self->_accessoryNodesCountHistograms.count);
  }

  if (self->_sCntrsJoiner)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(AWDCountersDiscoveryJoinS *)self accessoryNodesCountHistogramsCount])
  {
    [v7 clearAccessoryNodesCountHistograms];
    v4 = [(AWDCountersDiscoveryJoinS *)self accessoryNodesCountHistogramsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addAccessoryNodesCountHistogram:{-[AWDCountersDiscoveryJoinS accessoryNodesCountHistogramAtIndex:](self, "accessoryNodesCountHistogramAtIndex:", i)}];
      }
    }
  }

  if (self->_sCntrsJoiner)
  {
    [v7 setSCntrsJoiner:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedUInt32Copy();
  v6 = [(AWDCountersJoinerS *)self->_sCntrsJoiner copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && PBRepeatedUInt32IsEqual())
  {
    sCntrsJoiner = self->_sCntrsJoiner;
    if (sCntrsJoiner | v4[4])
    {
      v7 = [(AWDCountersJoinerS *)sCntrsJoiner isEqual:?];

      return v7;
    }

    else
    {

      return 1;
    }
  }

  else
  {

    return 0;
  }
}

- (void)mergeFrom:(id)a3
{
  v10 = a3;
  v4 = [v10 accessoryNodesCountHistogramsCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[AWDCountersDiscoveryJoinS addAccessoryNodesCountHistogram:](self, "addAccessoryNodesCountHistogram:", [v10 accessoryNodesCountHistogramAtIndex:i]);
    }
  }

  sCntrsJoiner = self->_sCntrsJoiner;
  v8 = v10;
  v9 = v10[4];
  if (sCntrsJoiner)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    [(AWDCountersJoinerS *)sCntrsJoiner mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    [(AWDCountersDiscoveryJoinS *)self setSCntrsJoiner:?];
  }

  v8 = v10;
LABEL_10:
}

@end