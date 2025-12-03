@interface CSLatencyCardResultView
- (CSLatencyCardResultView)initWithLatency:(unint64_t)latency;
- (double)_progressBarOffset;
- (id)_infoText;
- (void)_updateView;
- (void)layoutSubviews;
- (void)updateWithLatency:(unint64_t)latency;
@end

@implementation CSLatencyCardResultView

- (CSLatencyCardResultView)initWithLatency:(unint64_t)latency
{
  v130.receiver = self;
  v130.super_class = CSLatencyCardResultView;
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(CSLatencyCardResultView *)&v130 initWithFrame:*MEMORY[0x277CBF3A0], v5, v6, v7];
  if (v8)
  {
    v9 = [[CSSegmentedValue alloc] initWithThresholds:&unk_2857A1780 value:latency];
    segmentedLatency = v8->_segmentedLatency;
    v8->_segmentedLatency = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = objc_alloc_init(MEMORY[0x277D756C0]);
    latencyLabel = v8->_latencyLabel;
    v8->_latencyLabel = v12;

    v14 = v8->_latencyLabel;
    labelColor = [MEMORY[0x277D75340] labelColor];
    [(UILabel *)v14 setTextColor:labelColor];

    v16 = v8->_latencyLabel;
    v115 = *MEMORY[0x277D76948];
    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
    [(UILabel *)v16 setFont:v17];

    v18 = [[CSPaddingView alloc] initWithWrappedView:v8->_latencyLabel];
    [(CSPaddingView *)v18 setHorizontalPadding:8.0];
    systemBlueColor = [MEMORY[0x277D75340] systemBlueColor];
    [(CSPaddingView *)v18 setBackgroundColor:systemBlueColor];

    layer = [(CSPaddingView *)v18 layer];
    [layer setCornerRadius:12.0];

    [(CSPaddingView *)v18 setClipsToBounds:1];
    v21 = objc_alloc_init(CSTipTriangleView);
    v22 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
    [v22 addSubview:v18];
    [v22 addSubview:v21];
    [(CSPaddingView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CSTipTriangleView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    centerXAnchor = [(CSTipTriangleView *)v21 centerXAnchor];
    leadingAnchor = [v22 leadingAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:leadingAnchor];
    latencyTipTriangleCenterXOffset = v8->_latencyTipTriangleCenterXOffset;
    v8->_latencyTipTriangleCenterXOffset = v25;

    centerXAnchor2 = [(CSPaddingView *)v18 centerXAnchor];
    centerXAnchor3 = [(CSTipTriangleView *)v21 centerXAnchor];
    v123 = [centerXAnchor2 constraintEqualToAnchor:centerXAnchor3];

    LODWORD(v29) = 1132068864;
    [v123 setPriority:v29];
    leadingAnchor2 = [(CSPaddingView *)v18 leadingAnchor];
    leadingAnchor3 = [v22 leadingAnchor];
    v32 = [leadingAnchor2 constraintGreaterThanOrEqualToAnchor:leadingAnchor3];

    LODWORD(v33) = 1144750080;
    [v32 setPriority:v33];
    trailingAnchor = [(CSPaddingView *)v18 trailingAnchor];
    trailingAnchor2 = [v22 trailingAnchor];
    v36 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];

    LODWORD(v37) = 1144750080;
    [v36 setPriority:v37];
    heightAnchor = [(CSPaddingView *)v18 heightAnchor];
    v113 = [heightAnchor constraintEqualToConstant:25.0];
    v129[0] = v113;
    topAnchor = [(CSPaddingView *)v18 topAnchor];
    topAnchor2 = [v22 topAnchor];
    v107 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v129[1] = v107;
    leadingAnchor4 = [(CSPaddingView *)v18 leadingAnchor];
    leadingAnchor5 = [(CSTipTriangleView *)v21 leadingAnchor];
    v101 = [leadingAnchor4 constraintLessThanOrEqualToAnchor:leadingAnchor5 constant:-17.0];
    v129[2] = v101;
    trailingAnchor3 = [(CSPaddingView *)v18 trailingAnchor];
    trailingAnchor4 = [(CSTipTriangleView *)v21 trailingAnchor];
    v95 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:17.0];
    v129[3] = v95;
    v129[4] = v123;
    v117 = v36;
    v118 = v32;
    v129[5] = v32;
    v129[6] = v36;
    v129[7] = v8->_latencyTipTriangleCenterXOffset;
    heightAnchor2 = [(CSTipTriangleView *)v21 heightAnchor];
    v92 = [heightAnchor2 constraintEqualToConstant:5.0];
    v129[8] = v92;
    widthAnchor = [(CSTipTriangleView *)v21 widthAnchor];
    v90 = [widthAnchor constraintEqualToConstant:10.0];
    v129[9] = v90;
    topAnchor3 = [(CSTipTriangleView *)v21 topAnchor];
    v120 = v18;
    bottomAnchor = [(CSPaddingView *)v18 bottomAnchor];
    v40 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v129[10] = v40;
    v119 = v21;
    bottomAnchor2 = [(CSTipTriangleView *)v21 bottomAnchor];
    v124 = v22;
    bottomAnchor3 = [v22 bottomAnchor];
    v43 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v129[11] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:12];
    [v11 addObjectsFromArray:v44];

    v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([(CSSegmentedValue *)v8->_segmentedLatency numberOfSegments])
    {
      v46 = 0;
      do
      {
        v47 = [objc_alloc(MEMORY[0x277D758F8]) initWithProgressViewStyle:1];
        quaternarySystemFillColor = [MEMORY[0x277D75340] quaternarySystemFillColor];
        [v47 setTrackTintColor:quaternarySystemFillColor];

        systemBlueColor2 = [MEMORY[0x277D75340] systemBlueColor];
        [v47 setProgressTintColor:systemBlueColor2];

        [(NSArray *)v45 addObject:v47];
        widthAnchor2 = [v47 widthAnchor];
        v51 = [widthAnchor2 constraintEqualToConstant:74.0];
        [v11 addObject:v51];

        heightAnchor3 = [v47 heightAnchor];
        v53 = [heightAnchor3 constraintEqualToConstant:6.0];
        [v11 addObject:v53];

        ++v46;
      }

      while ([(CSSegmentedValue *)v8->_segmentedLatency numberOfSegments]> v46);
    }

    progressBars = v8->_progressBars;
    v8->_progressBars = v45;
    v114 = v45;

    v122 = [objc_alloc(MEMORY[0x277D75A70]) initWithArrangedSubviews:v114];
    [v122 setAxis:0];
    [v122 setSpacing:2.0];
    [v122 setTranslatesAutoresizingMaskIntoConstraints:0];
    v55 = objc_alloc_init(MEMORY[0x277D756C0]);
    infoLabel = v8->_infoLabel;
    v8->_infoLabel = v55;

    v57 = v8->_infoLabel;
    v58 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76970] weight:*MEMORY[0x277D743F8]];
    [(UILabel *)v57 setFont:v58];

    v59 = v8->_infoLabel;
    labelColor2 = [MEMORY[0x277D75340] labelColor];
    [(UILabel *)v59 setTextColor:labelColor2];

    [(UILabel *)v8->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_infoLabel setText:@"No Text here yet!"];
    [(CSLatencyCardResultView *)v8 addSubview:v8->_infoLabel];
    v61 = objc_alloc_init(MEMORY[0x277D756C0]);
    v62 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v63 = [v62 localizedStringForKey:@"MEASUREMENT_LOWER_BOUND" value:&stru_285797E10 table:0];
    [v61 setText:v63];

    v64 = [MEMORY[0x277D74300] preferredFontForTextStyle:v115];
    [v61 setFont:v64];

    secondaryLabelColor = [MEMORY[0x277D75340] secondaryLabelColor];
    v112 = v61;
    [v61 setTextColor:secondaryLabelColor];

    v66 = objc_alloc_init(MEMORY[0x277D756C0]);
    v67 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v68 = [v67 localizedStringForKey:@"MEASUREMENT_UPPER_BOUND" value:&stru_285797E10 table:0];
    [v66 setText:v68];

    v69 = [MEMORY[0x277D74300] preferredFontForTextStyle:v115];
    [v66 setFont:v69];

    secondaryLabelColor2 = [MEMORY[0x277D75340] secondaryLabelColor];
    v110 = v66;
    [v66 setTextColor:secondaryLabelColor2];

    v71 = objc_alloc(MEMORY[0x277D75A70]);
    v128[0] = v61;
    v128[1] = v66;
    v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:2];
    v73 = [v71 initWithArrangedSubviews:v72];

    [v73 setAxis:0];
    v74 = v73;
    v116 = v73;
    [v73 setDistribution:3];
    v75 = objc_alloc(MEMORY[0x277D75A70]);
    v127[0] = v124;
    v127[1] = v122;
    v127[2] = v74;
    v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:3];
    v77 = [v75 initWithArrangedSubviews:v76];

    [v77 setSpacing:8.0];
    [v77 setAlignment:0];
    v78 = v77;
    v108 = v77;
    [v77 setAxis:1];
    v79 = objc_alloc(MEMORY[0x277D75A70]);
    v126[0] = v78;
    v126[1] = v8->_infoLabel;
    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:2];
    v81 = [v79 initWithArrangedSubviews:v80];

    [v81 setAxis:1];
    [v81 setSpacing:17.0];
    [v81 setAlignment:3];
    [v81 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CSLatencyCardResultView *)v8 addSubview:v81];
    [MEMORY[0x277CCAAD0] activateConstraints:v11];
    v94 = MEMORY[0x277CCAAD0];
    topAnchor4 = [v81 topAnchor];
    topAnchor5 = [(CSLatencyCardResultView *)v8 topAnchor];
    v102 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v125[0] = v102;
    leadingAnchor6 = [v81 leadingAnchor];
    leadingAnchor7 = [(CSLatencyCardResultView *)v8 leadingAnchor];
    v96 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v125[1] = v96;
    trailingAnchor5 = [v81 trailingAnchor];
    trailingAnchor6 = [(CSLatencyCardResultView *)v8 trailingAnchor];
    v84 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v125[2] = v84;
    bottomAnchor4 = [v81 bottomAnchor];
    bottomAnchor5 = [(CSLatencyCardResultView *)v8 bottomAnchor];
    v87 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v125[3] = v87;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:4];
    [v94 activateConstraints:v88];

    [(CSLatencyCardResultView *)v8 _updateView];
  }

  return v8;
}

