@interface HUDisplayLinkApplier
- (BOOL)complete:(BOOL)a3;
- (BOOL)start;
- (HUDisplayLinkApplier)init;
- (HUDisplayLinkApplier)initWithProgressInputBlock:(id)a3;
- (void)_invalidateDisplayLinkIfNecessary;
- (void)_updateProgressForInitialUpdate:(BOOL)a3;
- (void)setAtRest:(BOOL)a3;
@end

@implementation HUDisplayLinkApplier

- (HUDisplayLinkApplier)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithProgressInputBlock_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUDisplayLinkApplier.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HUDisplayLinkApplier init]", v5}];

  return 0;
}

- (HUDisplayLinkApplier)initWithProgressInputBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HUDisplayLinkApplier.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"progressInputBlock"}];
  }

  v10.receiver = self;
  v10.super_class = HUDisplayLinkApplier;
  v6 = [(HUApplier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(HUDisplayLinkApplier *)v6 setProgressInputBlock:v5];
    v7->_applyOnlyOnProgressChanges = 1;
    v7->_completesWhenAtRest = 1;
  }

  return v7;
}

- (BOOL)start
{
  v10.receiver = self;
  v10.super_class = HUDisplayLinkApplier;
  v3 = [(HUApplier *)&v10 start];
  if (v3)
  {
    v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkTick];
    [(HUDisplayLinkApplier *)self setDisplayLink:v4];

    v5 = [(HUDisplayLinkApplier *)self displayLink];
    v6 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v5 addToRunLoop:v6 forMode:*MEMORY[0x277CBE738]];

    v7 = [(HUDisplayLinkApplier *)self displayLink];
    v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v7 setPreferredFrameRateRange:{*&v11.minimum, *&v11.maximum, *&v11.preferred}];

    v8 = [(HUDisplayLinkApplier *)self displayLink];
    [v8 setHighFrameRateReason:1769473];

    [(HUDisplayLinkApplier *)self _updateProgressForInitialUpdate:1];
  }

  return v3;
}

- (void)_updateProgressForInitialUpdate:(BOOL)a3
{
  v5 = [(HUDisplayLinkApplier *)self progressInputBlock];
  [(HUDisplayLinkApplier *)self effectiveInputProgressForBlock:v5];
  v7 = v6;

  [(HUApplier *)self progress];
  v9 = vabdd_f64(v7, v8);
  if (v9 > 0.001 || a3 || ![(HUDisplayLinkApplier *)self applyOnlyOnProgressChanges])
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

- (void)setAtRest:(BOOL)a3
{
  if (self->_atRest != a3)
  {
    self->_atRest = a3;
    [(HUDisplayLinkApplier *)self restingStateDidChange];
  }
}

- (void)_invalidateDisplayLinkIfNecessary
{
  v3 = [(HUDisplayLinkApplier *)self displayLink];
  [v3 invalidate];

  [(HUDisplayLinkApplier *)self setDisplayLink:0];
}

- (BOOL)complete:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HUDisplayLinkApplier;
  v4 = [(HUApplier *)&v6 complete:a3];
  if (v4)
  {
    [(HUDisplayLinkApplier *)self _invalidateDisplayLinkIfNecessary];
  }

  return v4;
}

@end