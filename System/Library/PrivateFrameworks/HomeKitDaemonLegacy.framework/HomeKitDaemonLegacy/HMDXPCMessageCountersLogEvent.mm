@interface HMDXPCMessageCountersLogEvent
+ (id)XPCMessageCountersLogEventWithType:(id)type peerInformation:(id)information messageName:(id)name count:(id)count;
- (id)__initWithType:(id)type peerInformation:(id)information messageName:(id)name count:(id)count;
@end

@implementation HMDXPCMessageCountersLogEvent

- (id)__initWithType:(id)type peerInformation:(id)information messageName:(id)name count:(id)count
{
  typeCopy = type;
  informationCopy = information;
  nameCopy = name;
  countCopy = count;
  v22.receiver = self;
  v22.super_class = HMDXPCMessageCountersLogEvent;
  v14 = [(HMMLogEvent *)&v22 init];
  if (v14)
  {
    v15 = [typeCopy copy];
    type = v14->_type;
    v14->_type = v15;

    v17 = [informationCopy copy];
    peerInformation = v14->_peerInformation;
    v14->_peerInformation = v17;

    v19 = [nameCopy copy];
    messageName = v14->_messageName;
    v14->_messageName = v19;

    objc_storeStrong(&v14->_count, count);
  }

  return v14;
}

+ (id)XPCMessageCountersLogEventWithType:(id)type peerInformation:(id)information messageName:(id)name count:(id)count
{
  countCopy = count;
  nameCopy = name;
  informationCopy = information;
  typeCopy = type;
  v14 = [[self alloc] __initWithType:typeCopy peerInformation:informationCopy messageName:nameCopy count:countCopy];

  return v14;
}

@end