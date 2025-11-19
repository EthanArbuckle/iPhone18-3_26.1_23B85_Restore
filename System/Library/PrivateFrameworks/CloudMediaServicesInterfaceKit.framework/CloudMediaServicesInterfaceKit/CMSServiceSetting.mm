@interface CMSServiceSetting
+ (id)settingDictionaryFromData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CMSServiceSetting)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMSServiceSetting

- (id)description
{
  v2 = @"NO";
  if (self->_updateListeningHistory)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_allowExplicitContent)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"CMSServiceSetting <UpdateListeningHistory: %@, ExplicitContentSetting: %@>", v3, v2];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CMSServiceSetting *)v5 updateListeningHistory];
      if (v6 == [(CMSServiceSetting *)self updateListeningHistory])
      {
        v8 = [(CMSServiceSetting *)v5 allowExplicitContent];
        v7 = v8 ^ [(CMSServiceSetting *)self allowExplicitContent]^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

+ (id)settingDictionaryFromData:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = MEMORY[0x277CBEB98];
    v5 = a3;
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    v16 = 0;
    v11 = [v3 unarchivedObjectOfClasses:v10 fromData:v5 error:&v16];

    v12 = v16;
    if (v12)
    {
      v13 = _CMSILogingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CMSServiceSetting *)v12 settingDictionaryFromData:v13];
      }

      v14 = 0;
    }

    else
    {
      v14 = v11;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setUpdateListeningHistory:self->_updateListeningHistory];
  [v4 setAllowExplicitContent:self->_allowExplicitContent];
  return v4;
}

- (CMSServiceSetting)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CMSServiceSetting;
  v5 = [(CMSServiceSetting *)&v7 init];
  if (v5)
  {
    v5->_updateListeningHistory = [v4 decodeBoolForKey:@"AGSettingUpdateListeningHistoryEnodedKey"];
    v5->_allowExplicitContent = [v4 decodeBoolForKey:@"CMSSettingExplicitContentSettingEncodedKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  updateListeningHistory = self->_updateListeningHistory;
  v5 = a3;
  [v5 encodeBool:updateListeningHistory forKey:@"AGSettingUpdateListeningHistoryEnodedKey"];
  [v5 encodeBool:self->_allowExplicitContent forKey:@"CMSSettingExplicitContentSettingEncodedKey"];
}

+ (void)settingDictionaryFromData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2439AD000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving service setting dictionary %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end