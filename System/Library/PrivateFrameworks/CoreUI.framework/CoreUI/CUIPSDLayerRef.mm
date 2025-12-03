@interface CUIPSDLayerRef
- (CGImage)createCGImage;
- (CUIPSDLayerRef)initWithImageRef:(id)ref layerIndex:(unsigned int)index;
- (id)colorFill;
- (id)fillSample;
- (id)gradient;
- (id)image;
- (id)imageFromSlice:(unsigned int)slice;
- (id)imageFromSlice:(unsigned int)slice isEmptyImage:(BOOL *)image;
- (id)imageIsZeroSizeImage:(BOOL *)image;
- (id)layerEffects;
- (id)maskFromSlice:(unsigned int)slice;
- (id)patternFromSlice:(unsigned int)slice;
- (id)patternFromSlice:(unsigned int)slice isZeroSizeImage:(BOOL *)image;
- (void)dealloc;
@end

@implementation CUIPSDLayerRef

- (CUIPSDLayerRef)initWithImageRef:(id)ref layerIndex:(unsigned int)index
{
  v4 = *&index;
  v9.receiver = self;
  v9.super_class = CUIPSDLayerRef;
  v6 = [(CUIPSDLayerRef *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CUIPSDLayerBaseRef *)v6 setImageRef:ref];
    [(CUIPSDLayerBaseRef *)v7 setLayerIndex:v4];
  }

  return v7;
}

- (void)dealloc
{
  [(CUIPSDLayerBaseRef *)self setImageRef:0];
  v3.receiver = self;
  v3.super_class = CUIPSDLayerRef;
  [(CUIPSDLayerBaseRef *)&v3 dealloc];
}

- (CGImage)createCGImage
{
  imageRef = [(CUIPSDLayerBaseRef *)self imageRef];
  layerIndex = [(CUIPSDLayerBaseRef *)self layerIndex];

  return [(CUIPSDImageRef *)imageRef _copyCGImageAtAbsoluteIndex:layerIndex];
}

- (id)image
{
  imageRef = [(CUIPSDLayerBaseRef *)self imageRef];
  layerIndex = [(CUIPSDLayerBaseRef *)self layerIndex];

  return [(CUIPSDImageRef *)imageRef _imageAtAbsoluteIndex:layerIndex isZeroSizeImage:0];
}

- (id)imageIsZeroSizeImage:(BOOL *)image
{
  imageRef = [(CUIPSDLayerBaseRef *)self imageRef];
  layerIndex = [(CUIPSDLayerBaseRef *)self layerIndex];

  return [(CUIPSDImageRef *)imageRef _imageAtAbsoluteIndex:layerIndex isZeroSizeImage:image];
}

- (id)imageFromSlice:(unsigned int)slice
{
  v3 = *&slice;
  imageRef = [(CUIPSDLayerBaseRef *)self imageRef];
  layerIndex = [(CUIPSDLayerBaseRef *)self layerIndex];

  return [(CUIPSDImageRef *)imageRef _imageFromSlice:v3 atAbsoluteIndex:layerIndex isEmptyImage:0];
}

- (id)imageFromSlice:(unsigned int)slice isEmptyImage:(BOOL *)image
{
  v5 = *&slice;
  imageRef = [(CUIPSDLayerBaseRef *)self imageRef];
  layerIndex = [(CUIPSDLayerBaseRef *)self layerIndex];

  return [(CUIPSDImageRef *)imageRef _imageFromSlice:v5 atAbsoluteIndex:layerIndex isEmptyImage:image];
}

- (id)patternFromSlice:(unsigned int)slice
{
  v3 = *&slice;
  imageRef = [(CUIPSDLayerBaseRef *)self imageRef];
  layerIndex = [(CUIPSDLayerBaseRef *)self layerIndex];

  return [(CUIPSDImageRef *)imageRef _patternFromSlice:v3 atAbsoluteIndex:layerIndex isZeroSizeImage:0];
}

- (id)patternFromSlice:(unsigned int)slice isZeroSizeImage:(BOOL *)image
{
  v5 = *&slice;
  imageRef = [(CUIPSDLayerBaseRef *)self imageRef];
  layerIndex = [(CUIPSDLayerBaseRef *)self layerIndex];

  return [(CUIPSDImageRef *)imageRef _patternFromSlice:v5 atAbsoluteIndex:layerIndex isZeroSizeImage:image];
}

- (id)maskFromSlice:(unsigned int)slice
{
  v3 = *&slice;
  imageRef = [(CUIPSDLayerBaseRef *)self imageRef];
  layerIndex = [(CUIPSDLayerBaseRef *)self layerIndex];

  return [(CUIPSDImageRef *)imageRef _createMaskFromSlice:v3 atAbsoluteIndex:layerIndex];
}

- (id)fillSample
{
  imageRef = [(CUIPSDLayerBaseRef *)self imageRef];
  layerIndex = [(CUIPSDLayerBaseRef *)self layerIndex];

  return [(CUIPSDImageRef *)imageRef _fillSampleAtAbsoluteIndex:layerIndex];
}

- (id)gradient
{
  imageRef = [(CUIPSDLayerBaseRef *)self imageRef];
  layerIndex = [(CUIPSDLayerBaseRef *)self layerIndex];

  return [(CUIPSDImageRef *)imageRef _gradientAtAbsoluteIndex:layerIndex];
}

- (id)layerEffects
{
  imageRef = [(CUIPSDLayerBaseRef *)self imageRef];
  layerIndex = [(CUIPSDLayerBaseRef *)self layerIndex];

  return [(CUIPSDImageRef *)imageRef _layerEffectsAtAbsoluteIndex:layerIndex];
}

- (id)colorFill
{
  result = [(CUIPSDImageRef *)[(CUIPSDLayerBaseRef *)self imageRef] psdFile];
  if (result)
  {
    result = CPSDFile::GetColorFillInfo(result, [(CUIPSDLayerBaseRef *)self layerIndex]);
    if (result)
    {
      return -[CUIPSDImageRef colorFromDocumentColor:]([(CUIPSDLayerBaseRef *)self imageRef:CPSDDropShadowDescriptor::GetColor(result], "colorFromDocumentColor:", v4);
    }
  }

  return result;
}

@end