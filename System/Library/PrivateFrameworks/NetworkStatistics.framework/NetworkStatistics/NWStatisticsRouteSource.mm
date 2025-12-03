@interface NWStatisticsRouteSource
- (NWStatisticsRouteSource)initWithManager:(id)manager destination:(const sockaddr *)destination mask:(const sockaddr *)mask interface:(unsigned int)interface;
- (id)_currentSnapshot;
- (id)description;
- (int)handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events;
@end

@implementation NWStatisticsRouteSource

- (id)_currentSnapshot
{
  v2 = [[NWSRouteSnapshot alloc] initWithCounts:[(NWStatisticsSource *)self _nstat_counts] routeDescriptor:&self->_descriptor sourceIdent:[(NWStatisticsSource *)self reference] seqno:[(NWStatisticsSource *)self snapshotRevision]];

  return v2;
}

- (int)handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events
{
  if (length < 0x78)
  {
    return 1;
  }

  p_descriptor = &self->_descriptor;
  if (!memcmp(&self->_descriptor, descriptor, 0x78uLL))
  {
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

  else
  {
    v9 = *descriptor;
    v10 = *(descriptor + 1);
    v11 = *(descriptor + 3);
    *&p_descriptor->dst.sa.sa_data[6] = *(descriptor + 2);
    *(&p_descriptor->dst.sa + 24) = v11;
    *&p_descriptor->id = v9;
    *&p_descriptor->gateway_id = v10;
    v12 = *(descriptor + 4);
    v13 = *(descriptor + 5);
    v14 = *(descriptor + 6);
    *&p_descriptor->flags = *(descriptor + 14);
    p_descriptor->gateway.v4 = v13;
    *(&p_descriptor->gateway.sa + 1) = v14;
    *&p_descriptor->mask.sa.sa_data[10] = v12;
    return 3;
  }
}

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

    asxprintf(&__ret, v6, 0, "NWSRouteSource %s%N->%I->%N", v7, &p_descriptor->dst, p_descriptor->ifindex, &p_descriptor->gateway);
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
      asxprintf(&__ret, v4, 0, "NWSRouteSource %s%N/%d->%I->%N", v5, &p_descriptor->dst, v3, p_descriptor->ifindex, &p_descriptor->gateway);
    }

    else
    {
      asxprintf(&__ret, v4, 0, "NWSRouteSource %sDefault->%I->%N", v5, p_descriptor->ifindex, &p_descriptor->gateway);
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

- (NWStatisticsRouteSource)initWithManager:(id)manager destination:(const sockaddr *)destination mask:(const sockaddr *)mask interface:(unsigned int)interface
{
  v53 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v30.receiver = self;
  v30.super_class = NWStatisticsRouteSource;
  v11 = [(NWStatisticsSource *)&v30 initWithManager:managerCopy source:0 provider:1];
  if (!v11)
  {
    goto LABEL_5;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  LODWORD(v48) = 1;
  if (destination->sa_len > 0x1CuLL)
  {
    goto LABEL_5;
  }

  __memcpy_chk();
  if (mask)
  {
    if (mask->sa_len > 0x1CuLL)
    {
LABEL_5:
      v12 = 0;
      goto LABEL_26;
    }

    __memcpy_chk();
  }

  interfaceCopy = interface;
  v13 = [managerCopy addSource:v11 request:&v47 length:84];
  v14 = NStatGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    if (v13)
    {
      v15 = "Created";
    }

    else
    {
      v15 = "Failed to create";
    }

    sa_family = destination->sa_family;
    v17 = "Unknown-protocol";
    if (sa_family == 30)
    {
      v17 = "IPv6";
    }

    if (sa_family == 2)
    {
      v18 = "IPv4";
    }

    else
    {
      v18 = v17;
    }

    sa_len = destination->sa_len;
    if (mask)
    {
      v20 = mask->sa_len;
    }

    else
    {
      v20 = 0;
    }

    *buf = 134219778;
    v32 = managerCopy;
    v33 = 2080;
    v34 = v15;
    v35 = 2080;
    v36 = v18;
    v37 = 1040;
    v38 = sa_len;
    v39 = 2096;
    destinationCopy = destination;
    v41 = 1024;
    interfaceCopy2 = interface;
    v43 = 1040;
    v44 = v20;
    v45 = 2096;
    maskCopy = mask;
    _os_log_impl(&dword_25BA3A000, v14, OS_LOG_TYPE_INFO, "Manager %p: %s %s route source to %{network:sockaddr}.*P  interface index %d, mask  %{network:sockaddr}.*P", buf, 0x46u);
  }

  if (([managerCopy mgrflags] & 0x80) != 0)
  {
    destination->sa_family;
    NStatMgrTraceF(managerCopy, "%s Manager %p: %s %s route source to %N on interface %I index %d, mask %N", v21, v22, v23, v24, v25, v26, "[NWStatisticsRouteSource initWithManager:destination:mask:interface:]");
  }

  if (v13)
  {
    v27 = v11;
  }

  else
  {
    v27 = 0;
  }

  v12 = v27;
LABEL_26:

  v28 = *MEMORY[0x277D85DE8];
  return v12;
}

@end