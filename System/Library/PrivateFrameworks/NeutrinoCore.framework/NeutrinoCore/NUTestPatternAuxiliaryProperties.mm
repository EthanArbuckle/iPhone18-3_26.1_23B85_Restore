@interface NUTestPatternAuxiliaryProperties
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NUTestPatternAuxiliaryProperties

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  height = self->_size.height;
  width = self->_size.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NUTestPatternAuxiliaryProperties allocWithZone:zone];
  v5 = [(NUTestPatternAuxiliaryProperties *)self size];
  [(NUTestPatternAuxiliaryProperties *)v4 setSize:v5, v6];
  auxiliaryImageTypeCGIdentifier = [(NUTestPatternAuxiliaryProperties *)self auxiliaryImageTypeCGIdentifier];
  [(NUTestPatternAuxiliaryProperties *)v4 setAuxiliaryImageTypeCGIdentifier:auxiliaryImageTypeCGIdentifier];

  return v4;
}

@end