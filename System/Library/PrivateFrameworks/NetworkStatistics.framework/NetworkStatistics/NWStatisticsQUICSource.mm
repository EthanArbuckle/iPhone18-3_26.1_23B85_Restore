@interface NWStatisticsQUICSource
- (id)_currentSnapshot;
- (id)description;
- (int)handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events;
@end

@implementation NWStatisticsQUICSource

- (id)_currentSnapshot
{
  v2 = [[NWSQUICSnapshot alloc] initWithCounts:[(NWStatisticsSource *)self _nstat_counts] QUICDescriptor:&self->_descriptor sourceIdent:[(NWStatisticsSource *)self reference] events:self->_eventFlags seqno:[(NWStatisticsSource *)self snapshotRevision] provider:[(NWStatisticsSource *)self provider]];

  return v2;
}

- (int)handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events
{
  if (length < 0x158)
  {
    return 1;
  }

  if (self->_eventFlags != events)
  {
    self->_eventFlags = events;
    p_descriptor = &self->_descriptor;
    goto LABEL_7;
  }

  if (memcmp(&self->_descriptor, descriptor, 0x158uLL))
  {
    p_descriptor = &self->_descriptor;
LABEL_7:
    memcpy(p_descriptor, descriptor, sizeof(nstat_tcp_descriptor));
    return 3;
  }

  manager = [(NWStatisticsSource *)self manager];
  mgrflags = [manager mgrflags];

  if ((mgrflags & 4) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)description
{
  __ret = 0;
  v3 = printf_domain();
  asxprintf(&__ret, v3, 0, "NWSQUICSource %N<->%N@%I", &self->_descriptor.local, &self->_descriptor.remote, self->_descriptor.ifindex);
  if (__ret)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithCString:__ret encoding:4];
    free(__ret);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end