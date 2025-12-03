@interface TCProgressContext
+ (double)currentPosition;
+ (id)contextForCurrentThread;
+ (id)createBranchWithSteps:(double)steps takingSteps:(double)takingSteps name:(id)name;
+ (id)stageForCurrentThread;
+ (void)addProgressObserver:(id)observer selector:(SEL)selector;
+ (void)advanceProgress:(double)progress;
+ (void)advanceProgressInContext:(id)context progress:(double)progress;
+ (void)createContextForCurrentThreadWithParentContext:(id)context;
+ (void)createStageWithSteps:(double)steps takingSteps:(double)takingSteps name:(id)name;
+ (void)endStage;
+ (void)popBranch;
+ (void)pushBranch:(id)branch;
+ (void)removeContextForCurrentThread;
+ (void)removeProgressObserver:(id)observer;
+ (void)setMessage:(id)message;
+ (void)setProgress:(double)progress;
- (TCProgressContext)initWithParentContext:(id)context;
- (id)rootStage;
- (void)dealloc;
- (void)reportProgress:(double)progress;
@end

@implementation TCProgressContext

+ (void)createContextForCurrentThreadWithParentContext:(id)context
{
  contextCopy = context;
  v3 = [[TCProgressContext alloc] initWithParentContext:contextCopy];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary setObject:v3 forKey:@"TCProgressContext Instance"];
}

+ (void)removeContextForCurrentThread
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary removeObjectForKey:@"TCProgressContext Instance"];
}

+ (void)addProgressObserver:(id)observer selector:(SEL)selector
{
  observerCopy = observer;
  contextForCurrentThread = [self contextForCurrentThread];
  if (contextForCurrentThread)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:observerCopy selector:selector name:@"TCProgressNotification" object:contextForCurrentThread];
  }
}

+ (void)removeProgressObserver:(id)observer
{
  observerCopy = observer;
  contextForCurrentThread = [self contextForCurrentThread];
  if (contextForCurrentThread)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:observerCopy name:@"TCProgressNotification" object:contextForCurrentThread];
  }
}

+ (void)createStageWithSteps:(double)steps takingSteps:(double)takingSteps name:(id)name
{
  nameCopy = name;
  contextForCurrentThread = [self contextForCurrentThread];
  if (contextForCurrentThread)
  {
    v9 = [[TCProgressStage alloc] initWithSteps:nameCopy takingSteps:contextForCurrentThread name:steps inContext:takingSteps];
    v10 = contextForCurrentThread[2];
    contextForCurrentThread[2] = v9;
  }
}

+ (void)endStage
{
  contextForCurrentThread = [self contextForCurrentThread];
  if (contextForCurrentThread)
  {
    v6 = contextForCurrentThread;
    v3 = contextForCurrentThread[2];
    [v3 end];
    parentStage = [v3 parentStage];
    v5 = v6[2];
    v6[2] = parentStage;

    contextForCurrentThread = v6;
  }
}

+ (id)createBranchWithSteps:(double)steps takingSteps:(double)takingSteps name:(id)name
{
  nameCopy = name;
  contextForCurrentThread = [self contextForCurrentThread];
  if (contextForCurrentThread)
  {
    v10 = [[TCProgressStage alloc] initBranchWithSteps:nameCopy takingSteps:contextForCurrentThread name:steps inContext:takingSteps];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)pushBranch:(id)branch
{
  branchCopy = branch;
  contextForCurrentThread = [self contextForCurrentThread];
  v6 = contextForCurrentThread;
  if (contextForCurrentThread)
  {
    [*(contextForCurrentThread + 32) addObject:*(contextForCurrentThread + 16)];
    objc_storeStrong(v6 + 2, branch);
  }
}

+ (void)popBranch
{
  contextForCurrentThread = [self contextForCurrentThread];
  if (contextForCurrentThread)
  {
    lastObject = [contextForCurrentThread[4] lastObject];
    v3 = contextForCurrentThread[2];
    contextForCurrentThread[2] = lastObject;

    [contextForCurrentThread[4] removeLastObject];
  }
}

+ (void)advanceProgress:(double)progress
{
  stageForCurrentThread = [self stageForCurrentThread];
  [stageForCurrentThread advanceProgress:progress];
}

+ (void)advanceProgressInContext:(id)context progress:(double)progress
{
  currentStage = [context currentStage];
  [currentStage advanceProgress:progress];
}

+ (void)setProgress:(double)progress
{
  stageForCurrentThread = [self stageForCurrentThread];
  [stageForCurrentThread setProgress:progress];
}

+ (void)setMessage:(id)message
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:message forKey:@"TCProgressMessage"];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  contextForCurrentThread = [self contextForCurrentThread];
  [defaultCenter postNotificationName:@"TCProgressNotification" object:contextForCurrentThread userInfo:v6];
}

+ (double)currentPosition
{
  stageForCurrentThread = [self stageForCurrentThread];
  [stageForCurrentThread currentPosition];
  v4 = v3;

  return v4;
}

- (TCProgressContext)initWithParentContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = TCProgressContext;
  v6 = [(TCProgressContext *)&v12 init];
  if (v6)
  {
    v7 = [[TCProgressStage alloc] initRootStageInContext:v6];
    m_currentStage = v6->m_currentStage;
    v6->m_currentStage = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    m_stackOfBranches = v6->m_stackOfBranches;
    v6->m_stackOfBranches = v9;

    objc_storeStrong(&v6->m_parentProgressContext, context);
  }

  return v6;
}

- (void)dealloc
{
  m_currentStage = self->m_currentStage;
  self->m_currentStage = 0;

  m_lastReportTime = self->m_lastReportTime;
  self->m_lastReportTime = 0;

  m_stackOfBranches = self->m_stackOfBranches;
  self->m_stackOfBranches = 0;

  m_parentProgressContext = self->m_parentProgressContext;
  self->m_parentProgressContext = 0;

  v7.receiver = self;
  v7.super_class = TCProgressContext;
  [(TCProgressContext *)&v7 dealloc];
}

+ (id)contextForCurrentThread
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"TCProgressContext Instance"];

  return v4;
}

+ (id)stageForCurrentThread
{
  contextForCurrentThread = [self contextForCurrentThread];
  currentStage = [contextForCurrentThread currentStage];

  return currentStage;
}

- (id)rootStage
{
  for (i = self->m_currentStage; ; i = parentStage2)
  {
    parentStage = [(TCProgressStage *)i parentStage];

    if (!parentStage)
    {
      break;
    }

    parentStage2 = [(TCProgressStage *)i parentStage];
  }

  return i;
}

- (void)reportProgress:(double)progress
{
  m_parentProgressContext = self->m_parentProgressContext;
  if (m_parentProgressContext)
  {
    [(OITSUProgressContext *)m_parentProgressContext setPercentageProgressFromTCProgressContext:progress];
  }
}

@end