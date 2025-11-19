@interface NWSInterfaceSnapshot
- (NSString)interfaceDescription;
- (NSString)interfaceName;
- (NWSInterfaceSnapshot)initWithCounts:(const nstat_counts *)a3 interfaceDescriptor:(nstat_ifnet_descriptor *)a4 sourceIdent:(unint64_t)a5 seqno:(unint64_t)a6;
- (id)description;
- (id)traditionalDictionary;
- (void)_handleCellExtra:(nstat_ifnet_desc_cellular_status *)a3;
- (void)_handleDescriptor:(nstat_ifnet_descriptor *)a3;
- (void)_handleWifiExtra:(nstat_ifnet_desc_wifi_status *)a3;
- (void)_invalidateAllExtraCounts;
- (void)_invalidateCellCounts;
- (void)_invalidateCommonCounts;
- (void)_invalidateWifiCounts;
@end

@implementation NWSInterfaceSnapshot

- (NSString)interfaceName
{
  interfaceName = self->_interfaceName;
  if (!interfaceName)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.16s", self->_descriptor.name];
    v5 = self->_interfaceName;
    self->_interfaceName = v4;

    interfaceName = self->_interfaceName;
  }

  return interfaceName;
}

- (NSString)interfaceDescription
{
  interfaceDescription = self->_interfaceDescription;
  if (!interfaceDescription)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.128s", self->_descriptor.description];
    v5 = self->_interfaceDescription;
    self->_interfaceDescription = v4;

    interfaceDescription = self->_interfaceDescription;
  }

  return interfaceDescription;
}

- (void)_invalidateCommonCounts
{
  self->_linkQualityMetric = -1;
  self->_ulMaxBandwidth = -1;
  self->_ulEffectiveBandwidth = -1;
  self->_ulBytesLost = -1;
  self->_ulMinLatency = -1;
  self->_ulEffectiveLatency = -1;
  self->_ulMaxLatency = -1;
  self->_dlMaxBandwidth = -1;
  self->_dlEffectiveBandwidth = -1;
}

- (void)_invalidateCellCounts
{
  self->_cellUlMinQueueSize = -1;
  self->_cellUlAvgQueueSize = -1;
  self->_cellUlMaxQueueSize = -1;
  self->_cellConfigInactivityTime = -1;
  self->_cellConfigBackoffTime = -1;
}

- (void)_invalidateWifiCounts
{
  self->_wifiUlErrorRate = -1;
  self->_wifiDlMinLatency = -1;
  self->_wifiDlEffectiveLatency = -1;
  self->_wifiDlMaxLatency = -1;
  self->_wifiDlErrorRate = -1;
  self->_wifiConfigFrequency = -1;
  self->_wifiConfigMulticastRate = -1;
  self->_wifiScanCount = -1;
  self->_wifiScanDuration = -1;
}

- (void)_invalidateAllExtraCounts
{
  [(NWSInterfaceSnapshot *)self _invalidateCommonCounts];
  [(NWSInterfaceSnapshot *)self _invalidateCellCounts];

  [(NWSInterfaceSnapshot *)self _invalidateWifiCounts];
}

