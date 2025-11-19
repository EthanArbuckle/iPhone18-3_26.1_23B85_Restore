@interface _ECSVGProfileExtractor
- (id)baseProfile;
- (id)initWithSVGData:(id *)a1;
- (id)namespace;
- (id)version;
- (void)_parseIfNeeded;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
@end

@implementation _ECSVGProfileExtractor

- (id)initWithSVGData:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = _ECSVGProfileExtractor;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      v4 = [objc_alloc(MEMORY[0x277CCAE70]) initWithData:v3];
      v5 = a1[1];
      a1[1] = v4;

      [a1[1] setShouldResolveExternalEntities:0];
      [a1[1] setDelegate:a1];
      v6 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
      v7 = a1[6];
      a1[6] = v6;
    }
  }

  return a1;
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

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v18 = a3;
  v10 = a4;
  v11 = a7;
  if ([v10 ef_caseInsensitiveIsEqualToString:@"svg"])
  {
    v12 = [v11 objectForKeyedSubscript:@"xmlns"];
    v13 = self->_namespace;
    self->_namespace = v12;

    v14 = [v11 objectForKeyedSubscript:@"version"];
    version = self->_version;
    self->_version = v14;

    v16 = [v11 objectForKeyedSubscript:@"baseProfile"];
    baseProfile = self->_baseProfile;
    self->_baseProfile = v16;
  }

  [v18 abortParsing];
}

- (id)namespace
{
  if (a1)
  {
    v2 = a1;
    [a1 _parseIfNeeded];
    a1 = v2[2];
    v1 = vars8;
  }

  return a1;
}

- (id)version
{
  if (a1)
  {
    v2 = a1;
    [a1 _parseIfNeeded];
    a1 = v2[3];
    v1 = vars8;
  }

  return a1;
}

- (id)baseProfile
{
  if (a1)
  {
    v2 = a1;
    [a1 _parseIfNeeded];
    a1 = v2[4];
    v1 = vars8;
  }

  return a1;
}

@end