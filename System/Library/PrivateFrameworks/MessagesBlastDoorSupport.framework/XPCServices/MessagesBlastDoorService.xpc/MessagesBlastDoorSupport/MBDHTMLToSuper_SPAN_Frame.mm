@interface MBDHTMLToSuper_SPAN_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_SPAN_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = MBDHTMLToSuper_SPAN_Frame;
  attributesCopy = attributes;
  [(MBDToSuperParserFrame *)&v23 parser:parser context:contextCopy didStartElement:element namespaceURI:i qualifiedName:name attributes:attributesCopy];
  v16 = MBDIMCopyNormalizedAttributes(attributesCopy, 1, 0);

  v17 = [v16 objectForKey:@"style"];
  v18 = MBDIMCreateDictionaryFromCSSString(v17, 1);
  v19 = [v18 objectForKey:@"font-family"];
  v20 = [v18 objectForKey:@"font-style"];
  v21 = [v18 objectForKey:@"font-weight"];
  v22 = [v18 objectForKey:@"text-decoration"];
  if (v19)
  {
    [contextCopy pushFontFamily:v19];
    *(&self->super.super._didPushMessagePartNumber + 1) = 1;
  }

  if (v21 && ([v21 rangeOfString:@"bold" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v21, "integerValue") >= 700))
  {
    [contextCopy incrementBoldCount];
    *(&self->super.super._didPushMessagePartNumber + 2) = 1;
  }

  if (v20 && ([v20 rangeOfString:@"italic" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v20, "rangeOfString:options:", @"oblique", 1) != 0x7FFFFFFFFFFFFFFFLL))
  {
    [contextCopy incrementItalicCount];
    *(&self->super.super._didPushMessagePartNumber + 3) = 1;
  }

  if (v22)
  {
    if ([v22 rangeOfString:@"under" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [contextCopy incrementUnderlineCount];
      *(&self->super.super._didPushMessagePartNumber + 4) = 1;
    }

    if ([v22 rangeOfString:@"line-through" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [contextCopy incrementStrikethroughCount];
      *(&self->super.super._didPushMessagePartNumber + 5) = 1;
    }
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = MBDHTMLToSuper_SPAN_Frame;
  [(MBDToSuperParserFrame *)&v13 parser:parser context:contextCopy didEndElement:element namespaceURI:i qualifiedName:name];
  if (*(&self->super.super._didPushMessagePartNumber + 1))
  {
    [contextCopy popFontFamily];
  }

  if (*(&self->super.super._didPushMessagePartNumber + 2))
  {
    [contextCopy decrementBoldCount];
  }

  if (*(&self->super.super._didPushMessagePartNumber + 3))
  {
    [contextCopy decrementItalicCount];
  }

  if (*(&self->super.super._didPushMessagePartNumber + 4))
  {
    [contextCopy decrementUnderlineCount];
  }

  if (*(&self->super.super._didPushMessagePartNumber + 5))
  {
    [contextCopy decrementStrikethroughCount];
  }
}

@end