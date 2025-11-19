@interface HUTriggerActionFlow
+ (id)selectFlowForState:(unint64_t)a3;
- (BOOL)isSingleFlow;
- (HUTriggerActionFlow)initWithEditorMode:(unint64_t)a3;
- (HUTriggerActionFlow)initWithFlowState:(unint64_t)a3 hasChangedState:(BOOL)a4;
- (id)getNextState;
- (unint64_t)_nextState;
@end

@implementation HUTriggerActionFlow

- (HUTriggerActionFlow)initWithEditorMode:(unint64_t)a3
{
  if (a3)
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

- (HUTriggerActionFlow)initWithFlowState:(unint64_t)a3 hasChangedState:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = HUTriggerActionFlow;
  result = [(HUTriggerActionFlow *)&v7 init];
  if (result)
  {
    result->_flowState = a3;
    result->_hasChangedState = a4;
  }

  return result;
}

+ (id)selectFlowForState:(unint64_t)a3
{
  v4 = [HUTriggerActionFlow alloc];
  if (a3 == 7)
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
  v3 = [(HUTriggerActionFlow *)self flowState];
  if (v3 < 8)
  {
    return qword_20D5CAC10[v3];
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