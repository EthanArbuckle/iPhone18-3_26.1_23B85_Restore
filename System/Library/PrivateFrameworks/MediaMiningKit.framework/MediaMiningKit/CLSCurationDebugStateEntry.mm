@interface CLSCurationDebugStateEntry
- (CLSCurationDebugStateEntry)initWithState:(unint64_t)state reason:(id)reason agent:(id)agent stage:(id)stage;
@end

@implementation CLSCurationDebugStateEntry

- (CLSCurationDebugStateEntry)initWithState:(unint64_t)state reason:(id)reason agent:(id)agent stage:(id)stage
{
  reasonCopy = reason;
  agentCopy = agent;
  stageCopy = stage;
  v17.receiver = self;
  v17.super_class = CLSCurationDebugStateEntry;
  v14 = [(CLSCurationDebugStateEntry *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_state = state;
    objc_storeStrong(&v14->_reason, reason);
    objc_storeStrong(&v15->_agent, agent);
    objc_storeStrong(&v15->_stage, stage);
  }

  return v15;
}

@end