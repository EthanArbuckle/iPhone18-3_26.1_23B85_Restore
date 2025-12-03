@interface DBSmartWidgetView
+ (id)viewWithPrediction:(id)prediction predictedSize:(CGSize)size;
- (DBSmartWidgetEngine)engine;
- (DBSmartWidgetView)initWithFrame:(CGRect)frame;
- (id)linearFocusItems;
- (void)_updateViews;
- (void)predictionDidUpdate:(id)update;
- (void)preparePrediction:(id)prediction withPredictedSize:(CGSize)size completion:(id)completion;
- (void)setPrediction:(id)prediction;
@end

@implementation DBSmartWidgetView

+ (id)viewWithPrediction:(id)prediction predictedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  predictionCopy = prediction;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [DBSmartWidgetLiveActivityView alloc];
    height = [(DBSmartWidgetLiveActivityView *)v8 initWithFrame:*MEMORY[0x277CBF3A0] predictedSize:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), width, height];
  }

  else
  {
    v10 = [DBSmartWidgetRangeBasedView alloc];
    height = [(DBSmartWidgetRangeBasedView *)v10 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  return height;
}

- (DBSmartWidgetView)initWithFrame:(CGRect)frame
{
  v75[12] = *MEMORY[0x277D85DE8];
  v73.receiver = self;
  v73.super_class = DBSmartWidgetView;
  v3 = [(DBSmartWidgetView *)&v73 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(DBSmartWidgetView *)v3 layer];
    [layer setAllowsGroupBlending:0];

    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
    scoreDetailsDebugLabel = v4->_scoreDetailsDebugLabel;
    v4->_scoreDetailsDebugLabel = v11;

    [(UILabel *)v4->_scoreDetailsDebugLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)v4->_scoreDetailsDebugLabel setTextColor:systemRedColor];

    v14 = [MEMORY[0x277D74300] boldSystemFontOfSize:5.0];
    [(UILabel *)v4->_scoreDetailsDebugLabel setFont:v14];

    [(UILabel *)v4->_scoreDetailsDebugLabel setNumberOfLines:0];
    _carSystemQuaternaryColor = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
    [(UILabel *)v4->_scoreDetailsDebugLabel setBackgroundColor:_carSystemQuaternaryColor];

    [(DBSmartWidgetView *)v4 addSubview:v4->_scoreDetailsDebugLabel];
    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    scoreDebugLabel = v4->_scoreDebugLabel;
    v4->_scoreDebugLabel = v16;

    [(UILabel *)v4->_scoreDebugLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemRedColor2 = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)v4->_scoreDebugLabel setTextColor:systemRedColor2];

    v19 = [MEMORY[0x277D74300] boldSystemFontOfSize:10.0];
    [(UILabel *)v4->_scoreDebugLabel setFont:v19];

    [(UILabel *)v4->_scoreDebugLabel setNumberOfLines:1];
    [(UILabel *)v4->_scoreDebugLabel setTextAlignment:2];
    _carSystemQuaternaryColor2 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
    [(UILabel *)v4->_scoreDebugLabel setBackgroundColor:_carSystemQuaternaryColor2];

    [(DBSmartWidgetView *)v4 addSubview:v4->_scoreDebugLabel];
    v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    nextRefreshDebugLabel = v4->_nextRefreshDebugLabel;
    v4->_nextRefreshDebugLabel = v21;

    [(UILabel *)v4->_nextRefreshDebugLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemRedColor3 = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)v4->_nextRefreshDebugLabel setTextColor:systemRedColor3];

    v24 = [MEMORY[0x277D74300] boldSystemFontOfSize:8.0];
    [(UILabel *)v4->_nextRefreshDebugLabel setFont:v24];

    [(UILabel *)v4->_nextRefreshDebugLabel setNumberOfLines:1];
    [(UILabel *)v4->_nextRefreshDebugLabel setTextAlignment:2];
    _carSystemQuaternaryColor3 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
    [(UILabel *)v4->_nextRefreshDebugLabel setBackgroundColor:_carSystemQuaternaryColor3];

    [(DBSmartWidgetView *)v4 addSubview:v4->_nextRefreshDebugLabel];
    v26 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    validRangesDebugLabel = v4->_validRangesDebugLabel;
    v4->_validRangesDebugLabel = v26;

    [(UILabel *)v4->_validRangesDebugLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemRedColor4 = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)v4->_validRangesDebugLabel setTextColor:systemRedColor4];

    v29 = [MEMORY[0x277D74300] boldSystemFontOfSize:8.0];
    [(UILabel *)v4->_validRangesDebugLabel setFont:v29];

    [(UILabel *)v4->_validRangesDebugLabel setNumberOfLines:0];
    _carSystemQuaternaryColor4 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
    [(UILabel *)v4->_validRangesDebugLabel setBackgroundColor:_carSystemQuaternaryColor4];

    [(DBSmartWidgetView *)v4 addSubview:v4->_validRangesDebugLabel];
    v60 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UILabel *)v4->_validRangesDebugLabel leadingAnchor];
    leadingAnchor2 = [(DBSmartWidgetView *)v4 leadingAnchor];
    v70 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
    v75[0] = v70;
    trailingAnchor = [(UILabel *)v4->_validRangesDebugLabel trailingAnchor];
    leadingAnchor3 = [(UILabel *)v4->_nextRefreshDebugLabel leadingAnchor];
    v67 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-5.0];
    v75[1] = v67;
    topAnchor = [(UILabel *)v4->_validRangesDebugLabel topAnchor];
    topAnchor2 = [(DBSmartWidgetView *)v4 topAnchor];
    v64 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v75[2] = v64;
    trailingAnchor2 = [(UILabel *)v4->_nextRefreshDebugLabel trailingAnchor];
    trailingAnchor3 = [(DBSmartWidgetView *)v4 trailingAnchor];
    v61 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-5.0];
    v75[3] = v61;
    topAnchor3 = [(UILabel *)v4->_nextRefreshDebugLabel topAnchor];
    topAnchor4 = [(DBSmartWidgetView *)v4 topAnchor];
    v57 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:5.0];
    v75[4] = v57;
    widthAnchor = [(UILabel *)v4->_nextRefreshDebugLabel widthAnchor];
    v55 = [widthAnchor constraintEqualToConstant:75.0];
    v75[5] = v55;
    leadingAnchor4 = [(UILabel *)v4->_scoreDebugLabel leadingAnchor];
    leadingAnchor5 = [(UILabel *)v4->_nextRefreshDebugLabel leadingAnchor];
    v52 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v75[6] = v52;
    trailingAnchor4 = [(UILabel *)v4->_scoreDebugLabel trailingAnchor];
    trailingAnchor5 = [(UILabel *)v4->_nextRefreshDebugLabel trailingAnchor];
    v49 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v75[7] = v49;
    topAnchor5 = [(UILabel *)v4->_scoreDebugLabel topAnchor];
    bottomAnchor = [(UILabel *)v4->_nextRefreshDebugLabel bottomAnchor];
    v46 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:5.0];
    v75[8] = v46;
    leadingAnchor6 = [(UILabel *)v4->_scoreDetailsDebugLabel leadingAnchor];
    leadingAnchor7 = [(DBSmartWidgetView *)v4 leadingAnchor];
    v32 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:5.0];
    v75[9] = v32;
    trailingAnchor6 = [(UILabel *)v4->_scoreDetailsDebugLabel trailingAnchor];
    trailingAnchor7 = [(DBSmartWidgetView *)v4 trailingAnchor];
    v35 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-5.0];
    v75[10] = v35;
    bottomAnchor2 = [(UILabel *)v4->_scoreDetailsDebugLabel bottomAnchor];
    bottomAnchor3 = [(DBSmartWidgetView *)v4 bottomAnchor];
    v38 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-5.0];
    v75[11] = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:12];
    [v60 activateConstraints:v39];

    v40 = objc_opt_self();
    v74[0] = v40;
    v41 = objc_opt_self();
    v74[1] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
    v43 = [(DBSmartWidgetView *)v4 registerForTraitChanges:v42 withTarget:v4 action:sel__updateViews];
  }

  return v4;
}

