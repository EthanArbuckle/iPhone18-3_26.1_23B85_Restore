@interface MTLToolsRasterizationRateMap
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign;
- ($94F468A8D4C62B317260615823C2B210)mapPhysicalToScreenCoordinates:(id)coordinates forLayer:(unint64_t)layer;
- ($94F468A8D4C62B317260615823C2B210)mapScreenToPhysicalCoordinates:(id)coordinates forLayer:(unint64_t)layer;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)layer;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize;
- (NSString)label;
- (float)minFactor;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)layerCount;
- (unint64_t)mutability;
- (void)copyParameterDataToBuffer:(id)buffer offset:(unint64_t)offset;
- (void)resetUsingDescriptor:(id)descriptor;
@end

@implementation MTLToolsRasterizationRateMap

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject layerCount];
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign
{
  baseObject = [(MTLToolsObject *)self baseObject];

  parameterBufferSizeAndAlign = [baseObject parameterBufferSizeAndAlign];
  result.var1 = v4;
  result.var0 = parameterBufferSizeAndAlign;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)layer
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

- ($94F468A8D4C62B317260615823C2B210)mapScreenToPhysicalCoordinates:(id)coordinates forLayer:(unint64_t)layer
{
  var1 = coordinates.var1;
  var0 = coordinates.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v8 = var0;
  *&v9 = var1;

  [baseObject mapScreenToPhysicalCoordinates:layer forLayer:{v8, v9}];
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)mapPhysicalToScreenCoordinates:(id)coordinates forLayer:(unint64_t)layer
{
  var1 = coordinates.var1;
  var0 = coordinates.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v8 = var0;
  *&v9 = var1;

  [baseObject mapPhysicalToScreenCoordinates:layer forLayer:{v8, v9}];
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (float)minFactor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject minFactor];
  return result;
}

- (unint64_t)mutability
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject mutability];
}

- (void)copyParameterDataToBuffer:(id)buffer offset:(unint64_t)offset
{
  baseObject = [buffer baseObject];
  baseObject2 = [(MTLToolsObject *)self baseObject];

  [baseObject2 copyParameterDataToBuffer:baseObject offset:offset];
}

- (void)resetUsingDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject resetUsingDescriptor:descriptor];
}

- (id)formattedDescription:(unint64_t)description
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject formattedDescription:description];
}

@end