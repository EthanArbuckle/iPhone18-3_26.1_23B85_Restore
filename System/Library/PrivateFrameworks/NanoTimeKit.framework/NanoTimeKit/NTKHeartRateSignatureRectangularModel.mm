@interface NTKHeartRateSignatureRectangularModel
- (void)manager:(id)manager receivedLatestHeartRateSummary:(id)summary;
@end

@implementation NTKHeartRateSignatureRectangularModel

- (void)manager:(id)manager receivedLatestHeartRateSummary:(id)summary
{
  v16 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  if (self->_mostRecentHeartRateSummary != summaryCopy)
  {
    objc_storeStrong(&self->_mostRecentHeartRateSummary, summary);
    v7 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      heartRateDateInterval = [(HKHeartRateSummary *)summaryCopy heartRateDateInterval];
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = heartRateDateInterval;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: updated heart rate summary %{public}@", &v12, 0x16u);
    }

    delegate = [(NTKHeartRateModel *)self delegate];
    [delegate model:self updatedSummary:summaryCopy];
  }
}

@end