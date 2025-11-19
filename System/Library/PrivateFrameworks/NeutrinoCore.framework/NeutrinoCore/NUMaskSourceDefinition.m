@interface NUMaskSourceDefinition
- ($0AC6E346AE4835514AAA8AC86D8F4844)scale;
- ($41299696D20B6C925B74A5D5E4D5CC87)croppedExtent;
- (NUMaskSourceDefinition)initWithCIImage:(id)a3 croppedExtent:(id *)a4 scale:(id)a5 orientation:(int64_t)a6;
- (id)generateSourceNodeWithIdentifier:(id)a3 error:(id *)a4;
- (void)setCroppedExtent:(id *)a3;
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

- (void)setCroppedExtent:(id *)a3
{
  var1 = a3->var1;
  self->_croppedExtent.origin = a3->var0;
  self->_croppedExtent.size = var1;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)croppedExtent
{
  v3 = *&self[2].var0.var1;
  retstr->var0 = *&self[1].var1.var1;
  retstr->var1 = v3;
  return self;
}

- (id)generateSourceNodeWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [NUMaskSourceNode alloc];
  v7 = [(NUCIImageSourceDefinition *)self image];
  [(NUMaskSourceDefinition *)self croppedExtent];
  v8 = [(NUMaskSourceDefinition *)self scale];
  v10 = [(NUMaskSourceNode *)v6 initWithImage:v7 croppedExtent:&v13 scale:v8 identifier:v9 orientation:v5, [(NUCIImageSourceDefinition *)self orientation]];

  v11 = [(NUSingleSourceDefinition *)self sourceDerivation];
  [(NUSourceNode *)v10 setSourceDerivation:v11];

  return v10;
}

- (NUMaskSourceDefinition)initWithCIImage:(id)a3 croppedExtent:(id *)a4 scale:(id)a5 orientation:(int64_t)a6
{
  var1 = a5.var1;
  var0 = a5.var0;
  v11.receiver = self;
  v11.super_class = NUMaskSourceDefinition;
  result = [(NUCIImageSourceDefinition *)&v11 initWithCIImage:a3 orientation:a6];
  v10 = a4->var1;
  result->_croppedExtent.origin = a4->var0;
  result->_croppedExtent.size = v10;
  result->_scale.numerator = var0;
  result->_scale.denominator = var1;
  return result;
}

@end