- (void)preparePrediction:(id)prediction withPredictedSize:(CGSize)size completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, size, *&size.height);
  }
}

- (void)setPrediction:(id)prediction
{
  predictionCopy = prediction;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetView *)self setPrediction:predictionCopy, v5];
  }

  [(DBSmartWidgetPrediction *)self->_prediction removeObserver:self];
  prediction = self->_prediction;
  self->_prediction = predictionCopy;
  v7 = predictionCopy;

  [(DBSmartWidgetView *)self _updateViews];
  [(DBSmartWidgetPrediction *)self->_prediction addObserver:self];
}

- (void)_updateViews
{
  smartWidgetDebugShowScore = [MEMORY[0x277CF89D0] smartWidgetDebugShowScore];
  valueBool = [smartWidgetDebugShowScore valueBool];

  v5 = valueBool ^ 1u;
  scoreDetailsDebugLabel = [(DBSmartWidgetView *)self scoreDetailsDebugLabel];
  [scoreDetailsDebugLabel setHidden:v5];

  nextRefreshDebugLabel = [(DBSmartWidgetView *)self nextRefreshDebugLabel];
  [nextRefreshDebugLabel setHidden:v5];

  validRangesDebugLabel = [(DBSmartWidgetView *)self validRangesDebugLabel];
  [validRangesDebugLabel setHidden:v5];

  if (v5)
  {
    scoreDetailsDebugLabel2 = [(DBSmartWidgetView *)self scoreDetailsDebugLabel];
    [scoreDetailsDebugLabel2 setText:&stru_285A57218];

    nextRefreshDebugLabel2 = [(DBSmartWidgetView *)self nextRefreshDebugLabel];
    [nextRefreshDebugLabel2 setText:&stru_285A57218];

    validRangesDebugLabel2 = [(DBSmartWidgetView *)self validRangesDebugLabel];
    [validRangesDebugLabel2 setText:&stru_285A57218];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    prediction = [(DBSmartWidgetView *)self prediction];
    score = [prediction score];
    prediction2 = [(DBSmartWidgetView *)self prediction];
    v13 = [v9 stringWithFormat:@"%ld(%ld)", score, objc_msgSend(prediction2, "tieBreakScore")];
    scoreDebugLabel = [(DBSmartWidgetView *)self scoreDebugLabel];
    [scoreDebugLabel setText:v13];

    prediction3 = [(DBSmartWidgetView *)self prediction];
    debugScoreText = [prediction3 debugScoreText];
    scoreDetailsDebugLabel3 = [(DBSmartWidgetView *)self scoreDetailsDebugLabel];
    [scoreDetailsDebugLabel3 setText:debugScoreText];

    engine = [(DBSmartWidgetView *)self engine];
    nextRefresh = [engine nextRefresh];
    v20 = [DBDateFormatter formattedTimeStamp:nextRefresh];
    nextRefreshDebugLabel3 = [(DBSmartWidgetView *)self nextRefreshDebugLabel];
    [nextRefreshDebugLabel3 setText:v20];

    prediction4 = [(DBSmartWidgetView *)self prediction];
    debugValidRangesText = [prediction4 debugValidRangesText];
    validRangesDebugLabel3 = [(DBSmartWidgetView *)self validRangesDebugLabel];
    [validRangesDebugLabel3 setText:debugValidRangesText];

    scoreDetailsDebugLabel4 = [(DBSmartWidgetView *)self scoreDetailsDebugLabel];
    [(DBSmartWidgetView *)self bringSubviewToFront:scoreDetailsDebugLabel4];

    scoreDebugLabel2 = [(DBSmartWidgetView *)self scoreDebugLabel];
    [(DBSmartWidgetView *)self bringSubviewToFront:scoreDebugLabel2];

    nextRefreshDebugLabel4 = [(DBSmartWidgetView *)self nextRefreshDebugLabel];
    [(DBSmartWidgetView *)self bringSubviewToFront:nextRefreshDebugLabel4];

    validRangesDebugLabel2 = [(DBSmartWidgetView *)self validRangesDebugLabel];
    [(DBSmartWidgetView *)self bringSubviewToFront:?];
  }
}

- (id)linearFocusItems
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)predictionDidUpdate:(id)update
{
  updateCopy = update;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetView *)updateCopy predictionDidUpdate:v5];
  }

  [(DBSmartWidgetView *)self _updateViews];
}

- (DBSmartWidgetEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (void)setPrediction:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_248146000, log, OS_LOG_TYPE_DEBUG, "Set prediction <%p>: %{public}@", &v3, 0x16u);
}

- (void)predictionDidUpdate:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "Prediction updated: %{public}@", &v2, 0xCu);
}

@end