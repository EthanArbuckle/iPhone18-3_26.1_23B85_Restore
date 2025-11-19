@interface CAMPanoramaView
- (CAMPanoramaView)initWithPanoramaPreviewView:(id)a3 layoutStyle:(int64_t)a4;
- (CAMPanoramaViewDelegate)delegate;
- (CGPoint)_initialArrowCenter;
- (CGRect)_frameForArrowViewWithDirection:(int64_t)a3 offset:(double)a4;
- (CGRect)_lastLayoutBounds;
- (CGSize)_previewSizeForBounds:(CGRect)a3;
- (CGSize)panoramaCaptureSize;
- (_TtC8CameraUI20CAMDockKitController)dockKitController;
- (void)_cancelDelayedMoveInstructions;
- (void)_hideInstructionLabel;
- (void)_resetPaintingUIAnimated:(BOOL)a3;
- (void)_showArrowInstructions;
- (void)_showMoveDownInstructions;
- (void)_showMoveDownInstructionsAfterDelay;
- (void)_showMoveUpInstructions;
- (void)_showMoveUpInstructionsAfterDelay;
- (void)_showSpeedInstructions;
- (void)_updateInstructionLabelForInstruction:(int64_t)a3;
- (void)dealloc;
- (void)finishedProcessingPanorama;
- (void)layoutSubviews;
- (void)setDevicePosition:(int64_t)a3;
- (void)setDirection:(int64_t)a3 animated:(BOOL)a4;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setPanoramaCaptureSize:(CGSize)a3;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)startPainting;
- (void)startProcessingPanorama;
- (void)updatePaintingWithStatus:(id)a3;
@end

@implementation CAMPanoramaView

- (CAMPanoramaView)initWithPanoramaPreviewView:(id)a3 layoutStyle:(int64_t)a4
{
  v51[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v50.receiver = self;
  v50.super_class = CAMPanoramaView;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [(CAMPanoramaView *)&v50 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
  v13 = v12;
  if (v12)
  {
    v12->_layoutStyle = a4;
    p_panoramaCaptureSize = &v12->_panoramaCaptureSize;
    +[CAMPanoramaUtilities bufferSize];
    v13->_direction = 1;
    *&p_panoramaCaptureSize->width = v15;
    v13->_panoramaCaptureSize.height = v16;
    v17 = *(MEMORY[0x1E695F050] + 16);
    v13->__lastLayoutBounds.origin = *MEMORY[0x1E695F050];
    v13->__lastLayoutBounds.size = v17;
    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    stripBackgroundView = v13->__stripBackgroundView;
    v13->__stripBackgroundView = v18;

    v20 = v13->__stripBackgroundView;
    v21 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.300000012];
    [(UIView *)v20 setBackgroundColor:v21];

    [(CAMPanoramaView *)v13 addSubview:v13->__stripBackgroundView];
    v22 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    stripContainerView = v13->__stripContainerView;
    v13->__stripContainerView = v22;

    [(UIView *)v13->__stripBackgroundView addSubview:v13->__stripContainerView];
    v24 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    maskingView = v13->__maskingView;
    v13->__maskingView = v24;

    [(UIView *)v13->__maskingView setClipsToBounds:1];
    [(UIView *)v13->__stripContainerView addSubview:v13->__maskingView];
    objc_storeStrong(&v13->_previewView, a3);
    [(UIView *)v13->__maskingView addSubview:v7];
    v26 = [[CAMPanoramaLevelView alloc] initWithFrame:v8, v9, v10, v11];
    levelView = v13->__levelView;
    v13->__levelView = v26;

    v28 = [[CAMPanoramaArrowView alloc] initWithFrame:v8, v9, v10, v11];
    arrowView = v13->__arrowView;
    v13->__arrowView = v28;

    v30 = [(CAMPanoramaArrowView *)v13->__arrowView layer];
    [v30 setZPosition:100.0];
    [(UIView *)v13->__stripBackgroundView insertSubview:v13->__levelView belowSubview:v13->__stripContainerView];
    [(UIView *)v13->__stripBackgroundView addSubview:v13->__arrowView];
    v13->__previousSpeeds = malloc_type_malloc(0x20uLL, 0x100004000313F17uLL);
    v31 = [MEMORY[0x1E69DC938] currentDevice];
    v32 = [v31 model];

    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PANO_INSTRUCTIONAL_TEXT_%@", v32];
    v34 = CAMLocalizedFrameworkString(v33, &stru_1F1660A30);
    instructionString = v13->__instructionString;
    v13->__instructionString = v34;

    v36 = CAMLocalizedFrameworkString(@"PANO_SPEED_TEXT", &stru_1F1660A30);
    speedString = v13->__speedString;
    v13->__speedString = v36;

    v38 = CAMLocalizedFrameworkString(@"PANO_MOVE_UP_TEXT", &stru_1F1660A30);
    moveUpString = v13->__moveUpString;
    v13->__moveUpString = v38;

    v40 = CAMLocalizedFrameworkString(@"PANO_MOVE_DOWN_TEXT", &stru_1F1660A30);
    moveDownString = v13->__moveDownString;
    v13->__moveDownString = v40;

    v42 = CAMLocalizedFrameworkString(@"PANO_ARROW_TEXT", &stru_1F1660A30);
    arrowString = v13->__arrowString;
    v13->__arrowString = v42;

    v44 = [[CAMPanoramaLabel alloc] initWithFrame:v8, v9, v10, v11];
    instructionLabel = v13->__instructionLabel;
    v13->__instructionLabel = v44;

    [(CAMInstructionLabel *)v13->__instructionLabel setText:v13->__instructionString];
    [(CAMPanoramaView *)v13 addSubview:v13->__instructionLabel];
    v51[0] = objc_opt_class();
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    v47 = [(CAMPanoramaView *)v13 registerForTraitChanges:v46 withAction:sel_setNeedsLayout];

    [(CAMPanoramaView *)v13 setAccessibilityIdentifier:@"PanoramaView"];
    v48 = v13;
  }

  return v13;
}

- (void)dealloc
{
  previousSpeeds = self->__previousSpeeds;
  if (previousSpeeds)
  {
    free(previousSpeeds);
    self->__previousSpeeds = 0;
  }

  v4.receiver = self;
  v4.super_class = CAMPanoramaView;
  [(CAMPanoramaView *)&v4 dealloc];
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(CAMPanoramaView *)self setNeedsLayout];
  }
}

