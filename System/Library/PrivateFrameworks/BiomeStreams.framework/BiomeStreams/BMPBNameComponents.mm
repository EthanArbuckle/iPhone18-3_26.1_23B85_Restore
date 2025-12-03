@interface BMPBNameComponents
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBNameComponents

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBNameComponents;
  v4 = [(BMPBNameComponents *)&v8 description];
  dictionaryRepresentation = [(BMPBNameComponents *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  namePrefix = self->_namePrefix;
  if (namePrefix)
  {
    [dictionary setObject:namePrefix forKey:@"namePrefix"];
  }

  givenName = self->_givenName;
  if (givenName)
  {
    [v4 setObject:givenName forKey:@"givenName"];
  }

  middleName = self->_middleName;
  if (middleName)
  {
    [v4 setObject:middleName forKey:@"middleName"];
  }

  previousFamilyName = self->_previousFamilyName;
  if (previousFamilyName)
  {
    [v4 setObject:previousFamilyName forKey:@"previousFamilyName"];
  }

  familyName = self->_familyName;
  if (familyName)
  {
    [v4 setObject:familyName forKey:@"familyName"];
  }

  nameSuffix = self->_nameSuffix;
  if (nameSuffix)
  {
    [v4 setObject:nameSuffix forKey:@"nameSuffix"];
  }

  nickname = self->_nickname;
  if (nickname)
  {
    [v4 setObject:nickname forKey:@"nickname"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_namePrefix)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_givenName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_middleName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_previousFamilyName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_familyName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_nameSuffix)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_nickname)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_namePrefix)
  {
    [toCopy setNamePrefix:?];
    toCopy = v5;
  }

  if (self->_givenName)
  {
    [v5 setGivenName:?];
    toCopy = v5;
  }

  if (self->_middleName)
  {
    [v5 setMiddleName:?];
    toCopy = v5;
  }

  if (self->_previousFamilyName)
  {
    [v5 setPreviousFamilyName:?];
    toCopy = v5;
  }

  if (self->_familyName)
  {
    [v5 setFamilyName:?];
    toCopy = v5;
  }

  if (self->_nameSuffix)
  {
    [v5 setNameSuffix:?];
    toCopy = v5;
  }

  if (self->_nickname)
  {
    [v5 setNickname:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_namePrefix copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_givenName copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_middleName copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_previousFamilyName copyWithZone:zone];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSString *)self->_familyName copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(NSString *)self->_nameSuffix copyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_nickname copyWithZone:zone];
  v19 = v5[6];
  v5[6] = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((namePrefix = self->_namePrefix, !(namePrefix | equalCopy[4])) || -[NSString isEqual:](namePrefix, "isEqual:")) && ((givenName = self->_givenName, !(givenName | equalCopy[2])) || -[NSString isEqual:](givenName, "isEqual:")) && ((middleName = self->_middleName, !(middleName | equalCopy[3])) || -[NSString isEqual:](middleName, "isEqual:")) && ((previousFamilyName = self->_previousFamilyName, !(previousFamilyName | equalCopy[7])) || -[NSString isEqual:](previousFamilyName, "isEqual:")) && ((familyName = self->_familyName, !(familyName | equalCopy[1])) || -[NSString isEqual:](familyName, "isEqual:")) && ((nameSuffix = self->_nameSuffix, !(nameSuffix | equalCopy[5])) || -[NSString isEqual:](nameSuffix, "isEqual:")))
  {
    nickname = self->_nickname;
    if (nickname | equalCopy[6])
    {
      v12 = [(NSString *)nickname isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_namePrefix hash];
  v4 = [(NSString *)self->_givenName hash]^ v3;
  v5 = [(NSString *)self->_middleName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_previousFamilyName hash];
  v7 = [(NSString *)self->_familyName hash];
  v8 = v7 ^ [(NSString *)self->_nameSuffix hash];
  return v6 ^ v8 ^ [(NSString *)self->_nickname hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(BMPBNameComponents *)self setNamePrefix:?];
  }

  if (fromCopy[2])
  {
    [(BMPBNameComponents *)self setGivenName:?];
  }

  if (fromCopy[3])
  {
    [(BMPBNameComponents *)self setMiddleName:?];
  }

  if (fromCopy[7])
  {
    [(BMPBNameComponents *)self setPreviousFamilyName:?];
  }

  if (fromCopy[1])
  {
    [(BMPBNameComponents *)self setFamilyName:?];
  }

  if (fromCopy[5])
  {
    [(BMPBNameComponents *)self setNameSuffix:?];
  }

  if (fromCopy[6])
  {
    [(BMPBNameComponents *)self setNickname:?];
  }
}

@end