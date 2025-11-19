@interface HUElasticApplier
- (BOOL)complete:(BOOL)a3;
- (BOOL)start;
- (HUElasticApplier)init;
- (HUElasticApplier)initWithProgressInputBlock:(id)a3;
- (void)_invalidateDisplayLinkIfNecessary;
- (void)_updateProgressForInitialUpdate:(BOOL)a3;
@end

@implementation HUElasticApplier

- (HUElasticApplier)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithProgressInputBlock_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUElasticApplier.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUElasticApplier init]", v5}];

  return 0;
}

- (HUElasticApplier)initWithProgressInputBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HUElasticApplier.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"progressInputBlock"}];
  }

  v10.receiver = self;
  v10.super_class = HUElasticApplier;
  v6 = [(HUApplier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(HUElasticApplier *)v6 setProgressInputBlock:v5];
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
  v3 = [(HUApplier *)&v10 start];
  if (v3)
  {
    v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkTick];
    [(HUElasticApplier *)self setDisplayLink:v4];

    v5 = [(HUElasticApplier *)self displayLink];
    v6 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v5 addToRunLoop:v6 forMode:*MEMORY[0x277CBE738]];

    v7 = [(HUElasticApplier *)self displayLink];
    v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v7 setPreferredFrameRateRange:{*&v11.minimum, *&v11.maximum, *&v11.preferred}];

    v8 = [(HUElasticApplier *)self displayLink];
    [v8 setHighFrameRateReason:1769473];

    [(HUElasticApplier *)self _updateProgressForInitialUpdate:1];
  }

  return v3;
}

- (void)_updateProgressForInitialUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUElasticApplier *)self frameCount]* 0.0166666667;
  v6 = [(HUElasticApplier *)self progressInputBlock];
  v7 = v6[2](v5);

  if (!v3 || (v8 = v7, ![(HUElasticApplier *)self progressBeginsFromInitialInputProgress]))
  {
    [(HUApplier *)self progress];
    v8 = v9;
  }

  [(HUElasticApplier *)self tension];
  v11 = v10 * (v7 - v8);
  if (v3)
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
  if (v19 > 0.001 || v3 || ![(HUElasticApplier *)self applyOnlyOnProgressChanges])
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
  v3 = [(HUElasticApplier *)self displayLink];
  [v3 invalidate];

  [(HUElasticApplier *)self setDisplayLink:0];
}

- (BOOL)complete:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HUElasticApplier;
  v4 = [(HUApplier *)&v6 complete:a3];
  if (v4)
  {
    [(HUElasticApplier *)self _invalidateDisplayLinkIfNecessary];
  }

  return v4;
}

@end