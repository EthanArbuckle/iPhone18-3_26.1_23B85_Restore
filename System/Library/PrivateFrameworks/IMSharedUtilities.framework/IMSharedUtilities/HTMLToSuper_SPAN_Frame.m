@interface HTMLToSuper_SPAN_Frame
- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7;
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation HTMLToSuper_SPAN_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v15 = IMCopyNormalizedAttributes(a8, 1, 0);
  v10 = IMCreateDictionaryFromCSSString([v15 objectForKey:@"style"], 1);
  v11 = [v10 objectForKey:@"font-family"];
  v12 = [v10 objectForKey:@"font-style"];
  v13 = [v10 objectForKey:@"font-weight"];
  v14 = [v10 objectForKey:@"text-decoration"];
  if (v11)
  {
    [a4 pushFontFamily:v11];
    self->_shouldPopFontFamily = 1;
  }

  if (v13 && ([v13 rangeOfString:@"bold" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v13, "integerValue") >= 700))
  {
    [a4 incrementBoldCount];
    self->_shouldDecrementBoldCount = 1;
  }

  if (v12 && ([v12 rangeOfString:@"italic" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v12, "rangeOfString:options:", @"oblique", 1) != 0x7FFFFFFFFFFFFFFFLL))
  {
    [a4 incrementItalicCount];
    self->_shouldDecrementItalicCount = 1;
  }

  if (v14)
  {
    if ([v14 rangeOfString:@"under" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a4 incrementUnderlineCount];
      self->_shouldDecrementUnderlineCount = 1;
    }

    if ([v14 rangeOfString:@"line-through" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a4 incrementStrikethroughCount];
      self->_shouldDecrementStrikeCount = 1;
    }
  }
}

- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7
{
  if (self->_shouldPopFontFamily)
  {
    [a4 popFontFamily];
  }

  if (self->_shouldDecrementBoldCount)
  {
    [a4 decrementBoldCount];
  }

  if (self->_shouldDecrementItalicCount)
  {
    [a4 decrementItalicCount];
  }

  if (self->_shouldDecrementUnderlineCount)
  {
    [a4 decrementUnderlineCount];
  }

  if (self->_shouldDecrementStrikeCount)
  {

    MEMORY[0x1EEE66B58](a4, sel_decrementStrikethroughCount);
  }
}

@end