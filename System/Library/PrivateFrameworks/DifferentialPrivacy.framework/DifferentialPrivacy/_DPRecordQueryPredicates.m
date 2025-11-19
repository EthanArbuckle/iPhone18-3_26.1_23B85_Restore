@interface _DPRecordQueryPredicates
+ (id)entityForKey:(id)a3;
+ (id)predicateForKey:(id)a3 beginsWith:(BOOL)a4 matchReportVersion:(BOOL)a5;
@end

@implementation _DPRecordQueryPredicates

+ (id)predicateForKey:(id)a3 beginsWith:(BOOL)a4 matchReportVersion:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v17[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v6)
  {
    [a1 predicateForKeyBeginsWith:v8];
  }

  else
  {
    [a1 predicateForKey:v8];
  }
  v9 = ;
  v10 = v9;
  if (v5)
  {
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"reportVersion == %ld", kDPCurrentReportVersion];
    v12 = MEMORY[0x277CCA920];
    v17[0] = v10;
    v17[1] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v14 = [v12 andPredicateWithSubpredicates:v13];
  }

  else
  {
    v14 = v9;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)entityForKey:(id)a3
{
  v3 = [_DPKeyNames keyPropertiesForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 dataAlgorithm];
    if (v5 == 1)
    {
      if ([v4 privatizationAlgorithm] == 3)
      {
        v6 = off_27858A2C8;
        goto LABEL_12;
      }
    }

    else if (v5 == 4)
    {
      v7 = [v4 privatizationAlgorithm] - 5;
      if (v7 <= 0xF && ((0xFFD3u >> v7) & 1) != 0)
      {
        v6 = off_27858B508[v7];
        goto LABEL_12;
      }
    }

    else if (v5 == 2 && [v4 privatizationAlgorithm] == 1)
    {
      v6 = off_27858A310;
LABEL_12:
      v8 = [(__objc2_class *)*v6 entityName];
      goto LABEL_14;
    }
  }

  v8 = 0;
LABEL_14:

  return v8;
}

@end