- (CGSize)_previewSizeForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [CAMPanoramaUtilities panoramaViewPreviewStripInsetsForLayoutStyle:[(CAMPanoramaView *)self layoutStyle:a3.origin.x]];
  v7 = width - v5 - v6;
  v10 = height - v8 - v9;
  v11 = v7;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v156.receiver = self;
  v156.super_class = CAMPanoramaView;
  [(CAMPanoramaView *)&v156 layoutSubviews];
  [(CAMPanoramaView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v9 / 10.6;
  v12 = [(CAMPanoramaView *)self _stripBackgroundView];
  [v12 _setCornerRadius:v11];

  v13 = [(CAMPanoramaView *)self _maskingView];
  [v13 _setCornerRadius:v11 * 0.7];

  [(CAMPanoramaView *)self _previewSizeForBounds:v4, v6, v8, v10];
  v126 = v14;
  v16 = v15;
  [CAMPanoramaUtilities singlePreviewFrameWidthForPreviewHeight:v15];
  v129 = v17;
  [(CAMPanoramaView *)self _lastLayoutBounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  rect2 = v24;
  v25 = [(CAMPanoramaView *)self _lastDevicePosition];
  v157.origin.x = v4;
  v157.origin.y = v6;
  v157.size.width = v8;
  v157.size.height = v10;
  v125 = 0;
  Width = CGRectGetWidth(v157);
  v132 = v16;
  UIRectCenteredIntegralRectScale();
  v138 = v27;
  v139 = v26;
  v136 = v29;
  v137 = v28;
  v140 = v6;
  v141 = v4;
  v158.origin.x = v4;
  v158.origin.y = v6;
  v142 = v8;
  v158.size.width = v8;
  v131 = v10;
  v158.size.height = v10;
  v165.origin.x = v19;
  v165.origin.y = v21;
  v165.size.width = v23;
  v165.size.height = rect2;
  if (!CGRectEqualToRect(v158, v165) || v25 != [(CAMPanoramaView *)self devicePosition])
  {
    v30 = [(CAMPanoramaView *)self _stripBackgroundView];
    UIRectGetCenter();
    v32 = v31;
    v34 = v33;
    if ([(CAMPanoramaView *)self devicePosition]== 1)
    {
      CGAffineTransformMakeScale(&v155, -1.0, 1.0);
    }

    else
    {
      v35 = *(MEMORY[0x1E695EFD0] + 16);
      *&v155.a = *MEMORY[0x1E695EFD0];
      *&v155.c = v35;
      *&v155.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    [v30 setTransform:&v155];
    [v30 setBounds:{0.0, 0.0, Width, v16 + 8.0}];
    [v30 setCenter:{v32, v34}];
    v36 = [(CAMPanoramaView *)self _stripContainerView];
    UIRectCenteredIntegralRectScale();
    UIRectGetCenter();
    v38 = v37;
    v40 = v39;
    [v36 setBounds:{0.0, 0.0, v126, v132, 0}];
    [v36 setCenter:{v38, v40}];
  }

  v41 = [(CAMPanoramaView *)self direction];
  v42 = [(CAMPanoramaView *)self _currentPaintingStatus];
  [v42 cropRectangle];
  rect2a = v43;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  +[CAMPanoramaUtilities bufferSize];
  v51 = v50;
  [(CAMPanoramaView *)self panoramaCaptureSize];
  v53 = v47 * (v51 / v52);
  v54 = [(CAMPanoramaView *)self _stripContainerView];
  [v54 bounds];
  x = v159.origin.x;
  y = v159.origin.y;
  v57 = v159.size.width;
  height = v159.size.height;
  v59 = CGRectGetWidth(v159);
  v160.origin.x = x;
  v160.origin.y = y;
  v160.size.width = v57;
  v160.size.height = height;
  v60 = CGRectGetHeight(v160);
  v161.origin.x = rect2a;
  v161.origin.y = v45;
  v161.size.width = v53;
  v161.size.height = v49;
  v61 = CGRectGetWidth(v161);
  if (v129 >= v61)
  {
    v62 = v129;
  }

  else
  {
    v62 = v61;
  }

  v63 = v59 - v129;
  if (v59 - v129 >= v59 - v62)
  {
    v63 = v59 - v62;
  }

  v64 = 0.0;
  if (v41 == 2)
  {
    v65 = v63;
  }

  else
  {
    v65 = 0.0;
  }

  v66 = [(CAMPanoramaView *)self _maskingView];
  v67 = MEMORY[0x1E69DD250];
  v149[0] = MEMORY[0x1E69E9820];
  v149[1] = 3221225472;
  v149[2] = __33__CAMPanoramaView_layoutSubviews__block_invoke;
  v149[3] = &unk_1E76F7768;
  v68 = v66;
  v150 = v68;
  v151 = v65;
  v152 = 0;
  v153 = v62;
  v154 = v60;
  [v67 performWithoutAnimation:v149];
  [v54 convertRect:v68 toView:{v65, 0.0, v62, v60}];
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  +[CAMPanoramaUtilities bufferSize];
  v79 = v132 * (v77 / v78);
  if (v41 == 2)
  {
    v162.origin.x = v70;
    v162.origin.y = v72;
    v162.size.width = v74;
    v162.size.height = v76;
    v64 = CGRectGetWidth(v162) - v79;
  }

  v80 = [(CAMPanoramaView *)self previewView];
  v81 = MEMORY[0x1E69DD250];
  v143[0] = MEMORY[0x1E69E9820];
  v143[1] = 3221225472;
  v143[2] = __33__CAMPanoramaView_layoutSubviews__block_invoke_2;
  v143[3] = &unk_1E76F7768;
  v144 = v80;
  v145 = v64;
  v146 = 0;
  v147 = v79;
  v148 = v132;
  v82 = v80;
  [v81 performWithoutAnimation:v143];
  [v68 bounds];
  [(CAMPanoramaView *)self _frameForArrowViewWithDirection:v41 offset:v83];
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v133 = v90;
  UIRectGetCenter();
  v130 = v91;
  v92 = [(CAMPanoramaView *)self _levelView];
  [v92 intrinsicContentSize];
  v94 = v93;
  if (v41 == 1)
  {
    v95 = v85 + 20.0;
  }

  else
  {
    v95 = 10.0;
  }

  if (v41 == 1)
  {
    v96 = 10.0;
  }

  else
  {
    v96 = v142 - v85 + -20.0;
  }

  v97 = Width - v95 - v96;
  UIRectCenteredIntegralRectScale();
  UIRectGetCenter();
  v99 = v98;
  v101 = v95 * 0.5 + v100 - v96 * 0.5;
  [v92 setBounds:{0.0, 0.0, v97, v94, 0}];
  [v92 setCenter:{v101, v99}];
  if ([(CAMPanoramaView *)self isPainting])
  {
    [(CAMPanoramaView *)self _currentAverageSpeed];
    if (v102 < 1.0)
    {
      [(CAMPanoramaView *)self _initialArrowCenter];
      v104 = v103;
      v105 = v130 - v103;
      v106 = [(CAMPanoramaView *)self _stripBackgroundView];
      [v106 frame];
      [(CAMPanoramaView *)self convertRect:v106 toView:?];
      v107 = CGRectGetHeight(v163);
      v135 = [(CAMPanoramaView *)self _isCurrentlyShowingMoveInstructions];
      WeakRetained = objc_loadWeakRetained(&self->_dockKitController);
      v109 = [WeakRetained isConnectedAndTracking];

      if (v109)
      {
        v110 = objc_loadWeakRetained(&self->_dockKitController);
        [v110 panoramaDriftingY:v105 / v107];
      }

      else
      {
        v124 = vabdd_f64(v130, v104);
        if (v124 <= v107 * 0.25)
        {
          if (v124 <= v107 * 0.125)
          {
            if (v135)
            {
              [(CAMPanoramaView *)self _cancelDelayedMoveInstructions];
              [(CAMPanoramaView *)self _hideInstructionLabel];
            }
          }

          else if (v105 <= 0.0)
          {
            [(CAMPanoramaView *)self _showMoveDownInstructionsAfterDelay];
          }

          else
          {
            [(CAMPanoramaView *)self _showMoveUpInstructionsAfterDelay];
          }
        }

        else if (v105 <= 0.0)
        {
          [(CAMPanoramaView *)self _showMoveDownInstructions];
        }

        else
        {
          [(CAMPanoramaView *)self _showMoveUpInstructions];
        }
      }
    }
  }

  v111 = [(CAMPanoramaView *)self _arrowView];
  CAMViewSetBoundsAndCenterForFrame(v111, v85, v87, v133, v89);

  v112 = [(CAMPanoramaView *)self _instructionLabel];
  [v112 sizeThatFits:{v142, v131}];
  v114 = v113;
  v116 = v115;
  v117 = *MEMORY[0x1E695EFF8];
  v118 = *(MEMORY[0x1E695EFF8] + 8);
  UIRectCenteredIntegralRectScale();
  v120 = v119;
  UIRectGetCenter();
  v122 = v121;
  v164.origin.y = v138;
  v164.origin.x = v139;
  v164.size.height = v136;
  v164.size.width = v137;
  v123 = CGRectGetMaxY(v164) + v120 * 0.5 + 10.0;
  [v112 setBounds:{v117, v118, v114, v116, 0}];
  [v112 setCenter:{v122, v123}];
  [(CAMPanoramaView *)self set_lastDevicePosition:[(CAMPanoramaView *)self devicePosition]];
  [(CAMPanoramaView *)self _setLastLayoutBounds:v141, v140, v142, v131];
}

- (CGRect)_frameForArrowViewWithDirection:(int64_t)a3 offset:(double)a4
{
  v6 = [(CAMPanoramaView *)self _stripBackgroundView];
  v7 = [(CAMPanoramaView *)self _arrowView];
  [v7 intrinsicContentSize];
  [v6 bounds];
  UIRectCenteredIntegralRectScale();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  UIRectGetCenter();
  if (a3 == 1 || a3 == 2)
  {
    [v6 bounds];
    CGRectGetWidth(v28);
  }

  UIRoundToViewScale();
  [(CAMPanoramaView *)self bounds];
  [(CAMPanoramaView *)self _previewSizeForBounds:?];
  [(CAMPanoramaView *)self _filteredNormalizedBaselineOffset];
  CEKClamp();
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  CGRectGetMidY(v29);
  UIRectCenteredAboutPointScale();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v22.receiver = self;
  v22.super_class = CAMPanoramaView;
  v5 = *&a3->c;
  v19 = *&a3->a;
  v20 = v5;
  v21 = *&a3->tx;
  [(CAMPanoramaView *)&v22 setTransform:&v19];
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  CGAffineTransformMakeRotation(&v18, 3.14159265);
  UIIntegralTransform();
  v6 = [(CAMPanoramaView *)self _instructionLabel];
  v7 = MEMORY[0x1E69DD250];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v8 = *&a3->c;
  v12 = *&a3->a;
  v13 = v8;
  v14 = *&a3->tx;
  v15 = v19;
  v10[2] = __32__CAMPanoramaView_setTransform___block_invoke;
  v10[3] = &unk_1E76FCA90;
  v16 = v20;
  v17 = v21;
  v11 = v6;
  v9 = v6;
  [v7 performWithoutAnimation:v10];
}

uint64_t __32__CAMPanoramaView_setTransform___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  *&t1.a = *(a1 + 40);
  *&t1.c = v2;
  *&t1.tx = *(a1 + 72);
  v3 = *(a1 + 104);
  *&v10.a = *(a1 + 88);
  *&v10.c = v3;
  *&v10.tx = *(a1 + 120);
  v4 = CGAffineTransformEqualToTransform(&t1, &v10);
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = *(a1 + 104);
    *&t1.a = *(a1 + 88);
    *&t1.c = v6;
    v7 = *(a1 + 120);
  }

  else
  {
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&t1.a = *MEMORY[0x1E695EFD0];
    *&t1.c = v8;
    v7 = *(MEMORY[0x1E695EFD0] + 32);
  }

  *&t1.tx = v7;
  return [v5 setTransform:&t1];
}

- (void)setPanoramaCaptureSize:(CGSize)a3
{
  if (self->_panoramaCaptureSize.width != a3.width || self->_panoramaCaptureSize.height != a3.height)
  {
    self->_panoramaCaptureSize = a3;
    [(CAMPanoramaView *)self setNeedsLayout];
  }
}

- (void)startPainting
{
  [(CAMPanoramaView *)self _resetPaintingUIAnimated:0];
  [(CAMPanoramaView *)self layoutIfNeeded];
  [(CAMPanoramaView *)self _setPainting:1];
  [(CAMPanoramaView *)self _setArrowUpdateFrame:0];
  v3 = [(CAMPanoramaView *)self _arrowView];
  [v3 center];
  [(CAMPanoramaView *)self _setInitialArrowCenter:?];
  [(CAMPanoramaView *)self _showArrowInstructions];
  [(CAMPanoramaView *)self _hideArrowInstructionsAfterDelay];
  [(CAMPanoramaView *)self _setCurrentlyShowingMoveInstructions:0];
  [(CAMPanoramaView *)self _setCurrentlyMovingTooFast:0];
  [(CAMPanoramaView *)self setNeedsLayout];
}

- (void)updatePaintingWithStatus:(id)a3
{
  v22 = a3;
  [v22 speed];
  previousSpeeds = self->__previousSpeeds;
  v6 = previousSpeeds + 1;
  v7 = 0.0;
  v8 = 3;
  do
  {
    v9 = *v6;
    *(v6 - 1) = *v6;
    v7 = v7 + v9;
    ++v6;
    --v8;
  }

  while (v8);
  previousSpeeds[3] = v4;
  v10 = (v4 + v7) * 0.25;
  WeakRetained = objc_loadWeakRetained(&self->_dockKitController);
  v12 = [WeakRetained isConnectedAndTracking];

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_dockKitController);
    [v13 panoramaPaintingUpdatedWithCurrentSpeed:v10 maxAllowedSpeed:1.0];
  }

  [(CAMPanoramaView *)self _currentAverageSpeed];
  v15 = v10 < 1.0;
  if (v14 >= 1.0)
  {
    v15 = 1;
  }

  if ((v12 | v15))
  {
    v16 = v10 >= 1.0;
    if (v14 < 1.0)
    {
      v16 = 1;
    }

    if (((v12 | v16) & 1) == 0)
    {
      [(CAMPanoramaView *)self _setCurrentlyMovingTooFast:0];
      [(CAMPanoramaView *)self _hideSpeedInstructionsAfterDelay];
    }
  }

  else
  {
    [(CAMPanoramaView *)self _setCurrentlyMovingTooFast:1];
    [(CAMPanoramaView *)self _showSpeedInstructions];
  }

  v17 = [(CAMPanoramaView *)self _arrowUpdateFrame];
  if (v17 == 5)
  {
    [(CAMPanoramaView *)self _setArrowUpdateFrame:0];
    v18 = [(CAMPanoramaView *)self _arrowView];
    [v18 animateWithNormalizedSpeed:v10 duration:0.166666667];
  }

  else
  {
    [(CAMPanoramaView *)self _setArrowUpdateFrame:v17 + 1];
  }

  [(CAMPanoramaView *)self _setCurrentAverageSpeed:v10];
  [(CAMPanoramaView *)self _setCurrentPaintingStatus:v22];
  [v22 normalizedBaselineOffset];
  v20 = v19;
  [(CAMPanoramaView *)self _filteredNormalizedBaselineOffset];
  [(CAMPanoramaView *)self _setFilteredNormalizedBaselineOffset:v21 * 0.8 + v20 * 0.2];
  [(CAMPanoramaView *)self setNeedsLayout];
}

