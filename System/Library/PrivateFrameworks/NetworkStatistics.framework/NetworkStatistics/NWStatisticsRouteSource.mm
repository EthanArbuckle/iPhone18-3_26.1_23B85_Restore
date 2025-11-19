@interface NWStatisticsRouteSource
- (NWStatisticsRouteSource)initWithManager:(id)a3 destination:(const sockaddr *)a4 mask:(const sockaddr *)a5 interface:(unsigned int)a6;
- (id)_currentSnapshot;
- (id)description;
- (int)handleDescriptor:(void *)a3 length:(unint64_t)a4 events:(unint64_t)a5;
@end

@implementation NWStatisticsRouteSource

- (id)_currentSnapshot
{
  v2 = [[NWSRouteSnapshot alloc] initWithCounts:[(NWStatisticsSource *)self _nstat_counts] routeDescriptor:&self->_descriptor sourceIdent:[(NWStatisticsSource *)self reference] seqno:[(NWStatisticsSource *)self snapshotRevision]];

  return v2;
}

- (int)handleDescriptor:(void *)a3 length:(unint64_t)a4 events:(unint64_t)a5
{
  if (a4 < 0x78)
  {
    return 1;
  }

  p_descriptor = &self->_descriptor;
  if (!memcmp(&self->_descriptor, a3, 0x78uLL))
  {
    v15 = [(NWStatisticsSource *)self manager];
    v16 = [v15 mgrflags];

    if ((v16 & 4) != 0)
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
    v9 = *a3;
    v10 = *(a3 + 1);
    v11 = *(a3 + 3);
    *&p_descriptor->dst.sa.sa_data[6] = *(a3 + 2);
    *(&p_descriptor->dst.sa + 24) = v11;
    *&p_descriptor->id = v9;
    *&p_descriptor->gateway_id = v10;
    v12 = *(a3 + 4);
    v13 = *(a3 + 5);
    v14 = *(a3 + 6);
    *&p_descriptor->flags = *(a3 + 14);
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

- (NWStatisticsRouteSource)initWithManager:(id)a3 destination:(const sockaddr *)a4 mask:(const sockaddr *)a5 interface:(unsigned int)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v30.receiver = self;
  v30.super_class = NWStatisticsRouteSource;
  v11 = [(NWStatisticsSource *)&v30 initWithManager:v10 source:0 provider:1];
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
  if (a4->sa_len > 0x1CuLL)
  {
    goto LABEL_5;
  }

  __memcpy_chk();
  if (a5)
  {
    if (a5->sa_len > 0x1CuLL)
    {
LABEL_5:
      v12 = 0;
      goto LABEL_26;
    }

    __memcpy_chk();
  }

  v52 = a6;
  v13 = [v10 addSource:v11 request:&v47 length:84];
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

    sa_family = a4->sa_family;
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

    sa_len = a4->sa_len;
    if (a5)
    {
      v20 = a5->sa_len;
    }

    else
    {
      v20 = 0;
    }

    *buf = 134219778;
    v32 = v10;
    v33 = 2080;
    v34 = v15;
    v35 = 2080;
    v36 = v18;
    v37 = 1040;
    v38 = sa_len;
    v39 = 2096;
    v40 = a4;
    v41 = 1024;
    v42 = a6;
    v43 = 1040;
    v44 = v20;
    v45 = 2096;
    v46 = a5;
    _os_log_impl(&dword_25BA3A000, v14, OS_LOG_TYPE_INFO, "Manager %p: %s %s route source to %{network:sockaddr}.*P  interface index %d, mask  %{network:sockaddr}.*P", buf, 0x46u);
  }

  if (([v10 mgrflags] & 0x80) != 0)
  {
    a4->sa_family;
    NStatMgrTraceF(v10, "%s Manager %p: %s %s route source to %N on interface %I index %d, mask %N", v21, v22, v23, v24, v25, v26, "[NWStatisticsRouteSource initWithManager:destination:mask:interface:]");
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