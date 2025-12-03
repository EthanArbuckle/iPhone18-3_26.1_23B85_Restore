@interface CoreDAVItem
+ (id)parseRuleCache;
- (CoreDAVItem)initWithNameSpace:(id)space andName:(id)name;
- (NSString)description;
- (id)copyParseRules;
- (id)generateXMLString;
- (id)hashString;
- (id)payloadAsString;
- (int64_t)payloadAsNSInteger;
- (void)parserFoundAttributes:(id)attributes;
- (void)parserFoundUnrecognizedElement:(id)element;
- (void)setPayloadAsString:(id)string;
- (void)write:(id)write;
@end

@implementation CoreDAVItem

- (CoreDAVItem)initWithNameSpace:(id)space andName:(id)name
{
  spaceCopy = space;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = CoreDAVItem;
  v9 = [(CoreDAVItem *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nameSpace, space);
    objc_storeStrong(&v10->_name, name);
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
  nameSpace = [(CoreDAVItem *)self nameSpace];
  name = [(CoreDAVItem *)self name];
  [v3 appendFormat:@"[%@]: %@%@", v4, nameSpace, name];

  return v3;
}

- (id)hashString
{
  extraChildItems = [(CoreDAVItem *)self extraChildItems];
  v4 = [extraChildItems valueForKey:@"hashString"];

  v5 = [v4 componentsJoinedByString:{@", \n\nNext Child:\n"}];
  if (v5)
  {
    payloadAsString = 0;
  }

  else
  {
    payloadAsString = [(CoreDAVItem *)self payloadAsString];
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  nameSpace = [(CoreDAVItem *)self nameSpace];
  name = [(CoreDAVItem *)self name];
  attributes = [(CoreDAVItem *)self attributes];
  v13 = [v7 stringWithFormat:@"[%@], namespace: [%@], name: [%@], payload: [%@], attributes: [%@], children: [%@]", v9, nameSpace, name, payloadAsString, attributes, v5];

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

- (void)parserFoundUnrecognizedElement:(id)element
{
  elementCopy = element;
  extraChildItems = [(CoreDAVItem *)self extraChildItems];
  [extraChildItems addObject:elementCopy];
}

- (void)parserFoundAttributes:(id)attributes
{
  v4 = [attributes mutableCopy];
  [(CoreDAVItem *)self setAttributes:v4];
}

- (void)write:(id)write
{
  v24 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  childrenToWrite = [(CoreDAVItem *)self childrenToWrite];
  if ([childrenToWrite count])
  {
    name = [(CoreDAVItem *)self name];
    nameSpace = [(CoreDAVItem *)self nameSpace];
    [writeCopy startElement:name inNamespace:nameSpace withAttributeNamesAndValues:0];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = childrenToWrite;
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

          [*(*(&v19 + 1) + 8 * i) write:{writeCopy, v19}];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    name2 = [(CoreDAVItem *)self name];
    nameSpace2 = [(CoreDAVItem *)self nameSpace];
    [writeCopy endElement:name2 inNamespace:nameSpace2];
  }

  else
  {
    useCDATA = self->_useCDATA;
    name2 = [(CoreDAVItem *)self name];
    nameSpace3 = [(CoreDAVItem *)self nameSpace];
    payloadAsString = [(CoreDAVItem *)self payloadAsString];
    if (useCDATA)
    {
      [writeCopy appendElement:name2 inNamespace:nameSpace3 withStringContentAsCDATA:payloadAsString withAttributeNamesAndValues:0];
    }

    else
    {
      [writeCopy appendElement:name2 inNamespace:nameSpace3 withStringContent:payloadAsString withAttributeNamesAndValues:0];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)payloadAsString
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  payload = [(CoreDAVItem *)self payload];
  v5 = [v3 initWithData:payload encoding:4];

  return v5;
}

- (int64_t)payloadAsNSInteger
{
  payloadAsString = [(CoreDAVItem *)self payloadAsString];
  v3 = payloadAsString;
  if (payloadAsString)
  {
    intValue = [payloadAsString intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)setPayloadAsString:(id)string
{
  v4 = [string dataUsingEncoding:4];
  [(CoreDAVItem *)self setPayload:v4];
}

- (id)generateXMLString
{
  v3 = objc_alloc_init(CoreDAVXMLData);
  [(CoreDAVItem *)self write:v3];
  data = [(CoreDAVXMLData *)v3 data];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:data encoding:4];

  return v5;
}

@end