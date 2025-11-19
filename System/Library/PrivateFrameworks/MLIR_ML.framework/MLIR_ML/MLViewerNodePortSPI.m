@interface MLViewerNodePortSPI
- (MLViewerNodePortSPI)initWithCoder:(id)a3;
- (MLViewerNodePortSPI)initWithJSONDictionary:(id)a3;
- (MLViewerNodePortSPI)initWithName:(id)a3 dataType:(unsigned int)a4 shape:(id)a5 valueRef:(unint64_t)a6 opaquePtr:(void *)a7;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MLViewerNodePortSPI

- (MLViewerNodePortSPI)initWithName:(id)a3 dataType:(unsigned int)a4 shape:(id)a5 valueRef:(unint64_t)a6 opaquePtr:(void *)a7
{
  v13 = a3;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = MLViewerNodePortSPI;
  v15 = [(MLViewerNodePortSPI *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a3);
    v16->_dataType = a4;
    objc_storeStrong(&v16->_shape, a5);
    v16->_valueRef = a6;
    v16->_opaquePtr = a7;
  }

  return v16;
}

- (MLViewerNodePortSPI)initWithJSONDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MLViewerNodePortSPI;
  v5 = [(MLViewerNodePortSPI *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKey:@"dataType"];
    v5->_dataType = [v8 unsignedIntValue];

    v9 = [v4 objectForKey:@"shape"];
    shape = v5->_shape;
    v5->_shape = v9;

    v11 = [v4 objectForKey:@"valueRef"];
    v5->_valueRef = [v11 unsignedIntValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(MLViewerNodePortSPI *)self name];

  if (v4)
  {
    v5 = [(MLViewerNodePortSPI *)self name];
    [v3 setObject:v5 forKey:@"name"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MLViewerNodePortSPI dataType](self, "dataType")}];
  [v3 setObject:v6 forKey:@"dataType"];

  v7 = [(MLViewerNodePortSPI *)self shape];

  if (v7)
  {
    v8 = [(MLViewerNodePortSPI *)self shape];
    [v3 setObject:v8 forKey:@"shape"];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MLViewerNodePortSPI valueRef](self, "valueRef")}];
  [v3 setObject:v9 forKey:@"valueRef"];

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v10;
}

- (MLViewerNodePortSPI)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MLViewerNodePortSPI;
  v5 = [(MLViewerNodePortSPI *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_dataType = [v4 decodeInt32ForKey:@"dataType"];
    if (allowedClasses(void)::onceToken != -1)
    {
      [MLViewerNodePortSPI initWithCoder:];
    }

    v8 = allowedClasses(void)::allowedClasses;
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"shape"];
    shape = v5->_shape;
    v5->_shape = v9;

    v5->_valueRef = [v4 decodeIntegerForKey:@"valueRef"];
    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MLViewerNodePortSPI *)self name];
  [v6 encodeObject:v4 forKey:@"name"];

  v5 = [(MLViewerNodePortSPI *)self shape];
  [v6 encodeObject:v5 forKey:@"shape"];

  [v6 encodeInt32:-[MLViewerNodePortSPI dataType](self forKey:{"dataType"), @"dataType"}];
  [v6 encodeInteger:-[MLViewerNodePortSPI valueRef](self forKey:{"valueRef"), @"valueRef"}];
}

@end