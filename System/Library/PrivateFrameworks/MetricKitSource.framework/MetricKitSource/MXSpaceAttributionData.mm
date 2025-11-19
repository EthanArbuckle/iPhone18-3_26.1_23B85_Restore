@interface MXSpaceAttributionData
- (MXSpaceAttributionData)initWithCoder:(id)a3;
- (id)initPayloadDataWithMutipleAppVersions:(BOOL)a3 withTimeStampBegin:(id)a4 withTimeStampEnd:(id)a5 withMetrics:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXSpaceAttributionData

- (id)initPayloadDataWithMutipleAppVersions:(BOOL)a3 withTimeStampBegin:(id)a4 withTimeStampEnd:(id)a5 withMetrics:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = MXSpaceAttributionData;
  v14 = [(MXSourceData *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_includesMultipleApplicationVersions = a3;
    objc_storeStrong(&v14->_beginDate, a4);
    objc_storeStrong(&v15->_endDate, a5);
    v16 = [v13 objectForKeyedSubscript:@"diskSpaceUsageMetrics"];
    diskSpaceUsageMetrics = v15->_diskSpaceUsageMetrics;
    v15->_diskSpaceUsageMetrics = v16;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  includesMultipleApplicationVersions = self->_includesMultipleApplicationVersions;
  v7 = a3;
  v6 = [v4 numberWithBool:includesMultipleApplicationVersions];
  [v7 encodeObject:v6 forKey:@"multipleAppVersions"];

  [v7 encodeObject:self->_beginDate forKey:@"beginDate"];
  [v7 encodeObject:self->_endDate forKey:@"endDate"];
  [v7 encodeObject:self->_diskSpaceUsageMetrics forKey:@"diskSpaceUsageMetrics"];
}

- (MXSpaceAttributionData)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MXSpaceAttributionData;
  v5 = [(MXSourceData *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multipleAppVersions"];
    v5->_includesMultipleApplicationVersions = [v6 BOOLValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beginDate"];
    beginDate = v5->_beginDate;
    v5->_beginDate = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diskSpaceUsageMetrics"];
    diskSpaceUsageMetrics = v5->_diskSpaceUsageMetrics;
    v5->_diskSpaceUsageMetrics = v11;
  }

  return v5;
}

@end