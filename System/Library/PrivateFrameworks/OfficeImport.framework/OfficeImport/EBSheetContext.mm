@interface EBSheetContext
- (BOOL)loadDelayedNode:(id)a3;
- (EBSheetContext)initWithSheetIndex:(unsigned int)a3 state:(id)a4;
@end

@implementation EBSheetContext

- (EBSheetContext)initWithSheetIndex:(unsigned int)a3 state:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = EBSheetContext;
  v7 = [(EBSheetContext *)&v16 init];
  if (v7)
  {
    v8 = [[EBReaderSheetState alloc] initWithReaderState:v6];
    mSheetState = v7->mSheetState;
    v7->mSheetState = v8;

    v7->mSheetIndex = a3;
    v10 = [MEMORY[0x277CCACC8] currentThread];
    v11 = [v10 threadDictionary];

    v12 = [v11 objectForKey:@"kSheetCountInEntireDocument"];
    v13 = [v12 intValue];

    v14 = [MEMORY[0x277CCABB0] numberWithInt:(v13 + 1)];
    [v11 setObject:v14 forKey:@"kSheetCountInEntireDocument"];
  }

  return v7;
}

- (BOOL)loadDelayedNode:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [TCProgressContext createStageWithSteps:@"Delayed reading of sheet" takingSteps:1.0 name:0.9];
    v6 = objc_autoreleasePoolPush();
    [(EBReaderSheetState *)self->mSheetState setEDSheet:v4];
    v7 = [(EBReaderSheetState *)self->mSheetState readerState];
    [v7 resumeReading];

    [EBSheet readDelayedSheetWithIndex:self->mSheetIndex state:self->mSheetState];
    v8 = [(EBReaderSheetState *)self->mSheetState readerState];
    [v8 pauseReading];

    mSheetState = self->mSheetState;
    self->mSheetState = 0;

    objc_autoreleasePoolPop(v6);
    +[TCProgressContext endStage];
    [v4 setLoaded:1];
    [TCProgressContext createStageWithSteps:@"Applying processors for delayed sheet" takingSteps:1.0 name:0.1];
    v10 = objc_autoreleasePoolPush();
    [v4 applyProcessors];
    objc_autoreleasePoolPop(v10);
    +[TCProgressContext endStage];
  }

  return isKindOfClass & 1;
}

@end