@interface BLEpubRightsDataParser
- (BLEpubRightsDataParser)initWithXMLData:(id)a3;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation BLEpubRightsDataParser

- (BLEpubRightsDataParser)initWithXMLData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BLEpubRightsDataParser;
  v5 = [(BLEpubRightsDataParser *)&v8 init];
  if (v5)
  {
    v6 = [[NSXMLParser alloc] initWithData:v4];
    [v6 setDelegate:v5];
    [v6 parse];
  }

  return v5;
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v10 = a3;
  v6 = a4;
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

    [(NSMutableString *)buffer appendString:v6];
  }
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
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