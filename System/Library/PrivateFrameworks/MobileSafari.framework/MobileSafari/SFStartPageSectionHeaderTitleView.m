@interface SFStartPageSectionHeaderTitleView
- (SFStartPageSectionHeaderTitleView)initWithCoder:(id)a3;
- (SFStartPageSectionHeaderTitleView)initWithFrame:(CGRect)a3;
- (void)configureUsingSection:(id)a3 visualStyleProvider:(id)a4;
- (void)createButtonIfNeeded;
- (void)dealloc;
- (void)setImage:(id)a3;
- (void)setMenu:(id)a3;
- (void)setTitle:(id)a3;
- (void)update;
@end

@implementation SFStartPageSectionHeaderTitleView

- (void)update
{
  v42[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [*(a1 + 408) menu];
    if (v2)
    {
      v3 = &OBJC_IVAR___SFStartPageSectionHeaderTitleView__button;
    }

    else
    {
      v3 = &OBJC_IVAR___SFStartPageSectionHeaderTitleView__label;
    }

    v4 = *(a1 + *v3);
    v5 = v4;

    [v5 setHidden:0];
    v6 = [*(a1 + 408) menu];
    if (v6)
    {
      v7 = &OBJC_IVAR___SFStartPageSectionHeaderTitleView__label;
    }

    else
    {
      v7 = &OBJC_IVAR___SFStartPageSectionHeaderTitleView__button;
    }

    v8 = *(a1 + *v7);

    [v8 setHidden:1];
    if (*(a1 + 424) != v5)
    {
      if (*(a1 + 416))
      {
        v9 = *(a1 + 416);
      }

      else
      {
        v9 = MEMORY[0x1E695E0F0];
      }

      [MEMORY[0x1E696ACD8] deactivateConstraints:v9];
      v10 = [MEMORY[0x1E696ACD8] safari_constraintsMatchingFrameOfView:v5 withFrameOfView:a1];
      v11 = *(a1 + 416);
      *(a1 + 416) = v10;

      [MEMORY[0x1E696ACD8] activateConstraints:*(a1 + 416)];
      objc_storeStrong((a1 + 424), v4);
    }

    v12 = *(a1 + 432);
    if (*(a1 + 448))
    {
      v13 = MEMORY[0x1E69DB648];
      v14 = &OBJC_IVAR___SFPinnableBanner__separableFromStatusBar;
      v15 = 0x1E695D000;
      if (v5 == v12)
      {
        if (*(a1 + 456))
        {
          v16 = objc_alloc_init(MEMORY[0x1E696AD40]);
          v17 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:*(a1 + 456)];
          [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_7() appendAttributedString:?];

          [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
          [OUTLINED_FUNCTION_0_7() appendAttributedString:?];

          [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:*(a1 + 448)];
          [OUTLINED_FUNCTION_0_7() appendAttributedString:?];

          v18 = *(a1 + 440);
          v19 = *MEMORY[0x1E69DB650];
          v41[0] = *MEMORY[0x1E69DB648];
          v41[1] = v19;
          v42[0] = v18;
          v20 = [MEMORY[0x1E69DC888] sf_alternateLabelColor];
          v42[1] = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
          [v16 addAttributes:v21 range:{0, objc_msgSend(v16, "length")}];

          v22 = [v16 copy];
        }

        else
        {
          v23 = objc_alloc(MEMORY[0x1E696AAB0]);
          v24 = *(a1 + 448);
          v25 = *(a1 + 440);
          v26 = *MEMORY[0x1E69DB650];
          v39[0] = *MEMORY[0x1E69DB648];
          v39[1] = v26;
          v40[0] = v25;
          v16 = [MEMORY[0x1E69DC888] sf_alternateLabelColor];
          v40[1] = v16;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
          v22 = [v23 initWithString:v24 attributes:v17];
        }

        v27 = v22;
        [*(a1 + 432) setAttributedText:v22];

        v14 = &OBJC_IVAR___SFPinnableBanner__separableFromStatusBar;
        v15 = 0x1E695D000uLL;
        v13 = MEMORY[0x1E69DB648];
      }

      v28 = *(a1 + 408);
      if (v5 == v28)
      {
        v29 = [v28 configuration];
        if (v29)
        {
          v30 = *(a1 + v14[832]);
          v37 = *v13;
          v38 = v30;
          v31 = [*(v15 + 3872) dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          if (UIAccessibilityButtonShapesEnabled())
          {
            v35 = *MEMORY[0x1E69DB758];
            v36 = &unk_1EFF74318;
            [*(v15 + 3872) dictionaryWithObjects:&v36 forKeys:&v35 count:1];
            v33 = v32 = v14;
            v34 = [v31 safari_dictionaryByMergingWithDictionary:v33];

            v14 = v32;
            v31 = v34;
          }

          [MEMORY[0x1E69DCAD8] configurationWithFont:*(a1 + v14[832]) scale:1];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_7() setPreferredSymbolConfigurationForImage:?];

          [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:*(a1 + 448) attributes:v31];
          [OUTLINED_FUNCTION_0_7() setAttributedTitle:?];

          [*(a1 + 408) setConfiguration:v29];
        }
      }
    }

    else
    {
      [v12 setText:0];
      [*(a1 + 408) setConfiguration:0];
    }
  }
}

