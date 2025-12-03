@interface AWDCountersNetworkS
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)channelSelectionsHistogramAtIndex:(unint64_t)index;
- (unsigned)frameTxpowerHistogramAtIndex:(unint64_t)index;
- (unsigned)nbrBatteryExtensionFactorHistogramAtIndex:(unint64_t)index;
- (unsigned)nbrTxpowerHistogramAtIndex:(unint64_t)index;
- (unsigned)packetLqiHistogramAtIndex:(unint64_t)index;
- (unsigned)packetRssiNbrAccessoryHistogramAtIndex:(unint64_t)index;
- (unsigned)packetRssiNbrRouterHistogramAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDCountersNetworkS

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCountersNetworkS;
  [(AWDCountersNetworkS *)&v3 dealloc];
}

- (unsigned)packetRssiNbrRouterHistogramAtIndex:(unint64_t)index
{
  p_packetRssiNbrRouterHistograms = &self->_packetRssiNbrRouterHistograms;
  count = self->_packetRssiNbrRouterHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_packetRssiNbrRouterHistograms->list[index];
}

- (unsigned)packetRssiNbrAccessoryHistogramAtIndex:(unint64_t)index
{
  p_packetRssiNbrAccessoryHistograms = &self->_packetRssiNbrAccessoryHistograms;
  count = self->_packetRssiNbrAccessoryHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_packetRssiNbrAccessoryHistograms->list[index];
}

- (unsigned)channelSelectionsHistogramAtIndex:(unint64_t)index
{
  p_channelSelectionsHistograms = &self->_channelSelectionsHistograms;
  count = self->_channelSelectionsHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_channelSelectionsHistograms->list[index];
}

- (unsigned)packetLqiHistogramAtIndex:(unint64_t)index
{
  p_packetLqiHistograms = &self->_packetLqiHistograms;
  count = self->_packetLqiHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_packetLqiHistograms->list[index];
}

- (unsigned)frameTxpowerHistogramAtIndex:(unint64_t)index
{
  p_frameTxpowerHistograms = &self->_frameTxpowerHistograms;
  count = self->_frameTxpowerHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_frameTxpowerHistograms->list[index];
}

- (unsigned)nbrTxpowerHistogramAtIndex:(unint64_t)index
{
  p_nbrTxpowerHistograms = &self->_nbrTxpowerHistograms;
  count = self->_nbrTxpowerHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_nbrTxpowerHistograms->list[index];
}

