@interface CSVoiceTriggerSecondPassRequestOption
- (CSVoiceTriggerSecondPassRequestOption)initWithFirstPassSource:(unint64_t)a3 deviceId:(id)a4 audioProviderUUID:(id)a5 firstPassInfo:(id)a6 rejectionMHUUID:(id)a7 isSecondChanceRun:(BOOL)a8 firstpassMetrics:(id)a9 rtModelRequestOptions:(id)a10;
@end

@implementation CSVoiceTriggerSecondPassRequestOption

- (CSVoiceTriggerSecondPassRequestOption)initWithFirstPassSource:(unint64_t)a3 deviceId:(id)a4 audioProviderUUID:(id)a5 firstPassInfo:(id)a6 rejectionMHUUID:(id)a7 isSecondChanceRun:(BOOL)a8 firstpassMetrics:(id)a9 rtModelRequestOptions:(id)a10
{
  v29 = a4;
  v28 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  v30.receiver = self;
  v30.super_class = CSVoiceTriggerSecondPassRequestOption;
  v20 = [(CSVoiceTriggerSecondPassRequestOption *)&v30 init];
  v21 = v20;
  if (v20)
  {
    v20->_firstPassSource = a3;
    objc_storeStrong(&v20->_deviceId, a4);
    objc_storeStrong(&v21->_audioProviderUUID, a5);
    v22 = [v16 copy];
    firstPassTriggerInfo = v21->_firstPassTriggerInfo;
    v21->_firstPassTriggerInfo = v22;

    v24 = [v17 copy];
    rejectionMHUUID = v21->_rejectionMHUUID;
    v21->_rejectionMHUUID = v24;

    v21->_isSecondChanceRun = a8;
    objc_storeStrong(&v21->_firstpassMetrics, a9);
    objc_storeStrong(&v21->_rtModelRequestOptions, a10);
  }

  return v21;
}

@end