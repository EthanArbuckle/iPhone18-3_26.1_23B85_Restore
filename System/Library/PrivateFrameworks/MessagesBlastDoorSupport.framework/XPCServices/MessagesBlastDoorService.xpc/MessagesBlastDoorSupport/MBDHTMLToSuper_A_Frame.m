@interface MBDHTMLToSuper_A_Frame
- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7;
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation MBDHTMLToSuper_A_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v14 = a4;
  v21.receiver = self;
  v21.super_class = MBDHTMLToSuper_A_Frame;
  v15 = a8;
  [(MBDToSuperParserFrame *)&v21 parser:a3 context:v14 didStartElement:a5 namespaceURI:a6 qualifiedName:a7 attributes:v15];
  v16 = MBDIMCopyNormalizedAttributes(v15, 1, 0);

  v17 = [v16 objectForKey:@"href"];
  v18 = [v16 objectForKey:@"isrichlink"];
  if (v17)
  {
    v19 = [[NSURL alloc] initWithString:v17];
    if (v19)
    {
      [v14 pushLink:v19];
      *(&self->super.super._didPushMessagePartNumber + 1) = 1;
    }
  }

  if (v18)
  {
    v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 BOOLValue]);
    [v14 pushIsRichLink:v20];
    *(&self->super.super._didPushMessagePartNumber + 2) = 1;
  }
}

- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7
{
  v12 = a4;
  v13.receiver = self;
  v13.super_class = MBDHTMLToSuper_A_Frame;
  [(MBDToSuperParserFrame *)&v13 parser:a3 context:v12 didEndElement:a5 namespaceURI:a6 qualifiedName:a7];
  if (*(&self->super.super._didPushMessagePartNumber + 1))
  {
    [v12 popLink];
  }

  if (*(&self->super.super._didPushMessagePartNumber + 2))
  {
    [v12 popIsRichLink];
  }
}

@end