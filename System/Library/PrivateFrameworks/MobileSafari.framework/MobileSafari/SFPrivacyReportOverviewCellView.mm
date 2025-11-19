@interface SFPrivacyReportOverviewCellView
- (SFPrivacyReportGridItemDelegate)delegate;
- (SFPrivacyReportOverviewCellView)initWithFrame:(CGRect)a3;
- (void)_updateHairlinesIfNeeded;
- (void)_updateLayoutMargins;
- (void)setGridPosition:(unint64_t)a3;
- (void)setUsesInsetStyle:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SFPrivacyReportOverviewCellView

- (SFPrivacyReportOverviewCellView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SFPrivacyReportOverviewCellView;
  v3 = [(SFPrivacyReportOverviewCellView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFPrivacyReportOverviewCellView *)v3 setEdgesPreservingSuperviewLayoutMargins:10];
    [(SFPrivacyReportOverviewCellView *)v4 _updateLayoutMargins];
    v5 = [(SFPrivacyReportOverviewCellView *)v4 layer];
    [v5 setCornerCurve:*MEMORY[0x1E69796E8]];
    [(SFPrivacyReportOverviewCellView *)v4 setClipsToBounds:1];
    v6 = v4;
  }

  return v4;
}

- (void)willMoveToWindow:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFPrivacyReportOverviewCellView;
  [(SFPrivacyReportOverviewCellView *)&v4 willMoveToWindow:a3];
  [(SFPrivacyReportOverviewCellView *)self _updateHairlinesIfNeeded];
}

