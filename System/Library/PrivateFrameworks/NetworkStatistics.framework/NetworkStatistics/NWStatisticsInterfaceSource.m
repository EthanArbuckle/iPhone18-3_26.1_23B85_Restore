@interface NWStatisticsInterfaceSource
- (NWStatisticsInterfaceSource)initWithManager:(id)a3 interface:(int64_t)a4 threshold:(int64_t)a5;
- (id)_currentSnapshot;
- (id)description;
- (int)handleDescriptor:(void *)a3 length:(unint64_t)a4 events:(unint64_t)a5;
@end

@implementation NWStatisticsInterfaceSource

- (int)handleDescriptor:(void *)a3 length:(unint64_t)a4 events:(unint64_t)a5
{
  if (a4 < 0xF8)
  {
    return 1;
  }

  p_descriptor = &self->_descriptor;
  if (!memcmp(&self->_descriptor, a3, 0xF8uLL))
  {
    v21 = [(NWStatisticsSource *)self manager];
    v22 = [v21 mgrflags];

    if ((v22 & 4) != 0)
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
    *&p_descriptor->link_status.u.wifi.ul_min_latency = *(a3 + 2);
    *&p_descriptor->link_status.u.wifi.ul_bytes_lost = v11;
    *&p_descriptor->threshold = v9;
    *&p_descriptor->link_status.u.cellular.valid_bitmask = v10;
    v12 = *(a3 + 4);
    v13 = *(a3 + 5);
    v14 = *(a3 + 7);
    *&p_descriptor->type = *(a3 + 6);
    *&p_descriptor->description[12] = v14;
    *&p_descriptor->link_status.u.wifi.dl_min_latency = v12;
    *&p_descriptor->link_status.u.wifi.config_frequency = v13;
    v15 = *(a3 + 8);
    v16 = *(a3 + 9);
    v17 = *(a3 + 11);
    *&p_descriptor->description[60] = *(a3 + 10);
    *&p_descriptor->description[76] = v17;
    *&p_descriptor->description[28] = v15;
    *&p_descriptor->description[44] = v16;
    v18 = *(a3 + 12);
    v19 = *(a3 + 13);
    v20 = *(a3 + 14);
    *&p_descriptor->name[12] = *(a3 + 30);
    *&p_descriptor->description[108] = v19;
    *&p_descriptor->description[124] = v20;
    *&p_descriptor->description[92] = v18;
    return 3;
  }
}

- (id)_currentSnapshot
{
  v2 = [[NWSInterfaceSnapshot alloc] initWithCounts:[(NWStatisticsSource *)self _nstat_counts] interfaceDescriptor:&self->_descriptor sourceIdent:[(NWStatisticsSource *)self reference] seqno:[(NWStatisticsSource *)self snapshotRevision]];

  return v2;
}

- (id)description
{
  __ret = 0;
  v3 = printf_domain();
  asxprintf(&__ret, v3, 0, "NWSInterfaceSource %I", self->_descriptor.ifindex);
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

- (NWStatisticsInterfaceSource)initWithManager:(id)a3 interface:(int64_t)a4 threshold:(int64_t)a5
{
  v6 = a4;
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v23.receiver = self;
  v23.super_class = NWStatisticsInterfaceSource;
  v9 = [(NWStatisticsSource *)&v23 initWithManager:v8 source:0 provider:6];
  if (v9)
  {
    v32 = 0u;
    v33 = 6;
    v34 = a5;
    v35 = v6;
    v10 = [v8 addSource:v9 request:&v32 length:40];
    v11 = NStatGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (v10)
      {
        v12 = "Created";
      }

      else
      {
        v12 = "Failed to create";
      }

      *buf = 134218754;
      v25 = v8;
      v26 = 2080;
      v27 = v12;
      v28 = 1024;
      v29 = v6;
      v30 = 1024;
      v31 = a5;
      _os_log_impl(&dword_25BA3A000, v11, OS_LOG_TYPE_INFO, "Manager %p: %s source for interface index %d with threshold %d", buf, 0x22u);
    }

    if (([v8 mgrflags] & 0x80) != 0)
    {
      NStatMgrTraceF(v8, "%s Manager %p: %s source for interface %I index %d with threshold %d", v13, v14, v15, v16, v17, v18, "[NWStatisticsInterfaceSource initWithManager:interface:threshold:]");
    }

    if (v10)
    {
      v19 = v9;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

@end