@interface DBSmartWidgetView
+ (id)viewWithPrediction:(id)a3 predictedSize:(CGSize)a4;
- (DBSmartWidgetEngine)engine;
- (DBSmartWidgetView)initWithFrame:(CGRect)a3;
- (id)linearFocusItems;
- (void)_updateViews;
- (void)predictionDidUpdate:(id)a3;
- (void)preparePrediction:(id)a3 withPredictedSize:(CGSize)a4 completion:(id)a5;
- (void)setPrediction:(id)a3;
@end

@implementation DBSmartWidgetView

+ (id)viewWithPrediction:(id)a3 predictedSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [DBSmartWidgetLiveActivityView alloc];
    v9 = [(DBSmartWidgetLiveActivityView *)v8 initWithFrame:*MEMORY[0x277CBF3A0] predictedSize:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), width, height];
  }

  else
  {
    v10 = [DBSmartWidgetRangeBasedView alloc];
    v9 = [(DBSmartWidgetRangeBasedView *)v10 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  return v9;
}

- (DBSmartWidgetView)initWithFrame:(CGRect)a3
{
  v75[12] = *MEMORY[0x277D85DE8];
  v73.receiver = self;
  v73.super_class = DBSmartWidgetView;
  v3 = [(DBSmartWidgetView *)&v73 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(DBSmartWidgetView *)v3 layer];
    [v5 setAllowsGroupBlending:0];

    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
    scoreDetailsDebugLabel = v4->_scoreDetailsDebugLabel;
    v4->_scoreDetailsDebugLabel = v11;

    [(UILabel *)v4->_scoreDetailsDebugLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)v4->_scoreDetailsDebugLabel setTextColor:v13];

    v14 = [MEMORY[0x277D74300] boldSystemFontOfSize:5.0];
    [(UILabel *)v4->_scoreDetailsDebugLabel setFont:v14];

    [(UILabel *)v4->_scoreDetailsDebugLabel setNumberOfLines:0];
    v15 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
    [(UILabel *)v4->_scoreDetailsDebugLabel setBackgroundColor:v15];

    [(DBSmartWidgetView *)v4 addSubview:v4->_scoreDetailsDebugLabel];
    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    scoreDebugLabel = v4->_scoreDebugLabel;
    v4->_scoreDebugLabel = v16;

    [(UILabel *)v4->_scoreDebugLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)v4->_scoreDebugLabel setTextColor:v18];

    v19 = [MEMORY[0x277D74300] boldSystemFontOfSize:10.0];
    [(UILabel *)v4->_scoreDebugLabel setFont:v19];

    [(UILabel *)v4->_scoreDebugLabel setNumberOfLines:1];
    [(UILabel *)v4->_scoreDebugLabel setTextAlignment:2];
    v20 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
    [(UILabel *)v4->_scoreDebugLabel setBackgroundColor:v20];

    [(DBSmartWidgetView *)v4 addSubview:v4->_scoreDebugLabel];
    v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    nextRefreshDebugLabel = v4->_nextRefreshDebugLabel;
    v4->_nextRefreshDebugLabel = v21;

    [(UILabel *)v4->_nextRefreshDebugLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)v4->_nextRefreshDebugLabel setTextColor:v23];

    v24 = [MEMORY[0x277D74300] boldSystemFontOfSize:8.0];
    [(UILabel *)v4->_nextRefreshDebugLabel setFont:v24];

    [(UILabel *)v4->_nextRefreshDebugLabel setNumberOfLines:1];
    [(UILabel *)v4->_nextRefreshDebugLabel setTextAlignment:2];
    v25 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
    [(UILabel *)v4->_nextRefreshDebugLabel setBackgroundColor:v25];

    [(DBSmartWidgetView *)v4 addSubview:v4->_nextRefreshDebugLabel];
    v26 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    validRangesDebugLabel = v4->_validRangesDebugLabel;
    v4->_validRangesDebugLabel = v26;

    [(UILabel *)v4->_validRangesDebugLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)v4->_validRangesDebugLabel setTextColor:v28];

    v29 = [MEMORY[0x277D74300] boldSystemFontOfSize:8.0];
    [(UILabel *)v4->_validRangesDebugLabel setFont:v29];

    [(UILabel *)v4->_validRangesDebugLabel setNumberOfLines:0];
    v30 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
    [(UILabel *)v4->_validRangesDebugLabel setBackgroundColor:v30];

    [(DBSmartWidgetView *)v4 addSubview:v4->_validRangesDebugLabel];
    v60 = MEMORY[0x277CCAAD0];
    v72 = [(UILabel *)v4->_validRangesDebugLabel leadingAnchor];
    v71 = [(DBSmartWidgetView *)v4 leadingAnchor];
    v70 = [v72 constraintEqualToAnchor:v71 constant:5.0];
    v75[0] = v70;
    v69 = [(UILabel *)v4->_validRangesDebugLabel trailingAnchor];
    v68 = [(UILabel *)v4->_nextRefreshDebugLabel leadingAnchor];
    v67 = [v69 constraintEqualToAnchor:v68 constant:-5.0];
    v75[1] = v67;
    v66 = [(UILabel *)v4->_validRangesDebugLabel topAnchor];
    v65 = [(DBSmartWidgetView *)v4 topAnchor];
    v64 = [v66 constraintEqualToAnchor:v65 constant:5.0];
    v75[2] = v64;
    v63 = [(UILabel *)v4->_nextRefreshDebugLabel trailingAnchor];
    v62 = [(DBSmartWidgetView *)v4 trailingAnchor];
    v61 = [v63 constraintEqualToAnchor:v62 constant:-5.0];
    v75[3] = v61;
    v59 = [(UILabel *)v4->_nextRefreshDebugLabel topAnchor];
    v58 = [(DBSmartWidgetView *)v4 topAnchor];
    v57 = [v59 constraintEqualToAnchor:v58 constant:5.0];
    v75[4] = v57;
    v56 = [(UILabel *)v4->_nextRefreshDebugLabel widthAnchor];
    v55 = [v56 constraintEqualToConstant:75.0];
    v75[5] = v55;
    v54 = [(UILabel *)v4->_scoreDebugLabel leadingAnchor];
    v53 = [(UILabel *)v4->_nextRefreshDebugLabel leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v75[6] = v52;
    v51 = [(UILabel *)v4->_scoreDebugLabel trailingAnchor];
    v50 = [(UILabel *)v4->_nextRefreshDebugLabel trailingAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v75[7] = v49;
    v48 = [(UILabel *)v4->_scoreDebugLabel topAnchor];
    v47 = [(UILabel *)v4->_nextRefreshDebugLabel bottomAnchor];
    v46 = [v48 constraintEqualToAnchor:v47 constant:5.0];
    v75[8] = v46;
    v45 = [(UILabel *)v4->_scoreDetailsDebugLabel leadingAnchor];
    v31 = [(DBSmartWidgetView *)v4 leadingAnchor];
    v32 = [v45 constraintEqualToAnchor:v31 constant:5.0];
    v75[9] = v32;
    v33 = [(UILabel *)v4->_scoreDetailsDebugLabel trailingAnchor];
    v34 = [(DBSmartWidgetView *)v4 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:-5.0];
    v75[10] = v35;
    v36 = [(UILabel *)v4->_scoreDetailsDebugLabel bottomAnchor];
    v37 = [(DBSmartWidgetView *)v4 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-5.0];
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

- (void)preparePrediction:(id)a3 withPredictedSize:(CGSize)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0, a4, *&a4.height);
  }
}

