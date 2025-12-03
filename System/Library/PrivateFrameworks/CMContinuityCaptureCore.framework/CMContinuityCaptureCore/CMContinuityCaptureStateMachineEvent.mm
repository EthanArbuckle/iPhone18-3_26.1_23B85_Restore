@interface CMContinuityCaptureStateMachineEvent
- (CMContinuityCaptureStateMachineEvent)initWithName:(id)name isEntry:(BOOL)entry eventAction:(id)action;
@end

@implementation CMContinuityCaptureStateMachineEvent

- (CMContinuityCaptureStateMachineEvent)initWithName:(id)name isEntry:(BOOL)entry eventAction:(id)action
{
  nameCopy = name;
  actionCopy = action;
  v17.receiver = self;
  v17.super_class = CMContinuityCaptureStateMachineEvent;
  v11 = [(CMContinuityCaptureStateMachineEvent *)&v17 init];
  v12 = v11;
  if (v11 && (objc_storeStrong(&v11->_name, name), v12->_name))
  {
    v12->_isEntry = entry;
    v13 = MEMORY[0x245D12020](actionCopy);
    action = v12->_action;
    v12->_action = v13;

    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end