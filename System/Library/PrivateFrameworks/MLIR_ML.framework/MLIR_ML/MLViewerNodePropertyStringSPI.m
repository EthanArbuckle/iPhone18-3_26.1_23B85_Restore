@interface MLViewerNodePropertyStringSPI
- (MLViewerNodePropertyStringSPI)initWithCoder:(id)a3;
- (MLViewerNodePropertyStringSPI)initWithJSONDictionary:(id)a3;
- (MLViewerNodePropertyStringSPI)initWithName:(id)a3 value:(id)a4;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MLViewerNodePropertyStringSPI

- (MLViewerNodePropertyStringSPI)initWithName:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MLViewerNodePropertyStringSPI;
  v9 = [(MLViewerNodePropertyStringSPI *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_stringValue, a4);
  }

  return v10;
}

- (MLViewerNodePropertyStringSPI)initWithJSONDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MLViewerNodePropertyStringSPI;
  v5 = [(MLViewerNodePropertyStringSPI *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKey:@"value"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v8;
  }

  return v5;
}

- (id)jsonDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[MLViewerNodePropertyStringSPI type];
  [v3 setObject:v4 forKey:@"type"];

  v5 = [(MLViewerNodePropertyStringSPI *)self name];
  [v3 setObject:v5 forKey:@"name"];

  v6 = [(MLViewerNodePropertyStringSPI *)self stringValue];

  if (v6)
  {
    v7 = [(MLViewerNodePropertyStringSPI *)self stringValue];
    [v3 setObject:v7 forKey:@"value"];
  }

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v8;
}

- (MLViewerNodePropertyStringSPI)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MLViewerNodePropertyStringSPI;
  v5 = [(MLViewerNodePropertyStringSPI *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MLViewerNodePropertyStringSPI *)self name];
  [v6 encodeObject:v4 forKey:@"name"];

  v5 = [(MLViewerNodePropertyStringSPI *)self stringValue];
  [v6 encodeObject:v5 forKey:@"value"];
}

@end