@interface RESharedTexturePayload
- (BOOL)hasSameUnderlyingIOSurface:(id)a3;
- (RESharedTexturePayload)initWithCoder:(id)a3;
- (RESharedTexturePayload)initWithTexture:(id)a3 isLimitedRenderAsset:(BOOL)a4 semantic:(unint64_t)a5 colorSpace:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RESharedTexturePayload

- (RESharedTexturePayload)initWithTexture:(id)a3 isLimitedRenderAsset:(BOOL)a4 semantic:(unint64_t)a5 colorSpace:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = RESharedTexturePayload;
  v12 = [(RESharedResourcePayload *)&v19 init];
  if (v12 && (v13 = [v10 newSharedTextureHandle], handle = v12->_handle, v12->_handle = v13, handle, v12->_isLimitedRenderAsset = a4, v12->_semantic = a5, objc_storeStrong(&v12->_colorSpace, a6), !v12->_handle))
  {
    v17 = *re::assetTypesLogObjects(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_fault_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_FAULT, "Failed to create shared texture handle for %@", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  return v16;
}

- (RESharedTexturePayload)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = RESharedTexturePayload;
  v5 = [(RESharedResourcePayload *)&v14 initWithCoder:v4];
  if (v5 && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"], v6 = objc_claimAutoreleasedReturnValue(), handle = v5->_handle, v5->_handle = v6, handle, v5->_isLimitedRenderAsset = objc_msgSend(v4, "decodeBoolForKey:", @"isLimitedRenderAsset"), v5->_semantic = objc_msgSend(v4, "decodeIntegerForKey:", @"semantic"), objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"colorSpace"), v8 = objc_claimAutoreleasedReturnValue(), colorSpace = v5->_colorSpace, v5->_colorSpace = v8, colorSpace, !v5->_handle))
  {
    v12 = *re::assetTypesLogObjects(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_fault_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_FAULT, "Failed to decode shared texture handle for %@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_handle forKey:@"handle"];
  [v4 encodeBool:self->_isLimitedRenderAsset forKey:@"isLimitedRenderAsset"];
  [v4 encodeInteger:self->_semantic forKey:@"semantic"];
  [v4 encodeObject:self->_colorSpace forKey:@"colorSpace"];
}

- (BOOL)hasSameUnderlyingIOSurface:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.super.isa;
  if (v4)
  {
    v7 = self == v4 || (handle = self->_handle, handle == p_isa[3]) || CFEqual(-[MTLSharedTextureHandle ioSurface](handle, "ioSurface"), [p_isa[3] ioSurface]) != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  ID = IOSurfaceGetID([(MTLSharedTextureHandle *)self->_handle ioSurface]);
  v5 = [(MTLSharedTextureHandle *)self->_handle label];
  v6 = [v3 stringWithFormat:@"<RESharedTexturePayload: %p, IOSurface id: %u, label: '%@'>", self, ID, v5];

  return v6;
}

@end