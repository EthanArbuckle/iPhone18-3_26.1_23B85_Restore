@interface AWDCountersNetworkS
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)channelSelectionsHistogramAtIndex:(unint64_t)a3;
- (unsigned)frameTxpowerHistogramAtIndex:(unint64_t)a3;
- (unsigned)nbrBatteryExtensionFactorHistogramAtIndex:(unint64_t)a3;
- (unsigned)nbrTxpowerHistogramAtIndex:(unint64_t)a3;
- (unsigned)packetLqiHistogramAtIndex:(unint64_t)a3;
- (unsigned)packetRssiNbrAccessoryHistogramAtIndex:(unint64_t)a3;
- (unsigned)packetRssiNbrRouterHistogramAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (unsigned)packetRssiNbrRouterHistogramAtIndex:(unint64_t)a3
{
  p_packetRssiNbrRouterHistograms = &self->_packetRssiNbrRouterHistograms;
  count = self->_packetRssiNbrRouterHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_packetRssiNbrRouterHistograms->list[a3];
}

- (unsigned)packetRssiNbrAccessoryHistogramAtIndex:(unint64_t)a3
{
  p_packetRssiNbrAccessoryHistograms = &self->_packetRssiNbrAccessoryHistograms;
  count = self->_packetRssiNbrAccessoryHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_packetRssiNbrAccessoryHistograms->list[a3];
}

- (unsigned)channelSelectionsHistogramAtIndex:(unint64_t)a3
{
  p_channelSelectionsHistograms = &self->_channelSelectionsHistograms;
  count = self->_channelSelectionsHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_channelSelectionsHistograms->list[a3];
}

- (unsigned)packetLqiHistogramAtIndex:(unint64_t)a3
{
  p_packetLqiHistograms = &self->_packetLqiHistograms;
  count = self->_packetLqiHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_packetLqiHistograms->list[a3];
}

- (unsigned)frameTxpowerHistogramAtIndex:(unint64_t)a3
{
  p_frameTxpowerHistograms = &self->_frameTxpowerHistograms;
  count = self->_frameTxpowerHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_frameTxpowerHistograms->list[a3];
}

- (unsigned)nbrTxpowerHistogramAtIndex:(unint64_t)a3
{
  p_nbrTxpowerHistograms = &self->_nbrTxpowerHistograms;
  count = self->_nbrTxpowerHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_nbrTxpowerHistograms->list[a3];
}

