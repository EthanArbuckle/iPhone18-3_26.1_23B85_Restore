@interface CLSBusinessCategoryCacheDeserializeCategories
@end

@implementation CLSBusinessCategoryCacheDeserializeCategories

uint64_t ___CLSBusinessCategoryCacheDeserializeCategories_block_invoke(uint64_t result, uint64_t a2, char a3)
{
  if ((*(result + 40) >> a3))
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

@end