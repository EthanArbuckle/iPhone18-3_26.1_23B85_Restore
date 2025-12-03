@interface MBDSMSToSuper_TEXT_Frame
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters;
@end

@implementation MBDSMSToSuper_TEXT_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v9 = MBDIMCopyNormalizedAttributes(attributes, 1, 0);
  orderedParts = [contextCopy orderedParts];
  lastObject = [orderedParts lastObject];

  if (!lastObject)
  {
    lastObject = objc_alloc_init(SMSPart);
    [contextCopy _addPart:lastObject];
  }

  v12 = [v9 objectForKey:@"src"];
  v13 = SMSCopySanitizedContentLocation(v12);

  v14 = [[SMSTextPart alloc] initWithContentLocation:v13];
  [(SMSPart *)lastObject addTextPart:v14];
}

- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters
{
  parserCopy = parser;
  contextCopy = context;
  charactersCopy = characters;
  orderedParts = [contextCopy orderedParts];
  lastObject = [orderedParts lastObject];

  textParts = [lastObject textParts];
  lastObject2 = [textParts lastObject];

  if (lastObject2)
  {
    [lastObject2 appendText:charactersCopy];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = MBDSMSToSuper_TEXT_Frame;
    [(MBDSMSToSuper_Default_Frame *)&v15 parser:parserCopy context:contextCopy foundCharacters:charactersCopy];
  }
}

@end