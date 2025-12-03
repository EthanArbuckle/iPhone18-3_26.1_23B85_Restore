@interface CWFUserSettings
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUserSettings:(id)settings;
- (CWFUserSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFUserSettings

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v8 = *&self->_askToJoinMode;
  syncMode = self->_syncMode;
  compatibilityMode = self->_compatibilityMode;
  oSSpecificAttributes = [(CWFUserSettings *)self OSSpecificAttributes];
  v6 = [v2 stringWithFormat:@"askToJoinMode=%ld, autoHotspotMode=%ld, syncMode=%ld, compatibilityMode=%ld, OSSpecificAttributes=%@", v8, syncMode, compatibilityMode, oSSpecificAttributes];

  return v6;
}

- (BOOL)isEqualToUserSettings:(id)settings
{
  settingsCopy = settings;
  OSSpecificAttributes = self->_OSSpecificAttributes;
  oSSpecificAttributes = [settingsCopy OSSpecificAttributes];
  if (OSSpecificAttributes != oSSpecificAttributes)
  {
    if (!self->_OSSpecificAttributes || ([settingsCopy OSSpecificAttributes], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v12 = 0;
      goto LABEL_14;
    }

    v3 = v9;
    v10 = self->_OSSpecificAttributes;
    oSSpecificAttributes2 = [settingsCopy OSSpecificAttributes];
    if (![(NSDictionary *)v10 isEqual:oSSpecificAttributes2])
    {
      v11 = 0;
LABEL_13:

      v12 = v11;
      goto LABEL_14;
    }
  }

  askToJoinMode = self->_askToJoinMode;
  if (askToJoinMode == [settingsCopy askToJoinMode] && (autoHotspotMode = self->_autoHotspotMode, autoHotspotMode == objc_msgSend(settingsCopy, "autoHotspotMode")) && (compatibilityMode = self->_compatibilityMode, compatibilityMode == objc_msgSend(settingsCopy, "compatibilityMode")))
  {
    syncMode = self->_syncMode;
    v11 = syncMode == [settingsCopy syncMode];
    v12 = v11;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (OSSpecificAttributes != oSSpecificAttributes)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFUserSettings *)self isEqualToUserSettings:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = *&self->_syncMode;
  v6 = v2;
  v7 = *&self->_autoHotspotMode;
  v3 = [(NSDictionary *)self->_OSSpecificAttributes hash];
  v4 = veorq_s8(v6, v7);
  return *&veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[CWFUserSettings allocWithZone:](CWFUserSettings init];
  [(CWFUserSettings *)v5 setAskToJoinMode:self->_askToJoinMode];
  [(CWFUserSettings *)v5 setAutoHotspotMode:self->_autoHotspotMode];
  [(CWFUserSettings *)v5 setSyncMode:self->_syncMode];
  [(CWFUserSettings *)v5 setCompatibilityMode:self->_compatibilityMode];
  v6 = [(NSDictionary *)self->_OSSpecificAttributes copyWithZone:zone];
  [(CWFUserSettings *)v5 setOSSpecificAttributes:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  askToJoinMode = self->_askToJoinMode;
  coderCopy = coder;
  [coderCopy encodeInteger:askToJoinMode forKey:@"_askToJoinMode"];
  [coderCopy encodeInteger:self->_autoHotspotMode forKey:@"_autoHotspotMode"];
  [coderCopy encodeInteger:self->_syncMode forKey:@"_syncMode"];
  [coderCopy encodeInteger:self->_compatibilityMode forKey:@"_compatibilityMode"];
  [coderCopy encodeObject:self->_OSSpecificAttributes forKey:@"_OSSpecificAttributes"];
}

- (CWFUserSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CWFUserSettings;
  v5 = [(CWFUserSettings *)&v16 init];
  if (v5)
  {
    v5->_askToJoinMode = [coderCopy decodeIntegerForKey:@"_askToJoinMode"];
    v5->_autoHotspotMode = [coderCopy decodeIntegerForKey:@"_autoHotspotMode"];
    v5->_syncMode = [coderCopy decodeIntegerForKey:@"_syncMode"];
    v5->_compatibilityMode = [coderCopy decodeIntegerForKey:@"_compatibilityMode"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_OSSpecificAttributes"];
    OSSpecificAttributes = v5->_OSSpecificAttributes;
    v5->_OSSpecificAttributes = v13;
  }

  return v5;
}

@end