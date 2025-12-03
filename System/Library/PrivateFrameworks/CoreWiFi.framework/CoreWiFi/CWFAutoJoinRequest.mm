@interface CWFAutoJoinRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CWFAutoJoinRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  v5 = [uUIDString substringToIndex:5];
  v6 = sub_1E0BCC248(self->_addedAt);
  v7 = [v3 stringWithFormat:@"uuid=%@, addedAt=%@, params=%@, autoHotspot=%d, throttled=%d", v5, v6, self->_parameters, self->_allowAutoHotspotFallback, self->_throttled];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFAutoJoinRequest allocWithZone:?]];
  [(CWFAutoJoinRequest *)v4 setUUID:self->_UUID];
  [(CWFAutoJoinRequest *)v4 setParameters:self->_parameters];
  [(CWFAutoJoinRequest *)v4 setAllowAutoHotspotFallback:self->_allowAutoHotspotFallback];
  [(CWFAutoJoinRequest *)v4 setAddedAt:self->_addedAt];
  [(CWFAutoJoinRequest *)v4 setThrottled:self->_throttled];
  [(CWFAutoJoinRequest *)v4 setReply:self->_reply];
  return v4;
}

@end