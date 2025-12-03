@interface _IDSDataChannelLinkConnections
- (BOOL)isQUICPod;
- (id)description;
@end

@implementation _IDSDataChannelLinkConnections

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_IDSDataChannelLinkConnections *)self udp];
  qpod = [(_IDSDataChannelLinkConnections *)self qpod];
  v6 = [v3 stringWithFormat:@"<_IDSDataChannelLinkConnections\n    udp: %@\n    qpod: %@\n>", v4, qpod];

  return v6;
}

- (BOOL)isQUICPod
{
  qpod = [(_IDSDataChannelLinkConnections *)self qpod];
  if (qpod)
  {
    qpod2 = [(_IDSDataChannelLinkConnections *)self qpod];
    allowOutgoing = [qpod2 allowOutgoing];
  }

  else
  {
    allowOutgoing = 0;
  }

  return allowOutgoing;
}

@end