@interface _DKSyncPeerInfo
- (id)debugDescription;
- (id)description;
- (void)transportsString;
@end

@implementation _DKSyncPeerInfo

- (void)transportsString
{
  if (self)
  {
    self = [_DKSyncPeerStatusTracker stringForTransports:self[3]];
    v1 = vars8;
  }

  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  peer = self->_peer;
  transportsString = [(_DKSyncPeerInfo *)self transportsString];
  v8 = [v3 stringWithFormat:@"<%@ %p: peer=%@, transports=%@>", v5, self, peer, transportsString];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_DKSyncPeer *)self->_peer debugDescription];
  transportsString = [(_DKSyncPeerInfo *)self transportsString];
  v8 = [v3 stringWithFormat:@"<%@ %p: peer=%@, transports=%@>", v5, self, v6, transportsString];

  return v8;
}

@end