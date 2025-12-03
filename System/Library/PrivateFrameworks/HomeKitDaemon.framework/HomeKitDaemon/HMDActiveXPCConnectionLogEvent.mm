@interface HMDActiveXPCConnectionLogEvent
+ (id)initWithNewXPCConnectionAdded:(id)added;
+ (id)initWithXPCConnectionRemoved:(id)removed;
- (HMDActiveXPCConnectionLogEvent)initWithXPCConnection:(id)connection added:(BOOL)added;
@end

@implementation HMDActiveXPCConnectionLogEvent

- (HMDActiveXPCConnectionLogEvent)initWithXPCConnection:(id)connection added:(BOOL)added
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = HMDActiveXPCConnectionLogEvent;
  v7 = [(HMMLogEvent *)&v11 init];
  if (v7)
  {
    name = [connectionCopy name];
    name = v7->_name;
    v7->_name = name;

    v7->_activated = [connectionCopy isActivated];
    v7->_added = added;
  }

  return v7;
}

+ (id)initWithXPCConnectionRemoved:(id)removed
{
  removedCopy = removed;
  v4 = [[HMDActiveXPCConnectionLogEvent alloc] initWithXPCConnection:removedCopy added:0];

  return v4;
}

+ (id)initWithNewXPCConnectionAdded:(id)added
{
  addedCopy = added;
  v4 = [[HMDActiveXPCConnectionLogEvent alloc] initWithXPCConnection:addedCopy added:1];

  return v4;
}

@end