@interface IRNodeMO
+ (id)nodeMOFromNodeDO:(id)o forCandidate:(id)candidate inManagedObjectContext:(id)context;
+ (void)setPropertiesOfNodeMO:(id)o withNodeDO:(id)dO;
- (id)convert;
@end

@implementation IRNodeMO

+ (id)nodeMOFromNodeDO:(id)o forCandidate:(id)candidate inManagedObjectContext:(id)context
{
  oCopy = o;
  contextCopy = context;
  v8 = [[IRNodeMO alloc] initWithContext:contextCopy];
  avOutputDevice = [oCopy avOutputDevice];

  if (avOutputDevice)
  {
    v10 = [[IRAVOutputDeviceMO alloc] initWithContext:contextCopy];
    [(IRNodeMO *)v8 setAvOutputDevice:v10];
  }

  rapportDevice = [oCopy rapportDevice];

  if (rapportDevice)
  {
    v12 = [[IRRapportDeviceMO alloc] initWithContext:contextCopy];
    [(IRNodeMO *)v8 setRapportDevice:v12];
  }

  [IRNodeMO setPropertiesOfNodeMO:v8 withNodeDO:oCopy];

  return v8;
}

+ (void)setPropertiesOfNodeMO:(id)o withNodeDO:(id)dO
{
  oCopy = o;
  dOCopy = dO;
  avOutputDevice = [dOCopy avOutputDevice];

  if (avOutputDevice)
  {
    avOutputDevice2 = [oCopy avOutputDevice];
    avOutputDevice3 = [dOCopy avOutputDevice];
    [IRAVOutputDeviceMO setPropertiesOfAVOutputDeviceMO:avOutputDevice2 withAVOutputDevice:avOutputDevice3];
  }

  rapportDevice = [dOCopy rapportDevice];

  if (rapportDevice)
  {
    rapportDevice2 = [oCopy rapportDevice];
    rapportDevice3 = [dOCopy rapportDevice];
    [IRRapportDeviceMO setPropertiesOfRapportDeviceMO:rapportDevice2 withRapportDO:rapportDevice3];
  }

  avOutpuDeviceIdentifier = [dOCopy avOutpuDeviceIdentifier];
  [oCopy setAvOutpuDeviceIdentifier:avOutpuDeviceIdentifier];

  rapportIdentifier = [dOCopy rapportIdentifier];
  [oCopy setRapportIdentifier:rapportIdentifier];

  idsIdentifier = [dOCopy idsIdentifier];
  [oCopy setIdsIdentifier:idsIdentifier];

  [oCopy setIsLocal:{objc_msgSend(dOCopy, "isLocal")}];
}

- (id)convert
{
  v3 = [IRNodeDO alloc];
  avOutpuDeviceIdentifier = [(IRNodeMO *)self avOutpuDeviceIdentifier];
  rapportIdentifier = [(IRNodeMO *)self rapportIdentifier];
  idsIdentifier = [(IRNodeMO *)self idsIdentifier];
  avOutputDevice = [(IRNodeMO *)self avOutputDevice];
  convert = [avOutputDevice convert];
  rapportDevice = [(IRNodeMO *)self rapportDevice];
  convert2 = [rapportDevice convert];
  v11 = [(IRNodeDO *)v3 initWithAvOutpuDeviceIdentifier:avOutpuDeviceIdentifier rapportIdentifier:rapportIdentifier idsIdentifier:idsIdentifier avOutputDevice:convert rapportDevice:convert2 isLocal:[(IRNodeMO *)self isLocal]];

  return v11;
}

@end