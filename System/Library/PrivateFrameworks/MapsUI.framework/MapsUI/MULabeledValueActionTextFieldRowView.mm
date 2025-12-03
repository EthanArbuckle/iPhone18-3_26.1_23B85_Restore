@interface MULabeledValueActionTextFieldRowView
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (MULabeledValueActionTextFieldRowView)initWithFrame:(CGRect)frame;
- (MULabeledValueActionTextFieldRowViewDelegate)delegate;
- (NSString)placeholderText;
- (unint64_t)maximumNumberOfLines;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)setCurrentTextFieldValueIfNeeded:(id)needed;
- (void)setMaximumNumberOfLines:(unint64_t)lines;
- (void)setPlaceholderText:(id)text;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation MULabeledValueActionTextFieldRowView

- (MULabeledValueActionTextFieldRowViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setCurrentTextFieldValueIfNeeded:(id)needed
{
  neededCopy = needed;
  if (![(MULabeledValueActionTextFieldRowView *)self isEditing])
  {
    [(MULabeledValueActionTextFieldRowView *)self setCurrentTextFieldValue:neededCopy];
  }
}

- (NSString)placeholderText
{
  attributedPlaceholder = [(UITextView *)self->_valueTextField attributedPlaceholder];
  string = [attributedPlaceholder string];

  return string;
}

- (void)setPlaceholderText:(id)text
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AAB0];
  textCopy = text;
  v6 = [v4 alloc];
  v12 = *MEMORY[0x1E69DB648];
  mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
  bodyFont = [mEMORY[0x1E696F200] bodyFont];
  v13[0] = bodyFont;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v6 initWithString:textCopy attributes:v9];

  [(UITextView *)self->_valueTextField setAttributedPlaceholder:v10];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  text = [changeCopy text];
  text2 = [changeCopy text];
  v6 = [text2 length];

  if (v6 >= self->_maximumNumberOfCharacters)
  {
    maximumNumberOfCharacters = self->_maximumNumberOfCharacters;
  }

  else
  {
    maximumNumberOfCharacters = v6;
  }

  v8 = [text substringWithRange:{0, maximumNumberOfCharacters}];

  text3 = [changeCopy text];
  v10 = [v8 isEqual:text3];

  if ((v10 & 1) == 0)
  {
    [changeCopy setText:v8];
  }

  delegate = [(MULabeledValueActionTextFieldRowView *)self delegate];
  [delegate textFieldRowViewDidChange:self];
}

- (void)textViewDidEndEditing:(id)editing
{
  delegate = [(MULabeledValueActionTextFieldRowView *)self delegate];
  [delegate textFieldRowViewDidEndEditing:self];
}

- (void)textViewDidBeginEditing:(id)editing
{
  delegate = [(MULabeledValueActionTextFieldRowView *)self delegate];
  [delegate textFieldRowViewDidBeginEditing:self];
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  textCopy = text;
  viewCopy = view;
  text = [viewCopy text];
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v10 = [text componentsSeparatedByCharactersInSet:newlineCharacterSet];

  newlineCharacterSet2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v12 = [textCopy componentsSeparatedByCharactersInSet:newlineCharacterSet2];

  v13 = [v10 count];
  v14 = v13 + [v12 count] - 1;
  textContainer = [viewCopy textContainer];

  LOBYTE(viewCopy) = v14 <= [textContainer maximumNumberOfLines];
  return viewCopy;
}

- (void)setMaximumNumberOfLines:(unint64_t)lines
{
  textContainer = [(UITextView *)self->_valueTextField textContainer];
  [textContainer setMaximumNumberOfLines:lines];
}

- (unint64_t)maximumNumberOfLines
{
  textContainer = [(UITextView *)self->_valueTextField textContainer];
  maximumNumberOfLines = [textContainer maximumNumberOfLines];

  return maximumNumberOfLines;
}

