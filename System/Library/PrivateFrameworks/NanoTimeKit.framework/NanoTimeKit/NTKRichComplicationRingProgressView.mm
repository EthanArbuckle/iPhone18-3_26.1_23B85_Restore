@interface NTKRichComplicationRingProgressView
- (NTKRichComplicationRingProgressView)initWithFamily:(int64_t)family curveWidth:(double)width padding:(double)padding forDevice:(id)device;
- (void)setClockwise:(BOOL)clockwise;
@end

@implementation NTKRichComplicationRingProgressView

- (NTKRichComplicationRingProgressView)initWithFamily:(int64_t)family curveWidth:(double)width padding:(double)padding forDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowGossamerUI(deviceCopy))
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = [[off_27877BEB8 alloc] initWithCurveWidth:deviceCopy padding:v11 forDevice:width withFilterStyle:padding];
  v13 = [[off_27877BEB8 alloc] initWithCurveWidth:deviceCopy padding:v11 forDevice:width withFilterStyle:padding];
  v16.receiver = self;
  v16.super_class = NTKRichComplicationRingProgressView;
  v14 = [(CDRichComplicationProgressView *)&v16 initForFamily:family device:deviceCopy backgroundShapeView:v12 foregroundShapeView:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_backgroundView, v12);
    objc_storeStrong(&v14->_foregroundView, v13);
  }

  return v14;
}

- (void)setClockwise:(BOOL)clockwise
{
  clockwiseCopy = clockwise;
  self->_clockwise = clockwise;
  [(CDRichComplicationRingView *)self->_backgroundView setClockwise:?];
  [(CDRichComplicationRingView *)self->_foregroundView setClockwise:clockwiseCopy];

  [(NTKRichComplicationRingProgressView *)self setNeedsLayout];
}

@end