- (unsigned)nbrBatteryExtensionFactorHistogramAtIndex:(unint64_t)a3
{
  p_nbrBatteryExtensionFactorHistograms = &self->_nbrBatteryExtensionFactorHistograms;
  count = self->_nbrBatteryExtensionFactorHistograms.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_nbrBatteryExtensionFactorHistograms->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersNetworkS;
  v3 = [(AWDCountersNetworkS *)&v7 description];
  v4 = [(AWDCountersNetworkS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v20 = v4;
  if (self->_packetRssiNbrRouterHistograms.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_packetRssiNbrRouterHistograms.list[v5];
      PBDataWriterWriteUint32Field();
      v4 = v20;
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
      v4 = v20;
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
      v4 = v20;
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
      v4 = v20;
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
      v4 = v20;
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
      v4 = v20;
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
      v4 = v20;
      ++v18;
    }

    while (v18 < p_nbrBatteryExtensionFactorHistograms->count);
  }
}

- (void)copyTo:(id)a3
{
  v25 = a3;
  if ([(AWDCountersNetworkS *)self packetRssiNbrRouterHistogramsCount])
  {
    [v25 clearPacketRssiNbrRouterHistograms];
    v4 = [(AWDCountersNetworkS *)self packetRssiNbrRouterHistogramsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v25 addPacketRssiNbrRouterHistogram:{-[AWDCountersNetworkS packetRssiNbrRouterHistogramAtIndex:](self, "packetRssiNbrRouterHistogramAtIndex:", i)}];
      }
    }
  }

  if ([(AWDCountersNetworkS *)self packetRssiNbrAccessoryHistogramsCount])
  {
    [v25 clearPacketRssiNbrAccessoryHistograms];
    v7 = [(AWDCountersNetworkS *)self packetRssiNbrAccessoryHistogramsCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        [v25 addPacketRssiNbrAccessoryHistogram:{-[AWDCountersNetworkS packetRssiNbrAccessoryHistogramAtIndex:](self, "packetRssiNbrAccessoryHistogramAtIndex:", j)}];
      }
    }
  }

  if ([(AWDCountersNetworkS *)self channelSelectionsHistogramsCount])
  {
    [v25 clearChannelSelectionsHistograms];
    v10 = [(AWDCountersNetworkS *)self channelSelectionsHistogramsCount];
    if (v10)
    {
      v11 = v10;
      for (k = 0; k != v11; ++k)
      {
        [v25 addChannelSelectionsHistogram:{-[AWDCountersNetworkS channelSelectionsHistogramAtIndex:](self, "channelSelectionsHistogramAtIndex:", k)}];
      }
    }
  }

  if ([(AWDCountersNetworkS *)self packetLqiHistogramsCount])
  {
    [v25 clearPacketLqiHistograms];
    v13 = [(AWDCountersNetworkS *)self packetLqiHistogramsCount];
    if (v13)
    {
      v14 = v13;
      for (m = 0; m != v14; ++m)
      {
        [v25 addPacketLqiHistogram:{-[AWDCountersNetworkS packetLqiHistogramAtIndex:](self, "packetLqiHistogramAtIndex:", m)}];
      }
    }
  }

  if ([(AWDCountersNetworkS *)self frameTxpowerHistogramsCount])
  {
    [v25 clearFrameTxpowerHistograms];
    v16 = [(AWDCountersNetworkS *)self frameTxpowerHistogramsCount];
    if (v16)
    {
      v17 = v16;
      for (n = 0; n != v17; ++n)
      {
        [v25 addFrameTxpowerHistogram:{-[AWDCountersNetworkS frameTxpowerHistogramAtIndex:](self, "frameTxpowerHistogramAtIndex:", n)}];
      }
    }
  }

  if ([(AWDCountersNetworkS *)self nbrTxpowerHistogramsCount])
  {
    [v25 clearNbrTxpowerHistograms];
    v19 = [(AWDCountersNetworkS *)self nbrTxpowerHistogramsCount];
    if (v19)
    {
      v20 = v19;
      for (ii = 0; ii != v20; ++ii)
      {
        [v25 addNbrTxpowerHistogram:{-[AWDCountersNetworkS nbrTxpowerHistogramAtIndex:](self, "nbrTxpowerHistogramAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDCountersNetworkS *)self nbrBatteryExtensionFactorHistogramsCount])
  {
    [v25 clearNbrBatteryExtensionFactorHistograms];
    v22 = [(AWDCountersNetworkS *)self nbrBatteryExtensionFactorHistogramsCount];
    if (v22)
    {
      v23 = v22;
      for (jj = 0; jj != v23; ++jj)
      {
        [v25 addNbrBatteryExtensionFactorHistogram:{-[AWDCountersNetworkS nbrBatteryExtensionFactorHistogramAtIndex:](self, "nbrBatteryExtensionFactorHistogramAtIndex:", jj)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()] && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual())
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

- (void)mergeFrom:(id)a3
{
  v25 = a3;
  v4 = [v25 packetRssiNbrRouterHistogramsCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[AWDCountersNetworkS addPacketRssiNbrRouterHistogram:](self, "addPacketRssiNbrRouterHistogram:", [v25 packetRssiNbrRouterHistogramAtIndex:i]);
    }
  }

  v7 = [v25 packetRssiNbrAccessoryHistogramsCount];
  if (v7)
  {
    v8 = v7;
    for (j = 0; j != v8; ++j)
    {
      -[AWDCountersNetworkS addPacketRssiNbrAccessoryHistogram:](self, "addPacketRssiNbrAccessoryHistogram:", [v25 packetRssiNbrAccessoryHistogramAtIndex:j]);
    }
  }

  v10 = [v25 channelSelectionsHistogramsCount];
  if (v10)
  {
    v11 = v10;
    for (k = 0; k != v11; ++k)
    {
      -[AWDCountersNetworkS addChannelSelectionsHistogram:](self, "addChannelSelectionsHistogram:", [v25 channelSelectionsHistogramAtIndex:k]);
    }
  }

  v13 = [v25 packetLqiHistogramsCount];
  if (v13)
  {
    v14 = v13;
    for (m = 0; m != v14; ++m)
    {
      -[AWDCountersNetworkS addPacketLqiHistogram:](self, "addPacketLqiHistogram:", [v25 packetLqiHistogramAtIndex:m]);
    }
  }

  v16 = [v25 frameTxpowerHistogramsCount];
  if (v16)
  {
    v17 = v16;
    for (n = 0; n != v17; ++n)
    {
      -[AWDCountersNetworkS addFrameTxpowerHistogram:](self, "addFrameTxpowerHistogram:", [v25 frameTxpowerHistogramAtIndex:n]);
    }
  }

  v19 = [v25 nbrTxpowerHistogramsCount];
  if (v19)
  {
    v20 = v19;
    for (ii = 0; ii != v20; ++ii)
    {
      -[AWDCountersNetworkS addNbrTxpowerHistogram:](self, "addNbrTxpowerHistogram:", [v25 nbrTxpowerHistogramAtIndex:ii]);
    }
  }

  v22 = [v25 nbrBatteryExtensionFactorHistogramsCount];
  if (v22)
  {
    v23 = v22;
    for (jj = 0; jj != v23; ++jj)
    {
      -[AWDCountersNetworkS addNbrBatteryExtensionFactorHistogram:](self, "addNbrBatteryExtensionFactorHistogram:", [v25 nbrBatteryExtensionFactorHistogramAtIndex:jj]);
    }
  }
}

@end