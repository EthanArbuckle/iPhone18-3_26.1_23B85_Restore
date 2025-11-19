@interface PKOSVersionRequirement
+ (id)fromDeviceVersion;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOSVersionRequirement:(id)a3;
- (PKOSVersionRequirement)initWithCoder:(id)a3;
- (PKOSVersionRequirement)initWithDictionary:(id)a3;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)versionForDeviceClass:(id)a3;
- (int64_t)compare:(id)a3 deviceClass:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKOSVersionRequirement

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_iphone];
  [v3 safelyAddObject:self->_specifiediphone];
  [v3 safelyAddObject:self->_ipad];
  [v3 safelyAddObject:self->_ipod];
  [v3 safelyAddObject:self->_appletv];
  [v3 safelyAddObject:self->_mac];
  [v3 safelyAddObject:self->_watch];
  [v3 safelyAddObject:self->_vision];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

+ (id)fromDeviceVersion
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = PKDeviceClass();
  v7 = v2;
  v3 = PKOSVersion();
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = [[PKOSVersionRequirement alloc] initWithDictionary:v4];

  return v5;
}

- (PKOSVersionRequirement)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PKOSVersionRequirement;
  v5 = [(PKOSVersionRequirement *)&v25 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"iPhone"];
    iphone = v5->_iphone;
    v5->_iphone = v6;

    objc_storeStrong(&v5->_specifiediphone, v5->_iphone);
    v8 = [v4 PKStringForKey:@"iPad"];
    ipad = v5->_ipad;
    v5->_ipad = v8;

    v10 = [v4 PKStringForKey:@"iPod"];
    ipod = v5->_ipod;
    v5->_ipod = v10;

    v12 = [v4 PKStringForKey:@"AppleTV"];
    appletv = v5->_appletv;
    v5->_appletv = v12;

    v14 = [v4 PKStringForKey:@"RealityDevice"];
    vision = v5->_vision;
    v5->_vision = v14;

    v16 = [v4 PKDictionaryForKey:@"WatchOS"];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 PKStringForKey:@"iPhone"];
      v19 = v5->_iphone;
      v5->_iphone = v18;

      v20 = [v17 PKStringForKey:@"Watch"];
      watch = v5->_watch;
      v5->_watch = v20;
    }

    v22 = [v4 PKStringForKey:@"Mac"];
    mac = v5->_mac;
    v5->_mac = v22;
  }

  return v5;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  specifiediphone = self->_specifiediphone;
  if (specifiediphone)
  {
    [v3 setObject:specifiediphone forKeyedSubscript:@"iPhone"];
  }

  ipad = self->_ipad;
  if (ipad)
  {
    [v4 setObject:ipad forKeyedSubscript:@"iPad"];
  }

  ipod = self->_ipod;
  if (ipod)
  {
    [v4 setObject:ipod forKeyedSubscript:@"iPod"];
  }

  appletv = self->_appletv;
  if (appletv)
  {
    [v4 setObject:appletv forKeyedSubscript:@"AppleTV"];
  }

  vision = self->_vision;
  if (vision)
  {
    [v4 setObject:vision forKeyedSubscript:@"RealityDevice"];
  }

  if (self->_watch)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v10 setObject:self->_watch forKeyedSubscript:@"Watch"];
    iphone = self->_iphone;
    if (iphone)
    {
      [v10 setObject:iphone forKeyedSubscript:@"iPhone"];
    }

    v12 = [v10 copy];
    [v4 setObject:v12 forKeyedSubscript:@"WatchOS"];
  }

  mac = self->_mac;
  if (mac)
  {
    [v4 setObject:mac forKeyedSubscript:@"Mac"];
  }

  v14 = [v4 copy];

  return v14;
}

- (int64_t)compare:(id)a3 deviceClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"Mac"])
  {
    mac = self->_mac;
    v9 = [v6 mac];
  }

  else if ([v7 isEqualToString:@"iPhone"])
  {
    mac = self->_iphone;
    v9 = [v6 iphone];
  }

  else if ([v7 isEqualToString:@"Watch"])
  {
    mac = self->_watch;
    v9 = [v6 watch];
  }

  else if ([v7 isEqualToString:@"iPod"])
  {
    mac = self->_ipod;
    v9 = [v6 ipod];
  }

  else if ([v7 isEqualToString:@"iPad"])
  {
    mac = self->_ipad;
    v9 = [v6 ipad];
  }

  else if ([v7 isEqualToString:@"AppleTV"])
  {
    mac = self->_appletv;
    v9 = [v6 appletv];
  }

  else
  {
    if (![v7 isEqualToString:@"RealityDevice"])
    {
      v11 = 0;
      goto LABEL_16;
    }

    mac = self->_vision;
    v9 = [v6 vision];
  }

  v10 = v9;
  v11 = [(NSString *)mac compare:v9 options:64];

LABEL_16:
  return v11;
}

