@interface HUElasticApplier
- (BOOL)complete:(BOOL)complete;
- (BOOL)start;
- (HUElasticApplier)init;
- (HUElasticApplier)initWithProgressInputBlock:(id)block;
- (void)_invalidateDisplayLinkIfNecessary;
- (void)_updateProgressForInitialUpdate:(BOOL)update;
@end

@implementation HUElasticApplier

- (HUElasticApplier)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithProgressInputBlock_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUElasticApplier.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUElasticApplier init]", v5}];

  return 0;
}

- (HUElasticApplier)initWithProgressInputBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUElasticApplier.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"progressInputBlock"}];
  }

  v10.receiver = self;
  v10.super_class = HUElasticApplier;
  v6 = [(HUApplier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(HUElasticApplier *)v6 setProgressInputBlock:blockCopy];
    v7->_applyOnlyOnProgressChanges = 1;
    v7->_completesWhenAtRest = 1;
    v7->_tension = 200.0;
    v7->_friction = 8.0;
  }

  return v7;
}

- (BOOL)start
{
  v10.receiver = self;
  v10.super_class = HUElasticApplier;
  start = [(HUApplier *)&v10 start];
  if (start)
  {
    v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkTick];
    [(HUElasticApplier *)self setDisplayLink:v4];

    displayLink = [(HUElasticApplier *)self displayLink];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [displayLink addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

    displayLink2 = [(HUElasticApplier *)self displayLink];
    v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [displayLink2 setPreferredFrameRateRange:{*&v11.minimum, *&v11.maximum, *&v11.preferred}];

    displayLink3 = [(HUElasticApplier *)self displayLink];
    [displayLink3 setHighFrameRateReason:1769473];

    [(HUElasticApplier *)self _updateProgressForInitialUpdate:1];
  }

  return start;
}

- (void)_updateProgressForInitialUpdate:(BOOL)update
{
  updateCopy = update;
  v5 = [(HUElasticApplier *)self frameCount]* 0.0166666667;
  progressInputBlock = [(HUElasticApplier *)self progressInputBlock];
  v7 = progressInputBlock[2](v5);

  if (!updateCopy || (v8 = v7, ![(HUElasticApplier *)self progressBeginsFromInitialInputProgress]))
  {
    [(HUApplier *)self progress];
    v8 = v9;
  }

  [(HUElasticApplier *)self tension];
  v11 = v10 * (v7 - v8);
  if (updateCopy)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 0.0166666667;
  }

  v13 = v8 + v12 * v11 * v12;
  [(HUElasticApplier *)self friction];
  v15 = fmax(1.0 - v12 * v14, 0.0);
  [(HUElasticApplier *)self previousForce];
  v17 = v15 * (v13 - v16) / 0.0166666667;
  v18 = v13 + v17 * v12;
  v19 = vabdd_f64(v18, v8);
  [(HUElasticApplier *)self setPreviousForce:v13];
  [(HUElasticApplier *)self setCurrentVelocity:v17];
  [(HUElasticApplier *)self setFrameCount:[(HUElasticApplier *)self frameCount]+ 1];
  if (v19 > 0.001 || updateCopy || ![(HUElasticApplier *)self applyOnlyOnProgressChanges])
  {
    [(HUApplier *)self updateProgress:v18];
  }

  if (v19 <= 0.001 && [(HUElasticApplier *)self completesWhenAtRest])
  {
    [(HUElasticApplier *)self setRestingFrameCount:[(HUElasticApplier *)self restingFrameCount]+ 1];
    if ([(HUElasticApplier *)self restingFrameCount]>= 3)
    {

      [(HUElasticApplier *)self complete:1];
    }
  }

  else
  {

    [(HUElasticApplier *)self setRestingFrameCount:0];
  }
}

- (void)_invalidateDisplayLinkIfNecessary
{
  displayLink = [(HUElasticApplier *)self displayLink];
  [displayLink invalidate];

  [(HUElasticApplier *)self setDisplayLink:0];
}

- (BOOL)complete:(BOOL)complete
{
  v6.receiver = self;
  v6.super_class = HUElasticApplier;
  v4 = [(HUApplier *)&v6 complete:complete];
  if (v4)
  {
    [(HUElasticApplier *)self _invalidateDisplayLinkIfNecessary];
  }

  return v4;
}

@end