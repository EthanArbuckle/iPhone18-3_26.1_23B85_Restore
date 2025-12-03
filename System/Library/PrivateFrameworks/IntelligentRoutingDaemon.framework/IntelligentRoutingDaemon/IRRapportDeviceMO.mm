@interface IRRapportDeviceMO
+ (id)aVOutputDeviceMOFromRapportDeviceDO:(id)o inNode:(id)node withManagedObjectContext:(id)context;
+ (void)setPropertiesOfRapportDeviceMO:(id)o withRapportDO:(id)dO;
- (id)convert;
@end

@implementation IRRapportDeviceMO

+ (id)aVOutputDeviceMOFromRapportDeviceDO:(id)o inNode:(id)node withManagedObjectContext:(id)context
{
  contextCopy = context;
  nodeCopy = node;
  oCopy = o;
  v10 = [[IRRapportDeviceMO alloc] initWithContext:contextCopy];

  [(IRRapportDeviceMO *)v10 setNode:nodeCopy];
  [IRRapportDeviceMO setPropertiesOfRapportDeviceMO:v10 withRapportDO:oCopy];

  return v10;
}

+ (void)setPropertiesOfRapportDeviceMO:(id)o withRapportDO:(id)dO
{
  dOCopy = dO;
  oCopy = o;
  rapportEffectiveID = [dOCopy rapportEffectiveID];
  [oCopy setRapportEffectiveID:rapportEffectiveID];

  idsID = [dOCopy idsID];
  [oCopy setIdsID:idsID];

  name = [dOCopy name];
  [oCopy setName:name];

  deviceModel = [dOCopy deviceModel];
  [oCopy setDeviceModel:deviceModel];

  mediaRemoteIdentifier = [dOCopy mediaRemoteIdentifier];
  [oCopy setMediaRemoteIdentifier:mediaRemoteIdentifier];

  iCloudId = [dOCopy iCloudId];
  [oCopy setICloudId:iCloudId];

  mediaRouteIdentifier = [dOCopy mediaRouteIdentifier];

  [oCopy setMediaRouteIdentifier:mediaRouteIdentifier];
}

- (id)convert
{
  v3 = [IRRapportDeviceDO alloc];
  rapportEffectiveID = [(IRRapportDeviceMO *)self rapportEffectiveID];
  idsID = [(IRRapportDeviceMO *)self idsID];
  name = [(IRRapportDeviceMO *)self name];
  deviceModel = [(IRRapportDeviceMO *)self deviceModel];
  mediaRemoteIdentifier = [(IRRapportDeviceMO *)self mediaRemoteIdentifier];
  iCloudId = [(IRRapportDeviceMO *)self iCloudId];
  mediaRouteIdentifier = [(IRRapportDeviceMO *)self mediaRouteIdentifier];
  v11 = [(IRRapportDeviceDO *)v3 initWithRapportEffectiveID:rapportEffectiveID idsID:idsID name:name deviceModel:deviceModel mediaRemoteIdentifier:mediaRemoteIdentifier iCloudId:iCloudId mediaRouteIdentifier:mediaRouteIdentifier];

  return v11;
}

@end