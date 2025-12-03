@interface NWStatisticsTCPSource
- (NWStatisticsTCPSource)initWithManager:(id)manager local:(const sockaddr *)local remote:(const sockaddr *)remote;
- (id)_currentSnapshot;
- (id)description;
- (int)handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events;
@end

@implementation NWStatisticsTCPSource

- (id)_currentSnapshot
{
  v2 = [[NWSTCPSnapshot alloc] initWithCounts:[(NWStatisticsSource *)self _nstat_counts] TCPDescriptor:&self->_descriptor sourceIdent:[(NWStatisticsSource *)self reference] events:self->_eventFlags seqno:[(NWStatisticsSource *)self snapshotRevision] provider:[(NWStatisticsSource *)self provider]];

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
  asxprintf(&__ret, v3, 0, "NWSTCPSource %N<->%N@%I", &self->_descriptor.local, &self->_descriptor.remote, self->_descriptor.ifindex);
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

- (NWStatisticsTCPSource)initWithManager:(id)manager local:(const sockaddr *)local remote:(const sockaddr *)remote
{
  v43 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v25.receiver = self;
  v25.super_class = NWStatisticsTCPSource;
  v9 = [(NWStatisticsSource *)&v25 initWithManager:managerCopy source:0 provider:2];
  if (!v9)
  {
    goto LABEL_5;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  LODWORD(v39) = 2;
  if (local->sa_len > 0x1CuLL)
  {
    goto LABEL_5;
  }

  __memcpy_chk();
  if (remote)
  {
    if (remote->sa_len > 0x1CuLL)
    {
LABEL_5:
      v10 = 0;
      goto LABEL_22;
    }

    __memcpy_chk();
  }

  else
  {
    BYTE5(v41) = local->sa_family;
    BYTE4(v41) = BYTE5(v41);
  }

  v11 = [managerCopy addSource:v9 request:&v38 length:80];
  v12 = NStatGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if (v11)
    {
      v13 = "Created";
    }

    else
    {
      v13 = "Failed to create";
    }

    sa_len = local->sa_len;
    if (remote)
    {
      v15 = remote->sa_len;
    }

    else
    {
      v15 = 0;
    }

    *buf = 134219266;
    v27 = managerCopy;
    v28 = 2080;
    v29 = v13;
    v30 = 1040;
    v31 = sa_len;
    v32 = 2096;
    localCopy = local;
    v34 = 1040;
    v35 = v15;
    v36 = 2096;
    remoteCopy = remote;
    _os_log_impl(&dword_25BA3A000, v12, OS_LOG_TYPE_INFO, "Manager %p: %s TCP source for local address %{network:sockaddr}.*P, remote address %{network:sockaddr}.*P", buf, 0x36u);
  }

  if (([managerCopy mgrflags] & 0x80) != 0)
  {
    NStatMgrTraceF(managerCopy, "%s Manager %p: %s TCP source for local address %N, remote address %N", v16, v17, v18, v19, v20, v21, "[NWStatisticsTCPSource initWithManager:local:remote:]");
  }

  if (v11)
  {
    v22 = v9;
  }

  else
  {
    v22 = 0;
  }

  v10 = v22;
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

@end