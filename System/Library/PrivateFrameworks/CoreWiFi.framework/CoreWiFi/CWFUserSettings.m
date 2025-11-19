@interface CWFUserSettings
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUserSettings:(id)a3;
- (CWFUserSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFUserSettings

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v8 = *&self->_askToJoinMode;
  syncMode = self->_syncMode;
  compatibilityMode = self->_compatibilityMode;
  v5 = [(CWFUserSettings *)self OSSpecificAttributes];
  v6 = [v2 stringWithFormat:@"askToJoinMode=%ld, autoHotspotMode=%ld, syncMode=%ld, compatibilityMode=%ld, OSSpecificAttributes=%@", v8, syncMode, compatibilityMode, v5];

  return v6;
}

- (BOOL)isEqualToUserSettings:(id)a3
{
  v6 = a3;
  OSSpecificAttributes = self->_OSSpecificAttributes;
  v8 = [v6 OSSpecificAttributes];
  if (OSSpecificAttributes != v8)
  {
    if (!self->_OSSpecificAttributes || ([v6 OSSpecificAttributes], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v12 = 0;
      goto LABEL_14;
    }

    v3 = v9;
    v10 = self->_OSSpecificAttributes;
    v4 = [v6 OSSpecificAttributes];
    if (![(NSDictionary *)v10 isEqual:v4])
    {
      v11 = 0;
LABEL_13:

      v12 = v11;
      goto LABEL_14;
    }
  }

  askToJoinMode = self->_askToJoinMode;
  if (askToJoinMode == [v6 askToJoinMode] && (autoHotspotMode = self->_autoHotspotMode, autoHotspotMode == objc_msgSend(v6, "autoHotspotMode")) && (compatibilityMode = self->_compatibilityMode, compatibilityMode == objc_msgSend(v6, "compatibilityMode")))
  {
    syncMode = self->_syncMode;
    v11 = syncMode == [v6 syncMode];
    v12 = v11;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (OSSpecificAttributes != v8)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFUserSettings *)self isEqualToUserSettings:v5];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[CWFUserSettings allocWithZone:](CWFUserSettings init];
  [(CWFUserSettings *)v5 setAskToJoinMode:self->_askToJoinMode];
  [(CWFUserSettings *)v5 setAutoHotspotMode:self->_autoHotspotMode];
  [(CWFUserSettings *)v5 setSyncMode:self->_syncMode];
  [(CWFUserSettings *)v5 setCompatibilityMode:self->_compatibilityMode];
  v6 = [(NSDictionary *)self->_OSSpecificAttributes copyWithZone:a3];
  [(CWFUserSettings *)v5 setOSSpecificAttributes:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  askToJoinMode = self->_askToJoinMode;
  v5 = a3;
  [v5 encodeInteger:askToJoinMode forKey:@"_askToJoinMode"];
  [v5 encodeInteger:self->_autoHotspotMode forKey:@"_autoHotspotMode"];
  [v5 encodeInteger:self->_syncMode forKey:@"_syncMode"];
  [v5 encodeInteger:self->_compatibilityMode forKey:@"_compatibilityMode"];
  [v5 encodeObject:self->_OSSpecificAttributes forKey:@"_OSSpecificAttributes"];
}

- (CWFUserSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CWFUserSettings;
  v5 = [(CWFUserSettings *)&v16 init];
  if (v5)
  {
    v5->_askToJoinMode = [v4 decodeIntegerForKey:@"_askToJoinMode"];
    v5->_autoHotspotMode = [v4 decodeIntegerForKey:@"_autoHotspotMode"];
    v5->_syncMode = [v4 decodeIntegerForKey:@"_syncMode"];
    v5->_compatibilityMode = [v4 decodeIntegerForKey:@"_compatibilityMode"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_OSSpecificAttributes"];
    OSSpecificAttributes = v5->_OSSpecificAttributes;
    v5->_OSSpecificAttributes = v13;
  }

  return v5;
}

@end