- (void)setDirection:(int64_t)a3 animated:(BOOL)a4
{
  v39[3] = *MEMORY[0x1E69E9840];
  if (self->_direction != a3)
  {
    v4 = a4;
    self->_direction = a3;
    if (a3 == 2)
    {
      v7 = 3.14159265;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = [(CAMPanoramaView *)self _arrowView];
    v9 = [v8 layer];
    if (v4)
    {
      if (a3 == 2)
      {
        v10 = 10.0;
      }

      else
      {
        v10 = -10.0;
      }

      v11 = [(CAMPanoramaView *)self _stripContainerView];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __41__CAMPanoramaView_setDirection_animated___block_invoke;
      v37[3] = &unk_1E76F77B0;
      v37[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v37 options:0 animations:0.15 completion:0.0];
      v12 = MEMORY[0x1E69DD250];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __41__CAMPanoramaView_setDirection_animated___block_invoke_2;
      v35[3] = &unk_1E76F77B0;
      v36 = v11;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __41__CAMPanoramaView_setDirection_animated___block_invoke_3;
      v31[3] = &unk_1E76FCD30;
      v33 = a3;
      v34 = 6;
      v31[4] = self;
      v32 = v36;
      v29 = v36;
      [v12 animateWithDuration:6 delay:v35 options:v31 animations:0.3 completion:0.0];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __41__CAMPanoramaView_setDirection_animated___block_invoke_7;
      v30[3] = &unk_1E76F7A38;
      v30[4] = self;
      v30[5] = a3;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v30 options:0 animations:0.4 completion:0.0];
      v13 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale"];
      [v13 setKeyTimes:&unk_1F16C9B60];
      [v13 setValues:&unk_1F16C9B78];
      v14 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.translation.x"];
      [v14 setKeyTimes:&unk_1F16C9B90];
      v39[0] = &unk_1F16C8C98;
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v39[1] = v15;
      v39[2] = &unk_1F16C8C98;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
      [v14 setValues:v16];

      v17 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation.y"];
      v18 = [v9 presentationLayer];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v9;
      }

      v21 = v20;

      v22 = [v21 valueForKeyPath:@"transform.rotation.y"];
      [v17 setFromValue:v22];

      v23 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
      [v17 setToValue:v23];

      [v17 setDuration:0.4];
      v24 = *MEMORY[0x1E69797E0];
      [v17 setFillMode:*MEMORY[0x1E69797E0]];
      v25 = [MEMORY[0x1E6979308] animation];
      v38[0] = v17;
      v38[1] = v13;
      v38[2] = v14;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
      [v25 setAnimations:v26];

      [v25 setDuration:0.4];
      [v9 convertTime:0 fromLayer:CACurrentMediaTime()];
      [v25 setBeginTime:v27 + 0.2];
      [v25 setFillMode:v24];
      [v9 addAnimation:v25 forKey:@"panoramaDirectionChange"];
    }

    else
    {
      [(CAMPanoramaView *)self setNeedsLayout];
    }

    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    [v9 setValue:v28 forKeyPath:@"transform.rotation.y"];
  }
}

