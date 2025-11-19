@interface HTMLToSuper_BODY_Frame
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation HTMLToSuper_BODY_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v12 = IMCopyNormalizedAttributes(a8, 1, 0);
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
  [a4 setBaseWritingDirection:v11];
}

@end