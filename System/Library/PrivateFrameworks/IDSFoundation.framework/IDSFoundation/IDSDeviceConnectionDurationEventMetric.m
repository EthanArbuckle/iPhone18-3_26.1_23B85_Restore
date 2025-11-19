@interface IDSDeviceConnectionDurationEventMetric
- (IDSDeviceConnectionDurationEventMetric)initWithService:(id)a3 wasSuccessful:(BOOL)a4 clientInitTime:(id)a5 clientOpenSocketCompletionTime:(id)a6 daemonOpenSocketTime:(id)a7 daemonOpenSocketCompletionTime:(id)a8 firstPacketReceiveTime:(id)a9 connectionInitTime:(id)a10;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSDeviceConnectionDurationEventMetric

- (NSDictionary)dictionaryRepresentation
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return v2;
}

- (IDSDeviceConnectionDurationEventMetric)initWithService:(id)a3 wasSuccessful:(BOOL)a4 clientInitTime:(id)a5 clientOpenSocketCompletionTime:(id)a6 daemonOpenSocketTime:(id)a7 daemonOpenSocketCompletionTime:(id)a8 firstPacketReceiveTime:(id)a9 connectionInitTime:(id)a10
{
  v26 = a3;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v16 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = IDSDeviceConnectionDurationEventMetric;
  v18 = [(IDSDeviceConnectionDurationEventMetric *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_serviceName, a3);
    v19->_wasSuccessful = a4;
    objc_storeStrong(&v19->_clientInitTime, a5);
    objc_storeStrong(&v19->_clientOpenSocketCompletionTime, a6);
    objc_storeStrong(&v19->_daemonOpenSocketTime, a7);
    objc_storeStrong(&v19->_daemonOpenSocketCompletionTime, a8);
    objc_storeStrong(&v19->_firstPacketReceiveTime, a9);
    objc_storeStrong(&v19->_connectionInitTime, a10);
  }

  return v19;
}

@end