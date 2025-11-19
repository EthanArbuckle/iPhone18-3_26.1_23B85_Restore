@interface HPSSpatialProfileCrossHairs
- (HPSSpatialProfileCrossHairs)initWithView:(CGRect)a3 view:(id)a4;
- (void)nudgeCustomDirection:(unint64_t)a3 completion:(id)a4;
- (void)nudgeInDirection:(unint64_t)a3 smallNudgePeak:(id)a4 largeNudgePeak:(id)a5 completion:(id)a6;
@end

@implementation HPSSpatialProfileCrossHairs

- (HPSSpatialProfileCrossHairs)initWithView:(CGRect)a3 view:(id)a4
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

- (void)nudgeCustomDirection:(unint64_t)a3 completion:(id)a4
{
  v4.receiver = self;
  v4.super_class = HPSSpatialProfileCrossHairs;
  [(BKUIPearlCrossHairsView *)&v4 nudgeInDirection:a3 smallNudgePeak:0 largeNudgePeak:0 completion:a4];
}

- (void)nudgeInDirection:(unint64_t)a3 smallNudgePeak:(id)a4 largeNudgePeak:(id)a5 completion:(id)a6
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = a3;
    _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Nudging Requesr in direction  %d", buf, 8u);
  }

  if ([_parentView faceCaptured])
  {
    if (v10)
    {
      v10[2](v10);
    }

    if (v11)
    {
      v11[2](v11);
    }

    if (v12)
    {
      v12[2](v12);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HPSSpatialProfileCrossHairs;
    [(BKUIPearlCrossHairsView *)&v15 nudgeInDirection:a3 smallNudgePeak:v10 largeNudgePeak:v11 completion:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end