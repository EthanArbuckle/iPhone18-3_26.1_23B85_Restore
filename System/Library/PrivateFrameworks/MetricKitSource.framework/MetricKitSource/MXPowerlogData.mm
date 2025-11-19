@interface MXPowerlogData
- (MXPowerlogData)initWithCoder:(id)a3;
- (id)initPayloadDataWithMutipleAppVersions:(BOOL)a3 withTimeStampBegin:(id)a4 withTimeStampEnd:(id)a5 withMetrics:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXPowerlogData

- (id)initPayloadDataWithMutipleAppVersions:(BOOL)a3 withTimeStampBegin:(id)a4 withTimeStampEnd:(id)a5 withMetrics:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v45.receiver = self;
  v45.super_class = MXPowerlogData;
  v14 = [(MXSourceData *)&v45 init];
  v15 = v14;
  if (v14)
  {
    v14->_includesMultipleApplicationVersions = a3;
    objc_storeStrong(&v14->_beginDate, a4);
    objc_storeStrong(&v15->_endDate, a5);
    v16 = [v13 objectForKeyedSubscript:@"cpuMetrics"];
    cpuMetrics = v15->_cpuMetrics;
    v15->_cpuMetrics = v16;

    v18 = [v13 objectForKeyedSubscript:@"gpuMetrics"];
    gpuMetrics = v15->_gpuMetrics;
    v15->_gpuMetrics = v18;

    v20 = [v13 objectForKeyedSubscript:@"cellularConditionMetrics"];
    cellularConditionMetrics = v15->_cellularConditionMetrics;
    v15->_cellularConditionMetrics = v20;

    v22 = [v13 objectForKeyedSubscript:@"applicationTimeMetrics"];
    applicationTimeMetrics = v15->_applicationTimeMetrics;
    v15->_applicationTimeMetrics = v22;

    v24 = [v13 objectForKeyedSubscript:@"locationActivityMetrics"];
    locationActivityMetrics = v15->_locationActivityMetrics;
    v15->_locationActivityMetrics = v24;

    v26 = [v13 objectForKeyedSubscript:@"networkTransferMetrics"];
    networkTransferMetrics = v15->_networkTransferMetrics;
    v15->_networkTransferMetrics = v26;

    v28 = [v13 objectForKeyedSubscript:@"applicationLaunchMetrics"];
    applicationLaunchMetrics = v15->_applicationLaunchMetrics;
    v15->_applicationLaunchMetrics = v28;

    v30 = [v13 objectForKeyedSubscript:@"applicationResponsivenessMetrics"];
    applicationResponsivenessMetrics = v15->_applicationResponsivenessMetrics;
    v15->_applicationResponsivenessMetrics = v30;

    v32 = [v13 objectForKeyedSubscript:@"diskIOMetrics"];
    diskIOMetrics = v15->_diskIOMetrics;
    v15->_diskIOMetrics = v32;

    v34 = [v13 objectForKeyedSubscript:@"memoryMetrics"];
    memoryMetrics = v15->_memoryMetrics;
    v15->_memoryMetrics = v34;

    v36 = [v13 objectForKeyedSubscript:@"displayMetrics"];
    displayMetrics = v15->_displayMetrics;
    v15->_displayMetrics = v36;

    v38 = [v13 objectForKeyedSubscript:@"animationMetrics"];
    animationMetrics = v15->_animationMetrics;
    v15->_animationMetrics = v38;

    v40 = [v13 objectForKeyedSubscript:@"applicationExitMetrics"];
    applicationExitMetrics = v15->_applicationExitMetrics;
    v15->_applicationExitMetrics = v40;

    v42 = [v13 objectForKeyedSubscript:@"signpostMetrics"];
    signpostMetrics = v15->_signpostMetrics;
    v15->_signpostMetrics = v42;
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
  [v7 encodeObject:self->_cpuMetrics forKey:@"cpuMetrics"];
  [v7 encodeObject:self->_gpuMetrics forKey:@"gpuMetrics"];
  [v7 encodeObject:self->_cellularConditionMetrics forKey:@"cellularConditionMetrics"];
  [v7 encodeObject:self->_applicationTimeMetrics forKey:@"applicationTimeMetrics"];
  [v7 encodeObject:self->_locationActivityMetrics forKey:@"locationActivityMetrics"];
  [v7 encodeObject:self->_networkTransferMetrics forKey:@"networkTransferMetrics"];
  [v7 encodeObject:self->_applicationLaunchMetrics forKey:@"applicationLaunchMetrics"];
  [v7 encodeObject:self->_applicationResponsivenessMetrics forKey:@"applicationResponsivenessMetrics"];
  [v7 encodeObject:self->_diskIOMetrics forKey:@"diskIOMetrics"];
  [v7 encodeObject:self->_memoryMetrics forKey:@"memoryMetrics"];
  [v7 encodeObject:self->_displayMetrics forKey:@"displayMetrics"];
  [v7 encodeObject:self->_animationMetrics forKey:@"animationMetrics"];
  [v7 encodeObject:self->_applicationExitMetrics forKey:@"applicationExitMetrics"];
  [v7 encodeObject:self->_signpostMetrics forKey:@"signpostMetrics"];
}

- (MXPowerlogData)initWithCoder:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = MXPowerlogData;
  v5 = [(MXSourceData *)&v47 init];
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

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cpuMetrics"];
    cpuMetrics = v5->_cpuMetrics;
    v5->_cpuMetrics = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gpuMetrics"];
    gpuMetrics = v5->_gpuMetrics;
    v5->_gpuMetrics = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cellularConditionMetrics"];
    cellularConditionMetrics = v5->_cellularConditionMetrics;
    v5->_cellularConditionMetrics = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationTimeMetrics"];
    applicationTimeMetrics = v5->_applicationTimeMetrics;
    v5->_applicationTimeMetrics = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationActivityMetrics"];
    locationActivityMetrics = v5->_locationActivityMetrics;
    v5->_locationActivityMetrics = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkTransferMetrics"];
    networkTransferMetrics = v5->_networkTransferMetrics;
    v5->_networkTransferMetrics = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationLaunchMetrics"];
    applicationLaunchMetrics = v5->_applicationLaunchMetrics;
    v5->_applicationLaunchMetrics = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationResponsivenessMetrics"];
    applicationResponsivenessMetrics = v5->_applicationResponsivenessMetrics;
    v5->_applicationResponsivenessMetrics = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diskIOMetrics"];
    diskIOMetrics = v5->_diskIOMetrics;
    v5->_diskIOMetrics = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"memoryMetrics"];
    memoryMetrics = v5->_memoryMetrics;
    v5->_memoryMetrics = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayMetrics"];
    displayMetrics = v5->_displayMetrics;
    v5->_displayMetrics = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"animationMetrics"];
    animationMetrics = v5->_animationMetrics;
    v5->_animationMetrics = v33;

    v35 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"applicationExitMetrics"];
    applicationExitMetrics = v5->_applicationExitMetrics;
    v5->_applicationExitMetrics = v39;

    v41 = MEMORY[0x277CBEB98];
    v42 = objc_opt_class();
    v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
    v44 = [v4 decodeObjectOfClasses:v43 forKey:@"signpostMetrics"];
    signpostMetrics = v5->_signpostMetrics;
    v5->_signpostMetrics = v44;
  }

  return v5;
}

@end