- (id)traditionalDictionary
{
  v38.receiver = self;
  v38.super_class = NWSInterfaceSnapshot;
  v3 = [(NWSSnapshot *)&v38 _createCountsForProvider:6];
  v4 = v3;
  if (v3)
  {
    [v3 setObject:kNStatProviderInterface forKeyedSubscript:kNStatSrcKeyProvider];
    v5 = [(NWSInterfaceSnapshot *)self interfaceName];

    if (v5)
    {
      v6 = [(NWSInterfaceSnapshot *)self interfaceName];
      [v4 setObject:v6 forKeyedSubscript:kNStatSrcKeyInterfaceName];
    }

    v7 = [(NWSInterfaceSnapshot *)self interfaceDescription];

    if (v7)
    {
      v8 = [(NWSInterfaceSnapshot *)self interfaceDescription];
      [v4 setObject:v8 forKeyedSubscript:kNStatSrcKeyInterfaceDescription];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.type];
    [v4 setObject:v9 forKeyedSubscript:kNStatSrcKeyInterfaceType];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.ifindex];
    [v4 setObject:v10 forKeyedSubscript:kNStatSrcKeyInterface];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_descriptor.threshold];
    [v4 setObject:v11 forKeyedSubscript:kNStatSrcKeyInterfaceThreshold];

    if ([(NWSInterfaceSnapshot *)self linkQualityMetric]!= -1)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot linkQualityMetric](self, "linkQualityMetric")}];
      [v4 setValue:v12 forKey:kNStatSrcKeyInterfaceLinkQualityMetric];
    }

    if ([(NWSInterfaceSnapshot *)self ulMaxBandwidth]!= -1)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot ulMaxBandwidth](self, "ulMaxBandwidth")}];
      [v4 setValue:v13 forKey:kNStatSrcKeyInterfaceUlMaxBandwidth];
    }

    if ([(NWSInterfaceSnapshot *)self ulEffectiveBandwidth]!= -1)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot ulEffectiveBandwidth](self, "ulEffectiveBandwidth")}];
      [v4 setValue:v14 forKey:kNStatSrcKeyInterfaceUlCurrentBandwidth];
    }

    if ([(NWSInterfaceSnapshot *)self ulBytesLost]!= -1)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot ulBytesLost](self, "ulBytesLost")}];
      [v4 setValue:v15 forKey:kNStatSrcKeyInterfaceUlBytesLost];
    }

    if ([(NWSInterfaceSnapshot *)self ulMinLatency]!= -1)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot ulMinLatency](self, "ulMinLatency")}];
      [v4 setValue:v16 forKey:kNStatSrcKeyInterfaceUlMinLatency];
    }

    if ([(NWSInterfaceSnapshot *)self ulEffectiveLatency]!= -1)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot ulEffectiveLatency](self, "ulEffectiveLatency")}];
      [v4 setValue:v17 forKey:kNStatSrcKeyInterfaceUlEffectiveLatency];
    }

    if ([(NWSInterfaceSnapshot *)self ulMaxLatency]!= -1)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot ulMaxLatency](self, "ulMaxLatency")}];
      [v4 setValue:v18 forKey:kNStatSrcKeyInterfaceUlMaxLatency];
    }

    if ([(NWSInterfaceSnapshot *)self ulReTxtLevel]!= -1)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot ulReTxtLevel](self, "ulReTxtLevel")}];
      [v4 setValue:v19 forKey:kNStatSrcKeyInterfaceUlReTxtLevel];
    }

    if ([(NWSInterfaceSnapshot *)self dlMaxBandwidth]!= -1)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot dlMaxBandwidth](self, "dlMaxBandwidth")}];
      [v4 setValue:v20 forKey:kNStatSrcKeyInterfaceDlMaxBandwidth];
    }

    if ([(NWSInterfaceSnapshot *)self dlEffectiveBandwidth]!= -1)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot dlEffectiveBandwidth](self, "dlEffectiveBandwidth")}];
      [v4 setValue:v21 forKey:kNStatSrcKeyInterfaceDlCurrentBandwidth];
    }

    if ([(NWSInterfaceSnapshot *)self cellUlMinQueueSize]!= -1)
    {
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot cellUlMinQueueSize](self, "cellUlMinQueueSize")}];
      [v4 setValue:v22 forKey:kNStatSrcKeyInterfaceCellUlMinQueueSize];
    }

    if ([(NWSInterfaceSnapshot *)self cellUlAvgQueueSize]!= -1)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot cellUlAvgQueueSize](self, "cellUlAvgQueueSize")}];
      [v4 setValue:v23 forKey:kNStatSrcKeyInterfaceCellUlAvgQueueSize];
    }

    if ([(NWSInterfaceSnapshot *)self cellUlMaxQueueSize]!= -1)
    {
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot cellUlMaxQueueSize](self, "cellUlMaxQueueSize")}];
      [v4 setValue:v24 forKey:kNStatSrcKeyInterfaceCellUlMaxQueueSize];
    }

    if ([(NWSInterfaceSnapshot *)self cellConfigInactivityTime]!= -1)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot cellConfigInactivityTime](self, "cellConfigInactivityTime")}];
      [v4 setValue:v25 forKey:kNStatSrcKeyInterfaceCellConfigInactivityTime];
    }

    if ([(NWSInterfaceSnapshot *)self cellConfigBackoffTime]!= -1)
    {
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot cellConfigBackoffTime](self, "cellConfigBackoffTime")}];
      [v4 setValue:v26 forKey:kNStatSrcKeyInterfaceCellConfigBackoffTime];
    }

    if ([(NWSInterfaceSnapshot *)self wifiDlMinLatency]!= -1)
    {
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot wifiDlMinLatency](self, "wifiDlMinLatency")}];
      [v4 setValue:v27 forKey:kNStatSrcKeyInterfaceWifiDlMinLatency];
    }

    if ([(NWSInterfaceSnapshot *)self wifiDlEffectiveLatency]!= -1)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot wifiDlEffectiveLatency](self, "wifiDlEffectiveLatency")}];
      [v4 setValue:v28 forKey:kNStatSrcKeyInterfaceWifiDlEffectiveLatency];
    }

    if ([(NWSInterfaceSnapshot *)self wifiDlMaxLatency]!= -1)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot wifiDlMaxLatency](self, "wifiDlMaxLatency")}];
      [v4 setValue:v29 forKey:kNStatSrcKeyInterfaceWifiDlMaxLatency];
    }

    if ([(NWSInterfaceSnapshot *)self wifiDlErrorRate]!= -1)
    {
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot wifiDlErrorRate](self, "wifiDlErrorRate")}];
      [v4 setValue:v30 forKey:kNStatSrcKeyInterfaceWifiDlErrorRate];
    }

    if ([(NWSInterfaceSnapshot *)self wifiUlErrorRate]!= -1)
    {
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot wifiUlErrorRate](self, "wifiUlErrorRate")}];
      [v4 setValue:v31 forKey:kNStatSrcKeyInterfaceWifiUlErrorRate];
    }

    if ([(NWSInterfaceSnapshot *)self wifiConfigFrequency]!= -1)
    {
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot wifiConfigFrequency](self, "wifiConfigFrequency")}];
      [v4 setValue:v32 forKey:kNStatSrcKeyInterfaceWifiConfigFrequency];
    }

    if ([(NWSInterfaceSnapshot *)self wifiConfigMulticastRate]!= -1)
    {
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot wifiConfigMulticastRate](self, "wifiConfigMulticastRate")}];
      [v4 setValue:v33 forKey:kNStatSrcKeyInterfaceWifiConfigMulticastRate];
    }

    if ([(NWSInterfaceSnapshot *)self wifiScanCount]!= -1)
    {
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot wifiScanCount](self, "wifiScanCount")}];
      [v4 setValue:v34 forKey:kNStatSrcKeyInterfaceWifiScanCount];
    }

    if ([(NWSInterfaceSnapshot *)self wifiScanDuration]!= -1)
    {
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWSInterfaceSnapshot wifiScanDuration](self, "wifiScanDuration")}];
      [v4 setValue:v35 forKey:kNStatSrcKeyInterfaceWifiScanDuration];
    }

    v36 = v4;
  }

  return v4;
}

