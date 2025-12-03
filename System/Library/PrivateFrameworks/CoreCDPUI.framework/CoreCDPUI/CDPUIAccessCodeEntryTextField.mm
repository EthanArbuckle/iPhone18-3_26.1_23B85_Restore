@interface CDPUIAccessCodeEntryTextField
+ (unint64_t)accessKeyCharacterCount;
- (BOOL)isComplete;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (CDPUIAccessCodeEntryTextField)initWithFrame:(CGRect)frame textContainer:(id)container;
- (CDPUIAccessCodeEntryTextFieldDelegate)accessCodeInputDelegate;
- (id)_sanitizeInputString:(id)string;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_handleMultiCharacterStringInput:(id)input range:(_NSRange)range;
- (void)layoutSubviews;
- (void)setFont:(id)font;
- (void)setPlaceholder:(id)placeholder;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setupSeparatorLocations;
- (void)setupUI;
- (void)textViewDidChange:(id)change;
- (void)updatePlaceholderVisibility;
@end

@implementation CDPUIAccessCodeEntryTextField

- (CDPUIAccessCodeEntryTextField)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = CDPUIAccessCodeEntryTextField;
  v8 = [(CDPUIAccessCodeEntryTextField *)&v11 initWithFrame:container textContainer:?];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D75C40]) initWithFrame:0 textContainer:{x, y, width, height}];
    [(CDPUIAccessCodeEntryTextField *)v8 setPlaceholderTextView:v9];

    [(CDPUIAccessCodeEntryTextField *)v8 setupUI];
    [(CDPUIAccessCodeEntryTextField *)v8 setupSeparatorLocations];
  }

  return v8;
}

- (void)setupUI
{
  [(CDPUIAccessCodeEntryTextField *)self setAutocorrectionType:1];
  [(CDPUIAccessCodeEntryTextField *)self setReturnKeyType:9];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(CDPUIAccessCodeEntryTextField *)self setTextColor:labelColor];

  [(CDPUIAccessCodeEntryTextField *)self setSpellCheckingType:1];
  [(CDPUIAccessCodeEntryTextField *)self setAutocapitalizationType:3];
  placeholderTextView = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [placeholderTextView setAutoresizingMask:18];

  systemGray2Color = [MEMORY[0x277D75348] systemGray2Color];
  placeholderTextView2 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [placeholderTextView2 setTextColor:systemGray2Color];

  clearColor = [MEMORY[0x277D75348] clearColor];
  placeholderTextView3 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [placeholderTextView3 setBackgroundColor:clearColor];

  placeholderTextView4 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [placeholderTextView4 setText:0];

  [(CDPUIAccessCodeEntryTextField *)self setDelegate:self];
  [(CDPUIAccessCodeEntryTextField *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  placeholderTextView5 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [placeholderTextView5 setFrame:{v11, v13, v15, v17}];

  placeholderTextView6 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [placeholderTextView6 setEditable:0];

  placeholderTextView7 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [(CDPUIAccessCodeEntryTextField *)self addSubview:placeholderTextView7];
}

- (void)setupSeparatorLocations
{
  v12 = [MEMORY[0x277CBEB58] set];
  v3 = [MEMORY[0x277CBEB58] set];
  if ([(CDPUIAccessCodeEntryTextField *)self _numberOfSeparators])
  {
    v4 = 0;
    v5 = 4;
    do
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
      [v12 addObject:v6];

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 + 1];
      [v3 addObject:v7];

      ++v4;
      v5 += 5;
    }

    while ([(CDPUIAccessCodeEntryTextField *)self _numberOfSeparators]> v4);
  }

  v8 = [v12 copy];
  separatorLocations = self->_separatorLocations;
  self->_separatorLocations = v8;

  v10 = [v3 copy];
  separatorDeleteLocations = self->_separatorDeleteLocations;
  self->_separatorDeleteLocations = v10;
}

+ (unint64_t)accessKeyCharacterCount
{
  if (accessKeyCharacterCount_onceToken != -1)
  {
    +[CDPUIAccessCodeEntryTextField accessKeyCharacterCount];
  }

  return accessKeyCharacterCount_textInputLength;
}

