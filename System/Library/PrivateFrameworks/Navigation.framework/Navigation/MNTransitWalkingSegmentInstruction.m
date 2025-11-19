@interface MNTransitWalkingSegmentInstruction
+ (id)instructionForWalkingSegment:(id)a3 context:(int64_t)a4;
- (MNTransitWalkingSegmentInstruction)initWithWalkingSegment:(id)a3 context:(int64_t)a4;
- (id)instructionSet;
@end

@implementation MNTransitWalkingSegmentInstruction

- (id)instructionSet
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(MNTransitWalkingSegmentInstruction *)self walkingSegment];
  v3 = [v2 steps];
  v4 = [v3 firstObject];

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
    v5 = [v4 instructions];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (MNTransitWalkingSegmentInstruction)initWithWalkingSegment:(id)a3 context:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = MNTransitWalkingSegmentInstruction;
  v8 = [(MNTransitInstruction *)&v12 initWithContext:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_walkingSegment, a3);
    [(MNTransitInstruction *)v9 _fillInInstructions];
    v10 = v9;
  }

  return v9;
}

+ (id)instructionForWalkingSegment:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithWalkingSegment:v6 context:a4];

  return v7;
}

@end