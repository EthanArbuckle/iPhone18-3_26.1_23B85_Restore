@interface _OSLogLegacyPredicateMapper
- (id)validKeyPaths;
- (void)mapLeftExpression:(id *)a3 andRightExpression:(id *)a4;
@end

@implementation _OSLogLegacyPredicateMapper

- (void)mapLeftExpression:(id *)a3 andRightExpression:(id *)a4
{
  if (mapLeftExpression_andRightExpression__once_521 != -1)
  {
    dispatch_once(&mapLeftExpression_andRightExpression__once_521, &__block_literal_global_523);
  }

  if ([*a3 expressionType] == 3)
  {
    v10 = [*a3 keyPath];
    v5 = [mapLeftExpression_andRightExpression__keypathMaps_520 objectForKeyedSubscript:?];

    if (v5)
    {
      v6 = MEMORY[0x277CCA9C0];
      v7 = [mapLeftExpression_andRightExpression__keypathMaps_520 objectForKeyedSubscript:v10];
      v8 = [v6 expressionForKeyPath:v7];
      v9 = *a3;
      *a3 = v8;
    }
  }
}

- (id)validKeyPaths
{
  if (validKeyPaths_once_506 != -1)
  {
    dispatch_once(&validKeyPaths_once_506, &__block_literal_global_508);
  }

  v3 = validKeyPaths__legacyValidKeyPaths;

  return v3;
}

@end