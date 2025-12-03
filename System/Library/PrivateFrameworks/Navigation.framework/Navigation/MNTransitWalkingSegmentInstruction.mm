@interface MNTransitWalkingSegmentInstruction
+ (id)instructionForWalkingSegment:(id)segment context:(int64_t)context;
- (MNTransitWalkingSegmentInstruction)initWithWalkingSegment:(id)segment context:(int64_t)context;
- (id)instructionSet;
@end

@implementation MNTransitWalkingSegmentInstruction

- (id)instructionSet
{
  v17 = *MEMORY[0x1E69E9840];
  walkingSegment = [(MNTransitWalkingSegmentInstruction *)self walkingSegment];
  steps = [walkingSegment steps];
  firstObject = [steps firstObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "[MNTransitWalkingSegmentInstruction instructionSet]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNTransitInstruction.m";
      v13 = 1024;
      v14 = 378;
      v15 = 2080;
      v16 = "[step isKindOfClass:[GEOComposedTransitWalkingRouteStep class]]";
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v9, 0x26u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    instructions = [firstObject instructions];
  }

  else
  {
    instructions = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return instructions;
}

- (MNTransitWalkingSegmentInstruction)initWithWalkingSegment:(id)segment context:(int64_t)context
{
  segmentCopy = segment;
  v12.receiver = self;
  v12.super_class = MNTransitWalkingSegmentInstruction;
  v8 = [(MNTransitInstruction *)&v12 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_walkingSegment, segment);
    [(MNTransitInstruction *)v9 _fillInInstructions];
    v10 = v9;
  }

  return v9;
}

+ (id)instructionForWalkingSegment:(id)segment context:(int64_t)context
{
  segmentCopy = segment;
  v7 = [[self alloc] initWithWalkingSegment:segmentCopy context:context];

  return v7;
}

@end