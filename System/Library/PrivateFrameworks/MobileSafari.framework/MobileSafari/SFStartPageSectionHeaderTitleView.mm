@interface SFStartPageSectionHeaderTitleView
- (SFStartPageSectionHeaderTitleView)initWithCoder:(id)coder;
- (SFStartPageSectionHeaderTitleView)initWithFrame:(CGRect)frame;
- (void)configureUsingSection:(id)section visualStyleProvider:(id)provider;
- (void)createButtonIfNeeded;
- (void)dealloc;
- (void)setImage:(id)image;
- (void)setMenu:(id)menu;
- (void)setTitle:(id)title;
- (void)update;
@end

@implementation SFStartPageSectionHeaderTitleView

- (void)update
{
  v42[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    menu = [*(self + 408) menu];
    if (menu)
    {
      v3 = &OBJC_IVAR___SFStartPageSectionHeaderTitleView__button;
    }

    else
    {
      v3 = &OBJC_IVAR___SFStartPageSectionHeaderTitleView__label;
    }

    v4 = *(self + *v3);
    v5 = v4;

    [v5 setHidden:0];
    menu2 = [*(self + 408) menu];
    if (menu2)
    {
      v7 = &OBJC_IVAR___SFStartPageSectionHeaderTitleView__label;
    }

    else
    {
      v7 = &OBJC_IVAR___SFStartPageSectionHeaderTitleView__button;
    }

    v8 = *(self + *v7);

    [v8 setHidden:1];
    if (*(self + 424) != v5)
    {
      if (*(self + 416))
      {
        v9 = *(self + 416);
      }

      else
      {
        v9 = MEMORY[0x1E695E0F0];
      }

      [MEMORY[0x1E696ACD8] deactivateConstraints:v9];
      v10 = [MEMORY[0x1E696ACD8] safari_constraintsMatchingFrameOfView:v5 withFrameOfView:self];
      v11 = *(self + 416);
      *(self + 416) = v10;

      [MEMORY[0x1E696ACD8] activateConstraints:*(self + 416)];
      objc_storeStrong((self + 424), v4);
    }

    v12 = *(self + 432);
    if (*(self + 448))
    {
      v13 = MEMORY[0x1E69DB648];
      v14 = &OBJC_IVAR___SFPinnableBanner__separableFromStatusBar;
      v15 = 0x1E695D000;
      if (v5 == v12)
      {
        if (*(self + 456))
        {
          sf_alternateLabelColor2 = objc_alloc_init(MEMORY[0x1E696AD40]);
          v17 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:*(self + 456)];
          [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_7() appendAttributedString:?];

          [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
          [OUTLINED_FUNCTION_0_7() appendAttributedString:?];

          [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:*(self + 448)];
          [OUTLINED_FUNCTION_0_7() appendAttributedString:?];

          v18 = *(self + 440);
          v19 = *MEMORY[0x1E69DB650];
          v41[0] = *MEMORY[0x1E69DB648];
          v41[1] = v19;
          v42[0] = v18;
          sf_alternateLabelColor = [MEMORY[0x1E69DC888] sf_alternateLabelColor];
          v42[1] = sf_alternateLabelColor;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
          [sf_alternateLabelColor2 addAttributes:v21 range:{0, objc_msgSend(sf_alternateLabelColor2, "length")}];

          v22 = [sf_alternateLabelColor2 copy];
        }

        else
        {
          v23 = objc_alloc(MEMORY[0x1E696AAB0]);
          v24 = *(self + 448);
          v25 = *(self + 440);
          v26 = *MEMORY[0x1E69DB650];
          v39[0] = *MEMORY[0x1E69DB648];
          v39[1] = v26;
          v40[0] = v25;
          sf_alternateLabelColor2 = [MEMORY[0x1E69DC888] sf_alternateLabelColor];
          v40[1] = sf_alternateLabelColor2;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
          v22 = [v23 initWithString:v24 attributes:v17];
        }

        v27 = v22;
        [*(self + 432) setAttributedText:v22];

        v14 = &OBJC_IVAR___SFPinnableBanner__separableFromStatusBar;
        v15 = 0x1E695D000uLL;
        v13 = MEMORY[0x1E69DB648];
      }

      v28 = *(self + 408);
      if (v5 == v28)
      {
        configuration = [v28 configuration];
        if (configuration)
        {
          v30 = *(self + v14[832]);
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

          [MEMORY[0x1E69DCAD8] configurationWithFont:*(self + v14[832]) scale:1];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_7() setPreferredSymbolConfigurationForImage:?];

          [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:*(self + 448) attributes:v31];
          [OUTLINED_FUNCTION_0_7() setAttributedTitle:?];

          [*(self + 408) setConfiguration:configuration];
        }
      }
    }

    else
    {
      [v12 setText:0];
      [*(self + 408) setConfiguration:0];
    }
  }
}

