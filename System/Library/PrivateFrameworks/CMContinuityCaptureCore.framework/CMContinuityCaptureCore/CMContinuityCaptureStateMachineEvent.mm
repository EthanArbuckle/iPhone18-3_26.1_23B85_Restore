@interface CMContinuityCaptureStateMachineEvent
- (CMContinuityCaptureStateMachineEvent)initWithName:(id)a3 isEntry:(BOOL)a4 eventAction:(id)a5;
@end

@implementation CMContinuityCaptureStateMachineEvent

- (CMContinuityCaptureStateMachineEvent)initWithName:(id)a3 isEntry:(BOOL)a4 eventAction:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CMContinuityCaptureStateMachineEvent;
  v11 = [(CMContinuityCaptureStateMachineEvent *)&v17 init];
  v12 = v11;
  if (v11 && (objc_storeStrong(&v11->_name, a3), v12->_name))
  {
    v12->_isEntry = a4;
    v13 = MEMORY[0x245D12020](v10);
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