void __56__CDPUIAccessCodeEntryTextField_accessKeyCharacterCount__block_invoke()
{
  v1 = CDPLocalizedString();
  v0 = [v1 stringByReplacingOccurrencesOfString:@"-" withString:&stru_285826188];
  accessKeyCharacterCount_textInputLength = [v0 length];
}

- (BOOL)isComplete
{
  selfCopy = self;
  text = [(CDPUIAccessCodeEntryTextField *)self text];
  v4 = [text length];
  LOBYTE(selfCopy) = v4 == [(CDPUIAccessCodeEntryTextField *)selfCopy _totalCharacterLimit];

  return selfCopy;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CDPUIAccessCodeEntryTextField;
  [(CDPUIAccessCodeEntryTextField *)&v13 layoutSubviews];
  [(CDPUIAccessCodeEntryTextField *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  placeholderTextView = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [placeholderTextView setFrame:{v4, v6, v8, v10}];

  placeholderTextView2 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [placeholderTextView2 setAutoresizingMask:18];
}

- (void)setFont:(id)font
{
  v6.receiver = self;
  v6.super_class = CDPUIAccessCodeEntryTextField;
  [(CDPUIAccessCodeEntryTextField *)&v6 setFont:font];
  font = [(CDPUIAccessCodeEntryTextField *)self font];
  placeholderTextView = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [placeholderTextView setFont:font];
}

- (void)setTextAlignment:(int64_t)alignment
{
  v6.receiver = self;
  v6.super_class = CDPUIAccessCodeEntryTextField;
  [(CDPUIAccessCodeEntryTextField *)&v6 setTextAlignment:alignment];
  textAlignment = [(CDPUIAccessCodeEntryTextField *)self textAlignment];
  placeholderTextView = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [placeholderTextView setTextAlignment:textAlignment];
}

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = CDPUIAccessCodeEntryTextField;
  [(CDPUIAccessCodeEntryTextField *)&v4 setText:text];
  [(CDPUIAccessCodeEntryTextField *)self updatePlaceholderVisibility];
}

- (void)setPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v5 = [placeholderCopy copy];
  placeholder = self->_placeholder;
  self->_placeholder = v5;

  placeholderTextView = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [placeholderTextView setText:placeholderCopy];
}

- (void)updatePlaceholderVisibility
{
  text = [(CDPUIAccessCodeEntryTextField *)self text];
  v3 = [text length] != 0;
  placeholderTextView = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [placeholderTextView setHidden:v3];
}

- (id)viewForFirstBaselineLayout
{
  placeholderTextView = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  viewForFirstBaselineLayout = [placeholderTextView viewForFirstBaselineLayout];

  return viewForFirstBaselineLayout;
}