void __41__CAMPanoramaView_setDirection_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _levelView];
  [v1 setAlpha:0.0];
}

void __41__CAMPanoramaView_setDirection_animated___block_invoke_3(uint64_t a1, int a2)
{
  [*(a1 + 32) setNeedsLayout];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __41__CAMPanoramaView_setDirection_animated___block_invoke_4;
  v16[3] = &unk_1E76F77B0;
  v16[4] = *(a1 + 32);
  [MEMORY[0x1E69DD250] performWithoutAnimation:v16];
  if (a2)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 panoramaViewDidRequestSynchronizedDirectionChange:*(a1 + 32) toDirection:*(a1 + 48)];
    v5 = MEMORY[0x1E69DD250];
    v6 = *(a1 + 56);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__CAMPanoramaView_setDirection_animated___block_invoke_5;
    v14[3] = &unk_1E76F77B0;
    v15 = *(a1 + 40);
    [v5 animateWithDuration:v6 delay:v14 options:0 animations:0.3 completion:0.0];
    v7 = MEMORY[0x1E69DD250];
    v8 = *(a1 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__CAMPanoramaView_setDirection_animated___block_invoke_6;
    v11[3] = &unk_1E76F7960;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    [v7 animateWithDuration:v8 delay:v11 options:0 animations:0.15 completion:0.15];
  }
}

