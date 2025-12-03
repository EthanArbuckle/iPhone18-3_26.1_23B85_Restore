@interface SUUIRedeemITunesPassLockup
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIRedeemITunesPassLockup)initWithITunesPassConfiguration:(id)configuration clientContext:(id)context;
- (id)_attributedDescriptionString;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SUUIRedeemITunesPassLockup

- (SUUIRedeemITunesPassLockup)initWithITunesPassConfiguration:(id)configuration clientContext:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  v33.receiver = self;
  v33.super_class = SUUIRedeemITunesPassLockup;
  v9 = [(SUUIRedeemITunesPassLockup *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, context);
    objc_storeStrong(&v10->_configuration, configuration);
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionLabel = v10->_descriptionLabel;
    v10->_descriptionLabel = v11;

    v13 = v10->_descriptionLabel;
    _attributedDescriptionString = [(SUUIRedeemITunesPassLockup *)v10 _attributedDescriptionString];
    [(UILabel *)v13 setAttributedText:_attributedDescriptionString];

    [(UILabel *)v10->_descriptionLabel setNumberOfLines:0];
    [(SUUIRedeemITunesPassLockup *)v10 addSubview:v10->_descriptionLabel];
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    horizontalSeparatorView = v10->_horizontalSeparatorView;
    v10->_horizontalSeparatorView = v15;

    v17 = v10->_horizontalSeparatorView;
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v17 setBackgroundColor:v18];

    [(SUUIRedeemITunesPassLockup *)v10 addSubview:v10->_horizontalSeparatorView];
    v19 = MEMORY[0x277D755B8];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v21 = [v19 _applicationIconImageForBundleIdentifier:@"com.apple.Passbook" format:2 scale:?];

    if (v21)
    {
      v22 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v21];
      iconImageView = v10->_iconImageView;
      v10->_iconImageView = v22;

      [(SUUIRedeemITunesPassLockup *)v10 addSubview:v10->_iconImageView];
    }

    v24 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v24;

    v26 = v10->_titleLabel;
    v27 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v26 setFont:v27];

    v28 = v10->_titleLabel;
    lockupTitle = [configurationCopy lockupTitle];
    [(UILabel *)v28 setText:lockupTitle];

    v30 = v10->_titleLabel;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v30 setTextColor:blackColor];

    [(SUUIRedeemITunesPassLockup *)v10 addSubview:v10->_titleLabel];
  }

  return v10;
}

- (void)layoutSubviews
{
  [(SUUIRedeemITunesPassLockup *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_iconImageView frame];
  v7 = (v6 + -55.0) * 0.5;
  v8 = floorf(v7);
  [(UIImageView *)self->_iconImageView setFrame:0.0, v8, 55.0, 55.0];
  [(UIView *)self->_horizontalSeparatorView frame];
  v27.origin.x = 0.0;
  v27.origin.y = v8;
  v27.size.width = 55.0;
  v27.size.height = 55.0;
  v9 = CGRectGetMaxX(v27) + 15.0;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v12 = 1.0 / v11;

  [(UIView *)self->_horizontalSeparatorView setFrame:v9, v8, v12, 55.0];
  v13 = v9 + 15.0;
  v14 = v4 - (v9 + 15.0);
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_titleLabel sizeThatFits:v14, 1.79769313e308];
  v16 = v15;
  v18 = v17;
  [(UILabel *)self->_descriptionLabel frame];
  [(UILabel *)self->_descriptionLabel sizeThatFits:v14, 1.79769313e308];
  v20 = v19;
  v22 = v21;
  *&v19 = (v6 - (v18 + 4.0 + v21)) * 0.5;
  v23 = floorf(*&v19);
  v28.origin.x = v13;
  v28.origin.y = v23;
  v28.size.width = v16;
  v28.size.height = v18;
  v24 = CGRectGetMaxY(v28) + 4.0;
  [(UILabel *)self->_titleLabel setFrame:v13, v23, v16, v18];
  descriptionLabel = self->_descriptionLabel;

  [(UILabel *)descriptionLabel setFrame:v13, v24, v20, v22];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v6.receiver = self;
  v6.super_class = SUUIRedeemITunesPassLockup;
  [(SUUIRedeemITunesPassLockup *)&v6 setHighlighted:highlighted];
  descriptionLabel = self->_descriptionLabel;
  _attributedDescriptionString = [(SUUIRedeemITunesPassLockup *)self _attributedDescriptionString];
  [(UILabel *)descriptionLabel setAttributedText:_attributedDescriptionString];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = fits.width + -55.0 + -30.0;
  [(UILabel *)self->_descriptionLabel sizeThatFits:v5, 1.79769313e308];
  v7 = v6;
  [(UILabel *)self->_titleLabel sizeThatFits:v5, 1.79769313e308];
  v9 = fmax(v7 + 4.0 + v8, 55.0);
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (id)_attributedDescriptionString
{
  lockupDescription = [(SUUIITunesPassConfiguration *)self->_configuration lockupDescription];
  lockupLearnMoreLinkTitle = [(SUUIITunesPassConfiguration *)self->_configuration lockupLearnMoreLinkTitle];
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SUUIClientContext *)clientContext localizedStringForKey:@"ITUNES_PASS_EXPLANATION_LEARN_MORE_FORMAT" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_EXPLANATION_LEARN_MORE_FORMAT" inBundles:0 inTable:@"Redeem"];
  }
  v22 = ;
  v5 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@%@" error:0, lockupDescription, lockupLearnMoreLinkTitle];
  v6 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v5];
  v7 = [MEMORY[0x277D74300] systemFontOfSize:11.0];
  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v9 = [defaultParagraphStyle mutableCopy];

  [v9 setLineHeightMultiple:0.75];
  [v9 setMinimumLineHeight:15.0];
  [v6 addAttribute:*MEMORY[0x277D74118] value:v9 range:{0, objc_msgSend(v5, "length")}];
  v23 = lockupDescription;
  v10 = [v5 rangeOfString:lockupDescription];
  v12 = v11;
  v13 = *MEMORY[0x277D740A8];
  [v6 addAttribute:*MEMORY[0x277D740A8] value:v7 range:{v10, v11}];
  v14 = *MEMORY[0x277D740C0];
  v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
  [v6 addAttribute:v14 value:v15 range:{v10, v12}];

  v16 = [v5 rangeOfString:lockupLearnMoreLinkTitle];
  v18 = v17;
  [v6 addAttribute:v13 value:v7 range:{v16, v17}];
  tintColor = [(SUUIRedeemITunesPassLockup *)self tintColor];
  if ([(SUUIRedeemITunesPassLockup *)self isHighlighted])
  {
    v20 = [tintColor colorWithAlphaComponent:0.2];

    tintColor = v20;
  }

  [v6 addAttribute:v14 value:tintColor range:{v16, v18}];

  return v6;
}

@end