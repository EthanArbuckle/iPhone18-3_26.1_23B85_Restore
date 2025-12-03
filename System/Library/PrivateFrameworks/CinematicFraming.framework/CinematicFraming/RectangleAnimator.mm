@interface RectangleAnimator
- (CGRect)driveAnimationToTarget:(CGRect)target atTime:(id *)time;
- (CGRect)rectangle;
- (RectangleAnimator)initWithFramingSpaceManager:(id)manager;
- (void)drivePivotAnimationsToTarget:(id *)target withPivotDescriptions:(id)descriptions atTime:(id *)time;
- (void)driveWidthAnimationToTarget:(id *)target withPivotDescriptions:(id)descriptions atTime:(id *)time;
- (void)driveXPivotWithLocation:(float)location velocity:(float)velocity pivotDescriptions:(id)descriptions toTargetLocation:(float)targetLocation targetVelocity:(float)targetVelocity atTime:(id *)time;
- (void)driveYPivotWithLocation:(float)location velocity:(float)velocity pivotDescriptions:(id)descriptions toTargetLocation:(float)targetLocation targetVelocity:(float)targetVelocity atTime:(id *)time;
- (void)resetToRectangle:(CGRect)rectangle;
@end

@implementation RectangleAnimator

- (RectangleAnimator)initWithFramingSpaceManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = RectangleAnimator;
  v6 = [(RectangleAnimator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v8 = *(MEMORY[0x277CBF398] + 16);
    v6->_rectangle.origin = *MEMORY[0x277CBF398];
    v6->_rectangle.size = v8;
    RectToState(&v11, v6->_rectangle.origin.x, v6->_rectangle.origin.y, v6->_rectangle.size.width, v6->_rectangle.size.height);
    *&v7->_currentState.x = v11;
    *&v7->_currentState.vy = v12;
    objc_storeStrong(&v7->_framingSpaceManager, manager);
    v9 = v7;
  }

  return v7;
}

- (void)resetToRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v8 = [[AnimationEngine alloc] initWithInitialPosition:0.0];
  xAxisAnimationEngine = self->_xAxisAnimationEngine;
  self->_xAxisAnimationEngine = v8;

  v10 = [[AnimationEngine alloc] initWithInitialPosition:0.0];
  yAxisAnimationEngine = self->_yAxisAnimationEngine;
  self->_yAxisAnimationEngine = v10;

  v12 = [AnimationEngine alloc];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v13 = CGRectGetWidth(v18);
  *&v14 = logf(v13);
  v15 = [(AnimationEngine *)v12 initWithInitialPosition:v14];
  sizeAnimationEngine = self->_sizeAnimationEngine;
  self->_sizeAnimationEngine = v15;

  RectToState(&v17, x, y, width, height);
  self->_currentState = v17;
}

