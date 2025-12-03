@interface _MFDASearchCriterionConverterDelegate
- (BOOL)_shouldConvertEqualsToContainsForKey:(id)key;
- (id)messageCriterionConverter:(id)converter predicateKeysForCriterionType:(int64_t)type;
- (unint64_t)messageCriterionConverter:(id)converter willUsePredicateOperatorType:(unint64_t)type forKey:(id)key;
@end

@implementation _MFDASearchCriterionConverterDelegate

- (id)messageCriterionConverter:(id)converter predicateKeysForCriterionType:(int64_t)type
{
  converterCopy = converter;
  if (messageCriterionConverter_predicateKeysForCriterionType__onceToken != -1)
  {
    [_MFDASearchCriterionConverterDelegate messageCriterionConverter:predicateKeysForCriterionType:];
  }

  v6 = messageCriterionConverter_predicateKeysForCriterionType__converterKeyDictionary;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (BOOL)_shouldConvertEqualsToContainsForKey:(id)key
{
  keyCopy = key;
  if (_shouldConvertEqualsToContainsForKey__onceToken != -1)
  {
    [_MFDASearchCriterionConverterDelegate _shouldConvertEqualsToContainsForKey:];
  }

  v4 = [_shouldConvertEqualsToContainsForKey___daKeys containsObject:keyCopy];

  return v4;
}

- (unint64_t)messageCriterionConverter:(id)converter willUsePredicateOperatorType:(unint64_t)type forKey:(id)key
{
  keyCopy = key;
  if (type == 4)
  {
    if ([(_MFDASearchCriterionConverterDelegate *)self _shouldConvertEqualsToContainsForKey:keyCopy])
    {
      type = 99;
    }

    else
    {
      type = 4;
    }
  }

  else if (type == 10)
  {
    type = 99;
  }

  return type;
}

@end