- (id)versionForDeviceClass:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"Mac"])
  {
    v5 = 40;
LABEL_15:
    v6 = *(&self->super.isa + v5);
    goto LABEL_16;
  }

  if ([v4 isEqualToString:@"iPhone"])
  {
    v5 = 8;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"Watch"])
  {
    v5 = 48;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"iPod"])
  {
    v5 = 24;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"iPad"])
  {
    v5 = 16;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"AppleTV"])
  {
    v5 = 32;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"RealityDevice"])
  {
    v5 = 56;
    goto LABEL_15;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

- (PKOSVersionRequirement)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKOSVersionRequirement;
  v5 = [(PKOSVersionRequirement *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Mac"];
    mac = v5->_mac;
    v5->_mac = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iPhone"];
    iphone = v5->_iphone;
    v5->_iphone = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"specifiediPhone"];
    specifiediphone = v5->_specifiediphone;
    v5->_specifiediphone = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iPad"];
    ipad = v5->_ipad;
    v5->_ipad = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iPod"];
    ipod = v5->_ipod;
    v5->_ipod = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AppleTV"];
    appletv = v5->_appletv;
    v5->_appletv = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Watch"];
    watch = v5->_watch;
    v5->_watch = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RealityDevice"];
    vision = v5->_vision;
    v5->_vision = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  mac = self->_mac;
  v5 = a3;
  [v5 encodeObject:mac forKey:@"Mac"];
  [v5 encodeObject:self->_iphone forKey:@"iPhone"];
  [v5 encodeObject:self->_specifiediphone forKey:@"specifiediPhone"];
  [v5 encodeObject:self->_ipad forKey:@"iPad"];
  [v5 encodeObject:self->_ipod forKey:@"iPod"];
  [v5 encodeObject:self->_appletv forKey:@"AppleTV"];
  [v5 encodeObject:self->_watch forKey:@"Watch"];
  [v5 encodeObject:self->_vision forKey:@"RealityDevice"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKOSVersionRequirement allocWithZone:](PKOSVersionRequirement init];
  v6 = [(NSString *)self->_iphone copyWithZone:a3];
  iphone = v5->_iphone;
  v5->_iphone = v6;

  v8 = [(NSString *)self->_specifiediphone copyWithZone:a3];
  specifiediphone = v5->_specifiediphone;
  v5->_specifiediphone = v8;

  v10 = [(NSString *)self->_ipad copyWithZone:a3];
  ipad = v5->_ipad;
  v5->_ipad = v10;

  v12 = [(NSString *)self->_ipod copyWithZone:a3];
  ipod = v5->_ipod;
  v5->_ipod = v12;

  v14 = [(NSString *)self->_appletv copyWithZone:a3];
  appletv = v5->_appletv;
  v5->_appletv = v14;

  v16 = [(NSString *)self->_mac copyWithZone:a3];
  mac = v5->_mac;
  v5->_mac = v16;

  v18 = [(NSString *)self->_watch copyWithZone:a3];
  watch = v5->_watch;
  v5->_watch = v18;

  v20 = [(NSString *)self->_vision copyWithZone:a3];
  vision = v5->_vision;
  v5->_vision = v20;

  return v5;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKOSVersionRequirement *)self isEqualToOSVersionRequirement:v5];
  }

  return v6;
}

- (BOOL)isEqualToOSVersionRequirement:(id)a3
{
  v4 = a3;
  iphone = self->_iphone;
  v6 = v4[1];
  if (iphone)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (iphone != v6)
    {
      goto LABEL_41;
    }
  }

  else if (([(NSString *)iphone isEqual:?]& 1) == 0)
  {
    goto LABEL_41;
  }

  specifiediphone = self->_specifiediphone;
  v9 = v4[8];
  if (specifiediphone && v9)
  {
    if (([(NSString *)specifiediphone isEqual:?]& 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (specifiediphone != v9)
  {
    goto LABEL_41;
  }

  ipad = self->_ipad;
  v11 = v4[2];
  if (ipad && v11)
  {
    if (([(NSString *)ipad isEqual:?]& 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (ipad != v11)
  {
    goto LABEL_41;
  }

  ipod = self->_ipod;
  v13 = v4[3];
  if (ipod && v13)
  {
    if (([(NSString *)ipod isEqual:?]& 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (ipod != v13)
  {
    goto LABEL_41;
  }

  appletv = self->_appletv;
  v15 = v4[4];
  if (appletv && v15)
  {
    if (([(NSString *)appletv isEqual:?]& 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (appletv != v15)
  {
    goto LABEL_41;
  }

  mac = self->_mac;
  v17 = v4[5];
  if (mac && v17)
  {
    if (([(NSString *)mac isEqual:?]& 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (mac != v17)
  {
    goto LABEL_41;
  }

  watch = self->_watch;
  v19 = v4[6];
  if (!watch || !v19)
  {
    if (watch == v19)
    {
      goto LABEL_37;
    }

LABEL_41:
    v22 = 0;
    goto LABEL_42;
  }

  if (([(NSString *)watch isEqual:?]& 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_37:
  vision = self->_vision;
  v21 = v4[7];
  if (vision && v21)
  {
    v22 = [(NSString *)vision isEqual:?];
  }

  else
  {
    v22 = vision == v21;
  }

LABEL_42:

  return v22;
}

@end