- (CGRect)driveAnimationToTarget:(CGRect)target atTime:(id *)time
{
  v34 = 0uLL;
  v35 = 0;
  RectToState(&v34, target.origin.x, target.origin.y, target.size.width, target.size.height);
  framingSpaceManager = self->_framingSpaceManager;
  y = self->_currentState.y;
  w = self->_currentState.w;
  v11 = *(&v34 + 4);
  v10 = HIDWORD(v11);
  LODWORD(v9) = v11;
  v12 = ComputeTPivot(self->_currentState.x, self->_currentState.x + w, *&v34, *&v34 + *(&v34 + 2), 0.5);
  v13 = framingSpaceManager;
  *&v14 = w;
  [(FramingSpaceManager *)v13 getHeightForWidth:v14];
  v16 = y + v15;
  LODWORD(v17) = v10;
  [(FramingSpaceManager *)v13 getHeightForWidth:v17];
  v19 = v18;

  v20 = ComputeTPivot(y, v16, v9, v9 + v19, 0.0);
  v32 = v34;
  v33 = v35;
  v31 = *time;
  *&v21 = v20;
  [(RectangleAnimator *)self driveWidthAnimationToTarget:&v32 withPivotDescriptions:&v31 atTime:COERCE_DOUBLE(__PAIR64__(HIDWORD(v31.var0), LODWORD(v12))), v21];
  v32 = v34;
  v33 = v35;
  v31 = *time;
  *&v22 = v20;
  [(RectangleAnimator *)self drivePivotAnimationsToTarget:&v32 withPivotDescriptions:&v31 atTime:COERCE_DOUBLE(__PAIR64__(HIDWORD(v31.var0), LODWORD(v12))), v22];
  x = self->_currentState.x;
  v24 = self->_currentState.y;
  v25 = self->_currentState.w;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:?];
  v27 = v26;
  self->_rectangle.origin.x = x;
  self->_rectangle.origin.y = v24;
  self->_rectangle.size.width = v25;
  self->_rectangle.size.height = v26;
  v28 = x;
  v29 = v24;
  v30 = v25;
  result.size.height = v27;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)driveWidthAnimationToTarget:(id *)target withPivotDescriptions:(id)descriptions atTime:(id *)time
{
  var1 = descriptions.var1;
  var0 = descriptions.var0;
  p_currentState = &self->_currentState;
  x = self->_currentState.x;
  y = self->_currentState.y;
  w = self->_currentState.w;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:?];
  v48 = v11;
  *&v12 = self->_currentState.w;
  vx = self->_currentState.vx;
  vw = self->_currentState.vw;
  vy = self->_currentState.vy;
  *&v14 = vw;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightDerivativeForWidth:v12 widthDerivative:v14];
  v44 = v15;
  v16 = logf(target->var2);
  sizeAnimationEngine = self->_sizeAnimationEngine;
  v58 = *time;
  *&v18 = v16;
  [sizeAnimationEngine animateWithDuration:4 toTarget:&v58 options:1.75 atTime:v18];
  v19 = p_currentState->x;
  v20 = self->_currentState.y;
  v21 = self->_currentState.w;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:?];
  v23 = v22;
  memset(&v58, 0, sizeof(v58));
  options = [(RectangleAnimator *)self options];
  ComputeSizeFrameEdgeConstraints(options, &v58, v19, v20, v21, v23);

  [(FramingSpaceManager *)self->_framingSpaceManager maxAllowedViewportWidth];
  HIDWORD(v58.var3) = logf(v25);
  options2 = [(RectangleAnimator *)self options];
  v58.var1 = ComputeSizeVelocityConstraints(options2);
  v58.var2 = v27;

  [self->_sizeAnimationEngine velocity];
  LODWORD(v23) = v28;
  [self->_sizeAnimationEngine position];
  *&v20 = v16 - v29;
  options3 = [(RectangleAnimator *)self options];
  LODWORD(v23) = ComputeSizeEaseInAccelerationConstraintsForVelocityAndDisplacement(options3, *&v23, *&v20);

  LODWORD(v31) = HIDWORD(v58.var0);
  LODWORD(v58.var0) = CombineMotionConstraints(*&v58.var0, v31, *&v23);
  HIDWORD(v58.var0) = v32;
  [self->_sizeAnimationEngine velocity];
  LODWORD(v23) = v33;
  options4 = [(RectangleAnimator *)self options];
  v35 = options4;
  if (*&v23 < 0.0)
  {
    [options4 zoomInSpeedMultiplier];
  }

  else
  {
    [options4 zoomOutSpeedMultiplier];
  }

  v37 = v36;

  v38.n128_f32[0] = vx + (vw * var0);
  v47 = v38;
  v38.n128_f32[0] = x + (w * var0);
  v53 = v38;
  v39 = self->_sizeAnimationEngine;
  v56 = *&time->var0;
  var3 = time->var3;
  v55 = v58;
  [(AnimationEngine *)v39 driveAnimationAtTime:&v56 withConstraints:&v55 withMultiplier:COERCE_DOUBLE(__PAIR64__(HIDWORD(v58.var0), v37))];
  [self->_sizeAnimationEngine position];
  v50 = expf(v40);
  v41 = v53;
  v41.n128_f32[1] = y + (v48 * var1);
  v41.n128_f32[2] = v50;
  v54 = v41;
  [self->_sizeAnimationEngine velocity];
  v42 = v47;
  v42.n128_f32[1] = vy + (v44 * var1);
  v42.n128_f32[2] = v50 * v43;
  PivotDescriptionsToState(self->_framingSpaceManager, &v56, v54, v42, var0, var1);
  *&p_currentState->x = v56;
  *&p_currentState->vy = var3;
}

