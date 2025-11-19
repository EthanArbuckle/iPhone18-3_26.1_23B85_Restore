@interface MTLToolsRasterizationRateMap
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign;
- ($94F468A8D4C62B317260615823C2B210)mapPhysicalToScreenCoordinates:(id)a3 forLayer:(unint64_t)a4;
- ($94F468A8D4C62B317260615823C2B210)mapScreenToPhysicalCoordinates:(id)a3 forLayer:(unint64_t)a4;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)a3;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize;
- (NSString)label;
- (float)minFactor;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)layerCount;
- (unint64_t)mutability;
- (void)copyParameterDataToBuffer:(id)a3 offset:(unint64_t)a4;
- (void)resetUsingDescriptor:(id)a3;
@end

@implementation MTLToolsRasterizationRateMap

- (NSString)label
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result screenSize];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result physicalGranularity];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (unint64_t)layerCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 layerCount];
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign
{
  v2 = [(MTLToolsObject *)self baseObject];

  v3 = [v2 parameterBufferSizeAndAlign];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)a3
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result physicalSizeForLayer:a4];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($94F468A8D4C62B317260615823C2B210)mapScreenToPhysicalCoordinates:(id)a3 forLayer:(unint64_t)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = [(MTLToolsObject *)self baseObject];
  *&v8 = var0;
  *&v9 = var1;

  [v7 mapScreenToPhysicalCoordinates:a4 forLayer:{v8, v9}];
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)mapPhysicalToScreenCoordinates:(id)a3 forLayer:(unint64_t)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = [(MTLToolsObject *)self baseObject];
  *&v8 = var0;
  *&v9 = var1;

  [v7 mapPhysicalToScreenCoordinates:a4 forLayer:{v8, v9}];
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (float)minFactor
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 minFactor];
  return result;
}

- (unint64_t)mutability
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 mutability];
}

- (void)copyParameterDataToBuffer:(id)a3 offset:(unint64_t)a4
{
  v6 = [a3 baseObject];
  v7 = [(MTLToolsObject *)self baseObject];

  [v7 copyParameterDataToBuffer:v6 offset:a4];
}

- (void)resetUsingDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 resetUsingDescriptor:a3];
}

- (id)formattedDescription:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 formattedDescription:a3];
}

@end