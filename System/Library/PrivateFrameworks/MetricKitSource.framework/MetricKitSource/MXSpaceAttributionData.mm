@interface MXSpaceAttributionData
- (MXSpaceAttributionData)initWithCoder:(id)coder;
- (id)initPayloadDataWithMutipleAppVersions:(BOOL)versions withTimeStampBegin:(id)begin withTimeStampEnd:(id)end withMetrics:(id)metrics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXSpaceAttributionData

- (id)initPayloadDataWithMutipleAppVersions:(BOOL)versions withTimeStampBegin:(id)begin withTimeStampEnd:(id)end withMetrics:(id)metrics
{
  beginCopy = begin;
  endCopy = end;
  metricsCopy = metrics;
  v19.receiver = self;
  v19.super_class = MXSpaceAttributionData;
  v14 = [(MXSourceData *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_includesMultipleApplicationVersions = versions;
    objc_storeStrong(&v14->_beginDate, begin);
    objc_storeStrong(&v15->_endDate, end);
    v16 = [metricsCopy objectForKeyedSubscript:@"diskSpaceUsageMetrics"];
    diskSpaceUsageMetrics = v15->_diskSpaceUsageMetrics;
    v15->_diskSpaceUsageMetrics = v16;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  includesMultipleApplicationVersions = self->_includesMultipleApplicationVersions;
  coderCopy = coder;
  v6 = [v4 numberWithBool:includesMultipleApplicationVersions];
  [coderCopy encodeObject:v6 forKey:@"multipleAppVersions"];

  [coderCopy encodeObject:self->_beginDate forKey:@"beginDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_diskSpaceUsageMetrics forKey:@"diskSpaceUsageMetrics"];
}

- (MXSpaceAttributionData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MXSpaceAttributionData;
  v5 = [(MXSourceData *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multipleAppVersions"];
    v5->_includesMultipleApplicationVersions = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beginDate"];
    beginDate = v5->_beginDate;
    v5->_beginDate = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diskSpaceUsageMetrics"];
    diskSpaceUsageMetrics = v5->_diskSpaceUsageMetrics;
    v5->_diskSpaceUsageMetrics = v11;
  }

  return v5;
}

@end