@interface NWSRouteSnapshot
- (NSData)destination;
- (NSData)gateway;
- (NSData)mask;
- (NWSRouteSnapshot)initWithCounts:(const nstat_counts *)a3 routeDescriptor:(nstat_route_descriptor *)a4 sourceIdent:(unint64_t)a5 seqno:(unint64_t)a6;
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
- (void)_initWithDescriptor:(nstat_route_descriptor *)a3;
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

    v9 = [(NWSRouteSnapshot *)self destination];

    if (v9)
    {
      v10 = MEMORY[0x277CBEA90];
      v11 = [(NWSRouteSnapshot *)self destination];
      v12 = [v10 dataWithData:v11];
      [v4 setObject:v12 forKeyedSubscript:kNStatSrcKeyRouteDestination];
    }

    v13 = [(NWSRouteSnapshot *)self mask];

    if (v13)
    {
      v14 = MEMORY[0x277CBEA90];
      v15 = [(NWSRouteSnapshot *)self mask];
      v16 = [v14 dataWithData:v15];
      [v4 setObject:v16 forKeyedSubscript:kNStatSrcKeyRouteMask];
    }

    v17 = [(NWSRouteSnapshot *)self gateway];

    if (v17)
    {
      v18 = MEMORY[0x277CBEA90];
      v19 = [(NWSRouteSnapshot *)self gateway];
      v20 = [v18 dataWithData:v19];
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

- (void)_initWithDescriptor:(nstat_route_descriptor *)a3
{
  v3 = *(&a3->dst.sa + 24);
  v5 = *&a3->id;
  v4 = *&a3->gateway_id;
  *&self->_descriptor.dst.sa.sa_data[6] = *&a3->dst.sa.sa_data[6];
  *(&self->_descriptor.dst.sa + 24) = v3;
  *&self->_descriptor.id = v5;
  *&self->_descriptor.gateway_id = v4;
  v7 = a3->gateway.v4;
  v6 = *(&a3->gateway.sa + 1);
  v8 = *&a3->mask.sa.sa_data[10];
  *&self->_descriptor.flags = *&a3->flags;
  self->_descriptor.gateway.v4 = v7;
  *(&self->_descriptor.gateway.sa + 1) = v6;
  *&self->_descriptor.mask.sa.sa_data[10] = v8;
}

- (NWSRouteSnapshot)initWithCounts:(const nstat_counts *)a3 routeDescriptor:(nstat_route_descriptor *)a4 sourceIdent:(unint64_t)a5 seqno:(unint64_t)a6
{
  v10.receiver = self;
  v10.super_class = NWSRouteSnapshot;
  v7 = [(NWSSnapshot *)&v10 _initWithCounts:a3 sourceIdent:a5 seqno:a6];
  v8 = v7;
  if (v7)
  {
    [(NWSRouteSnapshot *)v7 _initWithDescriptor:a4];
  }

  return v8;
}

@end