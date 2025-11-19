@interface MULabeledValueActionTextFieldRowView
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (MULabeledValueActionTextFieldRowView)initWithFrame:(CGRect)a3;
- (MULabeledValueActionTextFieldRowViewDelegate)delegate;
- (NSString)placeholderText;
- (unint64_t)maximumNumberOfLines;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)setCurrentTextFieldValueIfNeeded:(id)a3;
- (void)setMaximumNumberOfLines:(unint64_t)a3;
- (void)setPlaceholderText:(id)a3;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation MULabeledValueActionTextFieldRowView

- (MULabeledValueActionTextFieldRowViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setCurrentTextFieldValueIfNeeded:(id)a3
{
  v4 = a3;
  if (![(MULabeledValueActionTextFieldRowView *)self isEditing])
  {
    [(MULabeledValueActionTextFieldRowView *)self setCurrentTextFieldValue:v4];
  }
}

- (NSString)placeholderText
{
  v2 = [(UITextView *)self->_valueTextField attributedPlaceholder];
  v3 = [v2 string];

  return v3;
}

- (void)setPlaceholderText:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AAB0];
  v5 = a3;
  v6 = [v4 alloc];
  v12 = *MEMORY[0x1E69DB648];
  v7 = [MEMORY[0x1E696F200] sharedManager];
  v8 = [v7 bodyFont];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v6 initWithString:v5 attributes:v9];

  [(UITextView *)self->_valueTextField setAttributedPlaceholder:v10];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)textViewDidChange:(id)a3
{
  v12 = a3;
  v4 = [v12 text];
  v5 = [v12 text];
  v6 = [v5 length];

  if (v6 >= self->_maximumNumberOfCharacters)
  {
    maximumNumberOfCharacters = self->_maximumNumberOfCharacters;
  }

  else
  {
    maximumNumberOfCharacters = v6;
  }

  v8 = [v4 substringWithRange:{0, maximumNumberOfCharacters}];

  v9 = [v12 text];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    [v12 setText:v8];
  }

  v11 = [(MULabeledValueActionTextFieldRowView *)self delegate];
  [v11 textFieldRowViewDidChange:self];
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = [(MULabeledValueActionTextFieldRowView *)self delegate];
  [v4 textFieldRowViewDidEndEditing:self];
}

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = [(MULabeledValueActionTextFieldRowView *)self delegate];
  [v4 textFieldRowViewDidBeginEditing:self];
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = [v7 text];
  v9 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v10 = [v8 componentsSeparatedByCharactersInSet:v9];

  v11 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v12 = [v6 componentsSeparatedByCharactersInSet:v11];

  v13 = [v10 count];
  v14 = v13 + [v12 count] - 1;
  v15 = [v7 textContainer];

  LOBYTE(v7) = v14 <= [v15 maximumNumberOfLines];
  return v7;
}

- (void)setMaximumNumberOfLines:(unint64_t)a3
{
  v4 = [(UITextView *)self->_valueTextField textContainer];
  [v4 setMaximumNumberOfLines:a3];
}

- (unint64_t)maximumNumberOfLines
{
  v2 = [(UITextView *)self->_valueTextField textContainer];
  v3 = [v2 maximumNumberOfLines];

  return v3;
}

- (void)_setupConstraints
{
  v39[11] = *MEMORY[0x1E69E9840];
  v26 = MEMORY[0x1E696ACD8];
  v38 = [(MULabelViewProtocol *)self->_titleLabel leadingAnchor];
  v37 = [(UILayoutGuide *)self->_titleValueLayoutGuide leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v39[0] = v36;
  v35 = [(MULabelViewProtocol *)self->_titleLabel topAnchor];
  v34 = [(UILayoutGuide *)self->_titleValueLayoutGuide topAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v39[1] = v33;
  v32 = [(MULabelViewProtocol *)self->_titleLabel trailingAnchor];
  v31 = [(UILayoutGuide *)self->_titleValueLayoutGuide trailingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v39[2] = v30;
  v29 = [(MULabelViewProtocol *)self->_titleLabel bottomAnchor];
  v28 = [(UITextView *)self->_valueTextField topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v39[3] = v27;
  v25 = [(UITextView *)self->_valueTextField leadingAnchor];
  v24 = [(UILayoutGuide *)self->_titleValueLayoutGuide leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v39[4] = v23;
  v22 = [(UITextView *)self->_valueTextField trailingAnchor];
  v21 = [(UILayoutGuide *)self->_titleValueLayoutGuide trailingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v39[5] = v20;
  v19 = [(UITextView *)self->_valueTextField bottomAnchor];
  v18 = [(UILayoutGuide *)self->_titleValueLayoutGuide bottomAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v39[6] = v17;
  v16 = [(UILayoutGuide *)self->_titleValueLayoutGuide leadingAnchor];
  v15 = [(MULabeledValueActionTextFieldRowView *)self leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15 constant:20.0];
  v39[7] = v14;
  v3 = [(UILayoutGuide *)self->_titleValueLayoutGuide trailingAnchor];
  v4 = [(MULabeledValueActionTextFieldRowView *)self trailingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:-20.0];
  v39[8] = v5;
  v6 = [(UILayoutGuide *)self->_titleValueLayoutGuide topAnchor];
  v7 = [(MULabeledValueActionTextFieldRowView *)self topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:12.0];
  v39[9] = v8;
  v9 = [(UILayoutGuide *)self->_titleValueLayoutGuide bottomAnchor];
  v10 = [(MULabeledValueActionTextFieldRowView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-12.0];
  v39[10] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:11];
  [v26 activateConstraints:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v3 = [MUInfoCardStyle vibrantLabelForProminence:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  [v3 setFont:v4];

  v5 = +[MUInfoCardStyle secondaryTextColor];
  [v3 setTextColor:v5];

  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(MULabelViewProtocol *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MULabelViewProtocol *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
  [(MULabeledValueActionTextFieldRowView *)self addSubview:self->_titleLabel];
  v7 = [MEMORY[0x1E69DD168] _mapsui_defaultTextView];
  valueTextField = self->_valueTextField;
  self->_valueTextField = v7;

  [(UITextView *)self->_valueTextField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_valueTextField setAdjustsFontForContentSizeCategory:1];
  v9 = [MEMORY[0x1E696F200] sharedManager];
  v10 = [v9 bodyFont];
  [(UITextView *)self->_valueTextField setFont:v10];

  [(UITextView *)self->_valueTextField setEditable:1];
  [(UITextView *)self->_valueTextField setScrollEnabled:0];
  v11 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_valueTextField setBackgroundColor:v11];

  v12 = [(UITextView *)self->_valueTextField textContainer];
  [v12 setMaximumNumberOfLines:5];

  [(UITextView *)self->_valueTextField setDelegate:self];
  [(MULabeledValueActionTextFieldRowView *)self addSubview:self->_valueTextField];
  v13 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  titleValueLayoutGuide = self->_titleValueLayoutGuide;
  self->_titleValueLayoutGuide = v13;

  v15 = self->_titleValueLayoutGuide;

  [(MULabeledValueActionTextFieldRowView *)self addLayoutGuide:v15];
}

- (MULabeledValueActionTextFieldRowView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MULabeledValueActionTextFieldRowView;
  v3 = [(MUPlaceSectionRowView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_maximumNumberOfCharacters = 100;
    [(MULabeledValueActionTextFieldRowView *)v3 _setupSubviews];
    [(MULabeledValueActionTextFieldRowView *)v4 _setupConstraints];
  }

  return v4;
}

@end