@interface MBDSMSToSuper_Default_Frame
- (void)_addAttachmentPartWithSource:(id)source toContext:(id)context;
- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters;
@end

@implementation MBDSMSToSuper_Default_Frame

- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters
{
  charactersCopy = characters;
  contextCopy = context;
  parserCopy = parser;
  v11 = +[NSCharacterSet newlineCharacterSet];
  v12 = [charactersCopy stringByRemovingCharactersFromSet:v11];

  v13.receiver = self;
  v13.super_class = MBDSMSToSuper_Default_Frame;
  [(MBDToSuperParserFrame *)&v13 parser:parserCopy context:contextCopy foundCharacters:v12];
}

- (void)_addAttachmentPartWithSource:(id)source toContext:(id)context
{
  sourceCopy = source;
  contextCopy = context;
  orderedParts = [contextCopy orderedParts];
  lastObject = [orderedParts lastObject];

  if (!lastObject)
  {
    lastObject = objc_alloc_init(SMSPart);
    [contextCopy _addPart:lastObject];
  }

  v8 = SMSCopySanitizedContentLocation(sourceCopy);
  v9 = [[SMSAttachmentPart alloc] initWithContentLocation:v8];
  [(SMSPart *)lastObject addAttachmentPart:v9];
}

@end