@interface MLViewerNodeRegionSPI
- (MLViewerNodeRegionSPI)initWithCoder:(id)coder;
- (MLViewerNodeRegionSPI)initWithJSONDictionary:(id)dictionary;
- (MLViewerNodeRegionSPI)initWithName:(id)name returnType:(id)type nodes:(id)nodes;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MLViewerNodeRegionSPI

- (MLViewerNodeRegionSPI)initWithName:(id)name returnType:(id)type nodes:(id)nodes
{
  nameCopy = name;
  typeCopy = type;
  nodesCopy = nodes;
  v15.receiver = self;
  v15.super_class = MLViewerNodeRegionSPI;
  v12 = [(MLViewerNodeRegionSPI *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_returnType, type);
    objc_storeStrong(&v13->_nodes, nodes);
  }

  return v13;
}

- (MLViewerNodeRegionSPI)initWithJSONDictionary:(id)dictionary
{
  v27 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = MLViewerNodeRegionSPI;
  v5 = [(MLViewerNodeRegionSPI *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKey:@"returnType"];
    returnType = v5->_returnType;
    v5->_returnType = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [dictionaryCopy objectForKey:@"nodes"];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v11 = v22 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          v16 = [MLViewerNodeSPI alloc];
          v17 = [(MLViewerNodeSPI *)v16 initWithJSONDictionary:v15, v21];
          [v10 addObject:v17];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    v18 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
    nodes = v5->_nodes;
    v5->_nodes = v18;
  }

  return v5;
}

- (id)jsonDictionary
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  nodes = [(MLViewerNodeRegionSPI *)self nodes];
  v5 = [nodes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(nodes);
        }

        jsonDictionary = [*(*(&v15 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v5 = [nodes countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [(MLViewerNodeRegionSPI *)self name];
  [dictionary setObject:name forKey:@"name"];

  returnType = [(MLViewerNodeRegionSPI *)self returnType];
  LOBYTE(name) = returnType == 0;

  if ((name & 1) == 0)
  {
    returnType2 = [(MLViewerNodeRegionSPI *)self returnType];
    [dictionary setObject:returnType2 forKey:@"returnType"];
  }

  [dictionary setObject:v3 forKey:@"nodes"];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v13;
}

- (MLViewerNodeRegionSPI)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MLViewerNodeRegionSPI;
  v5 = [(MLViewerNodeRegionSPI *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"returnType"];
    returnType = v5->_returnType;
    v5->_returnType = v8;

    if (allowedClasses(void)::onceToken != -1)
    {
      [MLViewerNodePortSPI initWithCoder:];
    }

    v10 = allowedClasses(void)::allowedClasses;
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"nodes"];
    nodes = v5->_nodes;
    v5->_nodes = v11;

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(MLViewerNodeRegionSPI *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  returnType = [(MLViewerNodeRegionSPI *)self returnType];
  [coderCopy encodeObject:returnType forKey:@"returnType"];

  nodes = [(MLViewerNodeRegionSPI *)self nodes];
  [coderCopy encodeObject:nodes forKey:@"nodes"];
}

@end