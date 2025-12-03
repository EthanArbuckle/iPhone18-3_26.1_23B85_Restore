@interface HPSSpatialProfileCrossHairs
- (HPSSpatialProfileCrossHairs)initWithView:(CGRect)view view:(id)a4;
- (void)nudgeCustomDirection:(unint64_t)direction completion:(id)completion;
- (void)nudgeInDirection:(unint64_t)direction smallNudgePeak:(id)peak largeNudgePeak:(id)nudgePeak completion:(id)completion;
@end

@implementation HPSSpatialProfileCrossHairs

- (HPSSpatialProfileCrossHairs)initWithView:(CGRect)view view:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = HPSSpatialProfileCrossHairs;
  v7 = [(BKUIPearlCrossHairsView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v7)
  {
    objc_storeStrong(&_parentView, a4);
  }

  return v7;
}

- (void)nudgeCustomDirection:(unint64_t)direction completion:(id)completion
{
  v4.receiver = self;
  v4.super_class = HPSSpatialProfileCrossHairs;
  [(BKUIPearlCrossHairsView *)&v4 nudgeInDirection:direction smallNudgePeak:0 largeNudgePeak:0 completion:completion];
}

- (void)nudgeInDirection:(unint64_t)direction smallNudgePeak:(id)peak largeNudgePeak:(id)nudgePeak completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  peakCopy = peak;
  nudgePeakCopy = nudgePeak;
  completionCopy = completion;
  v13 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    directionCopy = direction;
    _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Nudging Requesr in direction  %d", buf, 8u);
  }

  if ([_parentView faceCaptured])
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
    v15.receiver = self;
    v15.super_class = HPSSpatialProfileCrossHairs;
    [(BKUIPearlCrossHairsView *)&v15 nudgeInDirection:direction smallNudgePeak:peakCopy largeNudgePeak:nudgePeakCopy completion:completionCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end