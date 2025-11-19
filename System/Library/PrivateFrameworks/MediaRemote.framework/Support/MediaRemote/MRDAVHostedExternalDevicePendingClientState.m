@interface MRDAVHostedExternalDevicePendingClientState
- (id)description;
@end

@implementation MRDAVHostedExternalDevicePendingClientState

- (id)description
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@ %p{\n", objc_opt_class(), self];
  [v3 appendFormat:@" hasConnected"];
  if (self->_connectionState)
  {
    v4 = MRExternalDeviceConnectionStateCopyDescription();
    [v3 appendFormat:@"    connectionState=%@\n", v4];
  }

  if (self->_connectionStateError)
  {
    [v3 appendFormat:@"    connectionStateError=%@\n", self->_connectionStateError];
  }

  if (self->_deviceInfo)
  {
    [v3 appendFormat:@"    deviceInfo = %@\n", self->_deviceInfo];
  }

  if (self->_endpoint)
  {
    [v3 appendFormat:@"    endpoint = %@\n", self->_endpoint];
  }

  volume = self->_volume;
  if (volume)
  {
    [(NSNumber *)volume floatValue];
    [v3 appendFormat:@"    volume = %f\n", v6];
  }

  volumeCapabilities = self->_volumeCapabilities;
  if (volumeCapabilities)
  {
    [(NSNumber *)volumeCapabilities unsignedIntValue];
    v8 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
    [v3 appendFormat:@"    volumeCapabilities = %@\n", v8];
  }

  if ([(NSMutableDictionary *)self->_outputDeviceVolume count])
  {
    outputDeviceVolume = self->_outputDeviceVolume;
    v10 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    outputDeviceVolumes = %@\n", v10];
  }

  if ([(NSMutableDictionary *)self->_outputDeviceVolumeCapabilities count])
  {
    v11 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSMutableDictionary count](self->_outputDeviceVolumeCapabilities, "count")}];
    outputDeviceVolumeCapabilities = self->_outputDeviceVolumeCapabilities;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10007F358;
    v22[3] = &unk_1004B8A90;
    v23 = v11;
    v13 = v11;
    [(NSMutableDictionary *)outputDeviceVolumeCapabilities enumerateKeysAndObjectsUsingBlock:v22];
    v14 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    outputDeviceVolumeCapabilities = %@\n", v14];
  }

  if ([(NSMutableDictionary *)self->_outputDeviceVolume count])
  {
    outputDeviceMute = self->_outputDeviceMute;
    v16 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    outputDeviceMutes = %@\n", v16];
  }

  if (self->_outputDeviceModifications)
  {
    v17 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    modifications = %@\n", v17];
  }

  if ([(NSMutableDictionary *)self->_discoverySessionConfigurationsResults count])
  {
    discoverySessionConfigurationsResults = self->_discoverySessionConfigurationsResults;
    v19 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    discoveryResults = %@\n", v19];
  }

  if (self->_groupSessionToken)
  {
    v20 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    groupSessionToken = %@\n", v20];
  }

  [v3 appendFormat:@"}>\n"];

  return v3;
}

@end