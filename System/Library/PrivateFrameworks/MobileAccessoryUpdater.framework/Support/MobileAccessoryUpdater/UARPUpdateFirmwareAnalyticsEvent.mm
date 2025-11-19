@interface UARPUpdateFirmwareAnalyticsEvent
- (id)description;
- (void)dealloc;
- (void)updateWithAccessoryID:(id)a3 assetID:(id)a4;
- (void)updateWithFrameworkParams:(id)a3;
@end

@implementation UARPUpdateFirmwareAnalyticsEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPUpdateFirmwareAnalyticsEvent;
  [(UARPUpdateFirmwareAnalyticsEvent *)&v3 dealloc];
}

- (void)updateWithAccessoryID:(id)a3 assetID:(id)a4
{
  -[UARPUpdateFirmwareAnalyticsEvent setManufacturerName:](self, "setManufacturerName:", [a3 manufacturer]);
  -[UARPUpdateFirmwareAnalyticsEvent setModelName:](self, "setModelName:", [a3 modelAnalytics]);
  -[UARPUpdateFirmwareAnalyticsEvent setActiveFirmwareVersion:](self, "setActiveFirmwareVersion:", [a3 firmwareVersion]);
  -[UARPUpdateFirmwareAnalyticsEvent setTransport:](self, "setTransport:", [a3 transport]);
  -[UARPUpdateFirmwareAnalyticsEvent setCountryCode:](self, "setCountryCode:", [a3 countryCode]);
  -[UARPUpdateFirmwareAnalyticsEvent setPostedFirmwareVersion:](self, "setPostedFirmwareVersion:", [a4 assetVersion]);
  -[UARPUpdateFirmwareAnalyticsEvent setDownloadURL:](self, "setDownloadURL:", [objc_msgSend(a4 "remoteURL")]);
  v7 = [a3 shareAnalyticsEventsWithThirdParty];

  [(UARPUpdateFirmwareAnalyticsEvent *)self setShare3rdParty:v7];
}

- (void)updateWithFrameworkParams:(id)a3
{
  -[UARPUpdateFirmwareAnalyticsEvent setStagingUserInitiated:](self, "setStagingUserInitiated:", [a3 stagingUserInitiated]);
  -[UARPUpdateFirmwareAnalyticsEvent setStagingDuration:](self, "setStagingDuration:", [a3 stagingDuration]);
  -[UARPUpdateFirmwareAnalyticsEvent setStagingIterations:](self, "setStagingIterations:", [a3 stagingIterations]);
  -[UARPUpdateFirmwareAnalyticsEvent setStagingStatus:](self, "setStagingStatus:", [objc_msgSend(a3 "stagingStatus")]);
  -[UARPUpdateFirmwareAnalyticsEvent setStagingVendorError:](self, "setStagingVendorError:", [a3 stagingVendorError]);
  -[UARPUpdateFirmwareAnalyticsEvent setApplyUserInitiated:](self, "setApplyUserInitiated:", [a3 applyUserInitiated]);
  -[UARPUpdateFirmwareAnalyticsEvent setApplyDuration:](self, "setApplyDuration:", [a3 applyDuration]);
  -[UARPUpdateFirmwareAnalyticsEvent setApplyStatus:](self, "setApplyStatus:", [objc_msgSend(a3 "applyStatus")]);
  v5 = [a3 applyVendorError];

  [(UARPUpdateFirmwareAnalyticsEvent *)self setApplyVendorError:v5];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<Model Name = %@>, ", self->_modelName];
  [v3 appendFormat:@"<Active Firmware Version = %@>, ", self->_activeFirmwareVersion];
  [v3 appendFormat:@"<Download URL = %@>", self->_downloadURL];

  return [NSString stringWithString:v3];
}

@end