@interface CSVoiceTriggerSecondPassRequestOption
- (CSVoiceTriggerSecondPassRequestOption)initWithFirstPassSource:(unint64_t)source deviceId:(id)id audioProviderUUID:(id)d firstPassInfo:(id)info rejectionMHUUID:(id)iD isSecondChanceRun:(BOOL)run firstpassMetrics:(id)metrics rtModelRequestOptions:(id)self0;
@end

@implementation CSVoiceTriggerSecondPassRequestOption

- (CSVoiceTriggerSecondPassRequestOption)initWithFirstPassSource:(unint64_t)source deviceId:(id)id audioProviderUUID:(id)d firstPassInfo:(id)info rejectionMHUUID:(id)iD isSecondChanceRun:(BOOL)run firstpassMetrics:(id)metrics rtModelRequestOptions:(id)self0
{
  idCopy = id;
  dCopy = d;
  infoCopy = info;
  iDCopy = iD;
  metricsCopy = metrics;
  optionsCopy = options;
  v30.receiver = self;
  v30.super_class = CSVoiceTriggerSecondPassRequestOption;
  v20 = [(CSVoiceTriggerSecondPassRequestOption *)&v30 init];
  v21 = v20;
  if (v20)
  {
    v20->_firstPassSource = source;
    objc_storeStrong(&v20->_deviceId, id);
    objc_storeStrong(&v21->_audioProviderUUID, d);
    v22 = [infoCopy copy];
    firstPassTriggerInfo = v21->_firstPassTriggerInfo;
    v21->_firstPassTriggerInfo = v22;

    v24 = [iDCopy copy];
    rejectionMHUUID = v21->_rejectionMHUUID;
    v21->_rejectionMHUUID = v24;

    v21->_isSecondChanceRun = run;
    objc_storeStrong(&v21->_firstpassMetrics, metrics);
    objc_storeStrong(&v21->_rtModelRequestOptions, options);
  }

  return v21;
}

@end