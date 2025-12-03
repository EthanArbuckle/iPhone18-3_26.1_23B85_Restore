@interface NSSInstallProfileReqMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSInstallProfileReqMsg

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSInstallProfileReqMsg;
  v4 = [(NSSInstallProfileReqMsg *)&v8 description];
  dictionaryRepresentation = [(NSSInstallProfileReqMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  profileData = self->_profileData;
  if (profileData)
  {
    [dictionary setObject:profileData forKey:@"profileData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_profileData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  profileData = self->_profileData;
  if (profileData)
  {
    [to setProfileData:profileData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_profileData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    profileData = self->_profileData;
    if (profileData | equalCopy[1])
    {
      v6 = [(NSData *)profileData isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(NSSInstallProfileReqMsg *)self setProfileData:?];
  }
}

@end