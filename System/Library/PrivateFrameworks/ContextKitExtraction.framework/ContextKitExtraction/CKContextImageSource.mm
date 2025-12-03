@interface CKContextImageSource
+ (id)imageSourceForUIImage:(id)image;
- (BOOL)isEqual:(id)equal;
- (CKContextImageSource)initWithCoder:(id)coder;
- (CKContextImageSource)initWithIOSurface:(id)surface;
- (CKContextImageSource)initWithIOSurface:(id)surface cameraIntrinsics:(id)intrinsics;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKContextImageSource

+ (id)imageSourceForUIImage:(id)image
{
  v3 = [CKContextExtractionUtil _renderImageToSurfaceWithImage:image];
  if (v3)
  {
    v4 = [[CKContextImageSource alloc] initWithIOSurface:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CKContextImageSource)initWithIOSurface:(id)surface
{
  surfaceCopy = surface;
  v8.receiver = self;
  v8.super_class = CKContextImageSource;
  v5 = [(CKContextImageSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKContextImageSource *)v5 setIoSurface:surfaceCopy];
  }

  return v6;
}

- (CKContextImageSource)initWithIOSurface:(id)surface cameraIntrinsics:(id)intrinsics
{
  surfaceCopy = surface;
  intrinsicsCopy = intrinsics;
  v11.receiver = self;
  v11.super_class = CKContextImageSource;
  v8 = [(CKContextImageSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CKContextImageSource *)v8 setIoSurface:surfaceCopy];
    [(CKContextImageSource *)v9 setCameraIntrinsics:intrinsicsCopy];
  }

  return v9;
}

- (CKContextImageSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CKContextImageSource;
  v5 = [(CKContextImageSource *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orientation"];
    -[CKContextImageSource setOrientation:](v5, "setOrientation:", [v6 unsignedIntValue]);
    -[CKContextImageSource setProfile:](v5, "setProfile:", [coderCopy decodeIntForKey:@"profile"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cameraIntrinsics"];
    [(CKContextImageSource *)v5 setCameraIntrinsics:v7];

    v8 = NSClassFromString(&cfstr_Iosurface.isa);
    if (v8)
    {
      v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"iosurface"];
      [(CKContextImageSource *)v5 setIoSurface:v9];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  orientation = self->_orientation;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInt:orientation];
  [coderCopy encodeObject:v6 forKey:@"orientation"];

  [coderCopy encodeInteger:self->_profile forKey:@"profile"];
  [coderCopy encodeObject:self->_ioSurface forKey:@"iosurface"];
  [coderCopy encodeObject:self->_cameraIntrinsics forKey:@"iosurface"];
}

- (unint64_t)hash
{
  ioSurface = [(CKContextImageSource *)self ioSurface];
  v3 = 31 * [ioSurface hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      v8 = [(CKContextImageSource *)self hash];
      if (v8 == [(CKContextImageSource *)v7 hash]&& (v9 = [(CKContextImageSource *)self orientation], v9 == [(CKContextImageSource *)v7 orientation]) && (v10 = [(CKContextImageSource *)self profile], v10 == [(CKContextImageSource *)v7 profile]))
      {
        cameraIntrinsics = [(CKContextImageSource *)self cameraIntrinsics];
        cameraIntrinsics2 = [(CKContextImageSource *)v7 cameraIntrinsics];
        v6 = [cameraIntrinsics isEqual:cameraIntrinsics2];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end