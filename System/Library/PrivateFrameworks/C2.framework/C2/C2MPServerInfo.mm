@interface C2MPServerInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation C2MPServerInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = C2MPServerInfo;
  v4 = [(C2MPServerInfo *)&v8 description];
  dictionaryRepresentation = [(C2MPServerInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  serviceName = self->_serviceName;
  if (serviceName)
  {
    [dictionary setObject:serviceName forKey:@"service_name"];
  }

  partition = self->_partition;
  if (partition)
  {
    [v4 setObject:partition forKey:@"partition"];
  }

  serviceBuild = self->_serviceBuild;
  if (serviceBuild)
  {
    [v4 setObject:serviceBuild forKey:@"service_build"];
  }

  serviceInstance = self->_serviceInstance;
  if (serviceInstance)
  {
    [v4 setObject:serviceInstance forKey:@"service_instance"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_partition)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_serviceBuild)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_serviceInstance)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_serviceName)
  {
    [toCopy setServiceName:?];
    toCopy = v5;
  }

  if (self->_partition)
  {
    [v5 setPartition:?];
    toCopy = v5;
  }

  if (self->_serviceBuild)
  {
    [v5 setServiceBuild:?];
    toCopy = v5;
  }

  if (self->_serviceInstance)
  {
    [v5 setServiceInstance:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_serviceName copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_partition copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_serviceBuild copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_serviceInstance copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((serviceName = self->_serviceName, !(serviceName | equalCopy[4])) || -[NSString isEqual:](serviceName, "isEqual:")) && ((partition = self->_partition, !(partition | equalCopy[1])) || -[NSString isEqual:](partition, "isEqual:")) && ((serviceBuild = self->_serviceBuild, !(serviceBuild | equalCopy[2])) || -[NSString isEqual:](serviceBuild, "isEqual:")))
  {
    serviceInstance = self->_serviceInstance;
    if (serviceInstance | equalCopy[3])
    {
      v9 = [(NSString *)serviceInstance isEqual:?];
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
  v3 = [(NSString *)self->_serviceName hash];
  v4 = [(NSString *)self->_partition hash]^ v3;
  v5 = [(NSString *)self->_serviceBuild hash];
  return v4 ^ v5 ^ [(NSString *)self->_serviceInstance hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(C2MPServerInfo *)self setServiceName:?];
  }

  if (fromCopy[1])
  {
    [(C2MPServerInfo *)self setPartition:?];
  }

  if (fromCopy[2])
  {
    [(C2MPServerInfo *)self setServiceBuild:?];
  }

  if (fromCopy[3])
  {
    [(C2MPServerInfo *)self setServiceInstance:?];
  }
}

@end