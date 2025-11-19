@interface CKContextImageSource
+ (id)imageSourceForUIImage:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CKContextImageSource)initWithCoder:(id)a3;
- (CKContextImageSource)initWithIOSurface:(id)a3;
- (CKContextImageSource)initWithIOSurface:(id)a3 cameraIntrinsics:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKContextImageSource

+ (id)imageSourceForUIImage:(id)a3
{
  v3 = [CKContextExtractionUtil _renderImageToSurfaceWithImage:a3];
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

- (CKContextImageSource)initWithIOSurface:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKContextImageSource;
  v5 = [(CKContextImageSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKContextImageSource *)v5 setIoSurface:v4];
  }

  return v6;
}

- (CKContextImageSource)initWithIOSurface:(id)a3 cameraIntrinsics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CKContextImageSource;
  v8 = [(CKContextImageSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CKContextImageSource *)v8 setIoSurface:v6];
    [(CKContextImageSource *)v9 setCameraIntrinsics:v7];
  }

  return v9;
}

- (CKContextImageSource)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKContextImageSource;
  v5 = [(CKContextImageSource *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"orientation"];
    -[CKContextImageSource setOrientation:](v5, "setOrientation:", [v6 unsignedIntValue]);
    -[CKContextImageSource setProfile:](v5, "setProfile:", [v4 decodeIntForKey:@"profile"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cameraIntrinsics"];
    [(CKContextImageSource *)v5 setCameraIntrinsics:v7];

    v8 = NSClassFromString(&cfstr_Iosurface.isa);
    if (v8)
    {
      v9 = [v4 decodeObjectOfClass:v8 forKey:@"iosurface"];
      [(CKContextImageSource *)v5 setIoSurface:v9];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  orientation = self->_orientation;
  v7 = a3;
  v6 = [v4 numberWithUnsignedInt:orientation];
  [v7 encodeObject:v6 forKey:@"orientation"];

  [v7 encodeInteger:self->_profile forKey:@"profile"];
  [v7 encodeObject:self->_ioSurface forKey:@"iosurface"];
  [v7 encodeObject:self->_cameraIntrinsics forKey:@"iosurface"];
}

- (unint64_t)hash
{
  v2 = [(CKContextImageSource *)self ioSurface];
  v3 = 31 * [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v8 = [(CKContextImageSource *)self hash];
      if (v8 == [(CKContextImageSource *)v7 hash]&& (v9 = [(CKContextImageSource *)self orientation], v9 == [(CKContextImageSource *)v7 orientation]) && (v10 = [(CKContextImageSource *)self profile], v10 == [(CKContextImageSource *)v7 profile]))
      {
        v11 = [(CKContextImageSource *)self cameraIntrinsics];
        v12 = [(CKContextImageSource *)v7 cameraIntrinsics];
        v6 = [v11 isEqual:v12];
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