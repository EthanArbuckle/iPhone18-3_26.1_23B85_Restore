@interface BMEntityRelationshipEventUtilities
+ (BOOL)checkNullableArrayEqualityForSource:(id)source target:(id)target;
+ (BOOL)checkNullableDictionaryEqualityForSource:(id)source target:(id)target;
+ (BOOL)checkNullablePersonEntityEqualityForSource:(id)source target:(id)target;
+ (BOOL)checkNullableStringEqualityForSource:(id)source target:(id)target;
+ (BOOL)checkNullableTopicEntityEqualityForSource:(id)source target:(id)target;
@end

@implementation BMEntityRelationshipEventUtilities

+ (BOOL)checkNullableStringEqualityForSource:(id)source target:(id)target
{
  if (source && target)
  {
    return [source isEqualToString:target];
  }

  else
  {
    return source == target;
  }
}

+ (BOOL)checkNullableArrayEqualityForSource:(id)source target:(id)target
{
  if (source && target)
  {
    return [source isEqualToArray:target];
  }

  else
  {
    return source == target;
  }
}

+ (BOOL)checkNullableDictionaryEqualityForSource:(id)source target:(id)target
{
  if (source && target)
  {
    return [source isEqualToDictionary:target];
  }

  else
  {
    return source == target;
  }
}

+ (BOOL)checkNullablePersonEntityEqualityForSource:(id)source target:(id)target
{
  if (source && target)
  {
    return [source isEqual:target];
  }

  else
  {
    return source == target;
  }
}

+ (BOOL)checkNullableTopicEntityEqualityForSource:(id)source target:(id)target
{
  if (source && target)
  {
    return [source isEqual:target];
  }

  else
  {
    return source == target;
  }
}

@end