- (void)drivePivotAnimationsToTarget:(id *)target withPivotDescriptions:(id)descriptions atTime:(id *)time
{
  var1 = descriptions.var1;
  var0 = descriptions.var0;
  y = self->_currentState.y;
  w = self->_currentState.w;
  *&v11 = self->_currentState.x + (w * descriptions.var0);
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:?];
  *&v44 = y + (v12 * var1);
  *&v13 = self->_currentState.w;
  vy = self->_currentState.vy;
  vw = self->_currentState.vw;
  v15 = self->_currentState.vx + (vw * var0);
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightDerivativeForWidth:v13 widthDerivative:?];
  v43 = vy + (v16 * var1);
  v17 = target->var1;
  v18 = target->var0 + (target->var2 * var0);
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:?];
  v20 = v17 + (v19 * var1);
  *&v21 = target->var2;
  var4 = target->var4;
  v23 = target->var3 + (target->var5 * var0);
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightDerivativeForWidth:v21 widthDerivative:?];
  v25 = var4 + (v24 * var1);
  v49 = *time;
  *&v26 = v15;
  *&v27 = var0;
  *&v28 = var1;
  *&v29 = v18;
  *&v30 = v23;
  [(RectangleAnimator *)self driveXPivotWithLocation:&v49 velocity:COERCE_DOUBLE(__PAIR64__(HIDWORD(v49.var0) pivotDescriptions:v11)) toTargetLocation:v26 targetVelocity:v27 atTime:v28, v29, v30];
  [self->_xAxisAnimationEngine position];
  v47 = v31;
  [self->_xAxisAnimationEngine velocity];
  v42 = v32;
  v49 = *time;
  *&v33 = v43;
  *&v34 = var0;
  *&v35 = var1;
  *&v36 = v20;
  *&v37 = v25;
  [(RectangleAnimator *)self driveYPivotWithLocation:&v49 velocity:COERCE_DOUBLE(__PAIR64__(HIDWORD(v49.var0) pivotDescriptions:v44)) toTargetLocation:v33 targetVelocity:v34 atTime:v35, v36, v37];
  [self->_yAxisAnimationEngine position];
  v38 = v47;
  v38.n128_u32[1] = v39;
  v38.n128_f32[2] = w;
  v48 = v38;
  [self->_yAxisAnimationEngine velocity];
  v40 = v42;
  v40.n128_u32[1] = v41;
  v40.n128_f32[2] = vw;
  PivotDescriptionsToState(self->_framingSpaceManager, &v49, v48, v40, var0, var1);
  self->_currentState = v49;
}

- (void)driveXPivotWithLocation:(float)location velocity:(float)velocity pivotDescriptions:(id)descriptions toTargetLocation:(float)targetLocation targetVelocity:(float)targetVelocity atTime:(id *)time
{
  var0 = descriptions.var0;
  [self->_xAxisAnimationEngine setPosition:?];
  *&v12 = velocity;
  [self->_xAxisAnimationEngine setVelocity:v12];
  xAxisAnimationEngine = self->_xAxisAnimationEngine;
  v45 = *time;
  *&v14 = targetLocation;
  [xAxisAnimationEngine animateWithDuration:4 toTarget:&v45 options:0.75 atTime:v14];
  x = self->_currentState.x;
  y = self->_currentState.y;
  w = self->_currentState.w;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:?];
  v19 = v18;
  memset(&v45, 0, sizeof(v45));
  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  options = [(RectangleAnimator *)self options];
  ComputeXFrameEdgeConstraints(options, &v45, x, y, w, v19, v21, v23, v25, v27);

  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  *&v23 = CGRectGetMinX(v46) + (var0 * self->_currentState.w);
  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  *&v29 = CGRectGetMaxX(v47) - ((1.0 - var0) * self->_currentState.w);
  v45.var3 = __PAIR64__(v29, LODWORD(v23));
  options2 = [(RectangleAnimator *)self options];
  LODWORD(v23) = ComputeXVelocityConstraints(options2, x, y, w);

  LODWORD(v31) = v45.var2;
  v45.var1 = CombineMotionConstraints(*&v45.var1, v31, *&v23);
  v45.var2 = v32;
  [self->_xAxisAnimationEngine velocity];
  LODWORD(v23) = v33;
  *&v27 = self->_currentState.w;
  options3 = [(RectangleAnimator *)self options];
  LODWORD(v23) = ComputeXEaseInAccelerationConstraintsForVelocityAndDisplacement(options3, *&v23, targetLocation - location, *&v27);

  LODWORD(v35) = HIDWORD(v45.var0);
  LODWORD(v45.var0) = CombineMotionConstraints(*&v45.var0, v35, *&v23);
  HIDWORD(v45.var0) = v36;
  *&v23 = self->_currentState.w;
  options4 = [(RectangleAnimator *)self options];
  [options4 horizontalSpeedMultiplier];
  *&v23 = *&v23 * v38;

  v39 = self->_xAxisAnimationEngine;
  v44 = *time;
  v43 = v45;
  [(AnimationEngine *)v39 driveAnimationAtTime:&v44 withConstraints:&v43 withMultiplier:COERCE_DOUBLE(__PAIR64__(HIDWORD(v45.var0), LODWORD(v23)))];
}

