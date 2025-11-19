@interface BMPBNameComponents
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBNameComponents

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBNameComponents;
  v4 = [(BMPBNameComponents *)&v8 description];
  v5 = [(BMPBNameComponents *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  namePrefix = self->_namePrefix;
  if (namePrefix)
  {
    [v3 setObject:namePrefix forKey:@"namePrefix"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_namePrefix)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_givenName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_middleName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_previousFamilyName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_familyName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_nameSuffix)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_nickname)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_namePrefix)
  {
    [v4 setNamePrefix:?];
    v4 = v5;
  }

  if (self->_givenName)
  {
    [v5 setGivenName:?];
    v4 = v5;
  }

  if (self->_middleName)
  {
    [v5 setMiddleName:?];
    v4 = v5;
  }

  if (self->_previousFamilyName)
  {
    [v5 setPreviousFamilyName:?];
    v4 = v5;
  }

  if (self->_familyName)
  {
    [v5 setFamilyName:?];
    v4 = v5;
  }

  if (self->_nameSuffix)
  {
    [v5 setNameSuffix:?];
    v4 = v5;
  }

  if (self->_nickname)
  {
    [v5 setNickname:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_namePrefix copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_givenName copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_middleName copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_previousFamilyName copyWithZone:a3];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSString *)self->_familyName copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(NSString *)self->_nameSuffix copyWithZone:a3];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_nickname copyWithZone:a3];
  v19 = v5[6];
  v5[6] = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((namePrefix = self->_namePrefix, !(namePrefix | v4[4])) || -[NSString isEqual:](namePrefix, "isEqual:")) && ((givenName = self->_givenName, !(givenName | v4[2])) || -[NSString isEqual:](givenName, "isEqual:")) && ((middleName = self->_middleName, !(middleName | v4[3])) || -[NSString isEqual:](middleName, "isEqual:")) && ((previousFamilyName = self->_previousFamilyName, !(previousFamilyName | v4[7])) || -[NSString isEqual:](previousFamilyName, "isEqual:")) && ((familyName = self->_familyName, !(familyName | v4[1])) || -[NSString isEqual:](familyName, "isEqual:")) && ((nameSuffix = self->_nameSuffix, !(nameSuffix | v4[5])) || -[NSString isEqual:](nameSuffix, "isEqual:")))
  {
    nickname = self->_nickname;
    if (nickname | v4[6])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    [(BMPBNameComponents *)self setNamePrefix:?];
  }

  if (v4[2])
  {
    [(BMPBNameComponents *)self setGivenName:?];
  }

  if (v4[3])
  {
    [(BMPBNameComponents *)self setMiddleName:?];
  }

  if (v4[7])
  {
    [(BMPBNameComponents *)self setPreviousFamilyName:?];
  }

  if (v4[1])
  {
    [(BMPBNameComponents *)self setFamilyName:?];
  }

  if (v4[5])
  {
    [(BMPBNameComponents *)self setNameSuffix:?];
  }

  if (v4[6])
  {
    [(BMPBNameComponents *)self setNickname:?];
  }
}

@end