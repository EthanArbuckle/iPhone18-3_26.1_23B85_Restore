@interface DMCEnrollmentLinkLabelView
- (CGSize)sizeThatFits:(CGSize)a3;
- (DMCEnrollmentLinkLabelView)initWithIcon:(id)a3 message:(id)a4 linkMessage:(id)a5 linkHandler:(id)a6;
- (id)_textFont;
- (void)_populateTextLabelWithMessage:(id)a3 linkMessage:(id)a4;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation DMCEnrollmentLinkLabelView

- (DMCEnrollmentLinkLabelView)initWithIcon:(id)a3 message:(id)a4 linkMessage:(id)a5 linkHandler:(id)a6
{
  v34[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v33.receiver = self;
  v33.super_class = DMCEnrollmentLinkLabelView;
  v14 = [(DMCEnrollmentLinkLabelView *)&v33 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v14)
  {
    if (v10)
    {
      v15 = objc_alloc(MEMORY[0x277D755E8]);
      v16 = [MEMORY[0x277D755B8] _systemImageNamed:v10];
      v17 = [v15 initWithImage:v16];
      imageView = v14->_imageView;
      v14->_imageView = v17;

      [(UIImageView *)v14->_imageView setContentMode:2];
      [(DMCEnrollmentLinkLabelView *)v14 addSubview:v14->_imageView];
    }

    v14->_enabled = 1;
    v19 = [v11 copy];
    message = v14->_message;
    v14->_message = v19;

    v21 = [v12 copy];
    linkMessage = v14->_linkMessage;
    v14->_linkMessage = v21;

    v23 = objc_opt_new();
    textLabel = v14->_textLabel;
    v14->_textLabel = v23;

    [(UILabel *)v14->_textLabel setNumberOfLines:0];
    [(DMCEnrollmentLinkLabelView *)v14 _populateTextLabelWithMessage:v11 linkMessage:v12];
    [(DMCEnrollmentLinkLabelView *)v14 addSubview:v14->_textLabel];
    v25 = _Block_copy(v13);
    linkHandler = v14->_linkHandler;
    v14->_linkHandler = v25;

    [(DMCEnrollmentLinkLabelView *)v14 setUserInteractionEnabled:v13 != 0];
    objc_initWeak(&location, v14);
    v34[0] = objc_opt_class();
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __75__DMCEnrollmentLinkLabelView_initWithIcon_message_linkMessage_linkHandler___block_invoke;
    v30[3] = &unk_278EE7C08;
    objc_copyWeak(&v31, &location);
    v28 = [(DMCEnrollmentLinkLabelView *)v14 registerForTraitChanges:v27 withHandler:v30];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __75__DMCEnrollmentLinkLabelView_initWithIcon_message_linkMessage_linkHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained message];
  v2 = [WeakRetained linkMessage];
  [WeakRetained _populateTextLabelWithMessage:v1 linkMessage:v2];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = DMCEnrollmentLinkLabelView;
  [(DMCEnrollmentLinkLabelView *)&v15 layoutSubviews];
  [(DMCEnrollmentLinkLabelView *)self bounds];
  v3 = (CGRectGetWidth(v16) + -35.0) * 0.5;
  v4 = [(DMCEnrollmentLinkLabelView *)self imageView];
  [v4 setFrame:{v3, 0.0, 35.0, 35.0}];

  v5 = [(DMCEnrollmentLinkLabelView *)self textLabel];
  [(DMCEnrollmentLinkLabelView *)self bounds];
  [v5 sizeThatFits:{v6, v7}];
  v9 = v8;
  v11 = v10;

  [(DMCEnrollmentLinkLabelView *)self bounds];
  v12 = (CGRectGetWidth(v17) - v9) * 0.5;
  [(DMCEnrollmentLinkLabelView *)self bounds];
  v13 = CGRectGetHeight(v18) - v11 + -5.0;
  v14 = [(DMCEnrollmentLinkLabelView *)self textLabel];
  [v14 setFrame:{v12, v13, v9, v11}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(DMCEnrollmentLinkLabelView *)self textLabel];
  [v6 sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = [(DMCEnrollmentLinkLabelView *)self imageView];

  if (v11)
  {
    v12 = v10 + 50.0;
  }

  else
  {
    v12 = v10;
  }

  v13 = v8;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  [(DMCEnrollmentLinkLabelView *)self setAlpha:a3, a4, 1.0];
  v5 = [(DMCEnrollmentLinkLabelView *)self linkHandler];

  if (v5)
  {
    v6 = [(DMCEnrollmentLinkLabelView *)self linkHandler];
    v6[2]();
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    v6 = [(DMCEnrollmentLinkLabelView *)self message];
    v5 = [(DMCEnrollmentLinkLabelView *)self linkMessage];
    [(DMCEnrollmentLinkLabelView *)self _populateTextLabelWithMessage:v6 linkMessage:v5];
  }
}

- (void)_populateTextLabelWithMessage:(id)a3 linkMessage:(id)a4
{
  v27[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22 = a4;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [v8 setAlignment:{2 * (objc_msgSend(*MEMORY[0x277D76620], "userInterfaceLayoutDirection") != 0)}];
  v9 = *MEMORY[0x277D740A8];
  v26[0] = *MEMORY[0x277D740A8];
  v10 = [(DMCEnrollmentLinkLabelView *)self _textFont];
  v27[0] = v10;
  v11 = *MEMORY[0x277D740C0];
  v26[1] = *MEMORY[0x277D740C0];
  v12 = [MEMORY[0x277D75348] secondaryLabelColor];
  v13 = *MEMORY[0x277D74118];
  v26[2] = *MEMORY[0x277D74118];
  v27[1] = v12;
  v27[2] = v8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

  if (v6)
  {
    v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6 attributes:v14];
    [v7 appendAttributedString:v15];
  }

  v23 = v6;
  v24[0] = v9;
  v16 = [(DMCEnrollmentLinkLabelView *)self _textFont];
  v25[0] = v16;
  v24[1] = v11;
  if ([(DMCEnrollmentLinkLabelView *)self enabled])
  {
    [MEMORY[0x277D75348] systemBlueColor];
  }

  else
  {
    [MEMORY[0x277D75348] placeholderTextColor];
  }
  v17 = ;
  v24[2] = v13;
  v25[1] = v17;
  v25[2] = v8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

  if (v22)
  {
    v19 = objc_alloc(MEMORY[0x277CCA898]);
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", v22];
    v21 = [v19 initWithString:v20 attributes:v18];
    [v7 appendAttributedString:v21];
  }

  [(UILabel *)self->_textLabel setAttributedText:v7];
}

- (id)_textFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938]];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

@end