- (void)_handleCellExtra:(nstat_ifnet_desc_cellular_status *)a3
{
  valid_bitmask = a3->valid_bitmask;
  [(NWSInterfaceSnapshot *)self _invalidateWifiCounts];
  if (valid_bitmask)
  {
    link_quality_metric = a3->link_quality_metric;
  }

  else
  {
    link_quality_metric = -1;
  }

  [(NWSInterfaceSnapshot *)self setLinkQualityMetric:link_quality_metric];
  if ((valid_bitmask & 2) != 0)
  {
    ul_effective_bandwidth = a3->ul_effective_bandwidth;
  }

  else
  {
    ul_effective_bandwidth = -1;
  }

  [(NWSInterfaceSnapshot *)self setUlEffectiveBandwidth:ul_effective_bandwidth];
  if ((valid_bitmask & 4) != 0)
  {
    ul_max_bandwidth = a3->ul_max_bandwidth;
  }

  else
  {
    ul_max_bandwidth = -1;
  }

  [(NWSInterfaceSnapshot *)self setUlMaxBandwidth:ul_max_bandwidth];
  if ((valid_bitmask & 8) != 0)
  {
    ul_min_latency = a3->ul_min_latency;
  }

  else
  {
    ul_min_latency = -1;
  }

  [(NWSInterfaceSnapshot *)self setUlMinLatency:ul_min_latency];
  if ((valid_bitmask & 0x20) != 0)
  {
    [(NWSInterfaceSnapshot *)self setUlEffectiveLatency:a3->ul_effective_latency];
    ul_max_latency = a3->ul_max_latency;
  }

  else
  {
    ul_max_latency = -1;
    [(NWSInterfaceSnapshot *)self setUlEffectiveLatency:-1];
  }

  [(NWSInterfaceSnapshot *)self setUlMaxLatency:ul_max_latency];
  if ((valid_bitmask & 0x40) != 0)
  {
    ul_retxt_level = a3->ul_retxt_level;
  }

  else
  {
    ul_retxt_level = -1;
  }

  [(NWSInterfaceSnapshot *)self setUlReTxtLevel:ul_retxt_level];
  if ((valid_bitmask & 0x80) != 0)
  {
    ul_bytes_lost = a3->ul_bytes_lost;
  }

  else
  {
    ul_bytes_lost = -1;
  }

  [(NWSInterfaceSnapshot *)self setUlBytesLost:ul_bytes_lost];
  if ((valid_bitmask & 0x100) != 0)
  {
    ul_min_queue_size = a3->ul_min_queue_size;
  }

  else
  {
    ul_min_queue_size = -1;
  }

  [(NWSInterfaceSnapshot *)self setCellUlMinQueueSize:ul_min_queue_size];
  if ((valid_bitmask & 0x200) != 0)
  {
    ul_avg_queue_size = a3->ul_avg_queue_size;
  }

  else
  {
    ul_avg_queue_size = -1;
  }

  [(NWSInterfaceSnapshot *)self setCellUlAvgQueueSize:ul_avg_queue_size];
  if ((valid_bitmask & 0x400) != 0)
  {
    ul_max_queue_size = a3->ul_max_queue_size;
  }

  else
  {
    ul_max_queue_size = -1;
  }

  [(NWSInterfaceSnapshot *)self setCellUlMaxQueueSize:ul_max_queue_size];
  if ((valid_bitmask & 0x800) != 0)
  {
    dl_effective_bandwidth = a3->dl_effective_bandwidth;
  }

  else
  {
    dl_effective_bandwidth = -1;
  }

  [(NWSInterfaceSnapshot *)self setDlEffectiveBandwidth:dl_effective_bandwidth];
  if ((valid_bitmask & 0x1000) != 0)
  {
    dl_max_bandwidth = a3->dl_max_bandwidth;
  }

  else
  {
    dl_max_bandwidth = -1;
  }

  [(NWSInterfaceSnapshot *)self setDlMaxBandwidth:dl_max_bandwidth];
  if ((valid_bitmask & 0x2000) != 0)
  {
    config_inactivity_time = a3->config_inactivity_time;
  }

  else
  {
    config_inactivity_time = -1;
  }

  [(NWSInterfaceSnapshot *)self setCellConfigInactivityTime:config_inactivity_time];
  if ((valid_bitmask & 0x4000) != 0)
  {
    config_backoff_time = a3->config_backoff_time;
  }

  else
  {
    config_backoff_time = -1;
  }

  [(NWSInterfaceSnapshot *)self setCellConfigBackoffTime:config_backoff_time];
}

