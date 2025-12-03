@interface PKHardwareVersionRange
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHardwareVersionRange:(id)range;
- (BOOL)matchesDeviceVersion:(id)version;
- (PKHardwareVersionRange)initWithCoder:(id)coder;
- (PKHardwareVersionRange)initWithDictionary:(id)dictionary;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKHardwareVersionRange

- (PKHardwareVersionRange)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = PKHardwareVersionRange;
  v5 = [(PKHardwareVersionRange *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDictionaryForKey:@"iPhone"];
    if (v6)
    {
      v7 = [[PKDeviceVersionRange alloc] initWithDictionary:v6];
      iphone = v5->_iphone;
      v5->_iphone = v7;
    }

    v9 = [dictionaryCopy PKDictionaryForKey:@"Watch"];

    if (v9)
    {
      v10 = [[PKDeviceVersionRange alloc] initWithDictionary:v9];
      watch = v5->_watch;
      v5->_watch = v10;
    }

    v12 = [dictionaryCopy PKDictionaryForKey:@"iPad"];

    if (v12)
    {
      v13 = [[PKDeviceVersionRange alloc] initWithDictionary:v12];
      ipad = v5->_ipad;
      v5->_ipad = v13;
    }

    v15 = [dictionaryCopy PKDictionaryForKey:@"iPod"];

    if (v15)
    {
      v16 = [[PKDeviceVersionRange alloc] initWithDictionary:v15];
      ipod = v5->_ipod;
      v5->_ipod = v16;
    }

    v18 = [dictionaryCopy PKDictionaryForKey:@"AppleTV"];

    if (v18)
    {
      v19 = [[PKDeviceVersionRange alloc] initWithDictionary:v18];
      appletv = v5->_appletv;
      v5->_appletv = v19;
    }

    v21 = [dictionaryCopy PKDictionaryForKey:@"RealityDevice"];

    if (v21)
    {
      v22 = [[PKDeviceVersionRange alloc] initWithDictionary:v21];
      vision = v5->_vision;
      v5->_vision = v22;
    }
  }

  return v5;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  asDictionary = [(PKDeviceVersionRange *)self->_iphone asDictionary];
  [v3 setObject:asDictionary forKeyedSubscript:@"iPhone"];

  asDictionary2 = [(PKDeviceVersionRange *)self->_watch asDictionary];
  [v3 setObject:asDictionary2 forKeyedSubscript:@"Watch"];

  asDictionary3 = [(PKDeviceVersionRange *)self->_ipad asDictionary];
  [v3 setObject:asDictionary3 forKeyedSubscript:@"iPad"];

  asDictionary4 = [(PKDeviceVersionRange *)self->_ipod asDictionary];
  [v3 setObject:asDictionary4 forKeyedSubscript:@"iPod"];

  asDictionary5 = [(PKDeviceVersionRange *)self->_appletv asDictionary];
  [v3 setObject:asDictionary5 forKeyedSubscript:@"AppleTV"];

  asDictionary6 = [(PKDeviceVersionRange *)self->_vision asDictionary];
  [v3 setObject:asDictionary6 forKeyedSubscript:@"RealityDevice"];

  v10 = [v3 copy];

  return v10;
}

