@interface IMDRelayMessageToSuper_Default_Frame
- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters;
@end

@implementation IMDRelayMessageToSuper_Default_Frame

- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters
{
  v8 = MEMORY[0x277CCA900];
  charactersCopy = characters;
  contextCopy = context;
  parserCopy = parser;
  newlineCharacterSet = [v8 newlineCharacterSet];
  v13 = [charactersCopy stringByRemovingCharactersFromSet:newlineCharacterSet];

  v14.receiver = self;
  v14.super_class = IMDRelayMessageToSuper_Default_Frame;
  [(IMToSuperParserFrame *)&v14 parser:parserCopy context:contextCopy foundCharacters:v13];
}

@end