- (SFStartPageSectionHeaderTitleView)initWithFrame:(CGRect)frame
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SFStartPageSectionHeaderTitleView;
  v3 = [(SFStartPageSectionHeaderTitleView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696ACD8];
    widthAnchor = [(SFStartPageSectionHeaderTitleView *)v3 widthAnchor];
    v7 = [widthAnchor constraintEqualToConstant:0.0];
    LODWORD(v8) = 1131413504;
    v9 = [v7 sf_withPriority:v8];
    v22[0] = v9;
    heightAnchor = [(SFStartPageSectionHeaderTitleView *)v4 heightAnchor];
    v11 = [heightAnchor constraintEqualToConstant:0.0];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_buttonShapesEnabledStatusDidChange_ name:*MEMORY[0x1E69DD8A8] object:0];

    v19 = v4;
  }

  return v4;
}

- (SFStartPageSectionHeaderTitleView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFStartPageSectionHeaderTitleView;
  return [(SFStartPageSectionHeaderTitleView *)&v4 initWithCoder:coder];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD8A8] object:0];

  v4.receiver = self;
  v4.super_class = SFStartPageSectionHeaderTitleView;
  [(SFStartPageSectionHeaderTitleView *)&v4 dealloc];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    [(SFStartPageSectionHeaderTitleView *)self update];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(SFStartPageSectionHeaderTitleView *)self update];
    imageCopy = v6;
  }
}

- (void)setMenu:(id)menu
{
  menuCopy = menu;
  if ((WBSIsEqual() & 1) == 0)
  {
    [(SFStartPageSectionHeaderTitleView *)menuCopy setMenu:?];
  }
}

- (void)createButtonIfNeeded
{
  if (self && !self[51])
  {
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    sf_alternateLabelColor = [MEMORY[0x1E69DC888] sf_alternateLabelColor];
    [OUTLINED_FUNCTION_2_2(sf_alternateLabelColor v4];

    [v35 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.up.chevron.down"];
    [OUTLINED_FUNCTION_2_2(v11 v12];

    [v36 setImageColorTransformer:&__block_literal_global_70];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v27 = [OUTLINED_FUNCTION_2_2(clearColor v20];
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
    [self addSubview:self[51]];
  }
}

- (void)configureUsingSection:(id)section visualStyleProvider:(id)provider
{
  sectionCopy = section;
  providerCopy = provider;
  v14 = [OUTLINED_FUNCTION_2_2(providerCopy v7];
  OUTLINED_FUNCTION_3_1(v14, 448);
  icon = [v25 icon];
  OUTLINED_FUNCTION_3_1(icon, 456);
  if ([v25 usesLargeTitle])
  {
    sectionHeaderLargeTitleFont = [provider sectionHeaderLargeTitleFont];
    font = self->_font;
    self->_font = sectionHeaderLargeTitleFont;
  }

  else
  {
    font = [MEMORY[0x1E69DCC28] extraProminentInsetGroupedHeaderConfiguration];
    textProperties = [font textProperties];
    font = [textProperties font];
    OUTLINED_FUNCTION_3_1(font, 440);
  }

  titleMenu = [v25 titleMenu];
  if (titleMenu)
  {
    [(SFStartPageSectionHeaderTitleView *)self createButtonIfNeeded];
    button = self->_button;
    v22 = titleMenu;
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