- (BOOL)matchesDeviceVersion:(id)version
{
  versionCopy = version;
  deviceClass = [versionCopy deviceClass];
  v6 = deviceClass;
  if (deviceClass == @"iPhone")
  {
    goto LABEL_4;
  }

  if (!deviceClass)
  {
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v7 = [@"iPhone" isEqualToString:deviceClass];

  if (v7)
  {
LABEL_4:
    iphone = [(PKHardwareVersionRange *)self iphone];
  }

  else
  {
    v11 = v6;
    if (v11 == @"Watch" || (v12 = v11, v13 = [@"Watch" isEqualToString:v11], v12, v13))
    {
      iphone = [(PKHardwareVersionRange *)self watch];
    }

    else
    {
      v14 = v12;
      if (v14 == @"iPad" || (v15 = v14, v16 = [@"iPad" isEqualToString:v14], v15, v16))
      {
        iphone = [(PKHardwareVersionRange *)self ipad];
      }

      else
      {
        v17 = v15;
        if (v17 == @"iPod" || (v18 = v17, v19 = [@"iPod" isEqualToString:v17], v18, v19))
        {
          iphone = [(PKHardwareVersionRange *)self ipod];
        }

        else
        {
          v20 = v18;
          if (v20 == @"AppleTV" || (v21 = v20, v22 = [@"AppleTV" isEqualToString:v20], v21, v22))
          {
            iphone = [(PKHardwareVersionRange *)self appletv];
          }

          else
          {
            v23 = v21;
            if (v23 != @"RealityDevice")
            {
              v24 = v23;
              v25 = [@"RealityDevice" isEqualToString:v23];

              if (!v25)
              {
                goto LABEL_22;
              }
            }

            iphone = [(PKHardwareVersionRange *)self vision];
          }
        }
      }
    }
  }

  v9 = iphone;
  if (!iphone)
  {
    goto LABEL_22;
  }

  v10 = [iphone _matchesDeviceVersion:versionCopy];

LABEL_23:
  return v10;
}

- (PKHardwareVersionRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKHardwareVersionRange;
  v5 = [(PKHardwareVersionRange *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"iPhone"];
    iphone = v5->_iphone;
    v5->_iphone = v7;

    v9 = [coderCopy decodeObjectOfClass:v6 forKey:@"Watch"];
    watch = v5->_watch;
    v5->_watch = v9;

    v11 = [coderCopy decodeObjectOfClass:v6 forKey:@"iPad"];
    ipad = v5->_ipad;
    v5->_ipad = v11;

    v13 = [coderCopy decodeObjectOfClass:v6 forKey:@"iPod"];
    ipod = v5->_ipod;
    v5->_ipod = v13;

    v15 = [coderCopy decodeObjectOfClass:v6 forKey:@"AppleTV"];
    appletv = v5->_appletv;
    v5->_appletv = v15;

    v17 = [coderCopy decodeObjectOfClass:v6 forKey:@"RealityDevice"];
    vision = v5->_vision;
    v5->_vision = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  iphone = self->_iphone;
  coderCopy = coder;
  [coderCopy encodeObject:iphone forKey:@"iPhone"];
  [coderCopy encodeObject:self->_watch forKey:@"Watch"];
  [coderCopy encodeObject:self->_ipad forKey:@"iPad"];
  [coderCopy encodeObject:self->_ipod forKey:@"iPod"];
  [coderCopy encodeObject:self->_appletv forKey:@"AppleTV"];
  [coderCopy encodeObject:self->_vision forKey:@"RealityDevice"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKHardwareVersionRange allocWithZone:](PKHardwareVersionRange init];
  v6 = [(PKDeviceVersionRange *)self->_iphone copyWithZone:zone];
  iphone = v5->_iphone;
  v5->_iphone = v6;

  v8 = [(PKDeviceVersionRange *)self->_watch copyWithZone:zone];
  watch = v5->_watch;
  v5->_watch = v8;

  v10 = [(PKDeviceVersionRange *)self->_ipad copyWithZone:zone];
  ipad = v5->_ipad;
  v5->_ipad = v10;

  v12 = [(PKDeviceVersionRange *)self->_ipod copyWithZone:zone];
  ipod = v5->_ipod;
  v5->_ipod = v12;

  v14 = [(PKDeviceVersionRange *)self->_appletv copyWithZone:zone];
  appletv = v5->_appletv;
  v5->_appletv = v14;

  v16 = [(PKDeviceVersionRange *)self->_vision copyWithZone:zone];
  vision = v5->_vision;
  v5->_vision = v16;

  return v5;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKHardwareVersionRange *)self isEqualToHardwareVersionRange:v5];
  }

  return v6;
}

- (BOOL)isEqualToHardwareVersionRange:(id)range
{
  rangeCopy = range;
  iphone = self->_iphone;
  v6 = rangeCopy[1];
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
      goto LABEL_31;
    }
  }

  else if (![(PKDeviceVersionRange *)iphone isEqual:?])
  {
    goto LABEL_31;
  }

  watch = self->_watch;
  v9 = rangeCopy[2];
  if (watch && v9)
  {
    if (![(PKDeviceVersionRange *)watch isEqual:?])
    {
      goto LABEL_31;
    }
  }

  else if (watch != v9)
  {
    goto LABEL_31;
  }

  ipad = self->_ipad;
  v11 = rangeCopy[3];
  if (ipad && v11)
  {
    if (![(PKDeviceVersionRange *)ipad isEqual:?])
    {
      goto LABEL_31;
    }
  }

  else if (ipad != v11)
  {
    goto LABEL_31;
  }

  ipod = self->_ipod;
  v13 = rangeCopy[4];
  if (ipod && v13)
  {
    if (![(PKDeviceVersionRange *)ipod isEqual:?])
    {
      goto LABEL_31;
    }
  }

  else if (ipod != v13)
  {
    goto LABEL_31;
  }

  appletv = self->_appletv;
  v15 = rangeCopy[5];
  if (!appletv || !v15)
  {
    if (appletv == v15)
    {
      goto LABEL_27;
    }

LABEL_31:
    v18 = 0;
    goto LABEL_32;
  }

  if (![(PKDeviceVersionRange *)appletv isEqual:?])
  {
    goto LABEL_31;
  }

LABEL_27:
  vision = self->_vision;
  v17 = rangeCopy[6];
  if (vision && v17)
  {
    v18 = [(PKDeviceVersionRange *)vision isEqual:?];
  }

  else
  {
    v18 = vision == v17;
  }

LABEL_32:

  return v18;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_iphone];
  [array safelyAddObject:self->_watch];
  [array safelyAddObject:self->_ipad];
  [array safelyAddObject:self->_ipod];
  [array safelyAddObject:self->_appletv];
  [array safelyAddObject:self->_vision];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"iphone: '%@'; ", self->_iphone];
  [v3 appendFormat:@"watch: '%@'; ", self->_watch];
  [v3 appendFormat:@"ipad: '%@'; ", self->_ipad];
  [v3 appendFormat:@"ipod: '%@'; ", self->_ipod];
  [v3 appendFormat:@"appletv: '%@'; ", self->_appletv];
  [v3 appendFormat:@"vision: '%@'; ", self->_vision];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

@end