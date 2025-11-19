@interface UARPActiveFirmwareAnalyticsEvent
- (id)description;
- (void)dealloc;
- (void)updateWithAccessoryID:(id)a3;
@end

@implementation UARPActiveFirmwareAnalyticsEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPActiveFirmwareAnalyticsEvent;
  [(UARPActiveFirmwareAnalyticsEvent *)&v3 dealloc];
}

- (void)updateWithAccessoryID:(id)a3
{
  -[UARPActiveFirmwareAnalyticsEvent setManufacturerName:](self, "setManufacturerName:", [a3 manufacturer]);
  -[UARPActiveFirmwareAnalyticsEvent setModelName:](self, "setModelName:", [a3 modelAnalytics]);
  -[UARPActiveFirmwareAnalyticsEvent setCountryCode:](self, "setCountryCode:", [a3 countryCode]);
  -[UARPActiveFirmwareAnalyticsEvent setActiveFirmwareVersion:](self, "setActiveFirmwareVersion:", [a3 firmwareVersion]);
  -[UARPActiveFirmwareAnalyticsEvent setTransport:](self, "setTransport:", [a3 transport]);
  v5 = [a3 shareAnalyticsEventsWithThirdParty];

  [(UARPActiveFirmwareAnalyticsEvent *)self setShare3rdParty:v5];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<Model Name = %@>, ", self->_modelName];
  [v3 appendFormat:@"<Active Firmware Version = %@>", self->_activeFirmwareVersion];

  return [NSString stringWithString:v3];
}

@end