@interface UARPActiveFirmwareAnalyticsEvent
- (id)description;
- (void)dealloc;
- (void)updateWithAccessoryID:(id)d;
@end

@implementation UARPActiveFirmwareAnalyticsEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPActiveFirmwareAnalyticsEvent;
  [(UARPActiveFirmwareAnalyticsEvent *)&v3 dealloc];
}

- (void)updateWithAccessoryID:(id)d
{
  -[UARPActiveFirmwareAnalyticsEvent setManufacturerName:](self, "setManufacturerName:", [d manufacturer]);
  -[UARPActiveFirmwareAnalyticsEvent setModelName:](self, "setModelName:", [d modelAnalytics]);
  -[UARPActiveFirmwareAnalyticsEvent setCountryCode:](self, "setCountryCode:", [d countryCode]);
  -[UARPActiveFirmwareAnalyticsEvent setActiveFirmwareVersion:](self, "setActiveFirmwareVersion:", [d firmwareVersion]);
  -[UARPActiveFirmwareAnalyticsEvent setTransport:](self, "setTransport:", [d transport]);
  shareAnalyticsEventsWithThirdParty = [d shareAnalyticsEventsWithThirdParty];

  [(UARPActiveFirmwareAnalyticsEvent *)self setShare3rdParty:shareAnalyticsEventsWithThirdParty];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<Model Name = %@>, ", self->_modelName];
  [v3 appendFormat:@"<Active Firmware Version = %@>", self->_activeFirmwareVersion];

  return [NSString stringWithString:v3];
}

@end