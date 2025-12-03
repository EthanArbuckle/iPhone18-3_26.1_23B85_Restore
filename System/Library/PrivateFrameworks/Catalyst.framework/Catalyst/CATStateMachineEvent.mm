@interface CATStateMachineEvent
+ (id)eventWithTrigger:(id)trigger context:(id)context;
- (CATStateMachineEvent)initWithEventTrigger:(id)trigger context:(id)context;
- (id)description;
@end

@implementation CATStateMachineEvent

- (id)description
{
  trigger = [(CATStateMachineEvent *)self trigger];
  v3 = [trigger description];

  return v3;
}

+ (id)eventWithTrigger:(id)trigger context:(id)context
{
  contextCopy = context;
  triggerCopy = trigger;
  v8 = [[self alloc] initWithEventTrigger:triggerCopy context:contextCopy];

  return v8;
}

- (CATStateMachineEvent)initWithEventTrigger:(id)trigger context:(id)context
{
  triggerCopy = trigger;
  contextCopy = context;
  if (!triggerCopy)
  {
    [CATStateMachineEvent initWithEventTrigger:context:];
  }

  v12.receiver = self;
  v12.super_class = CATStateMachineEvent;
  v8 = [(CATStateMachineEvent *)&v12 init];
  if (v8)
  {
    v9 = [triggerCopy copy];
    trigger = v8->_trigger;
    v8->_trigger = v9;

    objc_storeStrong(&v8->_context, context);
  }

  return v8;
}

- (void)initWithEventTrigger:context:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"trigger" object:? file:? lineNumber:? description:?];
}

@end