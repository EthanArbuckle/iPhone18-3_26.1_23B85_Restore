@interface CHSMutableRemoteDevice
- (void)setDeviceID:(id)a3;
- (void)setLastConnectionDate:(id)a3;
- (void)setName:(id)a3;
- (void)setRelationshipID:(id)a3;
@end

@implementation CHSMutableRemoteDevice

- (void)setName:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  name = self->super._name;
  self->super._name = v4;
}

- (void)setRelationshipID:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  relationshipID = self->super._relationshipID;
  self->super._relationshipID = v4;
}

- (void)setDeviceID:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  deviceID = self->super._deviceID;
  self->super._deviceID = v4;
}

- (void)setLastConnectionDate:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  lastConnectionDate = self->super._lastConnectionDate;
  self->super._lastConnectionDate = v4;
}

@end