@interface CoreDAVItem
+ (id)parseRuleCache;
- (CoreDAVItem)initWithNameSpace:(id)a3 andName:(id)a4;
- (NSString)description;
- (id)copyParseRules;
- (id)generateXMLString;
- (id)hashString;
- (id)payloadAsString;
- (int64_t)payloadAsNSInteger;
- (void)parserFoundAttributes:(id)a3;
- (void)parserFoundUnrecognizedElement:(id)a3;
- (void)setPayloadAsString:(id)a3;
- (void)write:(id)a3;
@end

@implementation CoreDAVItem

- (CoreDAVItem)initWithNameSpace:(id)a3 andName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CoreDAVItem;
  v9 = [(CoreDAVItem *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nameSpace, a3);
    objc_storeStrong(&v10->_name, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    attributes = v10->_attributes;
    v10->_attributes = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    extraChildItems = v10->_extraChildItems;
    v10->_extraChildItems = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
    payload = v10->_payload;
    v10->_payload = v15;
  }

  return v10;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = CoreDAVItem;
  v4 = [(CoreDAVItem *)&v8 description];
  v5 = [(CoreDAVItem *)self nameSpace];
  v6 = [(CoreDAVItem *)self name];
  [v3 appendFormat:@"[%@]: %@%@", v4, v5, v6];

  return v3;
}

- (id)hashString
{
  v3 = [(CoreDAVItem *)self extraChildItems];
  v4 = [v3 valueForKey:@"hashString"];

  v5 = [v4 componentsJoinedByString:{@", \n\nNext Child:\n"}];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CoreDAVItem *)self payloadAsString];
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [(CoreDAVItem *)self nameSpace];
  v11 = [(CoreDAVItem *)self name];
  v12 = [(CoreDAVItem *)self attributes];
  v13 = [v7 stringWithFormat:@"[%@], namespace: [%@], name: [%@], payload: [%@], attributes: [%@], children: [%@]", v9, v10, v11, v6, v12, v5];

  return v13;
}

- (id)copyParseRules
{
  v2 = objc_opt_class();

  return [v2 copyParseRules];
}

+ (id)parseRuleCache
{
  if (parseRuleCache_onceToken != -1)
  {
    +[CoreDAVItem parseRuleCache];
  }

  v3 = parseRuleCache_retVal;

  return v3;
}

uint64_t __29__CoreDAVItem_parseRuleCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = parseRuleCache_retVal;
  parseRuleCache_retVal = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)parserFoundUnrecognizedElement:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVItem *)self extraChildItems];
  [v5 addObject:v4];
}

- (void)parserFoundAttributes:(id)a3
{
  v4 = [a3 mutableCopy];
  [(CoreDAVItem *)self setAttributes:v4];
}

- (void)write:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CoreDAVItem *)self childrenToWrite];
  if ([v5 count])
  {
    v6 = [(CoreDAVItem *)self name];
    v7 = [(CoreDAVItem *)self nameSpace];
    [v4 startElement:v6 inNamespace:v7 withAttributeNamesAndValues:0];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v19 + 1) + 8 * i) write:{v4, v19}];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v13 = [(CoreDAVItem *)self name];
    v14 = [(CoreDAVItem *)self nameSpace];
    [v4 endElement:v13 inNamespace:v14];
  }

  else
  {
    useCDATA = self->_useCDATA;
    v13 = [(CoreDAVItem *)self name];
    v16 = [(CoreDAVItem *)self nameSpace];
    v17 = [(CoreDAVItem *)self payloadAsString];
    if (useCDATA)
    {
      [v4 appendElement:v13 inNamespace:v16 withStringContentAsCDATA:v17 withAttributeNamesAndValues:0];
    }

    else
    {
      [v4 appendElement:v13 inNamespace:v16 withStringContent:v17 withAttributeNamesAndValues:0];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)payloadAsString
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(CoreDAVItem *)self payload];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

- (int64_t)payloadAsNSInteger
{
  v2 = [(CoreDAVItem *)self payloadAsString];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPayloadAsString:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];
  [(CoreDAVItem *)self setPayload:v4];
}

- (id)generateXMLString
{
  v3 = objc_alloc_init(CoreDAVXMLData);
  [(CoreDAVItem *)self write:v3];
  v4 = [(CoreDAVXMLData *)v3 data];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];

  return v5;
}

@end