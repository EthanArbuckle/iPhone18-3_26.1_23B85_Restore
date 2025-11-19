@interface HDCodableMedicalCoding
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableMedicalCoding

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicalCoding;
  v4 = [(HDCodableMedicalCoding *)&v8 description];
  v5 = [(HDCodableMedicalCoding *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  codingSystem = self->_codingSystem;
  if (codingSystem)
  {
    [v3 setObject:codingSystem forKey:@"codingSystem"];
  }

  codingVersion = self->_codingVersion;
  if (codingVersion)
  {
    [v4 setObject:codingVersion forKey:@"codingVersion"];
  }

  code = self->_code;
  if (code)
  {
    [v4 setObject:code forKey:@"code"];
  }

  displayString = self->_displayString;
  if (displayString)
  {
    [v4 setObject:displayString forKey:@"displayString"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_codingSystem)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_codingVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_code)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_displayString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_codingSystem)
  {
    [v4 setCodingSystem:?];
    v4 = v5;
  }

  if (self->_codingVersion)
  {
    [v5 setCodingVersion:?];
    v4 = v5;
  }

  if (self->_code)
  {
    [v5 setCode:?];
    v4 = v5;
  }

  if (self->_displayString)
  {
    [v5 setDisplayString:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_codingSystem copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_codingVersion copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_code copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_displayString copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((codingSystem = self->_codingSystem, !(codingSystem | v4[2])) || -[NSString isEqual:](codingSystem, "isEqual:")) && ((codingVersion = self->_codingVersion, !(codingVersion | v4[3])) || -[NSString isEqual:](codingVersion, "isEqual:")) && ((code = self->_code, !(code | v4[1])) || -[NSString isEqual:](code, "isEqual:")))
  {
    displayString = self->_displayString;
    if (displayString | v4[4])
    {
      v9 = [(NSString *)displayString isEqual:?];
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
  v3 = [(NSString *)self->_codingSystem hash];
  v4 = [(NSString *)self->_codingVersion hash]^ v3;
  v5 = [(NSString *)self->_code hash];
  return v4 ^ v5 ^ [(NSString *)self->_displayString hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    [(HDCodableMedicalCoding *)self setCodingSystem:?];
  }

  if (v4[3])
  {
    [(HDCodableMedicalCoding *)self setCodingVersion:?];
  }

  if (v4[1])
  {
    [(HDCodableMedicalCoding *)self setCode:?];
  }

  if (v4[4])
  {
    [(HDCodableMedicalCoding *)self setDisplayString:?];
  }
}

@end