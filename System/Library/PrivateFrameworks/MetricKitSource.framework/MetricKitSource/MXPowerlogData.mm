@interface MXPowerlogData
- (MXPowerlogData)initWithCoder:(id)coder;
- (id)initPayloadDataWithMutipleAppVersions:(BOOL)versions withTimeStampBegin:(id)begin withTimeStampEnd:(id)end withMetrics:(id)metrics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXPowerlogData

- (id)initPayloadDataWithMutipleAppVersions:(BOOL)versions withTimeStampBegin:(id)begin withTimeStampEnd:(id)end withMetrics:(id)metrics
{
  beginCopy = begin;
  endCopy = end;
  metricsCopy = metrics;
  v45.receiver = self;
  v45.super_class = MXPowerlogData;
  v14 = [(MXSourceData *)&v45 init];
  v15 = v14;
  if (v14)
  {
    v14->_includesMultipleApplicationVersions = versions;
    objc_storeStrong(&v14->_beginDate, begin);
    objc_storeStrong(&v15->_endDate, end);
    v16 = [metricsCopy objectForKeyedSubscript:@"cpuMetrics"];
    cpuMetrics = v15->_cpuMetrics;
    v15->_cpuMetrics = v16;

    v18 = [metricsCopy objectForKeyedSubscript:@"gpuMetrics"];
    gpuMetrics = v15->_gpuMetrics;
    v15->_gpuMetrics = v18;

    v20 = [metricsCopy objectForKeyedSubscript:@"cellularConditionMetrics"];
    cellularConditionMetrics = v15->_cellularConditionMetrics;
    v15->_cellularConditionMetrics = v20;

    v22 = [metricsCopy objectForKeyedSubscript:@"applicationTimeMetrics"];
    applicationTimeMetrics = v15->_applicationTimeMetrics;
    v15->_applicationTimeMetrics = v22;

    v24 = [metricsCopy objectForKeyedSubscript:@"locationActivityMetrics"];
    locationActivityMetrics = v15->_locationActivityMetrics;
    v15->_locationActivityMetrics = v24;

    v26 = [metricsCopy objectForKeyedSubscript:@"networkTransferMetrics"];
    networkTransferMetrics = v15->_networkTransferMetrics;
    v15->_networkTransferMetrics = v26;

    v28 = [metricsCopy objectForKeyedSubscript:@"applicationLaunchMetrics"];
    applicationLaunchMetrics = v15->_applicationLaunchMetrics;
    v15->_applicationLaunchMetrics = v28;

    v30 = [metricsCopy objectForKeyedSubscript:@"applicationResponsivenessMetrics"];
    applicationResponsivenessMetrics = v15->_applicationResponsivenessMetrics;
    v15->_applicationResponsivenessMetrics = v30;

    v32 = [metricsCopy objectForKeyedSubscript:@"diskIOMetrics"];
    diskIOMetrics = v15->_diskIOMetrics;
    v15->_diskIOMetrics = v32;

    v34 = [metricsCopy objectForKeyedSubscript:@"memoryMetrics"];
    memoryMetrics = v15->_memoryMetrics;
    v15->_memoryMetrics = v34;

    v36 = [metricsCopy objectForKeyedSubscript:@"displayMetrics"];
    displayMetrics = v15->_displayMetrics;
    v15->_displayMetrics = v36;

    v38 = [metricsCopy objectForKeyedSubscript:@"animationMetrics"];
    animationMetrics = v15->_animationMetrics;
    v15->_animationMetrics = v38;

    v40 = [metricsCopy objectForKeyedSubscript:@"applicationExitMetrics"];
    applicationExitMetrics = v15->_applicationExitMetrics;
    v15->_applicationExitMetrics = v40;

    v42 = [metricsCopy objectForKeyedSubscript:@"signpostMetrics"];
    signpostMetrics = v15->_signpostMetrics;
    v15->_signpostMetrics = v42;
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
  [coderCopy encodeObject:self->_cpuMetrics forKey:@"cpuMetrics"];
  [coderCopy encodeObject:self->_gpuMetrics forKey:@"gpuMetrics"];
  [coderCopy encodeObject:self->_cellularConditionMetrics forKey:@"cellularConditionMetrics"];
  [coderCopy encodeObject:self->_applicationTimeMetrics forKey:@"applicationTimeMetrics"];
  [coderCopy encodeObject:self->_locationActivityMetrics forKey:@"locationActivityMetrics"];
  [coderCopy encodeObject:self->_networkTransferMetrics forKey:@"networkTransferMetrics"];
  [coderCopy encodeObject:self->_applicationLaunchMetrics forKey:@"applicationLaunchMetrics"];
  [coderCopy encodeObject:self->_applicationResponsivenessMetrics forKey:@"applicationResponsivenessMetrics"];
  [coderCopy encodeObject:self->_diskIOMetrics forKey:@"diskIOMetrics"];
  [coderCopy encodeObject:self->_memoryMetrics forKey:@"memoryMetrics"];
  [coderCopy encodeObject:self->_displayMetrics forKey:@"displayMetrics"];
  [coderCopy encodeObject:self->_animationMetrics forKey:@"animationMetrics"];
  [coderCopy encodeObject:self->_applicationExitMetrics forKey:@"applicationExitMetrics"];
  [coderCopy encodeObject:self->_signpostMetrics forKey:@"signpostMetrics"];
}

- (MXPowerlogData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v47.receiver = self;
  v47.super_class = MXPowerlogData;
  v5 = [(MXSourceData *)&v47 init];
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

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cpuMetrics"];
    cpuMetrics = v5->_cpuMetrics;
    v5->_cpuMetrics = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gpuMetrics"];
    gpuMetrics = v5->_gpuMetrics;
    v5->_gpuMetrics = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cellularConditionMetrics"];
    cellularConditionMetrics = v5->_cellularConditionMetrics;
    v5->_cellularConditionMetrics = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationTimeMetrics"];
    applicationTimeMetrics = v5->_applicationTimeMetrics;
    v5->_applicationTimeMetrics = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationActivityMetrics"];
    locationActivityMetrics = v5->_locationActivityMetrics;
    v5->_locationActivityMetrics = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkTransferMetrics"];
    networkTransferMetrics = v5->_networkTransferMetrics;
    v5->_networkTransferMetrics = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationLaunchMetrics"];
    applicationLaunchMetrics = v5->_applicationLaunchMetrics;
    v5->_applicationLaunchMetrics = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationResponsivenessMetrics"];
    applicationResponsivenessMetrics = v5->_applicationResponsivenessMetrics;
    v5->_applicationResponsivenessMetrics = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diskIOMetrics"];
    diskIOMetrics = v5->_diskIOMetrics;
    v5->_diskIOMetrics = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"memoryMetrics"];
    memoryMetrics = v5->_memoryMetrics;
    v5->_memoryMetrics = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayMetrics"];
    displayMetrics = v5->_displayMetrics;
    v5->_displayMetrics = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"animationMetrics"];
    animationMetrics = v5->_animationMetrics;
    v5->_animationMetrics = v33;

    v35 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"applicationExitMetrics"];
    applicationExitMetrics = v5->_applicationExitMetrics;
    v5->_applicationExitMetrics = v39;

    v41 = MEMORY[0x277CBEB98];
    v42 = objc_opt_class();
    v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
    v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"signpostMetrics"];
    signpostMetrics = v5->_signpostMetrics;
    v5->_signpostMetrics = v44;
  }

  return v5;
}

@end