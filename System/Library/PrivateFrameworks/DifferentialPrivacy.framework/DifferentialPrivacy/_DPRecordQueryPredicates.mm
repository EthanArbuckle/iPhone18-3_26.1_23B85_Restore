@interface _DPRecordQueryPredicates
+ (id)entityForKey:(id)key;
+ (id)predicateForKey:(id)key beginsWith:(BOOL)with matchReportVersion:(BOOL)version;
@end

@implementation _DPRecordQueryPredicates

+ (id)predicateForKey:(id)key beginsWith:(BOOL)with matchReportVersion:(BOOL)version
{
  versionCopy = version;
  withCopy = with;
  v17[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (withCopy)
  {
    [self predicateForKeyBeginsWith:keyCopy];
  }

  else
  {
    [self predicateForKey:keyCopy];
  }
  v9 = ;
  v10 = v9;
  if (versionCopy)
  {
    kDPCurrentReportVersion = [MEMORY[0x277CCAC30] predicateWithFormat:@"reportVersion == %ld", kDPCurrentReportVersion];
    v12 = MEMORY[0x277CCA920];
    v17[0] = v10;
    v17[1] = kDPCurrentReportVersion;
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

+ (id)entityForKey:(id)key
{
  v3 = [_DPKeyNames keyPropertiesForKey:key];
  v4 = v3;
  if (v3)
  {
    dataAlgorithm = [v3 dataAlgorithm];
    if (dataAlgorithm == 1)
    {
      if ([v4 privatizationAlgorithm] == 3)
      {
        v6 = off_27858A2C8;
        goto LABEL_12;
      }
    }

    else if (dataAlgorithm == 4)
    {
      v7 = [v4 privatizationAlgorithm] - 5;
      if (v7 <= 0xF && ((0xFFD3u >> v7) & 1) != 0)
      {
        v6 = off_27858B508[v7];
        goto LABEL_12;
      }
    }

    else if (dataAlgorithm == 2 && [v4 privatizationAlgorithm] == 1)
    {
      v6 = off_27858A310;
LABEL_12:
      entityName = [(__objc2_class *)*v6 entityName];
      goto LABEL_14;
    }
  }

  entityName = 0;
LABEL_14:

  return entityName;
}

@end