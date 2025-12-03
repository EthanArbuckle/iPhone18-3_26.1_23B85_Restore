@interface ENUIVerificationCodeEntryView
+ (id)generatorFieldFont;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)firstRectForRange:(id)range;
- (ENUIVerificationCodeEntryView)initWithFrame:(CGRect)frame;
- (NSString)stringValue;
- (UITextInputDelegate)inputDelegate;
- (UITextInputTokenizer)tokenizer;
- (UITextPosition)endOfDocument;
- (UITextRange)selectedTextRange;
- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction;
- (id)positionFromPosition:(id)position offset:(int64_t)offset;
- (id)textInRange:(id)range;
- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition;
- (int64_t)comparePosition:(id)position toPosition:(id)toPosition;
- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition;
- (void)_syncStringValueToLabels;
- (void)_updateFonts:(id)fonts;
- (void)dealloc;
- (void)deleteBackward;
- (void)emitCodeEnteredNotification;
- (void)insertText:(id)text;
- (void)passcodeFieldTapped:(id)tapped;
- (void)replaceRange:(id)range withText:(id)text;
- (void)setStringValue:(id)value;
- (void)updateConstraints;
@end

@implementation ENUIVerificationCodeEntryView

- (ENUIVerificationCodeEntryView)initWithFrame:(CGRect)frame
{
  v25.receiver = self;
  v25.super_class = ENUIVerificationCodeEntryView;
  v3 = [(ENUIVerificationCodeEntryView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ENUIVerificationCodeEntryView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    stringValue = v4->_stringValue;
    v4->_stringValue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    generatorFieldFont = [objc_opt_class() generatorFieldFont];
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = 8;
    do
    {
      v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v14 setFont:generatorFieldFont];
      [v14 setText:@"—"];
      [v14 setLineBreakMode:2];
      [v14 setTextAlignment:1];
      [(ENUIVerificationCodeEntryView *)v4 addSubview:v14];
      [v7 addObject:v14];

      --v13;
    }

    while (v13);
    v15 = [v7 copy];
    generatorFields = v4->_generatorFields;
    v4->_generatorFields = v15;

    LODWORD(v17) = 1144750080;
    [(ENUIVerificationCodeEntryView *)v4 setContentCompressionResistancePriority:0 forAxis:v17];
    LODWORD(v18) = 1144750080;
    [(ENUIVerificationCodeEntryView *)v4 setContentHuggingPriority:0 forAxis:v18];
    LODWORD(v19) = 1144750080;
    [(ENUIVerificationCodeEntryView *)v4 setContentCompressionResistancePriority:1 forAxis:v19];
    LODWORD(v20) = 1132068864;
    [(ENUIVerificationCodeEntryView *)v4 setContentHuggingPriority:1 forAxis:v20];
    v21 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_passcodeFieldTapped_];
    tapGestureRecognizer = v4->_tapGestureRecognizer;
    v4->_tapGestureRecognizer = v21;

    [(ENUIVerificationCodeEntryView *)v4 addGestureRecognizer:v4->_tapGestureRecognizer];
    v4->_passcodeFieldDisabled = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__updateFonts_ name:*MEMORY[0x277D76810] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = ENUIVerificationCodeEntryView;
  [(ENUIVerificationCodeEntryView *)&v4 dealloc];
}

