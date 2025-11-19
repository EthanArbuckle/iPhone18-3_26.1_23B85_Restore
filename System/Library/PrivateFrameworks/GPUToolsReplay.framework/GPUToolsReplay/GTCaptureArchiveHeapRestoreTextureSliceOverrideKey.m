@interface GTCaptureArchiveHeapRestoreTextureSliceOverrideKey
- (BOOL)isEqual:(id)a3;
- (GTCaptureArchiveHeapRestoreTextureSliceOverrideKey)initWithCoder:(id)a3;
- (GTCaptureArchiveHeapRestoreTextureSliceOverrideKey)initWithSlice:(int64_t)a3 mipLevel:(int64_t)a4 depthPlane:(int64_t)a5 plane:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCaptureArchiveHeapRestoreTextureSliceOverrideKey

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  slice = self->_slice;
  v9 = a3;
  v6 = [v4 numberWithUnsignedInteger:slice];
  [v9 encodeObject:v6 forKey:@"slice"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_mipLevel];
  [v9 encodeObject:v7 forKey:@"mipLevel"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_depthPlane];
  [v9 encodeObject:v8 forKey:@"depthPlane"];

  [v9 encodeObject:self->_plane forKey:@"plane"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey);
  [(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey *)v4 setSlice:self->_slice];
  [(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey *)v4 setMipLevel:self->_mipLevel];
  [(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey *)v4 setDepthPlane:self->_depthPlane];
  [(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey *)v4 setPlane:self->_plane];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 slice] == self->_slice && objc_msgSend(v5, "mipLevel") == self->_mipLevel && objc_msgSend(v5, "depthPlane") == self->_depthPlane)
    {
      v6 = [v5 plane];
      if (v6 == self->_plane)
      {
        v8 = 1;
      }

      else
      {
        v7 = [v5 plane];
        v8 = [v7 isEqualToNumber:self->_plane];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (GTCaptureArchiveHeapRestoreTextureSliceOverrideKey)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GTCaptureArchiveHeapRestoreTextureSliceOverrideKey;
  v5 = [(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"slice"];
    v5->_slice = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mipLevel"];
    v5->_mipLevel = [v7 unsignedIntegerValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"depthPlane"];
    v5->_depthPlane = [v8 unsignedIntegerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"plane"];
    plane = v5->_plane;
    v5->_plane = v9;
  }

  return v5;
}

- (GTCaptureArchiveHeapRestoreTextureSliceOverrideKey)initWithSlice:(int64_t)a3 mipLevel:(int64_t)a4 depthPlane:(int64_t)a5 plane:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = GTCaptureArchiveHeapRestoreTextureSliceOverrideKey;
  v12 = [(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_slice = a3;
    v12->_mipLevel = a4;
    v12->_depthPlane = a5;
    objc_storeStrong(&v12->_plane, a6);
  }

  return v13;
}

@end