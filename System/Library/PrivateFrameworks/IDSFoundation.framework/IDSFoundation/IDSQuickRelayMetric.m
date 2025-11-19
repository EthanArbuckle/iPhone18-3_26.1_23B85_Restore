@interface IDSQuickRelayMetric
- (IDSQuickRelayMetric)initWithType:(id)a3 eventSubType:(id)a4 duration:(id)a5 resultCode:(id)a6 providerType:(id)a7 transportType:(id)a8 interfaceType:(id)a9 skeEnabled:(id)a10 isInitiator:(id)a11 protocolVersion:(id)a12 retryCount:(id)a13 serviceName:(id)a14 subServiceName:(id)a15 participantCount:(id)a16;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSQuickRelayMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSQuickRelayMetric *)self type];
  if (v4)
  {
    CFDictionarySetValue(v3, @"type", v4);
  }

  v5 = [(IDSQuickRelayMetric *)self subType];
  if (v5)
  {
    CFDictionarySetValue(v3, @"subType", v5);
  }

  v6 = [(IDSQuickRelayMetric *)self duration];
  if (v6)
  {
    CFDictionarySetValue(v3, @"duration", v6);
  }

  v7 = [(IDSQuickRelayMetric *)self resultCode];
  if (v7)
  {
    CFDictionarySetValue(v3, @"resultCode", v7);
  }

  v8 = [(IDSQuickRelayMetric *)self providerType];
  if (v8)
  {
    CFDictionarySetValue(v3, @"providerType", v8);
  }

  v9 = [(IDSQuickRelayMetric *)self transportType];
  if (v9)
  {
    CFDictionarySetValue(v3, @"transportType", v9);
  }

  v10 = [(IDSQuickRelayMetric *)self interfaceType];
  if (v10)
  {
    CFDictionarySetValue(v3, @"interfaceType", v10);
  }

  v11 = [(IDSQuickRelayMetric *)self skeEnabled];
  if (v11)
  {
    CFDictionarySetValue(v3, @"skeEnabled", v11);
  }

  v12 = [(IDSQuickRelayMetric *)self isInitiator];
  if (v12)
  {
    CFDictionarySetValue(v3, @"isInitiator", v12);
  }

  v13 = [(IDSQuickRelayMetric *)self protocolVersion];
  if (v13)
  {
    CFDictionarySetValue(v3, @"protocolVersion", v13);
  }

  v14 = [(IDSQuickRelayMetric *)self retryCount];
  if (v14)
  {
    CFDictionarySetValue(v3, @"retryCount", v14);
  }

  v15 = [(IDSQuickRelayMetric *)self serviceName];
  if (v15)
  {
    CFDictionarySetValue(v3, @"serviceName", v15);
  }

  v16 = [(IDSQuickRelayMetric *)self subServiceName];
  if (v16)
  {
    CFDictionarySetValue(v3, @"subServiceName", v16);
  }

  v17 = [(IDSQuickRelayMetric *)self participantCount];
  if (v17)
  {
    CFDictionarySetValue(v3, @"participantCount", v17);
  }

  return v3;
}

- (IDSQuickRelayMetric)initWithType:(id)a3 eventSubType:(id)a4 duration:(id)a5 resultCode:(id)a6 providerType:(id)a7 transportType:(id)a8 interfaceType:(id)a9 skeEnabled:(id)a10 isInitiator:(id)a11 protocolVersion:(id)a12 retryCount:(id)a13 serviceName:(id)a14 subServiceName:(id)a15 participantCount:(id)a16
{
  v41 = a3;
  v40 = a4;
  v31 = a5;
  v39 = a5;
  v32 = a6;
  v38 = a6;
  v37 = a7;
  v36 = a8;
  v35 = a9;
  v34 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v26 = a16;
  v42.receiver = self;
  v42.super_class = IDSQuickRelayMetric;
  v27 = [(IDSQuickRelayMetric *)&v42 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_type, a3);
    objc_storeStrong(&v28->_subType, a4);
    objc_storeStrong(&v28->_duration, v31);
    objc_storeStrong(&v28->_resultCode, v32);
    objc_storeStrong(&v28->_providerType, a7);
    objc_storeStrong(&v28->_transportType, a8);
    objc_storeStrong(&v28->_interfaceType, a9);
    objc_storeStrong(&v28->_skeEnabled, a10);
    objc_storeStrong(&v28->_isInitiator, a11);
    objc_storeStrong(&v28->_protocolVersion, a12);
    objc_storeStrong(&v28->_retryCount, a13);
    objc_storeStrong(&v28->_serviceName, a14);
    objc_storeStrong(&v28->_subServiceName, a15);
    objc_storeStrong(&v28->_participantCount, a16);
  }

  return v28;
}

@end