@interface CDPUIAccessCodeEntryTextField
+ (unint64_t)accessKeyCharacterCount;
- (BOOL)isComplete;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (CDPUIAccessCodeEntryTextField)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (CDPUIAccessCodeEntryTextFieldDelegate)accessCodeInputDelegate;
- (id)_sanitizeInputString:(id)a3;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_handleMultiCharacterStringInput:(id)a3 range:(_NSRange)a4;
- (void)layoutSubviews;
- (void)setFont:(id)a3;
- (void)setPlaceholder:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setupSeparatorLocations;
- (void)setupUI;
- (void)textViewDidChange:(id)a3;
- (void)updatePlaceholderVisibility;
@end

@implementation CDPUIAccessCodeEntryTextField

- (CDPUIAccessCodeEntryTextField)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = CDPUIAccessCodeEntryTextField;
  v8 = [(CDPUIAccessCodeEntryTextField *)&v11 initWithFrame:a4 textContainer:?];
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
  v3 = [MEMORY[0x277D75348] labelColor];
  [(CDPUIAccessCodeEntryTextField *)self setTextColor:v3];

  [(CDPUIAccessCodeEntryTextField *)self setSpellCheckingType:1];
  [(CDPUIAccessCodeEntryTextField *)self setAutocapitalizationType:3];
  v4 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [v4 setAutoresizingMask:18];

  v5 = [MEMORY[0x277D75348] systemGray2Color];
  v6 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [v6 setTextColor:v5];

  v7 = [MEMORY[0x277D75348] clearColor];
  v8 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [v8 setBackgroundColor:v7];

  v9 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [v9 setText:0];

  [(CDPUIAccessCodeEntryTextField *)self setDelegate:self];
  [(CDPUIAccessCodeEntryTextField *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [v19 setEditable:0];

  v20 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [(CDPUIAccessCodeEntryTextField *)self addSubview:v20];
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
  v2 = self;
  v3 = [(CDPUIAccessCodeEntryTextField *)self text];
  v4 = [v3 length];
  LOBYTE(v2) = v4 == [(CDPUIAccessCodeEntryTextField *)v2 _totalCharacterLimit];

  return v2;
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
  v11 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [v12 setAutoresizingMask:18];
}

- (void)setFont:(id)a3
{
  v6.receiver = self;
  v6.super_class = CDPUIAccessCodeEntryTextField;
  [(CDPUIAccessCodeEntryTextField *)&v6 setFont:a3];
  v4 = [(CDPUIAccessCodeEntryTextField *)self font];
  v5 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [v5 setFont:v4];
}

- (void)setTextAlignment:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = CDPUIAccessCodeEntryTextField;
  [(CDPUIAccessCodeEntryTextField *)&v6 setTextAlignment:a3];
  v4 = [(CDPUIAccessCodeEntryTextField *)self textAlignment];
  v5 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [v5 setTextAlignment:v4];
}

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = CDPUIAccessCodeEntryTextField;
  [(CDPUIAccessCodeEntryTextField *)&v4 setText:a3];
  [(CDPUIAccessCodeEntryTextField *)self updatePlaceholderVisibility];
}

- (void)setPlaceholder:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  placeholder = self->_placeholder;
  self->_placeholder = v5;

  v7 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [v7 setText:v4];
}

- (void)updatePlaceholderVisibility
{
  v5 = [(CDPUIAccessCodeEntryTextField *)self text];
  v3 = [v5 length] != 0;
  v4 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  [v4 setHidden:v3];
}

- (id)viewForFirstBaselineLayout
{
  v2 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  v3 = [v2 viewForFirstBaselineLayout];

  return v3;
}

- (id)viewForLastBaselineLayout
{
  v2 = [(CDPUIAccessCodeEntryTextField *)self placeholderTextView];
  v3 = [v2 viewForLastBaselineLayout];

  return v3;
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  if (![v8 isEqualToString:@"\n"] || (-[CDPUIAccessCodeEntryTextField accessCodeInputDelegate](self, "accessCodeInputDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) == 0))
  {
    if (location >= [(CDPUIAccessCodeEntryTextField *)self _totalCharacterLimit])
    {
      goto LABEL_7;
    }

    v12 = [(CDPUIAccessCodeEntryTextField *)self _sanitizeInputString:v8];

    v13 = [(CDPUIAccessCodeEntryTextField *)self text];
    v14 = location < [v13 length] && objc_msgSend(v12, "length") != 0;

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
        v19 = [(CDPUIAccessCodeEntryTextField *)self text];
        v24 = [v19 stringByReplacingCharactersInRange:location - 1 withString:{2, &stru_285826188}];
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
        v19 = [(CDPUIAccessCodeEntryTextField *)self text];
        v20 = [v12 uppercaseString];
        v21 = [v18 stringWithFormat:@"%@%@%@", v19, @"-", v20];
        [(CDPUIAccessCodeEntryTextField *)self setText:v21];

LABEL_18:
        goto LABEL_19;
      }
    }

    v15 = 1;
    goto LABEL_21;
  }

  v11 = [(CDPUIAccessCodeEntryTextField *)self accessCodeInputDelegate];
  [v11 accessCodeEntryTextFieldDidReturn:self];

LABEL_7:
  v15 = 0;
  v12 = v8;
LABEL_21:

  return v15;
}

- (void)textViewDidChange:(id)a3
{
  [(CDPUIAccessCodeEntryTextField *)self updatePlaceholderVisibility];
  v4 = [(CDPUIAccessCodeEntryTextField *)self text];
  v5 = [v4 uppercaseString];
  [(CDPUIAccessCodeEntryTextField *)self setText:v5];

  v6 = [(CDPUIAccessCodeEntryTextField *)self accessCodeInputDelegate];
  [v6 accessCodeEntryTextFieldDidUpdate:self];
}

- (void)_handleMultiCharacterStringInput:(id)a3 range:(_NSRange)a4
{
  location = a4.location;
  v16 = a3;
  v6 = [(CDPUIAccessCodeEntryTextField *)self text];
  if ([v6 length] >= location)
  {
    v7 = [v6 substringToIndex:location];
  }

  else
  {
    v7 = &stru_285826188;
  }

  if ([v6 length] >= location)
  {
    v9 = [v6 substringFromIndex:location];
    v8 = [v9 stringByReplacingOccurrencesOfString:@"-" withString:&stru_285826188];
  }

  else
  {
    v8 = &stru_285826188;
  }

  v10 = [v16 stringByAppendingString:v8];

  [(CDPUIAccessCodeEntryTextField *)self setText:v7];
  if ([v10 length])
  {
    v11 = 0;
    do
    {
      v12 = [v10 substringWithRange:{v11, 1}];
      if ([(CDPUIAccessCodeEntryTextField *)self textView:self shouldChangeTextInRange:location replacementText:0, v12])
      {
        v13 = [(CDPUIAccessCodeEntryTextField *)self text];
        v14 = [v12 uppercaseString];
        v15 = [v13 stringByAppendingString:v14];
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

- (id)_sanitizeInputString:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 alphanumericCharacterSet];
  v6 = [v5 invertedSet];

  v7 = [v4 componentsSeparatedByCharactersInSet:v6];

  v8 = [v7 componentsJoinedByString:&stru_285826188];

  return v8;
}

- (CDPUIAccessCodeEntryTextFieldDelegate)accessCodeInputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessCodeInputDelegate);

  return WeakRetained;
}

@end