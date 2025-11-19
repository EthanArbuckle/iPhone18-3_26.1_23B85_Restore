@interface MTRPluginPBMDeviceNodeReadAttributeMessage
+ (id)deviceNodeReadAttributeMessageFromMessage:(id)a3;
+ (id)deviceNodeReadAttributeMessageWithNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5 attributeID:(id)a6 readParams:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMDeviceNodeReadAttributeMessage

+ (id)deviceNodeReadAttributeMessageFromMessage:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginPBMDeviceNodeReadAttributeMessage alloc];
  v5 = [v3 messageData];

  v6 = [(MTRPluginPBMDeviceNodeReadAttributeMessage *)v4 initWithData:v5];
  if ([(MTRPluginPBMDeviceNodeReadAttributeMessage *)v6 isValid])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deviceNodeReadAttributeMessageWithNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5 attributeID:(id)a6 readParams:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(MTRPluginPBMDeviceNodeReadAttributeMessage);
  v17 = [MTRPluginPBMDeviceNode deviceNodeWithNodeID:v15];

  [(MTRPluginPBMDeviceNodeReadAttributeMessage *)v16 setNode:v17];
  v18 = [MTRPluginPBMAttributePath attributePathWithEndpointID:v14 clusterID:v13 attributeID:v12];

  [(MTRPluginPBMDeviceNodeReadAttributeMessage *)v16 setAttributePath:v18];
  if (v11)
  {
    v19 = [[MTRPluginPBMReadParams alloc] initWithReadParams:v11];
    [(MTRPluginPBMDeviceNodeReadAttributeMessage *)v16 setReadParams:v19];
  }

  return v16;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMDeviceNodeReadAttributeMessage *)self hasHeader])
  {
    return 0;
  }

  v3 = [(MTRPluginPBMDeviceNodeReadAttributeMessage *)self header];
  if ([v3 isValid] && -[MTRPluginPBMDeviceNodeReadAttributeMessage hasNode](self, "hasNode"))
  {
    v4 = [(MTRPluginPBMDeviceNodeReadAttributeMessage *)self node];
    if ([v4 isValid] && -[MTRPluginPBMDeviceNodeReadAttributeMessage hasAttributePath](self, "hasAttributePath"))
    {
      v5 = [(MTRPluginPBMDeviceNodeReadAttributeMessage *)self attributePath];
      v6 = [v5 isValid];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDeviceNodeReadAttributeMessage;
  v4 = [(MTRPluginPBMDeviceNodeReadAttributeMessage *)&v8 description];
  v5 = [(MTRPluginPBMDeviceNodeReadAttributeMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
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

  attributePath = self->_attributePath;
  if (attributePath)
  {
    v9 = [(MTRPluginPBMAttributePath *)attributePath dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"attributePath"];
  }

  readParams = self->_readParams;
  if (readParams)
  {
    v11 = [(MTRPluginPBMReadParams *)readParams dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"readParams"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_node)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_attributePath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_readParams)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_header)
  {
    [v4 setHeader:?];
    v4 = v5;
  }

  if (self->_node)
  {
    [v5 setNode:?];
    v4 = v5;
  }

  if (self->_attributePath)
  {
    [v5 setAttributePath:?];
    v4 = v5;
  }

  if (self->_readParams)
  {
    [v5 setReadParams:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(MTRPluginPBMDeviceNode *)self->_node copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(MTRPluginPBMAttributePath *)self->_attributePath copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(MTRPluginPBMReadParams *)self->_readParams copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | v4[2])) || -[MTRPluginPBMHeader isEqual:](header, "isEqual:")) && ((node = self->_node, !(node | v4[3])) || -[MTRPluginPBMDeviceNode isEqual:](node, "isEqual:")) && ((attributePath = self->_attributePath, !(attributePath | v4[1])) || -[MTRPluginPBMAttributePath isEqual:](attributePath, "isEqual:")))
  {
    readParams = self->_readParams;
    if (readParams | v4[4])
    {
      v9 = [(MTRPluginPBMReadParams *)readParams isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(MTRPluginPBMHeader *)self->_header hash];
  v4 = [(MTRPluginPBMDeviceNode *)self->_node hash]^ v3;
  v5 = [(MTRPluginPBMAttributePath *)self->_attributePath hash];
  return v4 ^ v5 ^ [(MTRPluginPBMReadParams *)self->_readParams hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v13 = v4;
  v6 = v4[2];
  if (header)
  {
    if (v6)
    {
      [(MTRPluginPBMHeader *)header mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MTRPluginPBMDeviceNodeReadAttributeMessage *)self setHeader:?];
  }

  node = self->_node;
  v8 = v13[3];
  if (node)
  {
    if (v8)
    {
      [(MTRPluginPBMDeviceNode *)node mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(MTRPluginPBMDeviceNodeReadAttributeMessage *)self setNode:?];
  }

  attributePath = self->_attributePath;
  v10 = v13[1];
  if (attributePath)
  {
    if (v10)
    {
      [(MTRPluginPBMAttributePath *)attributePath mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(MTRPluginPBMDeviceNodeReadAttributeMessage *)self setAttributePath:?];
  }

  readParams = self->_readParams;
  v12 = v13[4];
  if (readParams)
  {
    if (v12)
    {
      [(MTRPluginPBMReadParams *)readParams mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(MTRPluginPBMDeviceNodeReadAttributeMessage *)self setReadParams:?];
  }
}

@end