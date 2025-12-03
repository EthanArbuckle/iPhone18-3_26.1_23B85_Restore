@interface _ECSVGProfileExtractor
- (id)baseProfile;
- (id)initWithSVGData:(id *)data;
- (id)namespace;
- (id)version;
- (void)_parseIfNeeded;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation _ECSVGProfileExtractor

- (id)initWithSVGData:(id *)data
{
  v3 = a2;
  if (data)
  {
    v9.receiver = data;
    v9.super_class = _ECSVGProfileExtractor;
    data = objc_msgSendSuper2(&v9, sel_init);
    if (data)
    {
      v4 = [objc_alloc(MEMORY[0x277CCAE70]) initWithData:v3];
      v5 = data[1];
      data[1] = v4;

      [data[1] setShouldResolveExternalEntities:0];
      [data[1] setDelegate:data];
      v6 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
      v7 = data[6];
      data[6] = v6;
    }
  }

  return data;
}

- (void)_parseIfNeeded
{
  [(NSConditionLock *)self->_parseLock lock];
  if (![(NSConditionLock *)self->_parseLock condition])
  {
    [(NSXMLParser *)self->_parser parse];
  }

  parseLock = self->_parseLock;

  [(NSConditionLock *)parseLock unlockWithCondition:1];
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  parserCopy = parser;
  elementCopy = element;
  attributesCopy = attributes;
  if ([elementCopy ef_caseInsensitiveIsEqualToString:@"svg"])
  {
    v12 = [attributesCopy objectForKeyedSubscript:@"xmlns"];
    v13 = self->_namespace;
    self->_namespace = v12;

    v14 = [attributesCopy objectForKeyedSubscript:@"version"];
    version = self->_version;
    self->_version = v14;

    v16 = [attributesCopy objectForKeyedSubscript:@"baseProfile"];
    baseProfile = self->_baseProfile;
    self->_baseProfile = v16;
  }

  [parserCopy abortParsing];
}

- (id)namespace
{
  if (self)
  {
    selfCopy = self;
    [self _parseIfNeeded];
    self = selfCopy[2];
    v1 = vars8;
  }

  return self;
}

- (id)version
{
  if (self)
  {
    selfCopy = self;
    [self _parseIfNeeded];
    self = selfCopy[3];
    v1 = vars8;
  }

  return self;
}

- (id)baseProfile
{
  if (self)
  {
    selfCopy = self;
    [self _parseIfNeeded];
    self = selfCopy[4];
    v1 = vars8;
  }

  return self;
}

@end