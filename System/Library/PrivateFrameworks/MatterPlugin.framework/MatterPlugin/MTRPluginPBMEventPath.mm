@interface MTRPluginPBMEventPath
+ (id)eventPathWithEndpointID:(id)d clusterID:(id)iD eventID:(id)eventID;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (MTREventPath)eventPath;
- (MTRPluginPBMEventPath)initWithEventPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setEventPath:(id)path;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMEventPath

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMEventPath;
  v4 = [(MTRPluginPBMEventPath *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMEventPath *)self dictionaryRepresentation];
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
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_eventID];
    [dictionary setObject:v6 forKey:@"eventID"];
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
    eventID = self->_eventID;
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
    *(toCopy + 4) = self->_eventID;
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
    *(v5 + 16) = self->_eventID;
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
    if ((*(equalCopy + 20) & 1) != 0 && self->_eventID == *(equalCopy + 4))
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
    v4 = 2654435761 * self->_eventID;
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
    [(MTRPluginPBMEventPath *)self setClusterPath:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 20))
  {
    self->_eventID = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

- (MTRPluginPBMEventPath)initWithEventPath:(id)path
{
  pathCopy = path;
  if (pathCopy && (self = [(MTRPluginPBMEventPath *)self init]) != 0)
  {
    v5 = [[MTRPluginPBMClusterPath alloc] initWithClusterPath:pathCopy];
    [(MTRPluginPBMEventPath *)self setClusterPath:v5];

    event = [pathCopy event];
    -[MTRPluginPBMEventPath setEventID:](self, "setEventID:", [event unsignedIntValue]);

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)eventPathWithEndpointID:(id)d clusterID:(id)iD eventID:(id)eventID
{
  eventIDCopy = eventID;
  iDCopy = iD;
  dCopy = d;
  v10 = objc_alloc_init(MTRPluginPBMEventPath);
  v11 = [MTRPluginPBMClusterPath clusterPathWithEndpointID:dCopy clusterID:iDCopy];

  [(MTRPluginPBMEventPath *)v10 setClusterPath:v11];
  unsignedIntValue = [eventIDCopy unsignedIntValue];

  [(MTRPluginPBMEventPath *)v10 setEventID:unsignedIntValue];

  return v10;
}

- (void)setEventPath:(id)path
{
  pathCopy = path;
  v5 = [[MTRPluginPBMClusterPath alloc] initWithClusterPath:pathCopy];
  [(MTRPluginPBMEventPath *)self setClusterPath:v5];

  event = [pathCopy event];

  -[MTRPluginPBMEventPath setEventID:](self, "setEventID:", [event unsignedIntValue]);
}

- (MTREventPath)eventPath
{
  v3 = MEMORY[0x277CD5408];
  v4 = MEMORY[0x277CCABB0];
  clusterPath = [(MTRPluginPBMEventPath *)self clusterPath];
  v6 = [v4 numberWithUnsignedInt:{objc_msgSend(clusterPath, "endpointID")}];
  v7 = MEMORY[0x277CCABB0];
  clusterPath2 = [(MTRPluginPBMEventPath *)self clusterPath];
  v9 = [v7 numberWithUnsignedInt:{objc_msgSend(clusterPath2, "clusterID")}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MTRPluginPBMEventPath eventID](self, "eventID")}];
  v11 = [v3 eventPathWithEndpointID:v6 clusterID:v9 eventID:v10];

  return v11;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMEventPath *)self hasEventID]|| ![(MTRPluginPBMEventPath *)self hasClusterPath])
  {
    return 0;
  }

  clusterPath = [(MTRPluginPBMEventPath *)self clusterPath];
  isValid = [clusterPath isValid];

  return isValid;
}

@end