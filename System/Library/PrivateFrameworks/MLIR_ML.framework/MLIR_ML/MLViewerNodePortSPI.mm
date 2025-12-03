@interface MLViewerNodePortSPI
- (MLViewerNodePortSPI)initWithCoder:(id)coder;
- (MLViewerNodePortSPI)initWithJSONDictionary:(id)dictionary;
- (MLViewerNodePortSPI)initWithName:(id)name dataType:(unsigned int)type shape:(id)shape valueRef:(unint64_t)ref opaquePtr:(void *)ptr;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MLViewerNodePortSPI

- (MLViewerNodePortSPI)initWithName:(id)name dataType:(unsigned int)type shape:(id)shape valueRef:(unint64_t)ref opaquePtr:(void *)ptr
{
  nameCopy = name;
  shapeCopy = shape;
  v18.receiver = self;
  v18.super_class = MLViewerNodePortSPI;
  v15 = [(MLViewerNodePortSPI *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    v16->_dataType = type;
    objc_storeStrong(&v16->_shape, shape);
    v16->_valueRef = ref;
    v16->_opaquePtr = ptr;
  }

  return v16;
}

- (MLViewerNodePortSPI)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MLViewerNodePortSPI;
  v5 = [(MLViewerNodePortSPI *)&v13 init];
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

    v11 = [dictionaryCopy objectForKey:@"valueRef"];
    v5->_valueRef = [v11 unsignedIntValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [(MLViewerNodePortSPI *)self name];

  if (name)
  {
    name2 = [(MLViewerNodePortSPI *)self name];
    [dictionary setObject:name2 forKey:@"name"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MLViewerNodePortSPI dataType](self, "dataType")}];
  [dictionary setObject:v6 forKey:@"dataType"];

  shape = [(MLViewerNodePortSPI *)self shape];

  if (shape)
  {
    shape2 = [(MLViewerNodePortSPI *)self shape];
    [dictionary setObject:shape2 forKey:@"shape"];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MLViewerNodePortSPI valueRef](self, "valueRef")}];
  [dictionary setObject:v9 forKey:@"valueRef"];

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v10;
}

- (MLViewerNodePortSPI)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MLViewerNodePortSPI;
  v5 = [(MLViewerNodePortSPI *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_dataType = [coderCopy decodeInt32ForKey:@"dataType"];
    if (allowedClasses(void)::onceToken != -1)
    {
      [MLViewerNodePortSPI initWithCoder:];
    }

    v8 = allowedClasses(void)::allowedClasses;
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"shape"];
    shape = v5->_shape;
    v5->_shape = v9;

    v5->_valueRef = [coderCopy decodeIntegerForKey:@"valueRef"];
    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(MLViewerNodePortSPI *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  shape = [(MLViewerNodePortSPI *)self shape];
  [coderCopy encodeObject:shape forKey:@"shape"];

  [coderCopy encodeInt32:-[MLViewerNodePortSPI dataType](self forKey:{"dataType"), @"dataType"}];
  [coderCopy encodeInteger:-[MLViewerNodePortSPI valueRef](self forKey:{"valueRef"), @"valueRef"}];
}

@end