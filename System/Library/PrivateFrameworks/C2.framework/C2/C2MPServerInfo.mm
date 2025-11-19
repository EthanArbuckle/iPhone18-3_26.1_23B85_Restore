@interface C2MPServerInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation C2MPServerInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = C2MPServerInfo;
  v4 = [(C2MPServerInfo *)&v8 description];
  v5 = [(C2MPServerInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v3 setObject:serviceName forKey:@"service_name"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_partition)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_serviceBuild)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_serviceInstance)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_serviceName)
  {
    [v4 setServiceName:?];
    v4 = v5;
  }

  if (self->_partition)
  {
    [v5 setPartition:?];
    v4 = v5;
  }

  if (self->_serviceBuild)
  {
    [v5 setServiceBuild:?];
    v4 = v5;
  }

  if (self->_serviceInstance)
  {
    [v5 setServiceInstance:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_serviceName copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_partition copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_serviceBuild copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_serviceInstance copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((serviceName = self->_serviceName, !(serviceName | v4[4])) || -[NSString isEqual:](serviceName, "isEqual:")) && ((partition = self->_partition, !(partition | v4[1])) || -[NSString isEqual:](partition, "isEqual:")) && ((serviceBuild = self->_serviceBuild, !(serviceBuild | v4[2])) || -[NSString isEqual:](serviceBuild, "isEqual:")))
  {
    serviceInstance = self->_serviceInstance;
    if (serviceInstance | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    [(C2MPServerInfo *)self setServiceName:?];
  }

  if (v4[1])
  {
    [(C2MPServerInfo *)self setPartition:?];
  }

  if (v4[2])
  {
    [(C2MPServerInfo *)self setServiceBuild:?];
  }

  if (v4[3])
  {
    [(C2MPServerInfo *)self setServiceInstance:?];
  }
}

@end