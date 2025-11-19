@interface NTKHeartRateModel
- (NTKHeartRateModel)initWithDelegate:(id)a3;
- (NTKHeartRateModelDelegate)delegate;
- (void)manager:(id)a3 receivedLatestHeartRateSample:(id)a4;
@end

@implementation NTKHeartRateModel

- (NTKHeartRateModel)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NTKHeartRateModel;
  v5 = [(NTKHeartRateModel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)manager:(id)a3 receivedLatestHeartRateSample:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_mostRecentHeartRate != v6)
  {
    objc_storeStrong(&self->_mostRecentHeartRate, a4);
    v7 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2112;
      v13 = v6;
      v8 = v11;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: updated heart rate %@", &v10, 0x16u);
    }

    v9 = [(NTKHeartRateModel *)self delegate];
    [v9 model:self updatedSample:v6];
  }
}

- (NTKHeartRateModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end