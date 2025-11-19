@interface _IDSDataChannelLinkConnections
- (BOOL)isQUICPod;
- (id)description;
@end

@implementation _IDSDataChannelLinkConnections

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_IDSDataChannelLinkConnections *)self udp];
  v5 = [(_IDSDataChannelLinkConnections *)self qpod];
  v6 = [v3 stringWithFormat:@"<_IDSDataChannelLinkConnections\n    udp: %@\n    qpod: %@\n>", v4, v5];

  return v6;
}

- (BOOL)isQUICPod
{
  v3 = [(_IDSDataChannelLinkConnections *)self qpod];
  if (v3)
  {
    v4 = [(_IDSDataChannelLinkConnections *)self qpod];
    v5 = [v4 allowOutgoing];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end