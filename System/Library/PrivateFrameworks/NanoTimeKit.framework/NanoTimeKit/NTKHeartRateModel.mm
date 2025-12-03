@interface NTKHeartRateModel
- (NTKHeartRateModel)initWithDelegate:(id)delegate;
- (NTKHeartRateModelDelegate)delegate;
- (void)manager:(id)manager receivedLatestHeartRateSample:(id)sample;
@end

@implementation NTKHeartRateModel

- (NTKHeartRateModel)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = NTKHeartRateModel;
  v5 = [(NTKHeartRateModel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)manager:(id)manager receivedLatestHeartRateSample:(id)sample
{
  v14 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  if (self->_mostRecentHeartRate != sampleCopy)
  {
    objc_storeStrong(&self->_mostRecentHeartRate, sample);
    v7 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2112;
      v13 = sampleCopy;
      v8 = v11;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: updated heart rate %@", &v10, 0x16u);
    }

    delegate = [(NTKHeartRateModel *)self delegate];
    [delegate model:self updatedSample:sampleCopy];
  }
}

- (NTKHeartRateModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end