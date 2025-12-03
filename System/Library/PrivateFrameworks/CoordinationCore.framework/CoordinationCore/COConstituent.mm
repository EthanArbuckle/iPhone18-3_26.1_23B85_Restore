@interface COConstituent
- (BOOL)isEqual:(id)equal;
- (COConstituent)initWithCoder:(id)coder;
- (COConstituent)initWithType:(unint64_t)type;
- (id)_timeAwareUUID;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COConstituent

- (COConstituent)initWithType:(unint64_t)type
{
  v23.receiver = self;
  v23.super_class = COConstituent;
  v4 = [(COConstituent *)&v23 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    _timeAwareUUID = [(COConstituent *)v4 _timeAwareUUID];
    identifier = v5->_identifier;
    v5->_identifier = _timeAwareUUID;

    software = v5->_software;
    v5->_software = @"237.10.1";

    v5->_flags = 0xFFFFFFFF80000000;
    v9 = MGCopyAnswer();
    if (v9)
    {
      v10 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue = [v10 intValue];
        v5->_device = intValue & ~(intValue >> 31);
      }

      CFRelease(v10);
    }

    v12 = MGCopyAnswer();
    if (v12)
    {
      v13 = v12;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v13 BOOLValue] & 1) == 0)
      {
        v5->_flags |= 1uLL;
      }

      CFRelease(v13);
    }

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    thermalState = [processInfo thermalState];

    if ((thermalState & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v5->_flags |= 2uLL;
    }

    mainPort = 0;
    if (!MEMORY[0x245D5F930](0, &mainPort))
    {
      v17 = IOServiceMatching("IOEthernetInterface");
      if (v17)
      {
        v18 = v17;
        CFDictionarySetValue(v17, @"IOPropertyMatch", &unk_2857C8948);
        MatchingService = IOServiceGetMatchingService(mainPort, v18);
        if (MatchingService)
        {
          v20 = MatchingService;
          CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IO80211SSID", *MEMORY[0x277CBECE8], 0);
          if (CFProperty)
          {
            CFRelease(CFProperty);
          }

          else
          {
            v5->_flags |= 4uLL;
          }

          IOObjectRelease(v20);
        }
      }
    }
  }

  return v5;
}

- (COConstituent)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"version"] == 1)
  {
    v20.receiver = self;
    v20.super_class = COConstituent;
    v5 = [(COConstituent *)&v20 init];
    if (v5)
    {
      v5->_type = [coderCopy decodeInt64ForKey:@"type"];
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v6;

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sw"];
      software = v5->_software;
      v5->_software = v8;

      v10 = [coderCopy decodeIntForKey:@"dc"];
      if (v10 < 0)
      {
        v11 = -1;
      }

      else
      {
        v11 = v10;
      }

      if (v11 >= 9)
      {
        v11 = 9;
      }

      if (!v10)
      {
        v11 = -1;
      }

      v5->_device = v11;
      v12 = [coderCopy decodeBoolForKey:@"pr"] ^ 1;
      v13 = [coderCopy decodeBoolForKey:@"tr"];
      v14 = [coderCopy decodeBoolForKey:@"wn"];
      v15 = 2;
      if (v13)
      {
        v15 = 0;
      }

      v16 = 4;
      if (!v14)
      {
        v16 = 0;
      }

      v5->_flags = v15 | v16 | v12;
      if ([coderCopy containsValueForKey:@"bo"])
      {
        v17 = [coderCopy decodeBoolForKey:@"bo"];
        v18 = 0xFFFFFFFF80000000;
        if (!v17)
        {
          v18 = 0;
        }

        v5->_flags |= v18;
      }
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:1 forKey:@"version"];
  [coderCopy encodeInt64:-[COConstituent type](self forKey:{"type"), @"type"}];
  identifier = [(COConstituent *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  software = [(COConstituent *)self software];
  [coderCopy encodeObject:software forKey:@"sw"];

  [coderCopy encodeInt:-[COConstituent device](self forKey:{"device"), @"dc"}];
  [coderCopy encodeBool:-[COConstituent isPowerRisk](self forKey:{"isPowerRisk") ^ 1, @"pr"}];
  [coderCopy encodeBool:-[COConstituent isThermalRisk](self forKey:{"isThermalRisk") ^ 1, @"tr"}];
  [coderCopy encodeBool:-[COConstituent isWired](self forKey:{"isWired"), @"wn"}];
  [coderCopy encodeBool:-[COConstituent supportsBackoff](self forKey:{"supportsBackoff"), @"bo"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  type = [(COConstituent *)self type];
  identifier = [(COConstituent *)self identifier];
  v6 = [v3 stringWithFormat:@"%016llX-%@-%08llX", type, identifier, -[COConstituent flags](self, "flags")];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(COConstituent *)self compare:equalCopy]== 0;
  }

  return v5;
}

- (unint64_t)hash
{
  identifier = [(COConstituent *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)dictionaryRepresentation
{
  v15[8] = *MEMORY[0x277D85DE8];
  v14[0] = @"type";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[COConstituent type](self, "type")}];
  v15[0] = v3;
  v14[1] = @"identifier";
  identifier = [(COConstituent *)self identifier];
  v15[1] = identifier;
  v14[2] = @"sw";
  software = [(COConstituent *)self software];
  v15[2] = software;
  v14[3] = @"dc";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[COConstituent device](self, "device")}];
  v15[3] = v6;
  v14[4] = @"pr";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[COConstituent isPowerRisk](self, "isPowerRisk") ^ 1}];
  v15[4] = v7;
  v14[5] = @"tr";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[COConstituent isThermalRisk](self, "isThermalRisk") ^ 1}];
  v15[5] = v8;
  v14[6] = @"wn";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[COConstituent isWired](self, "isWired")}];
  v15[6] = v9;
  v14[7] = @"bo";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[COConstituent supportsBackoff](self, "supportsBackoff")}];
  v15[7] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:8];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  type = [(COConstituent *)self type];
  type2 = [compareCopy type];
  if (type == type2)
  {
    software = [(COConstituent *)self software];
    software2 = [compareCopy software];
    v9 = [software componentsSeparatedByString:@"."];
    v36 = software2;
    v10 = [software2 componentsSeparatedByString:@"."];
    v11 = [v9 count];
    v12 = [v10 count];
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = v12;
      v34 = software;
      selfCopy = self;
      v15 = 0;
      while (1)
      {
        if (v15 >= v11)
        {
          integerValue = 0;
        }

        else
        {
          v16 = [v9 objectAtIndex:v15];
          integerValue = [v16 integerValue];
        }

        if (v15 >= v14)
        {
          integerValue2 = 0;
        }

        else
        {
          v18 = [v10 objectAtIndex:v15];
          integerValue2 = [v18 integerValue];
        }

        if (integerValue != integerValue2)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v20 = 0;
          goto LABEL_23;
        }
      }

      if (integerValue < integerValue2)
      {
        v20 = 1;
      }

      else
      {
        v20 = -1;
      }

