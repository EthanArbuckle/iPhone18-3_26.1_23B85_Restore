@interface DMCEnrollmentLinkLabelView
- (CGSize)sizeThatFits:(CGSize)fits;
- (DMCEnrollmentLinkLabelView)initWithIcon:(id)icon message:(id)message linkMessage:(id)linkMessage linkHandler:(id)handler;
- (id)_textFont;
- (void)_populateTextLabelWithMessage:(id)message linkMessage:(id)linkMessage;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation DMCEnrollmentLinkLabelView

- (DMCEnrollmentLinkLabelView)initWithIcon:(id)icon message:(id)message linkMessage:(id)linkMessage linkHandler:(id)handler
{
  v34[1] = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  messageCopy = message;
  linkMessageCopy = linkMessage;
  handlerCopy = handler;
  v33.receiver = self;
  v33.super_class = DMCEnrollmentLinkLabelView;
  v14 = [(DMCEnrollmentLinkLabelView *)&v33 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v14)
  {
    if (iconCopy)
    {
      v15 = objc_alloc(MEMORY[0x277D755E8]);
      v16 = [MEMORY[0x277D755B8] _systemImageNamed:iconCopy];
      v17 = [v15 initWithImage:v16];
      imageView = v14->_imageView;
      v14->_imageView = v17;

      [(UIImageView *)v14->_imageView setContentMode:2];
      [(DMCEnrollmentLinkLabelView *)v14 addSubview:v14->_imageView];
    }

    v14->_enabled = 1;
    v19 = [messageCopy copy];
    message = v14->_message;
    v14->_message = v19;

    v21 = [linkMessageCopy copy];
    linkMessage = v14->_linkMessage;
    v14->_linkMessage = v21;

    v23 = objc_opt_new();
    textLabel = v14->_textLabel;
    v14->_textLabel = v23;

    [(UILabel *)v14->_textLabel setNumberOfLines:0];
    [(DMCEnrollmentLinkLabelView *)v14 _populateTextLabelWithMessage:messageCopy linkMessage:linkMessageCopy];
    [(DMCEnrollmentLinkLabelView *)v14 addSubview:v14->_textLabel];
    v25 = _Block_copy(handlerCopy);
    linkHandler = v14->_linkHandler;
    v14->_linkHandler = v25;

    [(DMCEnrollmentLinkLabelView *)v14 setUserInteractionEnabled:handlerCopy != 0];
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
  imageView = [(DMCEnrollmentLinkLabelView *)self imageView];
  [imageView setFrame:{v3, 0.0, 35.0, 35.0}];

  textLabel = [(DMCEnrollmentLinkLabelView *)self textLabel];
  [(DMCEnrollmentLinkLabelView *)self bounds];
  [textLabel sizeThatFits:{v6, v7}];
  v9 = v8;
  v11 = v10;

  [(DMCEnrollmentLinkLabelView *)self bounds];
  v12 = (CGRectGetWidth(v17) - v9) * 0.5;
  [(DMCEnrollmentLinkLabelView *)self bounds];
  v13 = CGRectGetHeight(v18) - v11 + -5.0;
  textLabel2 = [(DMCEnrollmentLinkLabelView *)self textLabel];
  [textLabel2 setFrame:{v12, v13, v9, v11}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  textLabel = [(DMCEnrollmentLinkLabelView *)self textLabel];
  [textLabel sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  imageView = [(DMCEnrollmentLinkLabelView *)self imageView];

  if (imageView)
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  [(DMCEnrollmentLinkLabelView *)self setAlpha:ended, event, 1.0];
  linkHandler = [(DMCEnrollmentLinkLabelView *)self linkHandler];

  if (linkHandler)
  {
    linkHandler2 = [(DMCEnrollmentLinkLabelView *)self linkHandler];
    linkHandler2[2]();
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    message = [(DMCEnrollmentLinkLabelView *)self message];
    linkMessage = [(DMCEnrollmentLinkLabelView *)self linkMessage];
    [(DMCEnrollmentLinkLabelView *)self _populateTextLabelWithMessage:message linkMessage:linkMessage];
  }
}

- (void)_populateTextLabelWithMessage:(id)message linkMessage:(id)linkMessage
{
  v27[3] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  linkMessageCopy = linkMessage;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [v8 setAlignment:{2 * (objc_msgSend(*MEMORY[0x277D76620], "userInterfaceLayoutDirection") != 0)}];
  v9 = *MEMORY[0x277D740A8];
  v26[0] = *MEMORY[0x277D740A8];
  _textFont = [(DMCEnrollmentLinkLabelView *)self _textFont];
  v27[0] = _textFont;
  v11 = *MEMORY[0x277D740C0];
  v26[1] = *MEMORY[0x277D740C0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v13 = *MEMORY[0x277D74118];
  v26[2] = *MEMORY[0x277D74118];
  v27[1] = secondaryLabelColor;
  v27[2] = v8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

  if (messageCopy)
  {
    v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:messageCopy attributes:v14];
    [v7 appendAttributedString:v15];
  }

  v23 = messageCopy;
  v24[0] = v9;
  _textFont2 = [(DMCEnrollmentLinkLabelView *)self _textFont];
  v25[0] = _textFont2;
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

  if (linkMessageCopy)
  {
    v19 = objc_alloc(MEMORY[0x277CCA898]);
    linkMessageCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", linkMessageCopy];
    v21 = [v19 initWithString:linkMessageCopy attributes:v18];
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