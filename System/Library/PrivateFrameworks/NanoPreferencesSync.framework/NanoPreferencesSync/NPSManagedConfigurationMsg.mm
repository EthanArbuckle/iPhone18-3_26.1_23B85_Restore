@interface NPSManagedConfigurationMsg
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPSManagedConfigurationMsg

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPSManagedConfigurationMsg;
  v3 = [(NPSManagedConfigurationMsg *)&v7 description];
  v4 = [(NPSManagedConfigurationMsg *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_kind)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_feature)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_setting)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_restriction)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_userSettingsAndRestrictions)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_kind)
  {
    [v4 setKind:?];
    v4 = v5;
  }

  if (self->_feature)
  {
    [v5 setFeature:?];
    v4 = v5;
  }

  if (self->_setting)
  {
    [v5 setSetting:?];
    v4 = v5;
  }

  if (self->_restriction)
  {
    [v5 setRestriction:?];
    v4 = v5;
  }

  if (self->_userSettingsAndRestrictions)
  {
    [v5 setUserSettingsAndRestrictions:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_kind copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_feature copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_setting copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSData *)self->_restriction copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSData *)self->_userSettingsAndRestrictions copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((kind = self->_kind, !(kind | v4[2])) || -[NSString isEqual:](kind, "isEqual:")) && ((feature = self->_feature, !(feature | v4[1])) || -[NSString isEqual:](feature, "isEqual:")) && ((setting = self->_setting, !(setting | v4[4])) || -[NSData isEqual:](setting, "isEqual:")) && ((restriction = self->_restriction, !(restriction | v4[3])) || -[NSData isEqual:](restriction, "isEqual:")))
  {
    userSettingsAndRestrictions = self->_userSettingsAndRestrictions;
    if (userSettingsAndRestrictions | v4[5])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    [(NPSManagedConfigurationMsg *)self setKind:?];
  }

  if (v4[1])
  {
    [(NPSManagedConfigurationMsg *)self setFeature:?];
  }

  if (v4[4])
  {
    [(NPSManagedConfigurationMsg *)self setSetting:?];
  }

  if (v4[3])
  {
    [(NPSManagedConfigurationMsg *)self setRestriction:?];
  }

  if (v4[5])
  {
    [(NPSManagedConfigurationMsg *)self setUserSettingsAndRestrictions:?];
  }
}

@end