LABEL_23:
      software = v34;
      self = selfCopy;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      device = [(COConstituent *)self device];
      device2 = [compareCopy device];
      v23 = _COConstituentCompareDeviceClasses_rankings[device + 1];
      v24 = _COConstituentCompareDeviceClasses_rankings[device2 + 1];
      v20 = v23 < v24 ? -1 : 1;
      if (v23 == v24)
      {
        flags = [(COConstituent *)self flags];
        flags2 = [compareCopy flags];
        v27 = flags & 1;
        v28 = flags2 & 1;
        v29 = flags2 & 2;
        if ((flags & 2) == v29 && v27 == v28 && ((flags2 >> 2) & 1) == ((flags >> 2) & 1))
        {
          identifier = [(COConstituent *)self identifier];
          identifier2 = [compareCopy identifier];
          v20 = [identifier co_compare:identifier2];
        }

        else
        {
          if ((flags & 2) == v29)
          {
            if (v27 == v28)
            {
              v32 = (flags & 4) == 0;
            }

            else
            {
              v32 = v28 == 0;
            }
          }

          else
          {
            v32 = v29 == 0;
          }

          if (v32)
          {
            v20 = 1;
          }

          else
          {
            v20 = -1;
          }
        }
      }
    }
  }

  else if (type < type2)
  {
    v20 = -1;
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (id)_timeAwareUUID
{
  v17 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  if (v2 < 0.0)
  {
    v4 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "Clock not synchronized, going to poll.", v15, 2u);
    }
  }

  if (v3 < 0.0)
  {
    v5 = 14;
    do
    {
      sleep(2u);
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    }

    while (v6 < 0.0 && v5-- != 0);
    v3 = v6;
  }

  if (v3 >= 0.0)
  {
    v10 = COCoreLogForCategory(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *v15 = 134217984;
    *&v15[4] = v3;
    v11 = "Clock synchronized. time = %llu";
  }

  else
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    [distantFuture timeIntervalSinceReferenceDate];
    v3 = v9;

    v10 = COCoreLogForCategory(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *v15 = 134217984;
    *&v15[4] = v3;
    v11 = "Clock not synchronized. Using distant future %llu";
  }

  _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, v11, v15, 0xCu);
LABEL_19:

  if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    *v15 = bswap64(v3);
    *&v15[8] = bswap32(arc4random());
    v16 = bswap32(arc4random());
    uUID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v15];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  v13 = *MEMORY[0x277D85DE8];

  return uUID;
}

@end