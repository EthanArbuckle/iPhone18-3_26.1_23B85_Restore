@interface NSSProfileDataRespMsg
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSSProfileDataRespMsg

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSProfileDataRespMsg;
  v4 = [(NSSProfileDataRespMsg *)&v8 description];
  v5 = [(NSSProfileDataRespMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  profileData = self->_profileData;
  if (profileData)
  {
    [v3 setObject:profileData forKey:@"profileData"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_profileData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_profilePayloadsSummary)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_rmConfigurationViewModels)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_profileData)
  {
    [v4 setProfileData:?];
    v4 = v5;
  }

  if (self->_profilePayloadsSummary)
  {
    [v5 setProfilePayloadsSummary:?];
    v4 = v5;
  }

  if (self->_rmConfigurationViewModels)
  {
    [v5 setRmConfigurationViewModels:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_profileData copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_profilePayloadsSummary copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_rmConfigurationViewModels copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((profileData = self->_profileData, !(profileData | v4[1])) || -[NSData isEqual:](profileData, "isEqual:")) && ((profilePayloadsSummary = self->_profilePayloadsSummary, !(profilePayloadsSummary | v4[2])) || -[NSData isEqual:](profilePayloadsSummary, "isEqual:")))
  {
    rmConfigurationViewModels = self->_rmConfigurationViewModels;
    if (rmConfigurationViewModels | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(NSSProfileDataRespMsg *)self setProfileData:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NSSProfileDataRespMsg *)self setProfilePayloadsSummary:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(NSSProfileDataRespMsg *)self setRmConfigurationViewModels:?];
    v4 = v5;
  }
}

@end