- (void)setUsesInsetStyle:(BOOL)a3
{
  if (self->_usesInsetStyle != a3)
  {
    v12 = v7;
    v13 = v3;
    self->_usesInsetStyle = a3;
    if (a3)
    {
      v10 = 8.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = [(SFPrivacyReportOverviewCellView *)self layer:v8];
    [v11 setCornerRadius:v10];

    [(SFPrivacyReportOverviewCellView *)self _updateHairlinesIfNeeded];

    [(SFPrivacyReportOverviewCellView *)self _updateLayoutMargins];
  }
}

- (void)_updateLayoutMargins
{
  [(SFPrivacyReportOverviewCellView *)self layoutMargins];

  [(SFPrivacyReportOverviewCellView *)self setLayoutMargins:?];
}

- (void)setGridPosition:(unint64_t)a3
{
  if (self->_gridPosition != a3)
  {
    self->_gridPosition = a3;
    [(SFPrivacyReportOverviewCellView *)self _updateHairlinesIfNeeded];
  }
}

- (void)_updateHairlinesIfNeeded
{
  v70[4] = *MEMORY[0x1E69E9840];
  usesInsetStyle = self->_usesInsetStyle;
  if (usesInsetStyle)
  {
    LODWORD(v4) = 0;
    v5 = 0;
  }

  else
  {
    v4 = self->_gridPosition & 1;
    v5 = (self->_gridPosition & 8) == 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__SFPrivacyReportOverviewCellView__updateHairlinesIfNeeded__block_invoke;
  aBlock[3] = &unk_1E721EBE0;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  topHairline = self->_topHairline;
  if (v4)
  {
    if (topHairline)
    {
      goto LABEL_9;
    }

    v8 = v6[2](v6);
    v9 = self->_topHairline;
    self->_topHairline = v8;

    v49 = MEMORY[0x1E696ACD8];
    v10 = [(UIView *)self->_topHairline topAnchor];
    v59 = [(SFPrivacyReportOverviewCellView *)self topAnchor];
    v56 = [v10 constraintEqualToAnchor:v59];
    v70[0] = v56;
    v53 = [(UIView *)self->_topHairline leadingAnchor];
    v51 = [(SFPrivacyReportOverviewCellView *)self leadingAnchor];
    v47 = [v53 constraintEqualToAnchor:v51];
    v70[1] = v47;
    v11 = [(UIView *)self->_topHairline trailingAnchor];
    v12 = [(SFPrivacyReportOverviewCellView *)self trailingAnchor];
    [v11 constraintEqualToAnchor:v12];
    v13 = v64 = v6;
    v70[2] = v13;
    v14 = [(UIView *)self->_topHairline heightAnchor];
    [v14 constraintEqualToConstant:_SFOnePixel()];
    v16 = v15 = v5;
    v70[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:4];
    [v49 activateConstraints:v17];

    v5 = v15;
    v6 = v64;
  }

  else
  {
    [(UIView *)topHairline removeFromSuperview];
    v10 = self->_topHairline;
    self->_topHairline = 0;
  }

LABEL_9:
  bottomHairline = self->_bottomHairline;
  if (usesInsetStyle)
  {
    [(UIView *)bottomHairline removeFromSuperview];
    v19 = self->_bottomHairline;
    self->_bottomHairline = 0;
  }

  else
  {
    if (bottomHairline)
    {
      goto LABEL_24;
    }

    v20 = v6[2](v6);
    v21 = self->_bottomHairline;
    self->_bottomHairline = v20;

    v48 = MEMORY[0x1E696ACD8];
    v19 = [(UIView *)self->_bottomHairline bottomAnchor];
    v60 = [(SFPrivacyReportOverviewCellView *)self bottomAnchor];
    v57 = [v19 constraintEqualToAnchor:?];
    v69[0] = v57;
    v22 = [(UIView *)self->_bottomHairline leadingAnchor];
    v52 = self->_gridPosition & 6;
    if (v52 == 4)
    {
      v50 = [(SFPrivacyReportOverviewCellView *)self layoutMarginsGuide];
      v23 = [v50 leadingAnchor];
    }

    else
    {
      v23 = [(SFPrivacyReportOverviewCellView *)self leadingAnchor];
      v50 = v23;
    }

    v65 = v6;
    v46 = v23;
    v24 = [v22 constraintEqualToAnchor:v23];
    v69[1] = v24;
    v25 = [(UIView *)self->_bottomHairline trailingAnchor];
    v26 = self->_gridPosition & 0xA;
    v62 = v5;
    v54 = v22;
    if (v26 == 8)
    {
      v45 = [(SFPrivacyReportOverviewCellView *)self layoutMarginsGuide];
      [v45 trailingAnchor];
    }

    else
    {
      [(SFPrivacyReportOverviewCellView *)self trailingAnchor];
    }
    v27 = ;
    v28 = [v25 constraintEqualToAnchor:v27];
    v69[2] = v28;
    v29 = [(UIView *)self->_bottomHairline heightAnchor];
    v30 = [v29 constraintEqualToConstant:_SFOnePixel()];
    v69[3] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:4];
    [v48 activateConstraints:v31];

    if (v26 == 8)
    {

      v27 = v45;
    }

    v5 = v62;
    if (v52 == 4)
    {
    }

    v6 = v65;
  }

LABEL_24:
  trailingHairline = self->_trailingHairline;
  if (!v5)
  {
    [(UIView *)trailingHairline removeFromSuperview];
    v35 = self->_trailingHairline;
    self->_trailingHairline = 0;
    goto LABEL_28;
  }

  if (!trailingHairline)
  {
    v33 = v6[2](v6);
    v34 = self->_trailingHairline;
    self->_trailingHairline = v33;

    v55 = MEMORY[0x1E696ACD8];
    v35 = [(UIView *)self->_trailingHairline topAnchor];
    v63 = [(SFPrivacyReportOverviewCellView *)self layoutMarginsGuide];
    v61 = [v63 topAnchor];
    v58 = [v35 constraintEqualToAnchor:v61];
    v68[0] = v58;
    v36 = [(UIView *)self->_trailingHairline bottomAnchor];
    v37 = [(SFPrivacyReportOverviewCellView *)self bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    v68[1] = v38;
    v39 = [(UIView *)self->_trailingHairline trailingAnchor];
    [(SFPrivacyReportOverviewCellView *)self trailingAnchor];
    v40 = v66 = v6;
    v41 = [v39 constraintEqualToAnchor:v40];
    v68[2] = v41;
    v42 = [(UIView *)self->_trailingHairline widthAnchor];
    v43 = [v42 constraintEqualToConstant:_SFOnePixel()];
    v68[3] = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
    [v55 activateConstraints:v44];

    v6 = v66;
LABEL_28:
  }
}

id __59__SFPrivacyReportOverviewCellView__updateHairlinesIfNeeded__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [v2 setBackgroundColor:v3];

  [*(a1 + 32) addSubview:v2];

  return v2;
}

- (SFPrivacyReportGridItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end