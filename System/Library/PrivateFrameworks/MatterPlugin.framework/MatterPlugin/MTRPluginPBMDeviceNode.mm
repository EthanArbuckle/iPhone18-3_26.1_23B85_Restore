@interface MTRPluginPBMDeviceNode
+ (id)deviceNodeWithNodeID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMDeviceNode

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDeviceNode;
  v4 = [(MTRPluginPBMDeviceNode *)&v8 description];
  v5 = [(MTRPluginPBMDeviceNode *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_nodeID];
    [v3 setObject:v4 forKey:@"nodeID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    nodeID = self->_nodeID;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_nodeID;
    *(a3 + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 1) = self->_nodeID;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) != 0 && self->_nodeID == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 16))
  {
    self->_nodeID = *(a3 + 1);
    *&self->_has |= 1u;
  }
}

+ (id)deviceNodeWithNodeID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MTRPluginPBMDeviceNode);
  if (v4)
  {
    -[MTRPluginPBMDeviceNode setNodeID:](v4, "setNodeID:", [v3 unsignedLongLongValue]);
  }

  return v4;
}

@end