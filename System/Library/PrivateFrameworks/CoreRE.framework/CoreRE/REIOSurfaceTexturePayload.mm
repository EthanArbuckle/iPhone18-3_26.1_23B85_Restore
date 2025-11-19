@interface REIOSurfaceTexturePayload
- (BOOL)hasSameUnderlyingIOSurface:(id)a3;
- (REIOSurfaceTexturePayload)initWithCoder:(id)a3;
- (REIOSurfaceTexturePayload)initWithIOSurface:(id)a3 plane:(unint64_t)a4 pixelFormat:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REIOSurfaceTexturePayload

- (REIOSurfaceTexturePayload)initWithIOSurface:(id)a3 plane:(unint64_t)a4 pixelFormat:(unint64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v23.receiver = self;
  v23.super_class = REIOSurfaceTexturePayload;
  v10 = [(RESharedResourcePayload *)&v23 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_ioSurface, a3);
    v11->_planeIndex = a4;
    v11->_pixelFormat = a5;
    ioSurface = v11->_ioSurface;
    if (ioSurface)
    {
      v13 = [(IOSurface *)ioSurface planeCount];
      v14 = a4 == 0;
      if (v13)
      {
        v14 = v13 > a4;
      }

      if (v14)
      {
        goto LABEL_6;
      }

      v20 = *re::assetTypesLogObjects(v13);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
LABEL_10:
        v15 = 0;
        goto LABEL_11;
      }

      planeIndex = v11->_planeIndex;
      *buf = 134217984;
      v25 = planeIndex;
      v17 = "Invalid plane index %lu when decoding REIOSurfaceTexturePayload";
      v18 = v20;
      v19 = 12;
    }

    else
    {
      v16 = *re::assetTypesLogObjects(0);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v17 = "Expected IOSurface to be non-nil";
      v18 = v16;
      v19 = 2;
    }

    _os_log_fault_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_FAULT, v17, buf, v19);
    goto LABEL_10;
  }

LABEL_6:
  v15 = v11;
LABEL_11:

  return v15;
}

- (REIOSurfaceTexturePayload)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = REIOSurfaceTexturePayload;
  v5 = [(RESharedResourcePayload *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ioSurface"];
    ioSurface = v5->_ioSurface;
    v5->_ioSurface = v6;

    v5->_planeIndex = [v4 decodeIntegerForKey:@"planeIndex"];
    v5->_pixelFormat = [v4 decodeIntegerForKey:@"pixelFormat"];
    v8 = v5->_ioSurface;
    if (v8)
    {
      planeIndex = v5->_planeIndex;
      v10 = [(IOSurface *)v8 planeCount];
      v11 = planeIndex == 0;
      if (v10)
      {
        v11 = v10 > planeIndex;
      }

      if (v11)
      {
        goto LABEL_6;
      }

      v13 = *re::assetTypesLogObjects(v10);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
LABEL_10:
        v12 = 0;
        goto LABEL_11;
      }

      v16 = v5->_planeIndex;
      *buf = 134217984;
      v19 = v16;
      v14 = "Invalid plane index %lu when decoding REIOSurfaceTexturePayload";
    }

    else
    {
      v13 = *re::assetTypesLogObjects(0);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }

      *buf = 138412290;
      v19 = v5;
      v14 = "Failed to decode IOSurface reference for %@";
    }

    _os_log_fault_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_FAULT, v14, buf, 0xCu);
    goto LABEL_10;
  }

LABEL_6:
  v12 = v5;
LABEL_11:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_ioSurface forKey:@"ioSurface"];
  [v4 encodeInteger:self->_planeIndex forKey:@"planeIndex"];
  [v4 encodeInteger:self->_pixelFormat forKey:@"pixelFormat"];
}

- (BOOL)hasSameUnderlyingIOSurface:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = self == v4 || (ioSurface = self->_ioSurface, v7 = v5->_ioSurface, ioSurface == v7) || CFEqual(ioSurface, v7) != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end