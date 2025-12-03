@interface NTKBezierPathView
- (CGPoint)pointOnPathForHorizontalPercentage:(double)percentage;
- (NSString)lineCap;
- (void)animateToPath:(id)path duration:(double)duration curve:(int64_t)curve;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)setLineCap:(id)cap;
- (void)setPath:(id)path;
- (void)setPathColor:(id)color;
@end

@implementation NTKBezierPathView

- (void)setPath:(id)path
{
  pathCopy = path;
  objc_storeStrong(&self->_path, path);
  _shapeLayer = [(NTKBezierPathView *)self _shapeLayer];
  [_shapeLayer setPath:{objc_msgSend(pathCopy, "CGPath")}];

  _shapeLayer2 = [(NTKBezierPathView *)self _shapeLayer];
  [pathCopy lineWidth];
  [_shapeLayer2 setLineWidth:?];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__NTKBezierPathView_setPath___block_invoke;
  v11[3] = &unk_278782AC8;
  objc_copyWeak(&v13, &location);
  v8 = pathCopy;
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

- (void)setPathColor:(id)color
{
  objc_storeStrong(&self->_pathColor, color);
  colorCopy = color;
  _shapeLayer = [(NTKBezierPathView *)self _shapeLayer];
  [_shapeLayer setStrokeColor:{objc_msgSend(colorCopy, "CGColor")}];
  clearColor = [MEMORY[0x277D75348] clearColor];

  [_shapeLayer setFillColor:{objc_msgSend(clearColor, "CGColor")}];
}

- (void)setLineCap:(id)cap
{
  capCopy = cap;
  _shapeLayer = [(NTKBezierPathView *)self _shapeLayer];
  [_shapeLayer setLineCap:capCopy];
}

- (NSString)lineCap
{
  _shapeLayer = [(NTKBezierPathView *)self _shapeLayer];
  lineCap = [_shapeLayer lineCap];

  return lineCap;
}

- (void)animateToPath:(id)path duration:(double)duration curve:(int64_t)curve
{
  pathCopy = path;
  _shapeLayer = [(NTKBezierPathView *)self _shapeLayer];
  [_shapeLayer removeAnimationForKey:@"animation"];
  [_shapeLayer setShouldRasterize:0];
  objc_storeStrong(&self->_animateToPath, path);
  v10 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"path"];
  [v10 setDelegate:self];
  [v10 setDuration:duration];
  [v10 setFillMode:*MEMORY[0x277CDA238]];
  [v10 setRemovedOnCompletion:0];
  v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v10 setTimingFunction:v11];

  [v10 setFromValue:{-[UIBezierPath CGPath](self->_path, "CGPath")}];
  [v10 setToValue:{objc_msgSend(pathCopy, "CGPath")}];
  [_shapeLayer addAnimation:v10 forKey:@"animation"];
  objc_storeStrong(&self->_path, path);
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__NTKBezierPathView_animateToPath_duration_curve___block_invoke;
  v15[3] = &unk_278782AC8;
  objc_copyWeak(&v17, &location);
  v12 = pathCopy;
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

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  _shapeLayer = [(NTKBezierPathView *)self _shapeLayer];
  [_shapeLayer removeAnimationForKey:@"animation"];
  [_shapeLayer setPath:{-[UIBezierPath CGPath](self->_animateToPath, "CGPath")}];
  [_shapeLayer setShouldRasterize:1];
  v6 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  device = [v6 device];

  [device screenScale];
  [_shapeLayer setRasterizationScale:?];
  if (finishedCopy)
  {
    animateToPath = self->_animateToPath;
    self->_animateToPath = 0;
  }
}

- (CGPoint)pointOnPathForHorizontalPercentage:(double)percentage
{
  object = [(NTKPromise *)self->_pointModel object];
  [object pointOnPathForHorizontalPercentage:percentage];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

@end