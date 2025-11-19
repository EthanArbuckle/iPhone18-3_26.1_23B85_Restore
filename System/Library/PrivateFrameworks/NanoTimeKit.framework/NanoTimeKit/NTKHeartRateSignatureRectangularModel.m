@interface NTKHeartRateSignatureRectangularModel
- (void)manager:(id)a3 receivedLatestHeartRateSummary:(id)a4;
@end

@implementation NTKHeartRateSignatureRectangularModel

- (void)manager:(id)a3 receivedLatestHeartRateSummary:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_mostRecentHeartRateSummary != v6)
  {
    objc_storeStrong(&self->_mostRecentHeartRateSummary, a4);
    v7 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [(HKHeartRateSummary *)v6 heartRateDateInterval];
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: updated heart rate summary %{public}@", &v12, 0x16u);
    }

    v11 = [(NTKHeartRateModel *)self delegate];
    [v11 model:self updatedSummary:v6];
  }
}

@end