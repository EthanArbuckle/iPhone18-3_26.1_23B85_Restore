@interface MTRPluginPBMDeviceNodeReadMultipleAttributesMessage
+ (id)_convertArray:(id)a3;
+ (id)deviceNodeReadMultipleAttributesMessageFromMessage:(id)a3;
+ (id)deviceNodeReadMultipleAttributesMessageWithNodeID:(id)a3 readAttributePaths:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (NSArray)attributeRequestPaths;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAttributePaths:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMDeviceNodeReadMultipleAttributesMessage

+ (id)deviceNodeReadMultipleAttributesMessageFromMessage:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginPBMDeviceNodeReadMultipleAttributesMessage alloc];
  v5 = [v3 messageData];

  v6 = [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)v4 initWithData:v5];
  if ([(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)v6 isValid])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deviceNodeReadMultipleAttributesMessageWithNodeID:(id)a3 readAttributePaths:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage);
  v8 = [MTRPluginPBMDeviceNode deviceNodeWithNodeID:v6];

  [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)v7 setNode:v8];
  v9 = [MTRPluginPBMDeviceNodeReadMultipleAttributesMessage _convertArray:v5];

  if (v9)
  {
    [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)v7 setAttributePaths:v9];
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_convertArray:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = MEMORY[0x277CD51C0];
        v12 = [v10 endpoint];
        v13 = [v10 cluster];
        v14 = [v10 attribute];
        v15 = [v11 attributePathWithEndpointID:v12 clusterID:v13 attributeID:v14];

        v16 = [[MTRPluginPBMAttributePath alloc] initWithAttributePath:v15];
        if (!v16)
        {

          v18 = 0;
          goto LABEL_11;
        }

        v17 = v16;
        [v4 addObject:v16];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18 = v4;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (NSArray)attributeRequestPaths
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self attributePaths];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self attributePaths];
  v23 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v23)
  {
    v22 = *v25;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        v7 = v5;
        if (*v25 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = MEMORY[0x277CD51D0];
        v10 = MEMORY[0x277CCABB0];
        v11 = [v8 clusterPath];
        v12 = [v10 numberWithUnsignedInt:{objc_msgSend(v11, "endpointID")}];
        v13 = MEMORY[0x277CCABB0];
        v14 = [v8 clusterPath];
        v15 = [v13 numberWithUnsignedInt:{objc_msgSend(v14, "clusterID")}];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v8, "attributeID")}];
        v17 = [v9 requestPathWithEndpointID:v12 clusterID:v15 attributeID:v16];

        if (!v17)
        {

          v18 = 0;
          v5 = v7;
          goto LABEL_11;
        }

        v5 = v7;
        [v7 addObject:v17];
      }

      v23 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v18 = v5;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self hasHeader])
  {
    return 0;
  }

  v3 = [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self header];
  if ([v3 isValid] && -[MTRPluginPBMDeviceNodeReadMultipleAttributesMessage hasNode](self, "hasNode"))
  {
    v4 = [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self node];
    if ([v4 isValid])
    {
      v5 = [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self attributePaths];
      if (v5)
      {
        v6 = [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self attributePaths];
        v7 = [v6 count] != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addAttributePaths:(id)a3
{
  v4 = a3;
  attributePaths = self->_attributePaths;
  v8 = v4;
  if (!attributePaths)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_attributePaths;
    self->_attributePaths = v6;

    v4 = v8;
    attributePaths = self->_attributePaths;
  }

  [(NSMutableArray *)attributePaths addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDeviceNodeReadMultipleAttributesMessage;
  v4 = [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)&v8 description];
  v5 = [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  header = self->_header;
  if (header)
  {
    v5 = [(MTRPluginPBMHeader *)header dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"header"];
  }

  node = self->_node;
  if (node)
  {
    v7 = [(MTRPluginPBMDeviceNode *)node dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"node"];
  }

  if ([(NSMutableArray *)self->_attributePaths count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_attributePaths, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_attributePaths;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"attributePaths"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_node)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_attributePaths;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_header)
  {
    [v8 setHeader:?];
  }

  if (self->_node)
  {
    [v8 setNode:?];
  }

  if ([(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self attributePathsCount])
  {
    [v8 clearAttributePaths];
    v4 = [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self attributePathsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self attributePathsAtIndex:i];
        [v8 addAttributePaths:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(MTRPluginPBMDeviceNode *)self->_node copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_attributePaths;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{a3, v18}];
        [v5 addAttributePaths:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | v4[2])) || -[MTRPluginPBMHeader isEqual:](header, "isEqual:")) && ((node = self->_node, !(node | v4[3])) || -[MTRPluginPBMDeviceNode isEqual:](node, "isEqual:")))
  {
    attributePaths = self->_attributePaths;
    if (attributePaths | v4[1])
    {
      v8 = [(NSMutableArray *)attributePaths isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(MTRPluginPBMHeader *)self->_header hash];
  v4 = [(MTRPluginPBMDeviceNode *)self->_node hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_attributePaths hash];
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  header = self->_header;
  v6 = *(v4 + 2);
  if (header)
  {
    if (v6)
    {
      [(MTRPluginPBMHeader *)header mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self setHeader:?];
  }

  node = self->_node;
  v8 = *(v4 + 3);
  if (node)
  {
    if (v8)
    {
      [(MTRPluginPBMDeviceNode *)node mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self setNode:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v4 + 1);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(MTRPluginPBMDeviceNodeReadMultipleAttributesMessage *)self addAttributePaths:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end