- (SFStartPageSectionHeaderTitleView)initWithFrame:(CGRect)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SFStartPageSectionHeaderTitleView;
  v3 = [(SFStartPageSectionHeaderTitleView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(SFStartPageSectionHeaderTitleView *)v3 widthAnchor];
    v7 = [v6 constraintEqualToConstant:0.0];
    LODWORD(v8) = 1131413504;
    v9 = [v7 sf_withPriority:v8];
    v22[0] = v9;
    v10 = [(SFStartPageSectionHeaderTitleView *)v4 heightAnchor];
    v11 = [v10 constraintEqualToConstant:0.0];
    LODWORD(v12) = 1131413504;
    v13 = [v11 sf_withPriority:v12];
    v22[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    [v5 activateConstraints:v14];

    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v4->_label;
    v4->_label = v15;

    [(UILabel *)v4->_label setNumberOfLines:0];
    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_label setAdjustsFontForContentSizeCategory:1];
    LODWORD(v17) = 1144586240;
    [(UILabel *)v4->_label setContentCompressionResistancePriority:0 forAxis:v17];
    [(SFStartPageSectionHeaderTitleView *)v4 addSubview:v4->_label];
    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v4 selector:sel_buttonShapesEnabledStatusDidChange_ name:*MEMORY[0x1E69DD8A8] object:0];

    v19 = v4;
  }

  return v4;
}

- (SFStartPageSectionHeaderTitleView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFStartPageSectionHeaderTitleView;
  return [(SFStartPageSectionHeaderTitleView *)&v4 initWithCoder:a3];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DD8A8] object:0];

  v4.receiver = self;
  v4.super_class = SFStartPageSectionHeaderTitleView;
  [(SFStartPageSectionHeaderTitleView *)&v4 dealloc];
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [v6 copy];
    title = self->_title;
    self->_title = v4;

    [(SFStartPageSectionHeaderTitleView *)self update];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(SFStartPageSectionHeaderTitleView *)self update];
    v5 = v6;
  }
}

- (void)setMenu:(id)a3
{
  v4 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    [(SFStartPageSectionHeaderTitleView *)v4 setMenu:?];
  }
}

- (void)createButtonIfNeeded
{
  if (a1 && !a1[51])
  {
    v34 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v3 = [MEMORY[0x1E69DC888] sf_alternateLabelColor];
    [OUTLINED_FUNCTION_2_2(v3 v4];

    [v35 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.up.chevron.down"];
    [OUTLINED_FUNCTION_2_2(v11 v12];

    [v36 setImageColorTransformer:&__block_literal_global_70];
    v19 = [MEMORY[0x1E69DC888] clearColor];
    v27 = [OUTLINED_FUNCTION_2_2(v19 v20];
    [v27 setBackgroundColor:v1];

    [v37 setImagePadding:5.0];
    [v37 setImagePlacement:8];
    v28 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v37 primaryAction:0];
    OUTLINED_FUNCTION_3_1(v28, 408);
    [OUTLINED_FUNCTION_1_5() setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    [OUTLINED_FUNCTION_1_5() setShowsMenuAsPrimaryAction:1];
    [OUTLINED_FUNCTION_1_5() setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = OUTLINED_FUNCTION_1_5();
    LODWORD(v30) = 1144586240;
    [v29 setContentCompressionResistancePriority:0 forAxis:v30];
    [a1 addSubview:a1[51]];
  }
}

- (void)configureUsingSection:(id)a3 visualStyleProvider:(id)a4
{
  v24 = a3;
  v6 = a4;
  v14 = [OUTLINED_FUNCTION_2_2(v6 v7];
  OUTLINED_FUNCTION_3_1(v14, 448);
  v15 = [v25 icon];
  OUTLINED_FUNCTION_3_1(v15, 456);
  if ([v25 usesLargeTitle])
  {
    v16 = [a4 sectionHeaderLargeTitleFont];
    font = self->_font;
    self->_font = v16;
  }

  else
  {
    font = [MEMORY[0x1E69DCC28] extraProminentInsetGroupedHeaderConfiguration];
    v18 = [font textProperties];
    v19 = [v18 font];
    OUTLINED_FUNCTION_3_1(v19, 440);
  }

  v20 = [v25 titleMenu];
  if (v20)
  {
    [(SFStartPageSectionHeaderTitleView *)self createButtonIfNeeded];
    button = self->_button;
    v22 = v20;
  }

  else
  {
    button = self->_button;
    v22 = 0;
  }

  [(UIButton *)button setMenu:v22];
  [(SFStartPageSectionHeaderTitleView *)self update];
}

- (void)setMenu:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (a1)
  {
    [(SFStartPageSectionHeaderTitleView *)a2 createButtonIfNeeded];
    v3 = a2[51];
    v4 = a1;
  }

  else
  {
    v3 = a2[51];
    v4 = 0;
  }

  [v3 setMenu:v4];

  [(SFStartPageSectionHeaderTitleView *)a2 update];
}

@end