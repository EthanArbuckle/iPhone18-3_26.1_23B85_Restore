@interface HMDXPCMessageCountersLogEvent
+ (id)XPCMessageCountersLogEventWithType:(id)a3 peerInformation:(id)a4 messageName:(id)a5 count:(id)a6;
- (id)__initWithType:(id)a3 peerInformation:(id)a4 messageName:(id)a5 count:(id)a6;
@end

@implementation HMDXPCMessageCountersLogEvent

- (id)__initWithType:(id)a3 peerInformation:(id)a4 messageName:(id)a5 count:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = HMDXPCMessageCountersLogEvent;
  v14 = [(HMMLogEvent *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    type = v14->_type;
    v14->_type = v15;

    v17 = [v11 copy];
    peerInformation = v14->_peerInformation;
    v14->_peerInformation = v17;

    v19 = [v12 copy];
    messageName = v14->_messageName;
    v14->_messageName = v19;

    objc_storeStrong(&v14->_count, a6);
  }

  return v14;
}

+ (id)XPCMessageCountersLogEventWithType:(id)a3 peerInformation:(id)a4 messageName:(id)a5 count:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] __initWithType:v13 peerInformation:v12 messageName:v11 count:v10];

  return v14;
}

@end