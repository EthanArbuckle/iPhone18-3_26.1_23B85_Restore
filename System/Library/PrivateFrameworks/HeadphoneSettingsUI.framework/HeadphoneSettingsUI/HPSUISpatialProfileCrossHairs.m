@interface HPSUISpatialProfileCrossHairs
- (HPSUISpatialProfileCrossHairs)initWithView:(CGRect)a3 view:(id)a4;
- (void)nudgeCustomDirection:(unint64_t)a3 completion:(id)a4;
- (void)nudgeInDirection:(unint64_t)a3 smallNudgePeak:(id)a4 largeNudgePeak:(id)a5 completion:(id)a6;
@end

@implementation HPSUISpatialProfileCrossHairs

- (HPSUISpatialProfileCrossHairs)initWithView:(CGRect)a3 view:(id)a4
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

- (void)nudgeCustomDirection:(unint64_t)a3 completion:(id)a4
{
  v4.receiver = self;
  v4.super_class = HPSUISpatialProfileCrossHairs;
  [(BKUIPearlCrossHairsView *)&v4 nudgeInDirection:a3 smallNudgePeak:0 largeNudgePeak:0 completion:a4];
}

- (void)nudgeInDirection:(unint64_t)a3 smallNudgePeak:(id)a4 largeNudgePeak:(id)a5 completion:(id)a6
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = a3;
    _os_log_impl(&dword_1AC1C3000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Nudging Requesr in direction  %d", buf, 8u);
  }

  if ([(HPSUISpatialProfileUIPearlEnrollView *)self->_parentView faceCaptured])
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
    v14.receiver = self;
    v14.super_class = HPSUISpatialProfileCrossHairs;
    [(BKUIPearlCrossHairsView *)&v14 nudgeInDirection:a3 smallNudgePeak:v10 largeNudgePeak:v11 completion:v12];
  }
}

@end