- (void)_updateFonts:(id)fonts
{
  v16 = *MEMORY[0x277D85DE8];
  generatorFieldFont = [objc_opt_class() generatorFieldFont];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_generatorFields;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setFont:{generatorFieldFont, v11}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(ENUIVerificationCodeEntryView *)self setNeedsUpdateConstraints];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_syncStringValueToLabels
{
  for (i = 0; i != 8; ++i)
  {
    if (i >= [(NSMutableString *)self->_stringValue length])
    {
      v4 = [(NSArray *)self->_generatorFields objectAtIndexedSubscript:i];
      [v4 setText:@"—"];
    }

    else
    {
      v4 = [(NSMutableString *)self->_stringValue substringWithRange:i, 1];
      v5 = [(NSArray *)self->_generatorFields objectAtIndexedSubscript:i];
      [v5 setText:v4];
    }
  }

  [(ENUIVerificationCodeEntryView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v37[2] = *MEMORY[0x277D85DE8];
  if (self->_activeConstraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:?];
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  traitCollection = [(ENUIVerificationCodeEntryView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  maximumContentSizeCategory = [objc_opt_class() maximumContentSizeCategory];
  v7 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, maximumContentSizeCategory);

  if (v7 == NSOrderedDescending)
  {
    v8 = MEMORY[0x277D75C80];
    v37[0] = traitCollection;
    maximumContentSizeCategory2 = [objc_opt_class() maximumContentSizeCategory];
    v10 = [v8 traitCollectionWithPreferredContentSizeCategory:maximumContentSizeCategory2];
    v37[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v12 = [v8 traitCollectionWithTraitsFromCollections:v11];

    traitCollection = v12;
  }

  v13 = MEMORY[0x277D75520];
  textStyle = [objc_opt_class() textStyle];
  v15 = [v13 metricsForTextStyle:textStyle];
  v33 = traitCollection;
  [v15 scaledValueForValue:traitCollection compatibleWithTraitCollection:25.0];
  v17 = v16;

  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  for (i = 0; i != 8; ++i)
  {
    v20 = MEMORY[0x277CCAAD0];
    if (i)
    {
      v21 = [(NSArray *)self->_generatorFields objectAtIndexedSubscript:i];
      firstObject = [(NSArray *)self->_generatorFields firstObject];
      v23 = [v20 constraintWithItem:v21 attribute:11 relatedBy:0 toItem:firstObject attribute:11 multiplier:1.0 constant:0.0];
      [v3 addObject:v23];
    }

    else
    {
      v35 = @"generatorLabel";
      v21 = [(NSArray *)self->_generatorFields objectAtIndexedSubscript:0];
      v36 = v21;
      firstObject = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v23 = [v20 constraintsWithVisualFormat:@"V:|[generatorLabel]|" options:0 metrics:0 views:firstObject];
      [v3 addObjectsFromArray:v23];
    }

    v24 = MEMORY[0x277CCAAD0];
    v25 = [(NSArray *)self->_generatorFields objectAtIndexedSubscript:i];
    v26 = [v24 constraintWithItem:v25 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v17];
    [v3 addObject:v26];

    v27 = [(NSArray *)self->_generatorFields objectAtIndexedSubscript:i];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"codeGeneratorLabel%d", i];
    [v18 setObject:v27 forKey:v28];
  }

  v29 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|[codeGeneratorLabel0]-(DIGIT_SPACING)-[codeGeneratorLabel1]-(DIGIT_SPACING)-[codeGeneratorLabel2]-(DIGIT_SPACING)-[codeGeneratorLabel3]-(GROUP_SEPARATOR_SPACING)-[codeGeneratorLabel4]-(DIGIT_SPACING)-[codeGeneratorLabel5]-(DIGIT_SPACING)-[codeGeneratorLabel6]-(DIGIT_SPACING)-[codeGeneratorLabel7]|" options:0x10000 metrics:&unk_2863A0450 views:v18];
  [v3 addObjectsFromArray:v29];
  v30 = [v3 copy];
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = v30;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_activeConstraints];
  v34.receiver = self;
  v34.super_class = ENUIVerificationCodeEntryView;
  [(ENUIVerificationCodeEntryView *)&v34 updateConstraints];

  v32 = *MEMORY[0x277D85DE8];
}

- (void)emitCodeEnteredNotification
{
  didEnterCode = self->_didEnterCode;
  if (didEnterCode)
  {
    didEnterCode[2]();
  }
}

- (NSString)stringValue
{
  v2 = [(NSMutableString *)self->_stringValue copy];

  return v2;
}

- (void)setStringValue:(id)value
{
  valueCopy = value;
  if ([valueCopy length] >= 9)
  {
    [(ENUIVerificationCodeEntryView *)a2 setStringValue:?];
  }

  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];
  v7 = [valueCopy rangeOfCharacterFromSet:invertedSet];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ENUIVerificationCodeEntryView *)a2 setStringValue:?];
  }

  stringValue = self->_stringValue;
  v9 = [valueCopy copy];
  [(NSMutableString *)stringValue setString:v9];

  [(ENUIVerificationCodeEntryView *)self _syncStringValueToLabels];
  if ([(NSMutableString *)self->_stringValue length]== 8)
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_emitCodeEnteredNotification object:0];
    [(ENUIVerificationCodeEntryView *)self performSelector:sel_emitCodeEnteredNotification withObject:0 afterDelay:1.0];
  }
}

