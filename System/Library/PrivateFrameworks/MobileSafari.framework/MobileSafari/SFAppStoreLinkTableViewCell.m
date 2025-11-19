@interface SFAppStoreLinkTableViewCell
- (SFAppStoreLinkTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setupRoundedBackground;
@end

@implementation SFAppStoreLinkTableViewCell

- (SFAppStoreLinkTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v43[3] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = SFAppStoreLinkTableViewCell;
  v4 = [(SFAppStoreLinkTableViewCell *)&v42 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v38 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v38 setAlignment:1];
    v5 = MEMORY[0x1E69DCAB8];
    v6 = MEMORY[0x1E69DCAD8];
    v7 = [MEMORY[0x1E69DC888] systemWhiteColor];
    v8 = [v6 configurationWithHierarchicalColor:v7];
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
    v14 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    [v14 setAttributedText:v9];

    v15 = [MEMORY[0x1E69DC888] clearColor];
    [(SFAppStoreLinkTableViewCell *)v4 setBackgroundColor:v15];

    v16 = [MEMORY[0x1E69DC888] systemWhiteColor];
    v17 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    [v17 setTextColor:v16];

    v18 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    LODWORD(v20) = 1148846080;
    [v19 setContentHuggingPriority:0 forAxis:v20];

    v32 = MEMORY[0x1E696ACD8];
    v36 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    v35 = [v36 leadingAnchor];
    v34 = [(SFAppStoreLinkTableViewCell *)v4 leadingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v43[0] = v33;
    v21 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    v22 = [v21 trailingAnchor];
    v23 = [(SFAppStoreLinkTableViewCell *)v4 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v43[1] = v24;
    v25 = [(SFAppStoreLinkTableViewCell *)v4 textLabel];
    v26 = [v25 centerYAnchor];
    v27 = [(SFAppStoreLinkTableViewCell *)v4 centerYAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
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
  v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v4 setBackgroundColor:v5];

  v6 = *MEMORY[0x1E69796E8];
  v7 = [v4 layer];
  [v7 setCornerCurve:v6];

  [(SFAppStoreLinkTableViewCell *)self setBackgroundView:v4];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x1E696ACD8];
  v21 = [v4 leadingAnchor];
  v20 = [(SFAppStoreLinkTableViewCell *)self leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v22[0] = v19;
  v18 = [v4 trailingAnchor];
  v8 = [(SFAppStoreLinkTableViewCell *)self trailingAnchor];
  v9 = [v18 constraintEqualToAnchor:v8];
  v22[1] = v9;
  v10 = [v4 topAnchor];
  v11 = [(SFAppStoreLinkTableViewCell *)self topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v22[2] = v12;
  v13 = [v4 bottomAnchor];
  v14 = [(SFAppStoreLinkTableViewCell *)self bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
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
  v5 = [(SFAppStoreLinkTableViewCell *)self backgroundView];
  v6 = [v5 layer];
  [v6 setCornerRadius:v4];

  v7 = [(SFAppStoreLinkTableViewCell *)self backgroundView];
  v8 = [v7 layer];
  [v8 setMasksToBounds:1];

  [(SFAppStoreLinkTableViewCell *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(SFAppStoreLinkTableViewCell *)self backgroundView];
  [v17 setFrame:{v10, v12, v14, v16}];
}

@end