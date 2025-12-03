@interface CKRecoverableSectionDisclosureView
+ (id)reuseIdentifier;
- (CKRecoverableSectionDisclosureView)initWithFrame:(CGRect)frame;
- (UITextView)disclosureView;
- (id)_disclosureAttributedText:(id)text;
- (id)_junkFilteringDisclosureAttributedText;
- (id)_recentlyDeletedDisclosureAttributedText;
- (void)configureForJunkFiltering;
- (void)configureForRecentlyDeleted;
- (void)configureWithString:(id)string;
@end

@implementation CKRecoverableSectionDisclosureView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (CKRecoverableSectionDisclosureView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v35[4] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = CKRecoverableSectionDisclosureView;
  v7 = [(CKRecoverableSectionDisclosureView *)&v34 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    disclosureView = [(CKRecoverableSectionDisclosureView *)v7 disclosureView];
    [(CKRecoverableSectionDisclosureView *)v8 addSubview:disclosureView];

    disclosureView2 = [(CKRecoverableSectionDisclosureView *)v8 disclosureView];
    [disclosureView2 setFrame:{x, y, width, height}];

    v24 = MEMORY[0x1E696ACD8];
    disclosureView3 = [(CKRecoverableSectionDisclosureView *)v8 disclosureView];
    leadingAnchor = [disclosureView3 leadingAnchor];
    layoutMarginsGuide = [(CKRecoverableSectionDisclosureView *)v8 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[0] = v29;
    disclosureView4 = [(CKRecoverableSectionDisclosureView *)v8 disclosureView];
    trailingAnchor = [disclosureView4 trailingAnchor];
    layoutMarginsGuide2 = [(CKRecoverableSectionDisclosureView *)v8 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[1] = v23;
    disclosureView5 = [(CKRecoverableSectionDisclosureView *)v8 disclosureView];
    topAnchor = [disclosureView5 topAnchor];
    layoutMarginsGuide3 = [(CKRecoverableSectionDisclosureView *)v8 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[2] = v13;
    disclosureView6 = [(CKRecoverableSectionDisclosureView *)v8 disclosureView];
    bottomAnchor = [disclosureView6 bottomAnchor];
    layoutMarginsGuide4 = [(CKRecoverableSectionDisclosureView *)v8 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
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
    textDragInteraction = [(UITextView *)v5 textDragInteraction];
    [textDragInteraction setEnabled:0];

    [(UITextView *)v5 setClipsToBounds:0];
    [(UITextView *)v5 setAdjustsFontForContentSizeCategory:1];
    [(UITextView *)v5 setBackgroundColor:0];
    [(UITextView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    textContainer = [(UITextView *)v5 textContainer];
    [textContainer setLineBreakMode:0];

    v8 = self->_disclosureView;
    self->_disclosureView = v5;

    disclosureView = self->_disclosureView;
  }

  return disclosureView;
}

- (id)_disclosureAttributedText:(id)text
{
  v3 = MEMORY[0x1E696AD40];
  textCopy = text;
  v5 = [[v3 alloc] initWithString:textCopy];

  v6 = objc_opt_new();
  [v6 setAlignment:1];
  [v6 setLineBreakStrategy:2];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v5 addAttribute:*MEMORY[0x1E69DB688] value:v6 range:{0, objc_msgSend(v5, "length")}];
  [v5 addAttribute:*MEMORY[0x1E69DB650] value:secondaryLabelColor range:{0, objc_msgSend(v5, "length")}];
  v8 = *MEMORY[0x1E69DB648];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v5 addAttribute:v8 value:v9 range:{0, objc_msgSend(v5, "length")}];

  return v5;
}

- (void)configureWithString:(id)string
{
  v5 = [(CKRecoverableSectionDisclosureView *)self _disclosureAttributedText:string];
  disclosureView = [(CKRecoverableSectionDisclosureView *)self disclosureView];
  [disclosureView setAttributedText:v5];

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
  _recentlyDeletedDisclosureAttributedText = [(CKRecoverableSectionDisclosureView *)self _recentlyDeletedDisclosureAttributedText];
  disclosureView = [(CKRecoverableSectionDisclosureView *)self disclosureView];
  [disclosureView setAttributedText:_recentlyDeletedDisclosureAttributedText];

  [(CKRecoverableSectionDisclosureView *)self invalidateIntrinsicContentSize];
}

- (void)configureForJunkFiltering
{
  _junkFilteringDisclosureAttributedText = [(CKRecoverableSectionDisclosureView *)self _junkFilteringDisclosureAttributedText];
  disclosureView = [(CKRecoverableSectionDisclosureView *)self disclosureView];
  [disclosureView setAttributedText:_junkFilteringDisclosureAttributedText];

  [(CKRecoverableSectionDisclosureView *)self invalidateIntrinsicContentSize];
}

@end