- (void)_setupConstraints
{
  v39[11] = *MEMORY[0x1E69E9840];
  v26 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(MULabelViewProtocol *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [(UILayoutGuide *)self->_titleValueLayoutGuide leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[0] = v36;
  topAnchor = [(MULabelViewProtocol *)self->_titleLabel topAnchor];
  topAnchor2 = [(UILayoutGuide *)self->_titleValueLayoutGuide topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v39[1] = v33;
  trailingAnchor = [(MULabelViewProtocol *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self->_titleValueLayoutGuide trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v39[2] = v30;
  bottomAnchor = [(MULabelViewProtocol *)self->_titleLabel bottomAnchor];
  topAnchor3 = [(UITextView *)self->_valueTextField topAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v39[3] = v27;
  leadingAnchor3 = [(UITextView *)self->_valueTextField leadingAnchor];
  leadingAnchor4 = [(UILayoutGuide *)self->_titleValueLayoutGuide leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v39[4] = v23;
  trailingAnchor3 = [(UITextView *)self->_valueTextField trailingAnchor];
  trailingAnchor4 = [(UILayoutGuide *)self->_titleValueLayoutGuide trailingAnchor];
  v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v39[5] = v20;
  bottomAnchor2 = [(UITextView *)self->_valueTextField bottomAnchor];
  bottomAnchor3 = [(UILayoutGuide *)self->_titleValueLayoutGuide bottomAnchor];
  v17 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v39[6] = v17;
  leadingAnchor5 = [(UILayoutGuide *)self->_titleValueLayoutGuide leadingAnchor];
  leadingAnchor6 = [(MULabeledValueActionTextFieldRowView *)self leadingAnchor];
  v14 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:20.0];
  v39[7] = v14;
  trailingAnchor5 = [(UILayoutGuide *)self->_titleValueLayoutGuide trailingAnchor];
  trailingAnchor6 = [(MULabeledValueActionTextFieldRowView *)self trailingAnchor];
  v5 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-20.0];
  v39[8] = v5;
  topAnchor4 = [(UILayoutGuide *)self->_titleValueLayoutGuide topAnchor];
  topAnchor5 = [(MULabeledValueActionTextFieldRowView *)self topAnchor];
  v8 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:12.0];
  v39[9] = v8;
  bottomAnchor4 = [(UILayoutGuide *)self->_titleValueLayoutGuide bottomAnchor];
  bottomAnchor5 = [(MULabeledValueActionTextFieldRowView *)self bottomAnchor];
  v11 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-12.0];
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
  _mapsui_defaultTextView = [MEMORY[0x1E69DD168] _mapsui_defaultTextView];
  valueTextField = self->_valueTextField;
  self->_valueTextField = _mapsui_defaultTextView;

  [(UITextView *)self->_valueTextField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_valueTextField setAdjustsFontForContentSizeCategory:1];
  mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
  bodyFont = [mEMORY[0x1E696F200] bodyFont];
  [(UITextView *)self->_valueTextField setFont:bodyFont];

  [(UITextView *)self->_valueTextField setEditable:1];
  [(UITextView *)self->_valueTextField setScrollEnabled:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_valueTextField setBackgroundColor:clearColor];

  textContainer = [(UITextView *)self->_valueTextField textContainer];
  [textContainer setMaximumNumberOfLines:5];

  [(UITextView *)self->_valueTextField setDelegate:self];
  [(MULabeledValueActionTextFieldRowView *)self addSubview:self->_valueTextField];
  v13 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  titleValueLayoutGuide = self->_titleValueLayoutGuide;
  self->_titleValueLayoutGuide = v13;

  v15 = self->_titleValueLayoutGuide;

  [(MULabeledValueActionTextFieldRowView *)self addLayoutGuide:v15];
}

- (MULabeledValueActionTextFieldRowView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MULabeledValueActionTextFieldRowView;
  v3 = [(MUPlaceSectionRowView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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