@interface BLEpubRightsDataParser
- (BLEpubRightsDataParser)initWithXMLData:(id)data;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation BLEpubRightsDataParser

- (BLEpubRightsDataParser)initWithXMLData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = BLEpubRightsDataParser;
  v5 = [(BLEpubRightsDataParser *)&v8 init];
  if (v5)
  {
    v6 = [[NSXMLParser alloc] initWithData:dataCopy];
    [v6 setDelegate:v5];
    [v6 parse];
  }

  return v5;
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  parserCopy = parser;
  charactersCopy = characters;
  if (self->_isSinfElement)
  {
    buffer = self->_buffer;
    if (!buffer)
    {
      v8 = objc_alloc_init(NSMutableString);
      v9 = self->_buffer;
      self->_buffer = v8;

      buffer = self->_buffer;
    }

    [(NSMutableString *)buffer appendString:charactersCopy];
  }
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if (self->_isSinfElement)
  {
    v7 = [[NSData alloc] initWithBase64EncodedString:self->_buffer options:0];
    sinfData = self->_sinfData;
    self->_sinfData = v7;

    self->_isSinfElement = 0;
  }
}

@end