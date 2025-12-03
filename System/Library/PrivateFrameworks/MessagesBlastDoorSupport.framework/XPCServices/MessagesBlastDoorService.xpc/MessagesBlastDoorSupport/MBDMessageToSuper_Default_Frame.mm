@interface MBDMessageToSuper_Default_Frame
- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters;
@end

@implementation MBDMessageToSuper_Default_Frame

- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters
{
  charactersCopy = characters;
  contextCopy = context;
  parserCopy = parser;
  v11 = +[NSCharacterSet newlineCharacterSet];
  v12 = [charactersCopy stringByRemovingCharactersFromSet:v11];

  v13.receiver = self;
  v13.super_class = MBDMessageToSuper_Default_Frame;
  [(MBDToSuperParserFrame *)&v13 parser:parserCopy context:contextCopy foundCharacters:v12];
}

@end