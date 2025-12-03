@interface NWSRouteSnapshot
- (NSData)destination;
- (NSData)gateway;
- (NSData)mask;
- (NWSRouteSnapshot)initWithCounts:(const nstat_counts *)counts routeDescriptor:(nstat_route_descriptor *)descriptor sourceIdent:(unint64_t)ident seqno:(unint64_t)seqno;
- (double)rttAverage;
- (double)rttMinimum;
- (double)rttVariation;
- (id)description;
- (id)traditionalDictionary;
- (unsigned)connectAttempts;
- (unsigned)connectSuccesses;
- (unsigned)rxDuplicateBytes;
- (unsigned)rxOutOfOrderBytes;
- (unsigned)txRetransmittedBytes;
- (void)_initWithDescriptor:(nstat_route_descriptor *)descriptor;
@end

@implementation NWSRouteSnapshot

- (id)description
{
  __ret = 0;
  p_descriptor = &self->_descriptor;
  if ((self->_descriptor.flags & 4) != 0)
  {
    v6 = printf_domain();
    v7 = "Scoped ";
    if ((p_descriptor->flags & 0x1000000) == 0)
    {
      v7 = "";
    }

    asxprintf(&__ret, v6, 0, "NWRouteSnapshot %s%N->%I->%N", v7, &p_descriptor->dst, p_descriptor->ifindex, &p_descriptor->gateway);
  }

  else
  {
    v3 = maskLeadingBitsCount(&self->_descriptor.mask);
    v4 = printf_domain();
    if ((p_descriptor->flags & 0x1000000) != 0)
    {
      v5 = "Scoped ";
    }

    else
    {
      v5 = "";
    }

    if (v3)
    {
      asxprintf(&__ret, v4, 0, "NWRouteSnapshot %s%N/%d->%I->%N", v5, &p_descriptor->dst, v3, p_descriptor->ifindex, &p_descriptor->gateway);
    }

    else
    {
      asxprintf(&__ret, v4, 0, "NWRouteSnapshot %sDefault->%I->%N", v5, p_descriptor->ifindex, &p_descriptor->gateway);
    }
  }

  if (__ret)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithCString:__ret encoding:4];
    free(__ret);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unsigned)connectAttempts
{
  v3.receiver = self;
  v3.super_class = NWSRouteSnapshot;
  return [(NWSSnapshot *)&v3 _connectAttempts];
}

- (NSData)gateway
{
  gateway = self->_gateway;
  if (!gateway)
  {
    if (self->_descriptor.gateway.v4.sin_len)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_descriptor.gateway length:self->_descriptor.gateway.v4.sin_len];
      v5 = self->_gateway;
      self->_gateway = v4;

      gateway = self->_gateway;
    }

    else
    {
      gateway = 0;
    }
  }

  return gateway;
}

- (unsigned)connectSuccesses
{
  v3.receiver = self;
  v3.super_class = NWSRouteSnapshot;
  return [(NWSSnapshot *)&v3 _connectSuccesses];
}

- (unsigned)rxDuplicateBytes
{
  v3.receiver = self;
  v3.super_class = NWSRouteSnapshot;
  return [(NWSSnapshot *)&v3 _rxDuplicateBytes];
}

- (unsigned)rxOutOfOrderBytes
{
  v3.receiver = self;
  v3.super_class = NWSRouteSnapshot;
  return [(NWSSnapshot *)&v3 _rxOutOfOrderBytes];
}

- (unsigned)txRetransmittedBytes
{
  v3.receiver = self;
  v3.super_class = NWSRouteSnapshot;
  return [(NWSSnapshot *)&v3 _txRetransmittedBytes];
}

- (double)rttMinimum
{
  v3.receiver = self;
  v3.super_class = NWSRouteSnapshot;
  [(NWSSnapshot *)&v3 _rttMinimum];
  return result;
}

- (double)rttAverage
{
  v3.receiver = self;
  v3.super_class = NWSRouteSnapshot;
  [(NWSSnapshot *)&v3 _rttAverage];
  return result;
}

- (double)rttVariation
{
  v3.receiver = self;
  v3.super_class = NWSRouteSnapshot;
  [(NWSSnapshot *)&v3 _rttVariation];
  return result;
}

