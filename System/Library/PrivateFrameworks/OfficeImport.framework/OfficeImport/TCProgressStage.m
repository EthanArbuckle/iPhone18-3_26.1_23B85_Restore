@interface TCProgressStage
- (TCProgressStage)initWithSteps:(double)a3 takingSteps:(double)a4 name:(id)a5 inContext:(id)a6;
- (id)initBranchWithSteps:(double)a3 takingSteps:(double)a4 name:(id)a5 inContext:(id)a6;
- (id)initRootStageInContext:(id)a3;
- (void)advanceProgress:(double)a3;
- (void)dealloc;
@end

@implementation TCProgressStage

- (id)initRootStageInContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TCProgressStage;
  v6 = [(TCProgressStage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = xmmword_25D6FA730;
    v8 = *(v6 + 5);
    *(v6 + 5) = 0;

    objc_storeStrong(v7 + 6, a3);
  }

  return v7;
}

- (TCProgressStage)initWithSteps:(double)a3 takingSteps:(double)a4 name:(id)a5 inContext:(id)a6
{
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = TCProgressStage;
  v13 = [(TCProgressStage *)&v17 init];
  if (v13)
  {
    v14 = [v12 currentStage];
    m_parentStage = v13->m_parentStage;
    v13->m_parentStage = v14;

    v13->m_currentPosition = 0.0;
    v13->m_totalSteps = a3;
    v13->m_stepsInParent = a4;
    objc_storeStrong(&v13->m_name, a5);
    objc_storeStrong(&v13->m_context, a6);
  }

  return v13;
}

- (id)initBranchWithSteps:(double)a3 takingSteps:(double)a4 name:(id)a5 inContext:(id)a6
{
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = TCProgressStage;
  v13 = [(TCProgressStage *)&v17 init];
  if (v13)
  {
    v14 = [v12 rootStage];
    m_parentStage = v13->m_parentStage;
    v13->m_parentStage = v14;

    v13->m_currentPosition = 0.0;
    v13->m_totalSteps = a3;
    v13->m_stepsInParent = a4;
    objc_storeStrong(&v13->m_name, a5);
    objc_storeStrong(&v13->m_context, a6);
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

- (void)advanceProgress:(double)a3
{
  m_currentPosition = self->m_currentPosition;
  v4 = m_currentPosition + a3;
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