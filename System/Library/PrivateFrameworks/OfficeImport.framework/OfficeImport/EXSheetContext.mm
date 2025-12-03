@interface EXSheetContext
- (BOOL)loadDelayedNode:(id)node;
- (EXSheetContext)initWithSheetLocation:(id)location sheetXmlType:(id)type state:(id)state;
@end

@implementation EXSheetContext

- (EXSheetContext)initWithSheetLocation:(id)location sheetXmlType:(id)type state:(id)state
{
  locationCopy = location;
  typeCopy = type;
  stateCopy = state;
  v20.receiver = self;
  v20.super_class = EXSheetContext;
  v12 = [(EXSheetContext *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mSheetState, state);
    objc_storeStrong(&v13->mPackageLocation, location);
    objc_storeStrong(&v13->mType, type);
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v16 = [threadDictionary objectForKey:@"kSheetCountInEntireDocument"];
    intValue = [v16 intValue];

    v18 = [MEMORY[0x277CCABB0] numberWithInt:(intValue + 1)];
    [threadDictionary setObject:v18 forKey:@"kSheetCountInEntireDocument"];
  }

  return v13;
}

- (BOOL)loadDelayedNode:(id)node
{
  nodeCopy = node;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->mPackageLocation && self->mSheetState)
  {
    [TCProgressContext createStageWithSteps:1.0 takingSteps:1.0];
    [TCProgressContext createStageWithSteps:@"Delayed reading of sheet" takingSteps:1.0 name:0.9];
    v5 = objc_autoreleasePoolPush();
    [(EXReadState *)self->mSheetState setCurrentSheet:nodeCopy];
    [EXSheet readDelayedSheeWithLocation:self->mPackageLocation sheetXmlType:self->mType state:self->mSheetState];
    [(EXReadState *)self->mSheetState setCurrentSheet:0];
    [(EXReadState *)self->mSheetState resetForNewSheet];
    mSheetState = self->mSheetState;
    self->mSheetState = 0;

    objc_autoreleasePoolPop(v5);
    +[TCProgressContext endStage];
    [nodeCopy setLoaded:1];
    [TCProgressContext createStageWithSteps:@"Applying processors for delayed sheet" takingSteps:1.0 name:0.1];
    v7 = objc_autoreleasePoolPush();
    [nodeCopy applyProcessors];
    objc_autoreleasePoolPop(v7);
    +[TCProgressContext endStage];
    +[TCProgressContext endStage];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end