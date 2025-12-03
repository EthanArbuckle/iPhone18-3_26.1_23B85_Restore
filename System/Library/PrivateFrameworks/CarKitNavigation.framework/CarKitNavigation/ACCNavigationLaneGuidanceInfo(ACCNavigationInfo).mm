@interface ACCNavigationLaneGuidanceInfo(ACCNavigationInfo)
- (id)cr_dictionary;
- (uint64_t)cr_setInfo:()ACCNavigationInfo data:;
@end

@implementation ACCNavigationLaneGuidanceInfo(ACCNavigationInfo)

- (uint64_t)cr_setInfo:()ACCNavigationInfo data:
{
  v6 = a4;
  if (a3 == 2)
  {
    objc_opt_class();
    v7 = v6;
    if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = objc_opt_new();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__ACCNavigationLaneGuidanceInfo_ACCNavigationInfo__cr_setInfo_data___block_invoke;
    v13[3] = &unk_27853CF30;
    v10 = v9;
    v14 = v10;
    [v8 enumerateObjectsUsingBlock:v13];
    v6 = v10;
  }

  v11 = [self setInfo:a3 data:v6];

  return v11;
}

- (id)cr_dictionary
{
  v2 = objc_opt_new();
  v3 = 0;
  do
  {
    v4 = v3;
    v5 = [self copyInfo:v3];
    if (v5)
    {
      if (v3 == 2)
      {
        v6 = objc_opt_new();
        objc_opt_class();
        v7 = v5;
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __65__ACCNavigationLaneGuidanceInfo_ACCNavigationInfo__cr_dictionary__block_invoke;
        v12[3] = &unk_27853CF58;
        v13 = v6;
        v9 = v6;
        [v8 enumerateObjectsUsingBlock:v12];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:2];
        [v2 setObject:v9 forKeyedSubscript:v10];
      }

      else
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v3];
        [v2 setObject:v5 forKeyedSubscript:v8];
      }
    }

    ++v3;
  }

  while (v4 < 3);

  return v2;
}

@end