- (unsigned)nbrBatteryExtensionFactorHistogramAtIndex:(unint64_t)index
{
  p_nbrBatteryExtensionFactorHistograms = &self->_nbrBatteryExtensionFactorHistograms;
  count = self->_nbrBatteryExtensionFactorHistograms.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_nbrBatteryExtensionFactorHistograms->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersNetworkS;
  v3 = [(AWDCountersNetworkS *)&v7 description];
  dictionaryRepresentation = [(AWDCountersNetworkS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = PBRepeatedUInt32NSArray();
  [v2 setObject:v3 forKey:@"packet_rssi_nbr_router_histogram"];

  v4 = PBRepeatedUInt32NSArray();
  [v2 setObject:v4 forKey:@"packet_rssi_nbr_accessory_histogram"];

  v5 = PBRepeatedUInt32NSArray();
  [v2 setObject:v5 forKey:@"channel_selections_histogram"];

  v6 = PBRepeatedUInt32NSArray();
  [v2 setObject:v6 forKey:@"packet_lqi_histogram"];

  v7 = PBRepeatedUInt32NSArray();
  [v2 setObject:v7 forKey:@"frame_txpower_histogram"];

  v8 = PBRepeatedUInt32NSArray();
  [v2 setObject:v8 forKey:@"nbr_txpower_histogram"];

  v9 = PBRepeatedUInt32NSArray();
  [v2 setObject:v9 forKey:@"nbr_battery_extension_factor_histogram"];

  return v2;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v20 = toCopy;
  if (self->_packetRssiNbrRouterHistograms.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_packetRssiNbrRouterHistograms.list[v5];
      PBDataWriterWriteUint32Field();
      toCopy = v20;
      ++v5;
    }

    while (v5 < self->_packetRssiNbrRouterHistograms.count);
  }

  if (self->_packetRssiNbrAccessoryHistograms.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_packetRssiNbrAccessoryHistograms.list[v7];
      PBDataWriterWriteUint32Field();
      toCopy = v20;
      ++v7;
    }

    while (v7 < self->_packetRssiNbrAccessoryHistograms.count);
  }

  if (self->_channelSelectionsHistograms.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_channelSelectionsHistograms.list[v9];
      PBDataWriterWriteUint32Field();
      toCopy = v20;
      ++v9;
    }

    while (v9 < self->_channelSelectionsHistograms.count);
  }

  if (self->_packetLqiHistograms.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_packetLqiHistograms.list[v11];
      PBDataWriterWriteUint32Field();
      toCopy = v20;
      ++v11;
    }

    while (v11 < self->_packetLqiHistograms.count);
  }

  if (self->_frameTxpowerHistograms.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_frameTxpowerHistograms.list[v13];
      PBDataWriterWriteUint32Field();
      toCopy = v20;
      ++v13;
    }

    while (v13 < self->_frameTxpowerHistograms.count);
  }

  if (self->_nbrTxpowerHistograms.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_nbrTxpowerHistograms.list[v15];
      PBDataWriterWriteUint32Field();
      toCopy = v20;
      ++v15;
    }

    while (v15 < self->_nbrTxpowerHistograms.count);
  }

  p_nbrBatteryExtensionFactorHistograms = &self->_nbrBatteryExtensionFactorHistograms;
  if (p_nbrBatteryExtensionFactorHistograms->count)
  {
    v18 = 0;
    do
    {
      v19 = p_nbrBatteryExtensionFactorHistograms->list[v18];
      PBDataWriterWriteUint32Field();
      toCopy = v20;
      ++v18;
    }

    while (v18 < p_nbrBatteryExtensionFactorHistograms->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(AWDCountersNetworkS *)self packetRssiNbrRouterHistogramsCount])
  {
    [toCopy clearPacketRssiNbrRouterHistograms];
    packetRssiNbrRouterHistogramsCount = [(AWDCountersNetworkS *)self packetRssiNbrRouterHistogramsCount];
    if (packetRssiNbrRouterHistogramsCount)
    {
      v5 = packetRssiNbrRouterHistogramsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addPacketRssiNbrRouterHistogram:{-[AWDCountersNetworkS packetRssiNbrRouterHistogramAtIndex:](self, "packetRssiNbrRouterHistogramAtIndex:", i)}];
      }
    }
  }

  if ([(AWDCountersNetworkS *)self packetRssiNbrAccessoryHistogramsCount])
  {
    [toCopy clearPacketRssiNbrAccessoryHistograms];
    packetRssiNbrAccessoryHistogramsCount = [(AWDCountersNetworkS *)self packetRssiNbrAccessoryHistogramsCount];
    if (packetRssiNbrAccessoryHistogramsCount)
    {
      v8 = packetRssiNbrAccessoryHistogramsCount;
      for (j = 0; j != v8; ++j)
      {
        [toCopy addPacketRssiNbrAccessoryHistogram:{-[AWDCountersNetworkS packetRssiNbrAccessoryHistogramAtIndex:](self, "packetRssiNbrAccessoryHistogramAtIndex:", j)}];
      }
    }
  }

  if ([(AWDCountersNetworkS *)self channelSelectionsHistogramsCount])
  {
    [toCopy clearChannelSelectionsHistograms];
    channelSelectionsHistogramsCount = [(AWDCountersNetworkS *)self channelSelectionsHistogramsCount];
    if (channelSelectionsHistogramsCount)
    {
      v11 = channelSelectionsHistogramsCount;
      for (k = 0; k != v11; ++k)
      {
        [toCopy addChannelSelectionsHistogram:{-[AWDCountersNetworkS channelSelectionsHistogramAtIndex:](self, "channelSelectionsHistogramAtIndex:", k)}];
      }
    }
  }

  if ([(AWDCountersNetworkS *)self packetLqiHistogramsCount])
  {
    [toCopy clearPacketLqiHistograms];
    packetLqiHistogramsCount = [(AWDCountersNetworkS *)self packetLqiHistogramsCount];
    if (packetLqiHistogramsCount)
    {
      v14 = packetLqiHistogramsCount;
      for (m = 0; m != v14; ++m)
      {
        [toCopy addPacketLqiHistogram:{-[AWDCountersNetworkS packetLqiHistogramAtIndex:](self, "packetLqiHistogramAtIndex:", m)}];
      }
    }
  }

  if ([(AWDCountersNetworkS *)self frameTxpowerHistogramsCount])
  {
    [toCopy clearFrameTxpowerHistograms];
    frameTxpowerHistogramsCount = [(AWDCountersNetworkS *)self frameTxpowerHistogramsCount];
    if (frameTxpowerHistogramsCount)
    {
      v17 = frameTxpowerHistogramsCount;
      for (n = 0; n != v17; ++n)
      {
        [toCopy addFrameTxpowerHistogram:{-[AWDCountersNetworkS frameTxpowerHistogramAtIndex:](self, "frameTxpowerHistogramAtIndex:", n)}];
      }
    }
  }

  if ([(AWDCountersNetworkS *)self nbrTxpowerHistogramsCount])
  {
    [toCopy clearNbrTxpowerHistograms];
    nbrTxpowerHistogramsCount = [(AWDCountersNetworkS *)self nbrTxpowerHistogramsCount];
    if (nbrTxpowerHistogramsCount)
    {
      v20 = nbrTxpowerHistogramsCount;
      for (ii = 0; ii != v20; ++ii)
      {
        [toCopy addNbrTxpowerHistogram:{-[AWDCountersNetworkS nbrTxpowerHistogramAtIndex:](self, "nbrTxpowerHistogramAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDCountersNetworkS *)self nbrBatteryExtensionFactorHistogramsCount])
  {
    [toCopy clearNbrBatteryExtensionFactorHistograms];
    nbrBatteryExtensionFactorHistogramsCount = [(AWDCountersNetworkS *)self nbrBatteryExtensionFactorHistogramsCount];
    if (nbrBatteryExtensionFactorHistogramsCount)
    {
      v23 = nbrBatteryExtensionFactorHistogramsCount;
      for (jj = 0; jj != v23; ++jj)
      {
        [toCopy addNbrBatteryExtensionFactorHistogram:{-[AWDCountersNetworkS nbrBatteryExtensionFactorHistogramAtIndex:](self, "nbrBatteryExtensionFactorHistogramAtIndex:", jj)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual())
  {
    IsEqual = PBRepeatedUInt32IsEqual();

    return IsEqual;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v2 = PBRepeatedUInt32Hash();
  v3 = PBRepeatedUInt32Hash() ^ v2;
  v4 = PBRepeatedUInt32Hash();
  v5 = v3 ^ v4 ^ PBRepeatedUInt32Hash();
  v6 = PBRepeatedUInt32Hash();
  v7 = v6 ^ PBRepeatedUInt32Hash();
  return v5 ^ v7 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  packetRssiNbrRouterHistogramsCount = [fromCopy packetRssiNbrRouterHistogramsCount];
  if (packetRssiNbrRouterHistogramsCount)
  {
    v5 = packetRssiNbrRouterHistogramsCount;
    for (i = 0; i != v5; ++i)
    {
      -[AWDCountersNetworkS addPacketRssiNbrRouterHistogram:](self, "addPacketRssiNbrRouterHistogram:", [fromCopy packetRssiNbrRouterHistogramAtIndex:i]);
    }
  }

  packetRssiNbrAccessoryHistogramsCount = [fromCopy packetRssiNbrAccessoryHistogramsCount];
  if (packetRssiNbrAccessoryHistogramsCount)
  {
    v8 = packetRssiNbrAccessoryHistogramsCount;
    for (j = 0; j != v8; ++j)
    {
      -[AWDCountersNetworkS addPacketRssiNbrAccessoryHistogram:](self, "addPacketRssiNbrAccessoryHistogram:", [fromCopy packetRssiNbrAccessoryHistogramAtIndex:j]);
    }
  }

  channelSelectionsHistogramsCount = [fromCopy channelSelectionsHistogramsCount];
  if (channelSelectionsHistogramsCount)
  {
    v11 = channelSelectionsHistogramsCount;
    for (k = 0; k != v11; ++k)
    {
      -[AWDCountersNetworkS addChannelSelectionsHistogram:](self, "addChannelSelectionsHistogram:", [fromCopy channelSelectionsHistogramAtIndex:k]);
    }
  }

  packetLqiHistogramsCount = [fromCopy packetLqiHistogramsCount];
  if (packetLqiHistogramsCount)
  {
    v14 = packetLqiHistogramsCount;
    for (m = 0; m != v14; ++m)
    {
      -[AWDCountersNetworkS addPacketLqiHistogram:](self, "addPacketLqiHistogram:", [fromCopy packetLqiHistogramAtIndex:m]);
    }
  }

  frameTxpowerHistogramsCount = [fromCopy frameTxpowerHistogramsCount];
  if (frameTxpowerHistogramsCount)
  {
    v17 = frameTxpowerHistogramsCount;
    for (n = 0; n != v17; ++n)
    {
      -[AWDCountersNetworkS addFrameTxpowerHistogram:](self, "addFrameTxpowerHistogram:", [fromCopy frameTxpowerHistogramAtIndex:n]);
    }
  }

  nbrTxpowerHistogramsCount = [fromCopy nbrTxpowerHistogramsCount];
  if (nbrTxpowerHistogramsCount)
  {
    v20 = nbrTxpowerHistogramsCount;
    for (ii = 0; ii != v20; ++ii)
    {
      -[AWDCountersNetworkS addNbrTxpowerHistogram:](self, "addNbrTxpowerHistogram:", [fromCopy nbrTxpowerHistogramAtIndex:ii]);
    }
  }

  nbrBatteryExtensionFactorHistogramsCount = [fromCopy nbrBatteryExtensionFactorHistogramsCount];
  if (nbrBatteryExtensionFactorHistogramsCount)
  {
    v23 = nbrBatteryExtensionFactorHistogramsCount;
    for (jj = 0; jj != v23; ++jj)
    {
      -[AWDCountersNetworkS addNbrBatteryExtensionFactorHistogram:](self, "addNbrBatteryExtensionFactorHistogram:", [fromCopy nbrBatteryExtensionFactorHistogramAtIndex:jj]);
    }
  }
}

@end