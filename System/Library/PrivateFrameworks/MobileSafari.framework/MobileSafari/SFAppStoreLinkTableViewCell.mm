@interface SFAppStoreLinkTableViewCell
- (SFAppStoreLinkTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setupRoundedBackground;
@end

@implementation SFAppStoreLinkTableViewCell

- (SFAppStoreLinkTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v43[3] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = SFAppStoreLinkTableViewCell;
  v4 = [(SFAppStoreLinkTableViewCell *)&v42 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v38 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v38 setAlignment:1];
    v5 = MEMORY[0x1E69DCAB8];
    v6 = MEMORY[0x1E69DCAD8];
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    v8 = [v6 configurationWithHierarchicalColor:systemWhiteColor];
    v41 = [v5 _systemImageNamed:@"appstore" withConfiguration:v8];

    v40 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v41];
    v39 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v40];
    v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
    [v9 appendAttributedString:v39];
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    v37 = v9;
    [v9 appendAttributedString:v10];

    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v12 = _WBSLocalizedString();
    v13 = [v11 initWithString:v12];
    [v9 appendAttributedString:v13];

    [v9 addAttribute:*MEMORY[0x1E69DB688] value:v38 range:{0, objc_msgSend(v9, "length")}];
    textLabel = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    [textLabel setAttributedText:v9];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SFAppStoreLinkTableViewCell *)v4 setBackgroundColor:clearColor];

    systemWhiteColor2 = [MEMORY[0x1E69DC888] systemWhiteColor];
    textLabel2 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    [textLabel2 setTextColor:systemWhiteColor2];

    textLabel3 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    [textLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    textLabel4 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    LODWORD(v20) = 1148846080;
    [textLabel4 setContentHuggingPriority:0 forAxis:v20];

    v32 = MEMORY[0x1E696ACD8];
    textLabel5 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    leadingAnchor = [textLabel5 leadingAnchor];
    leadingAnchor2 = [(SFAppStoreLinkTableViewCell *)v4 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v43[0] = v33;
    textLabel6 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    trailingAnchor = [textLabel6 trailingAnchor];
    trailingAnchor2 = [(SFAppStoreLinkTableViewCell *)v4 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v43[1] = v24;
    textLabel7 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    centerYAnchor = [textLabel7 centerYAnchor];
    centerYAnchor2 = [(SFAppStoreLinkTableViewCell *)v4 centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v43[2] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
    [v32 activateConstraints:v29];

    [(SFAppStoreLinkTableViewCell *)v4 setupRoundedBackground];
    v30 = v4;
  }

  return v4;
}

- (void)setupRoundedBackground
{
  v22[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  [(SFAppStoreLinkTableViewCell *)self bounds];
  v4 = [v3 initWithFrame:?];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [v4 setBackgroundColor:systemBlueColor];

  v6 = *MEMORY[0x1E69796E8];
  layer = [v4 layer];
  [layer setCornerCurve:v6];

  [(SFAppStoreLinkTableViewCell *)self setBackgroundView:v4];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [(SFAppStoreLinkTableViewCell *)self leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v22[0] = v19;
  trailingAnchor = [v4 trailingAnchor];
  trailingAnchor2 = [(SFAppStoreLinkTableViewCell *)self trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v22[1] = v9;
  topAnchor = [v4 topAnchor];
  topAnchor2 = [(SFAppStoreLinkTableViewCell *)self topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v22[2] = v12;
  bottomAnchor = [v4 bottomAnchor];
  bottomAnchor2 = [(SFAppStoreLinkTableViewCell *)self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v17 activateConstraints:v16];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SFAppStoreLinkTableViewCell;
  [(SFAppStoreLinkTableViewCell *)&v18 layoutSubviews];
  [(SFAppStoreLinkTableViewCell *)self bounds];
  v4 = v3 * 0.5;
  backgroundView = [(SFAppStoreLinkTableViewCell *)self backgroundView];
  layer = [backgroundView layer];
  [layer setCornerRadius:v4];

  backgroundView2 = [(SFAppStoreLinkTableViewCell *)self backgroundView];
  layer2 = [backgroundView2 layer];
  [layer2 setMasksToBounds:1];

  [(SFAppStoreLinkTableViewCell *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  backgroundView3 = [(SFAppStoreLinkTableViewCell *)self backgroundView];
  [backgroundView3 setFrame:{v10, v12, v14, v16}];
}

@end