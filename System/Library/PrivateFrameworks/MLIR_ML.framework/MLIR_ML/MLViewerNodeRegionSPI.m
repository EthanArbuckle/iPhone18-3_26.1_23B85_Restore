@interface MLViewerNodeRegionSPI
- (MLViewerNodeRegionSPI)initWithCoder:(id)a3;
- (MLViewerNodeRegionSPI)initWithJSONDictionary:(id)a3;
- (MLViewerNodeRegionSPI)initWithName:(id)a3 returnType:(id)a4 nodes:(id)a5;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MLViewerNodeRegionSPI

- (MLViewerNodeRegionSPI)initWithName:(id)a3 returnType:(id)a4 nodes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MLViewerNodeRegionSPI;
  v12 = [(MLViewerNodeRegionSPI *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_returnType, a4);
    objc_storeStrong(&v13->_nodes, a5);
  }

  return v13;
}

- (MLViewerNodeRegionSPI)initWithJSONDictionary:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MLViewerNodeRegionSPI;
  v5 = [(MLViewerNodeRegionSPI *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKey:@"returnType"];
    returnType = v5->_returnType;
    v5->_returnType = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v4 objectForKey:@"nodes"];
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
  v4 = [(MLViewerNodeRegionSPI *)self nodes];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v15 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [(MLViewerNodeRegionSPI *)self name];
  [v9 setObject:v10 forKey:@"name"];

  v11 = [(MLViewerNodeRegionSPI *)self returnType];
  LOBYTE(v10) = v11 == 0;

  if ((v10 & 1) == 0)
  {
    v12 = [(MLViewerNodeRegionSPI *)self returnType];
    [v9 setObject:v12 forKey:@"returnType"];
  }

  [v9 setObject:v3 forKey:@"nodes"];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];

  return v13;
}

- (MLViewerNodeRegionSPI)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MLViewerNodeRegionSPI;
  v5 = [(MLViewerNodeRegionSPI *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"returnType"];
    returnType = v5->_returnType;
    v5->_returnType = v8;

    if (allowedClasses(void)::onceToken != -1)
    {
      [MLViewerNodePortSPI initWithCoder:];
    }

    v10 = allowedClasses(void)::allowedClasses;
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"nodes"];
    nodes = v5->_nodes;
    v5->_nodes = v11;

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MLViewerNodeRegionSPI *)self name];
  [v7 encodeObject:v4 forKey:@"name"];

  v5 = [(MLViewerNodeRegionSPI *)self returnType];
  [v7 encodeObject:v5 forKey:@"returnType"];

  v6 = [(MLViewerNodeRegionSPI *)self nodes];
  [v7 encodeObject:v6 forKey:@"nodes"];
}

@end