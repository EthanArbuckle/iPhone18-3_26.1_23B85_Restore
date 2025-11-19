@interface _MFDASearchCriterionConverterDelegate
- (BOOL)_shouldConvertEqualsToContainsForKey:(id)a3;
- (id)messageCriterionConverter:(id)a3 predicateKeysForCriterionType:(int64_t)a4;
- (unint64_t)messageCriterionConverter:(id)a3 willUsePredicateOperatorType:(unint64_t)a4 forKey:(id)a5;
@end

@implementation _MFDASearchCriterionConverterDelegate

- (id)messageCriterionConverter:(id)a3 predicateKeysForCriterionType:(int64_t)a4
{
  v5 = a3;
  if (messageCriterionConverter_predicateKeysForCriterionType__onceToken != -1)
  {
    [_MFDASearchCriterionConverterDelegate messageCriterionConverter:predicateKeysForCriterionType:];
  }

  v6 = messageCriterionConverter_predicateKeysForCriterionType__converterKeyDictionary;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (BOOL)_shouldConvertEqualsToContainsForKey:(id)a3
{
  v3 = a3;
  if (_shouldConvertEqualsToContainsForKey__onceToken != -1)
  {
    [_MFDASearchCriterionConverterDelegate _shouldConvertEqualsToContainsForKey:];
  }

  v4 = [_shouldConvertEqualsToContainsForKey___daKeys containsObject:v3];

  return v4;
}

- (unint64_t)messageCriterionConverter:(id)a3 willUsePredicateOperatorType:(unint64_t)a4 forKey:(id)a5
{
  v7 = a5;
  if (a4 == 4)
  {
    if ([(_MFDASearchCriterionConverterDelegate *)self _shouldConvertEqualsToContainsForKey:v7])
    {
      a4 = 99;
    }

    else
    {
      a4 = 4;
    }
  }

  else if (a4 == 10)
  {
    a4 = 99;
  }

  return a4;
}

@end