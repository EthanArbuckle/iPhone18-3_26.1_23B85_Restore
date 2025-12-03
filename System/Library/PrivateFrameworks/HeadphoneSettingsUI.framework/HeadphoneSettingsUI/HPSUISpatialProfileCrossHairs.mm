@interface HPSUISpatialProfileCrossHairs
- (HPSUISpatialProfileCrossHairs)initWithView:(CGRect)view view:(id)a4;
- (void)nudgeCustomDirection:(unint64_t)direction completion:(id)completion;
- (void)nudgeInDirection:(unint64_t)direction smallNudgePeak:(id)peak largeNudgePeak:(id)nudgePeak completion:(id)completion;
@end

@implementation HPSUISpatialProfileCrossHairs

- (HPSUISpatialProfileCrossHairs)initWithView:(CGRect)view view:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HPSUISpatialProfileCrossHairs;
  v7 = [(BKUIPearlCrossHairsView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_parentView, a4);
  }

  return v8;
}

- (void)nudgeCustomDirection:(unint64_t)direction completion:(id)completion
{
  v4.receiver = self;
  v4.super_class = HPSUISpatialProfileCrossHairs;
  [(BKUIPearlCrossHairsView *)&v4 nudgeInDirection:direction smallNudgePeak:0 largeNudgePeak:0 completion:completion];
}

- (void)nudgeInDirection:(unint64_t)direction smallNudgePeak:(id)peak largeNudgePeak:(id)nudgePeak completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  peakCopy = peak;
  nudgePeakCopy = nudgePeak;
  completionCopy = completion;
  v13 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    directionCopy = direction;
    _os_log_impl(&dword_1AC1C3000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Nudging Requesr in direction  %d", buf, 8u);
  }

  if ([(HPSUISpatialProfileUIPearlEnrollView *)self->_parentView faceCaptured])
  {
    if (peakCopy)
    {
      peakCopy[2](peakCopy);
    }

    if (nudgePeakCopy)
    {
      nudgePeakCopy[2](nudgePeakCopy);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HPSUISpatialProfileCrossHairs;
    [(BKUIPearlCrossHairsView *)&v14 nudgeInDirection:direction smallNudgePeak:peakCopy largeNudgePeak:nudgePeakCopy completion:completionCopy];
  }
}

@end