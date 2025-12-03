@interface MTRPluginPBMCommandPath
+ (id)commandPathWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (MTRCommandPath)commandPath;
- (MTRPluginPBMCommandPath)initWithCommandPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setCommandPath:(id)path;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMCommandPath

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMCommandPath;
  v4 = [(MTRPluginPBMCommandPath *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMCommandPath *)self dictionaryRepresentation];
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
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_commandID];
    [dictionary setObject:v6 forKey:@"commandID"];
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
    commandID = self->_commandID;
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
    *(toCopy + 4) = self->_commandID;
    *(toCopy + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTRPluginPBMClusterPath *)self->_clusterPath copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_commandID;
    *(v5 + 20) |= 1u;
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
  if (clusterPath | *(equalCopy + 1))
  {
    if (![(MTRPluginPBMClusterPath *)clusterPath isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_commandID == *(equalCopy + 4))
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
    v4 = 2654435761 * self->_commandID;
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
  v6 = *(fromCopy + 1);
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
    [(MTRPluginPBMCommandPath *)self setClusterPath:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 20))
  {
    self->_commandID = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

- (MTRPluginPBMCommandPath)initWithCommandPath:(id)path
{
  pathCopy = path;
  if (pathCopy && (self = [(MTRPluginPBMCommandPath *)self init]) != 0)
  {
    v5 = [[MTRPluginPBMClusterPath alloc] initWithClusterPath:pathCopy];
    [(MTRPluginPBMCommandPath *)self setClusterPath:v5];

    command = [pathCopy command];
    -[MTRPluginPBMCommandPath setCommandID:](self, "setCommandID:", [command unsignedIntValue]);

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)commandPathWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID
{
  commandIDCopy = commandID;
  iDCopy = iD;
  dCopy = d;
  v10 = objc_alloc_init(MTRPluginPBMCommandPath);
  v11 = [MTRPluginPBMClusterPath clusterPathWithEndpointID:dCopy clusterID:iDCopy];

  [(MTRPluginPBMCommandPath *)v10 setClusterPath:v11];
  unsignedIntValue = [commandIDCopy unsignedIntValue];

  [(MTRPluginPBMCommandPath *)v10 setCommandID:unsignedIntValue];

  return v10;
}

- (void)setCommandPath:(id)path
{
  pathCopy = path;
  v5 = [[MTRPluginPBMClusterPath alloc] initWithClusterPath:pathCopy];
  [(MTRPluginPBMCommandPath *)self setClusterPath:v5];

  command = [pathCopy command];

  -[MTRPluginPBMCommandPath setCommandID:](self, "setCommandID:", [command unsignedIntValue]);
}

- (MTRCommandPath)commandPath
{
  v3 = MEMORY[0x277CD52F0];
  v4 = MEMORY[0x277CCABB0];
  clusterPath = [(MTRPluginPBMCommandPath *)self clusterPath];
  v6 = [v4 numberWithUnsignedInt:{objc_msgSend(clusterPath, "endpointID")}];
  v7 = MEMORY[0x277CCABB0];
  clusterPath2 = [(MTRPluginPBMCommandPath *)self clusterPath];
  v9 = [v7 numberWithUnsignedInt:{objc_msgSend(clusterPath2, "clusterID")}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MTRPluginPBMCommandPath commandID](self, "commandID")}];
  v11 = [v3 commandPathWithEndpointID:v6 clusterID:v9 commandID:v10];

  return v11;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMCommandPath *)self hasCommandID]|| ![(MTRPluginPBMCommandPath *)self hasClusterPath])
  {
    return 0;
  }

  clusterPath = [(MTRPluginPBMCommandPath *)self clusterPath];
  isValid = [clusterPath isValid];

  return isValid;
}

@end