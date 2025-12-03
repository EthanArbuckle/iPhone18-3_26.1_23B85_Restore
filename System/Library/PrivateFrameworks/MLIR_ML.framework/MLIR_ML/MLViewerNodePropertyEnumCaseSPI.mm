@interface MLViewerNodePropertyEnumCaseSPI
- (MLViewerNodePropertyEnumCaseSPI)initWithCoder:(id)coder;
- (MLViewerNodePropertyEnumCaseSPI)initWithJSONDictionary:(id)dictionary;
- (MLViewerNodePropertyEnumCaseSPI)initWithName:(id)name value:(unint64_t)value;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MLViewerNodePropertyEnumCaseSPI

- (MLViewerNodePropertyEnumCaseSPI)initWithName:(id)name value:(unint64_t)value
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = MLViewerNodePropertyEnumCaseSPI;
  v8 = [(MLViewerNodePropertyEnumCaseSPI *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_value = value;
  }

  return v9;
}

- (MLViewerNodePropertyEnumCaseSPI)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = MLViewerNodePropertyEnumCaseSPI;
  v5 = [(MLViewerNodePropertyEnumCaseSPI *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKey:@"value"];
    v5->_value = [v8 unsignedIntValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [(MLViewerNodePropertyEnumCaseSPI *)self name];

  if (name)
  {
    name2 = [(MLViewerNodePropertyEnumCaseSPI *)self name];
    [dictionary setObject:name2 forKey:@"name"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MLViewerNodePropertyEnumCaseSPI value](self, "value")}];
  [dictionary setObject:v6 forKey:@"value"];

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v7;
}

- (MLViewerNodePropertyEnumCaseSPI)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MLViewerNodePropertyEnumCaseSPI;
  v5 = [(MLViewerNodePropertyEnumCaseSPI *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_value = [coderCopy decodeInt64ForKey:@"value"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(MLViewerNodePropertyEnumCaseSPI *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInt64:-[MLViewerNodePropertyEnumCaseSPI value](self forKey:{"value"), @"value"}];
}

@end