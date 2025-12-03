@interface NPSManagedConfigurationMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPSManagedConfigurationMsg

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPSManagedConfigurationMsg;
  v3 = [(NPSManagedConfigurationMsg *)&v7 description];
  dictionaryRepresentation = [(NPSManagedConfigurationMsg *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  kind = self->_kind;
  if (kind)
  {
    [v3 setObject:kind forKey:@"kind"];
  }

  feature = self->_feature;
  if (feature)
  {
    [v4 setObject:feature forKey:@"feature"];
  }

  setting = self->_setting;
  if (setting)
  {
    [v4 setObject:setting forKey:@"setting"];
  }

  restriction = self->_restriction;
  if (restriction)
  {
    [v4 setObject:restriction forKey:@"restriction"];
  }

  userSettingsAndRestrictions = self->_userSettingsAndRestrictions;
  if (userSettingsAndRestrictions)
  {
    [v4 setObject:userSettingsAndRestrictions forKey:@"userSettingsAndRestrictions"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_kind)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_feature)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_setting)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_restriction)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_userSettingsAndRestrictions)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_kind)
  {
    [toCopy setKind:?];
    toCopy = v5;
  }

  if (self->_feature)
  {
    [v5 setFeature:?];
    toCopy = v5;
  }

  if (self->_setting)
  {
    [v5 setSetting:?];
    toCopy = v5;
  }

  if (self->_restriction)
  {
    [v5 setRestriction:?];
    toCopy = v5;
  }

  if (self->_userSettingsAndRestrictions)
  {
    [v5 setUserSettingsAndRestrictions:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_kind copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_feature copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_setting copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSData *)self->_restriction copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSData *)self->_userSettingsAndRestrictions copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((kind = self->_kind, !(kind | equalCopy[2])) || -[NSString isEqual:](kind, "isEqual:")) && ((feature = self->_feature, !(feature | equalCopy[1])) || -[NSString isEqual:](feature, "isEqual:")) && ((setting = self->_setting, !(setting | equalCopy[4])) || -[NSData isEqual:](setting, "isEqual:")) && ((restriction = self->_restriction, !(restriction | equalCopy[3])) || -[NSData isEqual:](restriction, "isEqual:")))
  {
    userSettingsAndRestrictions = self->_userSettingsAndRestrictions;
    if (userSettingsAndRestrictions | equalCopy[5])
    {
      v10 = [(NSData *)userSettingsAndRestrictions isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_kind hash];
  v4 = [(NSString *)self->_feature hash]^ v3;
  v5 = [(NSData *)self->_setting hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_restriction hash];
  return v6 ^ [(NSData *)self->_userSettingsAndRestrictions hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    [(NPSManagedConfigurationMsg *)self setKind:?];
  }

  if (fromCopy[1])
  {
    [(NPSManagedConfigurationMsg *)self setFeature:?];
  }

  if (fromCopy[4])
  {
    [(NPSManagedConfigurationMsg *)self setSetting:?];
  }

  if (fromCopy[3])
  {
    [(NPSManagedConfigurationMsg *)self setRestriction:?];
  }

  if (fromCopy[5])
  {
    [(NPSManagedConfigurationMsg *)self setUserSettingsAndRestrictions:?];
  }
}

@end