- (NSData)destination
{
  destination = self->_destination;
  if (!destination)
  {
    if (self->_descriptor.dst.v4.sin_len)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_descriptor.dst length:self->_descriptor.dst.v4.sin_len];
      v5 = self->_destination;
      self->_destination = v4;

      destination = self->_destination;
    }

    else
    {
      destination = 0;
    }
  }

  return destination;
}

- (NSData)mask
{
  mask = self->_mask;
  if (!mask)
  {
    if (self->_descriptor.mask.v4.sin_len)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_descriptor.mask length:self->_descriptor.mask.v4.sin_len];
      v5 = self->_mask;
      self->_mask = v4;

      mask = self->_mask;
    }

    else
    {
      mask = 0;
    }
  }

  return mask;
}

- (id)traditionalDictionary
{
  v25.receiver = self;
  v25.super_class = NWSRouteSnapshot;
  v3 = [(NWSSnapshot *)&v25 _createCountsForProvider:1];
  v4 = v3;
  if (v3)
  {
    [v3 setObject:kNStatProviderRoute forKeyedSubscript:kNStatSrcKeyProvider];
    p_descriptor = &self->_descriptor;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_descriptor.id];
    [v4 setObject:v6 forKeyedSubscript:kNStatSrcKeyRouteID];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_descriptor.parent_id];
    [v4 setObject:v7 forKeyedSubscript:kNStatSrcKeyRouteParentID];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_descriptor.gateway_id];
    [v4 setObject:v8 forKeyedSubscript:kNStatSrcKeyRouteGatewayID];

    destination = [(NWSRouteSnapshot *)self destination];

    if (destination)
    {
      v10 = MEMORY[0x277CBEA90];
      destination2 = [(NWSRouteSnapshot *)self destination];
      v12 = [v10 dataWithData:destination2];
      [v4 setObject:v12 forKeyedSubscript:kNStatSrcKeyRouteDestination];
    }

    mask = [(NWSRouteSnapshot *)self mask];

    if (mask)
    {
      v14 = MEMORY[0x277CBEA90];
      mask2 = [(NWSRouteSnapshot *)self mask];
      v16 = [v14 dataWithData:mask2];
      [v4 setObject:v16 forKeyedSubscript:kNStatSrcKeyRouteMask];
    }

    gateway = [(NWSRouteSnapshot *)self gateway];

    if (gateway)
    {
      v18 = MEMORY[0x277CBEA90];
      gateway2 = [(NWSRouteSnapshot *)self gateway];
      v20 = [v18 dataWithData:gateway2];
      [v4 setObject:v20 forKeyedSubscript:kNStatSrcKeyRouteGateway];
    }

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:p_descriptor->ifindex];
    [v4 setObject:v21 forKeyedSubscript:kNStatSrcKeyInterface];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:p_descriptor->flags];
    [v4 setObject:v22 forKeyedSubscript:kNStatSrcKeyRouteFlags];

    v23 = v4;
  }

  return v4;
}

- (void)_initWithDescriptor:(nstat_route_descriptor *)descriptor
{
  v3 = *(&descriptor->dst.sa + 24);
  v5 = *&descriptor->id;
  v4 = *&descriptor->gateway_id;
  *&self->_descriptor.dst.sa.sa_data[6] = *&descriptor->dst.sa.sa_data[6];
  *(&self->_descriptor.dst.sa + 24) = v3;
  *&self->_descriptor.id = v5;
  *&self->_descriptor.gateway_id = v4;
  v7 = descriptor->gateway.v4;
  v6 = *(&descriptor->gateway.sa + 1);
  v8 = *&descriptor->mask.sa.sa_data[10];
  *&self->_descriptor.flags = *&descriptor->flags;
  self->_descriptor.gateway.v4 = v7;
  *(&self->_descriptor.gateway.sa + 1) = v6;
  *&self->_descriptor.mask.sa.sa_data[10] = v8;
}

- (NWSRouteSnapshot)initWithCounts:(const nstat_counts *)counts routeDescriptor:(nstat_route_descriptor *)descriptor sourceIdent:(unint64_t)ident seqno:(unint64_t)seqno
{
  v10.receiver = self;
  v10.super_class = NWSRouteSnapshot;
  v7 = [(NWSSnapshot *)&v10 _initWithCounts:counts sourceIdent:ident seqno:seqno];
  v8 = v7;
  if (v7)
  {
    [(NWSRouteSnapshot *)v7 _initWithDescriptor:descriptor];
  }

  return v8;
}

@end