void __41__CAMPanoramaView_setDirection_animated___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = [*(a1 + 40) _levelView];
  [v2 setAlpha:1.0];
}

void __41__CAMPanoramaView_setDirection_animated___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) _stripContainerView];
  [v2 bounds];
  [CAMPanoramaUtilities singlePreviewFrameWidthForPreviewHeight:v3];
  v5 = v4;

  [*(a1 + 32) _frameForArrowViewWithDirection:*(a1 + 40) offset:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [*(a1 + 32) _arrowView];
  CAMViewSetBoundsAndCenterForFrame(v14, v7, v9, v11, v13);
}

- (void)setDevicePosition:(int64_t)a3
{
  if (self->_devicePosition != a3)
  {
    self->_devicePosition = a3;
    [(CAMPanoramaView *)self setNeedsLayout];
  }
}

- (void)startProcessingPanorama
{
  v3 = [(CAMPanoramaView *)self _instructionLabel];
  v4 = [(CAMPanoramaView *)self _arrowView];
  v5 = [(CAMPanoramaView *)self _levelView];
  v6 = MEMORY[0x1E69DD250];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__CAMPanoramaView_startProcessingPanorama__block_invoke;
  v10[3] = &unk_1E76F7938;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v7 = v5;
  v8 = v4;
  v9 = v3;
  [v6 animateWithDuration:2 delay:v10 options:0 animations:0.1 completion:0.0];
}

