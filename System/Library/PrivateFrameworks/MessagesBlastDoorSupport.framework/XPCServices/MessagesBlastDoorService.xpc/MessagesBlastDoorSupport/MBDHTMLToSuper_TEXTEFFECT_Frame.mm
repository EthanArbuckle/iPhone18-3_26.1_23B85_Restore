@interface MBDHTMLToSuper_TEXTEFFECT_Frame
- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7;
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation MBDHTMLToSuper_TEXTEFFECT_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v14 = a4;
  v18.receiver = self;
  v18.super_class = MBDHTMLToSuper_TEXTEFFECT_Frame;
  v15 = a8;
  [(MBDToSuperParserFrame *)&v18 parser:a3 context:v14 didStartElement:a5 namespaceURI:a6 qualifiedName:a7 attributes:v15];
  v16 = MBDIMCopyNormalizedAttributes(v15, 1, 0);

  v17 = [v16 _stringForKey:@"type"];
  if ([v17 length])
  {
    [v14 pushTextEffectAttributeWithType:{objc_msgSend(v17, "unsignedIntValue")}];
  }
}

- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7
{
  v12.receiver = self;
  v12.super_class = MBDHTMLToSuper_TEXTEFFECT_Frame;
  v11 = a4;
  [(MBDToSuperParserFrame *)&v12 parser:a3 context:v11 didEndElement:a5 namespaceURI:a6 qualifiedName:a7];
  [v11 popTextEffectAttribute];
}

@end