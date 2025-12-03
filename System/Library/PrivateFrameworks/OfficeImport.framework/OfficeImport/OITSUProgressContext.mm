@interface OITSUProgressContext
- (OITSUProgressContext)init;
- (double)currentPosition;
- (double)overallProgress;
- (id)addProgressObserverBlock:(id)block;
- (id)description;
- (void)addProgressObserver:(id)observer selector:(SEL)selector;
- (void)advanceProgress:(double)progress;
- (void)createStageWithSteps:(double)steps;
- (void)createStageWithSteps:(double)steps takingSteps:(double)takingSteps;
- (void)dealloc;
- (void)endStage;
- (void)nextSubStageWillTakeThisManyOfMySteps:(double)steps;
- (void)removeProgressObserver:(id)observer;
- (void)reportProgress:(double)progress overallProgress:(double)overallProgress;
- (void)reset;
- (void)setMessage:(id)message;
- (void)setPercentageProgressFromTCProgressContext:(double)context;
- (void)setProgress:(double)progress;
@end

@implementation OITSUProgressContext

- (void)reset
{
  objc_sync_enter(self);

  self->m_currentStage = [[OITSUProgressStage alloc] initRootStageInContext:self];
  self->m_lastProgressReport = 0.0;
  self->m_lastOverallProgress = 0.0;

  objc_sync_exit(self);
}

- (void)addProgressObserver:(id)observer selector:(SEL)selector
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter addObserver:observer selector:selector name:@"TSUProgressNotification" object:self];
}

- (id)addProgressObserverBlock:(id)block
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__OITSUProgressContext_addProgressObserverBlock___block_invoke;
  v7[3] = &unk_2799C6318;
  v7[4] = block;
  return [defaultCenter addObserverForName:@"TSUProgressNotification" object:self queue:0 usingBlock:v7];
}

void *__49__OITSUProgressContext_addProgressObserverBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_opt_class();
  result = TSUDynamicCast(v4, [objc_msgSend(a2 "userInfo")]);
  if (result)
  {
    v6 = *(a1 + 32);
    [result doubleValue];
    v7 = *(v6 + 16);

    return v7(v6);
  }

  return result;
}

- (void)removeProgressObserver:(id)observer
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter removeObserver:observer name:@"TSUProgressNotification" object:self];
}

- (void)createStageWithSteps:(double)steps takingSteps:(double)takingSteps
{
  if (steps >= 0.0)
  {
    stepsCopy = steps;
  }

  else
  {
    stepsCopy = 1.0;
  }

  if (takingSteps <= 0.0 && TSUDefaultCat_init_token != -1)
  {
    [OITSUProgressContext createStageWithSteps:takingSteps:];
  }

  objc_sync_enter(self);
  m_currentStage = self->m_currentStage;
  self->m_currentStage = [[OITSUProgressStage alloc] initWithSteps:self takingSteps:stepsCopy inContext:takingSteps];

  objc_sync_exit(self);
}

os_log_t __57__OITSUProgressContext_createStageWithSteps_takingSteps___block_invoke()
{
  result = TSULogCreateCategory("TSUDefaultCat");
  TSUDefaultCat_log_t = result;
  return result;
}

- (void)createStageWithSteps:(double)steps
{
  objc_sync_enter(self);
  m_currentStage = self->m_currentStage;
  if (m_currentStage)
  {
    [(OITSUProgressStage *)self->m_currentStage nextSubStageParentSize];
    v7 = v6;
    [(OITSUProgressStage *)m_currentStage setNextSubStageParentSize:1.0];
  }

  else
  {
    v7 = 1.0;
  }

  objc_sync_exit(self);

  [(OITSUProgressContext *)self createStageWithSteps:steps takingSteps:v7];
}

- (void)nextSubStageWillTakeThisManyOfMySteps:(double)steps
{
  objc_sync_enter(self);
  m_currentStage = self->m_currentStage;
  if (m_currentStage)
  {
    [(OITSUProgressStage *)m_currentStage setNextSubStageParentSize:steps];
  }

  objc_sync_exit(self);
}

