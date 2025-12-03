@interface HACCBatteryGroupView
- (HACCBatteryGroupView)initWithFrame:(CGRect)frame;
- (void)updateConstraints;
- (void)updateValueForDevice:(id)device;
- (void)updateValueForLeft:(double)left right:(double)right andAvailableEars:(int)ears;
@end

@implementation HACCBatteryGroupView

- (HACCBatteryGroupView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = HACCBatteryGroupView;
  v3 = [(HACCBatteryGroupView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(HACCBatteryView);
    [(HACCBatteryGroupView *)v3 addSubview:v4];
    [(HACCBatteryView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HACCBatteryGroupView *)v3 setTopBatteryView:v4];
    v5 = objc_alloc_init(HACCBatteryView);
    [(HACCBatteryGroupView *)v3 addSubview:v5];
    [(HACCBatteryView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HACCBatteryGroupView *)v3 setBottomBatteryView:v5];
  }

  return v3;
}

- (void)updateValueForDevice:(id)device
{
  deviceCopy = device;
  [deviceCopy leftBatteryLevel];
  v6 = v5;
  [deviceCopy rightBatteryLevel];
  v8 = v7;
  availableEars = [deviceCopy availableEars];

  [(HACCBatteryGroupView *)self updateValueForLeft:availableEars right:v6 andAvailableEars:v8];
}

- (void)updateValueForLeft:(double)left right:(double)right andAvailableEars:(int)ears
{
  leftCopy = right;
  if (ears == 6)
  {
    if (vabdd_f64(left, right) >= 0.05)
    {
      topBatteryView = [(HACCBatteryGroupView *)self topBatteryView];
      [topBatteryView setValue:2 forEar:left];

      bottomBatteryView = [(HACCBatteryGroupView *)self bottomBatteryView];
      [bottomBatteryView setValue:4 forEar:leftCopy];

      bottomBatteryView2 = [(HACCBatteryGroupView *)self bottomBatteryView];
      [bottomBatteryView2 setHidden:0];

      topBatteryView2 = [(HACCBatteryGroupView *)self topBatteryView];
      topBatteryView5 = topBatteryView2;
      v12 = 0;
      goto LABEL_9;
    }
  }

  else if (!ears)
  {
    topBatteryView3 = [(HACCBatteryGroupView *)self topBatteryView];
    [topBatteryView3 setHidden:1];

    topBatteryView2 = [(HACCBatteryGroupView *)self bottomBatteryView];
    topBatteryView5 = topBatteryView2;
    v12 = 1;
LABEL_9:
    [topBatteryView2 setHidden:v12];
    goto LABEL_10;
  }

  topBatteryView4 = [(HACCBatteryGroupView *)self topBatteryView];
  [topBatteryView4 setHidden:0];

  bottomBatteryView3 = [(HACCBatteryGroupView *)self bottomBatteryView];
  [bottomBatteryView3 setHidden:1];

  if (ears == 2)
  {
    leftCopy = left;
  }

  topBatteryView5 = [(HACCBatteryGroupView *)self topBatteryView];
  [topBatteryView5 setValue:6 forEar:leftCopy];
LABEL_10:

  [(HACCBatteryGroupView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  constraints = [(HACCBatteryGroupView *)self constraints];
  [(HACCBatteryGroupView *)self removeConstraints:constraints];

  v30.receiver = self;
  v30.super_class = HACCBatteryGroupView;
  [(HACCBatteryGroupView *)&v30 updateConstraints];
  topBatteryView = [(HACCBatteryGroupView *)self topBatteryView];
  bottomBatteryView = [(HACCBatteryGroupView *)self bottomBatteryView];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  if ((([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767F8]] & 1) != 0 || objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D767F0])) && (objc_msgSend(MEMORY[0x277D12B60], "deviceIsSmallPhone") & 1) == 0)
  {
    v22 = MEMORY[0x277CCAAD0];
    v23 = _NSDictionaryOfVariableBindings(&cfstr_Topview.isa, topBatteryView, 0);
    v24 = [v22 constraintsWithVisualFormat:@"V:|[topView]|" options:0 metrics:0 views:v23];
    [(HACCBatteryGroupView *)self addConstraints:v24];

    v25 = MEMORY[0x277CCAAD0];
    v26 = _NSDictionaryOfVariableBindings(&cfstr_Bottomview.isa, bottomBatteryView, 0);
    v27 = [v25 constraintsWithVisualFormat:@"V:|[bottomView]|" options:0 metrics:0 views:v26];
    [(HACCBatteryGroupView *)self addConstraints:v27];

    v28 = MEMORY[0x277CCAAD0];
    v21 = _NSDictionaryOfVariableBindings(&cfstr_TopviewBottomv.isa, topBatteryView, bottomBatteryView, 0);
    v29 = [v28 constraintsWithVisualFormat:@"H:|-(0.0)-[topView]-[bottomView]-(0.0)-|" options:0 metrics:0 views:v21];
    [(HACCBatteryGroupView *)self addConstraints:v29];

    goto LABEL_9;
  }

  v8 = MEMORY[0x277CCAAD0];
  v9 = _NSDictionaryOfVariableBindings(&cfstr_Topview.isa, topBatteryView, 0);
  v10 = [v8 constraintsWithVisualFormat:@"H:|[topView]|" options:0 metrics:0 views:v9];
  [(HACCBatteryGroupView *)self addConstraints:v10];

  v11 = MEMORY[0x277CCAAD0];
  v12 = _NSDictionaryOfVariableBindings(&cfstr_Bottomview.isa, bottomBatteryView, 0);
  v13 = [v11 constraintsWithVisualFormat:@"H:|[bottomView]|" options:0 metrics:0 views:v12];
  [(HACCBatteryGroupView *)self addConstraints:v13];

  v14 = MEMORY[0x277CCAAD0];
  v15 = MEMORY[0x277CCACA8];
  isHidden = [bottomBatteryView isHidden];
  v17 = &stru_28645E540;
  if (isHidden)
  {
    v17 = @"(0.0)";
  }

  v18 = [v15 stringWithFormat:@"V:|[topView]-(0.0)-[bottomView%@]|", v17];
  v19 = _NSDictionaryOfVariableBindings(&cfstr_TopviewBottomv.isa, topBatteryView, bottomBatteryView, 0);
  v20 = [v14 constraintsWithVisualFormat:v18 options:0 metrics:0 views:v19];
  [(HACCBatteryGroupView *)self addConstraints:v20];

  if (([bottomBatteryView isHidden] & 1) == 0)
  {
    v21 = [MEMORY[0x277CCAAD0] constraintWithItem:topBatteryView attribute:8 relatedBy:0 toItem:bottomBatteryView attribute:8 multiplier:1.0 constant:0.0];
    [(HACCBatteryGroupView *)self addConstraint:v21];
LABEL_9:
  }
}

@end