@interface MRURouteRecommendationPlatterView
- (MRURouteRecommendationPlatterView)initWithFrame:(CGRect)a3;
- (void)_addLayoutConstraints;
- (void)setActionType:(unint64_t)a3;
- (void)updateVisualStyling;
@end

@implementation MRURouteRecommendationPlatterView

- (MRURouteRecommendationPlatterView)initWithFrame:(CGRect)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = MRURouteRecommendationPlatterView;
  v3 = [(MRURouteRecommendationPlatterView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MRURouteRecommendationPlatterView *)v3 layer];
    [v5 setHitTestsAsOpaque:1];

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

    v16 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    objc_initWeak(&location, v4);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __51__MRURouteRecommendationPlatterView_initWithFrame___block_invoke;
    v23 = &unk_1E76639A8;
    objc_copyWeak(&v24, &location);
    [(UIButton *)v4->_actionButton setConfigurationUpdateHandler:&v20];
    [(UIButton *)v4->_actionButton setConfiguration:v16, v20, v21, v22, v23];
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

- (void)setActionType:(unint64_t)a3
{
  self->_actionType = a3;
  if (a3 == 1)
  {
    v4 = +[MRUAssetsProvider suggestedRouteTVRemote];
    v5 = 25.0;
  }

  else
  {
    if (a3)
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
  v43 = [(MRURouteRecommendationPlatterView *)self activityRouteView];
  v42 = [v43 topAnchor];
  v41 = [(MRURouteRecommendationPlatterView *)self topAnchor];
  v40 = [v42 constraintEqualToAnchor:v41 constant:10.0];
  v44[0] = v40;
  v39 = [(MRURouteRecommendationPlatterView *)self activityRouteView];
  v38 = [v39 leadingAnchor];
  v37 = [(MRURouteRecommendationPlatterView *)self leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37 constant:10.0];
  v44[1] = v36;
  v35 = [(MRURouteRecommendationPlatterView *)self activityRouteView];
  v34 = [v35 bottomAnchor];
  v33 = [(MRURouteRecommendationPlatterView *)self bottomAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:-10.0];
  v44[2] = v32;
  v31 = [(MRURouteRecommendationPlatterView *)self activityRouteView];
  v29 = [v31 widthAnchor];
  v30 = [(MRURouteRecommendationPlatterView *)self activityRouteView];
  v28 = [v30 heightAnchor];
  v26 = [v29 constraintEqualToAnchor:v28];
  v44[3] = v26;
  v25 = [(MRURouteRecommendationPlatterView *)self labelView];
  v23 = [v25 leadingAnchor];
  v24 = [(MRURouteRecommendationPlatterView *)self activityRouteView];
  v22 = [v24 trailingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22 constant:10.0];
  v44[4] = v21;
  v20 = [(MRURouteRecommendationPlatterView *)self labelView];
  v19 = [v20 centerYAnchor];
  v18 = [(MRURouteRecommendationPlatterView *)self centerYAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v44[5] = v17;
  v16 = [(MRURouteRecommendationPlatterView *)self actionButton];
  v15 = [v16 trailingAnchor];
  v14 = [(MRURouteRecommendationPlatterView *)self trailingAnchor];
  v13 = [v15 constraintEqualToAnchor:v14 constant:-22.0];
  v44[6] = v13;
  v3 = [(MRURouteRecommendationPlatterView *)self actionButton];
  v4 = [v3 leadingAnchor];
  v5 = [(MRURouteRecommendationPlatterView *)self labelView];
  v6 = [v5 trailingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:22.0];
  v44[7] = v7;
  v8 = [(MRURouteRecommendationPlatterView *)self actionButton];
  v9 = [v8 centerYAnchor];
  v10 = [(MRURouteRecommendationPlatterView *)self centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
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