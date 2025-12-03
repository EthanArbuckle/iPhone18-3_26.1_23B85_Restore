@interface MPCAssistantMutableRemoteControlDestination
- (void)setAppBundleID:(id)d;
- (void)setHashedOutputDeviceUIDs:(id)ds;
- (void)setIsCompanion:(BOOL)companion;
- (void)setIsLocal:(BOOL)local;
- (void)setOrigin:(void *)origin;
- (void)setOriginatingDeviceControl:(BOOL)control;
- (void)setOriginatingOutputDeviceUID:(id)d;
- (void)setOutputDeviceUIDs:(id)ds;
- (void)setOutputGroupID:(id)d;
- (void)setOutputGroups:(id)groups;
- (void)setPlayerID:(id)d;
- (void)setSingleGroup:(BOOL)group;
@end

@implementation MPCAssistantMutableRemoteControlDestination

- (void)setIsLocal:(BOOL)local
{
  if (self->super._isLocal != local)
  {
    self->super._isLocal = local;
  }
}

- (void)setIsCompanion:(BOOL)companion
{
  if (self->super._isCompanion != companion)
  {
    self->super._isCompanion = companion;
  }
}

- (void)setOriginatingDeviceControl:(BOOL)control
{
  if (self->super._originatingDeviceControl != control)
  {
    self->super._originatingDeviceControl = control;
  }
}

- (void)setSingleGroup:(BOOL)group
{
  if (self->super._singleGroup != group)
  {
    self->super._singleGroup = group;
  }
}

- (void)setOriginatingOutputDeviceUID:(id)d
{
  if (self->super._originatingOutputDeviceUID != d)
  {
    v5 = [d copy];
    originatingOutputDeviceUID = self->super._originatingOutputDeviceUID;
    self->super._originatingOutputDeviceUID = v5;

    MEMORY[0x1EEE66BB8](v5, originatingOutputDeviceUID);
  }
}

- (void)setOutputGroupID:(id)d
{
  if (self->super._outputGroupID != d)
  {
    v5 = [d copy];
    outputGroupID = self->super._outputGroupID;
    self->super._outputGroupID = v5;

    MEMORY[0x1EEE66BB8](v5, outputGroupID);
  }
}

- (void)setOutputGroups:(id)groups
{
  if (self->super._outputGroups != groups)
  {
    v5 = [groups copy];
    outputGroups = self->super._outputGroups;
    self->super._outputGroups = v5;

    MEMORY[0x1EEE66BB8](v5, outputGroups);
  }
}

- (void)setHashedOutputDeviceUIDs:(id)ds
{
  if (self->super._hashedOutputDeviceUIDs != ds)
  {
    v5 = [ds copy];
    hashedOutputDeviceUIDs = self->super._hashedOutputDeviceUIDs;
    self->super._hashedOutputDeviceUIDs = v5;

    MEMORY[0x1EEE66BB8](v5, hashedOutputDeviceUIDs);
  }
}

- (void)setOutputDeviceUIDs:(id)ds
{
  if (self->super._outputDeviceUIDs != ds)
  {
    v5 = [ds copy];
    outputDeviceUIDs = self->super._outputDeviceUIDs;
    self->super._outputDeviceUIDs = v5;

    MEMORY[0x1EEE66BB8](v5, outputDeviceUIDs);
  }
}

- (void)setOrigin:(void *)origin
{
  origin = self->super._origin;
  if (origin != origin)
  {
    if (origin)
    {
      CFRelease(origin);
    }

    if (origin)
    {
      v6 = CFRetain(origin);
    }

    else
    {
      v6 = 0;
    }

    self->super._origin = v6;
  }
}

- (void)setPlayerID:(id)d
{
  if (self->super._playerID != d)
  {
    v5 = [d copy];
    playerID = self->super._playerID;
    self->super._playerID = v5;

    MEMORY[0x1EEE66BB8](v5, playerID);
  }
}

- (void)setAppBundleID:(id)d
{
  if (self->super._appBundleID != d)
  {
    v5 = [d copy];
    appBundleID = self->super._appBundleID;
    self->super._appBundleID = v5;

    MEMORY[0x1EEE66BB8](v5, appBundleID);
  }
}

@end