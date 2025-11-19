@interface MLViewerNodePropertyEnumCaseSPI
- (MLViewerNodePropertyEnumCaseSPI)initWithCoder:(id)a3;
- (MLViewerNodePropertyEnumCaseSPI)initWithJSONDictionary:(id)a3;
- (MLViewerNodePropertyEnumCaseSPI)initWithName:(id)a3 value:(unint64_t)a4;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MLViewerNodePropertyEnumCaseSPI

- (MLViewerNodePropertyEnumCaseSPI)initWithName:(id)a3 value:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MLViewerNodePropertyEnumCaseSPI;
  v8 = [(MLViewerNodePropertyEnumCaseSPI *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_value = a4;
  }

  return v9;
}

- (MLViewerNodePropertyEnumCaseSPI)initWithJSONDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MLViewerNodePropertyEnumCaseSPI;
  v5 = [(MLViewerNodePropertyEnumCaseSPI *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKey:@"value"];
    v5->_value = [v8 unsignedIntValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(MLViewerNodePropertyEnumCaseSPI *)self name];

  if (v4)
  {
    v5 = [(MLViewerNodePropertyEnumCaseSPI *)self name];
    [v3 setObject:v5 forKey:@"name"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MLViewerNodePropertyEnumCaseSPI value](self, "value")}];
  [v3 setObject:v6 forKey:@"value"];

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v7;
}

- (MLViewerNodePropertyEnumCaseSPI)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MLViewerNodePropertyEnumCaseSPI;
  v5 = [(MLViewerNodePropertyEnumCaseSPI *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_value = [v4 decodeInt64ForKey:@"value"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(MLViewerNodePropertyEnumCaseSPI *)self name];
  [v5 encodeObject:v4 forKey:@"name"];

  [v5 encodeInt64:-[MLViewerNodePropertyEnumCaseSPI value](self forKey:{"value"), @"value"}];
}

@end