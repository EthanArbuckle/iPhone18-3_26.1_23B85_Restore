@interface MTRPluginPBMDeviceNode
+ (id)deviceNodeWithNodeID:(id)d;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMDeviceNode

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDeviceNode;
  v4 = [(MTRPluginPBMDeviceNode *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMDeviceNode *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_nodeID];
    [dictionary setObject:v4 forKey:@"nodeID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    nodeID = self->_nodeID;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_nodeID;
    *(to + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 1) = self->_nodeID;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) != 0 && self->_nodeID == *(equalCopy + 1))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761u * self->_nodeID;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 16))
  {
    self->_nodeID = *(from + 1);
    *&self->_has |= 1u;
  }
}

+ (id)deviceNodeWithNodeID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(MTRPluginPBMDeviceNode);
  if (v4)
  {
    -[MTRPluginPBMDeviceNode setNodeID:](v4, "setNodeID:", [dCopy unsignedLongLongValue]);
  }

  return v4;
}

@end