@interface HKUserDomainConceptSemanticIdentifier(HealthDaemon)
+ (id)_semanticIdentifierFromSemanticIdentifierString:()HealthDaemon userDomainConceptEntityRegistry:;
+ (id)semanticIdentifierFromSemanticIdentifierString:()HealthDaemon profile:;
@end

@implementation HKUserDomainConceptSemanticIdentifier(HealthDaemon)

+ (id)semanticIdentifierFromSemanticIdentifierString:()HealthDaemon profile:
{
  v6 = a3;
  daemon = [a4 daemon];
  userDomainConceptEntityRegistry = [daemon userDomainConceptEntityRegistry];
  v9 = [self _semanticIdentifierFromSemanticIdentifierString:v6 userDomainConceptEntityRegistry:userDomainConceptEntityRegistry];

  return v9;
}

+ (id)_semanticIdentifierFromSemanticIdentifierString:()HealthDaemon userDomainConceptEntityRegistry:
{
  v5 = a4;
  v6 = [a3 componentsSeparatedByString:*MEMORY[0x277CCCE50]];
  if ([v6 count] >= 2)
  {
    firstObject = [v6 firstObject];
    if ([firstObject isEqualToString:*MEMORY[0x277CCCE48]])
    {
      v9 = 0;
    }

    else
    {
      v9 = firstObject;
    }

    v10 = v9;
    v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v12 = [v6 objectAtIndexedSubscript:1];
    v13 = [v11 numberFromString:v12];

    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CCDB50]) initWithCode:objc_msgSend(v13 schema:{"integerValue"), v10}];
      v15 = [v6 subarrayWithRange:{2, objc_msgSend(v6, "count") - 2}];
      v16 = [objc_msgSend(objc_msgSend(v5 userDomainConceptEntityClassForTypeIdentifier:{v14), "userDomainConceptSemanticIdentifierClass"), "semanticIdentifierWithComponents:", v15}];
      v7 = v16;
      if (v16)
      {
        v17 = v16;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end