@interface PKDisplayTraitCollection
- (CGSize)canvasSize;
- (PKDisplayTraitCollection)init;
- (PKDisplayTraitCollection)initWithCoder:(id)a3;
- (PKDisplayTraitCollection)initWithDefaultTraits;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKDisplayTraitCollection

- (PKDisplayTraitCollection)init
{
  v3.receiver = self;
  v3.super_class = PKDisplayTraitCollection;
  return [(PKDisplayTraitCollection *)&v3 init];
}

- (CGSize)canvasSize
{
  width = self->_canvasSize.width;
  height = self->_canvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PKDisplayTraitCollection)initWithDefaultTraits
{
  v2 = [(PKDisplayTraitCollection *)self init];
  if (v2)
  {
    v2->_canvasSize.width = PKScreenSize();
    v2->_canvasSize.height = v3;
    v2->_canvasScale = PKScreenScale();
  }

  return v2;
}

- (PKDisplayTraitCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKDisplayTraitCollection *)self init];
  if (v5)
  {
    [v4 decodeSizeForKey:@"size"];
    v5->_canvasSize.width = v6;
    v5->_canvasSize.height = v7;
    [v4 decodeDoubleForKey:@"scale"];
    v5->_canvasScale = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  width = self->_canvasSize.width;
  height = self->_canvasSize.height;
  v6 = a3;
  [v6 encodeSize:@"size" forKey:{width, height}];
  [v6 encodeDouble:@"scale" forKey:self->_canvasScale];
}

@end