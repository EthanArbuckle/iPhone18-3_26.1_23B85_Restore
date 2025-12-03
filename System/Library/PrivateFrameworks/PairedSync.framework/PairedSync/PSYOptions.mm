@interface PSYOptions
- (PSYOptions)init;
- (PSYOptions)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSYOptions

- (PSYOptions)init
{
  v3.receiver = self;
  v3.super_class = PSYOptions;
  result = [(PSYOptions *)&v3 init];
  if (result)
  {
    result->_resumePendingJobs = 1;
    result->_terminationJobCount = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (PSYOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PSYOptions;
  v5 = [(PSYOptions *)&v17 init];
  if (v5)
  {
    v5->_resumePendingJobs = [coderCopy decodeBoolForKey:@"PSOptionsResumePendingJobsKey"];
    v5->_dryRun = [coderCopy decodeBoolForKey:@"PSOptionsDryRunKey"];
    v5->_terminationJobCount = [coderCopy decodeIntegerForKey:@"PSOptionsTerminationJobCount"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"PSOptionsTestInputsKey"];
    testInputs = v5->_testInputs;
    v5->_testInputs = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"PSOptionsJobsKey"];
    jobs = v5->_jobs;
    v5->_jobs = v14;

    v5->_resetDeviceSyncState = [coderCopy decodeBoolForKey:@"PSOptionsResetDeviceSyncStateKey"];
    v5->_syncSessionType = [coderCopy decodeIntegerForKey:@"syncSessionType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[PSYOptions shouldResumePendingJobs](self forKey:{"shouldResumePendingJobs"), @"PSOptionsResumePendingJobsKey"}];
  [coderCopy encodeBool:-[PSYOptions dryRun](self forKey:{"dryRun"), @"PSOptionsDryRunKey"}];
  [coderCopy encodeInteger:-[PSYOptions terminationJobCount](self forKey:{"terminationJobCount"), @"PSOptionsTerminationJobCount"}];
  [coderCopy encodeObject:self->_testInputs forKey:@"PSOptionsTestInputsKey"];
  [coderCopy encodeObject:self->_jobs forKey:@"PSOptionsJobsKey"];
  [coderCopy encodeBool:self->_resetDeviceSyncState forKey:@"PSOptionsResetDeviceSyncStateKey"];
  [coderCopy encodeInteger:self->_syncSessionType forKey:@"syncSessionType"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[PSYOptions dryRun](self, "dryRun")}];
  jobs = [(PSYOptions *)self jobs];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[PSYOptions shouldResetDeviceSyncState](self, "shouldResetDeviceSyncState")}];
  v9 = [v3 stringWithFormat:@"<%@ %p dryRun=%@; jobs=%@; resetDeviceSyncState=%@>", v5, self, v6, jobs, v8];;

  return v9;
}

@end