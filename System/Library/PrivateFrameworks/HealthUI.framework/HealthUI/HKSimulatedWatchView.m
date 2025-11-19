@interface HKSimulatedWatchView
- (HKSimulatedWatchView)initWithIconImage:(id)a3 titleText:(id)a4 detailText:(id)a5 tintColor:(id)a6;
- (HKSimulatedWatchView)initWithWatchView:(id)a3;
- (void)layoutSubviews;
@end

@implementation HKSimulatedWatchView

- (HKSimulatedWatchView)initWithWatchView:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = HKSimulatedWatchView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(HKSimulatedWatchView *)&v19 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    containerView = v10->_containerView;
    v10->_containerView = v11;

    objc_storeStrong(&v10->_watchScreenView, a3);
    v13 = MEMORY[0x1E69DCAB8];
    v14 = HKHealthUIFrameworkBundle();
    v15 = [v13 imageNamed:@"simulated_watch_2" inBundle:v14 compatibleWithTraitCollection:0];

    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15];
    [(HKSimulatedWatchView *)v10 addSubview:v16];
    [(UIView *)v10->_containerView addSubview:v10->_watchScreenView];
    v17 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v10->_containerView setBackgroundColor:v17];

    [(HKSimulatedWatchView *)v10 addSubview:v10->_containerView];
    [(UIView *)v10->_watchScreenView setContentMode:2];
    [(HKSimulatedWatchView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 size];
    [(UIView *)v10 hk_constraintAspectRatioFromSize:?];
    [v16 hk_alignConstraintsWithView:v10];
  }

  return v10;
}

- (HKSimulatedWatchView)initWithIconImage:(id)a3 titleText:(id)a4 detailText:(id)a5 tintColor:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[HKSimulatedWatchNotificationQuickLookView alloc] initWithIconImage:v13 titleText:v12 detailText:v11 tintColor:v10];

  v15 = [(HKSimulatedWatchView *)self initWithWatchView:v14];
  return v15;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = HKSimulatedWatchView;
  [(HKSimulatedWatchView *)&v20 layoutSubviews];
  [(HKSimulatedWatchView *)self bounds];
  v4 = v3 * 0.139;
  v6 = v5 * 0.249;
  v7 = v3 * 0.68;
  v8 = v5 * 0.5;
  v9 = [(HKSimulatedWatchView *)self containerView];
  [v9 setFrame:{v4, v6, v7, v8}];

  [(UIView *)self->_containerView bounds];
  MidX = CGRectGetMidX(v21);
  [(UIView *)self->_containerView bounds];
  MidY = CGRectGetMidY(v22);
  v12 = [(HKSimulatedWatchView *)self watchScreenView];
  [v12 setCenter:{MidX, MidY}];

  [(UIView *)self->_containerView frame];
  v14 = v13 / 142.0;
  [(UIView *)self->_containerView frame];
  v16 = v15 / 195.0;
  if (v14 < v15 / 195.0)
  {
    v16 = v14;
  }

  CGAffineTransformMakeScale(&v19, v16, v16);
  v17 = [(HKSimulatedWatchView *)self watchScreenView];
  v18 = v19;
  [v17 setTransform:&v18];
}

@end