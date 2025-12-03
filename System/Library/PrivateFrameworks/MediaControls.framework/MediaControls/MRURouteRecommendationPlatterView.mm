@interface MRURouteRecommendationPlatterView
- (MRURouteRecommendationPlatterView)initWithFrame:(CGRect)frame;
- (void)_addLayoutConstraints;
- (void)setActionType:(unint64_t)type;
- (void)updateVisualStyling;
@end

@implementation MRURouteRecommendationPlatterView

- (MRURouteRecommendationPlatterView)initWithFrame:(CGRect)frame
{
  v27[1] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = MRURouteRecommendationPlatterView;
  v3 = [(MRURouteRecommendationPlatterView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(MRURouteRecommendationPlatterView *)v3 layer];
    [layer setHitTestsAsOpaque:1];

    v6 = +[MRUVisualStylingProvider stylingProviderForLockScreenPlatters];
    stylingProvider = v4->_stylingProvider;
    v4->_stylingProvider = v6;

    v27[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v9 = [(MRURouteRecommendationPlatterView *)v4 registerForTraitChanges:v8 withAction:sel_updateVisualStyling];

    v10 = objc_alloc_init(MRUActivityRouteView);
    activityRouteView = v4->_activityRouteView;
    v4->_activityRouteView = v10;

    [(MRUActivityRouteView *)v4->_activityRouteView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MRURouteRecommendationPlatterView *)v4 addSubview:v4->_activityRouteView];
    v12 = objc_alloc_init(MRUNowPlayingLabelView);
    labelView = v4->_labelView;
    v4->_labelView = v12;

    [(MRUNowPlayingLabelView *)v4->_labelView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MRUNowPlayingLabelView *)v4->_labelView setUserInteractionEnabled:0];
    [(MRUNowPlayingLabelView *)v4->_labelView setStylingProvider:v4->_stylingProvider];
    [(MRUNowPlayingLabelView *)v4->_labelView setLayout:2];
    [(MRUNowPlayingLabelView *)v4->_labelView setShowRoute:0];
    [(MRURouteRecommendationPlatterView *)v4 addSubview:v4->_labelView];
    v14 = objc_alloc_init(MEMORY[0x1E69DC738]);
    actionButton = v4->_actionButton;
    v4->_actionButton = v14;

    borderlessButtonConfiguration = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    objc_initWeak(&location, v4);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __51__MRURouteRecommendationPlatterView_initWithFrame___block_invoke;
    v23 = &unk_1E76639A8;
    objc_copyWeak(&v24, &location);
    [(UIButton *)v4->_actionButton setConfigurationUpdateHandler:&v20];
    [(UIButton *)v4->_actionButton setConfiguration:borderlessButtonConfiguration, v20, v21, v22, v23];
    [(UIButton *)v4->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v17) = 1148846080;
    [(UIButton *)v4->_actionButton setContentHuggingPriority:0 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(UIButton *)v4->_actionButton setContentCompressionResistancePriority:0 forAxis:v18];
    [(MRURouteRecommendationPlatterView *)v4 addSubview:v4->_actionButton];
    [(MRURouteRecommendationPlatterView *)v4 setActionType:0];
    [(MRURouteRecommendationPlatterView *)v4 setAccessibilityIdentifier:@"UIA.MediaRemoteUI.RouteRecommendationPlatter"];
    [(MRURouteRecommendationPlatterView *)v4 _addLayoutConstraints];
    [(MRURouteRecommendationPlatterView *)v4 updateVisualStyling];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __51__MRURouteRecommendationPlatterView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 configuration];
  if ([v7 isHighlighted])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained stylingProvider];
    v6 = [v5 blendColorForStyle:1];
    [v3 setBaseForegroundColor:v6];
  }

  else
  {
    [v3 setBaseForegroundColor:0];
  }

  [v7 setConfiguration:v3];
}

