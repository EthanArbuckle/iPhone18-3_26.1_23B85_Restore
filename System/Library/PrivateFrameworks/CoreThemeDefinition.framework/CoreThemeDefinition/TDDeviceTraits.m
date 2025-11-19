@interface TDDeviceTraits
- (NSArray)graphicsFeatureSetFallbacks;
- (NSArray)hostedIdioms;
- (NSArray)subtypeFallbackValues;
- (NSString)deploymentTarget;
- (NSString)displayGamut;
- (NSString)dynamicDisplayMode;
- (NSString)graphicsFeatureSetClass;
- (NSString)idiom;
- (TDDeviceTraits)init;
- (TDDeviceTraits)initWithPlatform:(int64_t)a3;
- (id)_deploymentTargetToTraitString:(int64_t)a3;
- (id)_displayGamutToTraitString:(int64_t)a3;
- (id)_dynamicDisplayModeToTraitString:(int64_t)a3;
- (id)_graphicsFeatureSetClassToTraitString:(int64_t)a3;
- (id)_idiomToTraitString:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)_deploymentTargetFromTraitString:(id)a3;
- (int64_t)_displayGamutFromTraitString:(id)a3;
- (int64_t)_dynamicDisplayModeFromTraitString:(id)a3;
- (int64_t)_graphicsFeatureSetClassFromTraitString:(id)a3;
- (int64_t)_idiomFromTraitString:(id)a3;
- (void)dealloc;
- (void)setDeploymentTarget:(id)a3;
- (void)setDisplayGamut:(id)a3;
- (void)setDynamicDisplayMode:(id)a3;
- (void)setGraphicsFeatureSetClass:(id)a3;
- (void)setGraphicsFeatureSetFallbacks:(id)a3;
- (void)setHostedIdioms:(id)a3;
- (void)setIdiom:(id)a3;
@end

@implementation TDDeviceTraits

- (TDDeviceTraits)initWithPlatform:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = TDDeviceTraits;
  result = [(TDDeviceTraits *)&v4 init];
  if (result)
  {
    result->_deploymentTargetValue = 12;
  }

  return result;
}

- (TDDeviceTraits)init
{
  v3 = CUICurrentPlatform();

  return [(TDDeviceTraits *)self initWithPlatform:v3];
}

