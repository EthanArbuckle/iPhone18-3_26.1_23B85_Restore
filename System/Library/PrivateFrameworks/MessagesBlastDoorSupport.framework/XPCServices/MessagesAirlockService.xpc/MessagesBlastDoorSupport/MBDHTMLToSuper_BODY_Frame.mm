@interface MBDHTMLToSuper_BODY_Frame
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_BODY_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v9 = MBDIMCopyNormalizedAttributes(attributes, 1, 0);
  v10 = [v9 objectForKey:@"dir"];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  v12 = 1;
  if ([v10 rangeOfString:@"rtl" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  if ([v11 rangeOfString:@"ltr" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
LABEL_4:
    v12 = -1;
  }

LABEL_6:
  [contextCopy setBaseWritingDirection:v12];
}

@end