@interface IDSQuickRelayMetric
- (IDSQuickRelayMetric)initWithType:(id)type eventSubType:(id)subType duration:(id)duration resultCode:(id)code providerType:(id)providerType transportType:(id)transportType interfaceType:(id)interfaceType skeEnabled:(id)self0 isInitiator:(id)self1 protocolVersion:(id)self2 retryCount:(id)self3 serviceName:(id)self4 subServiceName:(id)self5 participantCount:(id)self6;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSQuickRelayMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  type = [(IDSQuickRelayMetric *)self type];
  if (type)
  {
    CFDictionarySetValue(v3, @"type", type);
  }

  subType = [(IDSQuickRelayMetric *)self subType];
  if (subType)
  {
    CFDictionarySetValue(v3, @"subType", subType);
  }

  duration = [(IDSQuickRelayMetric *)self duration];
  if (duration)
  {
    CFDictionarySetValue(v3, @"duration", duration);
  }

  resultCode = [(IDSQuickRelayMetric *)self resultCode];
  if (resultCode)
  {
    CFDictionarySetValue(v3, @"resultCode", resultCode);
  }

  providerType = [(IDSQuickRelayMetric *)self providerType];
  if (providerType)
  {
    CFDictionarySetValue(v3, @"providerType", providerType);
  }

  transportType = [(IDSQuickRelayMetric *)self transportType];
  if (transportType)
  {
    CFDictionarySetValue(v3, @"transportType", transportType);
  }

  interfaceType = [(IDSQuickRelayMetric *)self interfaceType];
  if (interfaceType)
  {
    CFDictionarySetValue(v3, @"interfaceType", interfaceType);
  }

  skeEnabled = [(IDSQuickRelayMetric *)self skeEnabled];
  if (skeEnabled)
  {
    CFDictionarySetValue(v3, @"skeEnabled", skeEnabled);
  }

  isInitiator = [(IDSQuickRelayMetric *)self isInitiator];
  if (isInitiator)
  {
    CFDictionarySetValue(v3, @"isInitiator", isInitiator);
  }

  protocolVersion = [(IDSQuickRelayMetric *)self protocolVersion];
  if (protocolVersion)
  {
    CFDictionarySetValue(v3, @"protocolVersion", protocolVersion);
  }

  retryCount = [(IDSQuickRelayMetric *)self retryCount];
  if (retryCount)
  {
    CFDictionarySetValue(v3, @"retryCount", retryCount);
  }

  serviceName = [(IDSQuickRelayMetric *)self serviceName];
  if (serviceName)
  {
    CFDictionarySetValue(v3, @"serviceName", serviceName);
  }

  subServiceName = [(IDSQuickRelayMetric *)self subServiceName];
  if (subServiceName)
  {
    CFDictionarySetValue(v3, @"subServiceName", subServiceName);
  }

  participantCount = [(IDSQuickRelayMetric *)self participantCount];
  if (participantCount)
  {
    CFDictionarySetValue(v3, @"participantCount", participantCount);
  }

  return v3;
}

- (IDSQuickRelayMetric)initWithType:(id)type eventSubType:(id)subType duration:(id)duration resultCode:(id)code providerType:(id)providerType transportType:(id)transportType interfaceType:(id)interfaceType skeEnabled:(id)self0 isInitiator:(id)self1 protocolVersion:(id)self2 retryCount:(id)self3 serviceName:(id)self4 subServiceName:(id)self5 participantCount:(id)self6
{
  typeCopy = type;
  subTypeCopy = subType;
  durationCopy = duration;
  durationCopy2 = duration;
  codeCopy = code;
  codeCopy2 = code;
  providerTypeCopy = providerType;
  transportTypeCopy = transportType;
  interfaceTypeCopy = interfaceType;
  enabledCopy = enabled;
  initiatorCopy = initiator;
  versionCopy = version;
  countCopy = count;
  nameCopy = name;
  serviceNameCopy = serviceName;
  participantCountCopy = participantCount;
  v42.receiver = self;
  v42.super_class = IDSQuickRelayMetric;
  v27 = [(IDSQuickRelayMetric *)&v42 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_type, type);
    objc_storeStrong(&v28->_subType, subType);
    objc_storeStrong(&v28->_duration, durationCopy);
    objc_storeStrong(&v28->_resultCode, codeCopy);
    objc_storeStrong(&v28->_providerType, providerType);
    objc_storeStrong(&v28->_transportType, transportType);
    objc_storeStrong(&v28->_interfaceType, interfaceType);
    objc_storeStrong(&v28->_skeEnabled, enabled);
    objc_storeStrong(&v28->_isInitiator, initiator);
    objc_storeStrong(&v28->_protocolVersion, version);
    objc_storeStrong(&v28->_retryCount, count);
    objc_storeStrong(&v28->_serviceName, name);
    objc_storeStrong(&v28->_subServiceName, serviceName);
    objc_storeStrong(&v28->_participantCount, participantCount);
  }

  return v28;
}

@end