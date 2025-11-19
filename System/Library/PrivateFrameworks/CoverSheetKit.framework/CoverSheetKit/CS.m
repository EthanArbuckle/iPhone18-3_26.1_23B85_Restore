@interface CS
@end

@implementation CS

uint64_t ___CS_Private_MainScreenClass_block_invoke()
{
  result = MGGetSInt32Answer();
  _CS_Private_MainScreenClass_mainScreenClass = result;
  return result;
}

uint64_t ___CS_Private_ProductType_block_invoke()
{
  result = MGGetProductType();
  _CS_Private_ProductType_productType = result;
  return result;
}

void ___CS_Private_BaseIsN84OrSimilarDevice_block_invoke()
{
  if (CSEffectiveArtworkSubtype_onceToken != -1)
  {
    +[CSDeviceDetermination categoryFromReferenceBounds:];
  }

  _CS_Private_BaseIsN84OrSimilarDevice_baseIsN84OrSimilarDevice = CSEffectiveArtworkSubtype_deviceSubtype == 1792;
}

@end