- (void)endStage
{
  objc_sync_enter(self);
  m_currentStage = self->m_currentStage;
  [(OITSUProgressStage *)m_currentStage end];
  self->m_currentStage = [(OITSUProgressStage *)m_currentStage parentStage];

  objc_sync_exit(self);
}

- (void)advanceProgress:(double)progress
{
  objc_sync_enter(self);
  [-[OITSUProgressContext currentStage](self "currentStage")];

  objc_sync_exit(self);
}

- (void)setProgress:(double)progress
{
  objc_sync_enter(self);
  [-[OITSUProgressContext currentStage](self "currentStage")];

  objc_sync_exit(self);
}

- (void)setPercentageProgressFromTCProgressContext:(double)context
{
  objc_sync_enter(self);
  [-[OITSUProgressContext currentStage](self "currentStage")];

  objc_sync_exit(self);
}

- (void)setMessage:(id)message
{
  if (!message)
  {
    message = &stru_286EE1130;
  }

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:message forKey:@"TSUProgressMessage"];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"TSUProgressNotification" object:self userInfo:v4];
}

- (double)currentPosition
{
  objc_sync_enter(self);
  currentStage = [(OITSUProgressContext *)self currentStage];
  if (currentStage)
  {
    [currentStage currentPosition];
    m_lastProgressReport = v4;
  }

  else
  {
    m_lastProgressReport = self->m_lastProgressReport;
  }

  objc_sync_exit(self);
  return m_lastProgressReport;
}

- (double)overallProgress
{
  objc_sync_enter(self);
  currentStage = [(OITSUProgressContext *)self currentStage];
  if (currentStage)
  {
    [currentStage overallProgress];
    m_lastOverallProgress = v4;
  }

  else
  {
    m_lastOverallProgress = self->m_lastOverallProgress;
  }

  objc_sync_exit(self);
  return m_lastOverallProgress;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  [(OITSUProgressContext *)self currentPosition];
  v5 = v4;
  [(OITSUProgressContext *)self overallProgress];
  v7 = [v3 stringWithFormat:@"TSUProgressContext %p: currentPosition = %g, overallProgress = %g", self, v5, v6];
  currentStage = [(OITSUProgressContext *)self currentStage];
  [v7 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"\ncurrentStage: %@", currentStage)}];
  string = [MEMORY[0x277CCAB68] string];
  parentStage = [currentStage parentStage];
  if (parentStage)
  {
    parentStage2 = parentStage;
    do
    {
      [string appendString:@"    "];
      [v7 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"\n%@parent: %@", string, parentStage2)}];
      parentStage2 = [parentStage2 parentStage];
    }

    while (parentStage2);
  }

  return v7;
}

- (OITSUProgressContext)init
{
  v5.receiver = self;
  v5.super_class = OITSUProgressContext;
  v2 = [(OITSUProgressContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OITSUProgressContext *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  self->m_currentStage = 0;

  self->m_lastReportTime = 0;
  v3.receiver = self;
  v3.super_class = OITSUProgressContext;
  [(OITSUProgressContext *)&v3 dealloc];
}

- (void)reportProgress:(double)progress overallProgress:(double)overallProgress
{
  objc_sync_enter(self);
  self->m_lastOverallProgress = overallProgress;
  m_lastReportTime = self->m_lastReportTime;
  if (!m_lastReportTime || ([(NSDate *)m_lastReportTime timeIntervalSinceNow], progress >= 100.0) || v8 < -0.1 || progress - self->m_lastProgressReport >= 5.0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:progress];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:overallProgress];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v9, @"TSUProgressCurrentPosition", v10, @"TSUProgressOverallProgress", 0}];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

    self->m_lastReportTime = [MEMORY[0x277CBEAA8] date];
    self->m_lastProgressReport = progress;
  }

  objc_sync_exit(self);
}

@end