@interface MLViewerNodePropertyDataSPI
- (MLViewerNodePropertyDataSPI)initWithCoder:(id)coder;
- (MLViewerNodePropertyDataSPI)initWithJSONDictionary:(id)dictionary;
- (MLViewerNodePropertyDataSPI)initWithName:(id)name dataType:(unsigned int)type shape:(id)shape;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MLViewerNodePropertyDataSPI

- (MLViewerNodePropertyDataSPI)initWithName:(id)name dataType:(unsigned int)type shape:(id)shape
{
  nameCopy = name;
  shapeCopy = shape;
  v14.receiver = self;
  v14.super_class = MLViewerNodePropertyDataSPI;
  v11 = [(MLViewerNodePropertyDataSPI *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_dataType = type;
    objc_storeStrong(&v12->_shape, shape);
    v12->_isSplat = 0;
  }

  return v12;
}

- (MLViewerNodePropertyDataSPI)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = MLViewerNodePropertyDataSPI;
  v5 = [(MLViewerNodePropertyDataSPI *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKey:@"dataType"];
    v5->_dataType = [v8 unsignedIntValue];

    v9 = [dictionaryCopy objectForKey:@"shape"];
    shape = v5->_shape;
    v5->_shape = v9;

    v11 = [dictionaryCopy objectForKey:@"isSplat"];
    v5->_isSplat = [v11 BOOLValue];

    v12 = [dictionaryCopy objectForKey:@"resourceID"];
    resourceID = v5->_resourceID;
    v5->_resourceID = v12;
  }

  return v5;
}

- (id)jsonDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[MLViewerNodePropertyDataSPI type];
  [dictionary setObject:v4 forKey:@"type"];

  name = [(MLViewerNodePropertyDataSPI *)self name];
  [dictionary setObject:name forKey:@"name"];

  resourceID = [(MLViewerNodePropertyDataSPI *)self resourceID];

  if (resourceID)
  {
    resourceID2 = [(MLViewerNodePropertyDataSPI *)self resourceID];
    [dictionary setObject:resourceID2 forKey:@"resourceID"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MLViewerNodePropertyDataSPI dataType](self, "dataType")}];
  [dictionary setObject:v8 forKey:@"dataType"];

  shape = [(MLViewerNodePropertyDataSPI *)self shape];
  [dictionary setObject:shape forKey:@"shape"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSplat];
  [dictionary setObject:v10 forKey:@"isSplat"];

  v11 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v11;
}

- (MLViewerNodePropertyDataSPI)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MLViewerNodePropertyDataSPI;
  v5 = [(MLViewerNodePropertyDataSPI *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_dataType = [coderCopy decodeInt64ForKey:@"type"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resourceID"];
    resourceID = v5->_resourceID;
    v5->_resourceID = v8;

    if (allowedClasses(void)::onceToken != -1)
    {
      [MLViewerNodePortSPI initWithCoder:];
    }

    v10 = allowedClasses(void)::allowedClasses;
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"shape"];
    shape = v5->_shape;
    v5->_shape = v11;

    v5->_isSplat = [coderCopy decodeBoolForKey:@"isSplat"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    raw = v5->_raw;
    v5->_raw = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(MLViewerNodePropertyDataSPI *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInt64:-[MLViewerNodePropertyDataSPI dataType](self forKey:{"dataType"), @"type"}];
  resourceID = [(MLViewerNodePropertyDataSPI *)self resourceID];
  [coderCopy encodeObject:resourceID forKey:@"resourceID"];

  shape = [(MLViewerNodePropertyDataSPI *)self shape];
  [coderCopy encodeObject:shape forKey:@"shape"];

  [coderCopy encodeBool:self->_isSplat forKey:@"isSplat"];
  [coderCopy encodeObject:self->_raw forKey:@"data"];
}

@end