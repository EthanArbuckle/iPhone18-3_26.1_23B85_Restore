@interface HTMLToSuper_SPAN_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation HTMLToSuper_SPAN_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v15 = IMCopyNormalizedAttributes(attributes, 1, 0);
  v10 = IMCreateDictionaryFromCSSString([v15 objectForKey:@"style"], 1);
  v11 = [v10 objectForKey:@"font-family"];
  v12 = [v10 objectForKey:@"font-style"];
  v13 = [v10 objectForKey:@"font-weight"];
  v14 = [v10 objectForKey:@"text-decoration"];
  if (v11)
  {
    [context pushFontFamily:v11];
    self->_shouldPopFontFamily = 1;
  }

  if (v13 && ([v13 rangeOfString:@"bold" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v13, "integerValue") >= 700))
  {
    [context incrementBoldCount];
    self->_shouldDecrementBoldCount = 1;
  }

  if (v12 && ([v12 rangeOfString:@"italic" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v12, "rangeOfString:options:", @"oblique", 1) != 0x7FFFFFFFFFFFFFFFLL))
  {
    [context incrementItalicCount];
    self->_shouldDecrementItalicCount = 1;
  }

  if (v14)
  {
    if ([v14 rangeOfString:@"under" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [context incrementUnderlineCount];
      self->_shouldDecrementUnderlineCount = 1;
    }

    if ([v14 rangeOfString:@"line-through" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [context incrementStrikethroughCount];
      self->_shouldDecrementStrikeCount = 1;
    }
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if (self->_shouldPopFontFamily)
  {
    [context popFontFamily];
  }

  if (self->_shouldDecrementBoldCount)
  {
    [context decrementBoldCount];
  }

  if (self->_shouldDecrementItalicCount)
  {
    [context decrementItalicCount];
  }

  if (self->_shouldDecrementUnderlineCount)
  {
    [context decrementUnderlineCount];
  }

  if (self->_shouldDecrementStrikeCount)
  {

    MEMORY[0x1EEE66B58](context, sel_decrementStrikethroughCount);
  }
}

@end