@interface HKCodableHealthRecordsCode
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableHealthRecordsCode

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableHealthRecordsCode;
  v4 = [(HKCodableHealthRecordsCode *)&v8 description];
  v5 = [(HKCodableHealthRecordsCode *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  system = self->_system;
  if (system)
  {
    [v3 setObject:system forKey:@"system"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_system)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_code)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_system)
  {
    [v4 setSystem:?];
    v4 = v5;
  }

  if (self->_version)
  {
    [v5 setVersion:?];
    v4 = v5;
  }

  if (self->_code)
  {
    [v5 setCode:?];
    v4 = v5;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_system copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_version copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_code copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_displayName copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((system = self->_system, !(system | v4[3])) || -[NSString isEqual:](system, "isEqual:")) && ((version = self->_version, !(version | v4[4])) || -[NSString isEqual:](version, "isEqual:")) && ((code = self->_code, !(code | v4[1])) || -[NSString isEqual:](code, "isEqual:")))
  {
    displayName = self->_displayName;
    if (displayName | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[3])
  {
    [(HKCodableHealthRecordsCode *)self setSystem:?];
  }

  if (v4[4])
  {
    [(HKCodableHealthRecordsCode *)self setVersion:?];
  }

  if (v4[1])
  {
    [(HKCodableHealthRecordsCode *)self setCode:?];
  }

  if (v4[2])
  {
    [(HKCodableHealthRecordsCode *)self setDisplayName:?];
  }
}

@end