- (void)setActionType:(unint64_t)type
{
  self->_actionType = type;
  if (type == 1)
  {
    v4 = +[MRUAssetsProvider suggestedRouteTVRemote];
    v5 = 25.0;
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"chevron.down"];
    v5 = 12.0;
  }

  v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:v5];
  v7 = [v4 imageWithConfiguration:v6];

  [(UIButton *)self->_actionButton setImage:v7 forState:0];
LABEL_6:

  [(MRURouteRecommendationPlatterView *)self updateVisualStyling];
}

- (void)_addLayoutConstraints
{
  v44[9] = *MEMORY[0x1E69E9840];
  v27 = MEMORY[0x1E696ACD8];
  activityRouteView = [(MRURouteRecommendationPlatterView *)self activityRouteView];
  topAnchor = [activityRouteView topAnchor];
  topAnchor2 = [(MRURouteRecommendationPlatterView *)self topAnchor];
  v40 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v44[0] = v40;
  activityRouteView2 = [(MRURouteRecommendationPlatterView *)self activityRouteView];
  leadingAnchor = [activityRouteView2 leadingAnchor];
  leadingAnchor2 = [(MRURouteRecommendationPlatterView *)self leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v44[1] = v36;
  activityRouteView3 = [(MRURouteRecommendationPlatterView *)self activityRouteView];
  bottomAnchor = [activityRouteView3 bottomAnchor];
  bottomAnchor2 = [(MRURouteRecommendationPlatterView *)self bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v44[2] = v32;
  activityRouteView4 = [(MRURouteRecommendationPlatterView *)self activityRouteView];
  widthAnchor = [activityRouteView4 widthAnchor];
  activityRouteView5 = [(MRURouteRecommendationPlatterView *)self activityRouteView];
  heightAnchor = [activityRouteView5 heightAnchor];
  v26 = [widthAnchor constraintEqualToAnchor:heightAnchor];
  v44[3] = v26;
  labelView = [(MRURouteRecommendationPlatterView *)self labelView];
  leadingAnchor3 = [labelView leadingAnchor];
  activityRouteView6 = [(MRURouteRecommendationPlatterView *)self activityRouteView];
  trailingAnchor = [activityRouteView6 trailingAnchor];
  v21 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
  v44[4] = v21;
  labelView2 = [(MRURouteRecommendationPlatterView *)self labelView];
  centerYAnchor = [labelView2 centerYAnchor];
  centerYAnchor2 = [(MRURouteRecommendationPlatterView *)self centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v44[5] = v17;
  actionButton = [(MRURouteRecommendationPlatterView *)self actionButton];
  trailingAnchor2 = [actionButton trailingAnchor];
  trailingAnchor3 = [(MRURouteRecommendationPlatterView *)self trailingAnchor];
  v13 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-22.0];
  v44[6] = v13;
  actionButton2 = [(MRURouteRecommendationPlatterView *)self actionButton];
  leadingAnchor4 = [actionButton2 leadingAnchor];
  labelView3 = [(MRURouteRecommendationPlatterView *)self labelView];
  trailingAnchor4 = [labelView3 trailingAnchor];
  v7 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:22.0];
  v44[7] = v7;
  actionButton3 = [(MRURouteRecommendationPlatterView *)self actionButton];
  centerYAnchor3 = [actionButton3 centerYAnchor];
  centerYAnchor4 = [(MRURouteRecommendationPlatterView *)self centerYAnchor];
  v11 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v44[8] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:9];
  [v27 activateConstraints:v12];
}

- (void)updateVisualStyling
{
  actionType = self->_actionType;
  if (actionType)
  {
    if (actionType != 1)
    {
      goto LABEL_6;
    }

    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  v5 = [(MRUVisualStylingProvider *)self->_stylingProvider blendColorForStyle:v4];
  [(UIButton *)self->_actionButton setTintColor:v5];

LABEL_6:
  v6 = [(MRUVisualStylingProvider *)self->_stylingProvider blendColorForStyle:0];
  [(MRUActivityRouteView *)self->_activityRouteView setTintColor:v6];
}

@end