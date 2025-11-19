@interface PHLCDViewTextField
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (PHLCDViewTextField)initWithFrame:(CGRect)a3;
- (PHLCDViewTextFieldDelegate)lcdViewTextFieldDelegate;
- (void)_textFieldDidUpdate:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)dealloc;
- (void)deleteBackward;
- (void)paste:(id)a3;
- (void)reformatText;
- (void)replaceRange:(id)a3 withText:(id)a4;
- (void)setText:(id)a3;
@end

@implementation PHLCDViewTextField

- (PHLCDViewTextField)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = PHLCDViewTextField;
  v3 = [(PHLCDViewTextField *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel__textFieldDidUpdate_ name:*MEMORY[0x277D770B0] object:v3];

    v5 = [MEMORY[0x277CCA900] unicodeDirectionalCharactersSet];
    unicodeDirectionalCharactersSet = v3->_unicodeDirectionalCharactersSet;
    v3->_unicodeDirectionalCharactersSet = v5;

    v7 = [(NSCharacterSet *)v3->_unicodeDirectionalCharactersSet mutableCopy];
    v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" -./()"];
    [(NSCharacterSet *)v7 formUnionWithCharacterSet:v8];

    specialDialerCharacters = v3->_specialDialerCharacters;
    v3->_specialDialerCharacters = v7;

    v10 = [(PHLCDViewTextField *)v3 textInputTraits];
    [v10 setContentsIsSingleValue:1];

    [(PHLCDViewTextField *)v3 setNonEditingLinebreakMode:3];
    [(PHLCDViewTextField *)v3 setWritingToolsBehavior:-1];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHLCDViewTextField;
  [(PHLCDViewTextField *)&v4 dealloc];
}

- (void)reformatText
{
  v3 = [(PHLCDViewTextField *)self text];
  if ([v3 length])
  {
    if ([(PHLCDViewTextField *)self isEditing])
    {
      [(PHLCDViewTextField *)self selectionRange];
    }

    v17 = 0;
    v4 = [(PHLCDViewTextField *)self previousTextSuggestion];
    v5 = TUNetworkCountryCode();
    if (v5)
    {
      v6 = _PNCopyFormattedNumberSuggestionForDigitsWithCountry();
    }

    else
    {
      v7 = TUHomeCountryCode();
      v6 = _PNCopyFormattedNumberSuggestionForDigitsWithCountry();
    }

    if (v6)
    {
      v8 = TUNetworkCountryCode();
      if (v8)
      {
        v9 = PNCreateFormattedStringWithCountry();
      }

      else
      {
        v10 = TUHomeCountryCode();
        v9 = PNCreateFormattedStringWithCountry();
      }

      if (([v3 isEqualToString:v9] & 1) == 0)
      {
        v16.receiver = self;
        v16.super_class = PHLCDViewTextField;
        [(PHLCDViewTextField *)&v16 setText:v9];
        if ([(PHLCDViewTextField *)self isEditing])
        {
          Length = v17;
          if (Length > CFStringGetLength(v6))
          {
            Length = CFStringGetLength(v6);
          }

          v12 = MEMORY[0x277CCABB0];
          v13 = [MEMORY[0x277CCA900] unicodeDirectionalCharactersSet];
          v14 = [v12 numberWithBool:{objc_msgSend(v13, "characterIsMember:", objc_msgSend(v9, "characterAtIndex:", 0))}];
          v15 = [v14 integerValue];

          [(PHLCDViewTextField *)self setSelectionRange:v15 + Length, 0];
        }
      }

      [(PHLCDViewTextField *)self setPreviousTextSuggestion:v9];
      CFRelease(v6);
    }
  }
}

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = PHLCDViewTextField;
  [(PHLCDViewTextField *)&v4 setText:a3];
  [(PHLCDViewTextField *)self reformatText];
}

- (void)replaceRange:(id)a3 withText:(id)a4
{
  v5.receiver = self;
  v5.super_class = PHLCDViewTextField;
  [(PHLCDViewTextField *)&v5 replaceRange:a3 withText:a4];
  [(PHLCDViewTextField *)self reformatText];
}