- (void)updateWithLatency:(unint64_t)latency
{
  [(CSSegmentedValue *)self->_segmentedLatency setValue:latency];

  [(CSLatencyCardResultView *)self _updateView];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSLatencyCardResultView;
  [(CSLatencyCardResultView *)&v3 layoutSubviews];
  [(NSArray *)self->_progressBars enumerateObjectsUsingBlock:&__block_literal_global_1];
}

void __41__CSLatencyCardResultView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 subviews];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_42];
}

void __41__CSLatencyCardResultView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 layer];
  [v3 setMasksToBounds:1];

  v4 = [v2 layer];
  [v4 setCornerRadius:3.0];

  v5 = *MEMORY[0x277CDA128];
  v6 = [v2 layer];

  [v6 setCornerCurve:v5];
}

- (void)_updateView
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v5 = [v4 localizedStringForKey:@"MEASUREMENT_DELAY" value:&stru_285797E10 table:0];
  v16 = [v3 stringWithFormat:v5, -[CSSegmentedValue value](self->_segmentedLatency, "value")];

  [(UILabel *)self->_latencyLabel setText:v16];
  latencyTipTriangleCenterXOffset = self->_latencyTipTriangleCenterXOffset;
  [(CSLatencyCardResultView *)self _progressBarOffset];
  [(NSLayoutConstraint *)latencyTipTriangleCenterXOffset setConstant:?];
  segment = [(CSSegmentedValue *)self->_segmentedLatency segment];
  if (segment)
  {
    for (i = 0; i != segment; ++i)
    {
      v9 = [(NSArray *)self->_progressBars objectAtIndexedSubscript:i];
      LODWORD(v10) = 1.0;
      [v9 setProgress:v10];
    }
  }

  v11 = [(NSArray *)self->_progressBars objectAtIndexedSubscript:segment];
  [(CSSegmentedValue *)self->_segmentedLatency progressWithinSegment];
  *&v12 = v12;
  v13 = v11;
  while (1)
  {
    [v13 setProgress:v12];

    if (++segment >= [(CSSegmentedValue *)self->_segmentedLatency numberOfSegments])
    {
      break;
    }

    v13 = [(NSArray *)self->_progressBars objectAtIndexedSubscript:segment];
    v11 = v13;
    v12 = 0.0;
  }

  infoLabel = self->_infoLabel;
  _infoText = [(CSLatencyCardResultView *)self _infoText];
  [(UILabel *)infoLabel setText:_infoText];
}

- (id)_infoText
{
  segment = [(CSSegmentedValue *)self->_segmentedLatency segment];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v4 = v3;
  v5 = @"MEASUREMENT_POOR_RESULT";
  if (segment == 1)
  {
    v5 = @"MEASUREMENT_MEDIUM_RESULT";
  }

  if (segment)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"MEASUREMENT_GOOD_RESULT";
  }

  v7 = [v3 localizedStringForKey:v6 value:&stru_285797E10 table:0];

  return v7;
}

- (double)_progressBarOffset
{
  v3 = [(CSSegmentedValue *)self->_segmentedLatency segment]* 76.0;
  [(CSSegmentedValue *)self->_segmentedLatency progressWithinSegment];
  return v3 + v4 * 74.0;
}

@end