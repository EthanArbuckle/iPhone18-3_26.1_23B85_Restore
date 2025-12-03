@interface MTRPluginPBMDeviceNodeReadAttributeMessage
+ (id)deviceNodeReadAttributeMessageFromMessage:(id)message;
+ (id)deviceNodeReadAttributeMessageWithNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID readParams:(id)params;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMDeviceNodeReadAttributeMessage

+ (id)deviceNodeReadAttributeMessageFromMessage:(id)message
{
  messageCopy = message;
  v4 = [MTRPluginPBMDeviceNodeReadAttributeMessage alloc];
  messageData = [messageCopy messageData];

  v6 = [(MTRPluginPBMDeviceNodeReadAttributeMessage *)v4 initWithData:messageData];
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

+ (id)deviceNodeReadAttributeMessageWithNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID readParams:(id)params
{
  paramsCopy = params;
  attributeIDCopy = attributeID;
  clusterIDCopy = clusterID;
  iDCopy = iD;
  dCopy = d;
  v16 = objc_alloc_init(MTRPluginPBMDeviceNodeReadAttributeMessage);
  v17 = [MTRPluginPBMDeviceNode deviceNodeWithNodeID:dCopy];

  [(MTRPluginPBMDeviceNodeReadAttributeMessage *)v16 setNode:v17];
  v18 = [MTRPluginPBMAttributePath attributePathWithEndpointID:iDCopy clusterID:clusterIDCopy attributeID:attributeIDCopy];

  [(MTRPluginPBMDeviceNodeReadAttributeMessage *)v16 setAttributePath:v18];
  if (paramsCopy)
  {
    v19 = [[MTRPluginPBMReadParams alloc] initWithReadParams:paramsCopy];
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

  header = [(MTRPluginPBMDeviceNodeReadAttributeMessage *)self header];
  if ([header isValid] && -[MTRPluginPBMDeviceNodeReadAttributeMessage hasNode](self, "hasNode"))
  {
    node = [(MTRPluginPBMDeviceNodeReadAttributeMessage *)self node];
    if ([node isValid] && -[MTRPluginPBMDeviceNodeReadAttributeMessage hasAttributePath](self, "hasAttributePath"))
    {
      attributePath = [(MTRPluginPBMDeviceNodeReadAttributeMessage *)self attributePath];
      isValid = [attributePath isValid];
    }

    else
    {
      isValid = 0;
    }
  }

  else
  {
    isValid = 0;
  }

  return isValid;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDeviceNodeReadAttributeMessage;
  v4 = [(MTRPluginPBMDeviceNodeReadAttributeMessage *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMDeviceNodeReadAttributeMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(MTRPluginPBMHeader *)header dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"header"];
  }

  node = self->_node;
  if (node)
  {
    dictionaryRepresentation2 = [(MTRPluginPBMDeviceNode *)node dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"node"];
  }

  attributePath = self->_attributePath;
  if (attributePath)
  {
    dictionaryRepresentation3 = [(MTRPluginPBMAttributePath *)attributePath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"attributePath"];
  }

  readParams = self->_readParams;
  if (readParams)
  {
    dictionaryRepresentation4 = [(MTRPluginPBMReadParams *)readParams dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"readParams"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_node)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_attributePath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_readParams)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_header)
  {
    [toCopy setHeader:?];
    toCopy = v5;
  }

  if (self->_node)
  {
    [v5 setNode:?];
    toCopy = v5;
  }

  if (self->_attributePath)
  {
    [v5 setAttributePath:?];
    toCopy = v5;
  }

  if (self->_readParams)
  {
    [v5 setReadParams:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(MTRPluginPBMDeviceNode *)self->_node copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(MTRPluginPBMAttributePath *)self->_attributePath copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(MTRPluginPBMReadParams *)self->_readParams copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | equalCopy[2])) || -[MTRPluginPBMHeader isEqual:](header, "isEqual:")) && ((node = self->_node, !(node | equalCopy[3])) || -[MTRPluginPBMDeviceNode isEqual:](node, "isEqual:")) && ((attributePath = self->_attributePath, !(attributePath | equalCopy[1])) || -[MTRPluginPBMAttributePath isEqual:](attributePath, "isEqual:")))
  {
    readParams = self->_readParams;
    if (readParams | equalCopy[4])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v13 = fromCopy;
  v6 = fromCopy[2];
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