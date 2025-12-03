@interface HKHostingAreaLayoutView
+ (id)colorBackgroundViewHostingView:(id)view;
+ (id)viewHostingView:(id)view;
- (CGSize)intrinsicContentSize;
- (void)setHostedView:(id)view;
@end

@implementation HKHostingAreaLayoutView

+ (id)viewHostingView:(id)view
{
  viewCopy = view;
  v4 = [HKHostingAreaLayoutView alloc];
  v5 = [(HKHostingAreaLayoutView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(HKHostingAreaLayoutView *)v5 setHostedView:viewCopy];

  return v5;
}

+ (id)colorBackgroundViewHostingView:(id)view
{
  v3 = [self viewHostingView:view];
  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [v3 setBackgroundColor:systemGroupedBackgroundColor];

  return v3;
}

- (void)setHostedView:(id)view
{
  objc_storeStrong(&self->_hostedView, view);
  hostedView = [(HKHostingAreaLayoutView *)self hostedView];
  [hostedView setTranslatesAutoresizingMaskIntoConstraints:0];

  hostedView2 = [(HKHostingAreaLayoutView *)self hostedView];
  [(HKHostingAreaLayoutView *)self addSubview:hostedView2];

  safeAreaLayoutGuide = [(HKHostingAreaLayoutView *)self safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  hostedView3 = [(HKHostingAreaLayoutView *)self hostedView];
  topAnchor2 = [hostedView3 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v10 setActive:1];

  safeAreaLayoutGuide2 = [(HKHostingAreaLayoutView *)self safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  hostedView4 = [(HKHostingAreaLayoutView *)self hostedView];
  bottomAnchor2 = [hostedView4 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v15 setActive:1];

  safeAreaLayoutGuide3 = [(HKHostingAreaLayoutView *)self safeAreaLayoutGuide];
  leadingAnchor = [safeAreaLayoutGuide3 leadingAnchor];
  hostedView5 = [(HKHostingAreaLayoutView *)self hostedView];
  leadingAnchor2 = [hostedView5 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v20 setActive:1];

  safeAreaLayoutGuide4 = [(HKHostingAreaLayoutView *)self safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide4 trailingAnchor];
  hostedView6 = [(HKHostingAreaLayoutView *)self hostedView];
  trailingAnchor2 = [hostedView6 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v24 setActive:1];
}

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x1E69DE788];
  hostedView = [(HKHostingAreaLayoutView *)self hostedView];
  [hostedView intrinsicContentSize];
  v6 = v5;
  [(HKHostingAreaLayoutView *)self safeAreaInsets];
  v8 = v6 + v7;
  [(HKHostingAreaLayoutView *)self safeAreaInsets];
  v10 = v8 + v9;

  v11 = v3;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end