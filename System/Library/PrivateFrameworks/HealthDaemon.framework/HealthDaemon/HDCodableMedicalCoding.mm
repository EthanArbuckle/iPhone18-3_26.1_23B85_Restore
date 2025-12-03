@interface HDCodableMedicalCoding
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableMedicalCoding

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicalCoding;
  v4 = [(HDCodableMedicalCoding *)&v8 description];
  dictionaryRepresentation = [(HDCodableMedicalCoding *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  codingSystem = self->_codingSystem;
  if (codingSystem)
  {
    [dictionary setObject:codingSystem forKey:@"codingSystem"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_codingSystem)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_codingVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_code)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_displayString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_codingSystem)
  {
    [toCopy setCodingSystem:?];
    toCopy = v5;
  }

  if (self->_codingVersion)
  {
    [v5 setCodingVersion:?];
    toCopy = v5;
  }

  if (self->_code)
  {
    [v5 setCode:?];
    toCopy = v5;
  }

  if (self->_displayString)
  {
    [v5 setDisplayString:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_codingSystem copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_codingVersion copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_code copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_displayString copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((codingSystem = self->_codingSystem, !(codingSystem | equalCopy[2])) || -[NSString isEqual:](codingSystem, "isEqual:")) && ((codingVersion = self->_codingVersion, !(codingVersion | equalCopy[3])) || -[NSString isEqual:](codingVersion, "isEqual:")) && ((code = self->_code, !(code | equalCopy[1])) || -[NSString isEqual:](code, "isEqual:")))
  {
    displayString = self->_displayString;
    if (displayString | equalCopy[4])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    [(HDCodableMedicalCoding *)self setCodingSystem:?];
  }

  if (fromCopy[3])
  {
    [(HDCodableMedicalCoding *)self setCodingVersion:?];
  }

  if (fromCopy[1])
  {
    [(HDCodableMedicalCoding *)self setCode:?];
  }

  if (fromCopy[4])
  {
    [(HDCodableMedicalCoding *)self setDisplayString:?];
  }
}

@end