uint64_t __42__CAMPanoramaView_startProcessingPanorama__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) setAlpha:0.0];
  v2 = *(a1 + 48);

  return [v2 setAlpha:0.0];
}

- (void)finishedProcessingPanorama
{
  if (![(CAMPanoramaView *)self isPainting])
  {

    [(CAMPanoramaView *)self _resetPaintingUIAnimated:1];
  }
}

- (void)_resetPaintingUIAnimated:(BOOL)a3
{
  v3 = a3;
  [(CAMPanoramaView *)self _updateInstructionLabelForInstruction:1];
  [(CAMPanoramaView *)self _setCurrentlyShowingMoveInstructions:0];
  [(CAMPanoramaView *)self _setCurrentlyMovingTooFast:0];
  [(CAMPanoramaView *)self _setCurrentAverageSpeed:0.0];
  [(CAMPanoramaView *)self _setArrowUpdateFrame:0];
  v5 = [(CAMPanoramaView *)self _instructionLabel];
  v6 = [(CAMPanoramaView *)self _arrowView];
  v7 = [(CAMPanoramaView *)self _levelView];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__CAMPanoramaView__resetPaintingUIAnimated___block_invoke;
  aBlock[3] = &unk_1E76F7938;
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v11 = _Block_copy(aBlock);
  [v9 reset];
  if (v3)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v11 options:0 animations:0.1 completion:0.0];
  }

  else
  {
    v11[2](v11);
  }

  [(CAMPanoramaView *)self _setCurrentPaintingStatus:0];
  [(CAMPanoramaView *)self _setFilteredNormalizedBaselineOffset:0.0];
  [(CAMPanoramaView *)self setNeedsLayout];
}

