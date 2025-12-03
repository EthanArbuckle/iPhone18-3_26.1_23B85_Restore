@interface HKCodableHealthRecordsCode
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableHealthRecordsCode

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableHealthRecordsCode;
  v4 = [(HKCodableHealthRecordsCode *)&v8 description];
  dictionaryRepresentation = [(HKCodableHealthRecordsCode *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  system = self->_system;
  if (system)
  {
    [dictionary setObject:system forKey:@"system"];
  }

  version = self->_version;
  if (version)
  {
    [v4 setObject:version forKey:@"version"];
  }

  code = self->_code;
  if (code)
  {
    [v4 setObject:code forKey:@"code"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_system)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_code)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_system)
  {
    [toCopy setSystem:?];
    toCopy = v5;
  }

  if (self->_version)
  {
    [v5 setVersion:?];
    toCopy = v5;
  }

  if (self->_code)
  {
    [v5 setCode:?];
    toCopy = v5;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_system copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_version copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_code copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_displayName copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((system = self->_system, !(system | equalCopy[3])) || -[NSString isEqual:](system, "isEqual:")) && ((version = self->_version, !(version | equalCopy[4])) || -[NSString isEqual:](version, "isEqual:")) && ((code = self->_code, !(code | equalCopy[1])) || -[NSString isEqual:](code, "isEqual:")))
  {
    displayName = self->_displayName;
    if (displayName | equalCopy[2])
    {
      v9 = [(NSString *)displayName isEqual:?];
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
  v3 = [(NSString *)self->_system hash];
  v4 = [(NSString *)self->_version hash]^ v3;
  v5 = [(NSString *)self->_code hash];
  return v4 ^ v5 ^ [(NSString *)self->_displayName hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(HKCodableHealthRecordsCode *)self setSystem:?];
  }

  if (fromCopy[4])
  {
    [(HKCodableHealthRecordsCode *)self setVersion:?];
  }

  if (fromCopy[1])
  {
    [(HKCodableHealthRecordsCode *)self setCode:?];
  }

  if (fromCopy[2])
  {
    [(HKCodableHealthRecordsCode *)self setDisplayName:?];
  }
}

@end