@interface MBDHTMLToSuper_BODY_Frame
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation MBDHTMLToSuper_BODY_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v14 = a4;
  v20.receiver = self;
  v20.super_class = MBDHTMLToSuper_BODY_Frame;
  v15 = a8;
  [(MBDToSuperParserFrame *)&v20 parser:a3 context:v14 didStartElement:a5 namespaceURI:a6 qualifiedName:a7 attributes:v15];
  v16 = MBDIMCopyNormalizedAttributes(v15, 1, 0);

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
  [v14 setBaseWritingDirection:v19];
}

@end