@interface NTKBezierPathView
- (CGPoint)pointOnPathForHorizontalPercentage:(double)a3;
- (NSString)lineCap;
- (void)animateToPath:(id)a3 duration:(double)a4 curve:(int64_t)a5;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)setLineCap:(id)a3;
- (void)setPath:(id)a3;
- (void)setPathColor:(id)a3;
@end

@implementation NTKBezierPathView

- (void)setPath:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_path, a3);
  v6 = [(NTKBezierPathView *)self _shapeLayer];
  [v6 setPath:{objc_msgSend(v5, "CGPath")}];

  v7 = [(NTKBezierPathView *)self _shapeLayer];
  [v5 lineWidth];
  [v7 setLineWidth:?];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__NTKBezierPathView_setPath___block_invoke;
  v11[3] = &unk_278782AC8;
  objc_copyWeak(&v13, &location);
  v8 = v5;
  v12 = v8;
  v9 = [NTKPromise promiseNamed:@"BezierPathView Point Model" withBlock:v11];
  pointModel = self->_pointModel;
  self->_pointModel = v9;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

NTKBezierPathPointModel *__29__NTKBezierPathView_setPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [[NTKBezierPathPointModel alloc] initWithPath:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPathColor:(id)a3
{
  objc_storeStrong(&self->_pathColor, a3);
  v5 = a3;
  v7 = [(NTKBezierPathView *)self _shapeLayer];
  [v7 setStrokeColor:{objc_msgSend(v5, "CGColor")}];
  v6 = [MEMORY[0x277D75348] clearColor];

  [v7 setFillColor:{objc_msgSend(v6, "CGColor")}];
}

- (void)setLineCap:(id)a3
{
  v4 = a3;
  v5 = [(NTKBezierPathView *)self _shapeLayer];
  [v5 setLineCap:v4];
}

- (NSString)lineCap
{
  v2 = [(NTKBezierPathView *)self _shapeLayer];
  v3 = [v2 lineCap];

  return v3;
}

- (void)animateToPath:(id)a3 duration:(double)a4 curve:(int64_t)a5
{
  v8 = a3;
  v9 = [(NTKBezierPathView *)self _shapeLayer];
  [v9 removeAnimationForKey:@"animation"];
  [v9 setShouldRasterize:0];
  objc_storeStrong(&self->_animateToPath, a3);
  v10 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"path"];
  [v10 setDelegate:self];
  [v10 setDuration:a4];
  [v10 setFillMode:*MEMORY[0x277CDA238]];
  [v10 setRemovedOnCompletion:0];
  v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v10 setTimingFunction:v11];

  [v10 setFromValue:{-[UIBezierPath CGPath](self->_path, "CGPath")}];
  [v10 setToValue:{objc_msgSend(v8, "CGPath")}];
  [v9 addAnimation:v10 forKey:@"animation"];
  objc_storeStrong(&self->_path, a3);
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__NTKBezierPathView_animateToPath_duration_curve___block_invoke;
  v15[3] = &unk_278782AC8;
  objc_copyWeak(&v17, &location);
  v12 = v8;
  v16 = v12;
  v13 = [NTKPromise promiseNamed:@"BezierPathView Point Model" withBlock:v15];
  pointModel = self->_pointModel;
  self->_pointModel = v13;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

NTKBezierPathPointModel *__50__NTKBezierPathView_animateToPath_duration_curve___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [[NTKBezierPathPointModel alloc] initWithPath:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v9 = [(NTKBezierPathView *)self _shapeLayer];
  [v9 removeAnimationForKey:@"animation"];
  [v9 setPath:{-[UIBezierPath CGPath](self->_animateToPath, "CGPath")}];
  [v9 setShouldRasterize:1];
  v6 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  v7 = [v6 device];

  [v7 screenScale];
  [v9 setRasterizationScale:?];
  if (v4)
  {
    animateToPath = self->_animateToPath;
    self->_animateToPath = 0;
  }
}

- (CGPoint)pointOnPathForHorizontalPercentage:(double)a3
{
  v4 = [(NTKPromise *)self->_pointModel object];
  [v4 pointOnPathForHorizontalPercentage:a3];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

@end