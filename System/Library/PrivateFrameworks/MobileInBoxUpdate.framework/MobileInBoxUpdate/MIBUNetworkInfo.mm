@interface MIBUNetworkInfo
+ (id)queryNetworkInfo;
- (MIBUNetworkInfo)init;
- (id)description;
@end

@implementation MIBUNetworkInfo

- (MIBUNetworkInfo)init
{
  v5.receiver = self;
  v5.super_class = MIBUNetworkInfo;
  v2 = [(MIBUNetworkInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUNetworkInfo *)v2 setNetworkName:0];
    [(MIBUNetworkInfo *)v3 setBSSID:0];
    [(MIBUNetworkInfo *)v3 setRSSI:0];
    [(MIBUNetworkInfo *)v3 setNoise:0];
    [(MIBUNetworkInfo *)v3 setChannel:-1];
    [(MIBUNetworkInfo *)v3 setChannelWidth:0];
    [(MIBUNetworkInfo *)v3 setChannelBand:0];
    [(MIBUNetworkInfo *)v3 setPHYMode:0];
    [(MIBUNetworkInfo *)v3 setNumberOfSpatialStreams:0];
    [(MIBUNetworkInfo *)v3 setMCSIndex:0];
    [(MIBUNetworkInfo *)v3 setIPV4Address:0];
    [(MIBUNetworkInfo *)v3 setIPV6Address:0];
  }

  return v3;
}

+ (id)queryNetworkInfo
{
  v2 = objc_alloc_init(MIBUNetworkInfo);
  v3 = objc_alloc_init(MEMORY[0x277D02B18]);
  [v3 activate];
  networkName = [v3 networkName];
  [(MIBUNetworkInfo *)v2 setNetworkName:networkName];

  bSSID = [v3 BSSID];
  [(MIBUNetworkInfo *)v2 setBSSID:bSSID];

  -[MIBUNetworkInfo setRSSI:](v2, "setRSSI:", [v3 RSSI]);
  -[MIBUNetworkInfo setNoise:](v2, "setNoise:", [v3 noise]);
  -[MIBUNetworkInfo setPHYMode:](v2, "setPHYMode:", [v3 PHYMode]);
  -[MIBUNetworkInfo setNumberOfSpatialStreams:](v2, "setNumberOfSpatialStreams:", [v3 numberOfSpatialStreams]);
  -[MIBUNetworkInfo setMCSIndex:](v2, "setMCSIndex:", [v3 MCSIndex]);
  mACAddress = [v3 MACAddress];
  [(MIBUNetworkInfo *)v2 setMACAddress:mACAddress];

  iPv4Addresses = [v3 IPv4Addresses];
  firstObject = [iPv4Addresses firstObject];
  [(MIBUNetworkInfo *)v2 setIPV4Address:firstObject];

  iPv6Addresses = [v3 IPv6Addresses];
  firstObject2 = [iPv6Addresses firstObject];
  [(MIBUNetworkInfo *)v2 setIPV6Address:firstObject2];

  channel = [v3 channel];

  if (channel)
  {
    channel2 = [v3 channel];
    -[MIBUNetworkInfo setChannel:](v2, "setChannel:", [channel2 channel]);

    channel3 = [v3 channel];
    -[MIBUNetworkInfo setChannelWidth:](v2, "setChannelWidth:", [channel3 width]);

    channel4 = [v3 channel];
    -[MIBUNetworkInfo setChannelBand:](v2, "setChannelBand:", [channel4 band]);
  }

  [v3 invalidate];

  return v2;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@ : \n", v6];
  [v3 appendString:v7];

  v8 = MEMORY[0x277CCACA8];
  networkName = [(MIBUNetworkInfo *)self networkName];
  v10 = [v8 stringWithFormat:@"\tNetwork Name : %@\n", networkName];
  [v3 appendString:v10];

  v11 = MEMORY[0x277CCACA8];
  bSSID = [(MIBUNetworkInfo *)self BSSID];
  v13 = [v11 stringWithFormat:@"\tBSSID : %@\n", bSSID];
  [v3 appendString:v13];

  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MIBUNetworkInfo RSSI](self, "RSSI")}];
  v16 = [v14 stringWithFormat:@"\tRSSI : %@\n", v15];
  [v3 appendString:v16];

  v17 = MEMORY[0x277CCACA8];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MIBUNetworkInfo noise](self, "noise")}];
  v19 = [v17 stringWithFormat:@"\tNoise : %@\n", v18];
  [v3 appendString:v19];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tPHYMode : 0x%lX\n", -[MIBUNetworkInfo PHYMode](self, "PHYMode")];
  [v3 appendString:v20];

  v21 = MEMORY[0x277CCACA8];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MIBUNetworkInfo numberOfSpatialStreams](self, "numberOfSpatialStreams")}];
  v23 = [v21 stringWithFormat:@"\t#SpatialStreams : %@\n", v22];
  [v3 appendString:v23];

  v24 = MEMORY[0x277CCACA8];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MIBUNetworkInfo MCSIndex](self, "MCSIndex")}];
  v26 = [v24 stringWithFormat:@"\tMCSIndex : %@\n", v25];
  [v3 appendString:v26];

  v27 = MEMORY[0x277CCACA8];
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MIBUNetworkInfo channel](self, "channel")}];
  v29 = [v27 stringWithFormat:@"\tChannel : %@\n", v28];
  [v3 appendString:v29];

  v30 = MEMORY[0x277CCACA8];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MIBUNetworkInfo channelWidth](self, "channelWidth")}];
  v32 = [v30 stringWithFormat:@"\tChannel Width: %@\n", v31];
  [v3 appendString:v32];

  v33 = MEMORY[0x277CCACA8];
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MIBUNetworkInfo channelBand](self, "channelBand")}];
  v35 = [v33 stringWithFormat:@"\tChannel Band: %@\n", v34];
  [v3 appendString:v35];

  v36 = MEMORY[0x277CCACA8];
  mACAddress = [(MIBUNetworkInfo *)self MACAddress];
  v38 = [v36 stringWithFormat:@"\tMACAddress : %@\n", mACAddress];
  [v3 appendString:v38];

  v39 = MEMORY[0x277CCACA8];
  iPV4Address = [(MIBUNetworkInfo *)self iPV4Address];
  v41 = [v39 stringWithFormat:@"\tIPv4 : %@\n", iPV4Address];
  [v3 appendString:v41];

  v42 = MEMORY[0x277CCACA8];
  iPV6Address = [(MIBUNetworkInfo *)self iPV6Address];
  v44 = [v42 stringWithFormat:@"\tIPv6 : %@\n", iPV6Address];
  [v3 appendString:v44];

  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@">"];
  [v3 appendString:v45];

  v46 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v46;
}

@end