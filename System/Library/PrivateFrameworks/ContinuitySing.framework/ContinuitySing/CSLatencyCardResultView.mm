@interface CSLatencyCardResultView
- (CSLatencyCardResultView)initWithLatency:(unint64_t)a3;
- (double)_progressBarOffset;
- (id)_infoText;
- (void)_updateView;
- (void)layoutSubviews;
- (void)updateWithLatency:(unint64_t)a3;
@end

@implementation CSLatencyCardResultView

- (CSLatencyCardResultView)initWithLatency:(unint64_t)a3
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
    v9 = [[CSSegmentedValue alloc] initWithThresholds:&unk_2857A1780 value:a3];
    segmentedLatency = v8->_segmentedLatency;
    v8->_segmentedLatency = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = objc_alloc_init(MEMORY[0x277D756C0]);
    latencyLabel = v8->_latencyLabel;
    v8->_latencyLabel = v12;

    v14 = v8->_latencyLabel;
    v15 = [MEMORY[0x277D75340] labelColor];
    [(UILabel *)v14 setTextColor:v15];

    v16 = v8->_latencyLabel;
    v115 = *MEMORY[0x277D76948];
    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
    [(UILabel *)v16 setFont:v17];

    v18 = [[CSPaddingView alloc] initWithWrappedView:v8->_latencyLabel];
    [(CSPaddingView *)v18 setHorizontalPadding:8.0];
    v19 = [MEMORY[0x277D75340] systemBlueColor];
    [(CSPaddingView *)v18 setBackgroundColor:v19];

    v20 = [(CSPaddingView *)v18 layer];
    [v20 setCornerRadius:12.0];

    [(CSPaddingView *)v18 setClipsToBounds:1];
    v21 = objc_alloc_init(CSTipTriangleView);
    v22 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
    [v22 addSubview:v18];
    [v22 addSubview:v21];
    [(CSPaddingView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CSTipTriangleView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(CSTipTriangleView *)v21 centerXAnchor];
    v24 = [v22 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    latencyTipTriangleCenterXOffset = v8->_latencyTipTriangleCenterXOffset;
    v8->_latencyTipTriangleCenterXOffset = v25;

    v27 = [(CSPaddingView *)v18 centerXAnchor];
    v28 = [(CSTipTriangleView *)v21 centerXAnchor];
    v123 = [v27 constraintEqualToAnchor:v28];

    LODWORD(v29) = 1132068864;
    [v123 setPriority:v29];
    v30 = [(CSPaddingView *)v18 leadingAnchor];
    v31 = [v22 leadingAnchor];
    v32 = [v30 constraintGreaterThanOrEqualToAnchor:v31];

    LODWORD(v33) = 1144750080;
    [v32 setPriority:v33];
    v34 = [(CSPaddingView *)v18 trailingAnchor];
    v35 = [v22 trailingAnchor];
    v36 = [v34 constraintLessThanOrEqualToAnchor:v35];

    LODWORD(v37) = 1144750080;
    [v36 setPriority:v37];
    v121 = [(CSPaddingView *)v18 heightAnchor];
    v113 = [v121 constraintEqualToConstant:25.0];
    v129[0] = v113;
    v111 = [(CSPaddingView *)v18 topAnchor];
    v109 = [v22 topAnchor];
    v107 = [v111 constraintEqualToAnchor:v109];
    v129[1] = v107;
    v105 = [(CSPaddingView *)v18 leadingAnchor];
    v103 = [(CSTipTriangleView *)v21 leadingAnchor];
    v101 = [v105 constraintLessThanOrEqualToAnchor:v103 constant:-17.0];
    v129[2] = v101;
    v99 = [(CSPaddingView *)v18 trailingAnchor];
    v97 = [(CSTipTriangleView *)v21 trailingAnchor];
    v95 = [v99 constraintGreaterThanOrEqualToAnchor:v97 constant:17.0];
    v129[3] = v95;
    v129[4] = v123;
    v117 = v36;
    v118 = v32;
    v129[5] = v32;
    v129[6] = v36;
    v129[7] = v8->_latencyTipTriangleCenterXOffset;
    v93 = [(CSTipTriangleView *)v21 heightAnchor];
    v92 = [v93 constraintEqualToConstant:5.0];
    v129[8] = v92;
    v91 = [(CSTipTriangleView *)v21 widthAnchor];
    v90 = [v91 constraintEqualToConstant:10.0];
    v129[9] = v90;
    v38 = [(CSTipTriangleView *)v21 topAnchor];
    v120 = v18;
    v39 = [(CSPaddingView *)v18 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v129[10] = v40;
    v119 = v21;
    v41 = [(CSTipTriangleView *)v21 bottomAnchor];
    v124 = v22;
    v42 = [v22 bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
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
        v48 = [MEMORY[0x277D75340] quaternarySystemFillColor];
        [v47 setTrackTintColor:v48];

        v49 = [MEMORY[0x277D75340] systemBlueColor];
        [v47 setProgressTintColor:v49];

        [(NSArray *)v45 addObject:v47];
        v50 = [v47 widthAnchor];
        v51 = [v50 constraintEqualToConstant:74.0];
        [v11 addObject:v51];

        v52 = [v47 heightAnchor];
        v53 = [v52 constraintEqualToConstant:6.0];
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
    v60 = [MEMORY[0x277D75340] labelColor];
    [(UILabel *)v59 setTextColor:v60];

    [(UILabel *)v8->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_infoLabel setText:@"No Text here yet!"];
    [(CSLatencyCardResultView *)v8 addSubview:v8->_infoLabel];
    v61 = objc_alloc_init(MEMORY[0x277D756C0]);
    v62 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v63 = [v62 localizedStringForKey:@"MEASUREMENT_LOWER_BOUND" value:&stru_285797E10 table:0];
    [v61 setText:v63];

    v64 = [MEMORY[0x277D74300] preferredFontForTextStyle:v115];
    [v61 setFont:v64];

    v65 = [MEMORY[0x277D75340] secondaryLabelColor];
    v112 = v61;
    [v61 setTextColor:v65];

    v66 = objc_alloc_init(MEMORY[0x277D756C0]);
    v67 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v68 = [v67 localizedStringForKey:@"MEASUREMENT_UPPER_BOUND" value:&stru_285797E10 table:0];
    [v66 setText:v68];

    v69 = [MEMORY[0x277D74300] preferredFontForTextStyle:v115];
    [v66 setFont:v69];

    v70 = [MEMORY[0x277D75340] secondaryLabelColor];
    v110 = v66;
    [v66 setTextColor:v70];

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
    v106 = [v81 topAnchor];
    v104 = [(CSLatencyCardResultView *)v8 topAnchor];
    v102 = [v106 constraintEqualToAnchor:v104];
    v125[0] = v102;
    v100 = [v81 leadingAnchor];
    v98 = [(CSLatencyCardResultView *)v8 leadingAnchor];
    v96 = [v100 constraintEqualToAnchor:v98];
    v125[1] = v96;
    v82 = [v81 trailingAnchor];
    v83 = [(CSLatencyCardResultView *)v8 trailingAnchor];
    v84 = [v82 constraintEqualToAnchor:v83];
    v125[2] = v84;
    v85 = [v81 bottomAnchor];
    v86 = [(CSLatencyCardResultView *)v8 bottomAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];
    v125[3] = v87;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:4];
    [v94 activateConstraints:v88];

    [(CSLatencyCardResultView *)v8 _updateView];
  }

  return v8;
}

- (void)updateWithLatency:(unint64_t)a3
{
  [(CSSegmentedValue *)self->_segmentedLatency setValue:a3];

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
  v7 = [(CSSegmentedValue *)self->_segmentedLatency segment];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = [(NSArray *)self->_progressBars objectAtIndexedSubscript:i];
      LODWORD(v10) = 1.0;
      [v9 setProgress:v10];
    }
  }

  v11 = [(NSArray *)self->_progressBars objectAtIndexedSubscript:v7];
  [(CSSegmentedValue *)self->_segmentedLatency progressWithinSegment];
  *&v12 = v12;
  v13 = v11;
  while (1)
  {
    [v13 setProgress:v12];

    if (++v7 >= [(CSSegmentedValue *)self->_segmentedLatency numberOfSegments])
    {
      break;
    }

    v13 = [(NSArray *)self->_progressBars objectAtIndexedSubscript:v7];
    v11 = v13;
    v12 = 0.0;
  }

  infoLabel = self->_infoLabel;
  v15 = [(CSLatencyCardResultView *)self _infoText];
  [(UILabel *)infoLabel setText:v15];
}

- (id)_infoText
{
  v2 = [(CSSegmentedValue *)self->_segmentedLatency segment];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v4 = v3;
  v5 = @"MEASUREMENT_POOR_RESULT";
  if (v2 == 1)
  {
    v5 = @"MEASUREMENT_MEDIUM_RESULT";
  }

  if (v2)
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