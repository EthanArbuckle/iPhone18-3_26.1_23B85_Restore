@interface OSLogPredicateMapper
@end

@implementation OSLogPredicateMapper

void __62___OSLogPredicateMapper_mapLeftExpression_andRightExpression___block_invoke()
{
  v0 = mapLeftExpression_andRightExpression__keypathMaps;
  mapLeftExpression_andRightExpression__keypathMaps = &unk_2841B9388;
}

void __51___OSLogPredicateMapper_mapSignpostTypeExpression___block_invoke()
{
  v0 = mapSignpostTypeExpression__types;
  mapSignpostTypeExpression__types = &unk_2841B9360;
}

void __52___OSLogPredicateMapper_mapSignpostScopeExpression___block_invoke()
{
  v0 = mapSignpostScopeExpression__scopes;
  mapSignpostScopeExpression__scopes = &unk_2841B9338;
}

void __50___OSLogPredicateMapper_mapMessageTypeExpression___block_invoke()
{
  v0 = mapMessageTypeExpression__messageTypes;
  mapMessageTypeExpression__messageTypes = &unk_2841B9310;
}

void __48___OSLogPredicateMapper_mapEventTypeExpression___block_invoke()
{
  v0 = mapEventTypeExpression__eventTypes;
  mapEventTypeExpression__eventTypes = &unk_2841B92E8;
}

void __38___OSLogPredicateMapper_validKeyPaths__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = validKeyPaths__validKeyPaths;
  validKeyPaths__validKeyPaths = v2;

  outCount = 0;
  v4 = protocol_copyPropertyList(&unk_2841BABC0, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v15 = 0;
      v6 = property_copyAttributeList(v4[i], &v15);
      if (v15)
      {
        v7 = 1;
        v8 = v15;
        v9 = v6;
        v10 = 1;
        do
        {
          if (*v9->name == 82 && !*(v9->name + 1))
          {
            break;
          }

          v10 = v7 < v15;
          ++v9;
          ++v7;
          --v8;
        }

        while (v8);
      }

      else
      {
        v10 = 0;
      }

      free(v6);
      Attributes = property_getAttributes(v4[i]);
      if (Attributes && strstr(Attributes, "@NSDictionary"))
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.", property_getName(v4[i])];
        [*(*(a1 + 32) + 24) addObject:v12];
      }

      if (v10)
      {
        v13 = validKeyPaths__validKeyPaths;
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getName(v4[i])];
        [v13 addObject:v14];
      }
    }
  }

  free(v4);
}

@end