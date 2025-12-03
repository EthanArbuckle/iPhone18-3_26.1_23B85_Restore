@interface AWDCountersDiscoveryJoinS
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unsigned)accessoryNodesCountHistogramAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDCountersDiscoveryJoinS

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCountersDiscoveryJoinS;
  [(AWDCountersDiscoveryJoinS *)&v3 dealloc];
}

- (unsigned)accessoryNodesCountHistogramAtIndex:(unint64_t)index
{
  p_accessoryNodesCountHistograms = &self->_accessoryNodesCountHistograms;
  count = self->_accessoryNodesCountHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_accessoryNodesCountHistograms->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersDiscoveryJoinS;
  v3 = [(AWDCountersDiscoveryJoinS *)&v7 description];
  dictionaryRepresentation = [(AWDCountersDiscoveryJoinS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    dictionaryRepresentation = [(AWDCountersJoinerS *)sCntrsJoiner dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"s_cntrs_joiner"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_accessoryNodesCountHistograms.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_accessoryNodesCountHistograms.list[v5];
      PBDataWriterWriteUint32Field();
      toCopy = v7;
      ++v5;
    }

    while (v5 < self->_accessoryNodesCountHistograms.count);
  }

  if (self->_sCntrsJoiner)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(AWDCountersDiscoveryJoinS *)self accessoryNodesCountHistogramsCount])
  {
    [toCopy clearAccessoryNodesCountHistograms];
    accessoryNodesCountHistogramsCount = [(AWDCountersDiscoveryJoinS *)self accessoryNodesCountHistogramsCount];
    if (accessoryNodesCountHistogramsCount)
    {
      v5 = accessoryNodesCountHistogramsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addAccessoryNodesCountHistogram:{-[AWDCountersDiscoveryJoinS accessoryNodesCountHistogramAtIndex:](self, "accessoryNodesCountHistogramAtIndex:", i)}];
      }
    }
  }

  if (self->_sCntrsJoiner)
  {
    [toCopy setSCntrsJoiner:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedUInt32Copy();
  v6 = [(AWDCountersJoinerS *)self->_sCntrsJoiner copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && PBRepeatedUInt32IsEqual())
  {
    sCntrsJoiner = self->_sCntrsJoiner;
    if (sCntrsJoiner | equalCopy[4])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  accessoryNodesCountHistogramsCount = [fromCopy accessoryNodesCountHistogramsCount];
  if (accessoryNodesCountHistogramsCount)
  {
    v5 = accessoryNodesCountHistogramsCount;
    for (i = 0; i != v5; ++i)
    {
      -[AWDCountersDiscoveryJoinS addAccessoryNodesCountHistogram:](self, "addAccessoryNodesCountHistogram:", [fromCopy accessoryNodesCountHistogramAtIndex:i]);
    }
  }

  sCntrsJoiner = self->_sCntrsJoiner;
  v8 = fromCopy;
  v9 = fromCopy[4];
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

  v8 = fromCopy;
LABEL_10:
}

@end