@interface HMDActiveXPCConnectionLogEvent
+ (id)initWithNewXPCConnectionAdded:(id)a3;
+ (id)initWithXPCConnectionRemoved:(id)a3;
- (HMDActiveXPCConnectionLogEvent)initWithXPCConnection:(id)a3 added:(BOOL)a4;
@end

@implementation HMDActiveXPCConnectionLogEvent

- (HMDActiveXPCConnectionLogEvent)initWithXPCConnection:(id)a3 added:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HMDActiveXPCConnectionLogEvent;
  v7 = [(HMMLogEvent *)&v11 init];
  if (v7)
  {
    v8 = [v6 name];
    name = v7->_name;
    v7->_name = v8;

    v7->_activated = [v6 isActivated];
    v7->_added = a4;
  }

  return v7;
}

+ (id)initWithXPCConnectionRemoved:(id)a3
{
  v3 = a3;
  v4 = [[HMDActiveXPCConnectionLogEvent alloc] initWithXPCConnection:v3 added:0];

  return v4;
}

+ (id)initWithNewXPCConnectionAdded:(id)a3
{
  v3 = a3;
  v4 = [[HMDActiveXPCConnectionLogEvent alloc] initWithXPCConnection:v3 added:1];

  return v4;
}

@end