- (void)_handleWifiExtra:(nstat_ifnet_desc_wifi_status *)a3
{
  valid_bitmask = a3->valid_bitmask;
  [(NWSInterfaceSnapshot *)self _invalidateCellCounts];
  if (valid_bitmask)
  {
    link_quality_metric = a3->link_quality_metric;
  }

  else
  {
    link_quality_metric = -1;
  }

  [(NWSInterfaceSnapshot *)self setLinkQualityMetric:link_quality_metric];
  if ((valid_bitmask & 2) != 0)
  {
    ul_effective_bandwidth = a3->ul_effective_bandwidth;
  }

  else
  {
    ul_effective_bandwidth = -1;
  }

  [(NWSInterfaceSnapshot *)self setUlEffectiveBandwidth:ul_effective_bandwidth];
  if ((valid_bitmask & 4) != 0)
  {
    ul_max_bandwidth = a3->ul_max_bandwidth;
  }

  else
  {
    ul_max_bandwidth = -1;
  }

  [(NWSInterfaceSnapshot *)self setUlMaxBandwidth:ul_max_bandwidth];
  if ((valid_bitmask & 8) != 0)
  {
    ul_min_latency = a3->ul_min_latency;
  }

  else
  {
    ul_min_latency = -1;
  }

  [(NWSInterfaceSnapshot *)self setUlMinLatency:ul_min_latency];
  if ((valid_bitmask & 0x10) != 0)
  {
    ul_effective_latency = a3->ul_effective_latency;
  }

  else
  {
    ul_effective_latency = -1;
  }

  [(NWSInterfaceSnapshot *)self setUlEffectiveLatency:ul_effective_latency];
  if ((valid_bitmask & 0x20) != 0)
  {
    ul_max_latency = a3->ul_max_latency;
  }

  else
  {
    ul_max_latency = -1;
  }

  [(NWSInterfaceSnapshot *)self setUlMaxLatency:ul_max_latency];
  if ((valid_bitmask & 0x40) != 0)
  {
    ul_retxt_level = a3->ul_retxt_level;
  }

  else
  {
    ul_retxt_level = -1;
  }

  [(NWSInterfaceSnapshot *)self setUlReTxtLevel:ul_retxt_level];
  if ((valid_bitmask & 0x100) != 0)
  {
    ul_bytes_lost = a3->ul_bytes_lost;
  }

  else
  {
    ul_bytes_lost = -1;
  }

  [(NWSInterfaceSnapshot *)self setUlBytesLost:ul_bytes_lost];
  if ((valid_bitmask & 0x4000) != 0)
  {
    ul_error_rate = a3->ul_error_rate;
  }

  else
  {
    ul_error_rate = -1;
  }

  [(NWSInterfaceSnapshot *)self setWifiUlErrorRate:ul_error_rate];
  if ((valid_bitmask & 0x200) != 0)
  {
    dl_effective_bandwidth = a3->dl_effective_bandwidth;
  }

  else
  {
    dl_effective_bandwidth = -1;
  }

  [(NWSInterfaceSnapshot *)self setDlEffectiveBandwidth:dl_effective_bandwidth];
  if ((valid_bitmask & 0x400) != 0)
  {
    dl_max_bandwidth = a3->dl_max_bandwidth;
  }

  else
  {
    dl_max_bandwidth = -1;
  }

  [(NWSInterfaceSnapshot *)self setDlMaxBandwidth:dl_max_bandwidth];
  if ((valid_bitmask & 0x800) != 0)
  {
    dl_min_latency = a3->dl_min_latency;
  }

  else
  {
    dl_min_latency = -1;
  }

  [(NWSInterfaceSnapshot *)self setWifiDlMinLatency:dl_min_latency];
  if ((valid_bitmask & 0x1000) != 0)
  {
    dl_effective_latency = a3->dl_effective_latency;
  }

  else
  {
    dl_effective_latency = -1;
  }

  [(NWSInterfaceSnapshot *)self setWifiDlEffectiveLatency:dl_effective_latency];
  if ((valid_bitmask & 0x2000) != 0)
  {
    dl_max_latency = a3->dl_max_latency;
  }

  else
  {
    dl_max_latency = -1;
  }

  [(NWSInterfaceSnapshot *)self setWifiDlMaxLatency:dl_max_latency];
  if ((valid_bitmask & 0x4000) != 0)
  {
    dl_error_rate = a3->dl_error_rate;
  }

  else
  {
    dl_error_rate = -1;
  }

  [(NWSInterfaceSnapshot *)self setWifiDlErrorRate:dl_error_rate];
  if ((valid_bitmask & 0x8000) != 0)
  {
    config_frequency = a3->config_frequency;
  }

  else
  {
    config_frequency = -1;
  }

  [(NWSInterfaceSnapshot *)self setWifiConfigFrequency:config_frequency];
  if ((valid_bitmask & 0x10000) != 0)
  {
    config_multicast_rate = a3->config_multicast_rate;
  }

  else
  {
    config_multicast_rate = -1;
  }

  [(NWSInterfaceSnapshot *)self setWifiConfigMulticastRate:config_multicast_rate];
  if ((valid_bitmask & 0x20000) != 0)
  {
    scan_count = a3->scan_count;
  }

  else
  {
    scan_count = -1;
  }

  [(NWSInterfaceSnapshot *)self setWifiScanCount:scan_count];
  if ((valid_bitmask & 0x40000) != 0)
  {
    scan_duration = a3->scan_duration;
  }

  else
  {
    scan_duration = -1;
  }

  [(NWSInterfaceSnapshot *)self setWifiScanDuration:scan_duration];
}