uint64_t __44__CAMPanoramaView__resetPaintingUIAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 40) setAlpha:1.0];
  v2 = *(a1 + 48);

  return [v2 setAlpha:1.0];
}

- (void)_hideInstructionLabel
{
  if (![(CAMPanoramaView *)self _isCurrentlyMovingTooFast])
  {
    v3 = [(CAMPanoramaView *)self _instructionLabel];
    v4 = MEMORY[0x1E69DD250];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__CAMPanoramaView__hideInstructionLabel__block_invoke;
    v6[3] = &unk_1E76F77B0;
    v7 = v3;
    v5 = v3;
    [v4 animateWithDuration:2 delay:v6 options:0 animations:0.5 completion:0.0];
  }
}

- (void)_updateInstructionLabelForInstruction:(int64_t)a3
{
  v5 = [(CAMPanoramaView *)self _instructionLabel];
  v6 = &stru_1F1660A30;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v7 = [(CAMPanoramaView *)self _instructionString];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_13;
      }

      v7 = [(CAMPanoramaView *)self _arrowString];
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        v7 = [(CAMPanoramaView *)self _speedString];
        break;
      case 4:
        v7 = [(CAMPanoramaView *)self _moveUpString];
        break;
      case 5:
        v7 = [(CAMPanoramaView *)self _moveDownString];
        break;
      default:
        goto LABEL_13;
    }
  }

  v6 = v7;
