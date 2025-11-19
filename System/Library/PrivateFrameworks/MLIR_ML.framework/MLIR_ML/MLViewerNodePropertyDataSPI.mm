@interface MLViewerNodePropertyDataSPI
- (MLViewerNodePropertyDataSPI)initWithCoder:(id)a3;
- (MLViewerNodePropertyDataSPI)initWithJSONDictionary:(id)a3;
- (MLViewerNodePropertyDataSPI)initWithName:(id)a3 dataType:(unsigned int)a4 shape:(id)a5;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MLViewerNodePropertyDataSPI

- (MLViewerNodePropertyDataSPI)initWithName:(id)a3 dataType:(unsigned int)a4 shape:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MLViewerNodePropertyDataSPI;
  v11 = [(MLViewerNodePropertyDataSPI *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    v12->_dataType = a4;
    objc_storeStrong(&v12->_shape, a5);
    v12->_isSplat = 0;
  }

  return v12;
}

- (MLViewerNodePropertyDataSPI)initWithJSONDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MLViewerNodePropertyDataSPI;
  v5 = [(MLViewerNodePropertyDataSPI *)&v15 init];
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

    v11 = [v4 objectForKey:@"isSplat"];
    v5->_isSplat = [v11 BOOLValue];

    v12 = [v4 objectForKey:@"resourceID"];
    resourceID = v5->_resourceID;
    v5->_resourceID = v12;
  }

  return v5;
}

- (id)jsonDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[MLViewerNodePropertyDataSPI type];
  [v3 setObject:v4 forKey:@"type"];

  v5 = [(MLViewerNodePropertyDataSPI *)self name];
  [v3 setObject:v5 forKey:@"name"];

  v6 = [(MLViewerNodePropertyDataSPI *)self resourceID];

  if (v6)
  {
    v7 = [(MLViewerNodePropertyDataSPI *)self resourceID];
    [v3 setObject:v7 forKey:@"resourceID"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MLViewerNodePropertyDataSPI dataType](self, "dataType")}];
  [v3 setObject:v8 forKey:@"dataType"];

  v9 = [(MLViewerNodePropertyDataSPI *)self shape];
  [v3 setObject:v9 forKey:@"shape"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSplat];
  [v3 setObject:v10 forKey:@"isSplat"];

  v11 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v11;
}

- (MLViewerNodePropertyDataSPI)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MLViewerNodePropertyDataSPI;
  v5 = [(MLViewerNodePropertyDataSPI *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_dataType = [v4 decodeInt64ForKey:@"type"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resourceID"];
    resourceID = v5->_resourceID;
    v5->_resourceID = v8;

    if (allowedClasses(void)::onceToken != -1)
    {
      [MLViewerNodePortSPI initWithCoder:];
    }

    v10 = allowedClasses(void)::allowedClasses;
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"shape"];
    shape = v5->_shape;
    v5->_shape = v11;

    v5->_isSplat = [v4 decodeBoolForKey:@"isSplat"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    raw = v5->_raw;
    v5->_raw = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MLViewerNodePropertyDataSPI *)self name];
  [v7 encodeObject:v4 forKey:@"name"];

  [v7 encodeInt64:-[MLViewerNodePropertyDataSPI dataType](self forKey:{"dataType"), @"type"}];
  v5 = [(MLViewerNodePropertyDataSPI *)self resourceID];
  [v7 encodeObject:v5 forKey:@"resourceID"];

  v6 = [(MLViewerNodePropertyDataSPI *)self shape];
  [v7 encodeObject:v6 forKey:@"shape"];

  [v7 encodeBool:self->_isSplat forKey:@"isSplat"];
  [v7 encodeObject:self->_raw forKey:@"data"];
}

@end