- (id)viewForLastBaselineLayout
{
  placeholderTextView = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  viewForLastBaselineLayout = [placeholderTextView viewForLastBaselineLayout];

  return viewForLastBaselineLayout;
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  textCopy = text;
  if (![textCopy isEqualToString:@"\n"] || (-[CDPUIAccessCodeEntryTextField accessCodeInputDelegate](self, "accessCodeInputDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) == 0))
  {
    if (location >= [(CDPUIAccessCodeEntryTextField *)self _totalCharacterLimit])
    {
      goto LABEL_7;
    }

    v12 = [(CDPUIAccessCodeEntryTextField *)self _sanitizeInputString:textCopy];

    text = [(CDPUIAccessCodeEntryTextField *)self text];
    v14 = location < [text length] && objc_msgSend(v12, "length") != 0;

    if ([v12 length] > 1 || v14)
    {
      [(CDPUIAccessCodeEntryTextField *)self _handleMultiCharacterStringInput:v12 range:location, length];
LABEL_19:
      v15 = 0;
      goto LABEL_21;
    }

    if (length == 1)
    {
      separatorDeleteLocations = self->_separatorDeleteLocations;
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
      LODWORD(separatorDeleteLocations) = [(NSSet *)separatorDeleteLocations containsObject:v23];

      if (separatorDeleteLocations)
      {
        text2 = [(CDPUIAccessCodeEntryTextField *)self text];
        v24 = [text2 stringByReplacingCharactersInRange:location - 1 withString:{2, &stru_285826188}];
        [(CDPUIAccessCodeEntryTextField *)self setText:v24];

        goto LABEL_18;
      }
    }

    else if (!length)
    {
      separatorLocations = self->_separatorLocations;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
      LODWORD(separatorLocations) = [(NSSet *)separatorLocations containsObject:v17];

      if (separatorLocations)
      {
        v18 = MEMORY[0x277CCACA8];
        text2 = [(CDPUIAccessCodeEntryTextField *)self text];
        uppercaseString = [v12 uppercaseString];
        v21 = [v18 stringWithFormat:@"%@%@%@", text2, @"-", uppercaseString];
        [(CDPUIAccessCodeEntryTextField *)self setText:v21];

LABEL_18:
        goto LABEL_19;
      }
    }

    v15 = 1;
    goto LABEL_21;
  }

  accessCodeInputDelegate = [(CDPUIAccessCodeEntryTextField *)self accessCodeInputDelegate];
  [accessCodeInputDelegate accessCodeEntryTextFieldDidReturn:self];

LABEL_7:
  v15 = 0;
  v12 = textCopy;
LABEL_21:

  return v15;
}

- (void)textViewDidChange:(id)change
{
  [(CDPUIAccessCodeEntryTextField *)self updatePlaceholderVisibility];
  text = [(CDPUIAccessCodeEntryTextField *)self text];
  uppercaseString = [text uppercaseString];
  [(CDPUIAccessCodeEntryTextField *)self setText:uppercaseString];

  accessCodeInputDelegate = [(CDPUIAccessCodeEntryTextField *)self accessCodeInputDelegate];
  [accessCodeInputDelegate accessCodeEntryTextFieldDidUpdate:self];
}

- (void)_handleMultiCharacterStringInput:(id)input range:(_NSRange)range
{
  location = range.location;
  inputCopy = input;
  text = [(CDPUIAccessCodeEntryTextField *)self text];
  if ([text length] >= location)
  {
    v7 = [text substringToIndex:location];
  }

  else
  {
    v7 = &stru_285826188;
  }

  if ([text length] >= location)
  {
    v9 = [text substringFromIndex:location];
    v8 = [v9 stringByReplacingOccurrencesOfString:@"-" withString:&stru_285826188];
  }

  else
  {
    v8 = &stru_285826188;
  }

  v10 = [inputCopy stringByAppendingString:v8];

  [(CDPUIAccessCodeEntryTextField *)self setText:v7];
  if ([v10 length])
  {
    v11 = 0;
    do
    {
      v12 = [v10 substringWithRange:{v11, 1}];
      if ([(CDPUIAccessCodeEntryTextField *)self textView:self shouldChangeTextInRange:location replacementText:0, v12])
      {
        text2 = [(CDPUIAccessCodeEntryTextField *)self text];
        uppercaseString = [v12 uppercaseString];
        v15 = [text2 stringByAppendingString:uppercaseString];
        [(CDPUIAccessCodeEntryTextField *)self setText:v15];
      }

      else
      {
        ++location;
      }

      ++location;

      ++v11;
    }

    while (v11 < [v10 length]);
  }

  [(CDPUIAccessCodeEntryTextField *)self setSelectedRange:location, 0];
}

- (id)_sanitizeInputString:(id)string
{
  v3 = MEMORY[0x277CCA900];
  stringCopy = string;
  alphanumericCharacterSet = [v3 alphanumericCharacterSet];
  invertedSet = [alphanumericCharacterSet invertedSet];

  v7 = [stringCopy componentsSeparatedByCharactersInSet:invertedSet];

  v8 = [v7 componentsJoinedByString:&stru_285826188];

  return v8;
}

- (CDPUIAccessCodeEntryTextFieldDelegate)accessCodeInputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessCodeInputDelegate);

  return WeakRetained;
}

@end