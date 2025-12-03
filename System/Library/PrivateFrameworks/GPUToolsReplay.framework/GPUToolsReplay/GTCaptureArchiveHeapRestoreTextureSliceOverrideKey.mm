@interface GTCaptureArchiveHeapRestoreTextureSliceOverrideKey
- (BOOL)isEqual:(id)equal;
- (GTCaptureArchiveHeapRestoreTextureSliceOverrideKey)initWithCoder:(id)coder;
- (GTCaptureArchiveHeapRestoreTextureSliceOverrideKey)initWithSlice:(int64_t)slice mipLevel:(int64_t)level depthPlane:(int64_t)plane plane:(id)a6;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCaptureArchiveHeapRestoreTextureSliceOverrideKey

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  slice = self->_slice;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:slice];
  [coderCopy encodeObject:v6 forKey:@"slice"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_mipLevel];
  [coderCopy encodeObject:v7 forKey:@"mipLevel"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_depthPlane];
  [coderCopy encodeObject:v8 forKey:@"depthPlane"];

  [coderCopy encodeObject:self->_plane forKey:@"plane"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey);
  [(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey *)v4 setSlice:self->_slice];
  [(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey *)v4 setMipLevel:self->_mipLevel];
  [(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey *)v4 setDepthPlane:self->_depthPlane];
  [(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey *)v4 setPlane:self->_plane];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([v5 slice] == self->_slice && objc_msgSend(v5, "mipLevel") == self->_mipLevel && objc_msgSend(v5, "depthPlane") == self->_depthPlane)
    {
      plane = [v5 plane];
      if (plane == self->_plane)
      {
        v8 = 1;
      }

      else
      {
        plane2 = [v5 plane];
        v8 = [plane2 isEqualToNumber:self->_plane];
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

- (GTCaptureArchiveHeapRestoreTextureSliceOverrideKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = GTCaptureArchiveHeapRestoreTextureSliceOverrideKey;
  v5 = [(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slice"];
    v5->_slice = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mipLevel"];
    v5->_mipLevel = [v7 unsignedIntegerValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"depthPlane"];
    v5->_depthPlane = [v8 unsignedIntegerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"plane"];
    plane = v5->_plane;
    v5->_plane = v9;
  }

  return v5;
}

- (GTCaptureArchiveHeapRestoreTextureSliceOverrideKey)initWithSlice:(int64_t)slice mipLevel:(int64_t)level depthPlane:(int64_t)plane plane:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = GTCaptureArchiveHeapRestoreTextureSliceOverrideKey;
  v12 = [(GTCaptureArchiveHeapRestoreTextureSliceOverrideKey *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_slice = slice;
    v12->_mipLevel = level;
    v12->_depthPlane = plane;
    objc_storeStrong(&v12->_plane, a6);
  }

  return v13;
}

@end