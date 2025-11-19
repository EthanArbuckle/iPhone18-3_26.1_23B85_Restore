@interface COConstituent
- (BOOL)isEqual:(id)a3;
- (COConstituent)initWithCoder:(id)a3;
- (COConstituent)initWithType:(unint64_t)a3;
- (id)_timeAwareUUID;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COConstituent

- (COConstituent)initWithType:(unint64_t)a3
{
  v23.receiver = self;
  v23.super_class = COConstituent;
  v4 = [(COConstituent *)&v23 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v6 = [(COConstituent *)v4 _timeAwareUUID];
    identifier = v5->_identifier;
    v5->_identifier = v6;

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
        v11 = [v10 intValue];
        v5->_device = v11 & ~(v11 >> 31);
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

    v14 = [MEMORY[0x277CCAC38] processInfo];
    v15 = [v14 thermalState];

    if ((v15 & 0xFFFFFFFFFFFFFFFELL) == 2)
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

- (COConstituent)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"version"] == 1)
  {
    v20.receiver = self;
    v20.super_class = COConstituent;
    v5 = [(COConstituent *)&v20 init];
    if (v5)
    {
      v5->_type = [v4 decodeInt64ForKey:@"type"];
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sw"];
      software = v5->_software;
      v5->_software = v8;

      v10 = [v4 decodeIntForKey:@"dc"];
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
      v12 = [v4 decodeBoolForKey:@"pr"] ^ 1;
      v13 = [v4 decodeBoolForKey:@"tr"];
      v14 = [v4 decodeBoolForKey:@"wn"];
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
      if ([v4 containsValueForKey:@"bo"])
      {
        v17 = [v4 decodeBoolForKey:@"bo"];
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:1 forKey:@"version"];
  [v6 encodeInt64:-[COConstituent type](self forKey:{"type"), @"type"}];
  v4 = [(COConstituent *)self identifier];
  [v6 encodeObject:v4 forKey:@"identifier"];

  v5 = [(COConstituent *)self software];
  [v6 encodeObject:v5 forKey:@"sw"];

  [v6 encodeInt:-[COConstituent device](self forKey:{"device"), @"dc"}];
  [v6 encodeBool:-[COConstituent isPowerRisk](self forKey:{"isPowerRisk") ^ 1, @"pr"}];
  [v6 encodeBool:-[COConstituent isThermalRisk](self forKey:{"isThermalRisk") ^ 1, @"tr"}];
  [v6 encodeBool:-[COConstituent isWired](self forKey:{"isWired"), @"wn"}];
  [v6 encodeBool:-[COConstituent supportsBackoff](self forKey:{"supportsBackoff"), @"bo"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(COConstituent *)self type];
  v5 = [(COConstituent *)self identifier];
  v6 = [v3 stringWithFormat:@"%016llX-%@-%08llX", v4, v5, -[COConstituent flags](self, "flags")];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(COConstituent *)self compare:v4]== 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(COConstituent *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)dictionaryRepresentation
{
  v15[8] = *MEMORY[0x277D85DE8];
  v14[0] = @"type";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[COConstituent type](self, "type")}];
  v15[0] = v3;
  v14[1] = @"identifier";
  v4 = [(COConstituent *)self identifier];
  v15[1] = v4;
  v14[2] = @"sw";
  v5 = [(COConstituent *)self software];
  v15[2] = v5;
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(COConstituent *)self type];
  v6 = [v4 type];
  if (v5 == v6)
  {
    v7 = [(COConstituent *)self software];
    v8 = [v4 software];
    v9 = [v7 componentsSeparatedByString:@"."];
    v36 = v8;
    v10 = [v8 componentsSeparatedByString:@"."];
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
      v34 = v7;
      v35 = self;
      v15 = 0;
      while (1)
      {
        if (v15 >= v11)
        {
          v17 = 0;
        }

        else
        {
          v16 = [v9 objectAtIndex:v15];
          v17 = [v16 integerValue];
        }

        if (v15 >= v14)
        {
          v19 = 0;
        }

        else
        {
          v18 = [v10 objectAtIndex:v15];
          v19 = [v18 integerValue];
        }

        if (v17 != v19)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v20 = 0;
          goto LABEL_23;
        }
      }

      if (v17 < v19)
      {
        v20 = 1;
      }

      else
      {
        v20 = -1;
      }

LABEL_23:
      v7 = v34;
      self = v35;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      v21 = [(COConstituent *)self device];
      v22 = [v4 device];
      v23 = _COConstituentCompareDeviceClasses_rankings[v21 + 1];
      v24 = _COConstituentCompareDeviceClasses_rankings[v22 + 1];
      v20 = v23 < v24 ? -1 : 1;
      if (v23 == v24)
      {
        v25 = [(COConstituent *)self flags];
        v26 = [v4 flags];
        v27 = v25 & 1;
        v28 = v26 & 1;
        v29 = v26 & 2;
        if ((v25 & 2) == v29 && v27 == v28 && ((v26 >> 2) & 1) == ((v25 >> 2) & 1))
        {
          v30 = [(COConstituent *)self identifier];
          v31 = [v4 identifier];
          v20 = [v30 co_compare:v31];
        }

        else
        {
          if ((v25 & 2) == v29)
          {
            if (v27 == v28)
            {
              v32 = (v25 & 4) == 0;
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

  else if (v5 < v6)
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
    v8 = [MEMORY[0x277CBEAA8] distantFuture];
    [v8 timeIntervalSinceReferenceDate];
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
    v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v15];
  }

  else
  {
    v12 = [MEMORY[0x277CCAD78] UUID];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end