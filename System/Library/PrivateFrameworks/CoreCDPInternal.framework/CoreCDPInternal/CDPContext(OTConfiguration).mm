@interface CDPContext(OTConfiguration)
- (id)octagonConfigurationContext;
@end

@implementation CDPContext(OTConfiguration)

- (id)octagonConfigurationContext
{
  v2 = objc_alloc_init(MEMORY[0x277CDBD50]);
  dsid = [self dsid];
  stringValue = [dsid stringValue];
  [v2 setDsid:stringValue];

  altDSID = [self altDSID];
  [v2 setAltDSID:altDSID];

  if (objc_opt_respondsToSelector())
  {
    telemetryFlowID = [self telemetryFlowID];
    [v2 setFlowID:telemetryFlowID];
  }

  if (objc_opt_respondsToSelector())
  {
    telemetryDeviceSessionID = [self telemetryDeviceSessionID];
    [v2 setDeviceSessionID:telemetryDeviceSessionID];
  }

  return v2;
}

@end