- (void)dealloc
{
  [(TDDeviceTraits *)self setHostedIdiomValues:0];
  [(TDDeviceTraits *)self setGraphicsFeatureSetFallbackValues:0];
  [(TDDeviceTraits *)self setSubtypeFallbackValues:0];
  v3.receiver = self;
  v3.super_class = TDDeviceTraits;
  [(TDDeviceTraits *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(TDDeviceTraits *)self scale];
  [v4 setScale:?];
  [v4 setIdiomValue:{-[TDDeviceTraits idiomValue](self, "idiomValue")}];
  [v4 setHostedIdiomValues:{-[TDDeviceTraits hostedIdiomValues](self, "hostedIdiomValues")}];
  [v4 setSubtype:{-[TDDeviceTraits subtype](self, "subtype")}];
  [v4 setDisplayGamutValue:{-[TDDeviceTraits displayGamutValue](self, "displayGamutValue")}];
  [v4 setDeploymentTargetValue:{-[TDDeviceTraits deploymentTargetValue](self, "deploymentTargetValue")}];
  [v4 setMemoryPerformanceClass:{-[TDDeviceTraits memoryPerformanceClass](self, "memoryPerformanceClass")}];
  [v4 setGraphicsFeatureSetClassValue:{-[TDDeviceTraits graphicsFeatureSetClassValue](self, "graphicsFeatureSetClassValue")}];
  [v4 setGraphicsFeatureSetFallbackValues:{-[TDDeviceTraits graphicsFeatureSetFallbackValues](self, "graphicsFeatureSetFallbackValues")}];
  [v4 setSubtypeFallbackValues:{-[TDDeviceTraits subtypeFallbackValues](self, "subtypeFallbackValues")}];
  [v4 setDynamicDisplayModeValue:{-[TDDeviceTraits dynamicDisplayModeValue](self, "dynamicDisplayModeValue")}];
  return v4;
}

- (id)description
{
  v7 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v6 = NSStringFromClass(v3);
  [(TDDeviceTraits *)self scale];
  return [v7 stringWithFormat:@"<%@ %p scale:%f idiom:%d subtype:%d gamut:%d target:%d memPerclass:%d graphicsFeature:%d graphicsfallbackValues:%@ subtypefallbackValues:%@ displayMode:%d hostedIdioms:%@>", v6, self, v4, -[TDDeviceTraits idiomValue](self, "idiomValue"), -[TDDeviceTraits subtype](self, "subtype"), -[TDDeviceTraits displayGamutValue](self, "displayGamutValue"), -[TDDeviceTraits deploymentTargetValue](self, "deploymentTargetValue"), -[TDDeviceTraits memoryPerformanceClass](self, "memoryPerformanceClass"), -[TDDeviceTraits graphicsFeatureSetClassValue](self, "graphicsFeatureSetClassValue"), -[TDDeviceTraits graphicsFeatureSetFallbackValues](self, "graphicsFeatureSetFallbackValues"), -[TDDeviceTraits subtypeFallbackValues](self, "subtypeFallbackValues"), -[TDDeviceTraits dynamicDisplayModeValue](self, "dynamicDisplayModeValue"), -[TDDeviceTraits hostedIdioms](self, "hostedIdioms")];
}

- (id)_idiomToTraitString:(int64_t)a3
{
  v3 = *(MEMORY[0x277D027B0] + 16);
  if (v3)
  {
    if (*MEMORY[0x277D027B0] == a3)
    {
      return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    }

    for (i = (MEMORY[0x277D027B0] + 40); ; i += 3)
    {
      v3 = *i;
      if (!*i)
      {
        break;
      }

      v5 = *(i - 2);
      if (v5 == a3)
      {
        return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
      }
    }
  }

  return 0;
}

- (int64_t)_idiomFromTraitString:(id)a3
{
  v3 = [a3 UTF8String];
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  v5 = *(MEMORY[0x277D027B0] + 16);
  if (v5)
  {
    v6 = strcasecmp(v5, v4);
    v7 = MEMORY[0x277D027B0];
    if (!v6)
    {
      return *v7;
    }

    while (1)
    {
      v8 = v7[5];
      if (!v8)
      {
        break;
      }

      v7 += 3;
      if (!strcasecmp(v8, v4))
      {
        return *v7;
      }
    }
  }

  if (!strcasecmp("reality", v4))
  {
    return 8;
  }

  else
  {
    return -1;
  }
}

- (void)setIdiom:(id)a3
{
  v4 = [(TDDeviceTraits *)self _idiomFromTraitString:a3];

  [(TDDeviceTraits *)self setIdiomValue:v4];
}

- (NSString)idiom
{
  v3 = [(TDDeviceTraits *)self idiom];

  return [(TDDeviceTraits *)self _idiomToTraitString:v3];
}

- (void)setHostedIdioms:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a3);
        }

        [v5 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", -[TDDeviceTraits _idiomFromTraitString:](self, "_idiomFromTraitString:", *(*(&v11 + 1) + 8 * v9++)))}];
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(TDDeviceTraits *)self setHostedIdiomValues:v5];

  v10 = *MEMORY[0x277D85DE8];
}

- (NSArray)hostedIdioms
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(TDDeviceTraits *)self hostedIdiomValues];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{-[TDDeviceTraits _idiomToTraitString:](self, "_idiomToTraitString:", objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "integerValue"))}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  result = v3;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_graphicsFeatureSetClassToTraitString:(int64_t)a3
{
  v3 = *(MEMORY[0x277D027A0] + 16);
  if (v3)
  {
    if (*MEMORY[0x277D027A0] == a3)
    {
      return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    }

    for (i = (MEMORY[0x277D027A0] + 40); ; i += 3)
    {
      v3 = *i;
      if (!*i)
      {
        break;
      }

      v5 = *(i - 2);
      if (v5 == a3)
      {
        return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
      }
    }
  }

  return 0;
}

