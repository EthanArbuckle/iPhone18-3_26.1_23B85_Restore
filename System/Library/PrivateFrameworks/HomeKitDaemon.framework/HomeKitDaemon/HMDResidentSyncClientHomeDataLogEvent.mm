@interface HMDResidentSyncClientHomeDataLogEvent
- (HMDResidentSyncClientHomeDataLogEvent)initWithHomeUUID:(id)a3 encodedDataSize:(unint64_t)a4 homeDataType:(int64_t)a5 transportType:(int)a6;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDResidentSyncClientHomeDataLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([(HMDResidentSyncClientHomeDataLogEvent *)self homeDataType]== 2)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(-[HMDResidentSyncClientHomeDataLogEvent encodedDataSize](self, "encodedDataSize"), 0xAuLL)}];
    [v3 setObject:v4 forKeyedSubscript:@"sparseEncodedDataSizeKBMaxUsingCA"];
  }

  else
  {
    [v3 setObject:&unk_283E72C20 forKeyedSubscript:@"sparseEncodedDataSizeKBMaxUsingCA"];
  }

  v5 = &unk_283E72C20;
  if ([(HMDResidentSyncClientHomeDataLogEvent *)self homeDataType]== 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(-[HMDResidentSyncClientHomeDataLogEvent encodedDataSize](self, "encodedDataSize"), 0xAuLL)}];
    [v3 setObject:v6 forKeyedSubscript:@"fullEncodedDataSizeKBMaxUsingCA"];
  }

  else
  {
    [v3 setObject:&unk_283E72C20 forKeyedSubscript:@"fullEncodedDataSizeKBMaxUsingCA"];
  }

  if ([(HMDResidentSyncClientHomeDataLogEvent *)self homeDataType]== 2)
  {
    v7 = &unk_283E72C38;
  }

  else
  {
    v7 = &unk_283E72C20;
  }

  [v3 setObject:v7 forKeyedSubscript:@"sparseEncodedDataCount"];
  if ([(HMDResidentSyncClientHomeDataLogEvent *)self homeDataType]== 1)
  {
    v8 = &unk_283E72C38;
  }

  else
  {
    v8 = &unk_283E72C20;
  }

  [v3 setObject:v8 forKeyedSubscript:@"fullEncodedDataCount"];
  if ([(HMDResidentSyncClientHomeDataLogEvent *)self transportType]== 2)
  {
    v9 = &unk_283E72C38;
  }

  else
  {
    v9 = &unk_283E72C20;
  }

  [v3 setObject:v9 forKeyedSubscript:@"transportIDSCount"];
  if ([(HMDResidentSyncClientHomeDataLogEvent *)self transportType]== 6)
  {
    v10 = &unk_283E72C38;
  }

  else
  {
    v10 = &unk_283E72C20;
  }

  [v3 setObject:v10 forKeyedSubscript:@"transportRapportCount"];
  if ([(HMDResidentSyncClientHomeDataLogEvent *)self transportType]!= 6 && [(HMDResidentSyncClientHomeDataLogEvent *)self transportType]!= 2)
  {
    v5 = &unk_283E72C38;
  }

  [v3 setObject:v5 forKeyedSubscript:@"transportOtherCount"];
  if ([(HMDResidentSyncClientHomeDataLogEvent *)self transportType]== 2)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(-[HMDResidentSyncClientHomeDataLogEvent encodedDataSize](self, "encodedDataSize"), 0xAuLL)}];
    [v3 setObject:v11 forKeyedSubscript:@"transportIDSEncodedDataSizeKB"];
  }

  else
  {
    [v3 setObject:&unk_283E72C20 forKeyedSubscript:@"transportIDSEncodedDataSizeKB"];
  }

  if ([(HMDResidentSyncClientHomeDataLogEvent *)self transportType]== 6)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(-[HMDResidentSyncClientHomeDataLogEvent encodedDataSize](self, "encodedDataSize"), 0xAuLL)}];
    [v3 setObject:v12 forKeyedSubscript:@"transportRapportEncodedDataSizeKB"];
  }

  else
  {
    [v3 setObject:&unk_283E72C20 forKeyedSubscript:@"transportRapportEncodedDataSizeKB"];
  }

  v13 = [v3 copy];

  return v13;
}

- (HMDResidentSyncClientHomeDataLogEvent)initWithHomeUUID:(id)a3 encodedDataSize:(unint64_t)a4 homeDataType:(int64_t)a5 transportType:(int)a6
{
  v10.receiver = self;
  v10.super_class = HMDResidentSyncClientHomeDataLogEvent;
  result = [(HMMHomeLogEvent *)&v10 initWithHomeUUID:a3];
  if (result)
  {
    result->_encodedDataSize = a4;
    result->_homeDataType = a5;
    result->_transportType = a6;
  }

  return result;
}

@end