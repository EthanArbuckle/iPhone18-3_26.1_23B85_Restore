@interface NUTestPatternAuxiliaryProperties
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NUTestPatternAuxiliaryProperties allocWithZone:a3];
  v5 = [(NUTestPatternAuxiliaryProperties *)self size];
  [(NUTestPatternAuxiliaryProperties *)v4 setSize:v5, v6];
  v7 = [(NUTestPatternAuxiliaryProperties *)self auxiliaryImageTypeCGIdentifier];
  [(NUTestPatternAuxiliaryProperties *)v4 setAuxiliaryImageTypeCGIdentifier:v7];

  return v4;
}

@end