LABEL_13:
  [v5 setText:v6];
  [v5 alpha];
  if (v8 < 1.0)
  {
    v9 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__CAMPanoramaView__updateInstructionLabelForInstruction___block_invoke;
    v11[3] = &unk_1E76F77B0;
    v12 = v5;
    [v9 animateWithDuration:2 delay:v11 options:0 animations:0.5 completion:0.0];
  }

  v10 = [(CAMPanoramaView *)self delegate];
  [v10 panoramaView:self didUpdateInstruction:a3];
}

- (void)_showMoveDownInstructions
{
  if ([(CAMPanoramaView *)self isPainting])
  {
    [(CAMPanoramaView *)self _updateInstructionLabelForInstruction:5];

    [(CAMPanoramaView *)self _setCurrentlyShowingMoveInstructions:1];
  }
}

- (void)_showMoveUpInstructions
{
  if ([(CAMPanoramaView *)self isPainting])
  {
    [(CAMPanoramaView *)self _updateInstructionLabelForInstruction:4];

    [(CAMPanoramaView *)self _setCurrentlyShowingMoveInstructions:1];
  }
}

- (void)_cancelDelayedMoveInstructions
{
  [CAMPanoramaView cancelPreviousPerformRequestsWithTarget:self selector:sel__showMoveDownInstructions object:0];

  [CAMPanoramaView cancelPreviousPerformRequestsWithTarget:self selector:sel__showMoveUpInstructions object:0];
}

- (void)_showMoveDownInstructionsAfterDelay
{
  if (![(CAMPanoramaView *)self _isCurrentlyShowingMoveInstructions])
  {
    [(CAMPanoramaView *)self _cancelDelayedMoveInstructions];

    [(CAMPanoramaView *)self performSelector:sel__showMoveDownInstructions withObject:0 afterDelay:2.0];
  }
}

- (void)_showMoveUpInstructionsAfterDelay
{
  if (![(CAMPanoramaView *)self _isCurrentlyShowingMoveInstructions])
  {
    [(CAMPanoramaView *)self _cancelDelayedMoveInstructions];

    [(CAMPanoramaView *)self performSelector:sel__showMoveUpInstructions withObject:0 afterDelay:2.0];
  }
}

- (void)_showSpeedInstructions
{
  [CAMPanoramaView cancelPreviousPerformRequestsWithTarget:self selector:sel__hideInstructionLabel object:0];
  [(CAMPanoramaView *)self _cancelDelayedMoveInstructions];
  [(CAMPanoramaView *)self _updateInstructionLabelForInstruction:3];

  [(CAMPanoramaView *)self _setCurrentlyShowingMoveInstructions:0];
}

- (void)_showArrowInstructions
{
  [(CAMPanoramaView *)self _updateInstructionLabelForInstruction:2];

  [(CAMPanoramaView *)self setNeedsLayout];
}

- (CAMPanoramaViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)panoramaCaptureSize
{
  width = self->_panoramaCaptureSize.width;
  height = self->_panoramaCaptureSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_TtC8CameraUI20CAMDockKitController)dockKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_dockKitController);

  return WeakRetained;
}

- (CGPoint)_initialArrowCenter
{
  x = self->__initialArrowCenter.x;
  y = self->__initialArrowCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)_lastLayoutBounds
{
  x = self->__lastLayoutBounds.origin.x;
  y = self->__lastLayoutBounds.origin.y;
  width = self->__lastLayoutBounds.size.width;
  height = self->__lastLayoutBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end