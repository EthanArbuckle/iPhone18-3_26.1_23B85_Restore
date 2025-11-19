@interface CAMZoomPinchGestureRecognizer
- (double)_distanceBetweenInitialTwoTouches;
- (double)_exponentialZoomScale;
- (double)_hybridZoomScale;
- (double)_zoomPinchDistance;
- (double)zoomScale;
- (void)_distanceBetweenInitialTwoTouches;
- (void)setState:(int64_t)a3;
@end

@implementation CAMZoomPinchGestureRecognizer

- (double)zoomScale
{
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 zoomPinchScalingMethod];

  if (v4 == 2)
  {

    [(CAMZoomPinchGestureRecognizer *)self _hybridZoomScale];
  }

  else if (v4 == 1)
  {

    [(CAMZoomPinchGestureRecognizer *)self _exponentialZoomScale];
  }

  else if (v4)
  {
    return 0.0;
  }

  else
  {

    [(UIPinchGestureRecognizer *)self scale];
  }

  return result;
}

- (double)_zoomPinchDistance
{
  [(CAMZoomPinchGestureRecognizer *)self _zoomPinchInitialDistance];
  v4 = v3;
  [(UIPinchGestureRecognizer *)self scale];
  return v4 * v5;
}

- (double)_exponentialZoomScale
{
  [(CAMZoomPinchGestureRecognizer *)self _zoomPinchDistance];
  v4 = v3;
  v5 = +[CAMCaptureCapabilities capabilities];
  [v5 zoomPinchExponentialFactorDistance];
  v7 = v6;

  [(CAMZoomPinchGestureRecognizer *)self _zoomPinchInitialDistance];
  v9 = (v4 - v8) / v7;
  v10 = +[CAMCaptureCapabilities capabilities];
  [v10 zoomPinchExponentialFactor];
  v12 = v11;

  return pow(v12, v9);
}

- (double)_hybridZoomScale
{
  v3 = +[CAMCaptureCapabilities capabilities];
  [v3 zoomPinchHybridLerpDistance];

  [(CAMZoomPinchGestureRecognizer *)self _zoomPinchDistance];
  [(CAMZoomPinchGestureRecognizer *)self _zoomPinchInitialDistance];
  CEKProgressClamped();
  [(UIPinchGestureRecognizer *)self scale];
  [(CAMZoomPinchGestureRecognizer *)self _exponentialZoomScale];

  CEKInterpolate();
  return result;
}

- (void)setState:(int64_t)a3
{
  v5 = [(CAMZoomPinchGestureRecognizer *)self state];
  v8.receiver = self;
  v8.super_class = CAMZoomPinchGestureRecognizer;
  [(CAMZoomPinchGestureRecognizer *)&v8 setState:a3];
  v6 = [(CAMZoomPinchGestureRecognizer *)self state];
  if (v6 != v5)
  {
    v7 = 0.0;
    if ((v6 - 3) >= 3)
    {
      if (v6 != 1)
      {
        return;
      }

      [(CAMZoomPinchGestureRecognizer *)self _distanceBetweenInitialTwoTouches];
    }

    [(CAMZoomPinchGestureRecognizer *)self _setZoomPinchInitialDistance:v7];
  }
}

- (double)_distanceBetweenInitialTwoTouches
{
  v3 = [(CAMZoomPinchGestureRecognizer *)self _activeEventOfType:0];
  v4 = [(CAMZoomPinchGestureRecognizer *)self _activeTouchesForEvent:v3];
  v5 = [v4 allObjects];
  if ([v5 count] == 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    [v6 locationInView:0];

    v7 = [v5 objectAtIndexedSubscript:1];
    [v7 locationInView:0];

    UIDistanceBetweenPoints();
    v9 = v8;
  }

  else
  {
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CAMZoomPinchGestureRecognizer *)v5 _distanceBetweenInitialTwoTouches];
    }

    v11 = +[CAMCaptureCapabilities capabilities];
    [v11 zoomPinchExponentialFactorDistance];
    v9 = v12;
  }

  return v9;
}

- (void)_distanceBetweenInitialTwoTouches
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Zoom pinch gesture recognizer received %lu touches instead of 2.", &v3, 0xCu);
}

@end