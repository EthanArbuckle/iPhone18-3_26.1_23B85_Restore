@interface MPCAssistantMutableRemoteControlDestination
- (void)setAppBundleID:(id)a3;
- (void)setHashedOutputDeviceUIDs:(id)a3;
- (void)setIsCompanion:(BOOL)a3;
- (void)setIsLocal:(BOOL)a3;
- (void)setOrigin:(void *)a3;
- (void)setOriginatingDeviceControl:(BOOL)a3;
- (void)setOriginatingOutputDeviceUID:(id)a3;
- (void)setOutputDeviceUIDs:(id)a3;
- (void)setOutputGroupID:(id)a3;
- (void)setOutputGroups:(id)a3;
- (void)setPlayerID:(id)a3;
- (void)setSingleGroup:(BOOL)a3;
@end

@implementation MPCAssistantMutableRemoteControlDestination

- (void)setIsLocal:(BOOL)a3
{
  if (self->super._isLocal != a3)
  {
    self->super._isLocal = a3;
  }
}

- (void)setIsCompanion:(BOOL)a3
{
  if (self->super._isCompanion != a3)
  {
    self->super._isCompanion = a3;
  }
}

- (void)setOriginatingDeviceControl:(BOOL)a3
{
  if (self->super._originatingDeviceControl != a3)
  {
    self->super._originatingDeviceControl = a3;
  }
}

- (void)setSingleGroup:(BOOL)a3
{
  if (self->super._singleGroup != a3)
  {
    self->super._singleGroup = a3;
  }
}

- (void)setOriginatingOutputDeviceUID:(id)a3
{
  if (self->super._originatingOutputDeviceUID != a3)
  {
    v5 = [a3 copy];
    originatingOutputDeviceUID = self->super._originatingOutputDeviceUID;
    self->super._originatingOutputDeviceUID = v5;

    MEMORY[0x1EEE66BB8](v5, originatingOutputDeviceUID);
  }
}

- (void)setOutputGroupID:(id)a3
{
  if (self->super._outputGroupID != a3)
  {
    v5 = [a3 copy];
    outputGroupID = self->super._outputGroupID;
    self->super._outputGroupID = v5;

    MEMORY[0x1EEE66BB8](v5, outputGroupID);
  }
}

- (void)setOutputGroups:(id)a3
{
  if (self->super._outputGroups != a3)
  {
    v5 = [a3 copy];
    outputGroups = self->super._outputGroups;
    self->super._outputGroups = v5;

    MEMORY[0x1EEE66BB8](v5, outputGroups);
  }
}

- (void)setHashedOutputDeviceUIDs:(id)a3
{
  if (self->super._hashedOutputDeviceUIDs != a3)
  {
    v5 = [a3 copy];
    hashedOutputDeviceUIDs = self->super._hashedOutputDeviceUIDs;
    self->super._hashedOutputDeviceUIDs = v5;

    MEMORY[0x1EEE66BB8](v5, hashedOutputDeviceUIDs);
  }
}

- (void)setOutputDeviceUIDs:(id)a3
{
  if (self->super._outputDeviceUIDs != a3)
  {
    v5 = [a3 copy];
    outputDeviceUIDs = self->super._outputDeviceUIDs;
    self->super._outputDeviceUIDs = v5;

    MEMORY[0x1EEE66BB8](v5, outputDeviceUIDs);
  }
}

- (void)setOrigin:(void *)a3
{
  origin = self->super._origin;
  if (origin != a3)
  {
    if (origin)
    {
      CFRelease(origin);
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->super._origin = v6;
  }
}

- (void)setPlayerID:(id)a3
{
  if (self->super._playerID != a3)
  {
    v5 = [a3 copy];
    playerID = self->super._playerID;
    self->super._playerID = v5;

    MEMORY[0x1EEE66BB8](v5, playerID);
  }
}

- (void)setAppBundleID:(id)a3
{
  if (self->super._appBundleID != a3)
  {
    v5 = [a3 copy];
    appBundleID = self->super._appBundleID;
    self->super._appBundleID = v5;

    MEMORY[0x1EEE66BB8](v5, appBundleID);
  }
}

@end