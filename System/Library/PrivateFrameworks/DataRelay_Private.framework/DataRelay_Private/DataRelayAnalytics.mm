@interface DataRelayAnalytics
+ (id)getInstance;
- (DataRelayAnalytics)init;
- (void)markDM6FirstPacket;
- (void)markHRMFirstPacket;
- (void)resetDataRelaySessionAnalyticDict;
- (void)setDM6ServiceSetupTime;
- (void)setDRSessionEnded;
- (void)setDRSessionStarted;
- (void)setHRMServiceSetupTime;
- (void)submitDataRelaySessionAnalytics;
- (void)updateRapportDiscoveryTime:(double)time;
- (void)updateSetupReturnStatus:(id)status;
@end

@implementation DataRelayAnalytics

- (DataRelayAnalytics)init
{
  v5.receiver = self;
  v5.super_class = DataRelayAnalytics;
  v2 = [(DataRelayAnalytics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DataRelayAnalytics *)v2 resetDataRelaySessionAnalyticDict];
  }

  return v3;
}

+ (id)getInstance
{
  if (getInstance_dispatchOnce != -1)
  {
    +[DataRelayAnalytics getInstance];
  }

  v3 = getInstance_sharedInstance;

  return v3;
}

uint64_t __33__DataRelayAnalytics_getInstance__block_invoke()
{
  getInstance_sharedInstance = objc_alloc_init(DataRelayAnalytics);

  return MEMORY[0x2821F96F8]();
}

- (void)submitDataRelaySessionAnalytics
{
  v3 = self->_dataRelaySessionAnalyticDict;
  if (gLogCategory_DataRelayAnalytics <= 50 && (gLogCategory_DataRelayAnalytics != -1 || _LogCategory_Initialize()))
  {
    [DataRelayAnalytics submitDataRelaySessionAnalytics];
  }

  v5 = v3;
  v4 = v3;
  AnalyticsSendEventLazy();
  [(DataRelayAnalytics *)self resetDataRelaySessionAnalyticDict];
}

- (void)resetDataRelaySessionAnalyticDict
{
  sessionStartTimestamp = self->_sessionStartTimestamp;
  self->_sessionStartTimestamp = 0;

  hrmServiceStartedTimestamp = self->_hrmServiceStartedTimestamp;
  self->_hrmServiceStartedTimestamp = 0;

  dm6ServiceStartedTimestamp = self->_dm6ServiceStartedTimestamp;
  self->_dm6ServiceStartedTimestamp = 0;

  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"DRServerDeviceType", &stru_285B1B458, @"DRClientDeviceType", &unk_285B1C9C0, @"fromRemoteServer", &unk_285B1C9C0, @"localDeviceRole", &unk_285B1C9C0, @"rapportDiscoveryTime", &unk_285B1C9C0, @"sessionLength", &unk_285B1C9C0, @"setupReturnStatus", &unk_285B1C9C0, @"hrmServiceSetupTime", &unk_285B1C9C0, @"dm6ServiceSetupTime", &unk_285B1C9C0, @"hrmTimeToFirstPacket", &unk_285B1C9C0, @"dm6TimeToFirstPacket", 0}];
  dataRelaySessionAnalyticDict = self->_dataRelaySessionAnalyticDict;
  self->_dataRelaySessionAnalyticDict = v6;

  MEMORY[0x2821F96F8]();
}

- (void)setDRSessionStarted
{
  if (gLogCategory_DataRelayAnalytics <= 10 && (gLogCategory_DataRelayAnalytics != -1 || _LogCategory_Initialize()))
  {
    [DataRelayAnalytics setDRSessionStarted];
  }

  v3 = [MEMORY[0x277CBEAA8] now];
  sessionStartTimestamp = self->_sessionStartTimestamp;
  self->_sessionStartTimestamp = v3;

  MEMORY[0x2821F96F8]();
}

- (void)setDRSessionEnded
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_sessionStartTimestamp];
  v5 = v4;

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  [(NSMutableDictionary *)self->_dataRelaySessionAnalyticDict setObject:v6 forKeyedSubscript:@"sessionLength"];

  [(DataRelayAnalytics *)self submitDataRelaySessionAnalytics];
}

- (void)setHRMServiceSetupTime
{
  v3 = [MEMORY[0x277CBEAA8] now];
  hrmServiceStartedTimestamp = self->_hrmServiceStartedTimestamp;
  self->_hrmServiceStartedTimestamp = v3;

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_sessionStartTimestamp];
  v7 = v6;

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [(NSMutableDictionary *)self->_dataRelaySessionAnalyticDict setObject:v8 forKeyedSubscript:@"hrmServiceSetupTime"];
}

- (void)setDM6ServiceSetupTime
{
  v3 = [MEMORY[0x277CBEAA8] now];
  dm6ServiceStartedTimestamp = self->_dm6ServiceStartedTimestamp;
  self->_dm6ServiceStartedTimestamp = v3;

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_sessionStartTimestamp];
  v7 = v6;

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [(NSMutableDictionary *)self->_dataRelaySessionAnalyticDict setObject:v8 forKeyedSubscript:@"dm6ServiceSetupTime"];
}

- (void)markHRMFirstPacket
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_hrmServiceStartedTimestamp];
  v5 = v4;

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  [(NSMutableDictionary *)self->_dataRelaySessionAnalyticDict setObject:v6 forKeyedSubscript:@"hrmTimeToFirstPacket"];
}

- (void)markDM6FirstPacket
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_dm6ServiceStartedTimestamp];
  v5 = v4;

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  [(NSMutableDictionary *)self->_dataRelaySessionAnalyticDict setObject:v6 forKeyedSubscript:@"dm6TimeToFirstPacket"];
}

- (void)updateSetupReturnStatus:(id)status
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(status, "code")}];
  [(NSMutableDictionary *)self->_dataRelaySessionAnalyticDict setObject:v4 forKeyedSubscript:@"setupReturnStatus"];

  [(DataRelayAnalytics *)self submitDataRelaySessionAnalytics];
}

- (void)updateRapportDiscoveryTime:(double)time
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  [(NSMutableDictionary *)self->_dataRelaySessionAnalyticDict setObject:v4 forKeyedSubscript:@"rapportDiscoveryTime"];
}

@end