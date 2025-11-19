@interface _IDSDataChannelLinkConnection
- (id)description;
@end

@implementation _IDSDataChannelLinkConnection

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_IDSDataChannelLinkConnection *)self type];
  v5 = [(_IDSDataChannelLinkConnection *)self clientNWConnectionID];
  v6 = [(_IDSDataChannelLinkConnection *)self protocolStack];
  v7 = [(_IDSDataChannelLinkConnection *)self childConnectionID];
  v8 = [(_IDSDataChannelLinkConnection *)self allowOutgoing];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<_IDSDataChannelLinkConnection %@ [C%llu] %@ — childConnectionID:%@ allowOutgoing:%@>", v4, v5, v6, v7, v9];

  return v10;
}

@end