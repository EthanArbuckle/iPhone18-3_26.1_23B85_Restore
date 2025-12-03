@interface UARPUpdateFirmwareAnalyticsEvent
- (id)description;
- (void)dealloc;
- (void)updateWithAccessoryID:(id)d assetID:(id)iD;
- (void)updateWithFrameworkParams:(id)params;
@end

@implementation UARPUpdateFirmwareAnalyticsEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPUpdateFirmwareAnalyticsEvent;
  [(UARPUpdateFirmwareAnalyticsEvent *)&v3 dealloc];
}

- (void)updateWithAccessoryID:(id)d assetID:(id)iD
{
  -[UARPUpdateFirmwareAnalyticsEvent setManufacturerName:](self, "setManufacturerName:", [d manufacturer]);
  -[UARPUpdateFirmwareAnalyticsEvent setModelName:](self, "setModelName:", [d modelAnalytics]);
  -[UARPUpdateFirmwareAnalyticsEvent setActiveFirmwareVersion:](self, "setActiveFirmwareVersion:", [d firmwareVersion]);
  -[UARPUpdateFirmwareAnalyticsEvent setTransport:](self, "setTransport:", [d transport]);
  -[UARPUpdateFirmwareAnalyticsEvent setCountryCode:](self, "setCountryCode:", [d countryCode]);
  -[UARPUpdateFirmwareAnalyticsEvent setPostedFirmwareVersion:](self, "setPostedFirmwareVersion:", [iD assetVersion]);
  -[UARPUpdateFirmwareAnalyticsEvent setDownloadURL:](self, "setDownloadURL:", [objc_msgSend(iD "remoteURL")]);
  shareAnalyticsEventsWithThirdParty = [d shareAnalyticsEventsWithThirdParty];

  [(UARPUpdateFirmwareAnalyticsEvent *)self setShare3rdParty:shareAnalyticsEventsWithThirdParty];
}

- (void)updateWithFrameworkParams:(id)params
{
  -[UARPUpdateFirmwareAnalyticsEvent setStagingUserInitiated:](self, "setStagingUserInitiated:", [params stagingUserInitiated]);
  -[UARPUpdateFirmwareAnalyticsEvent setStagingDuration:](self, "setStagingDuration:", [params stagingDuration]);
  -[UARPUpdateFirmwareAnalyticsEvent setStagingIterations:](self, "setStagingIterations:", [params stagingIterations]);
  -[UARPUpdateFirmwareAnalyticsEvent setStagingStatus:](self, "setStagingStatus:", [objc_msgSend(params "stagingStatus")]);
  -[UARPUpdateFirmwareAnalyticsEvent setStagingVendorError:](self, "setStagingVendorError:", [params stagingVendorError]);
  -[UARPUpdateFirmwareAnalyticsEvent setApplyUserInitiated:](self, "setApplyUserInitiated:", [params applyUserInitiated]);
  -[UARPUpdateFirmwareAnalyticsEvent setApplyDuration:](self, "setApplyDuration:", [params applyDuration]);
  -[UARPUpdateFirmwareAnalyticsEvent setApplyStatus:](self, "setApplyStatus:", [objc_msgSend(params "applyStatus")]);
  applyVendorError = [params applyVendorError];

  [(UARPUpdateFirmwareAnalyticsEvent *)self setApplyVendorError:applyVendorError];
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