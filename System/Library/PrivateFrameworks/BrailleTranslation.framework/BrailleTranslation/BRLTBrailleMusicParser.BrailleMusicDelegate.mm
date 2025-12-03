@interface BRLTBrailleMusicParser.BrailleMusicDelegate
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)parserDidEndDocument:(id)document;
@end

@implementation BRLTBrailleMusicParser.BrailleMusicDelegate

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v11 = sub_241E357F4();
  v13 = v12;
  if (i)
  {
    sub_241E357F4();
  }

  if (name)
  {
    sub_241E357F4();
  }

  parserCopy = parser;
  selfCopy = self;
  sub_241E299F8(v11, v13);
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  v10 = sub_241E357F4();
  v12 = v11;
  if (i)
  {
    sub_241E357F4();
  }

  if (name)
  {
    sub_241E357F4();
  }

  parserCopy = parser;
  selfCopy = self;
  sub_241E2A6B0(v10, v12);
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  v6 = sub_241E357F4();
  v8 = v7;
  parserCopy = parser;
  selfCopy = self;
  sub_241E2B5C8(v6, v8);
}

- (void)parserDidEndDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_241E2C7A0();
}

@end