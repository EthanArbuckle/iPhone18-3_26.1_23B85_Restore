@interface TCProgressStage
- (TCProgressStage)initWithSteps:(double)steps takingSteps:(double)takingSteps name:(id)name inContext:(id)context;
- (id)initBranchWithSteps:(double)steps takingSteps:(double)takingSteps name:(id)name inContext:(id)context;
- (id)initRootStageInContext:(id)context;
- (void)advanceProgress:(double)progress;
- (void)dealloc;
@end

@implementation TCProgressStage

- (id)initRootStageInContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = TCProgressStage;
  v6 = [(TCProgressStage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = xmmword_25D6FA730;
    v8 = *(v6 + 5);
    *(v6 + 5) = 0;

    objc_storeStrong(v7 + 6, context);
  }

  return v7;
}

- (TCProgressStage)initWithSteps:(double)steps takingSteps:(double)takingSteps name:(id)name inContext:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = TCProgressStage;
  v13 = [(TCProgressStage *)&v17 init];
  if (v13)
  {
    currentStage = [contextCopy currentStage];
    m_parentStage = v13->m_parentStage;
    v13->m_parentStage = currentStage;

    v13->m_currentPosition = 0.0;
    v13->m_totalSteps = steps;
    v13->m_stepsInParent = takingSteps;
    objc_storeStrong(&v13->m_name, name);
    objc_storeStrong(&v13->m_context, context);
  }

  return v13;
}

- (id)initBranchWithSteps:(double)steps takingSteps:(double)takingSteps name:(id)name inContext:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = TCProgressStage;
  v13 = [(TCProgressStage *)&v17 init];
  if (v13)
  {
    rootStage = [contextCopy rootStage];
    m_parentStage = v13->m_parentStage;
    v13->m_parentStage = rootStage;

    v13->m_currentPosition = 0.0;
    v13->m_totalSteps = steps;
    v13->m_stepsInParent = takingSteps;
    objc_storeStrong(&v13->m_name, name);
    objc_storeStrong(&v13->m_context, context);
  }

  return v13;
}

- (void)dealloc
{
  m_parentStage = self->m_parentStage;
  self->m_parentStage = 0;

  v4.receiver = self;
  v4.super_class = TCProgressStage;
  [(TCProgressStage *)&v4 dealloc];
}

- (void)advanceProgress:(double)progress
{
  m_currentPosition = self->m_currentPosition;
  v4 = m_currentPosition + progress;
  if (m_currentPosition != v4)
  {
    self->m_currentPosition = v4;
    if (self->m_parentStage)
    {
      [(TCProgressStage *)self->m_parentStage advanceProgress:(v4 - m_currentPosition) / self->m_totalSteps * self->m_stepsInParent];
    }

    else
    {
      [(TCProgressContext *)self->m_context reportProgress:?];
    }
  }
}

@end