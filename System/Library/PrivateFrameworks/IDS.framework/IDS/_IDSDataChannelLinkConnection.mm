@interface _IDSDataChannelLinkConnection
- (id)description;
@end

@implementation _IDSDataChannelLinkConnection

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  type = [(_IDSDataChannelLinkConnection *)self type];
  clientNWConnectionID = [(_IDSDataChannelLinkConnection *)self clientNWConnectionID];
  protocolStack = [(_IDSDataChannelLinkConnection *)self protocolStack];
  childConnectionID = [(_IDSDataChannelLinkConnection *)self childConnectionID];
  allowOutgoing = [(_IDSDataChannelLinkConnection *)self allowOutgoing];
  v9 = @"NO";
  if (allowOutgoing)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<_IDSDataChannelLinkConnection %@ [C%llu] %@ — childConnectionID:%@ allowOutgoing:%@>", type, clientNWConnectionID, protocolStack, childConnectionID, v9];

  return v10;
}

@end