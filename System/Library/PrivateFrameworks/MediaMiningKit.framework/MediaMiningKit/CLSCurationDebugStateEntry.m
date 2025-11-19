@interface CLSCurationDebugStateEntry
- (CLSCurationDebugStateEntry)initWithState:(unint64_t)a3 reason:(id)a4 agent:(id)a5 stage:(id)a6;
@end

@implementation CLSCurationDebugStateEntry

- (CLSCurationDebugStateEntry)initWithState:(unint64_t)a3 reason:(id)a4 agent:(id)a5 stage:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CLSCurationDebugStateEntry;
  v14 = [(CLSCurationDebugStateEntry *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_state = a3;
    objc_storeStrong(&v14->_reason, a4);
    objc_storeStrong(&v15->_agent, a5);
    objc_storeStrong(&v15->_stage, a6);
  }

  return v15;
}

@end