- (void)insertText:(id)text
{
  textCopy = text;
  if (-[NSMutableString length](self->_stringValue, "length") != 8 && ([textCopy isEqualToString:@"\n"] & 1) == 0)
  {
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    invertedSet = [decimalDigitCharacterSet invertedSet];

    if ([textCopy rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(textCopy, "length"))
    {
      [(NSMutableString *)self->_stringValue appendString:textCopy];
      [(ENUIVerificationCodeEntryView *)self _syncStringValueToLabels];
      if ([(NSMutableString *)self->_stringValue length]== 8)
      {
        [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_emitCodeEnteredNotification object:0];
        [(ENUIVerificationCodeEntryView *)self performSelector:sel_emitCodeEnteredNotification withObject:0 afterDelay:1.0];
      }

      didEnterDigit = [(ENUIVerificationCodeEntryView *)self didEnterDigit];

      if (didEnterDigit)
      {
        didEnterDigit2 = [(ENUIVerificationCodeEntryView *)self didEnterDigit];
        didEnterDigit2[2]();
      }
    }
  }
}

- (void)deleteBackward
{
  if ([(NSMutableString *)self->_stringValue length])
  {
    [(NSMutableString *)self->_stringValue deleteCharactersInRange:[(NSMutableString *)self->_stringValue length]- 1, 1];
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_emitCodeEnteredNotification object:0];

    [(ENUIVerificationCodeEntryView *)self _syncStringValueToLabels];
  }
}

- (void)passcodeFieldTapped:(id)tapped
{
  if ([(ENUIVerificationCodeEntryView *)self canBecomeFirstResponder])
  {

    [(ENUIVerificationCodeEntryView *)self becomeFirstResponder];
  }
}

+ (id)generatorFieldFont
{
  v3 = MEMORY[0x277D74300];
  textStyle = [self textStyle];
  maximumContentSizeCategory = [self maximumContentSizeCategory];
  v6 = [v3 _preferredFontForTextStyle:textStyle maximumContentSizeCategory:maximumContentSizeCategory];

  return v6;
}

- (id)textInRange:(id)range
{
  rangeCopy = range;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = self->_stringValue;
    range = [rangeCopy range];
    v8 = [(NSMutableString *)stringValue substringWithRange:range, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)replaceRange:(id)range withText:(id)text
{
  rangeCopy = range;
  textCopy = text;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = self->_stringValue;
    range = [rangeCopy range];
    [(NSMutableString *)stringValue replaceCharactersInRange:range withString:v9, textCopy];
    didEnterDigit = [(ENUIVerificationCodeEntryView *)self didEnterDigit];

    if (didEnterDigit)
    {
      didEnterDigit2 = [(ENUIVerificationCodeEntryView *)self didEnterDigit];
      didEnterDigit2[2]();
    }
  }
}

- (UITextRange)selectedTextRange
{
  v2 = [(NSMutableString *)self->_stringValue length];

  return [ENUITextRange rangeWithRange:v2, 0];
}

- (UITextPosition)endOfDocument
{
  v2 = [(NSMutableString *)self->_stringValue length];

  return [ENUITextPosition positionWithLocation:v2];
}

- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition
{
  positionCopy = position;
  toPositionCopy = toPosition;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = positionCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = toPositionCopy;
      location = [v7 location];
      location2 = [v8 location];

      v11 = +[ENUITextRange rangeWithRange:](ENUITextRange, "rangeWithRange:", location, location2 - [v7 location]);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)positionFromPosition:(id)position offset:(int64_t)offset
{
  positionCopy = position;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [positionCopy location] + offset, v7 <= -[NSMutableString length](self->_stringValue, "length")))
  {
    v8 = [ENUITextPosition positionWithLocation:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)comparePosition:(id)position toPosition:(id)toPosition
{
  positionCopy = position;
  toPositionCopy = toPosition;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = positionCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = toPositionCopy;
      location = [v7 location];
      if (location >= [v8 location])
      {
        location2 = [v7 location];
        v10 = location2 > [v8 location];
      }

      else
      {
        v10 = -1;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition
{
  positionCopy = position;
  toPositionCopy = toPosition;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = positionCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      location = [toPositionCopy location];
      v9 = location - [v7 location];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UITextInputTokenizer)tokenizer
{
  v2 = [objc_alloc(MEMORY[0x277D75BF8]) initWithTextInput:self];

  return v2;
}

- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[ENUITextRange rangeWithRange:](ENUITextRange, "rangeWithRange:", [positionCopy location], 0);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)firstRectForRange:(id)range
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)caretRectForPosition:(id)position
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UITextInputDelegate)inputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);

  return WeakRetained;
}

- (void)setStringValue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENUIVerificationCodeEntryView.m" lineNumber:177 description:@"Illegal length for stringValue"];
}

- (void)setStringValue:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENUIVerificationCodeEntryView.m" lineNumber:178 description:@"Illegal chars in stringValue"];
}

@end