@interface NUMaskSourceDefinition
- ($0AC6E346AE4835514AAA8AC86D8F4844)scale;
- ($41299696D20B6C925B74A5D5E4D5CC87)croppedExtent;
- (NUMaskSourceDefinition)initWithCIImage:(id)image croppedExtent:(id *)extent scale:(id)scale orientation:(int64_t)orientation;
- (id)generateSourceNodeWithIdentifier:(id)identifier error:(id *)error;
- (void)setCroppedExtent:(id *)extent;
@end

@implementation NUMaskSourceDefinition

- ($0AC6E346AE4835514AAA8AC86D8F4844)scale
{
  p_scale = &self->_scale;
  numerator = self->_scale.numerator;
  denominator = p_scale->denominator;
  result.var1 = denominator;
  result.var0 = numerator;
  return result;
}

- (void)setCroppedExtent:(id *)extent
{
  var1 = extent->var1;
  self->_croppedExtent.origin = extent->var0;
  self->_croppedExtent.size = var1;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)croppedExtent
{
  v3 = *&self[2].var0.var1;
  retstr->var0 = *&self[1].var1.var1;
  retstr->var1 = v3;
  return self;
}

- (id)generateSourceNodeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v6 = [NUMaskSourceNode alloc];
  image = [(NUCIImageSourceDefinition *)self image];
  [(NUMaskSourceDefinition *)self croppedExtent];
  scale = [(NUMaskSourceDefinition *)self scale];
  v10 = [(NUMaskSourceNode *)v6 initWithImage:image croppedExtent:&v13 scale:scale identifier:v9 orientation:identifierCopy, [(NUCIImageSourceDefinition *)self orientation]];

  sourceDerivation = [(NUSingleSourceDefinition *)self sourceDerivation];
  [(NUSourceNode *)v10 setSourceDerivation:sourceDerivation];

  return v10;
}

- (NUMaskSourceDefinition)initWithCIImage:(id)image croppedExtent:(id *)extent scale:(id)scale orientation:(int64_t)orientation
{
  var1 = scale.var1;
  var0 = scale.var0;
  v11.receiver = self;
  v11.super_class = NUMaskSourceDefinition;
  result = [(NUCIImageSourceDefinition *)&v11 initWithCIImage:image orientation:orientation];
  v10 = extent->var1;
  result->_croppedExtent.origin = extent->var0;
  result->_croppedExtent.size = v10;
  result->_scale.numerator = var0;
  result->_scale.denominator = var1;
  return result;
}

@end