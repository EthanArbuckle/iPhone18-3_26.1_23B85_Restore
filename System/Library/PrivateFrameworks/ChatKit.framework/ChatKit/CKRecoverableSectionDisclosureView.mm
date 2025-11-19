@interface CKRecoverableSectionDisclosureView
+ (id)reuseIdentifier;
- (CKRecoverableSectionDisclosureView)initWithFrame:(CGRect)a3;
- (UITextView)disclosureView;
- (id)_disclosureAttributedText:(id)a3;
- (id)_junkFilteringDisclosureAttributedText;
- (id)_recentlyDeletedDisclosureAttributedText;
- (void)configureForJunkFiltering;
- (void)configureForRecentlyDeleted;
- (void)configureWithString:(id)a3;
@end

@implementation CKRecoverableSectionDisclosureView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (CKRecoverableSectionDisclosureView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v35[4] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = CKRecoverableSectionDisclosureView;
  v7 = [(CKRecoverableSectionDisclosureView *)&v34 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v9 = [(CKRecoverableSectionDisclosureView *)v7 disclosureView];
    [(CKRecoverableSectionDisclosureView *)v8 addSubview:v9];

    v10 = [(CKRecoverableSectionDisclosureView *)v8 disclosureView];
    [v10 setFrame:{x, y, width, height}];

    v24 = MEMORY[0x1E696ACD8];
    v33 = [(CKRecoverableSectionDisclosureView *)v8 disclosureView];
    v31 = [v33 leadingAnchor];
    v32 = [(CKRecoverableSectionDisclosureView *)v8 layoutMarginsGuide];
    v30 = [v32 leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v35[0] = v29;
    v28 = [(CKRecoverableSectionDisclosureView *)v8 disclosureView];
    v26 = [v28 trailingAnchor];
    v27 = [(CKRecoverableSectionDisclosureView *)v8 layoutMarginsGuide];
    v25 = [v27 trailingAnchor];
    v23 = [v26 constraintEqualToAnchor:v25];
    v35[1] = v23;
    v22 = [(CKRecoverableSectionDisclosureView *)v8 disclosureView];
    v21 = [v22 topAnchor];
    v11 = [(CKRecoverableSectionDisclosureView *)v8 layoutMarginsGuide];
    v12 = [v11 topAnchor];
    v13 = [v21 constraintEqualToAnchor:v12];
    v35[2] = v13;
    v14 = [(CKRecoverableSectionDisclosureView *)v8 disclosureView];
    v15 = [v14 bottomAnchor];
    v16 = [(CKRecoverableSectionDisclosureView *)v8 layoutMarginsGuide];
    v17 = [v16 bottomAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:-10.0];
    v35[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
    [v24 activateConstraints:v19];
  }

  return v8;
}

- (UITextView)disclosureView
{
  disclosureView = self->_disclosureView;
  if (!disclosureView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD168]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(UITextView *)v5 _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v5 setScrollEnabled:0];
    [(UITextView *)v5 setEditable:0];
    [(UITextView *)v5 setSelectable:1];
    [(UITextView *)v5 setUserInteractionEnabled:1];
    v6 = [(UITextView *)v5 textDragInteraction];
    [v6 setEnabled:0];

    [(UITextView *)v5 setClipsToBounds:0];
    [(UITextView *)v5 setAdjustsFontForContentSizeCategory:1];
    [(UITextView *)v5 setBackgroundColor:0];
    [(UITextView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(UITextView *)v5 textContainer];
    [v7 setLineBreakMode:0];

    v8 = self->_disclosureView;
    self->_disclosureView = v5;

    disclosureView = self->_disclosureView;
  }

  return disclosureView;
}

- (id)_disclosureAttributedText:(id)a3
{
  v3 = MEMORY[0x1E696AD40];
  v4 = a3;
  v5 = [[v3 alloc] initWithString:v4];

  v6 = objc_opt_new();
  [v6 setAlignment:1];
  [v6 setLineBreakStrategy:2];
  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v5 addAttribute:*MEMORY[0x1E69DB688] value:v6 range:{0, objc_msgSend(v5, "length")}];
  [v5 addAttribute:*MEMORY[0x1E69DB650] value:v7 range:{0, objc_msgSend(v5, "length")}];
  v8 = *MEMORY[0x1E69DB648];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v5 addAttribute:v8 value:v9 range:{0, objc_msgSend(v5, "length")}];

  return v5;
}

- (void)configureWithString:(id)a3
{
  v5 = [(CKRecoverableSectionDisclosureView *)self _disclosureAttributedText:a3];
  v4 = [(CKRecoverableSectionDisclosureView *)self disclosureView];
  [v4 setAttributedText:v5];

  [(CKRecoverableSectionDisclosureView *)self invalidateIntrinsicContentSize];
}

- (id)_recentlyDeletedDisclosureAttributedText
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"RECENTLY_DELETED_DISCLOSURE_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  v5 = [(CKRecoverableSectionDisclosureView *)self _disclosureAttributedText:v4];

  return v5;
}

- (id)_junkFilteringDisclosureAttributedText
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"OSCAR_DISCLOSURE_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  v5 = [(CKRecoverableSectionDisclosureView *)self _disclosureAttributedText:v4];

  return v5;
}

- (void)configureForRecentlyDeleted
{
  v3 = [(CKRecoverableSectionDisclosureView *)self _recentlyDeletedDisclosureAttributedText];
  v4 = [(CKRecoverableSectionDisclosureView *)self disclosureView];
  [v4 setAttributedText:v3];

  [(CKRecoverableSectionDisclosureView *)self invalidateIntrinsicContentSize];
}

- (void)configureForJunkFiltering
{
  v3 = [(CKRecoverableSectionDisclosureView *)self _junkFilteringDisclosureAttributedText];
  v4 = [(CKRecoverableSectionDisclosureView *)self disclosureView];
  [v4 setAttributedText:v3];

  [(CKRecoverableSectionDisclosureView *)self invalidateIntrinsicContentSize];
}

@end