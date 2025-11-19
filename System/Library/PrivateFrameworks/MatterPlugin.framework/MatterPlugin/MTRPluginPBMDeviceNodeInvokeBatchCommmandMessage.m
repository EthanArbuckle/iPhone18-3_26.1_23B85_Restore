@interface MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage
+ (id)_convertArray:(id)a3;
+ (id)deviceNodeInvokeBatchCommandMessageFromMessage:(id)a3;
+ (id)deviceNodeInvokeBatchCommandMessageWithNodeID:(id)a3 commands:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (NSArray)commands;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCommandWithRequiredResponsesValue:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage

+ (id)deviceNodeInvokeBatchCommandMessageFromMessage:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage alloc];
  v5 = [v3 messageData];

  v6 = [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)v4 initWithData:v5];
  if ([(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)v6 isValid])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deviceNodeInvokeBatchCommandMessageWithNodeID:(id)a3 commands:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage);
  v8 = [MTRPluginPBMDeviceNode deviceNodeWithNodeID:v6];

  [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)v7 setNode:v8];
  v9 = [MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage _convertArray:v5];

  if (v9)
  {
    [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)v7 setCommandWithRequiredResponsesValues:v9];
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
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MTRPluginPBMCommandWithRequiredResponses commandWithRequiredResponses:*(*(&v13 + 1) + 8 * i), v13];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)self hasHeader])
  {
    return 0;
  }

  v3 = [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)self header];
  if ([v3 isValid] && -[MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage hasNode](self, "hasNode"))
  {
    v4 = [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)self node];
    if ([v4 isValid])
    {
      v5 = [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)self commandWithRequiredResponsesValuesCount]!= 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)commands
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)self commandWithRequiredResponsesValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) commandWithRequiredResponses];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)addCommandWithRequiredResponsesValue:(id)a3
{
  v4 = a3;
  commandWithRequiredResponsesValues = self->_commandWithRequiredResponsesValues;
  v8 = v4;
  if (!commandWithRequiredResponsesValues)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_commandWithRequiredResponsesValues;
    self->_commandWithRequiredResponsesValues = v6;

    v4 = v8;
    commandWithRequiredResponsesValues = self->_commandWithRequiredResponsesValues;
  }

  [(NSMutableArray *)commandWithRequiredResponsesValues addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage;
  v4 = [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)&v8 description];
  v5 = [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)self dictionaryRepresentation];
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

  if ([(NSMutableArray *)self->_commandWithRequiredResponsesValues count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_commandWithRequiredResponsesValues, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_commandWithRequiredResponsesValues;
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

    [v3 setObject:v8 forKey:@"commandWithRequiredResponsesValue"];
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
  v5 = self->_commandWithRequiredResponsesValues;
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

  if ([(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)self commandWithRequiredResponsesValuesCount])
  {
    [v8 clearCommandWithRequiredResponsesValues];
    v4 = [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)self commandWithRequiredResponsesValuesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)self commandWithRequiredResponsesValueAtIndex:i];
        [v8 addCommandWithRequiredResponsesValue:v7];
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
  v10 = self->_commandWithRequiredResponsesValues;
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
        [v5 addCommandWithRequiredResponsesValue:v15];

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
    commandWithRequiredResponsesValues = self->_commandWithRequiredResponsesValues;
    if (commandWithRequiredResponsesValues | v4[1])
    {
      v8 = [(NSMutableArray *)commandWithRequiredResponsesValues isEqual:?];
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
  return v4 ^ [(NSMutableArray *)self->_commandWithRequiredResponsesValues hash];
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
    [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)self setHeader:?];
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
    [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)self setNode:?];
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

        [(MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage *)self addCommandWithRequiredResponsesValue:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end