- (int64_t)_graphicsFeatureSetClassFromTraitString:(id)a3
{
  v3 = [a3 UTF8String];
  if (v3)
  {
    v4 = v3;
    v5 = *(MEMORY[0x277D027A8] + 16);
    if (v5)
    {
      v6 = strcasecmp(v5, v4);
      v7 = MEMORY[0x277D027A8];
      if (!v6)
      {
        return *v7;
      }

      while (1)
      {
        v8 = v7[5];
        if (!v8)
        {
          break;
        }

        v7 += 3;
        if (!strcasecmp(v8, v4))
        {
          return *v7;
        }
      }
    }

    v9 = *(MEMORY[0x277D027A0] + 16);
    if (v9)
    {
      v10 = strcasecmp(v9, v4);
      v7 = MEMORY[0x277D027A0];
      if (v10)
      {
        while (1)
        {
          v11 = v7[5];
          if (!v11)
          {
            break;
          }

          v7 += 3;
          if (!strcasecmp(v11, v4))
          {
            return *v7;
          }
        }

        return -1;
      }

      return *v7;
    }
  }

  return -1;
}

- (void)setGraphicsFeatureSetClass:(id)a3
{
  v4 = [(TDDeviceTraits *)self _graphicsFeatureSetClassFromTraitString:a3];

  [(TDDeviceTraits *)self setGraphicsFeatureSetClassValue:v4];
}

- (NSString)graphicsFeatureSetClass
{
  v3 = [(TDDeviceTraits *)self graphicsFeatureSetClassValue];

  return [(TDDeviceTraits *)self _graphicsFeatureSetClassToTraitString:v3];
}

- (void)setGraphicsFeatureSetFallbacks:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a3);
        }

        [v5 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", -[TDDeviceTraits _graphicsFeatureSetClassFromTraitString:](self, "_graphicsFeatureSetClassFromTraitString:", *(*(&v11 + 1) + 8 * v9++)))}];
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(TDDeviceTraits *)self setGraphicsFeatureSetFallbackValues:v5];

  v10 = *MEMORY[0x277D85DE8];
}

- (NSArray)graphicsFeatureSetFallbacks
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(TDDeviceTraits *)self graphicsFeatureSetFallbackValues];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{-[TDDeviceTraits _graphicsFeatureSetClassToTraitString:](self, "_graphicsFeatureSetClassToTraitString:", objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "integerValue"))}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  result = v3;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_displayGamutToTraitString:(int64_t)a3
{
  v3 = *(MEMORY[0x277D02780] + 16);
  if (v3)
  {
    if (*MEMORY[0x277D02780] == a3)
    {
      return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    }

    for (i = (MEMORY[0x277D02780] + 40); ; i += 3)
    {
      v3 = *i;
      if (!*i)
      {
        break;
      }

      v5 = *(i - 2);
      if (v5 == a3)
      {
        return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
      }
    }
  }

  return 0;
}

- (int64_t)_displayGamutFromTraitString:(id)a3
{
  v3 = [a3 UTF8String];
  if (v3)
  {
    v4 = v3;
    v5 = *(MEMORY[0x277D02780] + 16);
    if (v5)
    {
      v6 = strcasecmp(v5, v4);
      v7 = MEMORY[0x277D02780];
      if (!v6)
      {
        return *v7;
      }

      while (1)
      {
        v8 = v7[5];
        if (!v8)
        {
          break;
        }

        v7 += 3;
        if (!strcasecmp(v8, v4))
        {
          return *v7;
        }
      }
    }
  }

  return -1;
}

- (void)setDisplayGamut:(id)a3
{
  v4 = [(TDDeviceTraits *)self _displayGamutFromTraitString:a3];

  [(TDDeviceTraits *)self setDisplayGamutValue:v4];
}

- (NSString)displayGamut
{
  v3 = [(TDDeviceTraits *)self displayGamutValue];

  return [(TDDeviceTraits *)self _displayGamutToTraitString:v3];
}

