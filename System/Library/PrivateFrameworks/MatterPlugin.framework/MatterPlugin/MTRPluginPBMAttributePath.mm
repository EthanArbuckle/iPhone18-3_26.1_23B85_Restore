@interface MTRPluginPBMAttributePath
+ (id)attributePathWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (MTRAttributePath)attributePath;
- (MTRPluginPBMAttributePath)initWithAttributePath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setAttributePath:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMAttributePath

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMAttributePath;
  v4 = [(MTRPluginPBMAttributePath *)&v8 description];
  v5 = [(MTRPluginPBMAttributePath *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  clusterPath = self->_clusterPath;
  if (clusterPath)
  {
    v5 = [(MTRPluginPBMClusterPath *)clusterPath dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"clusterPath"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_attributeID];
    [v3 setObject:v6 forKey:@"attributeID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_clusterPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    attributeID = self->_attributeID;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_clusterPath)
  {
    v5 = v4;
    [v4 setClusterPath:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_attributeID;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTRPluginPBMClusterPath *)self->_clusterPath copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_attributeID;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  clusterPath = self->_clusterPath;
  if (clusterPath | *(v4 + 2))
  {
    if (![(MTRPluginPBMClusterPath *)clusterPath isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_attributeID == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  clusterPath = self->_clusterPath;
  v6 = *(v4 + 2);
  if (clusterPath)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(MTRPluginPBMClusterPath *)clusterPath mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(MTRPluginPBMAttributePath *)self setClusterPath:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 24))
  {
    self->_attributeID = *(v4 + 2);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

- (MTRPluginPBMAttributePath)initWithAttributePath:(id)a3
{
  v4 = a3;
  if (v4 && (self = [(MTRPluginPBMAttributePath *)self init]) != 0)
  {
    v5 = [[MTRPluginPBMClusterPath alloc] initWithClusterPath:v4];
    [(MTRPluginPBMAttributePath *)self setClusterPath:v5];

    v6 = [v4 attribute];
    -[MTRPluginPBMAttributePath setAttributeID:](self, "setAttributeID:", [v6 unsignedIntValue]);

    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)attributePathWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(MTRPluginPBMAttributePath);
  v11 = [MTRPluginPBMClusterPath clusterPathWithEndpointID:v9 clusterID:v8];

  [(MTRPluginPBMAttributePath *)v10 setClusterPath:v11];
  v12 = [v7 unsignedIntValue];

  [(MTRPluginPBMAttributePath *)v10 setAttributeID:v12];

  return v10;
}

- (void)setAttributePath:(id)a3
{
  v4 = a3;
  v5 = [[MTRPluginPBMClusterPath alloc] initWithClusterPath:v4];
  [(MTRPluginPBMAttributePath *)self setClusterPath:v5];

  v6 = [v4 attribute];

  -[MTRPluginPBMAttributePath setAttributeID:](self, "setAttributeID:", [v6 unsignedIntValue]);
}

- (MTRAttributePath)attributePath
{
  v3 = MEMORY[0x277CD51C0];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(MTRPluginPBMAttributePath *)self clusterPath];
  v6 = [v4 numberWithUnsignedInt:{objc_msgSend(v5, "endpointID")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [(MTRPluginPBMAttributePath *)self clusterPath];
  v9 = [v7 numberWithUnsignedInt:{objc_msgSend(v8, "clusterID")}];
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

  v3 = [(MTRPluginPBMAttributePath *)self clusterPath];
  v4 = [v3 isValid];

  return v4;
}

@end