@interface MTRPluginPBMClusterPath
+ (MTRPluginPBMClusterPath)clusterPathWithEndpointID:(id)d clusterID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (MTRClusterPath)clusterPath;
- (MTRPluginPBMClusterPath)initWithClusterPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setClusterPath:(id)path;
- (void)setHasEndpointID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMClusterPath

- (void)setHasEndpointID:(BOOL)d
{
  if (d)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMClusterPath;
  v4 = [(MTRPluginPBMClusterPath *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMClusterPath *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_endpointID];
    [dictionary setObject:v5 forKey:@"endpointID"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_clusterID];
    [dictionary setObject:v6 forKey:@"clusterID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    endpointID = self->_endpointID;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    clusterID = self->_clusterID;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_endpointID;
    *(toCopy + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[2] = self->_clusterID;
    *(toCopy + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_endpointID;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_clusterID;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0 || self->_endpointID != *(equalCopy + 3))
    {
      goto LABEL_11;
    }
  }

  else if ((*(equalCopy + 16) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_clusterID != *(equalCopy + 2))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_endpointID;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_clusterID;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if ((v5 & 2) != 0)
  {
    self->_endpointID = *(fromCopy + 3);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 16);
  }

  if (v5)
  {
    self->_clusterID = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

- (MTRPluginPBMClusterPath)initWithClusterPath:(id)path
{
  pathCopy = path;
  if (pathCopy && (self = [(MTRPluginPBMClusterPath *)self init]) != 0)
  {
    endpoint = [pathCopy endpoint];
    -[MTRPluginPBMClusterPath setEndpointID:](self, "setEndpointID:", [endpoint unsignedIntValue]);

    cluster = [pathCopy cluster];
    -[MTRPluginPBMClusterPath setClusterID:](self, "setClusterID:", [cluster unsignedIntValue]);

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (MTRPluginPBMClusterPath)clusterPathWithEndpointID:(id)d clusterID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = objc_alloc_init(MTRPluginPBMClusterPath);
  unsignedIntValue = [dCopy unsignedIntValue];

  [(MTRPluginPBMClusterPath *)v7 setEndpointID:unsignedIntValue];
  unsignedIntValue2 = [iDCopy unsignedIntValue];

  [(MTRPluginPBMClusterPath *)v7 setClusterID:unsignedIntValue2];

  return v7;
}

- (void)setClusterPath:(id)path
{
  pathCopy = path;
  endpoint = [pathCopy endpoint];
  -[MTRPluginPBMClusterPath setEndpointID:](self, "setEndpointID:", [endpoint unsignedIntValue]);

  cluster = [pathCopy cluster];

  -[MTRPluginPBMClusterPath setClusterID:](self, "setClusterID:", [cluster unsignedIntValue]);
}

- (MTRClusterPath)clusterPath
{
  v3 = MEMORY[0x277CD5290];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MTRPluginPBMClusterPath endpointID](self, "endpointID")}];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MTRPluginPBMClusterPath clusterID](self, "clusterID")}];
  v6 = [v3 clusterPathWithEndpointID:v4 clusterID:v5];

  return v6;
}

- (BOOL)isValid
{
  hasEndpointID = [(MTRPluginPBMClusterPath *)self hasEndpointID];
  if (hasEndpointID)
  {

    LOBYTE(hasEndpointID) = [(MTRPluginPBMClusterPath *)self hasClusterID];
  }

  return hasEndpointID;
}

@end