@interface HUDisplayLinkApplier
- (BOOL)complete:(BOOL)complete;
- (BOOL)start;
- (HUDisplayLinkApplier)init;
- (HUDisplayLinkApplier)initWithProgressInputBlock:(id)block;
- (void)_invalidateDisplayLinkIfNecessary;
- (void)_updateProgressForInitialUpdate:(BOOL)update;
- (void)setAtRest:(BOOL)rest;
@end

@implementation HUDisplayLinkApplier

- (HUDisplayLinkApplier)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithProgressInputBlock_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUDisplayLinkApplier.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HUDisplayLinkApplier init]", v5}];

  return 0;
}

- (HUDisplayLinkApplier)initWithProgressInputBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUDisplayLinkApplier.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"progressInputBlock"}];
  }

  v10.receiver = self;
  v10.super_class = HUDisplayLinkApplier;
  v6 = [(HUApplier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(HUDisplayLinkApplier *)v6 setProgressInputBlock:blockCopy];
    v7->_applyOnlyOnProgressChanges = 1;
    v7->_completesWhenAtRest = 1;
  }

  return v7;
}

- (BOOL)start
{
  v10.receiver = self;
  v10.super_class = HUDisplayLinkApplier;
  start = [(HUApplier *)&v10 start];
  if (start)
  {
    v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkTick];
    [(HUDisplayLinkApplier *)self setDisplayLink:v4];

    displayLink = [(HUDisplayLinkApplier *)self displayLink];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [displayLink addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

    displayLink2 = [(HUDisplayLinkApplier *)self displayLink];
    v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [displayLink2 setPreferredFrameRateRange:{*&v11.minimum, *&v11.maximum, *&v11.preferred}];

    displayLink3 = [(HUDisplayLinkApplier *)self displayLink];
    [displayLink3 setHighFrameRateReason:1769473];

    [(HUDisplayLinkApplier *)self _updateProgressForInitialUpdate:1];
  }

  return start;
}

- (void)_updateProgressForInitialUpdate:(BOOL)update
{
  progressInputBlock = [(HUDisplayLinkApplier *)self progressInputBlock];
  [(HUDisplayLinkApplier *)self effectiveInputProgressForBlock:progressInputBlock];
  v7 = v6;

  [(HUApplier *)self progress];
  v9 = vabdd_f64(v7, v8);
  if (v9 > 0.001 || update || ![(HUDisplayLinkApplier *)self applyOnlyOnProgressChanges])
  {
    [(HUApplier *)self updateProgress:v7];
  }

  if (v9 <= 0.001)
  {
    [(HUDisplayLinkApplier *)self setRestingFrameCount:[(HUDisplayLinkApplier *)self restingFrameCount]+ 1];
    if ([(HUDisplayLinkApplier *)self restingFrameCount]>= 3)
    {
      [(HUDisplayLinkApplier *)self setAtRest:1];
      if ([(HUDisplayLinkApplier *)self completesWhenAtRest])
      {

        [(HUDisplayLinkApplier *)self complete:1];
      }
    }
  }

  else
  {
    [(HUDisplayLinkApplier *)self setAtRest:0];

    [(HUDisplayLinkApplier *)self setRestingFrameCount:0];
  }
}

- (void)setAtRest:(BOOL)rest
{
  if (self->_atRest != rest)
  {
    self->_atRest = rest;
    [(HUDisplayLinkApplier *)self restingStateDidChange];
  }
}

- (void)_invalidateDisplayLinkIfNecessary
{
  displayLink = [(HUDisplayLinkApplier *)self displayLink];
  [displayLink invalidate];

  [(HUDisplayLinkApplier *)self setDisplayLink:0];
}

- (BOOL)complete:(BOOL)complete
{
  v6.receiver = self;
  v6.super_class = HUDisplayLinkApplier;
  v4 = [(HUApplier *)&v6 complete:complete];
  if (v4)
  {
    [(HUDisplayLinkApplier *)self _invalidateDisplayLinkIfNecessary];
  }

  return v4;
}

@end