@interface BRLTBrailleMusicParser.BrailleMusicDelegate
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)parserDidEndDocument:(id)a3;
@end

@implementation BRLTBrailleMusicParser.BrailleMusicDelegate

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v11 = sub_241E357F4();
  v13 = v12;
  if (a5)
  {
    sub_241E357F4();
  }

  if (a6)
  {
    sub_241E357F4();
  }

  v14 = a3;
  v15 = self;
  sub_241E299F8(v11, v13);
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v10 = sub_241E357F4();
  v12 = v11;
  if (a5)
  {
    sub_241E357F4();
  }

  if (a6)
  {
    sub_241E357F4();
  }

  v13 = a3;
  v14 = self;
  sub_241E2A6B0(v10, v12);
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v6 = sub_241E357F4();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_241E2B5C8(v6, v8);
}

- (void)parserDidEndDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_241E2C7A0();
}

@end