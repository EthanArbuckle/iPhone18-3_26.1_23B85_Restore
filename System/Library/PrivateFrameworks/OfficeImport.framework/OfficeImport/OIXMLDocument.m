@interface OIXMLDocument
- (OIXMLDocument)initWithRootElement:(id)a3;
- (id)XMLString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createMutableXMLString;
@end

@implementation OIXMLDocument

- (id)XMLString
{
  v2 = [(OIXMLDocument *)self createMutableXMLString];

  return v2;
}

- (id)createMutableXMLString
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:100000];
  [(OIXMLElement *)self->_rootElement _appendXMLStringToString:v3 level:0];
  return v3;
}

- (OIXMLDocument)initWithRootElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OIXMLDocument;
  v5 = [(OIXMLDocument *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(OIXMLDocument *)v5 setRootElement:v4];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [OIXMLDocument alloc];
  v6 = [(OIXMLElement *)self->_rootElement copyWithZone:a3];
  v7 = [(OIXMLDocument *)v5 initWithRootElement:v6];

  v8 = [(OIXMLDocument *)self version];
  [(OIXMLDocument *)v7 setVersion:v8];

  v9 = [(OIXMLDocument *)self characterEncoding];
  [(OIXMLDocument *)v7 setCharacterEncoding:v9];

  v10 = [(NSString *)self->_encoding copyWithZone:a3];
  encoding = v7->_encoding;
  v7->_encoding = v10;

  return v7;
}

@end