- (void)driveYPivotWithLocation:(float)location velocity:(float)velocity pivotDescriptions:(id)descriptions toTargetLocation:(float)targetLocation targetVelocity:(float)targetVelocity atTime:(id *)time
{
  var1 = descriptions.var1;
  [self->_yAxisAnimationEngine setPosition:?];
  *&v12 = velocity;
  [self->_yAxisAnimationEngine setVelocity:v12];
  yAxisAnimationEngine = self->_yAxisAnimationEngine;
  v47 = *time;
  *&v14 = targetLocation;
  [yAxisAnimationEngine animateWithDuration:4 toTarget:&v47 options:0.75 atTime:v14];
  x = self->_currentState.x;
  y = self->_currentState.y;
  w = self->_currentState.w;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:?];
  v19 = v18;
  memset(&v47, 0, sizeof(v47));
  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  options = [(RectangleAnimator *)self options];
  ComputeYFrameEdgeConstraints(options, &v47, x, y, w, v19, v21, v23, v25, v27);

  *&v29 = self->_currentState.w;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:v29];
  LODWORD(v23) = v30;
  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  *&v25 = CGRectGetMinY(v48) + (var1 * *&v23);
  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  *&v31 = CGRectGetMaxY(v49) - ((1.0 - var1) * *&v23);
  v47.var3 = __PAIR64__(v31, LODWORD(v25));
  options2 = [(RectangleAnimator *)self options];
  LODWORD(v23) = ComputeYVelocityConstraints(options2, x, y, w, v19);

  LODWORD(v33) = v47.var2;
  v47.var1 = CombineMotionConstraints(*&v47.var1, v33, *&v23);
  v47.var2 = v34;
  [self->_yAxisAnimationEngine velocity];
  LODWORD(v23) = v35;
  *&v27 = self->_currentState.w;
  options3 = [(RectangleAnimator *)self options];
  LODWORD(v23) = ComputeYEaseInAccelerationConstraintsForVelocityAndDisplacement(options3, *&v23, targetLocation - location, *&v27);

  LODWORD(v37) = HIDWORD(v47.var0);
  LODWORD(v47.var0) = CombineMotionConstraints(*&v47.var0, v37, *&v23);
  HIDWORD(v47.var0) = v38;
  *&v23 = self->_currentState.w;
  options4 = [(RectangleAnimator *)self options];
  [options4 verticalSpeedMultiplier];
  *&v23 = *&v23 * v40;

  v41 = self->_yAxisAnimationEngine;
  v46 = *time;
  v45 = v47;
  [(AnimationEngine *)v41 driveAnimationAtTime:&v46 withConstraints:&v45 withMultiplier:COERCE_DOUBLE(__PAIR64__(HIDWORD(v47.var0), LODWORD(v23)))];
}

- (CGRect)rectangle
{
  x = self->rectangle.origin.x;
  y = self->rectangle.origin.y;
  width = self->rectangle.size.width;
  height = self->rectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end