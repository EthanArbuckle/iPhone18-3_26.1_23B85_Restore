@interface HTMLToSuper_BODY_Frame
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation HTMLToSuper_BODY_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v12 = IMCopyNormalizedAttributes(attributes, 1, 0);
  v9 = [v12 objectForKey:@"dir"];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  v11 = 1;
  if ([v9 rangeOfString:@"rtl" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  if ([v10 rangeOfString:@"ltr" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
LABEL_4:
    v11 = -1;
  }

LABEL_6:
  [context setBaseWritingDirection:v11];
}

@end