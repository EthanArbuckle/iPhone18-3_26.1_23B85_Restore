@interface TCProgressContext
+ (double)currentPosition;
+ (id)contextForCurrentThread;
+ (id)createBranchWithSteps:(double)a3 takingSteps:(double)a4 name:(id)a5;
+ (id)stageForCurrentThread;
+ (void)addProgressObserver:(id)a3 selector:(SEL)a4;
+ (void)advanceProgress:(double)a3;
+ (void)advanceProgressInContext:(id)a3 progress:(double)a4;
+ (void)createContextForCurrentThreadWithParentContext:(id)a3;
+ (void)createStageWithSteps:(double)a3 takingSteps:(double)a4 name:(id)a5;
+ (void)endStage;
+ (void)popBranch;
+ (void)pushBranch:(id)a3;
+ (void)removeContextForCurrentThread;
+ (void)removeProgressObserver:(id)a3;
+ (void)setMessage:(id)a3;
+ (void)setProgress:(double)a3;
- (TCProgressContext)initWithParentContext:(id)a3;
- (id)rootStage;
- (void)dealloc;
- (void)reportProgress:(double)a3;
@end

@implementation TCProgressContext

+ (void)createContextForCurrentThreadWithParentContext:(id)a3
{
  v6 = a3;
  v3 = [[TCProgressContext alloc] initWithParentContext:v6];
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v4 threadDictionary];
  [v5 setObject:v3 forKey:@"TCProgressContext Instance"];
}

+ (void)removeContextForCurrentThread
{
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v2 = [v3 threadDictionary];
  [v2 removeObjectForKey:@"TCProgressContext Instance"];
}

+ (void)addProgressObserver:(id)a3 selector:(SEL)a4
{
  v8 = a3;
  v6 = [a1 contextForCurrentThread];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v8 selector:a4 name:@"TCProgressNotification" object:v6];
  }
}

+ (void)removeProgressObserver:(id)a3
{
  v6 = a3;
  v4 = [a1 contextForCurrentThread];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:v6 name:@"TCProgressNotification" object:v4];
  }
}

+ (void)createStageWithSteps:(double)a3 takingSteps:(double)a4 name:(id)a5
{
  v11 = a5;
  v8 = [a1 contextForCurrentThread];
  if (v8)
  {
    v9 = [[TCProgressStage alloc] initWithSteps:v11 takingSteps:v8 name:a3 inContext:a4];
    v10 = v8[2];
    v8[2] = v9;
  }
}

+ (void)endStage
{
  v2 = [a1 contextForCurrentThread];
  if (v2)
  {
    v6 = v2;
    v3 = v2[2];
    [v3 end];
    v4 = [v3 parentStage];
    v5 = v6[2];
    v6[2] = v4;

    v2 = v6;
  }
}

+ (id)createBranchWithSteps:(double)a3 takingSteps:(double)a4 name:(id)a5
{
  v8 = a5;
  v9 = [a1 contextForCurrentThread];
  if (v9)
  {
    v10 = [[TCProgressStage alloc] initBranchWithSteps:v8 takingSteps:v9 name:a3 inContext:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)pushBranch:(id)a3
{
  v7 = a3;
  v5 = [a1 contextForCurrentThread];
  v6 = v5;
  if (v5)
  {
    [*(v5 + 32) addObject:*(v5 + 16)];
    objc_storeStrong(v6 + 2, a3);
  }
}

+ (void)popBranch
{
  v4 = [a1 contextForCurrentThread];
  if (v4)
  {
    v2 = [v4[4] lastObject];
    v3 = v4[2];
    v4[2] = v2;

    [v4[4] removeLastObject];
  }
}

+ (void)advanceProgress:(double)a3
{
  v4 = [a1 stageForCurrentThread];
  [v4 advanceProgress:a3];
}

+ (void)advanceProgressInContext:(id)a3 progress:(double)a4
{
  v5 = [a3 currentStage];
  [v5 advanceProgress:a4];
}

+ (void)setProgress:(double)a3
{
  v4 = [a1 stageForCurrentThread];
  [v4 setProgress:a3];
}

+ (void)setMessage:(id)a3
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a3 forKey:@"TCProgressMessage"];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [a1 contextForCurrentThread];
  [v4 postNotificationName:@"TCProgressNotification" object:v5 userInfo:v6];
}

+ (double)currentPosition
{
  v2 = [a1 stageForCurrentThread];
  [v2 currentPosition];
  v4 = v3;

  return v4;
}

- (TCProgressContext)initWithParentContext:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->m_parentProgressContext, a3);
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
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"TCProgressContext Instance"];

  return v4;
}

+ (id)stageForCurrentThread
{
  v2 = [a1 contextForCurrentThread];
  v3 = [v2 currentStage];

  return v3;
}

- (id)rootStage
{
  for (i = self->m_currentStage; ; i = v4)
  {
    v3 = [(TCProgressStage *)i parentStage];

    if (!v3)
    {
      break;
    }

    v4 = [(TCProgressStage *)i parentStage];
  }

  return i;
}

- (void)reportProgress:(double)a3
{
  m_parentProgressContext = self->m_parentProgressContext;
  if (m_parentProgressContext)
  {
    [(OITSUProgressContext *)m_parentProgressContext setPercentageProgressFromTCProgressContext:a3];
  }
}

@end