- (void)deleteBackward
{
  v3 = [(PHLCDViewTextField *)self selectedTextRange];
  v4 = [v3 isEmpty];

  if (v4)
  {
    v5 = [(PHLCDViewTextField *)self beginningOfDocument];
    v6 = [(PHLCDViewTextField *)self selectedTextRange];
    v7 = [v6 end];
    v8 = [(PHLCDViewTextField *)self textRangeFromPosition:v5 toPosition:v7];
    v9 = [(PHLCDViewTextField *)self textInRange:v8];

    v10 = [(PHLCDViewTextField *)self specialDialerCharacters];
    v11 = [v10 invertedSet];
    v12 = [v9 rangeOfCharacterFromSet:v11 options:4];

    v13 = [(PHLCDViewTextField *)self beginningOfDocument];
    v14 = [(PHLCDViewTextField *)self positionFromPosition:v13 offset:v12 + 1];

    v15 = [(PHLCDViewTextField *)self textRangeFromPosition:v14 toPosition:v14];
    [(PHLCDViewTextField *)self setSelectedTextRange:v15];
    v16.receiver = self;
    v16.super_class = PHLCDViewTextField;
    [(PHLCDViewTextField *)&v16 deleteBackward];
  }

  else
  {
    v9 = [(PHLCDViewTextField *)self selectedTextRange];
    [(PHLCDViewTextField *)self replaceRange:v9 withText:&stru_285532CB8];
  }

  [(PHLCDViewTextField *)self reformatText];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v7.receiver = self;
  v7.super_class = PHLCDViewTextField;
  v5 = [(PHLCDViewTextField *)&v7 canPerformAction:a3 withSender:a4];
  if (NSSelectorFromString(&cfstr_Define.isa) == a3 || NSSelectorFromString(&cfstr_Translate.isa) == a3 || NSSelectorFromString(&cfstr_Capturetextfro.isa) == a3 || NSSelectorFromString(&cfstr_Showwritingtoo.isa) == a3)
  {
    return 0;
  }

  return v5;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4.receiver = self;
  v4.super_class = PHLCDViewTextField;
  v3 = a3;
  [(PHLCDViewTextField *)&v4 buildMenuWithBuilder:v3];
  [v3 removeMenuForIdentifier:{*MEMORY[0x277D76C98], v4.receiver, v4.super_class}];
}

- (void)paste:(id)a3
{
  v4 = [MEMORY[0x277D75810] generalPasteboard];
  v5 = [v4 string];
  v8 = [v5 encodedDialerString];

  WeakRetained = objc_loadWeakRetained(&self->_lcdViewTextFieldDelegate);
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = objc_loadWeakRetained(&self->_lcdViewTextFieldDelegate);
    [v7 textField:self didPasteString:v8];
  }
}

- (void)_textFieldDidUpdate:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lcdViewTextFieldDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_lcdViewTextFieldDelegate);
    v7 = [(PHLCDViewTextField *)self text];
    [v6 textField:self didUpdateString:v7];
  }

  v18 = [(PHLCDViewTextField *)self selectedTextRange];
  if ([v18 isEmpty])
  {
    v8 = [v18 end];
    v9 = [(PHLCDViewTextField *)self endOfDocument];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      [(PHLCDViewTextField *)self endEditing:1];
    }

    else
    {
      v11 = [(PHLCDViewTextField *)self selectedTextRange];
      v12 = [v11 end];
      v13 = [(PHLCDViewTextField *)self endOfDocument];
      v14 = [(PHLCDViewTextField *)self textRangeFromPosition:v12 toPosition:v13];
      v15 = [(PHLCDViewTextField *)self textInRange:v14];

      v16 = [v15 stringByRemovingCharactersFromSet:self->_unicodeDirectionalCharactersSet];
      v17 = [v16 length];

      if (!v17)
      {
        [(PHLCDViewTextField *)self endEditing:1];
      }
    }
  }

  [(PHLCDViewTextField *)self reformatText];
}

- (PHLCDViewTextFieldDelegate)lcdViewTextFieldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lcdViewTextFieldDelegate);

  return WeakRetained;
}

@end