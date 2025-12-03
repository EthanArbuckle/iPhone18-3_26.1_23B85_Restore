@interface CHSMutableRemoteDevice
- (void)setDeviceID:(id)d;
- (void)setLastConnectionDate:(id)date;
- (void)setName:(id)name;
- (void)setRelationshipID:(id)d;
@end

@implementation CHSMutableRemoteDevice

- (void)setName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy copy];
  name = self->super._name;
  self->super._name = v4;
}

- (void)setRelationshipID:(id)d
{
  dCopy = d;
  v4 = [dCopy copy];
  relationshipID = self->super._relationshipID;
  self->super._relationshipID = v4;
}

- (void)setDeviceID:(id)d
{
  dCopy = d;
  v4 = [dCopy copy];
  deviceID = self->super._deviceID;
  self->super._deviceID = v4;
}

- (void)setLastConnectionDate:(id)date
{
  dateCopy = date;
  v4 = [dateCopy copy];
  lastConnectionDate = self->super._lastConnectionDate;
  self->super._lastConnectionDate = v4;
}

@end