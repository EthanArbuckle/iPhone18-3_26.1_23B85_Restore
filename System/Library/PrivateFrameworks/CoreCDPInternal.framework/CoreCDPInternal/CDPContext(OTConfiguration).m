@interface CDPContext(OTConfiguration)
- (id)octagonConfigurationContext;
@end

@implementation CDPContext(OTConfiguration)

- (id)octagonConfigurationContext
{
  v2 = objc_alloc_init(MEMORY[0x277CDBD50]);
  v3 = [a1 dsid];
  v4 = [v3 stringValue];
  [v2 setDsid:v4];

  v5 = [a1 altDSID];
  [v2 setAltDSID:v5];

  if (objc_opt_respondsToSelector())
  {
    v6 = [a1 telemetryFlowID];
    [v2 setFlowID:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [a1 telemetryDeviceSessionID];
    [v2 setDeviceSessionID:v7];
  }

  return v2;
}

@end