@interface MLViewerNodePropertyStringSPI
- (MLViewerNodePropertyStringSPI)initWithCoder:(id)coder;
- (MLViewerNodePropertyStringSPI)initWithJSONDictionary:(id)dictionary;
- (MLViewerNodePropertyStringSPI)initWithName:(id)name value:(id)value;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MLViewerNodePropertyStringSPI

- (MLViewerNodePropertyStringSPI)initWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = MLViewerNodePropertyStringSPI;
  v9 = [(MLViewerNodePropertyStringSPI *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_stringValue, value);
  }

  return v10;
}

- (MLViewerNodePropertyStringSPI)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = MLViewerNodePropertyStringSPI;
  v5 = [(MLViewerNodePropertyStringSPI *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKey:@"value"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v8;
  }

  return v5;
}

- (id)jsonDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[MLViewerNodePropertyStringSPI type];
  [dictionary setObject:v4 forKey:@"type"];

  name = [(MLViewerNodePropertyStringSPI *)self name];
  [dictionary setObject:name forKey:@"name"];

  stringValue = [(MLViewerNodePropertyStringSPI *)self stringValue];

  if (stringValue)
  {
    stringValue2 = [(MLViewerNodePropertyStringSPI *)self stringValue];
    [dictionary setObject:stringValue2 forKey:@"value"];
  }

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v8;
}

- (MLViewerNodePropertyStringSPI)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MLViewerNodePropertyStringSPI;
  v5 = [(MLViewerNodePropertyStringSPI *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(MLViewerNodePropertyStringSPI *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  stringValue = [(MLViewerNodePropertyStringSPI *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"value"];
}

@end