- (id)_deploymentTargetToTraitString:(int64_t)a3
{
  v3 = *(MEMORY[0x277D02770] + 16);
  if (v3)
  {
    if (*MEMORY[0x277D02770] == a3)
    {
      return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    }

    for (i = (MEMORY[0x277D02770] + 40); ; i += 3)
    {
      v3 = *i;
      if (!*i)
      {
        break;
      }

      v5 = *(i - 2);
      if (v5 == a3)
      {
        return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
      }
    }
  }

  return 0;
}

- (int64_t)_deploymentTargetFromTraitString:(id)a3
{
  if ([(TDDeviceTraits *)self idiomValue]&& [(TDDeviceTraits *)self idiomValue]!= 6)
  {
    [(TDDeviceTraits *)self idiomValue];
  }

  else
  {
    platform = self->_platform;
    if (platform == -1)
    {
      [(TDDeviceTraits *)a2 _deploymentTargetFromTraitString:&self->_platform, &v9];
      platform = v9;
    }

    if (platform <= 5)
    {
      v7 = dword_247A49310[platform];
    }
  }

  [a3 UTF8String];
  return CUIParseDeploymentTarget();
}

- (void)setDeploymentTarget:(id)a3
{
  v4 = [(TDDeviceTraits *)self _deploymentTargetFromTraitString:a3];
  if ((v4 & 0x8000000000000000) == 0)
  {

    [(TDDeviceTraits *)self setDeploymentTargetValue:v4];
  }
}

- (NSString)deploymentTarget
{
  v3 = [(TDDeviceTraits *)self deploymentTargetValue];

  return [(TDDeviceTraits *)self _deploymentTargetToTraitString:v3];
}

- (id)_dynamicDisplayModeToTraitString:(int64_t)a3
{
  v3 = *(MEMORY[0x277D02790] + 16);
  if (v3)
  {
    if (*MEMORY[0x277D02790] == a3)
    {
      return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    }

    for (i = (MEMORY[0x277D02790] + 40); ; i += 3)
    {
      v3 = *i;
      if (!*i)
      {
        break;
      }

      v5 = *(i - 2);
      if (v5 == a3)
      {
        return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
      }
    }
  }

  return 0;
}

- (int64_t)_dynamicDisplayModeFromTraitString:(id)a3
{
  v3 = [a3 UTF8String];
  if (v3)
  {
    v4 = v3;
    v5 = *(MEMORY[0x277D02790] + 16);
    if (v5)
    {
      v6 = strcasecmp(v5, v4);
      v7 = MEMORY[0x277D02790];
      if (!v6)
      {
        return *v7;
      }

      while (1)
      {
        v8 = v7[5];
        if (!v8)
        {
          break;
        }

        v7 += 3;
        if (!strcasecmp(v8, v4))
        {
          return *v7;
        }
      }
    }
  }

  return -1;
}

- (NSString)dynamicDisplayMode
{
  v3 = [(TDDeviceTraits *)self dynamicDisplayModeValue];

  return [(TDDeviceTraits *)self _dynamicDisplayModeFromTraitString:v3];
}

- (void)setDynamicDisplayMode:(id)a3
{
  v4 = [(TDDeviceTraits *)self _dynamicDisplayModeFromTraitString:a3];
  if ((v4 & 0x8000000000000000) == 0)
  {

    [(TDDeviceTraits *)self setDynamicDisplayModeValue:v4];
  }
}

- (NSArray)subtypeFallbackValues
{
  if ([(NSArray *)self->_subtypeFallbackValues count])
  {
    return self->_subtypeFallbackValues;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(TDDeviceTraits *)self idiomValue]== 5)
  {
    [(TDDeviceTraits *)self subtype];
    CUIWatchSubTypeFallbackOrder();
  }

  -[NSArray addObject:](v3, "addObject:", [MEMORY[0x277CCABB0] numberWithInteger:0]);

  self->_subtypeFallbackValues = v3;
  return v3;
}

- (uint64_t)_deploymentTargetFromTraitString:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  *a4 = *a3;
  return result;
}

@end