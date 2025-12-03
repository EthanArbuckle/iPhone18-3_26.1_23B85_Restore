@interface MBDHTMLToSuper_SPAN_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_SPAN_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v10 = MBDIMCopyNormalizedAttributes(attributes, 1, 0);
  v11 = [v10 objectForKey:@"style"];
  v12 = MBDIMCreateDictionaryFromCSSString(v11, 1);
  v13 = [v12 objectForKey:@"font-family"];
  v14 = [v12 objectForKey:@"font-style"];
  v15 = [v12 objectForKey:@"font-weight"];
  v16 = [v12 objectForKey:@"text-decoration"];
  if (v13)
  {
    [contextCopy pushFontFamily:v13];
    self->_shouldPopFontFamily = 1;
  }

  if (v15 && ([v15 rangeOfString:@"bold" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v15, "integerValue") >= 700))
  {
    [contextCopy incrementBoldCount];
    self->_shouldDecrementBoldCount = 1;
  }

  if (v14 && ([v14 rangeOfString:@"italic" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v14, "rangeOfString:options:", @"oblique", 1) != 0x7FFFFFFFFFFFFFFFLL))
  {
    [contextCopy incrementItalicCount];
    self->_shouldDecrementItalicCount = 1;
  }

  if (v16)
  {
    if ([v16 rangeOfString:@"under" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [contextCopy incrementUnderlineCount];
      self->_shouldDecrementUnderlineCount = 1;
    }

    if ([v16 rangeOfString:@"line-through" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [contextCopy incrementStrikethroughCount];
      self->_shouldDecrementStrikeCount = 1;
    }
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  parserCopy = parser;
  contextCopy = context;
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  if (self->_shouldPopFontFamily)
  {
    [contextCopy popFontFamily];
  }

  if (self->_shouldDecrementBoldCount)
  {
    [contextCopy decrementBoldCount];
  }

  if (self->_shouldDecrementItalicCount)
  {
    [contextCopy decrementItalicCount];
  }

  if (self->_shouldDecrementUnderlineCount)
  {
    [contextCopy decrementUnderlineCount];
  }

  if (self->_shouldDecrementStrikeCount)
  {
    [contextCopy decrementStrikethroughCount];
  }
}

@end