@interface SITuningInit
@end

@implementation SITuningInit

void ___SITuningInit_block_invoke()
{
  if (query_zone_init_onceToken != -1)
  {
    dispatch_once(&query_zone_init_onceToken, &__block_literal_global_5335);
  }

  if (si_init_indexing_zone_indexOnce != -1)
  {

    dispatch_once(&si_init_indexing_zone_indexOnce, &__block_literal_global_12772);
  }
}

@end