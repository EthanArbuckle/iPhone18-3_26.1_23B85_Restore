@interface CATStateMachineEvent
+ (id)eventWithTrigger:(id)a3 context:(id)a4;
- (CATStateMachineEvent)initWithEventTrigger:(id)a3 context:(id)a4;
- (id)description;
@end

@implementation CATStateMachineEvent

- (id)description
{
  v2 = [(CATStateMachineEvent *)self trigger];
  v3 = [v2 description];

  return v3;
}

+ (id)eventWithTrigger:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithEventTrigger:v7 context:v6];

  return v8;
}

- (CATStateMachineEvent)initWithEventTrigger:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CATStateMachineEvent initWithEventTrigger:context:];
  }

  v12.receiver = self;
  v12.super_class = CATStateMachineEvent;
  v8 = [(CATStateMachineEvent *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    trigger = v8->_trigger;
    v8->_trigger = v9;

    objc_storeStrong(&v8->_context, a4);
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