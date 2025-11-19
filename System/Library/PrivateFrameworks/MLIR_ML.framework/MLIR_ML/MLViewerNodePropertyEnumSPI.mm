@interface MLViewerNodePropertyEnumSPI
- (MLViewerNodePropertyEnumSPI)initWithCoder:(id)a3;
- (MLViewerNodePropertyEnumSPI)initWithJSONDictionary:(id)a3;
- (MLViewerNodePropertyEnumSPI)initWithName:(id)a3 type:(id)a4 cases:(id)a5 value:(unint64_t)a6;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MLViewerNodePropertyEnumSPI

- (MLViewerNodePropertyEnumSPI)initWithName:(id)a3 type:(id)a4 cases:(id)a5 value:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = MLViewerNodePropertyEnumSPI;
  v14 = [(MLViewerNodePropertyEnumSPI *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, a3);
    objc_storeStrong(&v15->_enumCases, a5);
    objc_storeStrong(&v15->_enumType, a4);
    v15->_enumValue = a6;
  }

  return v15;
}

- (MLViewerNodePropertyEnumSPI)initWithJSONDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MLViewerNodePropertyEnumSPI;
  v5 = [(MLViewerNodePropertyEnumSPI *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKey:@"enumCases"];
    enumCases = v5->_enumCases;
    v5->_enumCases = v8;

    v10 = [v4 objectForKey:@"enumType"];
    enumType = v5->_enumType;
    v5->_enumType = v10;

    v12 = [v4 objectForKey:@"enumValue"];
    v5->_enumValue = [v12 unsignedIntegerValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[MLViewerNodePropertyEnumSPI type];
  [v3 setObject:v4 forKey:@"type"];

  v5 = [(MLViewerNodePropertyEnumSPI *)self name];
  [v3 setObject:v5 forKey:@"name"];

  v6 = [(MLViewerNodePropertyEnumSPI *)self enumCases];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [(MLViewerNodePropertyEnumSPI *)self enumCases];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) jsonDictionary];
          [v7 addObject:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v3 setObject:v7 forKey:@"enumCases"];
  }

  v13 = [(MLViewerNodePropertyEnumSPI *)self enumType];
  v14 = v13 == 0;

  if (!v14)
  {
    v15 = [(MLViewerNodePropertyEnumSPI *)self enumType];
    [v3 setObject:v15 forKey:@"enumType"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MLViewerNodePropertyEnumSPI enumValue](self, "enumValue")}];
  [v3 setObject:v16 forKey:@"enumValue"];

  v17 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v17;
}

- (MLViewerNodePropertyEnumSPI)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MLViewerNodePropertyEnumSPI;
  v5 = [(MLViewerNodePropertyEnumSPI *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    enumType = v5->_enumType;
    v5->_enumType = v8;

    if (allowedClasses(void)::onceToken != -1)
    {
      [MLViewerNodePortSPI initWithCoder:];
    }

    v10 = allowedClasses(void)::allowedClasses;
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"cases"];
    enumCases = v5->_enumCases;
    v5->_enumCases = v11;

    v5->_enumValue = [v4 decodeInt64ForKey:@"value"];
    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MLViewerNodePropertyEnumSPI *)self name];
  [v7 encodeObject:v4 forKey:@"name"];

  v5 = [(MLViewerNodePropertyEnumSPI *)self enumType];
  [v7 encodeObject:v5 forKey:@"type"];

  v6 = [(MLViewerNodePropertyEnumSPI *)self enumCases];
  [v7 encodeObject:v6 forKey:@"cases"];

  [v7 encodeInt64:-[MLViewerNodePropertyEnumSPI enumValue](self forKey:{"enumValue"), @"value"}];
}

@end