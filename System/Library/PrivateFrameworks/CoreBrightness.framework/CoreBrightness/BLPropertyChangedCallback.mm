@interface BLPropertyChangedCallback
@end

@implementation BLPropertyChangedCallback

void *____BLPropertyChangedCallback_block_invoke(void *result)
{
  if (*(result[4] + 16))
  {
    return (*(result[4] + 16))(*(result[4] + 24), result[5], result[6]);
  }

  return result;
}

@end