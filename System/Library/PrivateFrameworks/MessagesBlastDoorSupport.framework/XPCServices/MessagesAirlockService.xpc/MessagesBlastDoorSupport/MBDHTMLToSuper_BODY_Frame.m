@interface MBDHTMLToSuper_BODY_Frame
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation MBDHTMLToSuper_BODY_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v13 = a4;
  v9 = MBDIMCopyNormalizedAttributes(a8, 1, 0);
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
  [v13 setBaseWritingDirection:v12];
}

@end