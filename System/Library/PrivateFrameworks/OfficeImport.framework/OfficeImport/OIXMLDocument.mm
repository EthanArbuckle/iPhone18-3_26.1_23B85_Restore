@interface OIXMLDocument
- (OIXMLDocument)initWithRootElement:(id)element;
- (id)XMLString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createMutableXMLString;
@end

@implementation OIXMLDocument

- (id)XMLString
{
  createMutableXMLString = [(OIXMLDocument *)self createMutableXMLString];

  return createMutableXMLString;
}

- (id)createMutableXMLString
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:100000];
  [(OIXMLElement *)self->_rootElement _appendXMLStringToString:v3 level:0];
  return v3;
}

- (OIXMLDocument)initWithRootElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = OIXMLDocument;
  v5 = [(OIXMLDocument *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(OIXMLDocument *)v5 setRootElement:elementCopy];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [OIXMLDocument alloc];
  v6 = [(OIXMLElement *)self->_rootElement copyWithZone:zone];
  v7 = [(OIXMLDocument *)v5 initWithRootElement:v6];

  version = [(OIXMLDocument *)self version];
  [(OIXMLDocument *)v7 setVersion:version];

  characterEncoding = [(OIXMLDocument *)self characterEncoding];
  [(OIXMLDocument *)v7 setCharacterEncoding:characterEncoding];

  v10 = [(NSString *)self->_encoding copyWithZone:zone];
  encoding = v7->_encoding;
  v7->_encoding = v10;

  return v7;
}

@end