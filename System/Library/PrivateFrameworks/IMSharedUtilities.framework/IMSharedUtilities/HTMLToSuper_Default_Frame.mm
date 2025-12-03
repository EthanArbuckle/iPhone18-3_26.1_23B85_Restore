@interface HTMLToSuper_Default_Frame
- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters;
@end

@implementation HTMLToSuper_Default_Frame

- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters
{
  v5.receiver = self;
  v5.super_class = HTMLToSuper_Default_Frame;
  -[IMToSuperParserFrame parser:context:foundCharacters:](&v5, sel_parser_context_foundCharacters_, parser, context, [characters stringByRemovingCharactersFromSet:{objc_msgSend(MEMORY[0x1E696AB08], "newlineCharacterSet")}]);
}

@end