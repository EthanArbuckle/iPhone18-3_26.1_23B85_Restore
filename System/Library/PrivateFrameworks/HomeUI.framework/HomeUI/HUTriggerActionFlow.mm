@interface HUTriggerActionFlow
+ (id)selectFlowForState:(unint64_t)state;
- (BOOL)isSingleFlow;
- (HUTriggerActionFlow)initWithEditorMode:(unint64_t)mode;
- (HUTriggerActionFlow)initWithFlowState:(unint64_t)state hasChangedState:(BOOL)changedState;
- (id)getNextState;
- (unint64_t)_nextState;
@end

@implementation HUTriggerActionFlow

- (HUTriggerActionFlow)initWithEditorMode:(unint64_t)mode
{
  if (mode)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HUTriggerActionFlow *)self initWithFlowState:v3];

  return v4;
}

- (HUTriggerActionFlow)initWithFlowState:(unint64_t)state hasChangedState:(BOOL)changedState
{
  v7.receiver = self;
  v7.super_class = HUTriggerActionFlow;
  result = [(HUTriggerActionFlow *)&v7 init];
  if (result)
  {
    result->_flowState = state;
    result->_hasChangedState = changedState;
  }

  return result;
}

+ (id)selectFlowForState:(unint64_t)state
{
  v4 = [HUTriggerActionFlow alloc];
  if (state == 7)
  {
    v5 = 6;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(HUTriggerActionFlow *)v4 initWithFlowState:v5];

  return v6;
}

- (unint64_t)_nextState
{
  flowState = [(HUTriggerActionFlow *)self flowState];
  if (flowState < 8)
  {
    return qword_20D5CAC10[flowState];
  }

  return [(HUTriggerActionFlow *)self flowState];
}

- (id)getNextState
{
  v2 = [[HUTriggerActionFlow alloc] initWithFlowState:[(HUTriggerActionFlow *)self _nextState] hasChangedState:1];

  return v2;
}

- (BOOL)isSingleFlow
{
  if ([(HUTriggerActionFlow *)self _nextState]== 8)
  {
    return ![(HUTriggerActionFlow *)self hasChangedState];
  }

  else
  {
    return 0;
  }
}

@end