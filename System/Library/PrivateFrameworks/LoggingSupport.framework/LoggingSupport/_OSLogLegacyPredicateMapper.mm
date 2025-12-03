@interface _OSLogLegacyPredicateMapper
- (id)validKeyPaths;
- (void)mapLeftExpression:(id *)expression andRightExpression:(id *)rightExpression;
@end

@implementation _OSLogLegacyPredicateMapper

- (void)mapLeftExpression:(id *)expression andRightExpression:(id *)rightExpression
{
  if (mapLeftExpression_andRightExpression__once_521 != -1)
  {
    dispatch_once(&mapLeftExpression_andRightExpression__once_521, &__block_literal_global_523);
  }

  if ([*expression expressionType] == 3)
  {
    keyPath = [*expression keyPath];
    v5 = [mapLeftExpression_andRightExpression__keypathMaps_520 objectForKeyedSubscript:?];

    if (v5)
    {
      v6 = MEMORY[0x277CCA9C0];
      v7 = [mapLeftExpression_andRightExpression__keypathMaps_520 objectForKeyedSubscript:keyPath];
      v8 = [v6 expressionForKeyPath:v7];
      v9 = *expression;
      *expression = v8;
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