- (void)setPrediction:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetView *)self setPrediction:v4, v5];
  }

  [(DBSmartWidgetPrediction *)self->_prediction removeObserver:self];
  prediction = self->_prediction;
  self->_prediction = v4;
  v7 = v4;

  [(DBSmartWidgetView *)self _updateViews];
  [(DBSmartWidgetPrediction *)self->_prediction addObserver:self];
}

- (void)_updateViews
{
  v3 = [MEMORY[0x277CF89D0] smartWidgetDebugShowScore];
  v4 = [v3 valueBool];

  v5 = v4 ^ 1u;
  v6 = [(DBSmartWidgetView *)self scoreDetailsDebugLabel];
  [v6 setHidden:v5];

  v7 = [(DBSmartWidgetView *)self nextRefreshDebugLabel];
  [v7 setHidden:v5];

  v8 = [(DBSmartWidgetView *)self validRangesDebugLabel];
  [v8 setHidden:v5];

  if (v5)
  {
    v28 = [(DBSmartWidgetView *)self scoreDetailsDebugLabel];
    [v28 setText:&stru_285A57218];

    v29 = [(DBSmartWidgetView *)self nextRefreshDebugLabel];
    [v29 setText:&stru_285A57218];

    v30 = [(DBSmartWidgetView *)self validRangesDebugLabel];
    [v30 setText:&stru_285A57218];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(DBSmartWidgetView *)self prediction];
    v11 = [v10 score];
    v12 = [(DBSmartWidgetView *)self prediction];
    v13 = [v9 stringWithFormat:@"%ld(%ld)", v11, objc_msgSend(v12, "tieBreakScore")];
    v14 = [(DBSmartWidgetView *)self scoreDebugLabel];
    [v14 setText:v13];

    v15 = [(DBSmartWidgetView *)self prediction];
    v16 = [v15 debugScoreText];
    v17 = [(DBSmartWidgetView *)self scoreDetailsDebugLabel];
    [v17 setText:v16];

    v18 = [(DBSmartWidgetView *)self engine];
    v19 = [v18 nextRefresh];
    v20 = [DBDateFormatter formattedTimeStamp:v19];
    v21 = [(DBSmartWidgetView *)self nextRefreshDebugLabel];
    [v21 setText:v20];

    v22 = [(DBSmartWidgetView *)self prediction];
    v23 = [v22 debugValidRangesText];
    v24 = [(DBSmartWidgetView *)self validRangesDebugLabel];
    [v24 setText:v23];

    v25 = [(DBSmartWidgetView *)self scoreDetailsDebugLabel];
    [(DBSmartWidgetView *)self bringSubviewToFront:v25];

    v26 = [(DBSmartWidgetView *)self scoreDebugLabel];
    [(DBSmartWidgetView *)self bringSubviewToFront:v26];

    v27 = [(DBSmartWidgetView *)self nextRefreshDebugLabel];
    [(DBSmartWidgetView *)self bringSubviewToFront:v27];

    v30 = [(DBSmartWidgetView *)self validRangesDebugLabel];
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

- (void)predictionDidUpdate:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetView *)v4 predictionDidUpdate:v5];
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