@interface MTRPluginPBMAttributePath
+ (id)attributePathWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (MTRAttributePath)attributePath;
- (MTRPluginPBMAttributePath)initWithAttributePath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setAttributePath:(id)path;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMAttributePath

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMAttributePath;
  v4 = [(MTRPluginPBMAttributePath *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMAttributePath *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  clusterPath = self->_clusterPath;
  if (clusterPath)
  {
    dictionaryRepresentation = [(MTRPluginPBMClusterPath *)clusterPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"clusterPath"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_attributeID];
    [dictionary setObject:v6 forKey:@"attributeID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_clusterPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    attributeID = self->_attributeID;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_clusterPath)
  {
    v5 = toCopy;
    [toCopy setClusterPath:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_attributeID;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTRPluginPBMClusterPath *)self->_clusterPath copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_attributeID;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  clusterPath = self->_clusterPath;
  if (clusterPath | *(equalCopy + 2))
  {
    if (![(MTRPluginPBMClusterPath *)clusterPath isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_attributeID == *(equalCopy + 2))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(MTRPluginPBMClusterPath *)self->_clusterPath hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_attributeID;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  clusterPath = self->_clusterPath;
  v6 = *(fromCopy + 2);
  if (clusterPath)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(MTRPluginPBMClusterPath *)clusterPath mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(MTRPluginPBMAttributePath *)self setClusterPath:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 24))
  {
    self->_attributeID = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

- (MTRPluginPBMAttributePath)initWithAttributePath:(id)path
{
  pathCopy = path;
  if (pathCopy && (self = [(MTRPluginPBMAttributePath *)self init]) != 0)
  {
    v5 = [[MTRPluginPBMClusterPath alloc] initWithClusterPath:pathCopy];
    [(MTRPluginPBMAttributePath *)self setClusterPath:v5];

    attribute = [pathCopy attribute];
    -[MTRPluginPBMAttributePath setAttributeID:](self, "setAttributeID:", [attribute unsignedIntValue]);

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)attributePathWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID
{
  attributeIDCopy = attributeID;
  iDCopy = iD;
  dCopy = d;
  v10 = objc_alloc_init(MTRPluginPBMAttributePath);
  v11 = [MTRPluginPBMClusterPath clusterPathWithEndpointID:dCopy clusterID:iDCopy];

  [(MTRPluginPBMAttributePath *)v10 setClusterPath:v11];
  unsignedIntValue = [attributeIDCopy unsignedIntValue];

  [(MTRPluginPBMAttributePath *)v10 setAttributeID:unsignedIntValue];

  return v10;
}

- (void)setAttributePath:(id)path
{
  pathCopy = path;
  v5 = [[MTRPluginPBMClusterPath alloc] initWithClusterPath:pathCopy];
  [(MTRPluginPBMAttributePath *)self setClusterPath:v5];

  attribute = [pathCopy attribute];

  -[MTRPluginPBMAttributePath setAttributeID:](self, "setAttributeID:", [attribute unsignedIntValue]);
}

- (MTRAttributePath)attributePath
{
  v3 = MEMORY[0x277CD51C0];
  v4 = MEMORY[0x277CCABB0];
  clusterPath = [(MTRPluginPBMAttributePath *)self clusterPath];
  v6 = [v4 numberWithUnsignedInt:{objc_msgSend(clusterPath, "endpointID")}];
  v7 = MEMORY[0x277CCABB0];
  clusterPath2 = [(MTRPluginPBMAttributePath *)self clusterPath];
  v9 = [v7 numberWithUnsignedInt:{objc_msgSend(clusterPath2, "clusterID")}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MTRPluginPBMAttributePath attributeID](self, "attributeID")}];
  v11 = [v3 attributePathWithEndpointID:v6 clusterID:v9 attributeID:v10];

  return v11;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMAttributePath *)self hasAttributeID]|| ![(MTRPluginPBMAttributePath *)self hasClusterPath])
  {
    return 0;
  }

  clusterPath = [(MTRPluginPBMAttributePath *)self clusterPath];
  isValid = [clusterPath isValid];

  return isValid;
}

@end