- (void)_handleDescriptor:(nstat_ifnet_descriptor *)a3
{
  v3 = *&a3->link_status.u.wifi.ul_bytes_lost;
  v5 = *&a3->threshold;
  v4 = *&a3->link_status.u.cellular.valid_bitmask;
  *&self->_descriptor.link_status.u.wifi.ul_min_latency = *&a3->link_status.u.wifi.ul_min_latency;
  *&self->_descriptor.link_status.u.wifi.ul_bytes_lost = v3;
  *&self->_descriptor.threshold = v5;
  *&self->_descriptor.link_status.u.cellular.valid_bitmask = v4;
  v6 = *&a3->description[12];
  v8 = *&a3->link_status.u.wifi.dl_min_latency;
  v7 = *&a3->link_status.u.wifi.config_frequency;
  *&self->_descriptor.type = *&a3->type;
  *&self->_descriptor.description[12] = v6;
  *&self->_descriptor.link_status.u.wifi.dl_min_latency = v8;
  *&self->_descriptor.link_status.u.wifi.config_frequency = v7;
  v9 = *&a3->description[76];
  v11 = *&a3->description[28];
  v10 = *&a3->description[44];
  *&self->_descriptor.description[60] = *&a3->description[60];
  *&self->_descriptor.description[76] = v9;
  *&self->_descriptor.description[28] = v11;
  *&self->_descriptor.description[44] = v10;
  v13 = *&a3->description[108];
  v12 = *&a3->description[124];
  v14 = *&a3->description[92];
  *&self->_descriptor.name[12] = *&a3->name[12];
  *&self->_descriptor.description[108] = v13;
  *&self->_descriptor.description[124] = v12;
  *&self->_descriptor.description[92] = v14;
  link_status_type = a3->link_status.link_status_type;
  if (link_status_type == 2)
  {
    [(NWSInterfaceSnapshot *)self _handleWifiExtra:&a3->link_status.u];
  }

  else if (link_status_type == 1)
  {
    [(NWSInterfaceSnapshot *)self _handleCellExtra:&a3->link_status.u];
  }

  else
  {
    [(NWSInterfaceSnapshot *)self _invalidateAllExtraCounts];
  }
}

- (id)description
{
  __ret = 0;
  v3 = printf_domain();
  asxprintf(&__ret, v3, 0, "NWStatisticsInterfaceSnapshot %I", self->_descriptor.ifindex);
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

- (NWSInterfaceSnapshot)initWithCounts:(const nstat_counts *)a3 interfaceDescriptor:(nstat_ifnet_descriptor *)a4 sourceIdent:(unint64_t)a5 seqno:(unint64_t)a6
{
  v10.receiver = self;
  v10.super_class = NWSInterfaceSnapshot;
  v7 = [(NWSSnapshot *)&v10 _initWithCounts:a3 sourceIdent:a5 seqno:a6];
  v8 = v7;
  if (v7)
  {
    [(NWSInterfaceSnapshot *)v7 _handleDescriptor:a4];
  }

  return v8;
}

@end