@interface NSSProfileDataRespMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSProfileDataRespMsg

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSProfileDataRespMsg;
  v4 = [(NSSProfileDataRespMsg *)&v8 description];
  dictionaryRepresentation = [(NSSProfileDataRespMsg *)self dictionaryRepresentation];
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

  profilePayloadsSummary = self->_profilePayloadsSummary;
  if (profilePayloadsSummary)
  {
    [v4 setObject:profilePayloadsSummary forKey:@"profilePayloadsSummary"];
  }

  rmConfigurationViewModels = self->_rmConfigurationViewModels;
  if (rmConfigurationViewModels)
  {
    [v4 setObject:rmConfigurationViewModels forKey:@"rmConfigurationViewModels"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_profileData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_profilePayloadsSummary)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_rmConfigurationViewModels)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_profileData)
  {
    [toCopy setProfileData:?];
    toCopy = v5;
  }

  if (self->_profilePayloadsSummary)
  {
    [v5 setProfilePayloadsSummary:?];
    toCopy = v5;
  }

  if (self->_rmConfigurationViewModels)
  {
    [v5 setRmConfigurationViewModels:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_profileData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_profilePayloadsSummary copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_rmConfigurationViewModels copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((profileData = self->_profileData, !(profileData | equalCopy[1])) || -[NSData isEqual:](profileData, "isEqual:")) && ((profilePayloadsSummary = self->_profilePayloadsSummary, !(profilePayloadsSummary | equalCopy[2])) || -[NSData isEqual:](profilePayloadsSummary, "isEqual:")))
  {
    rmConfigurationViewModels = self->_rmConfigurationViewModels;
    if (rmConfigurationViewModels | equalCopy[3])
    {
      v8 = [(NSData *)rmConfigurationViewModels isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_profileData hash];
  v4 = [(NSData *)self->_profilePayloadsSummary hash]^ v3;
  return v4 ^ [(NSData *)self->_rmConfigurationViewModels hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(NSSProfileDataRespMsg *)self setProfileData:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NSSProfileDataRespMsg *)self setProfilePayloadsSummary:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(NSSProfileDataRespMsg *)self setRmConfigurationViewModels:?];
    fromCopy = v5;
  }
}

@end