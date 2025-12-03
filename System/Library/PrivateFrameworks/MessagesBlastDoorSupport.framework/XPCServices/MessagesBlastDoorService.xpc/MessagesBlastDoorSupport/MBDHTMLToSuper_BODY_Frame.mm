@interface MBDHTMLToSuper_BODY_Frame
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_BODY_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = MBDHTMLToSuper_BODY_Frame;
  attributesCopy = attributes;
  [(MBDToSuperParserFrame *)&v20 parser:parser context:contextCopy didStartElement:element namespaceURI:i qualifiedName:name attributes:attributesCopy];
  v16 = MBDIMCopyNormalizedAttributes(attributesCopy, 1, 0);

  v17 = [v16 objectForKey:@"dir"];
  v18 = v17;
  if (!v17)
  {
LABEL_4:
    v19 = -1;
    goto LABEL_6;
  }

  v19 = 1;
  if ([v17 rangeOfString:@"rtl" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v18 rangeOfString:@"ltr" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:
  [contextCopy setBaseWritingDirection:v19];
}

@end