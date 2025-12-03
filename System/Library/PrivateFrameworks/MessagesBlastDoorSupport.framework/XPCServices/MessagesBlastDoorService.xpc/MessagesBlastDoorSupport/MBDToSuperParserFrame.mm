@interface MBDToSuperParserFrame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDToSuperParserFrame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  attributesCopy = attributes;
  if ([contextCopy supportsMessagePartNumbersInAttributes])
  {
    v11 = [attributesCopy _stringForKey:@"message-part"];
    if ([v11 length])
    {
      [contextCopy pushMessagePartNumber:{objc_msgSend(v11, "unsignedIntValue")}];
      self->_didPushMessagePartNumber = 1;
    }
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if (self->_didPushMessagePartNumber)
  {
    [context popMessagePartNumber];
  }
}

@end