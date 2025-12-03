@interface EBSheetContext
- (BOOL)loadDelayedNode:(id)node;
- (EBSheetContext)initWithSheetIndex:(unsigned int)index state:(id)state;
@end

@implementation EBSheetContext

- (EBSheetContext)initWithSheetIndex:(unsigned int)index state:(id)state
{
  stateCopy = state;
  v16.receiver = self;
  v16.super_class = EBSheetContext;
  v7 = [(EBSheetContext *)&v16 init];
  if (v7)
  {
    v8 = [[EBReaderSheetState alloc] initWithReaderState:stateCopy];
    mSheetState = v7->mSheetState;
    v7->mSheetState = v8;

    v7->mSheetIndex = index;
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v12 = [threadDictionary objectForKey:@"kSheetCountInEntireDocument"];
    intValue = [v12 intValue];

    v14 = [MEMORY[0x277CCABB0] numberWithInt:(intValue + 1)];
    [threadDictionary setObject:v14 forKey:@"kSheetCountInEntireDocument"];
  }

  return v7;
}

- (BOOL)loadDelayedNode:(id)node
{
  nodeCopy = node;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [TCProgressContext createStageWithSteps:@"Delayed reading of sheet" takingSteps:1.0 name:0.9];
    v6 = objc_autoreleasePoolPush();
    [(EBReaderSheetState *)self->mSheetState setEDSheet:nodeCopy];
    readerState = [(EBReaderSheetState *)self->mSheetState readerState];
    [readerState resumeReading];

    [EBSheet readDelayedSheetWithIndex:self->mSheetIndex state:self->mSheetState];
    readerState2 = [(EBReaderSheetState *)self->mSheetState readerState];
    [readerState2 pauseReading];

    mSheetState = self->mSheetState;
    self->mSheetState = 0;

    objc_autoreleasePoolPop(v6);
    +[TCProgressContext endStage];
    [nodeCopy setLoaded:1];
    [TCProgressContext createStageWithSteps:@"Applying processors for delayed sheet" takingSteps:1.0 name:0.1];
    v10 = objc_autoreleasePoolPush();
    [nodeCopy applyProcessors];
    objc_autoreleasePoolPop(v10);
    +[TCProgressContext endStage];
  }

  return isKindOfClass & 1;
}

@end